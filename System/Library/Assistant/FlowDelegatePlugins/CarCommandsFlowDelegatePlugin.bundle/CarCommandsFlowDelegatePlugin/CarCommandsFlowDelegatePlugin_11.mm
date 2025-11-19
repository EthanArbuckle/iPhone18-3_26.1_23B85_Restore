void *sub_10A898(uint64_t a1)
{
  v2 = a1;
  if (*(a1 + 16))
  {
    sub_5758(&qword_1E91A8, &qword_172B08);
    v3 = sub_10C11C();
    v55 = *(v2 + 16);
    if (v55)
    {
      v4 = 0;
      sub_10C174();
      v51 = v5;
      v52 = v6;
      sub_D434();
      v49 = v7;
      v50 = v8;
      sub_10C174();
      v47 = v9;
      v48 = v10;
      v53 = v2;
      v54 = v2 + 32;
      do
      {
        if (v4 >= *(v2 + 16))
        {
          __break(1u);
LABEL_92:
          __break(1u);
          JUMPOUT(0x10B094);
        }

        v11 = *(v54 + v4);
        v12 = v3[5];
        sub_16AF14();
        CarCommandsUseCase.rawValue.getter(v11);
        sub_16A6F4();

        sub_16AF54();
        sub_10C204();
        v14 = ~v13;
        v16 = v15 & ~v13;
        sub_10C2E4();
        if ((v19 & v18) != 0)
        {
          while (1)
          {
            v20 = 0xED00007375746174;
            v21 = 0xED00007375746174;
            v22 = 0x536B636F4C746567;
            switch(*(v3[6] + v16))
            {
              case 1:
                v22 = 0x536B636F4C746573;
                v21 = 0xED00007375746174;
                break;
              case 2:
                v22 = 0x6574617669746361;
                v25 = 0x6C616E676953;
                goto LABEL_27;
              case 3:
                v22 = 0x7265776F50746567;
                v29 = 0x6C6576654CLL;
                goto LABEL_40;
              case 4:
                v22 = 0xD000000000000010;
                v21 = v47;
                break;
              case 5:
                v22 = 0x6B6E757254746573;
                goto LABEL_26;
              case 6:
                sub_10C0C4();
                v22 = v30 + 9;
                v21 = v48;
                break;
              case 7:
                v22 = 0x6F72666544746573;
                v21 = 0xEC00000072657473;
                break;
              case 8:
                v22 = 0x6F69646152746573;
                v21 = 0xEF6E6F6974617453;
                break;
              case 9:
                v22 = sub_10C2F8();
                goto LABEL_31;
              case 0xA:
                v22 = 0x616D696C43746567;
LABEL_31:
                v21 = 0xEA00000000006574;
                break;
              case 0xB:
                v22 = 0x65706D6554746573;
                v25 = 0x657275746172;
                goto LABEL_27;
              case 0xC:
                v21 = 0xE800000000000000;
                v22 = 0x434178614D746573;
                break;
              case 0xD:
                v22 = 0x6B6E757254746567;
LABEL_26:
                v25 = 0x737574617453;
                goto LABEL_27;
              case 0xE:
                v22 = 0x5374616553746573;
                v21 = 0xEF73676E69747465;
                break;
              case 0xF:
                sub_10C0C4();
                v22 = v28 + 11;
                v21 = v49;
                break;
              case 0x10:
                sub_10C0C4();
                v22 = v24 + 5;
                v21 = v50;
                break;
              case 0x11:
                v22 = 0x65536E6146746573;
                v25 = 0x73676E697474;
                goto LABEL_27;
              case 0x12:
                v22 = 0x6D756C6F56746573;
                v21 = 0xE900000000000065;
                break;
              case 0x13:
                v22 = 0x4D6F747541746573;
                goto LABEL_35;
              case 0x14:
                v22 = sub_10C2F8();
                v25 = 0x636E79536574;
LABEL_27:
                v21 = v25 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
                break;
              case 0x15:
                v22 = 0x4D746E6556746573;
LABEL_35:
                v26 = 6644847;
                goto LABEL_36;
              case 0x16:
                v22 = 0x6E496E6146746573;
                v21 = 0xEF797469736E6574;
                break;
              case 0x17:
                sub_10C0C4();
                v22 = v31 + 1;
                v21 = 0x800000000017ECB0;
                break;
              case 0x18:
                sub_10C0C4();
                v22 = v27 + 8;
                v21 = 0x800000000017ECD0;
                break;
              case 0x19:
                v22 = 0x507261436E65706FLL;
                v26 = 7954796;
LABEL_36:
                v21 = v26 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
                break;
              case 0x1A:
                v22 = 0xD000000000000010;
                v21 = v51;
                break;
              case 0x1B:
                sub_10C0C4();
                v22 = v23 + 1;
                v21 = v52;
                break;
              case 0x1C:
                v22 = sub_10BBC0();
                break;
              case 0x1D:
                v22 = 0x7265646E7573696DLL;
                v29 = 0x646F6F7473;
LABEL_40:
                v21 = v29 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
                break;
              default:
                break;
            }

            v32 = 0x536B636F4C746567;
            v33 = v20;
            switch(v11)
            {
              case 1:
                v32 = 0x536B636F4C746573;
                v33 = v20;
                break;
              case 2:
                v32 = 0x6574617669746361;
                v36 = 0x6C616E676953;
                goto LABEL_63;
              case 3:
                v32 = 0x7265776F50746567;
                v40 = 0x6C6576654CLL;
                goto LABEL_76;
              case 4:
                v32 = 0xD000000000000010;
                v33 = v47;
                break;
              case 5:
                v32 = 0x6B6E757254746573;
                goto LABEL_62;
              case 6:
                sub_A1A8();
                v32 = v41 + 9;
                v33 = v48;
                break;
              case 7:
                v32 = 0x6F72666544746573;
                v33 = 0xEC00000072657473;
                break;
              case 8:
                v32 = 0x6F69646152746573;
                v33 = 0xEF6E6F6974617453;
                break;
              case 9:
                sub_10C354();
                goto LABEL_67;
              case 10:
                v32 = 0x616D696C43746567;
LABEL_67:
                v33 = 0xEA00000000006574;
                break;
              case 11:
                v32 = 0x65706D6554746573;
                v36 = 0x657275746172;
                goto LABEL_63;
              case 12:
                v33 = 0xE800000000000000;
                v32 = 0x434178614D746573;
                break;
              case 13:
                v32 = 0x6B6E757254746567;
LABEL_62:
                v36 = 0x737574617453;
                goto LABEL_63;
              case 14:
                v32 = 0x5374616553746573;
                v33 = 0xEF73676E69747465;
                break;
              case 15:
                sub_A1A8();
                v32 = v39 + 11;
                v33 = v49;
                break;
              case 16:
                sub_A1A8();
                v32 = v35 + 5;
                v33 = v50;
                break;
              case 17:
                v32 = 0x65536E6146746573;
                v36 = 0x73676E697474;
                goto LABEL_63;
              case 18:
                v32 = 0x6D756C6F56746573;
                v33 = 0xE900000000000065;
                break;
              case 19:
                v32 = 0x4D6F747541746573;
                goto LABEL_71;
              case 20:
                sub_10C354();
                v36 = 0x636E79536574;
LABEL_63:
                v33 = v36 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
                break;
              case 21:
                v32 = 0x4D746E6556746573;
LABEL_71:
                v37 = 6644847;
                goto LABEL_72;
              case 22:
                v32 = 0x6E496E6146746573;
                v33 = 0xEF797469736E6574;
                break;
              case 23:
                sub_A1A8();
                v32 = v42 + 1;
                v33 = 0x800000000017ECB0;
                break;
              case 24:
                sub_A1A8();
                v32 = v38 + 8;
                v33 = 0x800000000017ECD0;
                break;
              case 25:
                v32 = 0x507261436E65706FLL;
                v37 = 7954796;
LABEL_72:
                v33 = v37 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
                break;
              case 26:
                v32 = 0xD000000000000010;
                v33 = v51;
                break;
              case 27:
                sub_A1A8();
                v32 = v34 + 1;
                v33 = v52;
                break;
              case 28:
                v33 = 0xE700000000000000;
                sub_EAAF0();
                break;
              case 29:
                v32 = 0x7265646E7573696DLL;
                v40 = 0x646F6F7473;
LABEL_76:
                v33 = v40 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
                break;
              default:
                break;
            }

            if (v22 == v32 && v21 == v33)
            {
              break;
            }

            sub_10C0E8();
            sub_10C428();

            if (v1)
            {
              goto LABEL_87;
            }

            v16 = (v16 + 1) & v14;
            sub_10C2E4();
            if ((v18 & v19) == 0)
            {
              goto LABEL_84;
            }
          }
        }

        else
        {
LABEL_84:
          v3[v17 + 7] = v18 | v19;
          *(v3[6] + v16) = v11;
          sub_10C348();
          if (v45)
          {
            goto LABEL_92;
          }

          v3[2] = v44;
        }

LABEL_87:
        ++v4;
        v2 = v53;
      }

      while (v4 != v55);
    }
  }

  else
  {
    v3 = &_swiftEmptySetSingleton;
  }

  return v3;
}

void sub_10B184(uint64_t a1)
{
  if (*(a1 + 16) && (sub_5758(&qword_1ED188, &qword_178288), v2 = sub_10C11C(), v3 = v2, (v4 = *(a1 + 16)) != 0))
  {
    v5 = 0;
    v6 = v2 + 56;
    while (v5 < *(a1 + 16))
    {
      v7 = *(a1 + 32 + 8 * v5++);
      v8 = *(v3 + 40);
      sub_16AF14();
      sub_16AF24(v7);
      v9 = sub_16AF54();
      v10 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v11 = v9 & v10;
        v12 = (v9 & v10) >> 6;
        v13 = *(v6 + 8 * v12);
        v14 = 1 << (v9 & v10);
        if ((v14 & v13) == 0)
        {
          break;
        }

        if (*(*(v3 + 48) + 8 * v11) == v7)
        {
          goto LABEL_11;
        }

        v9 = v11 + 1;
      }

      *(v6 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v7;
      sub_10C348();
      if (v16)
      {
        goto LABEL_14;
      }

      *(v3 + 16) = v15;
LABEL_11:
      if (v5 == v4)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:
  }
}

uint64_t sub_10B2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_16AE54() & 1;
  }
}

void sub_10B304(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_10C3C4();
    v38 = *(v4 + 16);
    if (v38)
    {
      v5 = v3;
      v6 = 0;
      sub_10C334();
      v8 = v7 + 56;
      sub_D434();
      v36 = v9;
      v37 = v10;
      while (1)
      {
        if (*(v5 + 16))
        {
          v11 = *(v37 + v6);
          v12 = *(v5 + 40);
          sub_16AF14();
          sub_81C68(v11);
          sub_10BF98();

          v13 = sub_16AF54();
          v14 = -1 << *(v5 + 32);
          v15 = v13 & ~v14;
          if ((*(v8 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
          {
            break;
          }
        }

LABEL_101:
        if (++v6 == v38)
        {
          goto LABEL_105;
        }
      }

      v39 = ~v14;
      while (1)
      {
        v16 = v2;
        v17 = 0x69646E6F43726961;
        switch(*(*(v5 + 48) + v15))
        {
          case 1:
            v17 = sub_10BC8C();
            goto LABEL_32;
          case 2:
            v19 = 1768191329;
            goto LABEL_26;
          case 3:
            v17 = sub_10BC6C();
            break;
          case 4:
            v17 = sub_10C1A4();
            break;
          case 5:
            v17 = sub_10BC4C();
LABEL_32:
            v16 = v2 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            break;
          case 6:
            v17 = sub_10BF20();
            break;
          case 7:
            v17 = sub_10C194();
            break;
          case 8:
            v16 = 0xE500000000000000;
            v17 = sub_93F0C();
            break;
          case 9:
            v17 = sub_10BCD8();
            goto LABEL_29;
          case 0xA:
            v21 = 1684104552;
            goto LABEL_47;
          case 0xB:
            v17 = sub_10C104() | 0x646F0000u;
            break;
          case 0xC:
            v17 = sub_10C104() | 0x6E720000u;
            break;
          case 0xD:
            v17 = sub_10BC2C();
            goto LABEL_35;
          case 0xE:
            v17 = sub_10BF34();
            break;
          case 0xF:
            v17 = sub_10BD80();
            break;
          case 0x10:
            v18 = sub_10BCF4();
            v17 = sub_10C1D4(v18);
            goto LABEL_29;
          case 0x11:
            v20 = sub_10BCF4();
            v17 = sub_10C164(v20);
LABEL_29:
            v16 = v2 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          case 0x12:
            v17 = sub_10BE70();
            goto LABEL_48;
          case 0x13:
            v17 = sub_10BD98();
            break;
          case 0x14:
            v17 = sub_10C1B4();
            break;
          case 0x15:
            v17 = sub_10C1C4();
            break;
          case 0x16:
            v17 = sub_10BE20();
            goto LABEL_45;
          case 0x17:
            v17 = sub_10BE0C();
LABEL_45:
            v16 = 0xEA00000000007265;
            break;
          case 0x18:
            v17 = sub_10BF48();
            break;
          case 0x19:
            v17 = sub_10BCBC();
            goto LABEL_27;
          case 0x1A:
            v17 = 0xD000000000000013;
            v16 = v36;
            break;
          case 0x1B:
            v17 = sub_10BD68();
            break;
          case 0x1C:
            v21 = 1818845556;
LABEL_47:
            v17 = v21 | 0x6867694C00000000;
LABEL_48:
            v16 = 0xE900000000000074;
            break;
          case 0x1D:
            v17 = sub_10BE48();
            break;
          case 0x1E:
            v17 = sub_10BE5C();
            break;
          case 0x1F:
            v19 = 1769171318;
LABEL_26:
            v17 = sub_10BE94(v19);
LABEL_27:
            v16 = v2 & 0xFFFF0000FFFFFFFFLL | 0x6C00000000;
LABEL_35:
            v16 = v16 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 0x20:
            sub_10BE34();
            sub_10C0DC();
            v16 = v22 - 1540;
            break;
          case 0x21:
            v17 = sub_10BBC0();
            break;
          case 0x22:
            v17 = sub_10BEF8();
            break;
          case 0x23:
            v17 = sub_10BF0C();
            break;
          default:
            break;
        }

        v23 = 0x69646E6F43726961;
        v24 = v2;
        switch(v11)
        {
          case 1:
            sub_10BDF8();
            v25 = 0x746867694C73;
            goto LABEL_76;
          case 2:
            v29 = 1768191329;
            goto LABEL_70;
          case 3:
            sub_10BFD0();
            v24 = 0xEB00000000656372;
            break;
          case 4:
            v24 = 0xE300000000000000;
            v23 = 7496035;
            break;
          case 5:
            sub_10BF84();
            v25 = 0x6C6F72746E6FLL;
LABEL_76:
            v24 = v25 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            break;
          case 6:
            v24 = 0xE600000000000000;
            sub_10C1F4();
            break;
          case 7:
            v24 = 0xE300000000000000;
            v23 = 7233894;
            break;
          case 8:
            v24 = 0xE500000000000000;
            sub_EACE8();
            break;
          case 9:
            sub_10C020();
            v27 = 1937008743;
            goto LABEL_73;
          case 10:
            v32 = 1684104552;
            goto LABEL_91;
          case 11:
            v24 = 0xE400000000000000;
            v23 = 1685024616;
            break;
          case 12:
            v24 = 0xE400000000000000;
            v23 = 1852993384;
            break;
          case 13:
            sub_10BF70();
            v30 = 0x746867694CLL;
            goto LABEL_79;
          case 14:
            v24 = 0xE600000000000000;
            sub_10C224();
            break;
          case 15:
            v24 = 0xE700000000000000;
            sub_10BFBC();
            break;
          case 16:
            sub_10BD24();
            v23 = v26 & 0xFFFFFFFFFFFFLL | 0x4267000000000000;
            v27 = 1701536114;
            goto LABEL_73;
          case 17:
            sub_10BD24();
            v23 = v31 & 0xFFFFFFFFFFFFLL | 0x4C67000000000000;
            v27 = 1952999273;
LABEL_73:
            v24 = v27 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          case 18:
            sub_10BF5C();
            goto LABEL_92;
          case 19:
            v24 = 0xE700000000000000;
            sub_10BEA8();
            break;
          case 20:
            v24 = 0xE400000000000000;
            v23 = 1918985586;
            break;
          case 21:
            v24 = 0xE400000000000000;
            v23 = 1952540019;
            break;
          case 22:
            sub_10BED0();
            goto LABEL_89;
          case 23:
            sub_10BEBC();
LABEL_89:
            v24 = 0xEA00000000007265;
            break;
          case 24:
            v24 = 0xE600000000000000;
            sub_10C214();
            break;
          case 25:
            sub_10C00C();
            v28 = 1701144663;
            goto LABEL_71;
          case 26:
            v23 = 0xD000000000000013;
            v24 = v36;
            break;
          case 27:
            v24 = 0xE700000000000000;
            sub_10C034();
            break;
          case 28:
            v32 = 1818845556;
LABEL_91:
            v23 = v32 | 0x6867694C00000000;
LABEL_92:
            v24 = 0xE900000000000074;
            break;
          case 29:
            v24 = 0xE500000000000000;
            sub_10C184();
            break;
          case 30:
            v24 = 0xE500000000000000;
            sub_10C1E4();
            break;
          case 31:
            v29 = 1769171318;
LABEL_70:
            v23 = v29 | 0x53656C6200000000;
            v28 = 1634625385;
LABEL_71:
            v30 = v28 & 0xFFFF0000FFFFFFFFLL | 0x6C00000000;
LABEL_79:
            v24 = v30 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 32:
            sub_10BEE4();
            sub_10C0DC();
            v24 = v33 - 1540;
            break;
          case 33:
            v24 = 0xE700000000000000;
            sub_EAAF0();
            break;
          case 34:
            v24 = 0xE600000000000000;
            sub_10C154();
            break;
          case 35:
            v24 = 0xE600000000000000;
            sub_10C144();
            break;
          default:
            break;
        }

        if (v17 == v23 && v16 == v24)
        {
          break;
        }

        v35 = sub_16AE54();

        if (v35)
        {
          goto LABEL_105;
        }

        v15 = (v15 + 1) & v39;
        if (((*(v8 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_101;
        }
      }
    }

LABEL_105:
    sub_10C3A8();
  }
}

unint64_t sub_10B9A8()
{
  result = qword_1ED128;
  if (!qword_1ED128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED128);
  }

  return result;
}

void sub_10B9FC(id a1)
{
  if (a1 != &dword_0 + 1)
  {
  }
}

id sub_10BA0C(id result)
{
  if (result != &dword_0 + 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_10BA1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1ED148, &unk_178230);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10BA8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&unk_1EC980, &qword_178180);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10BAFC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_10BB10(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_10BB64()
{
  result = qword_1ED170;
  if (!qword_1ED170)
  {
    sub_1697F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED170);
  }

  return result;
}

void sub_10BD04(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t sub_10BD48()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_10BF98()
{

  return sub_16A6F4();
}

uint64_t sub_10BFF8(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t sub_10C078()
{

  return sub_16AD84();
}

uint64_t sub_10C098()
{

  return sub_16AE54();
}

uint64_t sub_10C0E8()
{

  return sub_16AE54();
}

uint64_t sub_10C11C()
{

  return sub_16ACC4();
}

uint64_t sub_10C234()
{

  return sub_10BAFC(v0, v1);
}

uint64_t sub_10C258()
{

  return swift_allocObject();
}

uint64_t sub_10C29C()
{

  return sub_16AE54();
}

void sub_10C2B4(Swift::String a1)
{

  sub_16A744(a1);
}

char *sub_10C2CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_108ED8(v5, a2, a3, a4, v4);
}

uint64_t sub_10C3E0()
{

  return sub_16A694();
}

void sub_10C3F8()
{

  sub_100E24();
}

uint64_t sub_10C410()
{

  return swift_allocObject();
}

uint64_t sub_10C428()
{
}

uint64_t sub_10C440@<X0>(uint64_t a1@<X8>)
{
  sub_86E4(v1, &_swiftEmptySetSingleton, v9);
  if (v9[3])
  {
    sub_5758(&qword_1E5F90, &qword_170270);
    sub_5758(&qword_1E5F98, &unk_16D420);
    if (swift_dynamicCast())
    {
      if (*(&v11 + 1))
      {
        sub_D250(&v10, v13);
        v3 = v14;
        v4 = v15;
        sub_D084(v13, v14);
        (*(v4 + 16))(v3, v4);
        return sub_D13C(v13);
      }
    }

    else
    {
      v12 = 0;
      v10 = 0u;
      v11 = 0u;
    }
  }

  else
  {
    sub_D188(v9, &qword_1E5F80, &unk_16E7E0);
    v10 = 0u;
    v11 = 0u;
    v12 = 0;
  }

  sub_D188(&v10, &qword_1E5F88, &unk_16D410);
  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v6 = sub_16A584();
  sub_9DA0(v6, qword_1E65C0);
  v7 = sub_16A9A4();
  sub_386D8(v7, 1uLL, 0xD000000000000075, 0x800000000018E7F0, 0xD000000000000011, 0x800000000018E870, 14, 0xD000000000000016, 0x8000000000182F10);
  v8 = sub_169004();
  return sub_5370(a1, 1, 1, v8);
}

uint64_t sub_10C640(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10C680(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10C6DC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10C6F4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10C748(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_10C7C0(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = v3;
  *(v4 + 56) = a2;
  *(v4 + 96) = a1;
  return sub_D2B0();
}

uint64_t sub_10C7DC()
{
  if (*(v0 + 96) == 2)
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v1 = sub_16A584();
    sub_9DA0(v1, qword_1E65C0);
    sub_16A9A4();
    sub_10F1A8();
    sub_386D8(v3, 0x200000000uLL, v4, v5, 0xD000000000000032, v6, 41, v2 + 2, v33);
    v7 = swift_task_alloc();
    v8 = sub_10F1EC(v7);
    *v8 = v9;
    v10 = sub_10F164;
LABEL_18:
    v8[1] = v10;
    v29 = *(v0 + 72);

    return sub_10CBE8();
  }

  v11 = *(v0 + 64);
  if (v11)
  {
    v12 = *(v0 + 56);
  }

  else
  {
    v13 = *(v0 + 72);
    v14 = sub_10DF68();
    if (!v15)
    {
LABEL_15:
      if (qword_1E58E8 != -1)
      {
        sub_9ED4();
      }

      v23 = sub_16A584();
      sub_9DA0(v23, qword_1E65C0);
      sub_16A9A4();
      sub_10F1A8();
      sub_386D8(v25, 0x200000000uLL, v26, v27, 0xD000000000000032, v28, 47, v24 + 17, v33);
      v8 = swift_task_alloc();
      *(v0 + 80) = v8;
      *v8 = v0;
      v10 = sub_10CB08;
      goto LABEL_18;
    }

    v12 = v14;
    v11 = v15;
  }

  v16 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v16 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
    v22 = *(v0 + 64);

    goto LABEL_15;
  }

  sub_2F868(*(v0 + 72), v0 + 16, &qword_1E6060, &unk_1752B0);
  v17 = *(v0 + 40);
  v18 = *(v0 + 64);
  if (v17)
  {
    v19 = *(v0 + 96);
    v20 = *(v0 + 48);
    sub_D084((v0 + 16), *(v0 + 40));
    v21 = *(v20 + 40);

    v21(v19 & 1, v12, v11, v17, v20);

    sub_D13C((v0 + 16));
  }

  else
  {
    v31 = *(v0 + 64);

    sub_CEBE8(v0 + 16, &qword_1E6060);
  }

  sub_1677C();

  return v32();
}

uint64_t sub_10CB08()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 80);
  v3 = *v0;
  sub_D254();
  *v4 = v3;

  sub_D37C();

  return v5();
}

uint64_t sub_10CBFC()
{
  v1 = v0[28];
  v2 = sub_10DF68();
  v0[29] = v3;
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    sub_16ACF4(27);

    sub_D434();
    v17 = v6;
    v19._countAndFlagsBits = sub_37740();
    sub_16A744(v19);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v7 = sub_16A584();
    v0[30] = sub_9DA0(v7, qword_1E65C0);
    v8 = sub_16A9A4();
    sub_386D8(v8, 0x800000000uLL, 0xD00000000000009CLL, 0x800000000018E890, 0xD00000000000001CLL, 0x800000000018EA70, 60, 0xD000000000000019, v17);

    v9 = swift_task_alloc();
    v0[31] = v9;
    *v9 = v0;
    v9[1] = sub_10CE14;
    v10 = v0[28];

    return sub_10E7EC((v0 + 8), v4, v5);
  }

  else
  {
    type metadata accessor for CarCommandsError();
    sub_11D28();
    v12 = sub_5A144();
    sub_CED14(v12, v13);
    sub_D434();
    sub_10F1C4(v14, v15);
    swift_willThrow();
    sub_D37C();

    return v16();
  }
}

uint64_t sub_10CE14()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  v4 = *(v2 + 248);
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 256) = v0;

  if (!v0)
  {
    v7 = *(v3 + 232);
  }

  sub_10B4C();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10CF1C()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 240);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 24) = v1;
    v3 = *(v0 + 96);
    *(v0 + 32) = *(v0 + 80);
    *(v0 + 48) = v3;
    sub_16ACF4(49);

    sub_D434();
    v17 = v4;
    v5 = *(v0 + 16);
    v6 = *(v0 + 32);
    *(v0 + 176) = v5;
    v7 = *(v0 + 48);
    *(v0 + 112) = v5;
    *(v0 + 128) = v6;
    *(v0 + 144) = *(v0 + 48);
    *(v0 + 160) = v7;
    sub_10F108(v0 + 176, v0 + 192);
    sub_2F868(v0 + 160, v0 + 208, &qword_1E5FA0, &qword_172DD0);
    v19._countAndFlagsBits = sub_16A694();
    sub_16A744(v19);

    v8 = sub_16A9A4();
    sub_386D8(v8, 0x800000000uLL, 0xD00000000000009CLL, 0x800000000018E890, 0xD00000000000001CLL, 0x800000000018EA70, 66, 0xD00000000000002FLL, v17);

    v9 = swift_task_alloc();
    *(v0 + 264) = v9;
    *v9 = v0;
    v9[1] = sub_10D148;
    v10 = *(v0 + 224);

    return sub_10D8F8(v0 + 16);
  }

  else
  {
    type metadata accessor for CarCommandsError();
    sub_11D28();
    v12 = sub_5A144();
    sub_CED14(v12, v13);
    sub_D434();
    sub_10F1C4(v14, v15);
    swift_willThrow();
    sub_D37C();

    return v16();
  }
}

