unint64_t sub_23F583400()
{
  result = qword_27E39D138;
  if (!qword_27E39D138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39D138);
  }

  return result;
}

uint64_t sub_23F583454(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000646569;
  v3 = 0x6669636570736E75;
  v4 = a1;
  v5 = 0xE700000000000000;
  v6 = 0x73736563637573;
  v7 = 0xE700000000000000;
  v8 = 0x6572756C696166;
  if (a1 != 4)
  {
    v8 = 0xD000000000000019;
    v7 = 0x800000023F590D50;
  }

  if (a1 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x7964616572;
  if (a1 != 1)
  {
    v10 = 0x6572676F72506E69;
    v9 = 0xEA00000000007373;
  }

  if (!a1)
  {
    v10 = 0x6669636570736E75;
    v9 = 0xEB00000000646569;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE700000000000000;
      if (v11 != 0x73736563637573)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE700000000000000;
      if (v11 != 0x6572756C696166)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0x800000023F590D50;
      if (v11 != 0xD000000000000019)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE500000000000000;
        if (v11 != 0x7964616572)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v3 = 0x6572676F72506E69;
      v2 = 0xEA00000000007373;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_23F588574();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

uint64_t sub_23F58362C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000646569;
  v3 = 0x6669636570736E75;
  v4 = a1;
  if (a1 <= 2u)
  {
    v7 = 0xE500000000000000;
    v8 = 0x7964616572;
    if (a1 != 1)
    {
      v8 = 0x6572676F72506E69;
      v7 = 0xEA00000000007373;
    }

    if (a1)
    {
      v5 = v8;
    }

    else
    {
      v5 = 0x6669636570736E75;
    }

    if (v4)
    {
      v6 = v7;
    }

    else
    {
      v6 = 0xEB00000000646569;
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      v5 = 0xD000000000000019;
    }

    else
    {
      v5 = 0xD00000000000001CLL;
    }

    if (v4 == 5)
    {
      v6 = 0x800000023F590D50;
    }

    else
    {
      v6 = 0x800000023F590F00;
    }
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x73736563637573;
    }

    else
    {
      v5 = 0x6572756C696166;
    }

    v6 = 0xE700000000000000;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE500000000000000;
        if (v5 != 0x7964616572)
        {
          goto LABEL_43;
        }

        goto LABEL_40;
      }

      v3 = 0x6572676F72506E69;
      v2 = 0xEA00000000007373;
    }

    if (v5 != v3)
    {
LABEL_43:
      v10 = sub_23F588574();
      goto LABEL_44;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v9 = 0xD000000000000019;
    }

    else
    {
      v9 = 0xD00000000000001CLL;
    }

    if (a2 == 5)
    {
      v2 = 0x800000023F590D50;
    }

    else
    {
      v2 = 0x800000023F590F00;
    }

    if (v5 != v9)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v2 = 0xE700000000000000;
    if (a2 == 3)
    {
      if (v5 != 0x73736563637573)
      {
        goto LABEL_43;
      }
    }

    else if (v5 != 0x6572756C696166)
    {
      goto LABEL_43;
    }
  }

LABEL_40:
  if (v6 != v2)
  {
    goto LABEL_43;
  }

  v10 = 1;
LABEL_44:

  return v10 & 1;
}

uint64_t sub_23F58384C()
{
  sub_23F5885F4();
  sub_23F588314();

  return sub_23F588624();
}

uint64_t sub_23F58397C()
{
  sub_23F5885F4();
  sub_23F588314();

  return sub_23F588624();
}

uint64_t sub_23F583A8C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x79726576696C6564;
  }

  else
  {
    v4 = 0x65636E756F6E6E61;
  }

  if (v3)
  {
    v5 = 0xEC000000746E656DLL;
  }

  else
  {
    v5 = 0xEF6572756C696146;
  }

  if (*a2)
  {
    v6 = 0x79726576696C6564;
  }

  else
  {
    v6 = 0x65636E756F6E6E61;
  }

  if (*a2)
  {
    v7 = 0xEF6572756C696146;
  }

  else
  {
    v7 = 0xEC000000746E656DLL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23F588574();
  }

  return v9 & 1;
}