uint64_t sub_10D148()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 272) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10D240()
{
  sub_D2DC();
  sub_CEB94(v0 + 176);
  sub_CEBE8(v0 + 160, &qword_1E5FA0);
  sub_1677C();

  return v1();
}

uint64_t sub_10D2B0()
{
  sub_D2DC();
  v1 = *(v0 + 232);

  v2 = *(v0 + 256);
  sub_D37C();

  return v3();
}

uint64_t sub_10D30C()
{
  sub_D2DC();
  sub_CEB94(v0 + 176);
  sub_CEBE8(v0 + 160, &qword_1E5FA0);
  v1 = *(v0 + 272);
  sub_D37C();

  return v2();
}

uint64_t sub_10D380()
{
  sub_D2DC();
  *(v0 + 57) = v1;
  *(v0 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_10D410;

  return sub_10E3C8();
}

uint64_t sub_10D410()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 40);
  *v3 = *v1;
  *(v2 + 48) = v6;

  if (v0)
  {
    sub_D37C();

    return v7();
  }

  else
  {
    sub_10B4C();

    return _swift_task_switch(v9, v10, v11);
  }
}

uint64_t sub_10D52C()
{
  v1 = v0;
  v2 = 0;
  v3 = *(v0 + 48);
  v34 = v3;
  v35 = *(v3 + 16);
  v4 = (v3 + 40);
  while (2)
  {
    if (v35 == v2)
    {
      v19 = *(v1 + 48);
      v20 = *(v1 + 57);
      type metadata accessor for CarCommandsError();
      sub_11D28();
      sub_16924();
      sub_16ACF4(52);
      *(v1 + 16) = 0;
      *(v1 + 24) = 0xE000000000000000;
      v37._object = 0x800000000018EB80;
      v37._countAndFlagsBits = 0xD000000000000023;
      sub_16A744(v37);
      *(v1 + 56) = v20;
      sub_16AD84();
      v38._countAndFlagsBits = 0x72756F73206E6920;
      v38._object = 0xED0000203A736563;
      sub_16A744(v38);
      v21 = sub_16A7E4();
      v23 = v22;

      v39._countAndFlagsBits = v21;
      v39._object = v23;
      sub_16A744(v39);

      v24 = *(v1 + 24);
      sub_10F1F8(*(v1 + 16));
      swift_willThrow();
      v25 = *(v1 + 8);
      goto LABEL_27;
    }

    if (v2 >= *(v34 + 16))
    {
      __break(1u);
      JUMPOUT(0x10D8C4);
    }

    v5 = *(v4 - 1);
    v6 = *v4;
    v7 = *(v4 + 8);
    v8 = *(v4 + 3);
    v9 = 0xE200000000000000;
    v10 = 28006;
    v11 = v4[3];
    v12 = v4[4];
    switch(*(v4 + 8))
    {
      case 1:
        v10 = 28001;
        goto LABEL_10;
      case 2:
        v10 = 28024;
        goto LABEL_10;
      case 3:
        v9 = 0xE300000000000000;
        v10 = 6447460;
        goto LABEL_10;
      case 4:
        v9 = 0xE500000000000000;
        v10 = 0x6261646D66;
        goto LABEL_10;
      case 5:
        v9 = 0xE700000000000000;
        v10 = 0x6E776F6E6B6E75;
        goto LABEL_10;
      case 6:
        goto LABEL_22;
      default:
LABEL_10:
        v13 = 0xE200000000000000;
        v14 = 28006;
        switch(*(v1 + 57))
        {
          case 1:
            v14 = 28001;
            break;
          case 2:
            v14 = 28024;
            break;
          case 3:
            v13 = 0xE300000000000000;
            v14 = 6447460;
            break;
          case 4:
            v13 = 0xE500000000000000;
            v14 = 0x6261646D66;
            break;
          case 5:
            v13 = 0xE700000000000000;
            v14 = 0x6E776F6E6B6E75;
            break;
          default:
            break;
        }

        v31 = *(v4 - 1);
        v32 = *(v4 + 16);
        if (v10 == v14 && v9 == v13)
        {
          v26 = *(v33 + 48);

          v27 = v33;

          goto LABEL_26;
        }

        v16 = v4[3];
        v17 = v2;
        v18 = sub_16AE54();

        if ((v18 & 1) == 0)
        {

          v1 = v33;
          v2 = v17;
LABEL_22:
          v4 += 6;
          ++v2;
          continue;
        }

        v27 = v33;
        v28 = *(v33 + 48);
        v11 = v16;
LABEL_26:
        v29 = *(v27 + 32);

        *v29 = v31;
        v29[1] = v6;
        v29[2] = v7 | (v8 << 32);
        v29[3] = v32;
        v29[4] = v11;
        v29[5] = v12;
        v25 = *(v27 + 8);
LABEL_27:

        return v25();
    }
  }
}

uint64_t sub_10D8F8(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  return sub_D2B0();
}

uint64_t sub_10D90C()
{
  v1 = *(v0 + 120);
  sub_16ACF4(34);
  *(v0 + 104) = 0;
  *(v0 + 112) = 0xE000000000000000;
  v23._countAndFlagsBits = 0xD000000000000020;
  v23._object = 0x800000000018E950;
  sub_16A744(v23);
  v2 = *v1;
  v3 = v1[1];
  *(v0 + 48) = v1[2];
  *(v0 + 32) = v3;
  *(v0 + 16) = v2;
  sub_16AD84();
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v6 = *(v0 + 128);
  v7 = sub_16A584();
  sub_9DA0(v7, qword_1E65C0);
  v8 = sub_16A9A4();
  sub_386D8(v8, 0x800uLL, 0xD00000000000009CLL, 0x800000000018E890, 0xD000000000000013, 0x800000000018E930, 19, v4, v5);

  sub_2F868(v6, v0 + 64, &qword_1E6060, &unk_1752B0);
  v9 = *(v0 + 88);
  if (v9)
  {
    v10 = *(v0 + 96);
    v11 = sub_37740();
    sub_D084(v11, v12);
    v13 = *(v10 + 24);
    sub_61494();
    v21 = (v14 + *v14);
    v16 = *(v15 + 4);
    v17 = swift_task_alloc();
    *(v0 + 136) = v17;
    *v17 = v0;
    v17[1] = sub_10DBD8;
    v18 = sub_10F1E0(*(v0 + 120));

    return v21(v18, v9, v10);
  }

  else
  {
    sub_CEBE8(v0 + 64, &qword_1E6060);
    sub_1677C();

    return v20();
  }
}

uint64_t sub_10DBD8()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 144) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10DCD0()
{
  sub_D2DC();
  sub_D13C((v0 + 64));
  sub_1677C();

  return v1();
}

uint64_t sub_10DD28()
{
  sub_D2DC();
  sub_D13C(v0 + 8);
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_10DDBC;
  v2 = v0[16];
  v3 = sub_10F1E0(v0[15]);

  return sub_10E01C(v3);
}

uint64_t sub_10DDBC()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 160) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10DEB4()
{
  sub_D2DC();
  v1 = *(v0 + 144);

  sub_1677C();

  return v2();
}

uint64_t sub_10DF0C()
{
  sub_D2DC();
  v1 = *(v0 + 144);

  sub_D37C();
  v3 = *(v0 + 160);

  return v2();
}

uint64_t sub_10DF68()
{
  sub_2F868(v0 + 40, v7, &qword_1EA118, &qword_173E88);
  v1 = v8;
  if (v8)
  {
    v2 = v9;
    sub_D084(v7, v8);
    v3 = *(v2 + 16);
    v4 = sub_37740();
    v1 = v5(v4);
    sub_D13C(v7);
  }

  else
  {
    sub_CEBE8(v7, &qword_1EA118);
  }

  return v1;
}

uint64_t sub_10E01C(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return _swift_task_switch(sub_10E03C, 0, 0);
}

uint64_t sub_10E03C()
{
  v1 = v0[7];
  if ((*(v1 + 24) & 1) != 0 || (v2 = *(v1 + 20), !v2))
  {
    v14 = swift_task_alloc();
    v15 = sub_10F1EC(v14);
    *v15 = v16;
    v15[1] = sub_10F164;
    v17 = v0[8];
    v18 = sub_10F1E0(v0[7]);

    return sub_10EB88(v18);
  }

  else
  {
    sub_2F868(v0[8], (v0 + 2), &qword_1E6060, &unk_1752B0);
    v3 = v0[5];
    if (v3)
    {
      v4 = v0[6];
      v5 = v0[7];
      sub_D084(v0 + 2, v0[5]);
      v6 = *v5;
      v7 = v5[1];
      v8 = *(v4 + 16);
      sub_61494();
      v20 = (v9 + *v9);
      v11 = *(v10 + 4);
      v12 = swift_task_alloc();
      v0[9] = v12;
      *v12 = v0;
      v12[1] = sub_10E278;

      return v20(v6, v7, v2, v3, v4);
    }

    else
    {
      sub_CEBE8((v0 + 2), &qword_1E6060);
      sub_1677C();

      return v19();
    }
  }
}

uint64_t sub_10E278()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 80) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10E370()
{
  sub_D2DC();
  sub_D13C((v0 + 16));
  sub_1677C();

  return v1();
}

uint64_t sub_10E3E8()
{
  sub_2F868(v0[7], (v0 + 2), &qword_1E6060, &unk_1752B0);
  if (v0[5])
  {
    v1 = v0[6];
    sub_D084(v0 + 2, v0[5]);
    v2 = *(v1 + 32);
    sub_61494();
    v14 = (v3 + *v3);
    v5 = *(v4 + 4);
    v6 = swift_task_alloc();
    v0[8] = v6;
    *v6 = v0;
    v6[1] = sub_10E5AC;
    v7 = sub_37740();

    return v14(v7);
  }

  else
  {
    sub_CEBE8((v0 + 2), &qword_1E6060);
    type metadata accessor for CarCommandsError();
    sub_11D28();
    v9 = sub_5A144();
    sub_CED14(v9, v10);
    sub_D434();
    sub_10F1C4(v11, v12);
    swift_willThrow();
    sub_D37C();

    return v13();
  }
}

uint64_t sub_10E5AC()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 64);
  *v3 = *v1;
  *(v2 + 72) = v6;
  *(v2 + 80) = v0;

  sub_10B4C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10E6AC()
{
  v1 = v0[9];
  sub_D13C(v0 + 2);
  if (v1)
  {
    v2 = v0[9];
    v3 = v0[1];

    return v3(v2);
  }

  else
  {
    type metadata accessor for CarCommandsError();
    sub_11D28();
    v5 = sub_5A144();
    sub_CED14(v5, v6);
    sub_D434();
    sub_10F1C4(v7, v8);
    swift_willThrow();
    sub_D37C();

    return v9();
  }
}

uint64_t sub_10E790()
{
  sub_D2DC();
  sub_D13C((v0 + 16));
  v1 = *(v0 + 80);
  sub_D37C();

  return v2();
}

uint64_t sub_10E7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = swift_task_alloc();
  v3[5] = v4;
  *v4 = v3;
  v4[1] = sub_10E880;

  return sub_10E3C8();
}

uint64_t sub_10E880()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 40);
  *v3 = *v1;
  *(v2 + 48) = v6;

  if (v0)
  {
    sub_D37C();

    return v7();
  }

  else
  {
    sub_10B4C();

    return _swift_task_switch(v9, v10, v11);
  }
}

uint64_t sub_10E99C()
{
  v1 = v0[6];
  v2 = (v1 + 40);
  v3 = *(v1 + 16) + 1;
  while (1)
  {
    if (!--v3)
    {
      v12 = v0[6];
      v14 = v0[3];
      v13 = v0[4];
      type metadata accessor for CarCommandsError();
      sub_11D28();
      sub_16924();
      sub_16ACF4(65);
      v23._object = 0x800000000018EB20;
      v23._countAndFlagsBits = 0xD00000000000002FLL;
      sub_16A744(v23);
      v24._countAndFlagsBits = v14;
      v24._object = v13;
      sub_16A744(v24);
      v25._countAndFlagsBits = 0x756F73206E692027;
      v25._object = 0xEE00203A73656372;
      sub_16A744(v25);
      v15 = sub_16A7E4();
      v17 = v16;

      v26._countAndFlagsBits = v15;
      v26._object = v17;
      sub_16A744(v26);

      sub_10F1F8(0);
      swift_willThrow();
      sub_D37C();
      goto LABEL_12;
    }

    v4 = *(v2 - 1);
    v5 = *v2;
    v6 = *(v2 + 8);
    v7 = *(v2 + 3);
    v8 = *(v2 + 16);
    v10 = v2[3];
    v9 = v2[4];
    if (v4 == v0[3] && v5 == v0[4])
    {
      break;
    }

    v2 += 6;
    if (sub_16AE54())
    {
      goto LABEL_11;
    }
  }

  v4 = v0[3];
LABEL_11:
  v19 = v0[6];
  v20 = v0[2];

  *v20 = v4;
  v20[1] = v5;
  v20[2] = v6 | (v7 << 32);
  v20[3] = v8;
  v20[4] = v10;
  v20[5] = v9;
  sub_1677C();
LABEL_12:

  return v18();
}

uint64_t sub_10EB88(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return _swift_task_switch(sub_10EBA8, 0, 0);
}

uint64_t sub_10EBA8()
{
  sub_2F868(v0[8] + 40, (v0 + 2), &qword_1EA118, &qword_173E88);
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[6];
    sub_D084(v0 + 2, v0[5]);
    v3 = *(v2 + 8);
    sub_61494();
    v17 = (v4 + *v4);
    v6 = *(v5 + 4);
    v7 = swift_task_alloc();
    v0[9] = v7;
    *v7 = v0;
    v7[1] = sub_10ED5C;
    v8 = sub_10F1E0(v0[7]);

    return v17(v8, v1, v2);
  }

  else
  {
    sub_CEBE8((v0 + 2), &qword_1EA118);
    v10 = v0[7];
    v12 = *v10;
    v11 = v10[1];
    v13 = swift_task_alloc();
    v14 = sub_10F1EC(v13);
    *v14 = v15;
    v16 = sub_10F174(v14);

    return sub_10C7C0(v16);
  }
}

uint64_t sub_10ED5C()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 80) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10EE54()
{
  sub_D13C((v0 + 16));
  v1 = *(v0 + 56);
  v3 = *v1;
  v2 = v1[1];
  v4 = swift_task_alloc();
  v5 = sub_10F1EC(v4);
  *v5 = v6;
  v7 = sub_10F174(v5);

  return sub_10C7C0(v7);
}

uint64_t sub_10EED8()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 88);
  v3 = *v0;
  sub_D254();
  *v4 = v3;

  sub_D37C();

  return v5();
}

BOOL sub_10EFB8(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_16AE54() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v5 == 6)
  {
    if (v6 != 6)
    {
      return 0;
    }
  }

  else
  {
    if (v6 == 6)
    {
      return 0;
    }

    v7 = sub_BE77C(v5);
    v9 = v8;
    if (v7 == sub_BE77C(v6) && v9 == v10)
    {
    }

    else
    {
      v12 = sub_16AE54();

      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v13 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 20) != *(a2 + 20))
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  v14 = *(a1 + 40);
  v15 = *(a2 + 40);
  if (v14)
  {
    if (!v15)
    {
      return 0;
    }

    v16 = *(a1 + 32) == *(a2 + 32) && v14 == v15;
    return v16 || (sub_16AE54() & 1) != 0;
  }

  return !v15;
}

uint64_t sub_10F174(uint64_t a1)
{
  *(a1 + 8) = sub_10EED8;
  v2 = *(v1 + 64);
  return 1;
}

uint64_t sub_10F1C4@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = v2;
  a1[1] = a2;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10F1F8@<X0>(uint64_t a1@<X8>)
{
  *v2 = a1;
  v2[1] = v1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10F218(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1D3740;
  v6._object = a2;
  v4 = sub_16ADE4(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10F264(char a1)
{
  result = 28271;
  switch(a1)
  {
    case 1:
      result = 6710895;
      break;
    case 2:
      result = 0x64656B636F6CLL;
      break;
    case 3:
      result = 0x64656B636F6C6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10F304@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10F218(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_10F334@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10F264(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for CarCommandsSettingsStateNLv3Value(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10F43CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10F478()
{
  result = qword_1ED1C8;
  if (!qword_1ED1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED1C8);
  }

  return result;
}

uint64_t sub_10F4CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10F658();
  v5 = sub_10F6AC();
  v6 = sub_10F700();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5, v6);
}

unint64_t sub_10F544()
{
  result = qword_1ED1D0;
  if (!qword_1ED1D0)
  {
    sub_37130(&qword_1ED1D8, &qword_1784A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED1D0);
  }

  return result;
}

unint64_t sub_10F5AC()
{
  result = qword_1ED1E0;
  if (!qword_1ED1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED1E0);
  }

  return result;
}

unint64_t sub_10F604()
{
  result = qword_1ED1E8;
  if (!qword_1ED1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED1E8);
  }

  return result;
}

unint64_t sub_10F658()
{
  result = qword_1ED1F0;
  if (!qword_1ED1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED1F0);
  }

  return result;
}

unint64_t sub_10F6AC()
{
  result = qword_1ED1F8;
  if (!qword_1ED1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED1F8);
  }

  return result;
}

unint64_t sub_10F700()
{
  result = qword_1ED200;
  if (!qword_1ED200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED200);
  }

  return result;
}

uint64_t sub_10F754(uint64_t a1, __int128 *a2)
{
  *(v2 + 48) = 0;
  *(v2 + 32) = 0u;
  *(v2 + 16) = 0u;
  swift_beginAccess();
  sub_CD04C(a1, v2 + 16);
  swift_endAccess();
  sub_D124(a2, v2 + 56);
  return v2;
}

uint64_t sub_10F7D4(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  return sub_D2B0();
}

uint64_t sub_10F7E8()
{
  sub_10B8C();
  sub_112E2C();
  sub_112DA8();
  sub_112E9C();
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  sub_112EB4();
  sub_112C24();
  v4 = *(v3 + 64);
  sub_D3C8();
  sub_112C84();
  v5();
  v6 = sub_112C6C();
  v7(v6);
  v8 = sub_112C9C();
  v9(v8);
  sub_5758(&qword_1ED368, &qword_178648);
  v10 = sub_112E80();
  v11 = sub_112CF8(v10, xmmword_16D9A0);
  v19 = sub_112E08(v11, v12, v13, v14, v15, v16, v17, v18, v32, v34, v35);
  sub_112E48(v19);
  sub_112ED8();
  v27 = sub_112CB4(v20, v21, v22, v23, &off_1D1938, v24, v25, v26, v33);
  sub_112E64(v27);
  v28 = swift_task_alloc();
  v29 = sub_112ECC(v28);
  *v29 = v30;
  sub_3099C(v29);

  return sub_D613C();
}

uint64_t sub_10F940()
{
  sub_1696C();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 152);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 160) = v0;

  if (!v0)
  {
    sub_112F30();
  }

  sub_3021C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10FA4C(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  return sub_D2B0();
}

uint64_t sub_10FA60()
{
  sub_10B8C();
  sub_112E2C();
  sub_112DA8();
  sub_112E9C();
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  sub_112EB4();
  sub_112C24();
  v4 = *(v3 + 64);
  sub_D3C8();
  sub_112C84();
  v5();
  v6 = sub_112C6C();
  v7(v6);
  v8 = sub_112C9C();
  v9(v8);
  sub_5758(&qword_1ED368, &qword_178648);
  v10 = sub_112E80();
  v11 = sub_112CF8(v10, xmmword_16D9A0);
  v19 = sub_112E08(v11, v12, v13, v14, v15, v16, v17, v18, v32, v34, v35);
  sub_112E48(v19);
  sub_112ED8();
  v27 = sub_112CB4(v20, v21, v22, v23, &off_1D1910, v24, v25, v26, v33);
  sub_112E64(v27);
  v28 = swift_task_alloc();
  v29 = sub_112ECC(v28);
  *v29 = v30;
  sub_3099C(v29);

  return sub_D613C();
}

uint64_t sub_10FBB8()
{
  sub_1696C();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 152);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 160) = v0;

  if (!v0)
  {
    sub_112F30();
  }

  sub_3021C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10FCC4()
{
  sub_D2DC();
  v1 = *(v0 + 144);
  if (*(v0 + 168))
  {
    v2 = *(v0 + 136);
    v3 = &off_1D8010;
  }

  else
  {
    v4 = *(v0 + 120);
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;

    v2 = 0;
    v3 = 0;
    v1 = 0;
  }

  v5 = *(v0 + 120);
  v5[3] = v2;
  v5[4] = v3;
  *v5 = v1;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10FD5C()
{
  sub_D2DC();
  v1 = v0[18];

  v2 = v0[1];
  v3 = v0[20];

  return v2();
}

uint64_t sub_10FDBC(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  return sub_D2B0();
}

uint64_t sub_10FDD0()
{
  sub_D3A4();
  sub_112E2C();
  sub_112DA8();
  sub_112E9C();
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = sub_112EB4();
  sub_112C24();
  v6 = *(v5 + 64);
  sub_D3C8();
  sub_112C84();
  v7();
  v8 = sub_112C6C();
  v9(v8);
  v10 = sub_112C9C();
  v11(v10);
  sub_5758(&qword_1ED368, &qword_178648);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_16EE50;
  *(v12 + 32) = xmmword_170850;
  *(v12 + 48) = 3;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_16D3A0;
  *(v13 + 32) = xmmword_1785B0;
  v14 = type metadata accessor for WalletCarActivatableAccessory();
  sub_112E48(v14);
  sub_112ED8();
  v15 = sub_D5CC8((v1 + 16), v1 + 56, v4, v2, &off_1D18B8, 0, v12, 1, v20);
  sub_112E64(v15);
  v16 = swift_task_alloc();
  v17 = sub_112ECC(v16);
  *v17 = v18;
  sub_3099C(v17);

  return sub_D613C();
}

uint64_t sub_10FFA4()
{
  sub_D3A4();
  v1 = *(v0 + 16);
  v2 = v1[10];
  v3 = v1[11];
  v4 = sub_D084(v1 + 7, v2);
  sub_37404();
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = sub_D3C8();
  (*(v6 + 16))(v9, v4, v2);
  v10 = *(v3 + 16);
  v11 = sub_37740();
  v13 = v12(v11);
  (*(v6 + 8))(v9, v2);

  sub_30AEC();

  return v14(v13 & 1);
}

uint64_t sub_1100C4(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  return sub_D2B0();
}

uint64_t sub_1100D8()
{
  sub_10B8C();
  sub_112E2C();
  sub_112DA8();
  sub_112E9C();
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  sub_112EB4();
  sub_112C24();
  v4 = *(v3 + 64);
  sub_D3C8();
  sub_112C84();
  v5();
  v6 = sub_112C6C();
  v7(v6);
  v8 = sub_112C9C();
  v9(v8);
  sub_5758(&qword_1ED368, &qword_178648);
  v10 = sub_112E80();
  v11 = sub_112CF8(v10, xmmword_16D9A0);
  v19 = sub_112E08(v11, v12, v13, v14, v15, v16, v17, v18, v32, v34, v35);
  sub_112E48(v19);
  sub_112ED8();
  v27 = sub_112CB4(v20, v21, v22, v23, &off_1D18E8, v24, v25, v26, v33);
  sub_112E64(v27);
  v28 = swift_task_alloc();
  v29 = sub_112ECC(v28);
  *v29 = v30;
  sub_3099C(v29);

  return sub_D613C();
}

uint64_t sub_110244()
{
  sub_D3A4();
  v1 = *(v0 + 160) + 16;
  swift_beginAccess();
  sub_112E9C();
  if (*(v0 + 80))
  {
    v2 = *(v0 + 160);
    sub_D124((v0 + 56), v0 + 16);
    v3 = sub_D084((v0 + 16), *(v0 + 40));
    sub_10824(v2 + 56, v0 + 96);
    v4 = *v3;
    swift_task_alloc();
    sub_D3E0();
    *(v0 + 168) = v5;
    *v5 = v6;
    v5[1] = sub_110420;

    return sub_A6354(v0 + 96);
  }

  else
  {
    sub_D188(v0 + 56, &qword_1EAFA0, &qword_175890);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v8 = sub_16A584();
    sub_9DA0(v8, qword_1E65C0);
    v9 = sub_16A9A4();
    sub_386D8(v9, 0x20000uLL, 0xD000000000000085, 0x800000000018EBF0, 0xD000000000000010, 0x800000000018ED60, 104, 0xD000000000000055, 0x800000000018ED80);
    sub_30AEC();

    return v10(1);
  }
}

uint64_t sub_110420()
{
  sub_D2DC();
  sub_D358();
  v2 = v1;
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 168);
  *v3 = *v0;
  *(v2 + 176) = v6;

  sub_D13C((v2 + 96));
  v7 = sub_D388();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_110514()
{
  sub_D2DC();
  sub_D13C((v0 + 16));
  v1 = *(v0 + 176);
  sub_30AEC();

  return v2();
}

id sub_110574()
{
  v2 = v0[10];
  v1 = v0[11];
  sub_112EB4();
  sub_112C24();
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v7);
  sub_112C54();
  (*(v4 + 16))(v0);
  (*(v1 + 64))(v2, v1);
  (*(v4 + 8))(v0, v2);
  v8 = v0[10];
  v9 = v0[11];
  sub_D084(v0 + 7, v8);
  sub_112C24();
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  sub_112C54();
  (*(v11 + 16))(v0);
  v15 = (*(v9 + 56))(v8, v9);
  v17 = v16;
  (*(v11 + 8))(v0, v8);
  v18 = objc_allocWithZone(INSpeakableString);
  v19 = sub_37740();
  return sub_1128FC(v19, v20, v15, v17, 0, 0);
}

uint64_t sub_110748()
{
  result = sub_110B90();
  if (!result)
  {
    return result;
  }

  v4 = result;
  v5 = 0;
  v6 = *(result + 16);
  while (1)
  {
    if (v6 == v5)
    {
      goto LABEL_19;
    }

    if (v5 >= *(v4 + 16))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      sub_9ED4();
      v14 = sub_16A584();
      sub_9DA0(v14, qword_1E65C0);
      v15 = sub_16A9A4();
      sub_386D8(v15, 0x20000uLL, &_s12SiriOntology23UsoEntity_common_NumberC13DefinedValuesO0e1_F12_MiddleValueyA2EmFWC_ptr + 5, v1 | 0x8000000000000000, 0xD000000000000018, (v2 | 0x8000000000000000), 147, v0, v4);

LABEL_19:

      return 0;
    }

    v0 = *(v4 + 8 * v5 + 32);
    if (v0 < 0)
    {
      goto LABEL_25;
    }

    v7 = objc_allocWithZone(LSApplicationRecord);
    v1 = sub_1129C0(v0);
    v8 = sub_112B50(v1, &selRef_bundleIdentifier);
    v2 = v9;
    v10 = sub_16A1B4();
    v0 = v11;
    if (!v2)
    {

      if (!v0)
      {
LABEL_20:

        return 1;
      }

      goto LABEL_17;
    }

    if (!v11)
    {

      v0 = v2;
LABEL_17:

      goto LABEL_18;
    }

    if (v8 == v10 && v2 == v11)
    {
      break;
    }

    v13 = sub_16AE54();

    if (v13)
    {
      goto LABEL_20;
    }

LABEL_18:
    ++v5;
  }

  return 1;
}

BOOL sub_1109B4()
{
  v0 = sub_110C5C();
  if (v0)
  {
    v1 = v0;
    v2 = sub_16A1B4();
    if (v3)
    {
      v4 = v2;
      v5 = v3;
      v6 = objc_allocWithZone(LSApplicationRecord);
      v8 = sub_112A74(v4, v5, 0);
      v9 = sub_112B50(v8, &selRef_applicationIdentifier);
      if (v10)
      {
        v11 = sub_9CB4(v9, v10, v1);

        return v11;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_110B90()
{
  v1 = v0[11];
  sub_D084(v0 + 7, v0[10]);
  sub_37404();
  v3 = *(v2 + 64);
  __chkstk_darwin(v4);
  sub_112C54();
  v5 = sub_112EE4();
  v6(v5);
  v7 = *(v1 + 88);
  v8 = sub_37740();
  v9(v8);
  v10 = sub_112F3C();
  v11(v10);
  return v1;
}

uint64_t sub_110C5C()
{
  v1 = v0[11];
  sub_D084(v0 + 7, v0[10]);
  sub_37404();
  v3 = *(v2 + 64);
  __chkstk_darwin(v4);
  sub_112C54();
  v5 = sub_112EE4();
  v6(v5);
  v7 = *(v1 + 48);
  v8 = sub_37740();
  v9(v8);
  v10 = sub_112F3C();
  v11(v10);
  return v1;
}

uint64_t sub_110D28()
{
  sub_D2DC();
  switch(v1)
  {
    case 0:
    case 1:
      swift_task_alloc();
      sub_D3E0();
      v0[22] = v9;
      *v9 = v10;
      v9[1] = sub_110F84;

      result = sub_10FDBC((v0 + 17));
      break;
    case 2:
    case 4:
    case 6:
      swift_task_alloc();
      sub_D3E0();
      v0[24] = v2;
      *v2 = v3;
      v2[1] = sub_1110EC;

      result = sub_10F7D4((v0 + 12));
      break;
    case 5:
    case 13:
      swift_task_alloc();
      sub_D3E0();
      v0[26] = v5;
      *v5 = v6;
      v5[1] = sub_111254;

      result = sub_1100C4((v0 + 7));
      break;
    case 9:
    case 10:
      swift_task_alloc();
      sub_D3E0();
      v0[28] = v7;
      *v7 = v8;
      v7[1] = sub_1113BC;

      result = sub_10FA4C((v0 + 2));
      break;
    default:
      v11 = sub_9F0FC();

      result = v12(v11);
      break;
  }

  return result;
}

uint64_t sub_110F84()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 176);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 184) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_11107C()
{
  sub_D2DC();
  v1 = *(v0 + 160);
  sub_112F50();
  sub_D188(v0 + 136, &qword_1E6368, &qword_16DAA0);
  v2 = sub_302B8();

  return v3(v2);
}

uint64_t sub_1110EC()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 200) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1111E4()
{
  sub_D2DC();
  v1 = *(v0 + 120);
  sub_112F50();
  sub_D188(v0 + 96, &qword_1E6368, &qword_16DAA0);
  v2 = sub_302B8();

  return v3(v2);
}

uint64_t sub_111254()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 216) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_11134C()
{
  sub_D2DC();
  v1 = *(v0 + 80);
  sub_112F50();
  sub_D188(v0 + 56, &qword_1E6368, &qword_16DAA0);
  v2 = sub_302B8();

  return v3(v2);
}

uint64_t sub_1113BC()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 224);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 232) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1114B4()
{
  sub_D2DC();
  v1 = *(v0 + 40);
  sub_112F50();
  sub_D188(v0 + 16, &qword_1E6368, &qword_16DAA0);
  v2 = sub_302B8();

  return v3(v2);
}

uint64_t sub_111544()
{
  sub_D2DC();
  *(v1 + 200) = v0;
  swift_task_alloc();
  sub_D3E0();
  *(v1 + 208) = v2;
  *v2 = v3;
  v2[1] = sub_1115D4;

  return sub_10FDBC(v1 + 16);
}

uint64_t sub_1115D4()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 216) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1116CC()
{
  sub_D3A4();
  if (*(v0 + 40))
  {
    v1 = *(v0 + 48);
    sub_D084((v0 + 16), *(v0 + 40));
    sub_112C38();
    v12 = v2 + *v2;
    v4 = *(v3 + 4);
    v5 = swift_task_alloc();
    *(v0 + 224) = v5;
    *v5 = v0;
    v6 = sub_2FB78(v5);

    return v7(v6);
  }

  else
  {
    sub_D188(v0 + 16, &qword_1E6368, &qword_16DAA0);
    *(v0 + 305) = 0;
    swift_task_alloc();
    sub_D3E0();
    *(v0 + 232) = v9;
    *v9 = v10;
    v11 = sub_112D24(v9);

    return sub_1100C4(v11);
  }
}

uint64_t sub_111838()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  v4 = *(v3 + 224);
  *v2 = *v0;
  *(v1 + 304) = v5;

  v6 = sub_D388();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_111920()
{
  sub_D2DC();
  sub_D13C((v0 + 16));
  *(v0 + 305) = *(v0 + 304);
  swift_task_alloc();
  sub_D3E0();
  *(v0 + 232) = v1;
  *v1 = v2;
  v3 = sub_112D24(v1);

  return sub_1100C4(v3);
}

uint64_t sub_11199C()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 232);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 240) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_111A94()
{
  sub_D3A4();
  if (*(v0 + 80))
  {
    v1 = *(v0 + 88);
    sub_D084((v0 + 56), *(v0 + 80));
    sub_112C38();
    v12 = v2 + *v2;
    v4 = *(v3 + 4);
    v5 = swift_task_alloc();
    *(v0 + 248) = v5;
    *v5 = v0;
    v6 = sub_2FB78(v5);

    return v7(v6);
  }

  else
  {
    sub_D188(v0 + 56, &qword_1E6368, &qword_16DAA0);
    *(v0 + 307) = 0;
    swift_task_alloc();
    sub_D3E0();
    *(v0 + 256) = v9;
    *v9 = v10;
    v11 = sub_112D50(v9);

    return sub_10FA4C(v11);
  }
}

uint64_t sub_111C00()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  v4 = *(v3 + 248);
  *v2 = *v0;
  *(v1 + 306) = v5;

  v6 = sub_D388();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_111CE8()
{
  sub_D2DC();
  sub_D13C((v0 + 56));
  *(v0 + 307) = *(v0 + 306);
  swift_task_alloc();
  sub_D3E0();
  *(v0 + 256) = v1;
  *v1 = v2;
  v3 = sub_112D50(v1);

  return sub_10FA4C(v3);
}

uint64_t sub_111D64()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 256);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 264) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_111E5C()
{
  sub_D3A4();
  if (*(v0 + 120))
  {
    v1 = *(v0 + 128);
    sub_D084((v0 + 96), *(v0 + 120));
    sub_112C38();
    v12 = v2 + *v2;
    v4 = *(v3 + 4);
    v5 = swift_task_alloc();
    *(v0 + 272) = v5;
    *v5 = v0;
    v6 = sub_2FB78(v5);

    return v7(v6);
  }

  else
  {
    sub_D188(v0 + 96, &qword_1E6368, &qword_16DAA0);
    *(v0 + 309) = 0;
    swift_task_alloc();
    sub_D3E0();
    *(v0 + 280) = v9;
    *v9 = v10;
    v11 = sub_112D7C(v9);

    return sub_10F7D4(v11);
  }
}

uint64_t sub_111FC8()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  v4 = *(v3 + 272);
  *v2 = *v0;
  *(v1 + 308) = v5;

  v6 = sub_D388();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1120B0()
{
  sub_D2DC();
  sub_D13C((v0 + 96));
  *(v0 + 309) = *(v0 + 308);
  swift_task_alloc();
  sub_D3E0();
  *(v0 + 280) = v1;
  *v1 = v2;
  v3 = sub_112D7C(v1);

  return sub_10F7D4(v3);
}

uint64_t sub_11212C()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 280);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 288) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_112224()
{
  sub_D3A4();
  if (*(v0 + 160))
  {
    v1 = *(v0 + 168);
    sub_D084((v0 + 136), *(v0 + 160));
    sub_112C38();
    v11 = v2 + *v2;
    v4 = *(v3 + 4);
    v5 = swift_task_alloc();
    *(v0 + 296) = v5;
    *v5 = v0;
    v6 = sub_2FB78(v5);
  }

  else
  {
    sub_D188(v0 + 136, &qword_1E6368, &qword_16DAA0);
    v8 = *(v0 + 305) | *(v0 + 307) | *(v0 + 309);
    sub_30AEC();
    v6 = v9 & 1;
  }

  return v7(v6);
}

uint64_t sub_112388()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  v4 = *(v3 + 296);
  *v2 = *v0;
  *(v1 + 310) = v5;

  v6 = sub_D388();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_112470()
{
  sub_D2DC();
  sub_D13C((v0 + 136));
  v1 = *(v0 + 305) | *(v0 + 307) | *(v0 + 309) | *(v0 + 310);
  sub_30AEC();

  return v2(v3 & 1);
}

id sub_1128FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_16A644();

  v9 = sub_16A644();

  if (a6)
  {
    v10 = sub_16A644();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 initWithIdentifier:v8 spokenPhrase:v9 pronunciationHint:v10];

  return v11;
}

id sub_1129C0(uint64_t a1)
{
  v6 = 0;
  v2 = [v1 initWithStoreItemIdentifier:a1 error:&v6];
  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    sub_168394();

    swift_willThrow();
  }

  return v2;
}

id sub_112A74(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_16A644();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_168394();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_112B50(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_16A664();

  return v4;
}

void sub_112BDC(os_log_type_t a1)
{

  sub_386D8(a1, 0x20000uLL, v3 + 102, v4 | 0x8000000000000000, 0x657463656E6E6F63, 0xEB00000000292864, 219, v1, v2);
}

uint64_t sub_112C38()
{
  result = v0 + 32;
  v2 = *(v0 + 32);
  return result;
}

uint64_t sub_112CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_D5CC8((v11 + 16), v11 + 56, v9, v10, a5, 1, v12, 0, a9);
}

uint64_t sub_112CF8(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 1;

  return swift_allocObject();
}

uint64_t sub_112D24(uint64_t a1)
{
  *(a1 + 8) = sub_11199C;
  v2 = *(v1 + 200);
  return v1 + 56;
}

uint64_t sub_112D50(uint64_t a1)
{
  *(a1 + 8) = sub_111D64;
  v2 = *(v1 + 200);
  return v1 + 96;
}

uint64_t sub_112D7C(uint64_t a1)
{
  *(a1 + 8) = sub_11212C;
  v2 = *(v1 + 200);
  return v1 + 136;
}

uint64_t sub_112DA8()
{

  return swift_beginAccess();
}

void sub_112DC8(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = 0xD00000000000001FLL;

  v2._object = ((a1 - 32) | 0x8000000000000000);
  sub_16A744(v2);
}

void sub_112DE8()
{

  sub_16ACF4(33);
}

uint64_t sub_112E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  *(a1 + 16) = a11;
  *(a1 + 32) = 0;

  return type metadata accessor for WalletCarActivatableAccessory();
}

uint64_t sub_112E2C()
{
  v2 = *(v0 + 128) + 56;

  return sub_10824(v2, v0 + 16);
}

uint64_t sub_112E48(uint64_t a1)
{
  *(v1 + 136) = a1;

  return swift_allocObject();
}

uint64_t sub_112E64(uint64_t a1)
{
  *(v1 + 144) = a1;
}

uint64_t sub_112E80()
{

  return swift_allocObject();
}

uint64_t sub_112E9C()
{

  return sub_D8400(v0 + 16, v1 + 56);
}

void *sub_112EB4()
{

  return sub_D084((v0 + 56), v1);
}

void sub_112F5C(uint64_t a1@<X8>)
{

  v3._countAndFlagsBits = v1 + 25;
  v3._object = ((a1 - 32) | 0x8000000000000000);
  sub_16A744(v3);
}

uint64_t sub_112F7C()
{
  sub_D2DC();
  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  *(v1 + 248) = v3;
  *(v1 + 112) = v4;
  *(v1 + 120) = v5;
  *(v1 + 250) = v6;
  *(v1 + 96) = v7;
  *(v1 + 104) = v8;
  v9 = *(*(sub_5758(&qword_1E5F78, &unk_16D400) - 8) + 64);
  *(v1 + 144) = sub_D3C8();
  v10 = sub_1691E4();
  *(v1 + 152) = v10;
  v11 = *(v10 - 8);
  *(v1 + 160) = v11;
  v12 = *(v11 + 64);
  *(v1 + 168) = sub_D3C8();
  v13 = sub_16A284();
  *(v1 + 176) = v13;
  v14 = *(v13 - 8);
  *(v1 + 184) = v14;
  v15 = *(v14 + 64);
  *(v1 + 192) = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_1130C0()
{
  v1 = *(v0 + 250);
  if (v1 != 2 && (v1 & 1) != 0)
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v2 = *(v0 + 128);
    v3 = *(v0 + 96);
    v4 = *(v0 + 248);
    v5 = sub_16A584();
    sub_9DA0(v5, qword_1E65C0);
    v6 = sub_16A9A4();
    sub_386D8(v6, 2uLL, 0xD000000000000094, 0x800000000018EE30, 0xD00000000000004CLL, 0x8000000000182B90, 31, 0xD000000000000036, 0x800000000018EF90);
    v7 = v2[4];
    sub_D084(v2, v2[3]);
    *(v0 + 80) = sub_16A2E4();
    *(v0 + 88) = sub_52248(&qword_1E7408, &type metadata accessor for CarCommandsToggleSnippetUpdateValue);
    sub_10888((v0 + 56));
    sub_16A2D4();
    sub_168F04();
    sub_D13C((v0 + 56));
    v8 = *(v0 + 192);
    v9 = *(v0 + 168);
    v10 = *(v0 + 144);

    sub_D37C();
    sub_7DDB4();

    __asm { BRAA            X1, X16 }
  }

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v11 = *(v0 + 248);
  v12 = sub_16A584();
  sub_9DA0(v12, qword_1E65C0);
  v13 = sub_16A9A4();
  sub_386D8(v13, 2uLL, 0xD000000000000094, 0x800000000018EE30, 0xD00000000000004CLL, 0x8000000000182B90, 37, 0xD000000000000043, 0x800000000018EF40);
  v14 = swift_task_alloc();
  *(v0 + 200) = v14;
  *v14 = v0;
  v14[1] = sub_1133BC;
  v15 = *(v0 + 136);
  v16 = *(v0 + 112);
  v17 = *(v0 + 120);
  v18 = *(v0 + 104);
  v19 = *(v0 + 250);
  sub_7DDB4();

  return sub_113E00(v20, v21, v22, v23, v24, v25);
}