unint64_t sub_23F583B4C()
{
  result = qword_27E39D140;
  if (!qword_27E39D140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39D140);
  }

  return result;
}

uint64_t sub_23F583BA0()
{
  v1 = *v0;
  sub_23F5885F4();
  sub_23F588314();

  return sub_23F588624();
}

uint64_t sub_23F583C38()
{
  *v0;
  sub_23F588314();
}

uint64_t sub_23F583CBC()
{
  v1 = *v0;
  sub_23F5885F4();
  sub_23F588314();

  return sub_23F588624();
}

uint64_t sub_23F583D50@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23F588554();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_23F583DB0(uint64_t *a1@<X8>)
{
  v2 = 0x65636E756F6E6E61;
  if (*v1)
  {
    v2 = 0x79726576696C6564;
  }

  v3 = 0xEC000000746E656DLL;
  if (*v1)
  {
    v3 = 0xEF6572756C696146;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_23F583E08()
{
  result = qword_27E39D148;
  if (!qword_27E39D148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E39D150, &qword_23F58EC40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39D148);
  }

  return result;
}

unint64_t sub_23F583E80()
{
  result = qword_27E39D158;
  if (!qword_27E39D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39D158);
  }

  return result;
}

unint64_t sub_23F583ED8()
{
  result = qword_27E39D160;
  if (!qword_27E39D160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39D160);
  }

  return result;
}

unint64_t sub_23F583F30()
{
  result = qword_27E39D168;
  if (!qword_27E39D168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39D168);
  }

  return result;
}

unint64_t sub_23F583F88()
{
  result = qword_27E39D170;
  if (!qword_27E39D170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39D170);
  }

  return result;
}

unint64_t sub_23F583FDC()
{
  result = qword_27E39D178;
  if (!qword_27E39D178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39D178);
  }

  return result;
}

unint64_t sub_23F584030()
{
  result = qword_27E39D180;
  if (!qword_27E39D180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39D180);
  }

  return result;
}

unint64_t sub_23F584088()
{
  result = qword_27E39D188;
  if (!qword_27E39D188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39D188);
  }

  return result;
}

unint64_t sub_23F584148()
{
  result = qword_27E39D190;
  if (!qword_27E39D190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39D190);
  }

  return result;
}

uint64_t sub_23F58419C(uint64_t a1)
{
  v2 = sub_23F584148();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_23F5841EC()
{
  result = qword_27E39D198;
  if (!qword_27E39D198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39D198);
  }

  return result;
}

unint64_t sub_23F584244()
{
  result = qword_27E39D1A0;
  if (!qword_27E39D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39D1A0);
  }

  return result;
}

unint64_t sub_23F58429C()
{
  result = qword_27E39D1A8;
  if (!qword_27E39D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E39D1A8);
  }

  return result;
}

unint64_t sub_23F5842F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39D1B0, &qword_23F58EE58);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39D1B8, &qword_23F58EE60);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_23F58DDA0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_23F587FB4();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_23F587FB4();
  v7 = sub_23F5861BC(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v7;
}

uint64_t sub_23F584454(uint64_t a1)
{
  v2 = sub_23F584088();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_23F5844B0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_23F588454();

  return sub_23F5848C8(a1, v5);
}

unint64_t sub_23F5844F4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_23F5885F4();
  sub_23F5779F0(a1);
  sub_23F588314();

  v4 = sub_23F588624();

  return sub_23F584990(a1, v4);
}

unint64_t sub_23F58457C(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_23F5885F4();
  sub_23F588314();

  v5 = sub_23F588624();

  return sub_23F584E44(a1 & 1, v5);
}

unint64_t sub_23F584618(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  v4 = sub_23F58384C();

  return sub_23F584F78(a1, v4);
}

unint64_t sub_23F58465C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_23F5885F4();
  sub_23F588314();
  v6 = sub_23F588624();

  return sub_23F585214(a1, a2, v6);
}