uint64_t sub_1133BC()
{
  sub_1696C();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 200);
  v7 = *v1;
  *v4 = *v1;
  *(v3 + 208) = v8;

  if (v0)
  {
    v9 = *(v3 + 192);
    v10 = *(v3 + 168);
    v11 = *(v3 + 144);

    v12 = *(v7 + 8);

    return v12();
  }

  else
  {
    v14 = *(v3 + 248);
    v15 = swift_task_alloc();
    *(v3 + 216) = v15;
    *v15 = v7;
    v15[1] = sub_11355C;
    v16 = *(v3 + 192);
    v17 = *(v3 + 136);
    v18 = *(v3 + 112);
    v19 = *(v3 + 120);
    v20 = *(v3 + 104);

    return sub_1144FC(v16, v20, v18, v19, v14 & 1);
  }
}

uint64_t sub_11355C()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 224) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_113658()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[21];
  v5 = v0[22];
  v6 = v0[17];
  v7 = v0[18];
  v8 = v0[16];
  v9 = v8[3];
  v19 = v8[4];
  sub_D084(v8, v9);
  v0[5] = v5;
  v0[6] = sub_52248(&qword_1E7118, &type metadata accessor for CarCommandsSnippetsPluginModel);
  v10 = sub_10888(v0 + 2);
  (*(v2 + 16))(v10, v3, v5);
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v11 = swift_allocObject();
  v0[29] = v11;
  *(v11 + 16) = xmmword_16D440;
  *(v11 + 32) = v1;
  v12 = sub_168E14();
  sub_5370(v7, 1, 1, v12);
  v13 = v1;
  sub_67D38();
  sub_D188(v7, &qword_1E5F78, &unk_16D400);
  v14 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)[1];
  v15 = swift_task_alloc();
  v0[30] = v15;
  *v15 = v0;
  v15[1] = sub_113840;
  v16 = v0[21];
  v17 = v0[12];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v17, v0 + 2, v11, v16, v9, v19);
}

uint64_t sub_113840()
{
  sub_D358();
  v2 = v1;
  sub_D2A4();
  *v3 = v2;
  v5 = v4[30];
  v6 = v4[29];
  v7 = v4[21];
  v8 = v4[20];
  v9 = v4[19];
  v10 = *v0;
  sub_D254();
  *v11 = v10;

  (*(v8 + 8))(v7, v9);
  sub_D13C((v2 + 16));
  sub_10B4C();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_1139B0()
{
  sub_D2DC();
  v0[7] = v1;
  v0[8] = v2;
  v3 = *(*(sub_16A164() - 8) + 64);
  v0[9] = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_113A30()
{
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v1 = v0[9];
  v2 = sub_16A584();
  sub_9DA0(v2, qword_1E65C0);
  v3 = sub_16A9A4();
  sub_386D8(v3, 2uLL, 0xD000000000000094, 0x800000000018EE30, 0xD00000000000002BLL, 0x8000000000182B40, 60, 0xD00000000000003DLL, 0x800000000018EED0);
  type metadata accessor for CarCommandsCATsSimple();
  sub_16A154();
  v0[10] = sub_16A0F4();
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_113B8C;

  return sub_DDC04();
}

uint64_t sub_113B8C()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 88);
  *v4 = *v1;
  v3[12] = v7;
  v3[13] = v0;

  if (!v0)
  {
    v8 = v3[10];
  }

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

void sub_113C98()
{
  v1 = v0[12];
  v2 = v0[13];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v3[4];
  sub_D084(v3, v3[3]);
  sub_16A134();
  v0[5] = sub_16A354();
  v0[6] = sub_52248(&qword_1E7400, &type metadata accessor for CarCommandsToggleSnippetUpdateFailure);
  sub_10888(v0 + 2);
  sub_16A344();
  sub_168F04();
  v6 = v0[12];
  if (v2)
  {

    sub_D13C(v0 + 2);
    v7 = v0[9];
  }

  else
  {
    v9 = v0[9];

    sub_D13C(v0 + 2);
  }

  v8 = v0[1];
  sub_7DDB4();

  __asm { BRAA            X0, X16 }
}

uint64_t sub_113E00(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v6 + 146) = a6;
  *(v6 + 145) = a5;
  *(v6 + 64) = a4;
  *(v6 + 144) = a1;
  v7 = *(*(sub_5758(&qword_1E6300, &qword_16ECE0) - 8) + 64) + 15;
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 80) = swift_task_alloc();
  v8 = *(*(sub_16A164() - 8) + 64) + 15;
  *(v6 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_113EE0, 0, 0);
}

uint64_t sub_113EE0()
{
  sub_1696C();
  v1 = *(v0 + 64);
  v2 = *(v0 + 88);
  if (*(v0 + 144) == 2)
  {
    type metadata accessor for CarCommandsGetClimateStatusCATsSimple();
    sub_16A154();
    *(v0 + 96) = sub_52464();
    if (v1)
    {
      v3 = *(v0 + 80);
      v4 = *(v0 + 64);
      sub_99C94();
    }

    v7 = *(v0 + 80);
    v8 = sub_16A0C4();
    sub_114BA0(v8);
    v9 = swift_task_alloc();
    *(v0 + 104) = v9;
    *v9 = v0;
    v9[1] = sub_114094;
    v10 = *(v0 + 146);
    v11 = *(v0 + 145);
    v12 = sub_5242C(*(v0 + 80));

    return sub_11DEE8(v12, v13, v14);
  }

  else
  {
    type metadata accessor for CarCommandsSetClimateStatusCATsSimple();
    sub_16A154();
    *(v0 + 120) = sub_52464();
    if (v1)
    {
      v6 = *(v0 + 64);
      v5 = *(v0 + 72);
      sub_99C94();
    }

    v16 = *(v0 + 72);
    v17 = sub_16A0C4();
    sub_114BA0(v17);
    v18 = swift_task_alloc();
    *(v0 + 128) = v18;
    *v18 = v0;
    v18[1] = sub_114244;
    v19 = *(v0 + 145);
    sub_5242C(*(v0 + 72));

    return sub_ADEDC();
  }
}

uint64_t sub_114094()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  v6 = *(v5 + 104);
  v7 = *(v5 + 80);
  v8 = *v1;
  sub_D254();
  *v9 = v8;
  *(v10 + 112) = v0;

  sub_D188(v7, &qword_1E6300, &qword_16ECE0);
  sub_10B4C();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1141C4()
{
  sub_1696C();
  v1 = v0[3];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];

  v6 = sub_302B8();

  return v7(v6);
}

uint64_t sub_114244()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  v6 = *(v5 + 128);
  v7 = *(v5 + 72);
  v8 = *v1;
  sub_D254();
  *v9 = v8;
  *(v10 + 136) = v0;

  sub_D188(v7, &qword_1E6300, &qword_16ECE0);
  sub_10B4C();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_114374()
{
  sub_1696C();
  v1 = v0[6];
  v2 = v0[15];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];

  v6 = sub_302B8();

  return v7(v6);
}

uint64_t sub_1143F8()
{
  sub_1696C();
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];

  sub_D37C();

  return v6();
}

uint64_t sub_114478()
{
  sub_1696C();
  v1 = v0[17];
  v2 = v0[15];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];

  sub_D37C();

  return v6();
}

uint64_t sub_1144FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 101) = a5;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *(*(sub_5758(&qword_1E6300, &qword_16ECE0) - 8) + 64) + 15;
  *(v5 + 48) = swift_task_alloc();
  v7 = *(*(sub_16A164() - 8) + 64) + 15;
  *(v5 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_1145CC, 0, 0);
}

uint64_t sub_1145CC()
{
  sub_1696C();
  v1 = v0[7];
  v2 = v0[5];
  type metadata accessor for CarCommandsCATsSimple();
  sub_16A154();
  v0[8] = sub_52464();
  if (v2)
  {
    v4 = v0[5];
    v3 = v0[6];
    sub_99C94();
  }

  v5 = v0[6];
  v6 = sub_16A0C4();
  sub_114BA0(v6);
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_1146B0;
  sub_5242C(v0[6]);

  return sub_DF868();
}

uint64_t sub_1146B0()
{
  sub_1696C();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = v4[9];
  v6 = v4[8];
  v7 = v4[6];
  v8 = *v1;
  sub_D254();
  *v9 = v8;
  *(v11 + 80) = v10;
  *(v11 + 88) = v0;

  sub_D188(v7, &qword_1E6300, &qword_16ECE0);

  sub_10B4C();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_114800()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);
  *(v0 + 96) = 0;
  sub_16A134();
  *(v0 + 97) = 2;
  sub_16A134();
  *(v0 + 98) = 1;
  sub_16A134();
  *(v0 + 99) = 4;
  sub_16A134();
  *(v0 + 100) = 3;
  sub_16A134();
  if (v2)
  {
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);

    v5 = [v4 spokenPhrase];
    sub_16A664();

    v6 = *(v0 + 32);
  }

  else
  {
    v7 = *(v0 + 32);
  }

  v8 = *(v0 + 80);
  v10 = *(v0 + 48);
  v9 = *(v0 + 56);
  v11 = *(v0 + 16);
  v17 = *(v0 + 24);
  v16 = *(v0 + 101);
  sub_16A264();

  v12 = enum case for CarCommandsSnippetsPluginModel.climateStatusModel(_:);
  v13 = sub_16A284();
  (*(*(v13 - 8) + 104))(v11, v12, v13);

  sub_D37C();

  return v14();
}

uint64_t getEnumTagSinglePayload for ClimateStatusSnippetFactory.ClimateStatusSnippetParameters(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ClimateStatusSnippetFactory.ClimateStatusSnippetParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x114B68);
      case 4:
        *(result + 2) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_114BA0(uint64_t a1)
{

  return sub_5370(v2, v1, 1, a1);
}

uint64_t type metadata accessor for CarCommandsGetCarRemainingRangeCATsSimple()
{
  result = qword_1ED420;
  if (!qword_1ED420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_114C4C(uint64_t a1, char a2, char a3, char a4)
{
  *(v5 + 58) = a4;
  *(v5 + 57) = a3;
  *(v5 + 56) = a2;
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  return _swift_task_switch(sub_114C78, 0, 0);
}

uint64_t sub_114C78()
{
  v1 = *(v0 + 16);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v2 = swift_allocObject();
  *(v0 + 32) = v2;
  *(v2 + 16) = xmmword_176380;
  *(v2 + 32) = 0xD000000000000011;
  *(v2 + 40) = 0x800000000017E650;
  v3 = 0;
  if (v1)
  {
    v3 = sub_169FD4();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v4 = *(v0 + 58);
  v5 = *(v0 + 57);
  v6 = *(v0 + 56);
  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  *(v2 + 80) = 0x776F4C7369;
  *(v2 + 88) = 0xE500000000000000;
  *(v2 + 96) = v6;
  *(v2 + 120) = &type metadata for Bool;
  *(v2 + 128) = 0x6E65646469487369;
  *(v2 + 136) = 0xEF776F4C6E656857;
  *(v2 + 144) = v5;
  *(v2 + 168) = &type metadata for Bool;
  *(v2 + 176) = 0x727463656C457369;
  *(v2 + 184) = 0xEA00000000006369;
  *(v2 + 216) = &type metadata for Bool;
  v7 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v11 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  *(v2 + 192) = v4;

  v8 = swift_task_alloc();
  *(v0 + 40) = v8;
  *v8 = v0;
  v8[1] = sub_6D128;
  v9 = *(v0 + 24);

  return v11(0xD000000000000035, 0x800000000018F020, v2);
}

uint64_t sub_114E48(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_114E9C(a1, a2);
}

uint64_t sub_114E9C(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_57A0(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_16A0D4();
  (*(v8 + 8))(a2, v2);
  sub_5810(a1);
  return v16;
}

uint64_t sub_114FF8(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_16A0E4();
  (*(v8 + 8))(a2, v3);
  return v15;
}

id sub_115100(char *a1)
{
  v3 = sub_5758(&qword_1EA178, &unk_1774D0);
  v4 = sub_D414(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v65 - v7 + 24;
  v9 = type metadata accessor for CarCommandsError();
  v10 = sub_10AFC(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_A138();
  v15 = v14 - v13;
  sub_86E4(a1, &_swiftEmptySetSingleton, v65);
  if (v65[3])
  {
    sub_5758(&qword_1E5F90, &qword_170270);
    sub_5758(&qword_1ED478, &qword_178748);
    if (swift_dynamicCast())
    {
      if (*(&v67 + 1))
      {
        sub_D124(&v66, v69);
        v16 = [objc_allocWithZone(v1) init];
        v17 = v70;
        v18 = v71;
        sub_D084(v69, v70);
        v19 = *(v18 + 16);
        v20 = v16;
        v21 = v19(v17, v18);
        [v20 setEnableClimateControl:v21];

        v22 = v70;
        v23 = v71;
        sub_D084(v69, v70);
        (*(v23 + 24))(v22, v23);
        v24 = sub_5758(&qword_1E76A0, &qword_172B00);
        if (sub_9E2C(v8, 1, v24) == 1)
        {
          v25 = 0;
        }

        else
        {
          sub_1682D4();
          v25 = v34;
          sub_4EB50(v24);
          (*(v35 + 8))(v8, v24);
        }

        [v20 setTargetTemperature:v25];

        sub_1165B4();
        v37 = *(v36 + 32);
        v38 = sub_4C808();
        v40 = v39(v38);
        if (v41)
        {
          v42 = 0;
        }

        else
        {
          v42 = v40;
        }

        [v20 setRelativeTemperatureChange:v42];
        sub_1165B4();
        v44 = *(v43 + 40);
        v45 = sub_4C808();
        v47 = v46(v45);
        if (v48)
        {
          v49 = 0;
        }

        else
        {
          v49 = v47;
        }

        [v20 setClimateZone:v49];
        sub_1165B4();
        v51 = *(v50 + 48);
        v52 = sub_4C808();
        v54 = v53(v52);
        [v20 setEnableAirConditioner:v54];

        sub_1165B4();
        v56 = *(v55 + 56);
        v57 = sub_4C808();
        v59 = v58(v57);
        if (v60)
        {
          v61 = 0;
        }

        else
        {
          v61 = v59;
        }

        [v20 setExtremeTemperatureChange:v61];

        v62 = sub_1693E4();
        sub_10AFC(v62);
        (*(v63 + 8))(a1);
        sub_D13C(v69);
        return v20;
      }
    }

    else
    {
      v68 = 0;
      v66 = 0u;
      v67 = 0u;
    }
  }

  else
  {
    sub_109A0(v65, &qword_1E5F80, &unk_16E7E0);
    v66 = 0u;
    v67 = 0u;
    v68 = 0;
  }

  sub_109A0(&v66, &qword_1ED470, &qword_178740);
  v26 = sub_1693E4();
  v27 = *(v26 - 8);
  (*(v27 + 16))(v15, a1, v26);
  swift_storeEnumTagMultiPayload();
  sub_11D28();
  swift_allocError();
  sub_548D0(v15, v28);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v29 = sub_16A584();
  sub_9DA0(v29, qword_1E65C0);
  v30 = sub_16A9A4();
  swift_getErrorValue();
  v31 = sub_16AEB4();
  sub_386D8(v30, 0x4000uLL, 0xD0000000000000A4, 0x800000000018F060, 0x293A5F2874696E69, 0xE800000000000000, 104, v31, v32);

  (*(v27 + 8))(a1, v26);
  sub_5A09C(v15);
  return 0;
}

void *sub_115630(char *a1, char a2)
{
  v3 = v2;
  v7 = type metadata accessor for CarCommandsError();
  v8 = sub_10AFC(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_A138();
  v13 = (v12 - v11);
  v14 = sub_5758(&qword_1EA178, &unk_1774D0);
  v15 = sub_D414(v14);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  v21 = __chkstk_darwin(v18);
  v23 = v79 - v22 + 24;
  __chkstk_darwin(v21);
  v25 = v79 - v24 + 24;
  if ((a2 & 0xF0) != 0x80)
  {
    LOBYTE(v83[0]) = a2;
    *v13 = sub_16A694();
    v13[1] = v31;
    swift_storeEnumTagMultiPayload();
    sub_11D28();
    sub_5A144();
    sub_548D0(v13, v32);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v33 = sub_16A584();
    sub_9DA0(v33, qword_1E65C0);
    sub_16A9A4();
    swift_getErrorValue();
    sub_16AEB4();
    v34 = sub_116560();
    v41 = 17;
    goto LABEL_17;
  }

  sub_86E4(a1, &_swiftEmptySetSingleton, v79);
  if (!v79[3])
  {
    sub_109A0(v79, &qword_1E5F80, &unk_16E7E0);
    v80 = 0u;
    v81 = 0u;
    v82 = 0;
    goto LABEL_14;
  }

  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&qword_1ED478, &qword_178748);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v82 = 0;
    v80 = 0u;
    v81 = 0u;
    goto LABEL_14;
  }

  if (!*(&v81 + 1))
  {
LABEL_14:
    sub_109A0(&v80, &qword_1ED470, &qword_178740);
    v42 = sub_1693E4();
    sub_10AFC(v42);
    (*(v43 + 16))(v13, a1);
    swift_storeEnumTagMultiPayload();
    sub_11D28();
    sub_5A144();
    sub_548D0(v13, v44);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v45 = sub_16A584();
    sub_9DA0(v45, qword_1E65C0);
    sub_16A9A4();
    swift_getErrorValue();
    sub_16AEB4();
    v34 = sub_116560();
    v41 = 23;
LABEL_17:
    sub_386D8(v34, v35, v36, v37, v38, v39, v41, v40, v78);

    sub_5A09C(v13);
    v46 = v2;
    return v3;
  }

  sub_D124(&v80, v83);
  v26 = v83[4];
  sub_D084(v83, v83[3]);
  switch(a2 & 0xF)
  {
    case 1:
      v61 = v26[3];
      v62 = sub_116550();
      v63(v62);
      v64 = sub_5758(&qword_1E76A0, &qword_172B00);
      sub_EAEC0(v23);
      if (v65)
      {
        v66 = [v2 targetTemperature];
        if (v66)
        {
          v67 = v66;
          sub_16484(0, &qword_1E76A8, NSUnitTemperature_ptr);
          sub_1682E4();

          v68 = 0;
        }

        else
        {
          v68 = 1;
        }

        sub_116610(v20, v68);
        sub_1164E0(v20, v25);
        sub_EAEC0(v23);
        if (!v65)
        {
          sub_109A0(v23, &qword_1EA178, &unk_1774D0);
        }
      }

      else
      {
        sub_4EB50(v64);
        (*(v74 + 32))(v25, v23, v64);
        sub_116610(v25, 0);
      }

      sub_EAEC0(v25);
      if (v65)
      {
        v30 = 0;
      }

      else
      {
        sub_1682D4();
        v30 = v75;
        sub_4EB50(v64);
        (*(v76 + 8))(v25, v64);
      }

      [v3 setTargetTemperature:v30];
      goto LABEL_42;
    case 2:
      v51 = v26[4];
      v52 = sub_116550();
      v54 = v53(v52);
      if (v55)
      {
        v54 = [v2 relativeTemperatureChange];
      }

      [v2 setRelativeTemperatureChange:v54];
      goto LABEL_43;
    case 3:
      v56 = v26[5];
      v57 = sub_116550();
      v59 = v58(v57);
      if (v60)
      {
        v59 = [v2 climateZone];
      }

      [v2 setClimateZone:v59];
      goto LABEL_43;
    case 4:
      v48 = v26[6];
      v49 = sub_116550();
      v30 = v50(v49);
      if (!v30)
      {
        v30 = [v3 enableAirConditioner];
      }

      [v3 setEnableAirConditioner:v30];
      goto LABEL_42;
    case 5:
      v69 = v26[7];
      v70 = sub_116550();
      v72 = v71(v70);
      if (v73)
      {
        v72 = [v2 extremeTemperatureChange];
      }

      [v2 setExtremeTemperatureChange:v72];
      goto LABEL_43;
    default:
      v27 = v26[2];
      v28 = sub_116550();
      v30 = v29(v28);
      if (!v30)
      {
        v30 = [v3 enableClimateControl];
      }

      [v3 setEnableClimateControl:v30];
LABEL_42:

LABEL_43:
      v77 = v3;
      sub_D13C(v83);
      break;
  }

  return v3;
}

id sub_115D00(uint64_t a1, char a2)
{
  v4 = type metadata accessor for CarCommandsError();
  v5 = sub_10AFC(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_A138();
  v10 = (v9 - v8);
  v11 = sub_5758(&qword_1EA178, &unk_1774D0);
  v12 = sub_D414(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v35 - v15;
  v17 = sub_5758(&qword_1E76A0, &qword_172B00);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v35 - v20;
  if ((a2 & 0xF0) == 0x80)
  {
    switch(a2 & 0xF)
    {
      case 1:
        sub_1165D8();
        if (swift_dynamicCast())
        {
          sub_116610(v16, 0);
          (*(v18 + 32))(v21, v16, v17);
          v32 = sub_1682D4();
          v34 = v33;
          [v35 setTargetTemperature:{v33, v32}];

          (*(v18 + 8))(v21, v17);
        }

        else
        {
          sub_116610(v16, 1);
          sub_109A0(v16, &qword_1EA178, &unk_1774D0);
        }

        break;
      case 2:
        sub_1165D8();
        if (sub_116594())
        {
          [v35 setRelativeTemperatureChange:v36];
        }

        break;
      case 3:
        sub_1165D8();
        if (sub_116594())
        {
          [v35 setClimateZone:v36];
        }

        break;
      case 4:
        sub_1165D8();
        if (sub_116594())
        {
          v23 = [objc_allocWithZone(NSNumber) initWithBool:v36];
          goto LABEL_15;
        }

        break;
      case 5:
        sub_1165D8();
        if (sub_116594())
        {
          [v35 setExtremeTemperatureChange:v36];
        }

        break;
      default:
        sub_1165D8();
        if (sub_1165F0())
        {
          v22 = [objc_allocWithZone(NSNumber) initWithBool:v36];
          [v35 setEnableClimateControl:v22];
        }

        sub_1165D8();
        sub_16484(0, &qword_1E6310, NSNumber_ptr);
        if (sub_1165F0())
        {
          v23 = v36;
LABEL_15:
          [v35 setEnableClimateControl:v23];
        }

        break;
    }
  }

  else
  {
    v37 = a2;
    *v10 = sub_16A694();
    v10[1] = v24;
    swift_storeEnumTagMultiPayload();
    sub_11D28();
    swift_allocError();
    sub_548D0(v10, v25);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v26 = sub_16A584();
    sub_9DA0(v26, qword_1E65C0);
    v27 = sub_16A9A4();
    swift_getErrorValue();
    v28 = sub_16AEB4();
    sub_386D8(v27, 0x4000uLL, 0xD0000000000000A4, 0x800000000018F060, 0xD000000000000018, 0x8000000000183260, 76, v28, v29);

    sub_5A09C(v10);
  }

  v30 = v35;

  return v30;
}

id sub_1161FC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = sub_5758(&qword_1EA178, &unk_1774D0);
  v6 = sub_D414(v5);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v14 = &v25 - v13;
  if ((a1 & 0xF0) == 0x80)
  {
    switch(a1 & 0xF)
    {
      case 1:
        v18 = [v2 targetTemperature];
        if (v18)
        {
          v19 = v18;
          sub_16484(0, &qword_1E76A8, NSUnitTemperature_ptr);
          sub_1682E4();

          v20 = sub_5758(&qword_1E76A0, &qword_172B00);
          v21 = v11;
          v22 = 0;
        }

        else
        {
          v20 = sub_5758(&qword_1E76A0, &qword_172B00);
          v21 = v11;
          v22 = 1;
        }

        sub_5370(v21, v22, 1, v20);
        sub_1164E0(v11, v14);
        v23 = sub_5758(&qword_1E76A0, &qword_172B00);
        if (sub_9E2C(v14, 1, v23) == 1)
        {
          result = sub_109A0(v14, &qword_1EA178, &unk_1774D0);
          goto LABEL_16;
        }

        *(a2 + 24) = v23;
        sub_10888(a2);
        sub_4EB50(v23);
        return (*(v24 + 32))();
      case 2:
        result = [v2 relativeTemperatureChange];
        v17 = &type metadata for IntentRelativeTemperatureChange;
        goto LABEL_12;
      case 3:
        result = [v2 climateZone];
        v17 = &type metadata for IntentSeatType;
        goto LABEL_12;
      case 4:
        v15 = [v2 enableAirConditioner];
        goto LABEL_5;
      case 5:
        result = [v2 extremeTemperatureChange];
        v17 = &type metadata for IntentExtremeTemperatureChange;
LABEL_12:
        *(a2 + 24) = v17;
        *a2 = result;
        return result;
      default:
        v15 = [v2 enableClimateControl];
LABEL_5:
        result = v15;
        if (!result)
        {
          goto LABEL_16;
        }

        v16 = result;
        result = sub_16484(0, &qword_1E6310, NSNumber_ptr);
        *(a2 + 24) = result;
        *a2 = v16;
        break;
    }
  }

  else
  {
LABEL_16:
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1164E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1EA178, &unk_1774D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_116594()
{

  return swift_dynamicCast();
}

uint64_t sub_1165D8()
{

  return sub_16138(v0, v1 - 144);
}

uint64_t sub_1165F0()
{

  return swift_dynamicCast();
}

uint64_t sub_116610(uint64_t a1, uint64_t a2)
{

  return sub_5370(a1, a2, 1, v2);
}

id sub_116628()
{
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38SetTrunkStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler;
  v2 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38SetTrunkStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38SetTrunkStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  }

  else
  {
    if (qword_1E5908 != -1)
    {
      swift_once();
    }

    v5 = sub_117F78(v4);
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_1166C4()
{
  sub_D2DC();
  v1[37] = v2;
  v1[38] = v0;
  v1[36] = v3;
  v4 = *(*(sub_16A164() - 8) + 64) + 15;
  v1[39] = swift_task_alloc();
  v5 = *(*(sub_5758(&qword_1E6300, &qword_16ECE0) - 8) + 64) + 15;
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v6 = type metadata accessor for SetTrunkStatusParameters(0);
  v1[42] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v1[43] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1167C4()
{
  v1 = v0[37];
  sub_10824(v0[38] + 16, (v0 + 2));
  v2 = sub_D084(v0 + 2, v0[5]);
  sub_5758(&qword_1E62E8, &qword_16D8B0);
  sub_169094();
  v3 = *v2;
  sub_D2604();

  sub_D13C(v0 + 2);
  v4 = 0x8000000000182560;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v5 = sub_16A584();
  sub_9DA0(v5, qword_1E65C0);
  v6 = sub_16A9A4();
  v0[31] = 0xD000000000000098;
  v0[32] = 0x800000000018F160;
  v0[33] = 47;
  v0[34] = 0xE100000000000000;
  sub_D030();
  v7 = sub_16AB34();
  sub_15AE4(v7);
  v9 = v8;

  if (v9)
  {
    sub_7C764();
    v88._countAndFlagsBits = 0xD000000000000025;
    v88._object = 0x8000000000182560;
    sub_16A744(v88);
    v10 = v83;
    v4 = v86;
  }

  else
  {
    v10 = 0xD000000000000025;
  }

  v80 = v10;
  v0[35] = 25;
  v89._countAndFlagsBits = sub_16AE24();
  sub_16A744(v89);

  sub_7C724(v11, v12, v13, v14, v15, v16, v17, v18, v80, v4, 58, 0xE100000000000000);

  v19._countAndFlagsBits = sub_378D0(0x1002uLL);
  if (v19._object)
  {
    sub_7C740(v19);

    sub_7C724(v20, v21, v22, v23, v24, v25, v26, v27, v81, v82, v84, v87);
  }

  v28 = sub_16A574();
  if (os_log_type_enabled(v28, v6))
  {
    v29 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v31 = sub_7C7A4(4.8149e-34, v85, v30);

    *(v29 + 4) = v31;
    sub_7C784(&dword_0, v32, v33, "%s");
    sub_D13C(v85);
    sub_D494();
    sub_D494();
  }

  else
  {
  }

  v34 = v0[38];
  sub_3CF7C();
  v35 = *sub_D084((v34 + 136), *(v34 + 160));
  v36 = sub_11B5C0();
  v37 = v0[37];
  if (v36)
  {
    sub_169094();
    sub_16A1B4();
    v39 = v38;

    v0[44] = v39;
    if (!v39)
    {
      type metadata accessor for CarCommandsError();
      sub_1180C4();
      sub_117ED4(v54, v55);
      sub_5A144();
      *v56 = 0xD00000000000002DLL;
      v56[1] = 0x8000000000182590;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v57 = v0[43];
      v59 = v0[40];
      v58 = v0[41];
      v60 = v0[39];

      sub_D37C();
      sub_D2C0();

      __asm { BRAA            X1, X16 }
    }

    v40 = v0[37];
    v41 = v0[38];
    type metadata accessor for TrunkStatusSnippetFactory();
    v42 = *(*(v41 + 224) + 16);
    v43 = sub_1690A4();
    v0[45] = [v43 carName];

    v44 = sub_1690A4();
    sub_32170();

    sub_3CF7C();
    sub_10824(v41 + 184, (v0 + 17));
    v45 = swift_task_alloc();
    v0[46] = v45;
    *v45 = v0;
    v45[1] = sub_A2E38;
    v46 = v0[36];
    sub_D2C0();

    return sub_504E4();
  }

  else
  {
    v49 = sub_1690A4();
    v0[48] = v49;
    v50 = [v49 carName];
    if (v50)
    {
      v51 = v50;
      v52 = v0[41];
      sub_99C94();

      v53 = 0;
    }

    else
    {
      v53 = 1;
    }

    v63 = v0[41];
    v64 = v0[37];
    v65 = sub_16A0C4();
    v66 = 1;
    sub_5370(v63, v53, 1, v65);
    v67 = sub_32170();
    sub_169094();
    sub_16A1B4();
    v69 = v68;

    if (v69)
    {
      v70 = v0[40];
      sub_16A6E4();

      v66 = 0;
    }

    v72 = v0[42];
    v71 = v0[43];
    v74 = v0[40];
    v73 = v0[41];
    v75 = v0[39];
    sub_5370(v74, v66, 1, v65);
    sub_16304(v73, v71);
    *(v71 + *(v72 + 20)) = v67;
    sub_16304(v74, v71 + *(v72 + 24));
    type metadata accessor for CarCommandsCATPatternsExecutor(0);
    sub_16A154();
    v0[49] = sub_16A094();
    v76 = swift_task_alloc();
    v0[50] = v76;
    *v76 = v0;
    v76[1] = sub_116E00;
    v77 = v0[43];
    sub_D2C0();

    return sub_157400(v78);
  }
}

uint64_t sub_116E00()
{
  sub_1696C();
  v2 = *v1;
  sub_D2A4();
  *v4 = v3;
  v5 = *(v2 + 400);
  v6 = *v1;
  sub_D2A4();
  *v7 = v6;
  *(v9 + 408) = v8;
  *(v9 + 416) = v0;

  v10 = *(v2 + 392);

  sub_10B4C();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_116F2C()
{
  sub_D2DC();
  v1 = v0[38];
  sub_3CF7C();
  sub_10824(v1 + 184, (v0 + 12));
  v2 = swift_task_alloc();
  v0[53] = v2;
  *v2 = v0;
  v2[1] = sub_116FE0;
  v3 = v0[51];

  return sub_11A570();
}

uint64_t sub_116FE0()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 424);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 432) = v0;

  sub_D13C((v3 + 96));
  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1170E4()
{
  sub_1696C();
  v1 = *(v0 + 384);
  v2 = *(v0 + 344);
  v3 = *(v0 + 288);

  sub_117F1C(v2);
  sub_D250((v0 + 56), v3);
  v4 = *(v0 + 344);
  v5 = *(v0 + 320);
  v6 = *(v0 + 328);
  v7 = *(v0 + 312);

  sub_D37C();

  return v8();
}

uint64_t sub_117194()
{
  sub_1696C();
  v1 = *(v0 + 344);

  sub_117F1C(v1);
  v2 = *(v0 + 416);
  sub_A4350();

  sub_D37C();

  return v3();
}

uint64_t sub_117220()
{
  sub_1696C();
  v1 = *(v0 + 384);
  v2 = *(v0 + 344);

  sub_117F1C(v2);
  v3 = *(v0 + 432);
  sub_A4350();

  sub_D37C();

  return v4();
}

uint64_t sub_1172B4(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  sub_10B4C();
  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1172E4()
{
  v1 = v0[24];
  sub_10824(v0[25] + 16, (v0 + 2));
  v2 = sub_D084(v0 + 2, v0[5]);
  sub_5758(&qword_1E62E8, &qword_16D8B0);
  sub_169094();
  v3 = *v2;
  sub_D2604();

  sub_D13C(v0 + 2);
  v4 = 0x8000000000185C90;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v5 = sub_16A584();
  sub_9DA0(v5, qword_1E65C0);
  v6 = sub_16A9A4();
  v0[18] = 0xD000000000000098;
  v0[19] = 0x800000000018F160;
  v0[20] = 47;
  v0[21] = 0xE100000000000000;
  sub_D030();
  v7 = sub_16AB34();
  sub_15AE4(v7);
  v9 = v8;

  if (v9)
  {
    sub_7C764();
    v58._countAndFlagsBits = 0xD00000000000002DLL;
    v58._object = 0x8000000000185C90;
    sub_16A744(v58);
    v10 = v53;
    v4 = v56;
  }

  else
  {
    v10 = 0xD00000000000002DLL;
  }

  v50 = v10;
  v0[22] = 54;
  v59._countAndFlagsBits = sub_16AE24();
  sub_16A744(v59);

  sub_7C724(v11, v12, v13, v14, v15, v16, v17, v18, v50, v4, 58, 0xE100000000000000);

  v19._countAndFlagsBits = sub_378D0(0x1002uLL);
  if (v19._object)
  {
    sub_7C740(v19);

    sub_7C724(v20, v21, v22, v23, v24, v25, v26, v27, v51, v52, v54, v57);
  }

  v28 = sub_16A574();
  if (os_log_type_enabled(v28, v6))
  {
    v29 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v31 = sub_7C7A4(4.8149e-34, v55, v30);

    *(v29 + 4) = v31;
    sub_7C784(&dword_0, v32, v33, "%s");
    sub_D13C(v55);
    sub_D494();
    sub_D494();
  }

  else
  {
  }

  v34 = v0[25];
  if (*(v34[28] + 16) != 1 || (sub_3CF7C(), v35 = *sub_D084(v34 + 17, v34[20]), (sub_11B5C0() & 1) == 0))
  {
    v44 = v0[23];
    sub_168BB4();
    sub_168BA4();
    sub_D37C();
    goto LABEL_18;
  }

  v36 = v0[24];
  sub_169094();
  sub_16A1B4();
  v38 = v37;

  if (!v38)
  {
    type metadata accessor for CarCommandsError();
    sub_1180C4();
    sub_117ED4(v47, v48);
    sub_5A144();
    *v49 = 0xD00000000000002DLL;
    v49[1] = 0x8000000000182590;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_D37C();
LABEL_18:
    sub_D2C0();

    __asm { BRAA            X1, X16 }
  }

  v39 = v0[25];

  type metadata accessor for TrunkStatusSnippetFactory();
  sub_3CF7C();
  sub_10824(v39 + 184, (v0 + 7));
  v40 = swift_task_alloc();
  v0[26] = v40;
  *v40 = v0;
  v40[1] = sub_A39C4;
  v41 = v0[23];
  sub_D2C0();

  return sub_51D38();
}

uint64_t sub_117734()
{
  v0 = sub_3D044();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for SetTrunkStatusHandleIntentFlowStrategy()
{
  result = qword_1ED4B0;
  if (!qword_1ED4B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_117840(uint64_t a1)
{
  result = sub_117ED4(&qword_1ED6A8, type metadata accessor for SetTrunkStatusHandleIntentFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_117898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SetTrunkStatusHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_117960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SetTrunkStatusHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_117A28()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10A9C;

  return sub_4B544();
}

uint64_t sub_117AE8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10A9C;

  return sub_1166C4();
}

uint64_t sub_117B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SetTrunkStatusHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_117C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SetTrunkStatusHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_117D24(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1039C;

  return sub_1172B4(a1, a2);
}

uint64_t sub_117DD0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_36648;

  return sub_463E8();
}

uint64_t sub_117ED4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_117F1C(uint64_t a1)
{
  v2 = type metadata accessor for SetTrunkStatusParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_117F78(uint64_t a1)
{
  v2 = type metadata accessor for WalletService();
  v15[3] = v2;
  v15[4] = &off_1D7C28;
  v15[0] = a1;
  v3 = type metadata accessor for SESetTrunkStatusIntentHandler();
  v4 = objc_allocWithZone(v3);
  v5 = sub_2F8D0(v15, v2);
  v6 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  v10 = *v8;
  v14[3] = v2;
  v14[4] = &off_1D7C28;
  v14[0] = v10;
  sub_10824(v14, v4 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin29SESetTrunkStatusIntentHandler_carKeyService);
  v13.receiver = v4;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, "init");
  sub_D13C(v14);
  sub_D13C(v15);
  return v11;
}

uint64_t type metadata accessor for CarCommandsGetPowerLevelCATs()
{
  result = qword_1ED6B0;
  if (!qword_1ED6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_118168(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_1181BC(a1, a2);
}

uint64_t sub_1181BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_16A164();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_57A0(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_16A084();
  (*(v5 + 8))(a2, v4);
  sub_5810(a1);
  return v12;
}

void *sub_118330(__int128 *a1, uint64_t a2)
{
  v2[2] = 0xD000000000000020;
  v2[3] = 0x800000000018C280;
  v5 = sub_168E34();
  sub_483C8(v5);
  v6 = sub_168E24();
  v2[7] = v5;
  v2[8] = &protocol witness table for ResponseFactory;
  v2[4] = v6;
  v2[15] = 0;
  sub_D124(a1, (v2 + 9));
  v2[14] = a2;
  return v2;
}

id sub_1183C4()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    v2 = *(v0 + 120);
  }

  else
  {
    if (qword_1E5908 != -1)
    {
      sub_48134();
    }

    v4 = sub_119F28(v3);
    v5 = *(v0 + 120);
    *(v0 + 120) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_118448()
{
  v36 = type metadata accessor for CarCommandsError();
  v0 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  sub_A138();
  v3 = v2 - v1;
  v37 = sub_1693E4();
  sub_37404();
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v8);
  sub_A138();
  v11 = (v10 - v9);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v12 = sub_16A584();
  sub_9DA0(v12, qword_1E65C0);
  v13 = sub_16A9A4();
  v38 = 0xD000000000000087;
  v39 = 0x800000000018F2A0;
  v42 = (&stru_20 + 15);
  v43 = 0xE100000000000000;
  sub_D030();
  v14 = sub_16AB34();
  v15 = sub_15AE4(v14);
  v17 = v16;

  if (v17)
  {
    v44._countAndFlagsBits = 32;
    v44._object = 0xE100000000000000;
    sub_16A744(v44);
    v45._countAndFlagsBits = 0xD000000000000016;
    v45._object = 0x800000000017FD50;
    sub_16A744(v45);
    v18 = v15;
    v19 = v17;
  }

  else
  {
    v18 = 0xD000000000000016;
    v19 = 0x800000000017FD50;
  }

  v38 = v18;
  v39 = v19;
  v42 = (&stru_20 + 26);
  v43 = 0xE100000000000000;
  v41 = 29;
  v46._countAndFlagsBits = sub_16AE24();
  sub_16A744(v46);

  v47._countAndFlagsBits = 58;
  v47._object = 0xE100000000000000;
  sub_16A744(v47);

  v20._countAndFlagsBits = sub_378D0(0x4002uLL);
  if (v20._object)
  {
    v42 = &stru_20;
    v43 = 0xE100000000000000;
    sub_16A744(v20);

    v48._countAndFlagsBits = 32;
    v48._object = 0xE100000000000000;
    sub_16A744(v48);
  }

  v22 = v38;
  v21 = v39;
  v23 = sub_16A574();
  if (os_log_type_enabled(v23, v13))
  {
    v24 = v13;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v42 = v26;
    *v25 = 136315138;
    v27 = sub_15BC8(v22, v21, &v42);

    *(v25 + 4) = v27;
    _os_log_impl(&dword_0, v23, v24, "%s", v25, 0xCu);
    sub_D13C(v26);
    sub_D494();
    sub_D494();
  }

  else
  {
  }

  sub_169384();
  v42 = &_swiftEmptySetSingleton;
  sub_8F624();
  sub_86E4(v11, v42, &v38);

  (*(v5 + 8))(v11, v37);
  v28 = v40;
  sub_57A80(&v38);
  if (v28)
  {
    return sub_168C64();
  }

  sub_169384();
  swift_storeEnumTagMultiPayload();
  sub_11A3D8();
  sub_11A390(v30, 255, v31);
  swift_allocError();
  sub_548D0(v3, v32);
  v33 = sub_16A9A4();
  swift_getErrorValue();
  v34 = sub_16AEB4();
  sub_386D8(v33, 0x4000uLL, 0xD000000000000087, 0x800000000018F2A0, 0xD000000000000016, 0x800000000017FD50, 32, v34, v35);

  sub_168C74();
  return sub_5A09C(v3);
}

uint64_t sub_1188FC()
{
  sub_D2DC();
  v0[7] = v1;
  v2 = sub_1693E4();
  v0[8] = v2;
  v3 = *(v2 - 8);
  v0[9] = v3;
  v4 = *(v3 + 64) + 15;
  v0[10] = swift_task_alloc();

  return _swift_task_switch(sub_1189B8, 0, 0);
}

uint64_t sub_1189B8()
{
  v32 = v0;
  v1 = 0x80000000001888B0;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v2 = 0xD000000000000029;
  v3 = sub_16A584();
  sub_9DA0(v3, qword_1E65C0);
  v4 = sub_16A9A4();
  v0[2] = 0xD000000000000087;
  v0[3] = 0x800000000018F2A0;
  v0[4] = 47;
  v0[5] = 0xE100000000000000;
  sub_D030();
  v5 = sub_16AB34();
  v6 = sub_15AE4(v5);
  v8 = v7;

  if (v8)
  {
    v34._countAndFlagsBits = 32;
    v34._object = 0xE100000000000000;
    sub_16A744(v34);
    v35._countAndFlagsBits = 0xD000000000000029;
    v35._object = 0x80000000001888B0;
    sub_16A744(v35);
    v2 = v6;
    v1 = v8;
  }

  v31._countAndFlagsBits = 58;
  v31._object = 0xE100000000000000;
  v0[6] = 40;
  v36._countAndFlagsBits = sub_16AE24();
  sub_16A744(v36);

  sub_16A744(v31);

  v9._countAndFlagsBits = sub_378D0(0x4002uLL);
  if (v9._object)
  {
    v31._countAndFlagsBits = 32;
    v31._object = 0xE100000000000000;
    sub_16A744(v9);

    v37._countAndFlagsBits = 32;
    v37._object = 0xE100000000000000;
    sub_16A744(v37);
  }

  v10 = sub_16A574();
  if (os_log_type_enabled(v10, v4))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v31._countAndFlagsBits = v12;
    *v11 = 136315138;
    v13 = sub_15BC8(v2, v1, &v31._countAndFlagsBits);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_0, v10, v4, "%s", v11, 0xCu);
    sub_D13C(v12);
    sub_D494();
    sub_D494();
  }

  else
  {
  }

  v15 = v0[9];
  v14 = v0[10];
  v17 = v0[7];
  v16 = v0[8];
  sub_16A3B4();
  v18 = *(v15 + 16);
  v18(v14, v17, v16);
  v19 = sub_59C58(v14);
  v20 = v0[10];
  if (v19)
  {
    v21 = v19;
    v22 = v0[10];

    v23 = v0[1];

    return v23(v21);
  }

  else
  {
    v26 = v0[7];
    v25 = v0[8];
    type metadata accessor for CarCommandsError();
    sub_11A3D8();
    sub_11A390(v27, 255, v28);
    swift_allocError();
    v18(v29, v26, v25);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v30 = v0[1];

    return v30();
  }
}

uint64_t sub_118D94()
{
  v1 = v0;
  v2 = sub_16A164();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_A138();
  v4 = sub_5758(&qword_1ED838, &qword_17B8D0);
  sub_37404();
  v50 = v5;
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v8);
  v49 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v48 - v11;
  if (qword_1E5908 != -1)
  {
    sub_48134();
  }

  v13 = qword_1F0C70;
  v56 = type metadata accessor for WalletService();
  v57 = &off_1D7C28;
  *&v55 = v13;
  type metadata accessor for CarCommandsCATs();

  sub_16A154();
  sub_16A094();
  sub_16528C();

  sub_D13C(&v55);
  sub_1693F4();
  v14 = type metadata accessor for FeatureFlagHelper();
  v15 = swift_allocObject();
  v16 = sub_168E34();
  sub_483C8(v16);

  sub_168E24();
  type metadata accessor for SnippetManager();
  *(swift_allocObject() + 16) = 0;
  v17 = sub_11A064(&v55, v15);

  v54[0] = v17;
  v18 = swift_allocObject();
  swift_weakInit();
  sub_10824(v1 + 72, &v55);
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  sub_D124(&v55, v19 + 24);
  type metadata accessor for SetClimateStatusConfirmIntentFlowStrategy();
  sub_11A390(&qword_1ED840, 255, type metadata accessor for SetClimateStatusConfirmIntentFlowStrategy);
  sub_168854();
  v21 = v20;

  sub_1688A4();
  v22 = *(v1 + 112);

  sub_1693F4();
  v23 = swift_allocObject();
  v24 = *(v16 + 48);
  v25 = *(v16 + 52);
  swift_allocObject();

  sub_168E24();
  v54[3] = v14;
  v54[4] = &off_1D9AF0;
  v54[0] = v23;
  v26 = type metadata accessor for SetClimateStatusHandleIntentFlowStrategy();
  v27 = sub_483C8(v26);
  sub_2F8D0(v54, v14);
  v48[1] = v48;
  sub_37404();
  v29 = *(v28 + 64);
  __chkstk_darwin(v30);
  sub_A138();
  v32 = sub_11A3F0(v31);
  v33(v32);
  v34 = *v21;
  v53[3] = v14;
  v53[4] = &off_1D9AF0;
  v53[0] = v34;
  *(v27 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40SetClimateStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler) = 0;
  sub_10824(&v55, v52);
  sub_10824(v53, v51);
  sub_2F8D0(v51, v51[3]);
  sub_37404();
  v36 = *(v35 + 64);
  __chkstk_darwin(v37);
  sub_A138();
  v39 = sub_11A3F0(v38);
  v40(v39);
  v41 = *v21;

  sub_1668CC();
  v43 = v42;
  sub_D13C(&v55);
  sub_D13C(v53);
  sub_D13C(v51);
  sub_D13C(v54);

  *&v55 = v43;
  sub_11A390(&qword_1ED848, 255, type metadata accessor for SetClimateStatusHandleIntentFlowStrategy);
  sub_1687E4();

  sub_168884();
  v44 = v50;
  (*(v50 + 16))(v49, v12, v4);
  v45 = sub_5758(&qword_1ED850, &qword_178AF0);
  sub_483C8(v45);
  v46 = sub_168914();
  (*(v44 + 8))(v12, v4);
  return v46;
}

uint64_t sub_1193B8(uint64_t a1, uint64_t a2, void *a3)
{
  sub_5758(&qword_1E62D8, &qword_16D898);
  v4 = sub_1690A4();
  v5 = [v4 isSetCarActivationStatusRequest];

  if (v5)
  {
    v6 = [v5 BOOLValue];

    if (v6)
    {
      if (qword_1E58E8 != -1)
      {
        swift_once();
      }

      v7 = sub_16A584();
      sub_9DA0(v7, qword_1E65C0);
      v8 = sub_16A9A4();
      sub_386D8(v8, 0x4002uLL, 0xD000000000000087, 0x800000000018F2A0, 0xD000000000000012, 0x8000000000188A30, 56, 0xD00000000000005ELL, 0x800000000018F3E0);
LABEL_15:
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v22 = *(Strong + 112);

        *(v22 + 16) = 0;
      }

      return 1;
    }
  }

  v9 = sub_1690A4();
  v10 = [v9 enabled];

  if (v10)
  {
    v11 = [v10 BOOLValue];

    if (v11)
    {
      v12 = a3[3];
      v13 = a3[4];
      sub_D084(a3, v12);
      if ((sub_E2B40(v12, v13) & 1) == 0)
      {
        v17 = a3[3];
        v18 = a3[4];
        sub_D084(a3, v17);
        sub_E2B68(v17, v18);
        if (qword_1E58E8 != -1)
        {
          swift_once();
        }

        v19 = sub_16A584();
        sub_9DA0(v19, qword_1E65C0);
        v20 = sub_16A9A4();
        sub_386D8(v20, 0x4002uLL, 0xD000000000000087, 0x800000000018F2A0, 0xD000000000000012, 0x8000000000188A30, 63, 0xD00000000000004CLL, 0x800000000018F390);
        goto LABEL_15;
      }
    }
  }

  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v14 = sub_16A584();
  sub_9DA0(v14, qword_1E65C0);
  v15 = sub_16A9A4();
  sub_386D8(v15, 0x4002uLL, 0xD000000000000087, 0x800000000018F2A0, 0xD000000000000012, 0x8000000000188A30, 68, 0xD000000000000050, 0x800000000018F330);
  return 0;
}

uint64_t sub_119718()
{
  v1 = *(v0 + 24);

  sub_D13C((v0 + 32));
  sub_D13C((v0 + 72));
  v2 = *(v0 + 112);

  return v0;
}

uint64_t sub_119758()
{
  sub_119718();

  return _swift_deallocClassInstance(v0, 128, 7);
}

uint64_t sub_1197B0(uint64_t a1, uint64_t a2)
{
  result = sub_11A390(&qword_1ED820, a2, type metadata accessor for SetClimateRCHFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_119820()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_7971C;

  return sub_1188FC();
}

uint64_t sub_1198B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SetClimateRCHFlowStrategy();

  return RCHFlowStrategyAsync.makeParameterMetadata(intent:)(a1, v5, a3);
}

uint64_t sub_119924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SetClimateRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t sub_1199F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SetClimateRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t sub_119ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SetClimateRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t sub_119B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = async function pointer to ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for SetClimateRCHFlowStrategy();
  *v13 = v6;
  v13[1] = sub_6F428;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, v14, a6);
}

uint64_t sub_119C64()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_6F850;

  return sub_40AF4();
}

uint64_t sub_119D3C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_79DCC;

  return sub_465E0();
}

uint64_t sub_119E88(uint64_t a1, uint64_t a2)
{
  result = sub_11A390(&qword_1ED828, a2, type metadata accessor for SetClimateRCHFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

id sub_119F28(uint64_t a1)
{
  v2 = type metadata accessor for WalletService();
  v17[3] = v2;
  v17[4] = &off_1D7C28;
  v17[0] = a1;
  v3 = type metadata accessor for SESetClimateStatusIntentHandler();
  v4 = objc_allocWithZone(v3);
  sub_2F8D0(v17, v2);
  sub_37404();
  v6 = *(v5 + 64);
  __chkstk_darwin(v7);
  sub_A138();
  v10 = (v9 - v8);
  (*(v11 + 16))(v9 - v8);
  v12 = *v10;
  v16[3] = v2;
  v16[4] = &off_1D7C28;
  v16[0] = v12;
  sub_10824(v16, v4 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin31SESetClimateStatusIntentHandler_carKeyService);
  v15.receiver = v4;
  v15.super_class = v3;
  v13 = objc_msgSendSuper2(&v15, "init");
  sub_D13C(v16);
  sub_D13C(v17);
  return v13;
}

uint64_t sub_11A064(uint64_t *a1, uint64_t a2)
{
  v4 = sub_16A164();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for FeatureFlagHelper();
  v34[3] = v6;
  v34[4] = &off_1D9AF0;
  v34[0] = a2;
  v7 = type metadata accessor for SetClimateStatusConfirmIntentFlowStrategy();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = sub_2F8D0(v34, v6);
  v12 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v33[3] = v6;
  v33[4] = &off_1D9AF0;
  v33[0] = v16;
  v17 = (v10 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin41SetClimateStatusConfirmIntentFlowStrategy_commonPatterns);
  v18 = type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_16A154();
  v19 = sub_16A094();
  v17[3] = v18;
  v17[4] = &off_1DA7E8;
  *v17 = v19;
  sub_10824(a1, v32);
  sub_10824(v33, v30);
  v20 = v31;
  v21 = sub_2F8D0(v30, v31);
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = (v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = *v24;
  sub_1668CC();
  v28 = v27;
  sub_D13C(a1);
  sub_D13C(v33);
  sub_D13C(v30);
  sub_D13C(v34);
  return v28;
}

uint64_t sub_11A30C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_11A344()
{
  v1 = *(v0 + 16);

  sub_D13C((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_11A390(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_11A408(unint64_t a1, char a2)
{
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); ; i = sub_16ADC4())
  {
    result = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v12 = _swiftEmptyArrayStorage;
    sub_16AD54();
    if (i < 0)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = sub_16AD04();
      }

      else
      {
        if (j >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_15;
        }

        v8 = *(a1 + 8 * j + 32);
      }

      v10 = v8;
      sub_11AFE8(&v10, a2, &v11);

      sub_16AD34();
      v9 = v12[2];
      sub_16AD64();
      sub_16AD74();
      sub_16AD44();
      if (v7 == i)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return result;
}

uint64_t sub_11A570()
{
  sub_D2DC();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = *(*(sub_168B74() - 8) + 64);
  v0[5] = sub_D3C8();
  v5 = sub_1691E4();
  sub_11B4B4(v5);
  v0[7] = v6;
  v8 = *(v7 + 64);
  v0[8] = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_11A63C()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  sub_168B34();
  sub_634F4();
  sub_1691A4();
  sub_1691C4();
  v4 = v3[4];
  sub_D084(v3, v3[3]);
  v5 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)[1];
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v7 = sub_11B498(v6);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v7);
}

uint64_t sub_11A70C()
{
  sub_D2DC();
  v2 = *v1;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_D2A4();
  *v8 = v7;
  *(v9 + 80) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_11A810()
{
  sub_D2DC();
  v1 = sub_11B4C8();
  v2(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_11A888()
{
  sub_D2DC();
  v1 = sub_11B4C8();
  v2(v1);

  v3 = *(v0 + 8);
  v4 = *(v0 + 80);

  return v3();
}

uint64_t sub_11A904(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_16ADC4();
  }

  else
  {
    return *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }
}

void *sub_11A928(uint64_t a1, int a2)
{
  v42 = a2;
  v3 = sub_5758(&qword_1E6300, &qword_16ECE0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v37 - v8;
  __chkstk_darwin(v7);
  v11 = &v37 - v10;
  v12 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v12)
  {
    v47 = _swiftEmptyArrayStorage;
    sub_16AD54();
    v38 = objc_opt_self();
    v14 = (a1 + 40);
    v37 = xmmword_16D9A0;
    v40 = v9;
    v39 = v11;
    do
    {
      v15 = *(v14 - 1);
      v16 = *v14;
      v44 = &type metadata for String;
      v43[0] = v15;
      v43[1] = v16;
      sub_FD2E0(v42);
      v17 = objc_allocWithZone(SKIDirectInvocationPayload);
      swift_bridgeObjectRetain_n();
      v18 = sub_16A644();

      v19 = [v17 initWithIdentifier:v18];

      sub_5758(&qword_1E6350, &unk_177CB0);
      inited = swift_initStackObject();
      *(inited + 16) = v37;
      v45 = 0x79654B65756C6176;
      v46 = 0xE800000000000000;
      sub_16AC84();
      sub_16138(v43, inited + 72);
      v21 = sub_16A5C4();
      sub_FD618(v21, v19);
      sub_D13C(v43);
      v22 = [objc_allocWithZone(SKIDirectInvocationContext) init];
      sub_1693F4();
      v23 = [v38 runSiriKitExecutorCommandWithContext:v22 payload:v19];
      sub_D084(v43, v44);
      sub_168B04();
      if (v24)
      {
        v25 = sub_16A644();
      }

      else
      {
        v25 = 0;
      }

      [v23 setSessionHandOffContinuityID:{v25, v37}];

      sub_D13C(v43);
      sub_16AAE4();
      v27 = v26;

      v28 = v39;
      sub_16A6E4();
      v29 = sub_16A0C4();
      v30 = 1;
      sub_5370(v28, 0, 1, v29);
      v31 = v40;
      if (v27)
      {
        sub_16A6E4();

        v30 = 0;
      }

      sub_5370(v31, v30, 1, v29);
      v32 = v41;
      sub_5370(v41, 1, 1, v29);
      v33 = type metadata accessor for TappableCommand();
      v34 = *(v33 + 48);
      v35 = *(v33 + 52);
      swift_allocObject();
      sub_6BA1C(v28, v31, v32);

      sub_16AD34();
      v36 = v47[2];
      sub_16AD64();
      sub_16AD74();
      sub_16AD44();
      v14 += 2;
      --v12;
    }

    while (v12);
    return v47;
  }

  return result;
}

uint64_t sub_11AD48()
{
  sub_D2DC();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = *(*(sub_168B74() - 8) + 64);
  v0[5] = sub_D3C8();
  v5 = sub_1691E4();
  sub_11B4B4(v5);
  v0[7] = v6;
  v8 = *(v7 + 64);
  v0[8] = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_11AE14()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  sub_168B34();
  sub_634F4();
  sub_1691A4();
  sub_1691C4();
  v4 = v3[4];
  sub_D084(v3, v3[3]);
  v5 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)[1];
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v7 = sub_11B498(v6);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v7);
}

uint64_t sub_11AEE4()
{
  sub_D2DC();
  v2 = *v1;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_D2A4();
  *v8 = v7;
  *(v9 + 80) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_11AFE8@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v58 = a3;
  v5 = sub_5758(&qword_1E6300, &qword_16ECE0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v57 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v56 = v52 - v10;
  __chkstk_darwin(v9);
  v55 = v52 - v11;
  v53 = sub_168454();
  v12 = *(v53 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v53);
  v15 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_16A0C4();
  v60 = *(v16 - 8);
  v17 = *(v60 + 64);
  v18 = __chkstk_darwin(v16);
  v52[0] = v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = v52 - v20;
  v22 = *a1;
  v23 = sub_16A1B4();
  v59[3] = &type metadata for String;
  if (v24)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  v26 = 0xE000000000000000;
  if (v24)
  {
    v26 = v24;
  }

  v59[0] = v25;
  v59[1] = v26;
  v27 = sub_FD1F4(v59, a2);
  sub_D13C(v59);
  v28 = [objc_allocWithZone(SKIDirectInvocationContext) init];
  sub_1693F4();
  v54 = v27;
  v29 = sub_FD41C(v27, v28, v59);
  sub_D13C(v59);
  v52[1] = sub_16AAE4();
  v31 = v30;

  sub_16A6E4();
  v32 = sub_169074();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();

  sub_169064();
  sub_168444();
  v35 = sub_169054();
  v37 = v36;
  v38 = v60;

  (*(v12 + 8))(v15, v53);
  if (v37)
  {
    v39 = HIBYTE(v37) & 0xF;
    if ((v37 & 0x2000000000000000) == 0)
    {
      v39 = v35 & 0xFFFFFFFFFFFFLL;
    }

    if (v39)
    {
      v40 = v52[0];
      sub_16A6E4();

      (*(v38 + 8))(v21, v16);
      (*(v38 + 32))(v21, v40, v16);
    }

    else
    {
    }
  }

  v41 = v55;
  (*(v38 + 16))(v55, v21, v16);
  v42 = 1;
  sub_5370(v41, 0, 1, v16);
  v43 = v56;
  if (v31)
  {
    sub_16A6E4();

    v42 = 0;
  }

  v44 = v57;
  v45 = 1;
  sub_5370(v43, v42, 1, v16);
  sub_16A1B4();
  if (v46)
  {
    sub_16A6E4();

    v45 = 0;
  }

  sub_5370(v44, v45, 1, v16);
  v47 = type metadata accessor for TappableCommand();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  v50 = sub_6BA1C(v41, v43, v44);

  result = (*(v60 + 8))(v21, v16);
  *v58 = v50;
  return result;
}

uint64_t sub_11B498(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[8];
  result = v2[2];
  v5 = v2[3];
  return result;
}

uint64_t sub_11B4B4(uint64_t a1)
{
  *(v1 + 48) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

uint64_t sub_11B4C8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = *(v0[7] + 8);
  return v0[8];
}

Swift::Int sub_11B52C()
{
  sub_16AF14();
  sub_16AF24(0);
  return sub_16AF54();
}

Swift::Int sub_11B578()
{
  sub_16AF14();
  sub_16AF24(0);
  return sub_16AF54();
}

uint64_t sub_11B5C0()
{
  v2[3] = &type metadata for ResponseFramework;
  v2[4] = sub_11B634();
  v0 = sub_169444();
  sub_D13C(v2);
  return v0 & 1;
}

unint64_t sub_11B634()
{
  result = qword_1ED8F8;
  if (!qword_1ED8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ResponseFramework(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x11B724);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_11B760()
{
  result = qword_1ED900;
  if (!qword_1ED900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED900);
  }

  return result;
}

id sub_11B7B4()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 56);
  }

  else
  {
    if (qword_1E5908 != -1)
    {
      sub_48134();
    }

    v4 = sub_11CC54(v3);
    v5 = *(v0 + 56);
    *(v0 + 56) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_11B838()
{
  v30 = sub_1693E4();
  sub_37404();
  v1 = v0;
  v3 = *(v2 + 64);
  __chkstk_darwin(v4);
  sub_A138();
  v7 = (v6 - v5);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v8 = sub_16A584();
  sub_9DA0(v8, qword_1E65C0);
  v9 = sub_16A9A4();
  v31 = 0xD000000000000093;
  v32 = 0x800000000018F4D0;
  v35 = (&stru_20 + 15);
  v36 = 0xE100000000000000;
  sub_D030();
  v10 = sub_16AB34();
  v11 = sub_15AE4(v10);
  v13 = v12;

  if (v13)
  {
    v37._countAndFlagsBits = 32;
    v37._object = 0xE100000000000000;
    sub_16A744(v37);
    v38._countAndFlagsBits = 0xD000000000000016;
    v38._object = 0x800000000017FD50;
    sub_16A744(v38);
    v14 = v11;
    v15 = v13;
  }

  else
  {
    v14 = 0xD000000000000016;
    v15 = 0x800000000017FD50;
  }

  v31 = v14;
  v32 = v15;
  v35 = (&stru_20 + 26);
  v36 = 0xE100000000000000;
  v34 = 26;
  v39._countAndFlagsBits = sub_16AE24();
  sub_16A744(v39);

  v40._countAndFlagsBits = 58;
  v40._object = 0xE100000000000000;
  sub_16A744(v40);

  v16._countAndFlagsBits = sub_378D0(0x2002uLL);
  if (v16._object)
  {
    v35 = &stru_20;
    v36 = 0xE100000000000000;
    sub_16A744(v16);

    v41._countAndFlagsBits = 32;
    v41._object = 0xE100000000000000;
    sub_16A744(v41);
  }

  v17 = v31;
  v18 = v32;
  v19 = sub_16A574();
  if (os_log_type_enabled(v19, v9))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v35 = v21;
    *v20 = 136315138;
    v22 = sub_15BC8(v17, v18, &v35);

    *(v20 + 4) = v22;
    _os_log_impl(&dword_0, v19, v9, "%s", v20, 0xCu);
    sub_D13C(v21);
    sub_D494();
    sub_D494();
  }

  else
  {
  }

  sub_169384();
  v35 = &_swiftEmptySetSingleton;
  sub_8F624();
  sub_86E4(v7, v35, &v31);

  (*(v1 + 8))(v7, v30);
  v23 = v33;
  sub_57A80(&v31);
  if (v23)
  {
    return sub_168C64();
  }

  type metadata accessor for CarCommandsError();
  sub_11D08C();
  sub_11D044(v25, 255, v26);
  swift_allocError();
  sub_169384();
  swift_storeEnumTagMultiPayload();
  v27 = sub_16A9A4();
  swift_getErrorValue();
  v28 = sub_16AEB4();
  sub_386D8(v27, 0x2000uLL, 0xD000000000000093, 0x800000000018F4D0, 0xD000000000000016, 0x800000000017FD50, 28, v28, v29);

  return sub_168C74();
}

uint64_t sub_11BCAC()
{
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_16E450;
  v1 = sub_168A44();
  sub_483C8(v1);
  *(v0 + 32) = sub_168A34();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 40) = sub_168A34();
  return v0;
}

uint64_t sub_11BD88()
{
  sub_D2DC();
  v0[7] = v1;
  v2 = sub_1693E4();
  v0[8] = v2;
  v3 = *(v2 - 8);
  v0[9] = v3;
  v4 = *(v3 + 64) + 15;
  v0[10] = swift_task_alloc();

  return _swift_task_switch(sub_11BE44, 0, 0);
}

uint64_t sub_11BE44()
{
  v32 = v0;
  v1 = 0x80000000001888B0;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v2 = 0xD000000000000029;
  v3 = sub_16A584();
  sub_9DA0(v3, qword_1E65C0);
  v4 = sub_16A9A4();
  v0[2] = 0xD000000000000093;
  v0[3] = 0x800000000018F4D0;
  v0[4] = 47;
  v0[5] = 0xE100000000000000;
  sub_D030();
  v5 = sub_16AB34();
  v6 = sub_15AE4(v5);
  v8 = v7;

  if (v8)
  {
    v34._countAndFlagsBits = 32;
    v34._object = 0xE100000000000000;
    sub_16A744(v34);
    v35._countAndFlagsBits = 0xD000000000000029;
    v35._object = 0x80000000001888B0;
    sub_16A744(v35);
    v2 = v6;
    v1 = v8;
  }

  v31._countAndFlagsBits = 58;
  v31._object = 0xE100000000000000;
  v0[6] = 51;
  v36._countAndFlagsBits = sub_16AE24();
  sub_16A744(v36);

  sub_16A744(v31);

  v9._countAndFlagsBits = sub_378D0(0x2002uLL);
  if (v9._object)
  {
    v31._countAndFlagsBits = 32;
    v31._object = 0xE100000000000000;
    sub_16A744(v9);

    v37._countAndFlagsBits = 32;
    v37._object = 0xE100000000000000;
    sub_16A744(v37);
  }

  v10 = sub_16A574();
  if (os_log_type_enabled(v10, v4))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v31._countAndFlagsBits = v12;
    *v11 = 136315138;
    v13 = sub_15BC8(v2, v1, &v31._countAndFlagsBits);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_0, v10, v4, "%s", v11, 0xCu);
    sub_D13C(v12);
    sub_D494();
    sub_D494();
  }

  else
  {
  }

  v15 = v0[9];
  v14 = v0[10];
  v17 = v0[7];
  v16 = v0[8];
  sub_16A384();
  v18 = *(v15 + 16);
  v18(v14, v17, v16);
  v19 = sub_5AFEC(v14);
  v20 = v0[10];
  if (v19)
  {
    v21 = v19;
    v22 = v0[10];

    v23 = v0[1];

    return v23(v21);
  }

  else
  {
    v26 = v0[7];
    v25 = v0[8];
    type metadata accessor for CarCommandsError();
    sub_11D08C();
    sub_11D044(v27, 255, v28);
    swift_allocError();
    v18(v29, v26, v25);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v30 = v0[1];

    return v30();
  }
}

uint64_t sub_11C220()
{
  v0 = sub_16A164();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_A138();
  v2 = sub_5758(&qword_1EDA18, &qword_178E28);
  sub_37404();
  v4 = v3;
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v7);
  v10 = &v21[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v21[-1] - v11;
  if (qword_1E5908 != -1)
  {
    sub_48134();
  }

  v13 = qword_1F0C70;
  v21[3] = type metadata accessor for WalletService();
  v21[4] = &off_1D7C28;
  v21[0] = v13;
  type metadata accessor for CarCommandsCATs();

  sub_16A154();
  sub_16A094();
  sub_164C14();

  sub_D13C(v21);
  sub_1693F4();
  type metadata accessor for FeatureFlagHelper();
  v14 = swift_allocObject();
  v15 = sub_168E34();
  sub_483C8(v15);

  sub_168E24();
  type metadata accessor for SnippetManager();
  *(swift_allocObject() + 16) = 0;
  v16 = sub_11CD90(v21, v14);

  v21[0] = v16;
  type metadata accessor for GetClimateStatusHandleIntentFlowStrategy();
  sub_11D044(&qword_1EDA20, 255, type metadata accessor for GetClimateStatusHandleIntentFlowStrategy);
  sub_1687E4();
  sub_168884();
  (*(v4 + 16))(v10, v12, v2);
  v17 = sub_5758(&qword_1EDA28, &qword_178E30);
  sub_483C8(v17);
  v18 = sub_168914();

  (*(v4 + 8))(v12, v2);
  return v18;
}

uint64_t sub_11C534(uint64_t a1, uint64_t a2)
{
  result = sub_11D044(&qword_1EDA00, a2, type metadata accessor for GetClimateStatusRCHFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_11C5A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_7971C;

  return sub_11BD88();
}

uint64_t sub_11C650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  ClimateStatusRCHFlowStrategy = type metadata accessor for GetClimateStatusRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, ClimateStatusRCHFlowStrategy, a5);
}

uint64_t sub_11C71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  ClimateStatusRCHFlowStrategy = type metadata accessor for GetClimateStatusRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, ClimateStatusRCHFlowStrategy, a5);
}

uint64_t sub_11C7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  ClimateStatusRCHFlowStrategy = type metadata accessor for GetClimateStatusRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, ClimateStatusRCHFlowStrategy, a5);
}