unint64_t sub_23F5846D4(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_23F5885F4();
  sub_23F588314();

  v4 = sub_23F588624();

  return sub_23F5852CC(a1, v4);
}

unint64_t sub_23F58480C(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_23F5885F4();
  sub_23F588314();

  v5 = sub_23F588624();

  return sub_23F585520(a1 & 1, v5);
}

unint64_t sub_23F5848C8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_23F574864(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x245CAF8D0](v9, a1);
      sub_23F574810(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_23F584990(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEB00000000646569;
      v8 = 0x6669636570736E75;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE500000000000000;
          v8 = 0x7964616572;
          break;
        case 2:
          v8 = 0x6572676F72506E69;
          v7 = 0xEA00000000007373;
          break;
        case 3:
          v7 = 0xE700000000000000;
          v8 = 0x73736563637573;
          break;
        case 4:
          v7 = 0xE700000000000000;
          v8 = 0x6572756C696166;
          break;
        case 5:
          v8 = 0xD000000000000019;
          v7 = 0x800000023F590D50;
          break;
        case 6:
          v8 = 0xD00000000000001CLL;
          v7 = 0x800000023F590D70;
          break;
        case 7:
          v8 = 0xD000000000000026;
          v7 = 0x800000023F590D90;
          break;
        case 8:
          v8 = 0xD000000000000022;
          v7 = 0x800000023F590DC0;
          break;
        case 9:
          v8 = 0xD00000000000002ALL;
          v7 = 0x800000023F590DF0;
          break;
        case 0xA:
          v8 = 0xD000000000000010;
          v7 = 0x800000023F590E20;
          break;
        case 0xB:
          v8 = 0xD000000000000026;
          v7 = 0x800000023F590E40;
          break;
        case 0xC:
          v8 = 0xD00000000000001DLL;
          v7 = 0x800000023F590E70;
          break;
        case 0xD:
          v8 = 0xD00000000000002BLL;
          v7 = 0x800000023F590E90;
          break;
        case 0xE:
          v8 = 0xD000000000000026;
          v7 = 0x800000023F590EC0;
          break;
        default:
          break;
      }

      v9 = 0x6669636570736E75;
      v10 = 0xEB00000000646569;
      switch(a1)
      {
        case 1:
          v10 = 0xE500000000000000;
          if (v8 == 0x7964616572)
          {
            goto LABEL_45;
          }

          goto LABEL_46;
        case 2:
          v10 = 0xEA00000000007373;
          if (v8 != 0x6572676F72506E69)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 3:
          v10 = 0xE700000000000000;
          if (v8 != 0x73736563637573)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 4:
          v10 = 0xE700000000000000;
          if (v8 != 0x6572756C696166)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 5:
          v10 = 0x800000023F590D50;
          if (v8 != 0xD000000000000019)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 6:
          v10 = 0x800000023F590D70;
          if (v8 != 0xD00000000000001CLL)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 7:
          v10 = 0x800000023F590D90;
          if (v8 != 0xD000000000000026)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 8:
          v10 = 0x800000023F590DC0;
          if (v8 != 0xD000000000000022)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 9:
          v10 = 0x800000023F590DF0;
          if (v8 != 0xD00000000000002ALL)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 10:
          v9 = 0xD000000000000010;
          v10 = 0x800000023F590E20;
          goto LABEL_44;
        case 11:
          v10 = 0x800000023F590E40;
          if (v8 != 0xD000000000000026)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 12:
          v10 = 0x800000023F590E70;
          if (v8 != 0xD00000000000001DLL)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 13:
          v10 = 0x800000023F590E90;
          if (v8 != 0xD00000000000002BLL)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 14:
          v10 = 0x800000023F590EC0;
          if (v8 != 0xD000000000000026)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        default:
LABEL_44:
          if (v8 != v9)
          {
            goto LABEL_46;
          }

LABEL_45:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_46:
          v11 = sub_23F588574();

          if (v11)
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

unint64_t sub_23F584E44(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x746165706572;
    }

    else
    {
      v6 = 1684104562;
    }

    if (a1)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x746165706572 : 1684104562;
      v9 = *(*(v2 + 48) + v4) ? 0xE600000000000000 : 0xE400000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_23F588574();

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

unint64_t sub_23F584F78(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v18 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      if (v6 <= 2)
      {
        if (*(*(v2 + 48) + v4))
        {
          if (v6 == 1)
          {
            v7 = 0x7964616572;
          }

          else
          {
            v7 = 0x6572676F72506E69;
          }

          if (v6 == 1)
          {
            v8 = 0xE500000000000000;
          }

          else
          {
            v8 = 0xEA00000000007373;
          }
        }

        else
        {
          v7 = 0x6669636570736E75;
          v8 = 0xEB00000000646569;
        }
      }

      else if (*(*(v2 + 48) + v4) > 4u)
      {
        if (v6 == 5)
        {
          v7 = 0xD000000000000019;
          v8 = 0x800000023F590D50;
        }

        else
        {
          v7 = 0xD00000000000001CLL;
          v8 = 0x800000023F590F00;
        }
      }

      else
      {
        if (v6 == 3)
        {
          v7 = 0x73736563637573;
        }

        else
        {
          v7 = 0x6572756C696166;
        }

        v8 = 0xE700000000000000;
      }

      v9 = 0xD00000000000001CLL;
      if (v5 == 5)
      {
        v9 = 0xD000000000000019;
        v10 = 0x800000023F590D50;
      }

      else
      {
        v10 = 0x800000023F590F00;
      }

      v11 = 0x73736563637573;
      if (v5 != 3)
      {
        v11 = 0x6572756C696166;
      }

      if (v5 <= 4)
      {
        v9 = v11;
        v10 = 0xE700000000000000;
      }

      v12 = 0x6572676F72506E69;
      if (v5 == 1)
      {
        v12 = 0x7964616572;
      }

      v13 = 0xEA00000000007373;
      if (v5 == 1)
      {
        v13 = 0xE500000000000000;
      }

      if (!v5)
      {
        v12 = 0x6669636570736E75;
        v13 = 0xEB00000000646569;
      }

      v14 = v5 <= 2 ? v12 : v9;
      v15 = v5 <= 2 ? v13 : v10;
      if (v7 == v14 && v8 == v15)
      {
        break;
      }

      v16 = sub_23F588574();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v18;
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

unint64_t sub_23F585214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_23F588574())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23F5852CC(unsigned __int8 a1, uint64_t a2)
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
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v9 = 0xE700000000000000;
          v8 = 0x73736563637573;
        }

        else
        {
          if (v7 == 4)
          {
            v8 = 0x6572756C696166;
          }

          else
          {
            v8 = 0xD000000000000019;
          }

          if (v7 == 4)
          {
            v9 = 0xE700000000000000;
          }

          else
          {
            v9 = 0x800000023F590D50;
          }
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v7 == 1)
        {
          v8 = 0x7964616572;
        }

        else
        {
          v8 = 0x6572676F72506E69;
        }

        if (v7 == 1)
        {
          v9 = 0xE500000000000000;
        }

        else
        {
          v9 = 0xEA00000000007373;
        }
      }

      else
      {
        v8 = 0x6669636570736E75;
        v9 = 0xEB00000000646569;
      }

      v10 = 0xD000000000000019;
      if (v6 == 4)
      {
        v10 = 0x6572756C696166;
        v11 = 0xE700000000000000;
      }

      else
      {
        v11 = 0x800000023F590D50;
      }

      if (v6 == 3)
      {
        v10 = 0x73736563637573;
        v11 = 0xE700000000000000;
      }

      v12 = 0x6572676F72506E69;
      if (v6 == 1)
      {
        v12 = 0x7964616572;
      }

      v13 = 0xEA00000000007373;
      if (v6 == 1)
      {
        v13 = 0xE500000000000000;
      }

      if (!v6)
      {
        v12 = 0x6669636570736E75;
        v13 = 0xEB00000000646569;
      }

      v14 = v6 <= 2 ? v12 : v10;
      v15 = v6 <= 2 ? v13 : v11;
      if (v8 == v14 && v9 == v15)
      {
        break;
      }

      v16 = sub_23F588574();

      if ((v16 & 1) == 0)
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