uint64_t sub_11C8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = async function pointer to ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  ClimateStatusRCHFlowStrategy = type metadata accessor for GetClimateStatusRCHFlowStrategy();
  *v13 = v6;
  v13[1] = sub_6F428;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, ClimateStatusRCHFlowStrategy, a6);
}

uint64_t sub_11C990()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_6F850;

  return sub_419F8();
}

uint64_t sub_11CA68()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_79DCC;

  return sub_467D8();
}

uint64_t sub_11CBB4(uint64_t a1, uint64_t a2)
{
  result = sub_11D044(&qword_1EDA08, a2, type metadata accessor for GetClimateStatusRCHFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

id sub_11CC54(uint64_t a1)
{
  v2 = type metadata accessor for WalletService();
  v17[3] = v2;
  v17[4] = &off_1D7C28;
  v17[0] = a1;
  v3 = type metadata accessor for SEGetClimateStatusIntentHandler();
  v4 = objc_allocWithZone(v3);
  sub_2F8D0(v17, v2);
  sub_37404();
  v6 = *(v5 + 64);
  __chkstk_darwin(v7);
  sub_A138();
  v10 = (v9 - v8);
  (*(v11 + 16))(v9 - v8);
  v12 = *v10;
  v16[3] = v2;
  v16[4] = &off_1D7C28;
  v16[0] = v12;
  sub_10824(v16, v4 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin31SEGetClimateStatusIntentHandler_carKeyService);
  v15.receiver = v4;
  v15.super_class = v3;
  v13 = objc_msgSendSuper2(&v15, "init");
  sub_D13C(v16);
  sub_D13C(v17);
  return v13;
}

uint64_t sub_11CD90(uint64_t *a1, uint64_t a2)
{
  v4 = sub_16A164();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for FeatureFlagHelper();
  v34[3] = v6;
  v34[4] = &off_1D9AF0;
  v34[0] = a2;
  ClimateStatusHandleIntentFlowStrategy = type metadata accessor for GetClimateStatusHandleIntentFlowStrategy();
  v8 = *(ClimateStatusHandleIntentFlowStrategy + 48);
  v9 = *(ClimateStatusHandleIntentFlowStrategy + 52);
  v10 = swift_allocObject();
  v11 = sub_2F8D0(v34, v6);
  v12 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v33[3] = v6;
  v33[4] = &off_1D9AF0;
  v33[0] = v16;
  v17 = (v10 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40GetClimateStatusHandleIntentFlowStrategy_commonPatterns);
  v18 = type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_16A154();
  v19 = sub_16A094();
  v17[3] = v18;
  v17[4] = &off_1DA7E8;
  *v17 = v19;
  *(v10 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40GetClimateStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler) = 0;
  sub_10824(a1, v32);
  sub_10824(v33, v30);
  v20 = v31;
  v21 = sub_2F8D0(v30, v31);
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = (v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = *v24;
  sub_1668CC();
  v28 = v27;
  sub_D13C(a1);
  sub_D13C(v33);
  sub_D13C(v30);
  sub_D13C(v34);
  return v28;
}

uint64_t sub_11D044(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_11D0A4(char *a1, char a2)
{
  v4 = v2;
  v8 = type metadata accessor for CarCommandsError();
  v9 = sub_10AFC(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_5A0F8();
  if ((a2 & 0xF0) != 0x90)
  {
    LOBYTE(v49[0]) = a2;
    v18 = sub_16A694();
    sub_11DE3C(v18, v19);
    sub_11D28();
    sub_5A144();
    sub_548D0(v3, v20);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v21 = sub_16A584();
    sub_9DA0(v21, qword_1E65C0);
    sub_16A9A4();
    swift_getErrorValue();
    sub_16AEB4();
    v22 = sub_11DD90();
    v29 = 17;
    goto LABEL_18;
  }

  sub_86E4(a1, &_swiftEmptySetSingleton, v45);
  if (!v45[3])
  {
    sub_109A0(v45, &qword_1E5F80, &unk_16E7E0);
    v46 = 0u;
    v47 = 0u;
    v48 = 0;
    goto LABEL_15;
  }

  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&qword_1EDA38, &unk_178E50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    goto LABEL_15;
  }

  if (!*(&v47 + 1))
  {
LABEL_15:
    sub_109A0(&v46, &qword_1EDA30, &qword_178E48);
    v30 = sub_1693E4();
    sub_10AFC(v30);
    (*(v31 + 16))(v3, a1);
    swift_storeEnumTagMultiPayload();
    sub_11D28();
    sub_5A144();
    sub_548D0(v3, v32);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v33 = sub_16A584();
    sub_9DA0(v33, qword_1E65C0);
    sub_16A9A4();
    swift_getErrorValue();
    sub_16AEB4();
    v22 = sub_11DD90();
    v29 = 23;
LABEL_18:
    sub_386D8(v22, v23, v24, v25, v26, v27, v29, v28, v44);

    sub_5A09C(v3);
    v34 = v2;
    return v4;
  }

  sub_D124(&v46, v49);
  v12 = v49[4];
  sub_D084(v49, v49[3]);
  if ((a2 & 0xF) != 0)
  {
    if ((a2 & 0xF) == 1)
    {
      v13 = v12[3];
      v14 = sub_11DDE4();
      v16 = v15(v14);
      if (v17)
      {
        v16 = [v2 seat];
      }

      [v2 setSeat:v16];
    }

    else
    {
      v40 = v12[4];
      v41 = sub_11DDE4();
      [v2 setTemperatureChange:v42(v41)];
    }
  }

  else
  {
    v36 = v12[2];
    v37 = sub_11DDE4();
    v39 = v38(v37);
    if (!v39)
    {
      v39 = [v4 enableSeatTemperature];
    }

    [v4 setEnableSeatTemperature:v39];
  }

  v43 = v4;
  sub_D13C(v49);
  return v4;
}

id sub_11D494(uint64_t a1, char a2)
{
  v5 = type metadata accessor for CarCommandsError();
  v6 = sub_10AFC(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_5A0F8();
  if ((a2 & 0xF0) == 0x90)
  {
    v9 = sub_11DE10();
    if ((a2 & 0xF) != 0)
    {
      if ((a2 & 0xF) == 1)
      {
        sub_16138(v9, v10);
        if (sub_11DDC4())
        {
          v11 = sub_16A474();
          if ((v12 & 1) == 0)
          {
            [v30 setSeat:v11];
          }
        }

        v13 = sub_11DE10();
        sub_16138(v13, v14);
        if (sub_11DDC4())
        {
          [v30 setSeat:v31];
        }
      }

      else
      {
        sub_16138(v9, v10);
        if (sub_11DDC4())
        {
          v25 = sub_16A4B4();
          if ((v26 & 1) == 0)
          {
            [v30 setTemperatureChange:v25];
          }
        }

        v27 = sub_11DE10();
        sub_16138(v27, v28);
        if (sub_11DDC4())
        {
          [v30 setTemperatureChange:v31];
        }
      }
    }

    else
    {
      sub_16138(v9, v10);
      if (sub_11DE1C())
      {
        v22 = [objc_allocWithZone(NSNumber) initWithBool:v31];
        [v30 setEnableSeatTemperature:v22];
      }

      v23 = sub_11DE10();
      sub_16138(v23, v24);
      sub_76D10();
      if (sub_11DE1C())
      {
        [v30 setEnableSeatTemperature:v31];
      }
    }
  }

  else
  {
    v15 = sub_16A694();
    sub_11DE3C(v15, v16);
    sub_11D28();
    sub_5A144();
    sub_548D0(v2, v17);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v18 = sub_16A584();
    sub_9DA0(v18, qword_1E65C0);
    v19 = sub_16A9A4();
    swift_getErrorValue();
    v20 = sub_16AEB4();
    sub_386D8(v19, 0x200000uLL, 0xD0000000000000A9, 0x800000000018F570, 0xD000000000000018, 0x8000000000183260, 64, v20, v21);

    sub_5A09C(v2);
  }

  return v30;
}

id sub_11D794@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v7 = type metadata accessor for CarCommandsError();
  v8 = sub_10AFC(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_5A0F8();
  if ((a1 & 0xF0) != 0x90)
  {
    *v3 = sub_16A694();
    v3[1] = v13;
    swift_storeEnumTagMultiPayload();
    sub_11D28();
    swift_allocError();
    sub_548D0(v3, v14);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v15 = sub_16A584();
    sub_9DA0(v15, qword_1E65C0);
    v16 = sub_16A9A4();
    swift_getErrorValue();
    v17 = sub_16AEB4();
    sub_386D8(v16, 0x200000uLL, 0xD0000000000000A9, 0x800000000018F570, 0x6F662865756C6176, 0xEB00000000293A72, 80, v17, v18);

    result = sub_5A09C(v3);
    goto LABEL_8;
  }

  if ((a1 & 0xF) == 0)
  {
    result = [v2 enableSeatTemperature];
    if (result)
    {
      v19 = result;
      result = sub_76D10();
      *(a2 + 24) = result;
      *a2 = v19;
      return result;
    }

LABEL_8:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  if ((a1 & 0xF) == 1)
  {
    result = [v2 seat];
    v12 = &type metadata for IntentSeatType;
  }

  else
  {
    result = [v2 temperatureChange];
    v12 = &type metadata for IntentTemperatureChange;
  }

  *(a2 + 24) = v12;
  *a2 = result;
  return result;
}

id sub_11D9C0(char *a1)
{
  v4 = type metadata accessor for CarCommandsError();
  v5 = sub_10AFC(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_5A0F8();
  sub_86E4(a1, &_swiftEmptySetSingleton, v26);
  if (v26[3])
  {
    v8 = sub_5758(&qword_1E5F90, &qword_170270);
    sub_5758(&qword_1EDA38, &unk_178E50);
    if (swift_dynamicCast())
    {
      if (*(&v28 + 1))
      {
        sub_D124(&v27, v30);
        v9 = [objc_allocWithZone(v1) init];
        sub_11DDF4();
        v10 = *(v4 + 16);
        v11 = v9;
        v12 = v10(v8, v4);
        [v11 setEnableSeatTemperature:v12];

        sub_11DDF4();
        v13 = (*(v4 + 24))(v8, v4);
        if (v14)
        {
          v15 = 0;
        }

        else
        {
          v15 = v13;
        }

        [v11 setSeat:v15];
        sub_11DDF4();
        [v11 setTemperatureChange:{(*(v4 + 32))(v8, v4)}];

        v16 = sub_1693E4();
        sub_10AFC(v16);
        (*(v17 + 8))(a1);
        sub_D13C(v30);
        return v11;
      }
    }

    else
    {
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
    }
  }

  else
  {
    sub_109A0(v26, &qword_1E5F80, &unk_16E7E0);
    v27 = 0u;
    v28 = 0u;
    v29 = 0;
  }

  sub_109A0(&v27, &qword_1EDA30, &qword_178E48);
  v18 = sub_1693E4();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v2, a1, v18);
  swift_storeEnumTagMultiPayload();
  sub_11D28();
  swift_allocError();
  sub_548D0(v2, v20);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v21 = sub_16A584();
  sub_9DA0(v21, qword_1E65C0);
  v22 = sub_16A9A4();
  swift_getErrorValue();
  v23 = sub_16AEB4();
  sub_386D8(v22, 0x200000uLL, 0xD0000000000000A9, 0x800000000018F570, 0x293A5F2874696E69, 0xE800000000000000, 88, v23, v24);

  (*(v19 + 8))(a1, v18);
  sub_5A09C(v2);
  return 0;
}

uint64_t sub_11DDC4()
{

  return swift_dynamicCast();
}

void *sub_11DDF4()
{
  v2 = *(v0 - 96);
  v3 = *(v0 - 104);

  return sub_D084((v0 - 128), v3);
}

uint64_t sub_11DE1C()
{

  return swift_dynamicCast();
}

uint64_t sub_11DE3C(uint64_t a1, uint64_t a2)
{
  *v2 = a1;
  v2[1] = a2;

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for CarCommandsGetClimateStatusCATsSimple()
{
  result = qword_1EDA40;
  if (!qword_1EDA40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_11DEE8(uint64_t a1, char a2, char a3)
{
  *(v4 + 65) = a3;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v5 = *(*(sub_5758(&qword_1E6300, &qword_16ECE0) - 8) + 64) + 15;
  *(v4 + 32) = swift_task_alloc();

  return _swift_task_switch(sub_11DF8C, 0, 0);
}

uint64_t sub_11DF8C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v3 = swift_allocObject();
  *(v0 + 40) = v3;
  *(v3 + 16) = xmmword_16EE50;
  *(v3 + 32) = 0x656D614E726163;
  *(v3 + 40) = 0xE700000000000000;
  sub_2F868(v2, v1, &qword_1E6300, &qword_16ECE0);
  v4 = sub_16A0C4();
  v5 = sub_9E2C(v1, 1, v4);
  v6 = *(v0 + 32);
  if (v5 == 1)
  {
    sub_D188(*(v0 + 32), &qword_1E6300, &qword_16ECE0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    v7 = sub_10888((v3 + 48));
    (*(*(v4 - 8) + 32))(v7, v6, v4);
  }

  v8 = *(v0 + 65);
  v9 = *(v0 + 64);
  strcpy((v3 + 80), "climateEnabled");
  *(v3 + 95) = -18;
  *(v3 + 96) = v9;
  *(v3 + 120) = &type metadata for Bool;
  *(v3 + 128) = 0xD00000000000001CLL;
  *(v3 + 136) = 0x800000000018F6B0;
  *(v3 + 168) = &type metadata for Bool;
  *(v3 + 144) = v8;
  v10 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v14 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v11 = swift_task_alloc();
  *(v0 + 48) = v11;
  *v11 = v0;
  v11[1] = sub_31B04;
  v12 = *(v0 + 24);

  return v14(0xD000000000000038, 0x800000000018F670, v3);
}

uint64_t sub_11E1B0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_11E204(a1, a2);
}

uint64_t sub_11E204(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_2F868(a1, &v18 - v15, &qword_1E5B48, &unk_16DDB0);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_16A0D4();
  (*(v8 + 8))(a2, v2);
  sub_D188(a1, &qword_1E5B48, &unk_16DDB0);
  return v16;
}

uint64_t sub_11E380(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_16A0E4();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t type metadata accessor for CarCommandsChangeAudioSourceCATsSimple()
{
  result = qword_1EDA90;
  if (!qword_1EDA90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_11E514(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_11E568(a1, a2);
}

uint64_t sub_11E568(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_57A0(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_16A0D4();
  (*(v8 + 8))(a2, v2);
  sub_5810(a1);
  return v16;
}

uint64_t sub_11E6C4(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_16A0E4();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t type metadata accessor for CarCommandsGetLockStatusCATs()
{
  result = qword_1EDAE0;
  if (!qword_1EDAE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_11E858(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_11E8AC(a1, a2);
}

uint64_t sub_11E8AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_16A164();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_57A0(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_16A084();
  (*(v5 + 8))(a2, v4);
  sub_5810(a1);
  return v12;
}

uint64_t sub_11EA20(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1D37C0;
  v6._object = a2;
  v4 = sub_16ADE4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_11EA6C(char a1)
{
  if (!a1)
  {
    return 7562617;
  }

  if (a1 == 1)
  {
    return 28526;
  }

  return 0x6C65636E6163;
}

uint64_t sub_11EAD0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_11EA20(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_11EB00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_11EA6C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for CarCommandsConfirmationNLv3Value(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x11EC08);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_11EC44()
{
  result = qword_1EDB30;
  if (!qword_1EDB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB30);
  }

  return result;
}

uint64_t sub_11EC98(uint64_t a1, uint64_t a2)
{
  v4 = sub_11EE24();
  v5 = sub_11EE78();
  v6 = sub_11EECC();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5, v6);
}

unint64_t sub_11ED10()
{
  result = qword_1EDB38;
  if (!qword_1EDB38)
  {
    sub_37130(&qword_1EDB40, &qword_178F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB38);
  }

  return result;
}

unint64_t sub_11ED78()
{
  result = qword_1EDB48;
  if (!qword_1EDB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB48);
  }

  return result;
}

unint64_t sub_11EDD0()
{
  result = qword_1EDB50;
  if (!qword_1EDB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB50);
  }

  return result;
}

unint64_t sub_11EE24()
{
  result = qword_1EDB58;
  if (!qword_1EDB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB58);
  }

  return result;
}

unint64_t sub_11EE78()
{
  result = qword_1EDB60;
  if (!qword_1EDB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB60);
  }

  return result;
}

unint64_t sub_11EECC()
{
  result = qword_1EDB68;
  if (!qword_1EDB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB68);
  }

  return result;
}

uint64_t sub_11EF34()
{
  sub_D2DC();
  v1 = [*(v0 + 16) levelRange];
  v2 = [v1 stepValue];

  v3 = *(v0 + 8);

  return v3(v2 != 0);
}

uint64_t CAFDefrost.setActivated(_:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return sub_D2B0();
}

uint64_t sub_11EFDC()
{
  sub_D2DC();
  if (*(v0 + 24) == 1)
  {
    v1 = [*(v0 + 16) levelRange];
    v2 = [v1 maximumValue];
  }

  else
  {
    v2 = 0;
  }

  [*(v0 + 16) setLevel:v2];
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_11F0A4(char a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_6F428;

  return CAFDefrost.setActivated(_:)(a1);
}

uint64_t sub_11F13C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_11F1CC;

  return CAFDefrost.isActivated()();
}

uint64_t sub_11F1CC()
{
  sub_D2DC();
  v3 = v2;
  v4 = *(*v1 + 16);
  v5 = *v1;
  sub_D254();
  *v6 = v5;

  v7 = *(v5 + 8);
  if (v0)
  {
    v8 = 0;
  }

  else
  {
    v8 = v3 & 1;
  }

  return v7(v8);
}

uint64_t sub_11F2C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_79DCC;

  return CAFRecirculation.isConnected()();
}

BOOL sub_11F3A4()
{
  sub_16A1B4();
  v2._countAndFlagsBits = 0x6C7070612E6D6F63;
  v2._object = 0xEA00000000002E65;
  v0 = sub_16A764(v2);

  return v0;
}

uint64_t sub_11F404()
{
  sub_16A1B4();
  if (!v0)
  {
    goto LABEL_32;
  }

  sub_10C060();
  if (v3 == 0xD000000000000012 && v1 == v2)
  {
    goto LABEL_26;
  }

  v5 = sub_16AE54();

  if ((v5 & 1) == 0)
  {
LABEL_32:
    sub_16A1B4();
    if (!v6)
    {
      goto LABEL_13;
    }

    sub_10C060();
    if (v9 == 0xD000000000000029 && v7 == v8)
    {
      goto LABEL_26;
    }

    v11 = sub_16AE54();

    if ((v11 & 1) == 0)
    {
LABEL_13:
      sub_16A1B4();
      if (v12)
      {
        sub_10C060();
        if (v15 == 0xD000000000000016 && v13 == v14)
        {
          goto LABEL_26;
        }

        v17 = sub_16AE54();

        if (v17)
        {
          goto LABEL_19;
        }
      }

      sub_16A1B4();
      if (!v19)
      {
        v18 = 0;
        return v18 & 1;
      }

      sub_10C060();
      if (v22 != 0xD00000000000002CLL || v20 != v21)
      {
        v18 = sub_16AE54();
LABEL_27:

        return v18 & 1;
      }

LABEL_26:
      v18 = 1;
      goto LABEL_27;
    }
  }

LABEL_19:
  v18 = 1;
  return v18 & 1;
}

uint64_t CAFRecirculation.setActivated(_:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return sub_D2B0();
}

uint64_t sub_11F574()
{
  sub_D2DC();
  [*(v0 + 16) setOn:*(v0 + 24)];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_11F5F4()
{
  sub_D2DC();
  [*(v0 + 16) on];
  sub_30AEC();

  return v1();
}

uint64_t sub_11F66C()
{
  sub_D2DC();
  if ([*(v0 + 16) onDisabled])
  {
    [*(v0 + 16) onInvalid];
  }

  sub_30AEC();

  return v1();
}

uint64_t sub_11F74C(char a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_6F428;

  return CAFRecirculation.setActivated(_:)(a1);
}

uint64_t sub_11F7E4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_6F5A0;

  return CAFZonesSynced.isActivated()();
}

uint64_t sub_11F874()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_11F904;

  return CAFZonesSynced.isConnected()();
}

uint64_t sub_11F904()
{
  sub_D2DC();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  sub_D254();
  *v5 = v4;

  sub_30AEC();

  return v6(v2);
}

uint64_t sub_11F9F0()
{
  if ([v0 onDisabled])
  {
    return 0;
  }

  else
  {
    return [v0 onInvalid] ^ 1;
  }
}

uint64_t sub_11FA5C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_11FA7C, 0, 0);
}

uint64_t sub_11FA7C()
{
  sub_11FCC0(v0[3] + 96, v0[2]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_11FAEC()
{
  sub_D13C((v0 + 16));
  sub_D13C((v0 + 56));
  sub_A72B0(v0 + 96);
  return v0;
}

uint64_t sub_11FB1C()
{
  sub_11FAEC();

  return _swift_deallocClassInstance(v0, 137, 7);
}

uint64_t sub_11FB74(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_4D8D0;

  return sub_11FA5C(a1);
}

uint64_t sub_11FC10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_4D8D0;

  return sub_EB928();
}

uint64_t sub_11FCC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1E9AE0, &unk_1736B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_11FD40(uint64_t a1)
{
  *(v2 + 344) = a1;
  *(v2 + 352) = v1;
  sub_10B4C();
  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_11FD6C()
{
  sub_D2DC();
  v1 = *sub_D084((*(v0 + 352) + 8), *(*(v0 + 352) + 32));
  v2 = swift_task_alloc();
  *(v0 + 360) = v2;
  *v2 = v0;
  v2[1] = sub_11FE14;

  return sub_13AB58(v0 + 16, 1);
}

uint64_t sub_11FE14()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 360);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 368) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_11FF10()
{
  sub_10824(*(v0 + 344), v0 + 96);
  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&qword_1EDC70, &qword_179258);
  if (swift_dynamicCast())
  {
    sub_D124((v0 + 136), v0 + 56);
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    sub_D084((v0 + 16), v1);
    v3 = *(v2 + 64);
    v12 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    *(v0 + 376) = v5;
    *v5 = v0;
    v5[1] = sub_12020C;

    return v12(v0 + 216, v1, v2);
  }

  else
  {
    v7 = *(v0 + 344);
    *(v0 + 136) = 0u;
    *(v0 + 152) = 0u;
    *(v0 + 168) = 0;
    sub_D188(v0 + 136, &qword_1EDC78, &unk_179260);
    type metadata accessor for CarCommandsError();
    sub_11D28();
    swift_allocError();
    v9 = v8;
    sub_16ACF4(61);
    *(v0 + 328) = 0;
    *(v0 + 336) = 0xE000000000000000;
    v14._object = 0x8000000000184C00;
    v14._countAndFlagsBits = 0xD000000000000016;
    sub_16A744(v14);
    sub_16AD84();
    v15._countAndFlagsBits = 0xD000000000000025;
    v15._object = 0x800000000018F820;
    sub_16A744(v15);
    v10 = *(v0 + 336);
    *v9 = *(v0 + 328);
    v9[1] = v10;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_D13C((v0 + 16));
    sub_D37C();

    return v11();
  }
}

uint64_t sub_1201E8()
{
  v1 = *(v0 + 368);
  sub_D37C();
  return v2();
}

uint64_t sub_12020C()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 376);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 384) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_120308()
{
  if (!*(v0 + 240))
  {
    sub_D188(v0 + 216, &qword_1E83D0, &qword_174EE0);
    if (qword_1E58E8 != -1)
    {
      sub_B4F54();
      swift_once();
    }

    v9 = *(v0 + 352);
    v10 = sub_16A584();
    sub_9DA0(v10, qword_1E65C0);
    v11 = sub_16A9A4();
    sub_386D8(v11, 0x40000000uLL, 0xD00000000000008ALL, 0x800000000018F850, 0xD000000000000012, 0x8000000000184BB0, 25, 0xD000000000000021, 0x8000000000184C50);
    v18 = sub_12F9C4;
    v12 = *v9;
    v7 = swift_task_alloc();
    *(v0 + 424) = v7;
    *v7 = v0;
    v8 = sub_120880;
    goto LABEL_8;
  }

  sub_D124((v0 + 216), v0 + 176);
  v1 = *sub_D084((v0 + 56), *(v0 + 80));
  v2 = sub_8F110();
  if (v2 == 2 || (v3 = v2, v4 = *sub_D084((v0 + 56), *(v0 + 80)), v5 = sub_8F058(), v5 == 6))
  {
    v18 = sub_C3F00;
    v6 = **(v0 + 352);
    v7 = swift_task_alloc();
    *(v0 + 408) = v7;
    *v7 = v0;
    v8 = sub_120714;
LABEL_8:
    v7[1] = v8;
    v13 = *(v0 + 352);

    return v18();
  }

  v15 = v5;
  v16 = swift_task_alloc();
  *(v0 + 392) = v16;
  *v16 = v0;
  v16[1] = sub_1205A8;
  v17 = *(v0 + 352);

  return sub_120B54(v15, v0 + 176, v3 & 1);
}

uint64_t sub_1205A8()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v2[32] = v1;
  v2[33] = v4;
  v2[34] = v0;
  v6 = *(v5 + 392);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 400) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1206AC()
{
  sub_D2DC();
  sub_D13C((v0 + 176));
  v1 = *(v0 + 264);
  sub_1226F0();
  sub_30AEC();

  return v2(v1);
}

uint64_t sub_120714()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v2[35] = v1;
  v2[36] = v4;
  v2[37] = v0;
  v6 = *(v5 + 408);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 416) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_120818()
{
  sub_D2DC();
  sub_D13C((v0 + 176));
  v1 = *(v0 + 288);
  sub_1226F0();
  sub_30AEC();

  return v2(v1);
}

uint64_t sub_120880()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v2[38] = v1;
  v2[39] = v4;
  v2[40] = v0;
  v6 = *(v5 + 424);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 432) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_120984()
{
  sub_D2DC();
  v1 = *(v0 + 312);
  sub_1226F0();
  sub_30AEC();

  return v2(v1);
}

uint64_t sub_1209E4()
{
  sub_D2DC();
  sub_1226F0();
  v1 = *(v0 + 432);
  sub_D37C();

  return v2();
}

uint64_t sub_120A3C()
{
  sub_D2DC();
  sub_1226F0();
  v1 = *(v0 + 384);
  sub_D37C();

  return v2();
}

uint64_t sub_120A94()
{
  sub_D2DC();
  sub_D13C((v0 + 176));
  sub_1226F0();
  v1 = *(v0 + 400);
  sub_D37C();

  return v2();
}

uint64_t sub_120AF4()
{
  sub_D2DC();
  sub_D13C((v0 + 176));
  sub_1226F0();
  v1 = *(v0 + 416);
  sub_D37C();

  return v2();
}

uint64_t sub_120B54(char a1, uint64_t a2, char a3)
{
  *(v4 + 467) = a3;
  *(v4 + 416) = a2;
  *(v4 + 424) = v3;
  *(v4 + 466) = a1;
  return _swift_task_switch(sub_120B7C, 0, 0);
}

uint64_t sub_120B7C()
{
  v137 = v0;
  v1 = *(v0 + 416);
  v2 = v1[3];
  v3 = v1[4];
  sub_D084(v1, v2);
  v4 = (*(v3 + 80))(v2, v3);
  if (!v4)
  {
    v92 = **(v0 + 424);
    v93 = swift_task_alloc();
    *(v0 + 456) = v93;
    *v93 = v0;
    v94 = sub_121934;
    goto LABEL_45;
  }

  v5 = *(v4 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v7 = v4 + 32;
    do
    {
      v8 = *(v0 + 466);
      sub_10824(v7, v0 + 256);
      v9 = *(v0 + 280);
      v10 = *(v0 + 288);
      sub_D084((v0 + 256), v9);
      v11 = (*(v10 + 16))(v8, v9, v10);
      if (v12)
      {
        v13 = 0;
        *(v0 + 48) = 0;
        *(v0 + 16) = 0u;
        *(v0 + 32) = 0u;
      }

      else
      {
        v13 = v11;
        sub_10824(v0 + 256, v0 + 16);
      }

      *(v0 + 56) = v13;
      sub_D13C((v0 + 256));
      if (*(v0 + 40))
      {
        v14 = *(v0 + 32);
        v132 = *(v0 + 16);
        v133 = v14;
        v134 = *(v0 + 48);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = v6[2];
          sub_108AF4();
          v6 = v20;
        }

        v15 = v6[2];
        if (v15 >= v6[3] >> 1)
        {
          sub_108AF4();
          v6 = v21;
        }

        v6[2] = v15 + 1;
        v16 = &v6[6 * v15];
        v17 = v132;
        v18 = v134;
        v16[3] = v133;
        v16[4] = v18;
        v16[2] = v17;
      }

      else
      {
        sub_D188(v0 + 16, &qword_1EDC80, &qword_179278);
      }

      v7 += 40;
      --v5;
    }

    while (v5);
  }

  v22 = v6[2];
  if (!v22)
  {
    v103 = *(v0 + 466);

    *&v132 = 0;
    *(&v132 + 1) = 0xE000000000000000;
    sub_16ACF4(46);
    *(v0 + 384) = 0;
    *(v0 + 392) = 0xE000000000000000;
    v145._countAndFlagsBits = 0xD00000000000002CLL;
    v145._object = 0x800000000018F950;
    sub_16A744(v145);
    *(v0 + 465) = v103;
    sub_16AD84();
    v105 = *(v0 + 384);
    v104 = *(v0 + 392);
    if (qword_1E58E8 != -1)
    {
      sub_B4F54();
      swift_once();
    }

    v106 = *(v0 + 424);
    v107 = sub_16A584();
    sub_9DA0(v107, qword_1E65C0);
    v108 = sub_16A9A4();
    sub_386D8(v108, 0x40000000uLL, 0xD00000000000008ALL, 0x800000000018F850, 0xD000000000000022, 0x800000000018F8E0, 53, v105, v104);

    v109 = *v106;
    v93 = swift_task_alloc();
    *(v0 + 448) = v93;
    *v93 = v0;
    v94 = sub_12184C;
LABEL_45:
    v93[1] = v94;
    v110 = *(v0 + 424);
    sub_122768();

    __asm { BR              X1 }
  }

  *&v132 = _swiftEmptyArrayStorage;
  sub_146970(0, v22, 0);
  v23 = _swiftEmptyArrayStorage;
  v121 = v6;
  v24 = (v6 + 4);
  v25 = (v6 + 4);
  v130 = v22;
  do
  {
    sub_122668(v25, v0 + 64);
    v26 = *(v0 + 80);
    *(v0 + 112) = *(v0 + 64);
    *(v0 + 128) = v26;
    *(v0 + 144) = *(v0 + 96);
    sub_D124((v0 + 112), v0 + 296);
    *&v132 = v23;
    v28 = v23[2];
    v27 = v23[3];
    if (v28 >= v27 >> 1)
    {
      sub_146970((v27 > 1), v28 + 1, 1);
    }

    v30 = *(v0 + 320);
    v29 = *(v0 + 328);
    v31 = sub_2F8D0(v0 + 296, v30);
    v32 = *(v30 - 8);
    v33 = *(v32 + 64) + 15;
    v34 = swift_task_alloc();
    (*(v32 + 16))(v34, v31, v30);
    sub_135730(v28, v34, &v132, v30, v29);
    sub_D13C((v0 + 296));

    v23 = v132;
    v25 += 48;
    --v22;
  }

  while (v22);
  v35 = *(v0 + 424);
  v36 = sub_D084((v35 + 48), *(v35 + 72));
  v37 = sub_1330E8(v23);

  v39 = sub_948E4(v37, *v36, v38);

  v40 = v39[2];

  if (!v40)
  {
    v113 = *(v0 + 424);

    v114 = *(v113 + 80);
    sub_D084((v35 + 48), *(v35 + 72));
    v115 = *(*(v114 + 8) + 40);
    v131 = v115 + *v115;
    v116 = v115[1];
    v117 = swift_task_alloc();
    *(v0 + 440) = v117;
    *v117 = v0;
    v117[1] = sub_121764;
    sub_122768();

    __asm { BRAA            X2, X16 }
  }

  v128 = 0x800000000018F8E0;
  v129 = 0x800000000018F850;
  v126 = "Setting vent to ";
  v127 = "rClimate:enabled:)";
  v125 = 0xD000000000000010;
  *&v41 = 136315138;
  v122 = v41;
  v42 = v130;
  do
  {
    v43 = *(v0 + 466);
    sub_122668(v24, v0 + 160);
    v44 = *(v0 + 200);
    sub_D124((v0 + 160), v0 + 208);
    *(v0 + 248) = v44;
    *&v132 = 0;
    *(&v132 + 1) = 0xE000000000000000;
    sub_16ACF4(36);
    v45 = *(&v132 + 1);
    *(v0 + 336) = v132;
    *(v0 + 344) = v45;
    v138._object = (v127 | 0x8000000000000000);
    v138._countAndFlagsBits = v125;
    sub_16A744(v138);
    *(v0 + 464) = v43;
    sub_16AD84();
    v139._object = (v126 | 0x8000000000000000);
    v139._countAndFlagsBits = v125;
    sub_16A744(v139);
    *(v0 + 400) = v44;
    v140._countAndFlagsBits = sub_16AE24();
    sub_16A744(v140);

    v47 = *(v0 + 336);
    v46 = *(v0 + 344);
    if (qword_1E58E8 != -1)
    {
      sub_B4F54();
      swift_once();
    }

    v48 = sub_16A584();
    sub_9DA0(v48, qword_1E65C0);
    LODWORD(v130) = sub_16A9A4();
    *(v0 + 352) = 0xD00000000000008ALL;
    *(v0 + 360) = v129;
    *(v0 + 368) = 47;
    *(v0 + 376) = 0xE100000000000000;
    sub_D030();
    v49 = (sub_16AB34() + 16);
    if (*v49)
    {
      v50 = &v49[2 * *v49];
      v52 = *v50;
      v51 = v50[1];

      *&v132 = v52;
      *(&v132 + 1) = v51;
      v141._countAndFlagsBits = 32;
      v141._object = 0xE100000000000000;
      sub_16A744(v141);
      v142._countAndFlagsBits = 0xD000000000000022;
      v142._object = v128;
      sub_16A744(v142);
      v54 = *(&v132 + 1);
      v53 = v132;
    }

    else
    {

      v53 = 0xD000000000000022;
      v54 = v128;
    }

    v135 = v53;
    v136 = v54;
    *&v132 = 58;
    *(&v132 + 1) = 0xE100000000000000;
    *(v0 + 408) = 64;
    v143._countAndFlagsBits = sub_16AE24();
    sub_16A744(v143);

    sub_12271C(v55, v56, v57, v58, v59, v60, v61, v62, v120, v121, v122, *(&v122 + 1), v123, v124, v125, v126, v127, v128, v129, v130, v132, *(&v132 + 1));

    v63._countAndFlagsBits = sub_378D0(0x40000000uLL);
    if (v63._object)
    {
      *&v132 = 32;
      *(&v132 + 1) = 0xE100000000000000;
      sub_16A744(v63);

      sub_12271C(v64, v65, v66, v67, v68, v69, v70, v71, v120, v121, v122, *(&v122 + 1), v123, v124, v125, v126, v127, v128, v129, v130, v132, *(&v132 + 1));
    }

    v72 = HIBYTE(v46) & 0xF;
    if ((v46 & 0x2000000000000000) == 0)
    {
      v72 = v47 & 0xFFFFFFFFFFFFLL;
    }

    if (v72)
    {
      *&v132 = 32;
      *(&v132 + 1) = 0xE100000000000000;
      v144._countAndFlagsBits = v47;
      v144._object = v46;
      sub_16A744(v144);
      sub_12271C(v73, v74, v75, v76, v77, v78, v79, v80, v120, v121, v122, *(&v122 + 1), v123, v124, v125, v126, v127, v128, v129, v130, v132, *(&v132 + 1));
    }

    v81 = v135;
    v82 = v136;
    v83 = sub_16A574();
    if (os_log_type_enabled(v83, v130))
    {
      v84 = swift_slowAlloc();
      v124 = v46;
      v85 = v24;
      v86 = v44;
      v87 = v42;
      v88 = swift_slowAlloc();
      *&v132 = v88;
      *v84 = v122;
      v89 = sub_15BC8(v81, v82, &v132);

      *(v84 + 4) = v89;
      _os_log_impl(&dword_0, v83, v130, "%s", v84, 0xCu);
      sub_D13C(v88);
      v42 = v87;
      v44 = v86;
      v24 = v85;
    }

    else
    {
    }

    v90 = *(v0 + 232);
    v91 = *(v0 + 240);
    sub_2F8D0(v0 + 208, v90);
    (*(v91 + 32))(v44, v90, v91);
    sub_D188(v0 + 208, &qword_1ED1C0, &qword_179280);
    v24 += 48;
    --v42;
  }

  while (v42);

  v95 = swift_task_alloc();
  *(v0 + 432) = v95;
  *v95 = v0;
  v95[1] = sub_12167C;
  v96 = *(v0 + 424);
  v97 = *(v0 + 467);
  v98 = *(v0 + 466);
  sub_122768();

  return sub_121A1C(v99, v100);
}