unint64_t sub_23F585520(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x79726576696C6564;
    }

    else
    {
      v6 = 0x65636E756F6E6E61;
    }

    if (a1)
    {
      v7 = 0xEF6572756C696146;
    }

    else
    {
      v7 = 0xEC000000746E656DLL;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x79726576696C6564 : 0x65636E756F6E6E61;
      v9 = *(*(v2 + 48) + v4) ? 0xEF6572756C696146 : 0xEC000000746E656DLL;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_23F588574();

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

unint64_t sub_23F58567C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39CA20, &qword_23F58EEC0);
    v3 = sub_23F588544();
    v4 = a1 + 32;

    while (1)
    {
      sub_23F57C000(v4, v13, &qword_27E39D1F0, &qword_23F58EEC8);
      result = sub_23F5844B0(v13);
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
      result = sub_23F574800(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23F5857B8(uint64_t a1)
{
  result = a1 & ~(-1 << *(v1 + 32));
  v3 = *(v1 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
}

unint64_t sub_23F5857E4()
{
  v1 = *(v0 + 40);
  sub_23F5885F4();
  sub_23F588314();
  v2 = sub_23F588624();

  return sub_23F5857B8(v2);
}

unint64_t sub_23F585850(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39CAB0, &unk_23F58DA40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v19 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39D1E8, &qword_23F58EEB8);
    v8 = sub_23F588544();
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_23F57C000(v9, v6, &qword_27E39CAB0, &unk_23F58DA40);
      result = sub_23F5857E4();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v14 = *(v8 + 56);
      v15 = sub_23F587FC4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v6, v15);
      v16 = *(v8 + 16);
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      *(v8 + 16) = v18;
      v9 += v10;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23F585A1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39CEE8, &unk_23F58DD90);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39D1E0, &unk_23F58EEA8);
    v8 = sub_23F588544();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_23F57C000(v10, v6, &qword_27E39CEE8, &unk_23F58DD90);
      v12 = *v6;
      result = sub_23F5844F4(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_23F587FC4();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23F585C04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39CF68, &qword_23F58EE90);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39D1D8, &unk_23F58EE98);
    v8 = sub_23F588544();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_23F57C000(v10, v6, &qword_27E39CF68, &qword_23F58EE90);
      v12 = *v6;
      result = sub_23F58457C(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_23F587FC4();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23F585DEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39D000, &qword_23F58E400);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39D1D0, &qword_23F58EE88);
    v8 = sub_23F588544();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_23F57C000(v10, v6, &qword_27E39D000, &qword_23F58E400);
      v12 = *v6;
      result = sub_23F584618(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_23F587FC4();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23F585FD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39D0C8, &qword_23F58E7C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39D1C8, &unk_23F58EE78);
    v8 = sub_23F588544();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_23F57C000(v10, v6, &qword_27E39D0C8, &qword_23F58E7C0);
      v12 = *v6;
      result = sub_23F5846D4(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_23F587FC4();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23F5861BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39D1B8, &qword_23F58EE60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39D1C0, &unk_23F58EE68);
    v8 = sub_23F588544();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_23F57C000(v10, v6, &qword_27E39D1B8, &qword_23F58EE60);
      v12 = *v6;
      result = sub_23F58480C(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_23F587FC4();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_23F5863AC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39D1F8, &unk_23F58EED0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_23F5865F0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F58667C;
  aBlock[3] = &block_descriptor_3;
  v13 = _Block_copy(aBlock);

  [a2 sendRequest:a3 sentHandler:v13];
  _Block_release(v13);
}

void *sub_23F586564(void *result, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39D1F8, &unk_23F58EED0);
    return sub_23F588384();
  }

  else if (result)
  {
    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39D1F8, &unk_23F58EED0);
    return sub_23F588394();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_23F5865F0(void *a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39D1F8, &unk_23F58EED0) - 8) + 80);

  return sub_23F586564(a1, a2);
}

void sub_23F58667C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23F58675C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_23F5881D4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_23F5881C4();
}