uint64_t sub_12167C()
{
  sub_D2DC();
  sub_FC7B8();
  v4 = *(v3 + 432);
  v5 = *v2;
  sub_D254();
  *v6 = v5;

  sub_30AEC();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_121764()
{
  sub_D2DC();
  sub_FC7B8();
  v4 = *(v3 + 440);
  v5 = *v2;
  sub_D254();
  *v6 = v5;

  sub_30AEC();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_12184C()
{
  sub_D2DC();
  sub_FC7B8();
  v4 = *(v3 + 448);
  v5 = *v2;
  sub_D254();
  *v6 = v5;

  sub_30AEC();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_121934()
{
  sub_D2DC();
  sub_FC7B8();
  v4 = *(v3 + 456);
  v5 = *v2;
  sub_D254();
  *v6 = v5;

  sub_30AEC();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_121A1C(char a1, char a2)
{
  *(v2 + 145) = a2;
  *(v2 + 144) = a1;
  v3 = *(*(sub_16A164() - 8) + 64) + 15;
  *(v2 + 16) = swift_task_alloc();

  return _swift_task_switch(sub_121AB0, 0, 0);
}

uint64_t sub_121AB0()
{
  sub_1696C();
  switch(*(v0 + 145))
  {
    case 1:
      sub_122750();
      sub_122738();
      *(v0 + 48) = sub_52464();
      v11 = swift_task_alloc();
      *(v0 + 56) = v11;
      *v11 = v0;
      v3 = sub_1226D8(v11);
      v4 = 1;
      goto LABEL_7;
    case 2:
      sub_122750();
      sub_122738();
      *(v0 + 72) = sub_52464();
      v8 = swift_task_alloc();
      *(v0 + 80) = v8;
      *v8 = v0;
      v3 = sub_1226D8(v8);
      v4 = 2;
      v6 = 1;
      goto LABEL_8;
    case 3:
      sub_122750();
      sub_122738();
      *(v0 + 96) = sub_52464();
      v9 = swift_task_alloc();
      *(v0 + 104) = v9;
      *v9 = v0;
      v3 = sub_1226D8(v9);
      v4 = 2;
      v6 = 2;
      v7 = 2;
      v10 = 1;
      goto LABEL_10;
    case 4:
      sub_122750();
      sub_122738();
      *(v0 + 120) = sub_52464();
      v5 = swift_task_alloc();
      *(v0 + 128) = v5;
      *v5 = v0;
      v3 = sub_1226D8(v5);
      v4 = 2;
      v6 = 2;
      v7 = 1;
      goto LABEL_9;
    case 5:
      type metadata accessor for CarCommandsError();
      sub_11D28();
      swift_allocError();
      *v13 = 0xD000000000000016;
      v13[1] = 0x800000000018F980;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v14 = *(v0 + 16);

      sub_D37C();

      return v15();
    default:
      sub_122750();
      sub_122738();
      *(v0 + 24) = sub_52464();
      v1 = swift_task_alloc();
      *(v0 + 32) = v1;
      *v1 = v0;
      v1[1] = sub_121DCC;
      v2 = 1;
      v3 = *(v0 + 144);
      v4 = 2;
LABEL_7:
      v6 = 2;
LABEL_8:
      v7 = 2;
LABEL_9:
      v10 = 2;
LABEL_10:

      return sub_1594F0(v3, v2, v4, v6, v7, v10);
  }
}

uint64_t sub_121DCC()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  v3[5] = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[2];
    v12 = v3[3];

    v14 = sub_9F020();

    return v15(v14);
  }
}

uint64_t sub_121F00()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = v3[6];
    v13 = v3[2];

    v14 = sub_9F020();

    return v15(v14);
  }
}

uint64_t sub_122038()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = v3[9];
    v13 = v3[2];

    v14 = sub_9F020();

    return v15(v14);
  }
}