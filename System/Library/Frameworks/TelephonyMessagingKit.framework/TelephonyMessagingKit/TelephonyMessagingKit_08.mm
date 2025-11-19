unint64_t sub_1E4B965C4()
{
  result = qword_1ECF96490;
  if (!qword_1ECF96490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96490);
  }

  return result;
}

unint64_t sub_1E4B96618()
{
  result = qword_1ECF96498;
  if (!qword_1ECF96498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96498);
  }

  return result;
}

unint64_t sub_1E4B966C0()
{
  result = qword_1ECF964A8;
  if (!qword_1ECF964A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF964A8);
  }

  return result;
}

unint64_t sub_1E4B9677C()
{
  result = qword_1ECF964B8;
  if (!qword_1ECF964B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF964B8);
  }

  return result;
}

unint64_t sub_1E4B967D0(uint64_t a1)
{
  result = sub_1E4B967F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4B967F8()
{
  result = qword_1EE2BDA50;
  if (!qword_1EE2BDA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BDA50);
  }

  return result;
}

unint64_t sub_1E4B96878()
{
  result = qword_1EE2BDA58;
  if (!qword_1EE2BDA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BDA58);
  }

  return result;
}

unint64_t sub_1E4B968CC()
{
  result = qword_1EE2BDA60[0];
  if (!qword_1EE2BDA60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2BDA60);
  }

  return result;
}

unint64_t sub_1E4B96920(uint64_t a1)
{
  result = sub_1E4B84334();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E4B96974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E4B969B0()
{
  result = qword_1ECF964C8;
  if (!qword_1ECF964C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF964C8);
  }

  return result;
}

unint64_t sub_1E4B96A04()
{
  result = qword_1ECF964D0;
  if (!qword_1ECF964D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF964D0);
  }

  return result;
}

uint64_t sub_1E4B96A58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4B96AA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_1E4B96B18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4B96B60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E4B96BD8()
{
  result = qword_1ECF964D8;
  if (!qword_1ECF964D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF964D8);
  }

  return result;
}

unint64_t sub_1E4B96C30()
{
  result = qword_1ECF964E0;
  if (!qword_1ECF964E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF964E0);
  }

  return result;
}

unint64_t sub_1E4B96C88()
{
  result = qword_1ECF964E8;
  if (!qword_1ECF964E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF964E8);
  }

  return result;
}

unint64_t sub_1E4B96CE0()
{
  result = qword_1ECF964F0;
  if (!qword_1ECF964F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF964F0);
  }

  return result;
}

unint64_t sub_1E4B96D38()
{
  result = qword_1ECF964F8;
  if (!qword_1ECF964F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF964F8);
  }

  return result;
}

unint64_t sub_1E4B96D90()
{
  result = qword_1ECF96500;
  if (!qword_1ECF96500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96500);
  }

  return result;
}

uint64_t sub_1E4B96DE4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E4BF1400 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496567617373656DLL && a2 == 0xE900000000000044 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B6F766552646964 && a2 == 0xE900000000000065 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_1E4BF099C();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1E4B96F70(char a1)
{
  result = 0x534D53646E6573;
  switch(a1)
  {
    case 1:
      v3 = 0x4D53646E6573;
      goto LABEL_15;
    case 2:
      v3 = 0x4D4D646E6573;
      goto LABEL_15;
    case 3:
      return 0x6965636552736D73;
    case 4:
      return 0x6965636552736D6DLL;
    case 5:
      return 0x6972746552736D6DLL;
    case 6:
      return 0x534D4D646E6573;
    case 7:
    case 13:
      return 0xD000000000000014;
    case 8:
      return 0xD000000000000019;
    case 9:
      return 0x534352646E6573;
    case 10:
    case 37:
      return 0xD000000000000017;
    case 11:
      return 0x5265766965636572;
    case 12:
      v3 = 0x4352646E6573;
LABEL_15:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x5253000000000000;
      break;
    case 14:
      result = 0xD000000000000015;
      break;
    case 15:
      result = 0xD000000000000019;
      break;
    case 16:
    case 29:
      result = 0xD000000000000013;
      break;
    case 17:
      result = 0xD000000000000012;
      break;
    case 18:
    case 22:
    case 33:
      result = 0xD000000000000020;
      break;
    case 19:
      result = 0xD000000000000028;
      break;
    case 20:
    case 39:
      result = 0xD000000000000021;
      break;
    case 21:
      result = 0xD000000000000024;
      break;
    case 23:
      result = 0xD000000000000018;
      break;
    case 24:
      result = 0xD000000000000019;
      break;
    case 25:
      result = 0xD000000000000019;
      break;
    case 26:
      result = 0x726F706552736D73;
      break;
    case 27:
      result = 0x726F706552736D6DLL;
      break;
    case 28:
      result = 0x726F706552736372;
      break;
    case 30:
      result = 0xD00000000000001FLL;
      break;
    case 31:
      result = 0xD00000000000001BLL;
      break;
    case 32:
      result = 0xD000000000000025;
      break;
    case 34:
      result = 0xD000000000000023;
      break;
    case 35:
      result = 0xD000000000000010;
      break;
    case 36:
      result = 0xD000000000000011;
      break;
    case 38:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E4B973A0(uint64_t a1)
{
  v2 = sub_1E4B9AAE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B973DC(uint64_t a1)
{
  v2 = sub_1E4B9AAE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B97420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4BA0904(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4B97454(uint64_t a1)
{
  v2 = sub_1E4B9AA94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B97490(uint64_t a1)
{
  v2 = sub_1E4B9AA94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B974CC(uint64_t a1)
{
  v2 = sub_1E4B9AD88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B97508(uint64_t a1)
{
  v2 = sub_1E4B9AD88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B97544(uint64_t a1)
{
  v2 = sub_1E4B9ADDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B97580(uint64_t a1)
{
  v2 = sub_1E4B9ADDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B975BC(uint64_t a1)
{
  v2 = sub_1E4B9B664();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B975F8(uint64_t a1)
{
  v2 = sub_1E4B9B664();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B97634(uint64_t a1)
{
  v2 = sub_1E4B9AED8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B97670(uint64_t a1)
{
  v2 = sub_1E4B9AED8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B976AC(uint64_t a1)
{
  v2 = sub_1E4B9B610();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B976E8(uint64_t a1)
{
  v2 = sub_1E4B9B610();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B97724(uint64_t a1)
{
  v2 = sub_1E4B9B2C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B97760(uint64_t a1)
{
  v2 = sub_1E4B9B2C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B9779C(uint64_t a1)
{
  v2 = sub_1E4B9B370();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B977D8(uint64_t a1)
{
  v2 = sub_1E4B9B370();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B97814(uint64_t a1)
{
  v2 = sub_1E4B9B31C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B97850(uint64_t a1)
{
  v2 = sub_1E4B9B31C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B9788C(uint64_t a1)
{
  v2 = sub_1E4B9B274();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B978C8(uint64_t a1)
{
  v2 = sub_1E4B9B274();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B97904(uint64_t a1)
{
  v2 = sub_1E4B9ACE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B97940(uint64_t a1)
{
  v2 = sub_1E4B9ACE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B9797C(uint64_t a1)
{
  v2 = sub_1E4B9AD34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B979B8(uint64_t a1)
{
  v2 = sub_1E4B9AD34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B979F4(uint64_t a1)
{
  v2 = sub_1E4B9AC8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B97A30(uint64_t a1)
{
  v2 = sub_1E4B9AC8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B97A6C(uint64_t a1)
{
  v2 = sub_1E4B9AB90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B97AA8(uint64_t a1)
{
  v2 = sub_1E4B9AB90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B97AE4(uint64_t a1)
{
  v2 = sub_1E4B9B124();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B97B20(uint64_t a1)
{
  v2 = sub_1E4B9B124();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B97B5C(uint64_t a1)
{
  v2 = sub_1E4B9B07C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B97B98(uint64_t a1)
{
  v2 = sub_1E4B9B07C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B97BD4(uint64_t a1)
{
  v2 = sub_1E4B9AFD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B97C10(uint64_t a1)
{
  v2 = sub_1E4B9AFD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B97C4C(uint64_t a1)
{
  v2 = sub_1E4B9B028();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B97C88(uint64_t a1)
{
  v2 = sub_1E4B9B028();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B97CC4(uint64_t a1)
{
  v2 = sub_1E4B9B1CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B97D00(uint64_t a1)
{
  v2 = sub_1E4B9B1CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B97D3C(uint64_t a1)
{
  v2 = sub_1E4B9B178();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B97D78(uint64_t a1)
{
  v2 = sub_1E4B9B178();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B97DB4(uint64_t a1)
{
  v2 = sub_1E4B9B0D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B97DF0(uint64_t a1)
{
  v2 = sub_1E4B9B0D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B97E2C(uint64_t a1)
{
  v2 = sub_1E4B9B46C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B97E68(uint64_t a1)
{
  v2 = sub_1E4B9B46C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B97EA4(uint64_t a1)
{
  v2 = sub_1E4B9AE84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B97EE0(uint64_t a1)
{
  v2 = sub_1E4B9AE84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B97F1C(uint64_t a1)
{
  v2 = sub_1E4B9AE30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B97F58(uint64_t a1)
{
  v2 = sub_1E4B9AE30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B97F94(uint64_t a1)
{
  v2 = sub_1E4B9AC38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B97FD0(uint64_t a1)
{
  v2 = sub_1E4B9AC38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B9800C(uint64_t a1)
{
  v2 = sub_1E4B9ABE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B98048(uint64_t a1)
{
  v2 = sub_1E4B9ABE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B98084(uint64_t a1)
{
  v2 = sub_1E4B9B418();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B980C0(uint64_t a1)
{
  v2 = sub_1E4B9B418();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B980FC(uint64_t a1)
{
  v2 = sub_1E4B9B5BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B98138(uint64_t a1)
{
  v2 = sub_1E4B9B5BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B98174(uint64_t a1)
{
  v2 = sub_1E4B9B70C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B981B0(uint64_t a1)
{
  v2 = sub_1E4B9B70C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B981EC(uint64_t a1)
{
  v2 = sub_1E4B9B4C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B98228(uint64_t a1)
{
  v2 = sub_1E4B9B4C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B98264(uint64_t a1)
{
  v2 = sub_1E4B9AB3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B982A0(uint64_t a1)
{
  v2 = sub_1E4B9AB3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B982DC(uint64_t a1)
{
  v2 = sub_1E4B9B220();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B98318(uint64_t a1)
{
  v2 = sub_1E4B9B220();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B98354(uint64_t a1)
{
  v2 = sub_1E4B9B3C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B98390(uint64_t a1)
{
  v2 = sub_1E4B9B3C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B983CC(uint64_t a1)
{
  v2 = sub_1E4B9AF80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B98408(uint64_t a1)
{
  v2 = sub_1E4B9AF80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B98444(uint64_t a1)
{
  v2 = sub_1E4B9B7B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B98480(uint64_t a1)
{
  v2 = sub_1E4B9B7B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B984BC(uint64_t a1)
{
  v2 = sub_1E4B9B760();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B984F8(uint64_t a1)
{
  v2 = sub_1E4B9B760();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B98534(uint64_t a1)
{
  v2 = sub_1E4B9B514();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B98570(uint64_t a1)
{
  v2 = sub_1E4B9B514();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B985AC(uint64_t a1)
{
  v2 = sub_1E4B9B568();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B985E8(uint64_t a1)
{
  v2 = sub_1E4B9B568();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B98624(uint64_t a1)
{
  v2 = sub_1E4B9B6B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B98660(uint64_t a1)
{
  v2 = sub_1E4B9B6B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B9869C(uint64_t a1)
{
  v2 = sub_1E4B9AF2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B986D8(uint64_t a1)
{
  v2 = sub_1E4B9AF2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Messaging.MessageID.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96508, &qword_1E4C10970);
  v259 = *(v4 - 8);
  v260 = v4;
  v5 = *(v259 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v258 = &v143 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96510, &qword_1E4C10978);
  v256 = *(v7 - 8);
  v257 = v7;
  v8 = *(v256 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v255 = &v143 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96518, &qword_1E4C10980);
  v253 = *(v10 - 8);
  v254 = v10;
  v11 = *(v253 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v252 = &v143 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96520, &qword_1E4C10988);
  v250 = *(v13 - 8);
  v251 = v13;
  v14 = *(v250 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v249 = &v143 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96528, &qword_1E4C10990);
  v247 = *(v16 - 8);
  v248 = v16;
  v17 = *(v247 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v246 = &v143 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96530, &qword_1E4C10998);
  v244 = *(v19 - 8);
  v245 = v19;
  v20 = *(v244 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v243 = &v143 - v21;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96538, &qword_1E4C109A0);
  v241 = *(v242 - 8);
  v22 = *(v241 + 64);
  MEMORY[0x1EEE9AC00](v242);
  v240 = &v143 - v23;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96540, &qword_1E4C109A8);
  v238 = *(v239 - 8);
  v24 = *(v238 + 64);
  MEMORY[0x1EEE9AC00](v239);
  v237 = &v143 - v25;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96548, &qword_1E4C109B0);
  v235 = *(v236 - 8);
  v26 = *(v235 + 64);
  MEMORY[0x1EEE9AC00](v236);
  v234 = &v143 - v27;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96550, &qword_1E4C109B8);
  v232 = *(v233 - 8);
  v28 = *(v232 + 64);
  MEMORY[0x1EEE9AC00](v233);
  v231 = &v143 - v29;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96558, &qword_1E4C109C0);
  v229 = *(v230 - 8);
  v30 = *(v229 + 64);
  MEMORY[0x1EEE9AC00](v230);
  v228 = &v143 - v31;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96560, &qword_1E4C109C8);
  v226 = *(v227 - 8);
  v32 = *(v226 + 64);
  MEMORY[0x1EEE9AC00](v227);
  v225 = &v143 - v33;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96568, &qword_1E4C109D0);
  v223 = *(v224 - 8);
  v34 = *(v223 + 64);
  MEMORY[0x1EEE9AC00](v224);
  v222 = &v143 - v35;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96570, &qword_1E4C109D8);
  v220 = *(v221 - 8);
  v36 = *(v220 + 64);
  MEMORY[0x1EEE9AC00](v221);
  v219 = &v143 - v37;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96578, &qword_1E4C109E0);
  v217 = *(v218 - 8);
  v38 = *(v217 + 64);
  MEMORY[0x1EEE9AC00](v218);
  v216 = &v143 - v39;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96580, &qword_1E4C109E8);
  v214 = *(v215 - 8);
  v40 = *(v214 + 64);
  MEMORY[0x1EEE9AC00](v215);
  v213 = &v143 - v41;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96588, &qword_1E4C109F0);
  v211 = *(v212 - 8);
  v42 = *(v211 + 64);
  MEMORY[0x1EEE9AC00](v212);
  v210 = &v143 - v43;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96590, &qword_1E4C109F8);
  v208 = *(v209 - 8);
  v44 = *(v208 + 64);
  MEMORY[0x1EEE9AC00](v209);
  v207 = &v143 - v45;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96598, &qword_1E4C10A00);
  v205 = *(v206 - 8);
  v46 = *(v205 + 64);
  MEMORY[0x1EEE9AC00](v206);
  v204 = &v143 - v47;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF965A0, &qword_1E4C10A08);
  v202 = *(v203 - 8);
  v48 = *(v202 + 64);
  MEMORY[0x1EEE9AC00](v203);
  v201 = &v143 - v49;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF965A8, &qword_1E4C10A10);
  v199 = *(v200 - 8);
  v50 = *(v199 + 64);
  MEMORY[0x1EEE9AC00](v200);
  v198 = &v143 - v51;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF965B0, &qword_1E4C10A18);
  v196 = *(v197 - 8);
  v52 = *(v196 + 64);
  MEMORY[0x1EEE9AC00](v197);
  v195 = &v143 - v53;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF965B8, &qword_1E4C10A20);
  v193 = *(v194 - 8);
  v54 = *(v193 + 64);
  MEMORY[0x1EEE9AC00](v194);
  v192 = &v143 - v55;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF965C0, &qword_1E4C10A28);
  v190 = *(v191 - 8);
  v56 = *(v190 + 64);
  MEMORY[0x1EEE9AC00](v191);
  v189 = &v143 - v57;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF965C8, &qword_1E4C10A30);
  v187 = *(v188 - 8);
  v58 = *(v187 + 64);
  MEMORY[0x1EEE9AC00](v188);
  v186 = &v143 - v59;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF965D0, &qword_1E4C10A38);
  v184 = *(v185 - 8);
  v60 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v185);
  v183 = &v143 - v61;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF965D8, &qword_1E4C10A40);
  v181 = *(v182 - 8);
  v62 = *(v181 + 64);
  MEMORY[0x1EEE9AC00](v182);
  v180 = &v143 - v63;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF965E0, &qword_1E4C10A48);
  v178 = *(v179 - 8);
  v64 = *(v178 + 64);
  MEMORY[0x1EEE9AC00](v179);
  v177 = &v143 - v65;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF965E8, &qword_1E4C10A50);
  v175 = *(v176 - 8);
  v66 = *(v175 + 64);
  MEMORY[0x1EEE9AC00](v176);
  v174 = &v143 - v67;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF965F0, &qword_1E4C10A58);
  v172 = *(v173 - 8);
  v68 = *(v172 + 64);
  MEMORY[0x1EEE9AC00](v173);
  v171 = &v143 - v69;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF965F8, &qword_1E4C10A60);
  v169 = *(v170 - 8);
  v70 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v170);
  v168 = &v143 - v71;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96600, &qword_1E4C10A68);
  v166 = *(v167 - 8);
  v72 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v167);
  v165 = &v143 - v73;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96608, &qword_1E4C10A70);
  v163 = *(v164 - 8);
  v74 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v164);
  v162 = &v143 - v75;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96610, &qword_1E4C10A78);
  v160 = *(v161 - 8);
  v76 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v161);
  v159 = &v143 - v77;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96618, &qword_1E4C10A80);
  v157 = *(v158 - 8);
  v78 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v158);
  v156 = &v143 - v79;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96620, &qword_1E4C10A88);
  v154 = *(v155 - 8);
  v80 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v155);
  v153 = &v143 - v81;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96628, &qword_1E4C10A90);
  v151 = *(v152 - 8);
  v82 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v152);
  v150 = &v143 - v83;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96630, &qword_1E4C10A98);
  v148 = *(v149 - 8);
  v84 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v149);
  v147 = &v143 - v85;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96638, &qword_1E4C10AA0);
  v145 = *(v146 - 8);
  v86 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v146);
  v88 = &v143 - v87;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96640, &qword_1E4C10AA8);
  v144 = *(v89 - 8);
  v90 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v92 = &v143 - v91;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96648, &qword_1E4C10AB0);
  v93 = *(v262 - 8);
  v94 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v262);
  v96 = &v143 - v95;
  v97 = *v2;
  v98 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B9AA94();
  v261 = v96;
  sub_1E4BF0ACC();
  v99 = (v93 + 8);
  switch(v97)
  {
    case 1:
      v264 = 1;
      sub_1E4B9B760();
      v105 = v261;
      v104 = v262;
      sub_1E4BF08BC();
      v109 = *(v145 + 8);
      v110 = v88;
      v111 = &v178;
      goto LABEL_43;
    case 2:
      v264 = 2;
      sub_1E4B9B70C();
      v121 = v147;
      v105 = v261;
      v104 = v262;
      sub_1E4BF08BC();
      v109 = *(v148 + 8);
      v110 = v121;
      v111 = &v181;
      goto LABEL_43;
    case 3:
      v264 = 3;
      sub_1E4B9B6B8();
      v123 = v150;
      v105 = v261;
      v104 = v262;
      sub_1E4BF08BC();
      v109 = *(v151 + 8);
      v110 = v123;
      v111 = &v184;
      goto LABEL_43;
    case 4:
      v264 = 4;
      sub_1E4B9B664();
      v116 = v153;
      v105 = v261;
      v104 = v262;
      sub_1E4BF08BC();
      v109 = *(v154 + 8);
      v110 = v116;
      v111 = &v187;
      goto LABEL_43;
    case 5:
      v264 = 5;
      sub_1E4B9B610();
      v128 = v156;
      v105 = v261;
      v104 = v262;
      sub_1E4BF08BC();
      v109 = *(v157 + 8);
      v110 = v128;
      v111 = &v190;
      goto LABEL_43;
    case 6:
      v264 = 6;
      sub_1E4B9B5BC();
      v131 = v159;
      v105 = v261;
      v104 = v262;
      sub_1E4BF08BC();
      v109 = *(v160 + 8);
      v110 = v131;
      v111 = &v193;
      goto LABEL_43;
    case 7:
      v264 = 7;
      sub_1E4B9B568();
      v124 = v162;
      v105 = v261;
      v104 = v262;
      sub_1E4BF08BC();
      v109 = *(v163 + 8);
      v110 = v124;
      v111 = &v196;
      goto LABEL_43;
    case 8:
      v264 = 8;
      sub_1E4B9B514();
      v134 = v165;
      v105 = v261;
      v104 = v262;
      sub_1E4BF08BC();
      v109 = *(v166 + 8);
      v110 = v134;
      v111 = &v199;
      goto LABEL_43;
    case 9:
      v264 = 9;
      sub_1E4B9B4C0();
      v118 = v168;
      v105 = v261;
      v104 = v262;
      sub_1E4BF08BC();
      v109 = *(v169 + 8);
      v110 = v118;
      v111 = &v202;
      goto LABEL_43;
    case 10:
      v264 = 10;
      sub_1E4B9B46C();
      v133 = v171;
      v105 = v261;
      v104 = v262;
      sub_1E4BF08BC();
      v109 = *(v172 + 8);
      v110 = v133;
      v111 = &v205;
      goto LABEL_43;
    case 11:
      v264 = 11;
      sub_1E4B9B418();
      v115 = v174;
      v105 = v261;
      v104 = v262;
      sub_1E4BF08BC();
      v109 = *(v175 + 8);
      v110 = v115;
      v111 = &v208;
      goto LABEL_43;
    case 12:
      v264 = 12;
      sub_1E4B9B3C4();
      v117 = v177;
      v105 = v261;
      v104 = v262;
      sub_1E4BF08BC();
      v109 = *(v178 + 8);
      v110 = v117;
      v111 = &v211;
      goto LABEL_43;
    case 13:
      v264 = 13;
      sub_1E4B9B370();
      v130 = v180;
      v105 = v261;
      v104 = v262;
      sub_1E4BF08BC();
      v109 = *(v181 + 8);
      v110 = v130;
      v111 = &v214;
      goto LABEL_43;
    case 14:
      v264 = 14;
      sub_1E4B9B31C();
      v113 = v183;
      v105 = v261;
      v104 = v262;
      sub_1E4BF08BC();
      v109 = *(v184 + 8);
      v110 = v113;
      v111 = &v217;
      goto LABEL_43;
    case 15:
      v264 = 15;
      sub_1E4B9B2C8();
      v122 = v186;
      v105 = v261;
      v104 = v262;
      sub_1E4BF08BC();
      v109 = *(v187 + 8);
      v110 = v122;
      v111 = &v220;
      goto LABEL_43;
    case 16:
      v264 = 16;
      sub_1E4B9B274();
      v112 = v189;
      v105 = v261;
      v104 = v262;
      sub_1E4BF08BC();
      v109 = *(v190 + 8);
      v110 = v112;
      v111 = &v223;
      goto LABEL_43;
    case 17:
      v264 = 17;
      sub_1E4B9B220();
      v126 = v192;
      v105 = v261;
      v104 = v262;
      sub_1E4BF08BC();
      v109 = *(v193 + 8);
      v110 = v126;
      v111 = &v226;
      goto LABEL_43;
    case 18:
      v264 = 18;
      sub_1E4B9B1CC();
      v132 = v195;
      v105 = v261;
      v104 = v262;
      sub_1E4BF08BC();
      v109 = *(v196 + 8);
      v110 = v132;
      v111 = &v229;
      goto LABEL_43;
    case 19:
      v264 = 19;
      sub_1E4B9B178();
      v138 = v198;
      v105 = v261;
      v104 = v262;
      sub_1E4BF08BC();
      v109 = *(v199 + 8);
      v110 = v138;
      v111 = &v232;
      goto LABEL_43;
    case 20:
      v264 = 20;
      sub_1E4B9B124();
      v127 = v201;
      v105 = v261;
      v104 = v262;
      sub_1E4BF08BC();
      v109 = *(v202 + 8);
      v110 = v127;
      v111 = &v235;
      goto LABEL_43;
    case 21:
      v264 = 21;
      sub_1E4B9B0D0();
      v129 = v204;
      v105 = v261;
      v104 = v262;
      sub_1E4BF08BC();
      v109 = *(v205 + 8);
      v110 = v129;
      v111 = &v238;
      goto LABEL_43;
    case 22:
      v264 = 22;
      sub_1E4B9B07C();
      v137 = v207;
      v105 = v261;
      v104 = v262;
      sub_1E4BF08BC();
      v109 = *(v208 + 8);
      v110 = v137;
      v111 = &v241;
      goto LABEL_43;
    case 23:
      v264 = 23;
      sub_1E4B9B028();
      v139 = v210;
      v105 = v261;
      v104 = v262;
      sub_1E4BF08BC();
      v109 = *(v211 + 8);
      v110 = v139;
      v111 = &v244;
      goto LABEL_43;
    case 24:
      v264 = 24;
      sub_1E4B9AFD4();
      v120 = v213;
      v105 = v261;
      v104 = v262;
      sub_1E4BF08BC();
      v109 = *(v214 + 8);
      v110 = v120;
      v111 = &v247;
      goto LABEL_43;
    case 25:
      v264 = 25;
      sub_1E4B9AF80();
      v119 = v216;
      v105 = v261;
      v104 = v262;
      sub_1E4BF08BC();
      v109 = *(v217 + 8);
      v110 = v119;
      v111 = &v250;
      goto LABEL_43;
    case 26:
      v264 = 26;
      sub_1E4B9AF2C();
      v142 = v219;
      v105 = v261;
      v104 = v262;
      sub_1E4BF08BC();
      v109 = *(v220 + 8);
      v110 = v142;
      v111 = &v253;
      goto LABEL_43;
    case 27:
      v264 = 27;
      sub_1E4B9AED8();
      v108 = v222;
      v105 = v261;
      v104 = v262;
      sub_1E4BF08BC();
      v109 = *(v223 + 8);
      v110 = v108;
      v111 = &v256;
      goto LABEL_43;
    case 28:
      v264 = 28;
      sub_1E4B9AE84();
      v140 = v225;
      v105 = v261;
      v104 = v262;
      sub_1E4BF08BC();
      v109 = *(v226 + 8);
      v110 = v140;
      v111 = &v259;
      goto LABEL_43;
    case 29:
      v264 = 29;
      sub_1E4B9AE30();
      v141 = v228;
      v105 = v261;
      v104 = v262;
      sub_1E4BF08BC();
      v109 = *(v229 + 8);
      v110 = v141;
      v111 = &v262;
      goto LABEL_43;
    case 30:
      v264 = 30;
      sub_1E4B9ADDC();
      v135 = v231;
      v105 = v261;
      v104 = v262;
      sub_1E4BF08BC();
      v109 = *(v232 + 8);
      v110 = v135;
      v111 = &v263;
      goto LABEL_43;
    case 31:
      v264 = 31;
      sub_1E4B9AD88();
      v125 = v234;
      v105 = v261;
      v104 = v262;
      sub_1E4BF08BC();
      v109 = *(v235 + 8);
      v110 = v125;
      v111 = &v265;
      goto LABEL_43;
    case 32:
      v264 = 32;
      sub_1E4B9AD34();
      v136 = v237;
      v105 = v261;
      v104 = v262;
      sub_1E4BF08BC();
      v109 = *(v238 + 8);
      v110 = v136;
      v111 = &v266;
      goto LABEL_43;
    case 33:
      v264 = 33;
      sub_1E4B9ACE0();
      v114 = v240;
      v105 = v261;
      v104 = v262;
      sub_1E4BF08BC();
      v109 = *(v241 + 8);
      v110 = v114;
      v111 = &v267;
LABEL_43:
      v109(v110, *(v111 - 32));
      goto LABEL_44;
    case 34:
      v264 = 34;
      sub_1E4B9AC8C();
      v103 = v243;
      v105 = v261;
      v104 = v262;
      sub_1E4BF08BC();
      v107 = v244;
      v106 = v245;
      goto LABEL_41;
    case 35:
      v264 = 35;
      sub_1E4B9AC38();
      v103 = v246;
      v105 = v261;
      v104 = v262;
      sub_1E4BF08BC();
      v107 = v247;
      v106 = v248;
      goto LABEL_41;
    case 36:
      v264 = 36;
      sub_1E4B9ABE4();
      v103 = v249;
      v105 = v261;
      v104 = v262;
      sub_1E4BF08BC();
      v107 = v250;
      v106 = v251;
      goto LABEL_41;
    case 37:
      v264 = 37;
      sub_1E4B9AB90();
      v103 = v252;
      v105 = v261;
      v104 = v262;
      sub_1E4BF08BC();
      v107 = v253;
      v106 = v254;
      goto LABEL_41;
    case 38:
      v264 = 38;
      sub_1E4B9AB3C();
      v103 = v255;
      v105 = v261;
      v104 = v262;
      sub_1E4BF08BC();
      v107 = v256;
      v106 = v257;
      goto LABEL_41;
    case 39:
      v264 = 39;
      sub_1E4B9AAE8();
      v103 = v258;
      v105 = v261;
      v104 = v262;
      sub_1E4BF08BC();
      v107 = v259;
      v106 = v260;
LABEL_41:
      (*(v107 + 8))(v103, v106);
LABEL_44:
      result = (*v99)(v105, v104);
      break;
    default:
      v264 = 0;
      sub_1E4B9B7B4();
      v100 = v261;
      v101 = v262;
      sub_1E4BF08BC();
      (*(v144 + 8))(v92, v89);
      result = (*v99)(v100, v101);
      break;
  }

  return result;
}

unint64_t sub_1E4B9AA94()
{
  result = qword_1ECF96650;
  if (!qword_1ECF96650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96650);
  }

  return result;
}

unint64_t sub_1E4B9AAE8()
{
  result = qword_1ECF96658;
  if (!qword_1ECF96658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96658);
  }

  return result;
}

unint64_t sub_1E4B9AB3C()
{
  result = qword_1ECF96660;
  if (!qword_1ECF96660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96660);
  }

  return result;
}

unint64_t sub_1E4B9AB90()
{
  result = qword_1ECF96668;
  if (!qword_1ECF96668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96668);
  }

  return result;
}

unint64_t sub_1E4B9ABE4()
{
  result = qword_1ECF96670;
  if (!qword_1ECF96670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96670);
  }

  return result;
}

unint64_t sub_1E4B9AC38()
{
  result = qword_1ECF96678;
  if (!qword_1ECF96678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96678);
  }

  return result;
}

unint64_t sub_1E4B9AC8C()
{
  result = qword_1ECF96680;
  if (!qword_1ECF96680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96680);
  }

  return result;
}

unint64_t sub_1E4B9ACE0()
{
  result = qword_1ECF96688;
  if (!qword_1ECF96688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96688);
  }

  return result;
}

unint64_t sub_1E4B9AD34()
{
  result = qword_1ECF96690;
  if (!qword_1ECF96690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96690);
  }

  return result;
}

unint64_t sub_1E4B9AD88()
{
  result = qword_1ECF96698;
  if (!qword_1ECF96698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96698);
  }

  return result;
}

unint64_t sub_1E4B9ADDC()
{
  result = qword_1ECF966A0;
  if (!qword_1ECF966A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF966A0);
  }

  return result;
}

unint64_t sub_1E4B9AE30()
{
  result = qword_1ECF966A8;
  if (!qword_1ECF966A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF966A8);
  }

  return result;
}

unint64_t sub_1E4B9AE84()
{
  result = qword_1ECF966B0;
  if (!qword_1ECF966B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF966B0);
  }

  return result;
}

unint64_t sub_1E4B9AED8()
{
  result = qword_1ECF966B8;
  if (!qword_1ECF966B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF966B8);
  }

  return result;
}

unint64_t sub_1E4B9AF2C()
{
  result = qword_1ECF966C0;
  if (!qword_1ECF966C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF966C0);
  }

  return result;
}

unint64_t sub_1E4B9AF80()
{
  result = qword_1ECF966C8;
  if (!qword_1ECF966C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF966C8);
  }

  return result;
}

unint64_t sub_1E4B9AFD4()
{
  result = qword_1ECF966D0;
  if (!qword_1ECF966D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF966D0);
  }

  return result;
}

unint64_t sub_1E4B9B028()
{
  result = qword_1ECF966D8;
  if (!qword_1ECF966D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF966D8);
  }

  return result;
}

unint64_t sub_1E4B9B07C()
{
  result = qword_1ECF966E0;
  if (!qword_1ECF966E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF966E0);
  }

  return result;
}

unint64_t sub_1E4B9B0D0()
{
  result = qword_1ECF966E8;
  if (!qword_1ECF966E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF966E8);
  }

  return result;
}

unint64_t sub_1E4B9B124()
{
  result = qword_1ECF966F0;
  if (!qword_1ECF966F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF966F0);
  }

  return result;
}

unint64_t sub_1E4B9B178()
{
  result = qword_1ECF966F8;
  if (!qword_1ECF966F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF966F8);
  }

  return result;
}

unint64_t sub_1E4B9B1CC()
{
  result = qword_1ECF96700;
  if (!qword_1ECF96700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96700);
  }

  return result;
}

unint64_t sub_1E4B9B220()
{
  result = qword_1ECF96708;
  if (!qword_1ECF96708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96708);
  }

  return result;
}

unint64_t sub_1E4B9B274()
{
  result = qword_1ECF96710;
  if (!qword_1ECF96710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96710);
  }

  return result;
}

unint64_t sub_1E4B9B2C8()
{
  result = qword_1ECF96718;
  if (!qword_1ECF96718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96718);
  }

  return result;
}

unint64_t sub_1E4B9B31C()
{
  result = qword_1ECF96720;
  if (!qword_1ECF96720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96720);
  }

  return result;
}

unint64_t sub_1E4B9B370()
{
  result = qword_1ECF96728;
  if (!qword_1ECF96728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96728);
  }

  return result;
}

unint64_t sub_1E4B9B3C4()
{
  result = qword_1ECF96730;
  if (!qword_1ECF96730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96730);
  }

  return result;
}

unint64_t sub_1E4B9B418()
{
  result = qword_1ECF96738;
  if (!qword_1ECF96738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96738);
  }

  return result;
}

unint64_t sub_1E4B9B46C()
{
  result = qword_1ECF96740;
  if (!qword_1ECF96740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96740);
  }

  return result;
}

unint64_t sub_1E4B9B4C0()
{
  result = qword_1ECF96748;
  if (!qword_1ECF96748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96748);
  }

  return result;
}

unint64_t sub_1E4B9B514()
{
  result = qword_1ECF96750;
  if (!qword_1ECF96750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96750);
  }

  return result;
}

unint64_t sub_1E4B9B568()
{
  result = qword_1ECF96758;
  if (!qword_1ECF96758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96758);
  }

  return result;
}

unint64_t sub_1E4B9B5BC()
{
  result = qword_1ECF96760;
  if (!qword_1ECF96760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96760);
  }

  return result;
}

unint64_t sub_1E4B9B610()
{
  result = qword_1ECF96768;
  if (!qword_1ECF96768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96768);
  }

  return result;
}

unint64_t sub_1E4B9B664()
{
  result = qword_1ECF96770;
  if (!qword_1ECF96770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96770);
  }

  return result;
}

unint64_t sub_1E4B9B6B8()
{
  result = qword_1ECF96778;
  if (!qword_1ECF96778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96778);
  }

  return result;
}

unint64_t sub_1E4B9B70C()
{
  result = qword_1ECF96780;
  if (!qword_1ECF96780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96780);
  }

  return result;
}

unint64_t sub_1E4B9B760()
{
  result = qword_1ECF96788;
  if (!qword_1ECF96788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96788);
  }

  return result;
}

unint64_t sub_1E4B9B7B4()
{
  result = qword_1ECF96790;
  if (!qword_1ECF96790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96790);
  }

  return result;
}

uint64_t Messaging.MessageID.hashValue.getter()
{
  v1 = *v0;
  sub_1E4BF0A6C();
  MEMORY[0x1E69210C0](v1);
  return sub_1E4BF0A9C();
}

uint64_t Messaging.MessageID.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v310 = a2;
  v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96798, &qword_1E4C10AB8);
  v270 = *(v309 - 8);
  v3 = *(v270 + 64);
  MEMORY[0x1EEE9AC00](v309);
  v305 = &v188 - v4;
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF967A0, &qword_1E4C10AC0);
  v268 = *(v269 - 8);
  v5 = *(v268 + 64);
  MEMORY[0x1EEE9AC00](v269);
  v304 = &v188 - v6;
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF967A8, &qword_1E4C10AC8);
  v266 = *(v267 - 8);
  v7 = *(v266 + 64);
  MEMORY[0x1EEE9AC00](v267);
  v303 = &v188 - v8;
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF967B0, &qword_1E4C10AD0);
  v264 = *(v265 - 8);
  v9 = *(v264 + 64);
  MEMORY[0x1EEE9AC00](v265);
  v302 = &v188 - v10;
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF967B8, &qword_1E4C10AD8);
  v262 = *(v263 - 8);
  v11 = *(v262 + 64);
  MEMORY[0x1EEE9AC00](v263);
  v301 = &v188 - v12;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF967C0, &qword_1E4C10AE0);
  v260 = *(v261 - 8);
  v13 = *(v260 + 64);
  MEMORY[0x1EEE9AC00](v261);
  v300 = &v188 - v14;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF967C8, &qword_1E4C10AE8);
  v258 = *(v259 - 8);
  v15 = *(v258 + 64);
  MEMORY[0x1EEE9AC00](v259);
  v299 = &v188 - v16;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF967D0, &qword_1E4C10AF0);
  v256 = *(v257 - 8);
  v17 = *(v256 + 64);
  MEMORY[0x1EEE9AC00](v257);
  v298 = &v188 - v18;
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF967D8, &qword_1E4C10AF8);
  v254 = *(v255 - 8);
  v19 = *(v254 + 64);
  MEMORY[0x1EEE9AC00](v255);
  v297 = &v188 - v20;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF967E0, &qword_1E4C10B00);
  v252 = *(v253 - 8);
  v21 = *(v252 + 64);
  MEMORY[0x1EEE9AC00](v253);
  v296 = &v188 - v22;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF967E8, &qword_1E4C10B08);
  v250 = *(v251 - 8);
  v23 = *(v250 + 64);
  MEMORY[0x1EEE9AC00](v251);
  v295 = &v188 - v24;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF967F0, &qword_1E4C10B10);
  v248 = *(v249 - 8);
  v25 = *(v248 + 64);
  MEMORY[0x1EEE9AC00](v249);
  v294 = &v188 - v26;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF967F8, &qword_1E4C10B18);
  v246 = *(v247 - 8);
  v27 = *(v246 + 64);
  MEMORY[0x1EEE9AC00](v247);
  v293 = &v188 - v28;
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96800, &qword_1E4C10B20);
  v244 = *(v245 - 8);
  v29 = *(v244 + 64);
  MEMORY[0x1EEE9AC00](v245);
  v292 = &v188 - v30;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96808, &qword_1E4C10B28);
  v242 = *(v243 - 8);
  v31 = *(v242 + 64);
  MEMORY[0x1EEE9AC00](v243);
  v291 = &v188 - v32;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96810, &qword_1E4C10B30);
  v240 = *(v241 - 8);
  v33 = *(v240 + 64);
  MEMORY[0x1EEE9AC00](v241);
  v290 = &v188 - v34;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96818, &qword_1E4C10B38);
  v238 = *(v239 - 8);
  v35 = *(v238 + 64);
  MEMORY[0x1EEE9AC00](v239);
  v289 = &v188 - v36;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96820, &qword_1E4C10B40);
  v236 = *(v237 - 8);
  v37 = *(v236 + 64);
  MEMORY[0x1EEE9AC00](v237);
  v288 = &v188 - v38;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96828, &qword_1E4C10B48);
  v234 = *(v235 - 8);
  v39 = *(v234 + 64);
  MEMORY[0x1EEE9AC00](v235);
  v287 = &v188 - v40;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96830, &qword_1E4C10B50);
  v232 = *(v233 - 8);
  v41 = *(v232 + 64);
  MEMORY[0x1EEE9AC00](v233);
  v286 = &v188 - v42;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96838, &qword_1E4C10B58);
  v230 = *(v231 - 8);
  v43 = *(v230 + 64);
  MEMORY[0x1EEE9AC00](v231);
  v285 = &v188 - v44;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96840, &qword_1E4C10B60);
  v228 = *(v229 - 8);
  v45 = *(v228 + 64);
  MEMORY[0x1EEE9AC00](v229);
  v284 = &v188 - v46;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96848, &qword_1E4C10B68);
  v226 = *(v227 - 8);
  v47 = *(v226 + 64);
  MEMORY[0x1EEE9AC00](v227);
  v283 = &v188 - v48;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96850, &qword_1E4C10B70);
  v224 = *(v225 - 8);
  v49 = *(v224 + 64);
  MEMORY[0x1EEE9AC00](v225);
  v282 = &v188 - v50;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96858, &qword_1E4C10B78);
  v222 = *(v223 - 8);
  v51 = *(v222 + 64);
  MEMORY[0x1EEE9AC00](v223);
  v281 = &v188 - v52;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96860, &qword_1E4C10B80);
  v220 = *(v221 - 8);
  v53 = *(v220 + 64);
  MEMORY[0x1EEE9AC00](v221);
  v280 = &v188 - v54;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96868, &qword_1E4C10B88);
  v218 = *(v219 - 8);
  v55 = *(v218 + 64);
  MEMORY[0x1EEE9AC00](v219);
  v279 = &v188 - v56;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96870, &qword_1E4C10B90);
  v216 = *(v217 - 8);
  v57 = *(v216 + 64);
  MEMORY[0x1EEE9AC00](v217);
  v278 = &v188 - v58;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96878, &qword_1E4C10B98);
  v214 = *(v215 - 8);
  v59 = *(v214 + 64);
  MEMORY[0x1EEE9AC00](v215);
  v277 = &v188 - v60;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96880, &qword_1E4C10BA0);
  v212 = *(v213 - 8);
  v61 = *(v212 + 64);
  MEMORY[0x1EEE9AC00](v213);
  v308 = &v188 - v62;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96888, &qword_1E4C10BA8);
  v211 = *(v210 - 8);
  v63 = *(v211 + 64);
  MEMORY[0x1EEE9AC00](v210);
  v307 = &v188 - v64;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96890, &qword_1E4C10BB0);
  v208 = *(v209 - 8);
  v65 = *(v208 + 64);
  MEMORY[0x1EEE9AC00](v209);
  v306 = &v188 - v66;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96898, &qword_1E4C10BB8);
  v206 = *(v207 - 8);
  v67 = *(v206 + 64);
  MEMORY[0x1EEE9AC00](v207);
  v276 = &v188 - v68;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF968A0, &qword_1E4C10BC0);
  v204 = *(v205 - 8);
  v69 = *(v204 + 64);
  MEMORY[0x1EEE9AC00](v205);
  v275 = &v188 - v70;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF968A8, &qword_1E4C10BC8);
  v202 = *(v203 - 8);
  v71 = *(v202 + 64);
  MEMORY[0x1EEE9AC00](v203);
  v274 = &v188 - v72;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF968B0, &qword_1E4C10BD0);
  v200 = *(v201 - 8);
  v73 = *(v200 + 64);
  MEMORY[0x1EEE9AC00](v201);
  v273 = &v188 - v74;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF968B8, &qword_1E4C10BD8);
  v198 = *(v199 - 8);
  v75 = *(v198 + 64);
  MEMORY[0x1EEE9AC00](v199);
  v272 = &v188 - v76;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF968C0, &qword_1E4C10BE0);
  v196 = *(v197 - 8);
  v77 = *(v196 + 64);
  MEMORY[0x1EEE9AC00](v197);
  v271 = &v188 - v78;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF968C8, &qword_1E4C10BE8);
  v194 = *(v195 - 8);
  v79 = *(v194 + 64);
  MEMORY[0x1EEE9AC00](v195);
  v81 = &v188 - v80;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF968D0, &qword_1E4C10BF0);
  v193 = *(v82 - 8);
  v83 = *(v193 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v85 = &v188 - v84;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF968D8, &unk_1E4C10BF8);
  v87 = *(v86 - 8);
  v88 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v90 = &v188 - v89;
  v92 = a1[3];
  v91 = a1[4];
  v312 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v92);
  sub_1E4B9AA94();
  v93 = v311;
  sub_1E4BF0ABC();
  if (v93)
  {
LABEL_8:
    v111 = v312;
    return __swift_destroy_boxed_opaque_existential_1(v111);
  }

  v190 = v85;
  v189 = v82;
  v191 = v81;
  v94 = v306;
  v95 = v307;
  v96 = v308;
  v192 = 0;
  v98 = v309;
  v97 = v310;
  v311 = v87;
  v99 = v86;
  v100 = v90;
  v101 = sub_1E4BF088C();
  v102 = (2 * *(v101 + 16)) | 1;
  v313 = v101;
  v314 = v101 + 32;
  v315 = 0;
  v316 = v102;
  v103 = sub_1E4ADD4F0();
  if (v315 != v316 >> 1)
  {
LABEL_6:
    v107 = sub_1E4BF06EC();
    swift_allocError();
    v109 = v108;
    v110 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540) + 48);
    *v109 = &type metadata for Messaging.MessageID;
    sub_1E4BF07FC();
    sub_1E4BF06DC();
    (*(*(v107 - 8) + 104))(v109, *MEMORY[0x1E69E6AF8], v107);
    swift_willThrow();
LABEL_7:
    (*(v311 + 8))(v100, v99);
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v104 = v103;
  switch(v103)
  {
    case 0:
      v317 = 0;
      sub_1E4B9B7B4();
      v105 = v190;
      v106 = v192;
      sub_1E4BF07EC();
      if (v106)
      {
        goto LABEL_7;
      }

      (*(v193 + 8))(v105, v189);
      goto LABEL_88;
    case 1:
      v317 = 1;
      sub_1E4B9B760();
      v148 = v191;
      v149 = v192;
      sub_1E4BF07EC();
      if (v149)
      {
        goto LABEL_7;
      }

      (*(v194 + 8))(v148, v195);
      goto LABEL_88;
    case 2:
      v317 = 2;
      sub_1E4B9B70C();
      v140 = v271;
      v141 = v192;
      sub_1E4BF07EC();
      if (v141)
      {
        goto LABEL_7;
      }

      (*(v196 + 8))(v140, v197);
      goto LABEL_88;
    case 3:
      v317 = 3;
      sub_1E4B9B6B8();
      v144 = v272;
      v145 = v192;
      sub_1E4BF07EC();
      if (v145)
      {
        goto LABEL_7;
      }

      (*(v198 + 8))(v144, v199);
      goto LABEL_88;
    case 4:
      v317 = 4;
      sub_1E4B9B664();
      v131 = v273;
      v132 = v192;
      sub_1E4BF07EC();
      if (v132)
      {
        goto LABEL_7;
      }

      (*(v200 + 8))(v131, v201);
      goto LABEL_88;
    case 5:
      v317 = 5;
      sub_1E4B9B610();
      v156 = v274;
      v157 = v192;
      sub_1E4BF07EC();
      if (v157)
      {
        goto LABEL_7;
      }

      (*(v202 + 8))(v156, v203);
      goto LABEL_88;
    case 6:
      v317 = 6;
      sub_1E4B9B5BC();
      v162 = v275;
      v163 = v192;
      sub_1E4BF07EC();
      if (v163)
      {
        goto LABEL_7;
      }

      (*(v204 + 8))(v162, v205);
      goto LABEL_88;
    case 7:
      v317 = 7;
      sub_1E4B9B568();
      v146 = v276;
      v147 = v192;
      sub_1E4BF07EC();
      if (v147)
      {
        goto LABEL_7;
      }

      (*(v206 + 8))(v146, v207);
      goto LABEL_88;
    case 8:
      v317 = 8;
      sub_1E4B9B514();
      v167 = v192;
      sub_1E4BF07EC();
      if (v167)
      {
        goto LABEL_7;
      }

      (*(v208 + 8))(v94, v209);
      goto LABEL_88;
    case 9:
      v317 = 9;
      sub_1E4B9B4C0();
      v135 = v192;
      sub_1E4BF07EC();
      if (v135)
      {
        goto LABEL_7;
      }

      (*(v211 + 8))(v95, v210);
      goto LABEL_88;
    case 10:
      v317 = 10;
      sub_1E4B9B46C();
      v166 = v192;
      sub_1E4BF07EC();
      if (v166)
      {
        goto LABEL_7;
      }

      (*(v212 + 8))(v96, v213);
      goto LABEL_88;
    case 11:
      v317 = 11;
      sub_1E4B9B418();
      v129 = v277;
      v130 = v192;
      sub_1E4BF07EC();
      if (v130)
      {
        goto LABEL_7;
      }

      (*(v214 + 8))(v129, v215);
      goto LABEL_88;
    case 12:
      v317 = 12;
      sub_1E4B9B3C4();
      v133 = v278;
      v134 = v192;
      sub_1E4BF07EC();
      if (v134)
      {
        goto LABEL_7;
      }

      (*(v216 + 8))(v133, v217);
      goto LABEL_88;
    case 13:
      v317 = 13;
      sub_1E4B9B370();
      v160 = v279;
      v161 = v192;
      sub_1E4BF07EC();
      if (v161)
      {
        goto LABEL_7;
      }

      (*(v218 + 8))(v160, v219);
      goto LABEL_88;
    case 14:
      v317 = 14;
      sub_1E4B9B31C();
      v125 = v280;
      v126 = v192;
      sub_1E4BF07EC();
      if (v126)
      {
        goto LABEL_7;
      }

      (*(v220 + 8))(v125, v221);
      goto LABEL_88;
    case 15:
      v317 = 15;
      sub_1E4B9B2C8();
      v142 = v281;
      v143 = v192;
      sub_1E4BF07EC();
      if (v143)
      {
        goto LABEL_7;
      }

      (*(v222 + 8))(v142, v223);
      goto LABEL_88;
    case 16:
      v317 = 16;
      sub_1E4B9B274();
      v123 = v282;
      v124 = v192;
      sub_1E4BF07EC();
      if (v124)
      {
        goto LABEL_7;
      }

      (*(v224 + 8))(v123, v225);
      goto LABEL_88;
    case 17:
      v317 = 17;
      sub_1E4B9B220();
      v152 = v283;
      v153 = v192;
      sub_1E4BF07EC();
      if (v153)
      {
        goto LABEL_7;
      }

      (*(v226 + 8))(v152, v227);
      goto LABEL_88;
    case 18:
      v317 = 18;
      sub_1E4B9B1CC();
      v164 = v284;
      v165 = v192;
      sub_1E4BF07EC();
      if (v165)
      {
        goto LABEL_7;
      }

      (*(v228 + 8))(v164, v229);
      goto LABEL_88;
    case 19:
      v317 = 19;
      sub_1E4B9B178();
      v176 = v285;
      v177 = v192;
      sub_1E4BF07EC();
      if (v177)
      {
        goto LABEL_7;
      }

      (*(v230 + 8))(v176, v231);
      goto LABEL_88;
    case 20:
      v317 = 20;
      sub_1E4B9B124();
      v154 = v286;
      v155 = v192;
      sub_1E4BF07EC();
      if (v155)
      {
        goto LABEL_7;
      }

      (*(v232 + 8))(v154, v233);
      goto LABEL_88;
    case 21:
      v317 = 21;
      sub_1E4B9B0D0();
      v158 = v287;
      v159 = v192;
      sub_1E4BF07EC();
      if (v159)
      {
        goto LABEL_7;
      }

      (*(v234 + 8))(v158, v235);
      goto LABEL_88;
    case 22:
      v317 = 22;
      sub_1E4B9B07C();
      v172 = v288;
      v173 = v192;
      sub_1E4BF07EC();
      if (v173)
      {
        goto LABEL_7;
      }

      (*(v236 + 8))(v172, v237);
      goto LABEL_88;
    case 23:
      v317 = 23;
      sub_1E4B9B028();
      v178 = v289;
      v179 = v192;
      sub_1E4BF07EC();
      if (v179)
      {
        goto LABEL_7;
      }

      (*(v238 + 8))(v178, v239);
      goto LABEL_88;
    case 24:
      v317 = 24;
      sub_1E4B9AFD4();
      v138 = v290;
      v139 = v192;
      sub_1E4BF07EC();
      if (v139)
      {
        goto LABEL_7;
      }

      (*(v240 + 8))(v138, v241);
      goto LABEL_88;
    case 25:
      v317 = 25;
      sub_1E4B9AF80();
      v136 = v291;
      v137 = v192;
      sub_1E4BF07EC();
      if (v137)
      {
        goto LABEL_7;
      }

      (*(v242 + 8))(v136, v243);
      goto LABEL_88;
    case 26:
      v317 = 26;
      sub_1E4B9AF2C();
      v186 = v292;
      v187 = v192;
      sub_1E4BF07EC();
      if (v187)
      {
        goto LABEL_7;
      }

      (*(v244 + 8))(v186, v245);
      goto LABEL_88;
    case 27:
      v317 = 27;
      sub_1E4B9AED8();
      v119 = v293;
      v120 = v192;
      sub_1E4BF07EC();
      if (v120)
      {
        goto LABEL_7;
      }

      (*(v246 + 8))(v119, v247);
      goto LABEL_88;
    case 28:
      v317 = 28;
      sub_1E4B9AE84();
      v180 = v294;
      v181 = v192;
      sub_1E4BF07EC();
      if (v181)
      {
        goto LABEL_7;
      }

      (*(v248 + 8))(v180, v249);
      goto LABEL_88;
    case 29:
      v317 = 29;
      sub_1E4B9AE30();
      v182 = v295;
      v183 = v192;
      sub_1E4BF07EC();
      if (v183)
      {
        goto LABEL_7;
      }

      (*(v250 + 8))(v182, v251);
      goto LABEL_88;
    case 30:
      v317 = 30;
      sub_1E4B9ADDC();
      v168 = v296;
      v169 = v192;
      sub_1E4BF07EC();
      if (v169)
      {
        goto LABEL_7;
      }

      (*(v252 + 8))(v168, v253);
      goto LABEL_88;
    case 31:
      v317 = 31;
      sub_1E4B9AD88();
      v150 = v297;
      v151 = v192;
      sub_1E4BF07EC();
      if (v151)
      {
        goto LABEL_7;
      }

      (*(v254 + 8))(v150, v255);
      goto LABEL_88;
    case 32:
      v317 = 32;
      sub_1E4B9AD34();
      v170 = v298;
      v171 = v192;
      sub_1E4BF07EC();
      if (v171)
      {
        goto LABEL_7;
      }

      (*(v256 + 8))(v170, v257);
      goto LABEL_88;
    case 33:
      v317 = 33;
      sub_1E4B9ACE0();
      v127 = v299;
      v128 = v192;
      sub_1E4BF07EC();
      if (v128)
      {
        goto LABEL_7;
      }

      (*(v258 + 8))(v127, v259);
      goto LABEL_88;
    case 34:
      v317 = 34;
      sub_1E4B9AC8C();
      v121 = v300;
      v122 = v192;
      sub_1E4BF07EC();
      if (v122)
      {
        goto LABEL_7;
      }

      (*(v260 + 8))(v121, v261);
      goto LABEL_88;
    case 35:
      v317 = 35;
      sub_1E4B9AC38();
      v115 = v301;
      v116 = v192;
      sub_1E4BF07EC();
      if (v116)
      {
        goto LABEL_7;
      }

      (*(v262 + 8))(v115, v263);
      goto LABEL_88;
    case 36:
      v317 = 36;
      sub_1E4B9ABE4();
      v117 = v302;
      v118 = v192;
      sub_1E4BF07EC();
      if (v118)
      {
        goto LABEL_7;
      }

      (*(v264 + 8))(v117, v265);
      goto LABEL_88;
    case 37:
      v317 = 37;
      sub_1E4B9AB90();
      v113 = v303;
      v114 = v192;
      sub_1E4BF07EC();
      if (v114)
      {
        goto LABEL_7;
      }

      (*(v266 + 8))(v113, v267);
      goto LABEL_88;
    case 38:
      v317 = 38;
      sub_1E4B9AB3C();
      v184 = v304;
      v185 = v192;
      sub_1E4BF07EC();
      if (v185)
      {
        goto LABEL_7;
      }

      (*(v268 + 8))(v184, v269);
LABEL_88:
      (*(v311 + 8))(v100, v99);
      swift_unknownObjectRelease();
      v111 = v312;
      goto LABEL_89;
    case 39:
      v317 = 39;
      sub_1E4B9AAE8();
      v174 = v305;
      v175 = v192;
      sub_1E4BF07EC();
      if (v175)
      {
        (*(v311 + 8))(v100, v99);
        swift_unknownObjectRelease();
        v111 = v312;
      }

      else
      {
        (*(v270 + 8))(v174, v98);
        (*(v311 + 8))(v100, v99);
        swift_unknownObjectRelease();
        v111 = v312;
LABEL_89:
        *v97 = v104;
      }

      break;
    default:
      goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_1(v111);
}

ValueMetadata *Messaging.MessageID.metaType.getter()
{
  switch(*v0)
  {
    case 1:
      v1 = &type metadata for SMSResultNotification;
      sub_1E4B84EB8();
      return v1;
    case 2:
      v1 = &type metadata for MMSResultNotification;
      sub_1E4B0DCD4();
      return v1;
    case 3:
      v1 = type metadata accessor for SMSReceivedNotification();
      v2 = &qword_1ECF94880;
      v3 = type metadata accessor for SMSReceivedNotification;
      goto LABEL_42;
    case 4:
      v1 = type metadata accessor for MMSReceivedNotification();
      v2 = &qword_1ECF94888;
      v3 = type metadata accessor for MMSReceivedNotification;
      goto LABEL_42;
    case 5:
      v1 = &type metadata for MMSRetrieveRequest;
      sub_1E4B1EC54();
      return v1;
    case 6:
      v1 = &type metadata for SendMMSRequest;
      sub_1E4B15148();
      return v1;
    case 7:
      v1 = &type metadata for ServiceStatusRequest;
      sub_1E4B3A788();
      return v1;
    case 8:
      v1 = &type metadata for ServiceStatusNotification;
      sub_1E4B8519C();
      return v1;
    case 9:
      v1 = type metadata accessor for RCSSendRequest();
      v2 = &unk_1EE2BDED0;
      v3 = type metadata accessor for RCSSendRequest;
      goto LABEL_42;
    case 0xA:
      v1 = type metadata accessor for RCSReceivedNotification();
      v2 = &qword_1ECF94878;
      v3 = type metadata accessor for RCSReceivedNotification;
      goto LABEL_42;
    case 0xB:
      v1 = &type metadata for RCSReceiveRequest;
      sub_1E4B85918();
      return v1;
    case 0xC:
      v1 = &type metadata for RCSResultNotification;
      sub_1E4B72230();
      return v1;
    case 0xD:
      v1 = &type metadata for RCSCapabilityDiscoveryRequest;
      sub_1E4B9E644();
      return v1;
    case 0xE:
      v1 = type metadata accessor for RCSCapabilityDiscoveryResponseNotification(0);
      v2 = &unk_1ECF95F80;
      v3 = type metadata accessor for RCSCapabilityDiscoveryResponseNotification;
      goto LABEL_42;
    case 0xF:
      v1 = type metadata accessor for RCSCapabilityDiscoveryNotification(0);
      v2 = &unk_1ECF95F48;
      v3 = type metadata accessor for RCSCapabilityDiscoveryNotification;
      goto LABEL_42;
    case 0x10:
      v1 = &type metadata for RCSCapabilitiesUpdatedNotification;
      sub_1E4B84D44();
      return v1;
    case 0x11:
      v1 = &type metadata for RCSSendDispositionRequest;
      sub_1E4B44B18();
      return v1;
    case 0x12:
      v1 = &type metadata for RCSGroupChatMutationNotification;
      sub_1E4B1C750();
      return v1;
    case 0x13:
      v1 = &type metadata for RCSGroupChatMutationResponseNotification;
      sub_1E4B1C600();
      return v1;
    case 0x14:
      v1 = &type metadata for RCSGroupChatAddParticipantsRequest;
      sub_1E4B1BF70();
      return v1;
    case 0x15:
      v1 = &type metadata for RCSGroupChatRemoveParticipantsRequest;
      sub_1E4B1C0C0();
      return v1;
    case 0x16:
      v1 = &type metadata for RCSGroupChatChangeSubjectRequest;
      sub_1E4B1C210();
      return v1;
    case 0x17:
      v1 = &type metadata for RCSGroupChatLeaveRequest;
      sub_1E4B1C360();
      return v1;
    case 0x18:
      v1 = &type metadata for RCSGroupChatCreateRequest;
      sub_1E4B1C4B0();
      return v1;
    case 0x19:
      v1 = type metadata accessor for RCSSendSuggestionResponseRequest();
      v2 = &qword_1EE2BD990;
      v3 = type metadata accessor for RCSSendSuggestionResponseRequest;
      goto LABEL_42;
    case 0x1A:
      v1 = type metadata accessor for SMSReportSpamRequest();
      v2 = &qword_1EE2BDBE0;
      v3 = type metadata accessor for SMSReportSpamRequest;
      goto LABEL_42;
    case 0x1B:
      v1 = type metadata accessor for MMSReportSpamRequest();
      v2 = &qword_1EE2BDD38;
      v3 = type metadata accessor for MMSReportSpamRequest;
      goto LABEL_42;
    case 0x1C:
      v1 = type metadata accessor for RCSReportSpamRequest();
      v2 = &unk_1EE2BDC90;
      v3 = type metadata accessor for RCSReportSpamRequest;
      goto LABEL_42;
    case 0x1D:
      v1 = &type metadata for RCSReportSpamResultNotification;
      sub_1E4B84488();
      return v1;
    case 0x1E:
      v1 = &type metadata for MMSConfigurationRetrieveRequest;
      sub_1E4B006AC();
      return v1;
    case 0x1F:
      v1 = &type metadata for CriticalMessageNotification;
      sub_1E4B484F0();
      return v1;
    case 0x20:
      v1 = &type metadata for RCSChatbotReadCachedRenderInformationRequest;
      sub_1E4B9E5F0();
      return v1;
    case 0x21:
      v1 = &type metadata for RCSChatbotFetchRenderInformationRequest;
      sub_1E4B9E59C();
      return v1;
    case 0x22:
      v1 = type metadata accessor for RCSChatbotRenderInformationResponse();
      v2 = &unk_1ECF95F28;
      v3 = type metadata accessor for RCSChatbotRenderInformationResponse;
      goto LABEL_42;
    case 0x23:
      v1 = &type metadata for RCSRevokeMessageRequest;
      sub_1E4B967F8();
      return v1;
    case 0x24:
      v1 = &type metadata for RCSRevokeMessageResponseNotification;
      sub_1E4B84334();
      return v1;
    case 0x25:
      v1 = &type metadata for RCSConfigurationRequest;
      sub_1E4B93E28();
      return v1;
    case 0x26:
      v1 = &type metadata for RCSSendDeviceSpecificsRequest;
      sub_1E4AE31BC();
      return v1;
    case 0x27:
      v1 = &type metadata for CarrierMessagingCapabilityRequest;
      sub_1E4B39064();
      return v1;
    default:
      v1 = type metadata accessor for SendSMSRequest();
      v2 = &qword_1EE2BDE10;
      v3 = type metadata accessor for SendSMSRequest;
LABEL_42:
      sub_1E4B9E698(v2, v3);
      return v1;
  }
}

unint64_t sub_1E4B9E59C()
{
  result = qword_1EE2BD8B8;
  if (!qword_1EE2BD8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BD8B8);
  }

  return result;
}

unint64_t sub_1E4B9E5F0()
{
  result = qword_1EE2BD880;
  if (!qword_1EE2BD880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BD880);
  }

  return result;
}

unint64_t sub_1E4B9E644()
{
  result = qword_1EE2BD9F0;
  if (!qword_1EE2BD9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BD9F0);
  }

  return result;
}

uint64_t sub_1E4B9E698(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E4B9E6E4()
{
  result = qword_1EE2BEBB8;
  if (!qword_1EE2BEBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BEBB8);
  }

  return result;
}

unint64_t sub_1E4B9E738(void *a1)
{
  a1[1] = sub_1E4B9E770();
  a1[2] = sub_1E4B9E7C4();
  result = sub_1E4B9E818();
  a1[3] = result;
  return result;
}

unint64_t sub_1E4B9E770()
{
  result = qword_1EE2BEBB0;
  if (!qword_1EE2BEBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BEBB0);
  }

  return result;
}

unint64_t sub_1E4B9E7C4()
{
  result = qword_1EE2BEBC8[0];
  if (!qword_1EE2BEBC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2BEBC8);
  }

  return result;
}

unint64_t sub_1E4B9E818()
{
  result = qword_1EE2BEBC0;
  if (!qword_1EE2BEBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BEBC0);
  }

  return result;
}

uint64_t sub_1E4B9E8AC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD9)
  {
    goto LABEL_17;
  }

  if (a2 + 39 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 39) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 39;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 39;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 39;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x28;
  v8 = v6 - 40;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1E4B9E93C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 39 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 39) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD9)
  {
    v4 = 0;
  }

  if (a2 > 0xD8)
  {
    v5 = ((a2 - 217) >> 8) + 1;
    *result = a2 + 39;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 39;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E4B9EC80()
{
  result = qword_1ECF968E0;
  if (!qword_1ECF968E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF968E0);
  }

  return result;
}

unint64_t sub_1E4B9ECD8()
{
  result = qword_1ECF968E8;
  if (!qword_1ECF968E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF968E8);
  }

  return result;
}

unint64_t sub_1E4B9ED30()
{
  result = qword_1ECF968F0;
  if (!qword_1ECF968F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF968F0);
  }

  return result;
}

unint64_t sub_1E4B9ED88()
{
  result = qword_1ECF968F8;
  if (!qword_1ECF968F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF968F8);
  }

  return result;
}

unint64_t sub_1E4B9EDE0()
{
  result = qword_1ECF96900;
  if (!qword_1ECF96900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96900);
  }

  return result;
}

unint64_t sub_1E4B9EE38()
{
  result = qword_1ECF96908;
  if (!qword_1ECF96908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96908);
  }

  return result;
}

unint64_t sub_1E4B9EE90()
{
  result = qword_1ECF96910;
  if (!qword_1ECF96910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96910);
  }

  return result;
}

unint64_t sub_1E4B9EEE8()
{
  result = qword_1ECF96918;
  if (!qword_1ECF96918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96918);
  }

  return result;
}

unint64_t sub_1E4B9EF40()
{
  result = qword_1ECF96920;
  if (!qword_1ECF96920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96920);
  }

  return result;
}

unint64_t sub_1E4B9EF98()
{
  result = qword_1ECF96928;
  if (!qword_1ECF96928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96928);
  }

  return result;
}

unint64_t sub_1E4B9EFF0()
{
  result = qword_1ECF96930;
  if (!qword_1ECF96930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96930);
  }

  return result;
}

unint64_t sub_1E4B9F048()
{
  result = qword_1ECF96938;
  if (!qword_1ECF96938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96938);
  }

  return result;
}

unint64_t sub_1E4B9F0A0()
{
  result = qword_1ECF96940;
  if (!qword_1ECF96940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96940);
  }

  return result;
}

unint64_t sub_1E4B9F0F8()
{
  result = qword_1ECF96948;
  if (!qword_1ECF96948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96948);
  }

  return result;
}

unint64_t sub_1E4B9F150()
{
  result = qword_1ECF96950;
  if (!qword_1ECF96950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96950);
  }

  return result;
}

unint64_t sub_1E4B9F1A8()
{
  result = qword_1ECF96958;
  if (!qword_1ECF96958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96958);
  }

  return result;
}

unint64_t sub_1E4B9F200()
{
  result = qword_1ECF96960;
  if (!qword_1ECF96960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96960);
  }

  return result;
}

unint64_t sub_1E4B9F258()
{
  result = qword_1ECF96968;
  if (!qword_1ECF96968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96968);
  }

  return result;
}

unint64_t sub_1E4B9F2B0()
{
  result = qword_1ECF96970;
  if (!qword_1ECF96970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96970);
  }

  return result;
}

unint64_t sub_1E4B9F308()
{
  result = qword_1ECF96978;
  if (!qword_1ECF96978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96978);
  }

  return result;
}

unint64_t sub_1E4B9F360()
{
  result = qword_1ECF96980;
  if (!qword_1ECF96980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96980);
  }

  return result;
}

unint64_t sub_1E4B9F3B8()
{
  result = qword_1ECF96988;
  if (!qword_1ECF96988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96988);
  }

  return result;
}

unint64_t sub_1E4B9F410()
{
  result = qword_1ECF96990;
  if (!qword_1ECF96990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96990);
  }

  return result;
}

unint64_t sub_1E4B9F468()
{
  result = qword_1ECF96998;
  if (!qword_1ECF96998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96998);
  }

  return result;
}

unint64_t sub_1E4B9F4C0()
{
  result = qword_1ECF969A0;
  if (!qword_1ECF969A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF969A0);
  }

  return result;
}

unint64_t sub_1E4B9F518()
{
  result = qword_1ECF969A8;
  if (!qword_1ECF969A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF969A8);
  }

  return result;
}

unint64_t sub_1E4B9F570()
{
  result = qword_1ECF969B0;
  if (!qword_1ECF969B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF969B0);
  }

  return result;
}

unint64_t sub_1E4B9F5C8()
{
  result = qword_1ECF969B8;
  if (!qword_1ECF969B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF969B8);
  }

  return result;
}

unint64_t sub_1E4B9F620()
{
  result = qword_1ECF969C0;
  if (!qword_1ECF969C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF969C0);
  }

  return result;
}

unint64_t sub_1E4B9F678()
{
  result = qword_1ECF969C8;
  if (!qword_1ECF969C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF969C8);
  }

  return result;
}

unint64_t sub_1E4B9F6D0()
{
  result = qword_1ECF969D0;
  if (!qword_1ECF969D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF969D0);
  }

  return result;
}

unint64_t sub_1E4B9F728()
{
  result = qword_1ECF969D8;
  if (!qword_1ECF969D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF969D8);
  }

  return result;
}

unint64_t sub_1E4B9F780()
{
  result = qword_1ECF969E0;
  if (!qword_1ECF969E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF969E0);
  }

  return result;
}

unint64_t sub_1E4B9F7D8()
{
  result = qword_1ECF969E8;
  if (!qword_1ECF969E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF969E8);
  }

  return result;
}

unint64_t sub_1E4B9F830()
{
  result = qword_1ECF969F0;
  if (!qword_1ECF969F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF969F0);
  }

  return result;
}

unint64_t sub_1E4B9F888()
{
  result = qword_1ECF969F8;
  if (!qword_1ECF969F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF969F8);
  }

  return result;
}

unint64_t sub_1E4B9F8E0()
{
  result = qword_1ECF96A00;
  if (!qword_1ECF96A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96A00);
  }

  return result;
}

unint64_t sub_1E4B9F938()
{
  result = qword_1ECF96A08;
  if (!qword_1ECF96A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96A08);
  }

  return result;
}

unint64_t sub_1E4B9F990()
{
  result = qword_1ECF96A10;
  if (!qword_1ECF96A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96A10);
  }

  return result;
}

unint64_t sub_1E4B9F9E8()
{
  result = qword_1ECF96A18;
  if (!qword_1ECF96A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96A18);
  }

  return result;
}

unint64_t sub_1E4B9FA40()
{
  result = qword_1ECF96A20;
  if (!qword_1ECF96A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96A20);
  }

  return result;
}

unint64_t sub_1E4B9FA98()
{
  result = qword_1ECF96A28;
  if (!qword_1ECF96A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96A28);
  }

  return result;
}

unint64_t sub_1E4B9FAF0()
{
  result = qword_1ECF96A30;
  if (!qword_1ECF96A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96A30);
  }

  return result;
}

unint64_t sub_1E4B9FB48()
{
  result = qword_1ECF96A38;
  if (!qword_1ECF96A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96A38);
  }

  return result;
}

unint64_t sub_1E4B9FBA0()
{
  result = qword_1ECF96A40;
  if (!qword_1ECF96A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96A40);
  }

  return result;
}

unint64_t sub_1E4B9FBF8()
{
  result = qword_1ECF96A48;
  if (!qword_1ECF96A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96A48);
  }

  return result;
}

unint64_t sub_1E4B9FC50()
{
  result = qword_1ECF96A50;
  if (!qword_1ECF96A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96A50);
  }

  return result;
}

unint64_t sub_1E4B9FCA8()
{
  result = qword_1ECF96A58;
  if (!qword_1ECF96A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96A58);
  }

  return result;
}

unint64_t sub_1E4B9FD00()
{
  result = qword_1ECF96A60;
  if (!qword_1ECF96A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96A60);
  }

  return result;
}

unint64_t sub_1E4B9FD58()
{
  result = qword_1ECF96A68;
  if (!qword_1ECF96A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96A68);
  }

  return result;
}

unint64_t sub_1E4B9FDB0()
{
  result = qword_1ECF96A70;
  if (!qword_1ECF96A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96A70);
  }

  return result;
}

unint64_t sub_1E4B9FE08()
{
  result = qword_1ECF96A78;
  if (!qword_1ECF96A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96A78);
  }

  return result;
}

unint64_t sub_1E4B9FE60()
{
  result = qword_1ECF96A80;
  if (!qword_1ECF96A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96A80);
  }

  return result;
}

unint64_t sub_1E4B9FEB8()
{
  result = qword_1ECF96A88;
  if (!qword_1ECF96A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96A88);
  }

  return result;
}

unint64_t sub_1E4B9FF10()
{
  result = qword_1ECF96A90;
  if (!qword_1ECF96A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96A90);
  }

  return result;
}

unint64_t sub_1E4B9FF68()
{
  result = qword_1ECF96A98;
  if (!qword_1ECF96A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96A98);
  }

  return result;
}

unint64_t sub_1E4B9FFC0()
{
  result = qword_1ECF96AA0;
  if (!qword_1ECF96AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96AA0);
  }

  return result;
}

unint64_t sub_1E4BA0018()
{
  result = qword_1ECF96AA8;
  if (!qword_1ECF96AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96AA8);
  }

  return result;
}

unint64_t sub_1E4BA0070()
{
  result = qword_1ECF96AB0;
  if (!qword_1ECF96AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96AB0);
  }

  return result;
}

unint64_t sub_1E4BA00C8()
{
  result = qword_1ECF96AB8;
  if (!qword_1ECF96AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96AB8);
  }

  return result;
}

unint64_t sub_1E4BA0120()
{
  result = qword_1ECF96AC0;
  if (!qword_1ECF96AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96AC0);
  }

  return result;
}

unint64_t sub_1E4BA0178()
{
  result = qword_1ECF96AC8;
  if (!qword_1ECF96AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96AC8);
  }

  return result;
}

unint64_t sub_1E4BA01D0()
{
  result = qword_1ECF96AD0;
  if (!qword_1ECF96AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96AD0);
  }

  return result;
}

unint64_t sub_1E4BA0228()
{
  result = qword_1ECF96AD8;
  if (!qword_1ECF96AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96AD8);
  }

  return result;
}

unint64_t sub_1E4BA0280()
{
  result = qword_1ECF96AE0;
  if (!qword_1ECF96AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96AE0);
  }

  return result;
}

unint64_t sub_1E4BA02D8()
{
  result = qword_1ECF96AE8;
  if (!qword_1ECF96AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96AE8);
  }

  return result;
}

unint64_t sub_1E4BA0330()
{
  result = qword_1ECF96AF0;
  if (!qword_1ECF96AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96AF0);
  }

  return result;
}

unint64_t sub_1E4BA0388()
{
  result = qword_1ECF96AF8;
  if (!qword_1ECF96AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96AF8);
  }

  return result;
}

unint64_t sub_1E4BA03E0()
{
  result = qword_1ECF96B00;
  if (!qword_1ECF96B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96B00);
  }

  return result;
}

unint64_t sub_1E4BA0438()
{
  result = qword_1ECF96B08;
  if (!qword_1ECF96B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96B08);
  }

  return result;
}

unint64_t sub_1E4BA0490()
{
  result = qword_1ECF96B10;
  if (!qword_1ECF96B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96B10);
  }

  return result;
}

unint64_t sub_1E4BA04E8()
{
  result = qword_1ECF96B18;
  if (!qword_1ECF96B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96B18);
  }

  return result;
}

unint64_t sub_1E4BA0540()
{
  result = qword_1ECF96B20;
  if (!qword_1ECF96B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96B20);
  }

  return result;
}

unint64_t sub_1E4BA0598()
{
  result = qword_1ECF96B28;
  if (!qword_1ECF96B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96B28);
  }

  return result;
}

unint64_t sub_1E4BA05F0()
{
  result = qword_1ECF96B30;
  if (!qword_1ECF96B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96B30);
  }

  return result;
}

unint64_t sub_1E4BA0648()
{
  result = qword_1ECF96B38;
  if (!qword_1ECF96B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96B38);
  }

  return result;
}

unint64_t sub_1E4BA06A0()
{
  result = qword_1ECF96B40;
  if (!qword_1ECF96B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96B40);
  }

  return result;
}

unint64_t sub_1E4BA06F8()
{
  result = qword_1ECF96B48;
  if (!qword_1ECF96B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96B48);
  }

  return result;
}

unint64_t sub_1E4BA0750()
{
  result = qword_1ECF96B50;
  if (!qword_1ECF96B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96B50);
  }

  return result;
}

unint64_t sub_1E4BA07A8()
{
  result = qword_1ECF96B58;
  if (!qword_1ECF96B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96B58);
  }

  return result;
}

unint64_t sub_1E4BA0800()
{
  result = qword_1ECF96B60;
  if (!qword_1ECF96B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96B60);
  }

  return result;
}

unint64_t sub_1E4BA0858()
{
  result = qword_1ECF96B68;
  if (!qword_1ECF96B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96B68);
  }

  return result;
}

unint64_t sub_1E4BA08B0()
{
  result = qword_1ECF96B70;
  if (!qword_1ECF96B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96B70);
  }

  return result;
}

uint64_t sub_1E4BA0904(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x534D53646E6573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x52534D53646E6573 && a2 == 0xED0000746C757365 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x52534D4D646E6573 && a2 == 0xED0000746C757365 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6965636552736D73 && a2 == 0xEB00000000646576 || (sub_1E4BF099C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6965636552736D6DLL && a2 == 0xEB00000000646576 || (sub_1E4BF099C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6972746552736D6DLL && a2 == 0xEB00000000657665 || (sub_1E4BF099C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x534D4D646E6573 && a2 == 0xE700000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E4BF21F0 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001E4BF2210 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x534352646E6573 && a2 == 0xE700000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E4BF2230 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x5265766965636572 && a2 == 0xEA00000000005343 || (sub_1E4BF099C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x52534352646E6573 && a2 == 0xED0000746C757365 || (sub_1E4BF099C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E4BF2250 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E4BF2270 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001E4BF2290 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E4BF22B0 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E4BF22D0 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001E4BF22F0 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000028 && 0x80000001E4BF2320 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001E4BF2350 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001E4BF2380 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001E4BF23B0 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001E4BF23E0 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001E4BF2400 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001E4BF2420 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x726F706552736D73 && a2 == 0xED00006D61705374 || (sub_1E4BF099C() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x726F706552736D6DLL && a2 == 0xED00006D61705374 || (sub_1E4BF099C() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x726F706552736372 && a2 == 0xED00006D61705374 || (sub_1E4BF099C() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E4BF2440 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001E4BF2460 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001E4BF2480 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD000000000000025 && 0x80000001E4BF24A0 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001E4BF24D0 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001E4BF2500 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E4BF2530 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E4BF2550 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E4BF2570 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E4BF2590 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001E4BF25B0 == a2)
  {

    return 39;
  }

  else
  {
    v6 = sub_1E4BF099C();

    if (v6)
    {
      return 39;
    }

    else
    {
      return 40;
    }
  }
}

uint64_t sub_1E4BA1544()
{
  v0 = sub_1E4BEFB7C();
  __swift_allocate_value_buffer(v0, qword_1ECF96B78);
  v1 = __swift_project_value_buffer(v0, qword_1ECF96B78);
  if (qword_1EE2BD748 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EE2C1FE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1E4BA160C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4BEFAFC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1E4BA1674()
{
  v1 = *(*v0 + 80);
  v23 = sub_1E4BF024C();
  v2 = *(v23 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v22 = &v18 - v4;
  v5 = type metadata accessor for NotificationManager.Registration();
  v6 = *(v5 - 8);
  v18 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  v9 = v0[2];
  v25 = v1;
  sub_1E4BF017C();
  sub_1E4B86564(sub_1E4BA1B60, v24, v9);
  v10 = v26;
  if (!sub_1E4BF015C())
  {
  }

  v11 = 0;
  v20 = *(v5 + 28);
  v21 = (v6 + 16);
  v19 = (v2 + 16);
  v12 = (v2 + 8);
  v13 = v23;
  while (1)
  {
    v14 = sub_1E4BF013C();
    sub_1E4BF00EC();
    if (v14)
    {
      (*(v6 + 16))(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v11, v5);
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    result = sub_1E4BF06AC();
    if (v18 != 8)
    {
      break;
    }

    v26 = result;
    (*v21)(v8, &v26, v5);
    swift_unknownObjectRelease();
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
LABEL_10:
      __break(1u);
    }

LABEL_5:
    v16 = v22;
    (*v19)(v22, &v8[v20], v13);
    (*(v6 + 8))(v8, v5);
    sub_1E4BF023C();
    (*v12)(v16, v13);
    ++v11;
    if (v15 == sub_1E4BF015C())
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4BA1980()
{
  sub_1E4BA1674();
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1E4BA19D4(uint64_t a1)
{
  result = sub_1E4BEFAFC();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = sub_1E4BF024C();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1E4BA1AA0()
{
  result = qword_1ECF94700;
  if (!qword_1ECF94700)
  {
    sub_1E4BEFAFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94700);
  }

  return result;
}

uint64_t sub_1E4BA1AF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for NotificationManager.Registration();
  sub_1E4BF017C();

  result = sub_1E4BF016C();
  *a2 = v3;
  return result;
}

uint64_t RCSCapabilityDiscoveryRequest.request.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 41);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 41) = v7;
  return sub_1E4ADD6D8(v2, v3, v4, v5, v6);
}

uint64_t RCSCapabilityDiscoveryRequest.operationID.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;
}

__n128 RCSCapabilityDiscoveryRequest.init(request:operationID:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 41);
  v5 = *a2;
  v6 = a2[1];
  *a3 = *a1;
  *(a3 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  *(a3 + 24) = result;
  *(a3 + 40) = v3;
  *(a3 + 41) = v4;
  *(a3 + 48) = v5;
  *(a3 + 56) = v6;
  return result;
}

uint64_t sub_1E4BA1BF4()
{
  if (*v0)
  {
    result = 0x6F6974617265706FLL;
  }

  else
  {
    result = 0x747365757165725FLL;
  }

  *v0;
  return result;
}

uint64_t sub_1E4BA1C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x747365757165725FLL && a2 == 0xE800000000000000;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F6974617265706FLL && a2 == 0xEB0000000044496ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E4BA1D18(uint64_t a1)
{
  v2 = sub_1E4BA1FA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BA1D54(uint64_t a1)
{
  v2 = sub_1E4BA1FA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSCapabilityDiscoveryRequest.encode(to:)(void *a1)
{
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96C90, &qword_1E4C12EA0);
  v23 = *(v21 - 8);
  v3 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v5 = &v16 - v4;
  v31 = *v1;
  v6 = *(v1 + 1);
  v7 = *(v1 + 2);
  v9 = *(v1 + 3);
  v8 = *(v1 + 4);
  v10 = v1[40];
  v20 = v1[41];
  v11 = *(v1 + 7);
  v17 = *(v1 + 6);
  v18 = v11;
  v12 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1E4ADD6D8(v6, v7, v9, v8, v10);
  sub_1E4BA1FA8();
  v13 = v21;
  sub_1E4BF0ACC();
  LOBYTE(v24) = v31;
  v25 = v6;
  v26 = v7;
  v27 = v9;
  v28 = v8;
  v29 = v10;
  v30 = v20;
  v32 = 0;
  sub_1E4ADFCF0();
  v14 = v22;
  sub_1E4BF093C();
  sub_1E4ADD764(v25, v26, v27, v28, v29);
  if (!v14)
  {
    v24 = v17;
    v25 = v18;
    v32 = 1;
    sub_1E4B1AC54();

    sub_1E4BF093C();
  }

  return (*(v23 + 8))(v5, v13);
}

unint64_t sub_1E4BA1FA8()
{
  result = qword_1ECF96C98;
  if (!qword_1ECF96C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96C98);
  }

  return result;
}

uint64_t RCSCapabilityDiscoveryRequest.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96CA0, &qword_1E4C12EA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BA1FA8();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v27[0]) = 0;
  sub_1E4ADFC98();
  sub_1E4BF087C();
  v24 = v30[0];
  v11 = v31;
  v25 = v32;
  v26 = v33;
  v23 = v35;
  v39 = v34;
  v40 = 1;
  sub_1E4B1ACFC();
  sub_1E4BF087C();
  (*(v6 + 8))(v9, v5);
  v20 = *(&v38 + 1);
  v21 = v38;
  v12 = v24;
  LOBYTE(v27[0]) = v24;
  v13 = v11;
  v14 = v25;
  *(&v27[0] + 1) = v11;
  v27[1] = v25;
  v15 = v26;
  *&v28 = v26;
  v22 = v39;
  BYTE8(v28) = v39;
  v16 = v23;
  BYTE9(v28) = v23;
  v29 = v38;
  v17 = v25;
  *a2 = v27[0];
  a2[1] = v17;
  v18 = v29;
  a2[2] = v28;
  a2[3] = v18;
  sub_1E4BA22E8(v27, v30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v30[0] = v12;
  v31 = v13;
  v32 = v14;
  v33 = v15;
  v34 = v22;
  v35 = v16;
  v36 = v21;
  v37 = v20;
  return sub_1E4BA2320(v30);
}

__n128 RCSCapabilityDiscoveryResponseNotification.handle.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_1E4ADD764(*(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  result = *a1;
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 8) = result;
  *(v1 + 40) = v3;
  return result;
}

uint64_t RCSCapabilityDiscoveryResponseNotification.operationID.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;
}

uint64_t RCSCapabilityDiscoveryResponseNotification.capabilities.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RCSCapabilityDiscoveryResponseNotification(0) + 28);

  return sub_1E4BA2474(v3, a1);
}

uint64_t sub_1E4BA2474(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F68, &qword_1E4C12EB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RCSCapabilityDiscoveryResponseNotification.capabilities.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RCSCapabilityDiscoveryResponseNotification(0) + 28);

  return sub_1E4BA2528(a1, v3);
}

uint64_t sub_1E4BA2528(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F68, &qword_1E4C12EB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t RCSCapabilityDiscoveryResponseNotification.error.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RCSCapabilityDiscoveryResponseNotification(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t RCSCapabilityDiscoveryResponseNotification.init(cellularServiceID:handle:operationID:capabilities:error:)@<X0>(char *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a1;
  v10 = *(a2 + 32);
  v11 = *a3;
  v12 = a3[1];
  v13 = *a5;
  v14 = type metadata accessor for RCSCapabilityDiscoveryResponseNotification(0);
  v15 = *(v14 + 28);
  v16 = type metadata accessor for RCSService.RemoteCapabilities();
  v18 = a2[1];
  v19 = *a2;
  (*(*(v16 - 8) + 56))(a6 + v15, 1, 1, v16);
  *a6 = v9;
  *(a6 + 24) = v18;
  *(a6 + 8) = v19;
  *(a6 + 40) = v10;
  *(a6 + 48) = v11;
  *(a6 + 56) = v12;
  result = sub_1E4BA2528(a4, a6 + v15);
  *(a6 + *(v14 + 32)) = v13;
  return result;
}

unint64_t sub_1E4BA26F8()
{
  v1 = *v0;
  v2 = 0x656C646E6168;
  v3 = 0x6F6974617265706FLL;
  v4 = 0x696C696261706163;
  if (v1 != 3)
  {
    v4 = 0x726F727265;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E4BA27A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4BA4FC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4BA27C8(uint64_t a1)
{
  v2 = sub_1E4BA2B10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BA2804(uint64_t a1)
{
  v2 = sub_1E4BA2B10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSCapabilityDiscoveryResponseNotification.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96CA8, &qword_1E4C12EB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BA2B10();
  sub_1E4BF0ACC();
  LOBYTE(v20) = *v3;
  v25 = 0;
  sub_1E4ADBE98();
  sub_1E4BF093C();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v12 = *(v3 + 24);
    v13 = *(v3 + 32);
    v14 = *(v3 + 40);
    v20 = *(v3 + 8);
    v21 = v11;
    v22 = v12;
    v23 = v13;
    v24 = v14;
    v25 = 1;
    sub_1E4ADD6D8(v20, v11, v12, v13, v14);
    sub_1E4ADF95C();
    sub_1E4BF093C();
    sub_1E4ADD764(v20, v21, v22, v23, v24);
    v15 = *(v3 + 56);
    v20 = *(v3 + 48);
    v21 = v15;
    v25 = 2;
    sub_1E4B1AC54();

    sub_1E4BF093C();

    v16 = type metadata accessor for RCSCapabilityDiscoveryResponseNotification(0);
    v17 = *(v16 + 28);
    LOBYTE(v20) = 3;
    type metadata accessor for RCSService.RemoteCapabilities();
    sub_1E4BA3060(&qword_1ECF96CB8, type metadata accessor for RCSService.RemoteCapabilities);
    sub_1E4BF08EC();
    LOBYTE(v20) = *(v3 + *(v16 + 32));
    v25 = 4;
    sub_1E4B1B740();
    sub_1E4BF08EC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1E4BA2B10()
{
  result = qword_1ECF96CB0;
  if (!qword_1ECF96CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96CB0);
  }

  return result;
}

uint64_t RCSCapabilityDiscoveryResponseNotification.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F68, &qword_1E4C12EB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96CC0, &qword_1E4C12EC0);
  v30 = *(v7 - 8);
  v31 = v7;
  v8 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = type metadata accessor for RCSCapabilityDiscoveryResponseNotification(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v13 + 28);
  v17 = type metadata accessor for RCSService.RemoteCapabilities();
  v18 = *(*(v17 - 8) + 56);
  v34 = v16;
  v19 = v15;
  v18(&v15[v16], 1, 1, v17);
  v21 = a1[3];
  v20 = a1[4];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1E4BA2B10();
  v22 = v32;
  sub_1E4BF0ABC();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v33);
    return sub_1E4BA2FF8(v19 + v34);
  }

  else
  {
    v23 = v30;
    v38 = 0;
    sub_1E4ADBF38();
    v24 = v31;
    sub_1E4BF087C();
    *v19 = v35;
    v38 = 1;
    sub_1E4ADFA7C();
    sub_1E4BF087C();
    v25 = v37;
    v26 = v36;
    *(v19 + 8) = v35;
    *(v19 + 24) = v26;
    *(v19 + 40) = v25;
    v38 = 2;
    sub_1E4B1ACFC();
    sub_1E4BF087C();
    v27 = *(&v35 + 1);
    *(v19 + 48) = v35;
    *(v19 + 56) = v27;
    LOBYTE(v35) = 3;
    sub_1E4BA3060(&qword_1ECF96CC8, type metadata accessor for RCSService.RemoteCapabilities);
    sub_1E4BF082C();
    sub_1E4BA2528(v6, v19 + v34);
    v38 = 4;
    sub_1E4B1B7E8();
    sub_1E4BF082C();
    (*(v23 + 8))(v10, v24);
    *(v19 + *(v11 + 32)) = v35;
    sub_1E4BA3188(v19, v29, type metadata accessor for RCSCapabilityDiscoveryResponseNotification);
    __swift_destroy_boxed_opaque_existential_1(v33);
    return sub_1E4BA39B0(v19, type metadata accessor for RCSCapabilityDiscoveryResponseNotification);
  }
}

uint64_t sub_1E4BA2FF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F68, &qword_1E4C12EB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E4BA3060(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4BA3100@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return sub_1E4ADD6D8(v2, v3, v4, v5, v6);
}

uint64_t sub_1E4BA3188(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t RCSCapabilityDiscoveryNotification.init(cellularServiceID:handle:capabilities:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 32);
  *a4 = *a1;
  v6 = *(a2 + 16);
  *(a4 + 8) = *a2;
  *(a4 + 24) = v6;
  *(a4 + 40) = v5;
  v7 = a4 + *(type metadata accessor for RCSCapabilityDiscoveryNotification(0) + 24);

  return sub_1E4BA3254(a3, v7);
}

uint64_t sub_1E4BA3254(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSService.RemoteCapabilities();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E4BA32B8()
{
  v1 = 0x656C646E6168;
  if (*v0 != 1)
  {
    v1 = 0x696C696261706163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1E4BA331C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4BA5180(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4BA3344(uint64_t a1)
{
  v2 = sub_1E4BA35F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BA3380(uint64_t a1)
{
  v2 = sub_1E4BA35F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSCapabilityDiscoveryNotification.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96CD0, &qword_1E4C12EC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BA35F0();
  sub_1E4BF0ACC();
  LOBYTE(v18) = *v3;
  v23 = 0;
  sub_1E4ADBE98();
  sub_1E4BF093C();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v12 = *(v3 + 24);
    v13 = *(v3 + 32);
    v14 = *(v3 + 40);
    v18 = *(v3 + 8);
    v19 = v11;
    v20 = v12;
    v21 = v13;
    v22 = v14;
    v23 = 1;
    sub_1E4ADD6D8(v18, v11, v12, v13, v14);
    sub_1E4ADF95C();
    sub_1E4BF093C();
    sub_1E4ADD764(v18, v19, v20, v21, v22);
    v15 = *(type metadata accessor for RCSCapabilityDiscoveryNotification(0) + 24);
    LOBYTE(v18) = 2;
    type metadata accessor for RCSService.RemoteCapabilities();
    sub_1E4BA3060(&qword_1ECF96CB8, type metadata accessor for RCSService.RemoteCapabilities);
    sub_1E4BF093C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1E4BA35F0()
{
  result = qword_1ECF96CD8;
  if (!qword_1ECF96CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96CD8);
  }

  return result;
}

uint64_t RCSCapabilityDiscoveryNotification.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for RCSService.RemoteCapabilities();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96CE0, &qword_1E4C12ED0);
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - v9;
  v11 = type metadata accessor for RCSCapabilityDiscoveryNotification(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BA35F0();
  v29 = v10;
  v16 = v30;
  sub_1E4BF0ABC();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = v11;
  v17 = a1;
  v18 = v27;
  v19 = v6;
  v34 = 0;
  sub_1E4ADBF38();
  v20 = v28;
  sub_1E4BF087C();
  *v14 = v31;
  v34 = 1;
  sub_1E4ADFA7C();
  sub_1E4BF087C();
  v21 = v33;
  v22 = v32;
  *(v14 + 8) = v31;
  *(v14 + 24) = v22;
  v14[40] = v21;
  LOBYTE(v31) = 2;
  sub_1E4BA3060(&qword_1ECF96CC8, type metadata accessor for RCSService.RemoteCapabilities);
  v23 = v29;
  sub_1E4BF087C();
  (*(v18 + 8))(v23, v20);
  sub_1E4BA3254(v19, &v14[*(v30 + 24)]);
  sub_1E4BA3188(v14, v26, type metadata accessor for RCSCapabilityDiscoveryNotification);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return sub_1E4BA39B0(v14, type metadata accessor for RCSCapabilityDiscoveryNotification);
}

uint64_t sub_1E4BA39B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t RCSCapabilitiesUpdatedNotification.handle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return sub_1E4ADD6D8(v2, v3, v4, v5, v6);
}

uint64_t RCSCapabilitiesUpdatedNotification.newHandle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return sub_1E4ADD6D8(v2, v3, v4, v5, v6);
}

__n128 RCSCapabilitiesUpdatedNotification.init(cellularServiceID:handle:newHandle:isBusinessHandle:)@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 32);
  v6 = *(a3 + 32);
  *a5 = *a1;
  v7 = *(a2 + 16);
  *(a5 + 8) = *a2;
  *(a5 + 24) = v7;
  *(a5 + 40) = v5;
  result = *a3;
  v9 = *(a3 + 16);
  *(a5 + 48) = *a3;
  *(a5 + 64) = v9;
  *(a5 + 80) = v6;
  *(a5 + 81) = a4;
  return result;
}

unint64_t sub_1E4BA3AD8()
{
  v1 = 0x656C646E6168;
  v2 = 0x6C646E614877656ELL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E4BA3B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4BA52A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4BA3B80(uint64_t a1)
{
  v2 = sub_1E4BA3E80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BA3BBC(uint64_t a1)
{
  v2 = sub_1E4BA3E80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSCapabilitiesUpdatedNotification.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96CE8, &qword_1E4C12ED8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v20 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v27 = *(v1 + 2);
  v28 = v9;
  v10 = *(v1 + 3);
  v25 = *(v1 + 4);
  v26 = v10;
  v11 = v1[40];
  v12 = *(v1 + 6);
  v23 = *(v1 + 7);
  v24 = v12;
  v13 = *(v1 + 8);
  v21 = *(v1 + 9);
  v22 = v13;
  v35 = v1[80];
  v20[3] = v1[81];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BA3E80();
  v15 = v3;
  sub_1E4BF0ACC();
  LOBYTE(v30) = v8;
  v36 = 0;
  sub_1E4ADBE98();
  v16 = v29;
  sub_1E4BF093C();
  if (!v16)
  {
    v17 = v23;
    v18 = v24;
    v30 = v28;
    v31 = v27;
    v32 = v26;
    v33 = v25;
    v34 = v11;
    v36 = 1;
    sub_1E4ADD6D8(v28, v27, v26, v25, v11);
    sub_1E4ADF95C();
    sub_1E4BF093C();
    sub_1E4ADD764(v30, v31, v32, v33, v34);
    v30 = v18;
    v31 = v17;
    v32 = v22;
    v33 = v21;
    v34 = v35;
    v36 = 2;
    sub_1E4ADD6D8(v18, v17, v22, v21, v35);
    sub_1E4BF093C();
    sub_1E4ADD764(v30, v31, v32, v33, v34);
    LOBYTE(v30) = 3;
    sub_1E4BF090C();
  }

  return (*(v4 + 8))(v7, v15);
}

unint64_t sub_1E4BA3E80()
{
  result = qword_1ECF96CF0;
  if (!qword_1ECF96CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96CF0);
  }

  return result;
}

uint64_t RCSCapabilitiesUpdatedNotification.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96CF8, &qword_1E4C12EE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BA3E80();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v39) = 0;
  sub_1E4ADBF38();
  sub_1E4BF087C();
  v38 = a2;
  v11 = v45;
  LOBYTE(v39) = 1;
  sub_1E4ADFA7C();
  sub_1E4BF087C();
  v34 = v11;
  v35 = *(&v45 + 1);
  v37 = v45;
  v12 = v46;
  v36 = v47;
  v13 = v48;
  v56 = v48;
  LOBYTE(v39) = 2;
  sub_1E4BF087C();
  v31 = v13;
  v33 = v12;
  v32 = v45;
  v15 = v46;
  v14 = v47;
  v55 = v48;
  v57 = 3;
  v16 = sub_1E4BF084C();
  (*(v6 + 8))(v9, v5);
  v29 = v16 & 1;
  LOBYTE(v39) = v34;
  *(&v39 + 1) = v37;
  v17 = v35;
  v18 = v15;
  v30 = v15;
  v19 = v33;
  *&v40 = v35;
  *(&v40 + 1) = v33;
  v20 = v36;
  *&v41 = v36;
  v31 = v56;
  BYTE8(v41) = v56;
  v21 = v32;
  v42 = v32;
  *&v43 = v18;
  *(&v43 + 1) = v14;
  v22 = v55;
  LOBYTE(v44) = v55;
  HIBYTE(v44) = v16 & 1;
  v23 = v43;
  v28 = v14;
  v24 = v38;
  v26 = v40;
  v25 = v41;
  *v38 = v39;
  v24[1] = v26;
  v24[3] = v42;
  v24[4] = v23;
  v24[2] = v25;
  *(v24 + 40) = v44;
  sub_1E4BA4360(&v39, &v45);
  __swift_destroy_boxed_opaque_existential_1(a1);
  LOBYTE(v45) = v34;
  *(&v45 + 1) = v37;
  v46 = v17;
  v47 = v19;
  v48 = v20;
  v49 = v31;
  v50 = v21;
  v51 = v30;
  v52 = v28;
  v53 = v22;
  v54 = v29;
  return sub_1E4BA4398(&v45);
}

unint64_t sub_1E4BA43C8(uint64_t a1)
{
  result = sub_1E4B9E644();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4BA441C()
{
  result = qword_1EE2BD9F8;
  if (!qword_1EE2BD9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BD9F8);
  }

  return result;
}

unint64_t sub_1E4BA4470()
{
  result = qword_1EE2BDA00;
  if (!qword_1EE2BDA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BDA00);
  }

  return result;
}

uint64_t sub_1E4BA44C4(uint64_t a1)
{
  result = sub_1E4BA3060(&qword_1ECF95F80, type metadata accessor for RCSCapabilityDiscoveryResponseNotification);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E4BA451C(uint64_t a1)
{
  *(a1 + 8) = sub_1E4BA3060(&qword_1ECF96D00, type metadata accessor for RCSCapabilityDiscoveryResponseNotification);
  result = sub_1E4BA3060(&qword_1ECF96D08, type metadata accessor for RCSCapabilityDiscoveryResponseNotification);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E4BA45A0(uint64_t a1)
{
  result = sub_1E4BA3060(&qword_1ECF95F48, type metadata accessor for RCSCapabilityDiscoveryNotification);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E4BA45F8(uint64_t a1)
{
  *(a1 + 8) = sub_1E4BA3060(&qword_1ECF96D10, type metadata accessor for RCSCapabilityDiscoveryNotification);
  result = sub_1E4BA3060(&qword_1ECF96D18, type metadata accessor for RCSCapabilityDiscoveryNotification);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E4BA467C(uint64_t a1)
{
  result = sub_1E4B84D44();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E4BA46D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E4BA470C()
{
  result = qword_1ECF96D20;
  if (!qword_1ECF96D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96D20);
  }

  return result;
}

unint64_t sub_1E4BA4760()
{
  result = qword_1ECF96D28;
  if (!qword_1ECF96D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96D28);
  }

  return result;
}

uint64_t sub_1E4BA47E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4BA482C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1E4BA48B4()
{
  sub_1E4BA4960();
  if (v0 <= 0x3F)
  {
    sub_1E4BA49B8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E4BA4960()
{
  if (!qword_1ECF96D40)
  {
    type metadata accessor for RCSService.RemoteCapabilities();
    v0 = sub_1E4BF053C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF96D40);
    }
  }
}

void sub_1E4BA49B8()
{
  if (!qword_1ECF96D48)
  {
    v0 = sub_1E4BF053C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF96D48);
    }
  }
}

uint64_t sub_1E4BA4A30()
{
  result = type metadata accessor for RCSService.RemoteCapabilities();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E4BA4AB4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[82])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1E4BA4AF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 82) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 82) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1E4BA4BA8()
{
  result = qword_1ECF96D60;
  if (!qword_1ECF96D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96D60);
  }

  return result;
}

unint64_t sub_1E4BA4C00()
{
  result = qword_1ECF96D68;
  if (!qword_1ECF96D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96D68);
  }

  return result;
}

unint64_t sub_1E4BA4C58()
{
  result = qword_1ECF96D70;
  if (!qword_1ECF96D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96D70);
  }

  return result;
}

unint64_t sub_1E4BA4CB0()
{
  result = qword_1ECF96D78;
  if (!qword_1ECF96D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96D78);
  }

  return result;
}

unint64_t sub_1E4BA4D08()
{
  result = qword_1ECF96D80;
  if (!qword_1ECF96D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96D80);
  }

  return result;
}

unint64_t sub_1E4BA4D60()
{
  result = qword_1ECF96D88;
  if (!qword_1ECF96D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96D88);
  }

  return result;
}

unint64_t sub_1E4BA4DB8()
{
  result = qword_1ECF96D90;
  if (!qword_1ECF96D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96D90);
  }

  return result;
}

unint64_t sub_1E4BA4E10()
{
  result = qword_1ECF96D98;
  if (!qword_1ECF96D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96D98);
  }

  return result;
}

unint64_t sub_1E4BA4E68()
{
  result = qword_1ECF96DA0;
  if (!qword_1ECF96DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96DA0);
  }

  return result;
}

unint64_t sub_1E4BA4EC0()
{
  result = qword_1ECF96DA8;
  if (!qword_1ECF96DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96DA8);
  }

  return result;
}

unint64_t sub_1E4BA4F18()
{
  result = qword_1ECF96DB0;
  if (!qword_1ECF96DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96DB0);
  }

  return result;
}

unint64_t sub_1E4BA4F70()
{
  result = qword_1ECF96DB8;
  if (!qword_1ECF96DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96DB8);
  }

  return result;
}

uint64_t sub_1E4BA4FC4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E4BF1400 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C646E6168 && a2 == 0xE600000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6974617265706FLL && a2 == 0xEB0000000044496ELL || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696C696261706163 && a2 == 0xEC00000073656974 || (sub_1E4BF099C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_1E4BF099C();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1E4BA5180(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E4BF1400 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C646E6168 && a2 == 0xE600000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696C696261706163 && a2 == 0xEC00000073656974)
  {

    return 2;
  }

  else
  {
    v5 = sub_1E4BF099C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E4BA52A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001E4BF1400 == a2;
  if (v3 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C646E6168 && a2 == 0xE600000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C646E614877656ELL && a2 == 0xE900000000000065 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E4BF13E0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E4BF099C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t RCSReportSpamRequest.Transport.description.getter()
{
  if (*v0)
  {
    return 5459283;
  }

  else
  {
    return 5456722;
  }
}

uint64_t sub_1E4BA545C()
{
  if (*v0)
  {
    return 7564659;
  }

  else
  {
    return 7562098;
  }
}

uint64_t sub_1E4BA547C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7562098 && a2 == 0xE300000000000000;
  if (v5 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7564659 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E4BA554C(uint64_t a1)
{
  v2 = sub_1E4BA5964();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BA5588(uint64_t a1)
{
  v2 = sub_1E4BA5964();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BA55C4(uint64_t a1)
{
  v2 = sub_1E4BA5A0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BA5600(uint64_t a1)
{
  v2 = sub_1E4BA5A0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BA563C(uint64_t a1)
{
  v2 = sub_1E4BA59B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BA5678(uint64_t a1)
{
  v2 = sub_1E4BA59B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSReportSpamRequest.Transport.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96DC0, &qword_1E4C13770);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96DC8, &qword_1E4C13778);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96DD0, &qword_1E4C13780);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BA5964();
  sub_1E4BF0ACC();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1E4BA59B8();
    v18 = v22;
    sub_1E4BF08BC();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1E4BA5A0C();
    sub_1E4BF08BC();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_1E4BA5964()
{
  result = qword_1ECF96DD8;
  if (!qword_1ECF96DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96DD8);
  }

  return result;
}

unint64_t sub_1E4BA59B8()
{
  result = qword_1ECF96DE0;
  if (!qword_1ECF96DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96DE0);
  }

  return result;
}

unint64_t sub_1E4BA5A0C()
{
  result = qword_1ECF96DE8;
  if (!qword_1ECF96DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96DE8);
  }

  return result;
}

uint64_t RCSReportSpamRequest.Transport.hashValue.getter()
{
  v1 = *v0;
  sub_1E4BF0A6C();
  MEMORY[0x1E69210C0](v1);
  return sub_1E4BF0A9C();
}

uint64_t RCSReportSpamRequest.Transport.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96DF0, &qword_1E4C13788);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96DF8, &qword_1E4C13790);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96E00, &unk_1E4C13798);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BA5964();
  v16 = v36;
  sub_1E4BF0ABC();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_1E4BF088C();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1E4AE0F10();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1E4BF06EC();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540) + 48);
      *v26 = &type metadata for RCSReportSpamRequest.Transport;
      sub_1E4BF07FC();
      sub_1E4BF06DC();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_1E4BA59B8();
        sub_1E4BF07EC();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1E4BA5A0C();
        sub_1E4BF07EC();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_1E4BA5FC0()
{
  if (*v0)
  {
    return 5459283;
  }

  else
  {
    return 5456722;
  }
}

uint64_t RCSReportSpamRequest.operationID.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RCSReportSpamRequest() + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t type metadata accessor for RCSReportSpamRequest()
{
  result = qword_1EE2BDC80;
  if (!qword_1EE2BDC80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RCSReportSpamRequest.request.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RCSService.ReportSpamRequest.CodableRepresentation(0);
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4BA6B6C(v1, v7, type metadata accessor for RCSService.ReportSpamRequest.CodableRepresentation);
  sub_1E4BA6B6C(v7, a1, type metadata accessor for RCSMessage);
  v8 = &v7[v4[7]];
  v9 = *v8;
  v10 = v8[1];
  v11 = v7[v4[8]];
  v12 = &v7[v4[9]];
  v14 = *v12;
  v13 = *(v12 + 1);
  sub_1E4AE4B24(v9, v10);

  sub_1E4BA6BD4(v7, type metadata accessor for RCSService.ReportSpamRequest.CodableRepresentation);
  v15 = type metadata accessor for RCSService.ReportSpamRequest(0);
  v16 = a1 + v15[5];
  *v16 = xmmword_1E4BFB5F0;
  v17 = v15[6];
  *(a1 + v17) = 5;
  v18 = (a1 + v15[7]);
  result = sub_1E4AE4BD4(*v16, *(v16 + 8));
  *v16 = v9;
  *(v16 + 8) = v10;
  *(a1 + v17) = v11;
  *v18 = v14;
  v18[1] = v13;
  return result;
}

uint64_t RCSReportSpamRequest.transport.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RCSReportSpamRequest();
  *a1 = *(v1 + *(result + 24));
  return result;
}

int *RCSReportSpamRequest.init(operationID:request:transport:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *a3;
  v9 = type metadata accessor for RCSReportSpamRequest();
  v10 = (a4 + *(v9 + 20));
  *v10 = v6;
  v10[1] = v7;
  sub_1E4BA6B6C(a2, a4, type metadata accessor for RCSMessage);
  v11 = type metadata accessor for RCSService.ReportSpamRequest(0);
  v12 = (a2 + v11[5]);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(a2 + v11[6]);
  v16 = (a2 + v11[7]);
  v18 = *v16;
  v17 = v16[1];
  sub_1E4AE4B24(v13, v14);

  sub_1E4BA6BD4(a2, type metadata accessor for RCSService.ReportSpamRequest);
  result = type metadata accessor for RCSService.ReportSpamRequest.CodableRepresentation(0);
  v20 = (a4 + result[5]);
  *v20 = v13;
  v20[1] = v14;
  *(a4 + result[6]) = v15;
  v21 = (a4 + result[7]);
  *v21 = v18;
  v21[1] = v17;
  *(a4 + *(v9 + 24)) = v8;
  return result;
}

uint64_t sub_1E4BA6318()
{
  v1 = 0x6F6974617265706FLL;
  if (*v0 != 1)
  {
    v1 = 0x726F70736E617274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7165526D6170735FLL;
  }
}

uint64_t sub_1E4BA6388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4BA7258(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4BA63B0(uint64_t a1)
{
  v2 = sub_1E4BA6658();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BA63EC(uint64_t a1)
{
  v2 = sub_1E4BA6658();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSReportSpamRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96E08, &qword_1E4C137A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BA6658();
  sub_1E4BF0ACC();
  LOBYTE(v17) = 0;
  type metadata accessor for RCSService.ReportSpamRequest.CodableRepresentation(0);
  sub_1E4BA6D74(&qword_1ECF92920, type metadata accessor for RCSService.ReportSpamRequest.CodableRepresentation);
  sub_1E4BF093C();
  if (!v2)
  {
    v11 = type metadata accessor for RCSReportSpamRequest();
    v12 = (v3 + *(v11 + 20));
    v13 = v12[1];
    v17 = *v12;
    v18 = v13;
    v16 = 1;
    sub_1E4B1AC54();

    sub_1E4BF093C();

    LOBYTE(v17) = *(v3 + *(v11 + 24));
    v16 = 2;
    sub_1E4BA66AC();
    sub_1E4BF093C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1E4BA6658()
{
  result = qword_1ECF96E10;
  if (!qword_1ECF96E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96E10);
  }

  return result;
}

unint64_t sub_1E4BA66AC()
{
  result = qword_1ECF96E18;
  if (!qword_1ECF96E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96E18);
  }

  return result;
}

uint64_t RCSReportSpamRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for RCSService.ReportSpamRequest.CodableRepresentation(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96E20, &qword_1E4C137B0);
  v25 = *(v8 - 8);
  v26 = v8;
  v9 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for RCSReportSpamRequest();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v16 = a1[4];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1E4BA6658();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v27);
  }

  v18 = v25;
  v19 = v15;
  LOBYTE(v28) = 0;
  sub_1E4BA6D74(&qword_1ECF92918, type metadata accessor for RCSService.ReportSpamRequest.CodableRepresentation);
  v20 = v26;
  sub_1E4BF087C();
  sub_1E4BA6AB4(v7, v19);
  v30 = 1;
  sub_1E4B1ACFC();
  sub_1E4BF087C();
  v21 = v29;
  v22 = (v19 + *(v12 + 20));
  *v22 = v28;
  v22[1] = v21;
  v30 = 2;
  sub_1E4BA6B18();
  sub_1E4BF087C();
  (*(v18 + 8))(v11, v20);
  *(v19 + *(v12 + 24)) = v28;
  sub_1E4BA6B6C(v19, v24, type metadata accessor for RCSReportSpamRequest);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return sub_1E4BA6BD4(v19, type metadata accessor for RCSReportSpamRequest);
}

uint64_t sub_1E4BA6AB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSService.ReportSpamRequest.CodableRepresentation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E4BA6B18()
{
  result = qword_1ECF96E28;
  if (!qword_1ECF96E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96E28);
  }

  return result;
}

uint64_t sub_1E4BA6B6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4BA6BD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E4BA6C38()
{
  result = qword_1ECF96E30;
  if (!qword_1ECF96E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96E30);
  }

  return result;
}

uint64_t sub_1E4BA6C8C(uint64_t a1)
{
  result = sub_1E4BA6D74(&qword_1EE2BDC90, type metadata accessor for RCSReportSpamRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E4BA6CF0(uint64_t a1)
{
  *(a1 + 8) = sub_1E4BA6D74(&qword_1EE2BDC98, type metadata accessor for RCSReportSpamRequest);
  result = sub_1E4BA6D74(qword_1EE2BDCA0, type metadata accessor for RCSReportSpamRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E4BA6D74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4BA6E14()
{
  result = type metadata accessor for RCSService.ReportSpamRequest.CodableRepresentation(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E4BA6EEC()
{
  result = qword_1ECF96E38;
  if (!qword_1ECF96E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96E38);
  }

  return result;
}

unint64_t sub_1E4BA6F44()
{
  result = qword_1ECF96E40;
  if (!qword_1ECF96E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96E40);
  }

  return result;
}

unint64_t sub_1E4BA6F9C()
{
  result = qword_1ECF96E48;
  if (!qword_1ECF96E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96E48);
  }

  return result;
}

unint64_t sub_1E4BA6FF4()
{
  result = qword_1ECF96E50;
  if (!qword_1ECF96E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96E50);
  }

  return result;
}

unint64_t sub_1E4BA704C()
{
  result = qword_1ECF96E58;
  if (!qword_1ECF96E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96E58);
  }

  return result;
}

unint64_t sub_1E4BA70A4()
{
  result = qword_1ECF96E60;
  if (!qword_1ECF96E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96E60);
  }

  return result;
}

unint64_t sub_1E4BA70FC()
{
  result = qword_1ECF96E68;
  if (!qword_1ECF96E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96E68);
  }

  return result;
}

unint64_t sub_1E4BA7154()
{
  result = qword_1ECF96E70;
  if (!qword_1ECF96E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96E70);
  }

  return result;
}

unint64_t sub_1E4BA71AC()
{
  result = qword_1ECF96E78;
  if (!qword_1ECF96E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96E78);
  }

  return result;
}

unint64_t sub_1E4BA7204()
{
  result = qword_1ECF96E80;
  if (!qword_1ECF96E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96E80);
  }

  return result;
}

uint64_t sub_1E4BA7258(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7165526D6170735FLL && a2 == 0xEC00000074736575;
  if (v4 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6974617265706FLL && a2 == 0xEB0000000044496ELL || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F70736E617274 && a2 == 0xE900000000000074)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E4BF099C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E4BA7394()
{
  v1 = *v0;
  v2 = 0x65726576696C6564;
  v3 = 0x6579616C70736964;
  v4 = 0xD000000000000015;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x79726576696C6564;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E4BA7448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4BA8C58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4BA7470(uint64_t a1)
{
  v2 = sub_1E4BA7C80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BA74AC(uint64_t a1)
{
  v2 = sub_1E4BA7C80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BA74E8(uint64_t a1)
{
  v2 = sub_1E4BA7E24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BA7524(uint64_t a1)
{
  v2 = sub_1E4BA7E24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BA7560(uint64_t a1)
{
  v2 = sub_1E4BA7DD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BA759C(uint64_t a1)
{
  v2 = sub_1E4BA7DD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BA75D8(uint64_t a1)
{
  v2 = sub_1E4BA7D7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BA7614(uint64_t a1)
{
  v2 = sub_1E4BA7D7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BA7650(uint64_t a1)
{
  v2 = sub_1E4BA7D28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BA768C(uint64_t a1)
{
  v2 = sub_1E4BA7D28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BA76C8(uint64_t a1)
{
  v2 = sub_1E4BA7CD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BA7704(uint64_t a1)
{
  v2 = sub_1E4BA7CD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSMessage.Disposition.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96E88, &qword_1E4C13CE0);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96E90, &qword_1E4C13CE8);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96E98, &qword_1E4C13CF0);
  v41 = *(v9 - 8);
  v42 = v9;
  v10 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96EA0, &qword_1E4C13CF8);
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96EA8, &qword_1E4C13D00);
  v49 = *(v16 - 8);
  v17 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v40 - v18;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96EB0, &qword_1E4C13D08);
  v20 = *(v52 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v22 = *v1;
  v24 = a1[3];
  v23 = a1[4];
  v25 = a1;
  v27 = &v40 - v26;
  __swift_project_boxed_opaque_existential_1(v25, v24);
  sub_1E4BA7C80();
  sub_1E4BF0ACC();
  v28 = (v20 + 8);
  if (v22 <= 1)
  {
    v33 = v27;
    v35 = v49;
    v34 = v50;
    v36 = v15;
    v37 = v51;
    if (v22)
    {
      v54 = 1;
      sub_1E4BA7DD0();
      v38 = v52;
      sub_1E4BF08BC();
      (*(v34 + 8))(v36, v37);
    }

    else
    {
      v53 = 0;
      sub_1E4BA7E24();
      v38 = v52;
      sub_1E4BF08BC();
      (*(v35 + 8))(v19, v16);
    }

    return (*v28)(v33, v38);
  }

  else
  {
    if (v22 == 2)
    {
      v55 = 2;
      sub_1E4BA7D7C();
      v29 = v40;
      v30 = v52;
      sub_1E4BF08BC();
      v32 = v41;
      v31 = v42;
    }

    else if (v22 == 3)
    {
      v56 = 3;
      sub_1E4BA7D28();
      v29 = v43;
      v30 = v52;
      sub_1E4BF08BC();
      v32 = v44;
      v31 = v45;
    }

    else
    {
      v57 = 4;
      sub_1E4BA7CD4();
      v29 = v46;
      v30 = v52;
      sub_1E4BF08BC();
      v32 = v47;
      v31 = v48;
    }

    (*(v32 + 8))(v29, v31);
    return (*v28)(v27, v30);
  }
}

unint64_t sub_1E4BA7C80()
{
  result = qword_1ECF96EB8;
  if (!qword_1ECF96EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96EB8);
  }

  return result;
}

unint64_t sub_1E4BA7CD4()
{
  result = qword_1ECF96EC0;
  if (!qword_1ECF96EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96EC0);
  }

  return result;
}

unint64_t sub_1E4BA7D28()
{
  result = qword_1ECF96EC8;
  if (!qword_1ECF96EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96EC8);
  }

  return result;
}

unint64_t sub_1E4BA7D7C()
{
  result = qword_1ECF96ED0;
  if (!qword_1ECF96ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96ED0);
  }

  return result;
}

unint64_t sub_1E4BA7DD0()
{
  result = qword_1ECF96ED8;
  if (!qword_1ECF96ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96ED8);
  }

  return result;
}

unint64_t sub_1E4BA7E24()
{
  result = qword_1ECF96EE0;
  if (!qword_1ECF96EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96EE0);
  }

  return result;
}

uint64_t RCSMessage.Disposition.hashValue.getter()
{
  v1 = *v0;
  sub_1E4BF0A6C();
  MEMORY[0x1E69210C0](v1);
  return sub_1E4BF0A9C();
}

uint64_t RCSMessage.Disposition.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v67 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96EE8, &qword_1E4C13D10);
  v60 = *(v63 - 8);
  v3 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v53 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96EF0, &qword_1E4C13D18);
  v6 = *(v5 - 8);
  v61 = v5;
  v62 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v53 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96EF8, &qword_1E4C13D20);
  v56 = *(v59 - 8);
  v9 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v65 = &v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96F00, &qword_1E4C13D28);
  v57 = *(v11 - 8);
  v58 = v11;
  v12 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96F08, &qword_1E4C13D30);
  v55 = *(v15 - 8);
  v16 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v53 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96F10, &unk_1E4C13D38);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v53 - v22;
  v25 = a1[3];
  v24 = a1[4];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1E4BA7C80();
  v26 = v69;
  sub_1E4BF0ABC();
  if (v26)
  {
    goto LABEL_11;
  }

  v27 = v18;
  v53 = v15;
  v54 = 0;
  v29 = v65;
  v28 = v66;
  v69 = v20;
  v30 = v67;
  v31 = v19;
  v32 = sub_1E4BF088C();
  v33 = (2 * *(v32 + 16)) | 1;
  v70 = v32;
  v71 = v32 + 32;
  v72 = 0;
  v73 = v33;
  v34 = sub_1E4AE0F18();
  if (v34 == 5 || v72 != v73 >> 1)
  {
    v39 = sub_1E4BF06EC();
    swift_allocError();
    v41 = v40;
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540) + 48);
    *v41 = &type metadata for RCSMessage.Disposition;
    sub_1E4BF07FC();
    sub_1E4BF06DC();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
    swift_willThrow();
    (*(v69 + 8))(v23, v19);
    goto LABEL_10;
  }

  v74 = v34;
  if (v34 <= 1u)
  {
    if (v34)
    {
      v75 = 1;
      sub_1E4BA7DD0();
      v51 = v14;
      v46 = v19;
      v52 = v54;
      sub_1E4BF07EC();
      if (v52)
      {
        v48 = v69;
        goto LABEL_23;
      }

      (*(v57 + 8))(v51, v58);
      (*(v69 + 8))(v23, v19);
    }

    else
    {
      v75 = 0;
      sub_1E4BA7E24();
      v45 = v54;
      sub_1E4BF07EC();
      if (v45)
      {
        (*(v69 + 8))(v23, v19);
        goto LABEL_10;
      }

      (*(v55 + 8))(v27, v53);
      (*(v69 + 8))(v23, v19);
    }

    swift_unknownObjectRelease();
    v43 = v68;
    v35 = v30;
    goto LABEL_30;
  }

  v35 = v30;
  if (v34 == 2)
  {
    v75 = 2;
    sub_1E4BA7D7C();
    v46 = v31;
    v47 = v54;
    sub_1E4BF07EC();
    v48 = v69;
    if (!v47)
    {
      (*(v56 + 8))(v29, v59);
      (*(v48 + 8))(v23, v46);
LABEL_25:
      swift_unknownObjectRelease();
      v43 = v68;
      goto LABEL_30;
    }

LABEL_23:
    (*(v48 + 8))(v23, v46);
    goto LABEL_10;
  }

  v36 = v23;
  v37 = v69;
  if (v34 != 3)
  {
    v75 = 4;
    sub_1E4BA7CD4();
    v49 = v64;
    v50 = v54;
    sub_1E4BF07EC();
    if (v50)
    {
      (*(v37 + 8))(v36, v31);
      goto LABEL_10;
    }

    (*(v60 + 8))(v49, v63);
    (*(v37 + 8))(v36, v31);
    swift_unknownObjectRelease();
    v43 = v68;
    v35 = v30;
LABEL_30:
    *v35 = v74;
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v75 = 3;
  sub_1E4BA7D28();
  v38 = v54;
  sub_1E4BF07EC();
  if (!v38)
  {
    (*(v62 + 8))(v28, v61);
    (*(v37 + 8))(v36, v31);
    goto LABEL_25;
  }

  (*(v37 + 8))(v36, v31);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  v43 = v68;
  return __swift_destroy_boxed_opaque_existential_1(v43);
}

unint64_t sub_1E4BA86EC()
{
  result = qword_1ECF96F18;
  if (!qword_1ECF96F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96F18);
  }

  return result;
}

unint64_t sub_1E4BA87E4()
{
  result = qword_1ECF96F20;
  if (!qword_1ECF96F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96F20);
  }

  return result;
}

unint64_t sub_1E4BA883C()
{
  result = qword_1ECF96F28;
  if (!qword_1ECF96F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96F28);
  }

  return result;
}

unint64_t sub_1E4BA8894()
{
  result = qword_1ECF96F30;
  if (!qword_1ECF96F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96F30);
  }

  return result;
}

unint64_t sub_1E4BA88EC()
{
  result = qword_1ECF96F38;
  if (!qword_1ECF96F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96F38);
  }

  return result;
}

unint64_t sub_1E4BA8944()
{
  result = qword_1ECF96F40;
  if (!qword_1ECF96F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96F40);
  }

  return result;
}

unint64_t sub_1E4BA899C()
{
  result = qword_1ECF96F48;
  if (!qword_1ECF96F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96F48);
  }

  return result;
}

unint64_t sub_1E4BA89F4()
{
  result = qword_1ECF96F50;
  if (!qword_1ECF96F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96F50);
  }

  return result;
}

unint64_t sub_1E4BA8A4C()
{
  result = qword_1ECF96F58;
  if (!qword_1ECF96F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96F58);
  }

  return result;
}

unint64_t sub_1E4BA8AA4()
{
  result = qword_1ECF96F60;
  if (!qword_1ECF96F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96F60);
  }

  return result;
}

unint64_t sub_1E4BA8AFC()
{
  result = qword_1ECF96F68;
  if (!qword_1ECF96F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96F68);
  }

  return result;
}

unint64_t sub_1E4BA8B54()
{
  result = qword_1ECF96F70;
  if (!qword_1ECF96F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96F70);
  }

  return result;
}

unint64_t sub_1E4BA8BAC()
{
  result = qword_1ECF96F78;
  if (!qword_1ECF96F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96F78);
  }

  return result;
}

unint64_t sub_1E4BA8C04()
{
  result = qword_1ECF96F80[0];
  if (!qword_1ECF96F80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF96F80);
  }

  return result;
}

uint64_t sub_1E4BA8C58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65726576696C6564 && a2 == 0xE900000000000064;
  if (v4 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79726576696C6564 && a2 == 0xEE0064656C696146 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6579616C70736964 && a2 == 0xE900000000000064 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E4BF25E0 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E4BF2600 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E4BF099C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1E4BA8E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94930, &unk_1E4C0D790);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1E4BAA7DC(a3, v27 - v11);
  v13 = sub_1E4BF01FC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1E4AE0AE4(v12, &qword_1ECF94930, &unk_1E4C0D790);
  }

  else
  {
    sub_1E4BF01EC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1E4BF019C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1E4BEFF1C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1E4AE0AE4(a3, &qword_1ECF94930, &unk_1E4C0D790);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E4AE0AE4(a3, &qword_1ECF94930, &unk_1E4C0D790);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1E4BA9114@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1E4ADB544(a1, a5);
  sub_1E4ADB544(a2, a5 + 40);
  v9 = type metadata accessor for XPCPeerMessage();
  v10 = *(*(a4 - 8) + 32);
  v11 = a5 + *(v9 + 40);

  return v10(v11, a3, a4);
}

uint64_t XPCPeerMessage.reply(throwing:)(void *a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for CodableResult();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  v11 = a1;
  sub_1E4B65734(a1, v10);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  swift_getWitnessTable();
  sub_1E4BEFD1C();
  return (*(v7 + 8))(v10, v6);
}

uint64_t XPCPeerMessage.reply(returning:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for CodableResult();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  (*(*(AssociatedTypeWitness - 8) + 16))(&v13 - v10, a1, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  swift_getWitnessTable();
  sub_1E4BEFD1C();
  return (*(v8 + 8))(v11, v7);
}

uint64_t XPCPeerMessage.replySuccess<>()()
{
  v2[64] = 0;
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93BA0, &qword_1E4C0BEC0);
  sub_1E4BA95D0();
  sub_1E4BEFD1C();
  return sub_1E4AE0AE4(v2, &qword_1ECF93BA0, &qword_1E4C0BEC0);
}

unint64_t sub_1E4BA95D0()
{
  result = qword_1ECF93BA8;
  if (!qword_1ECF93BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF93BA0, &qword_1E4C0BEC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93BA8);
  }

  return result;
}

uint64_t XPCPeerMessage.reply(_:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v8 = a3 + 16;
  v7 = *(a3 + 16);
  v6 = *(v8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v15 - v12;
  a1(v3 + *(a3 + 40));
  XPCPeerMessage.reply(returning:)(v13, a3);
  return (*(v10 + 8))(v13, AssociatedTypeWitness);
}

uint64_t XPCPeerMessage.reply(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94930, &unk_1E4C0D790);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v19 - v12;
  v14 = sub_1E4BF01FC();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v8 + 16))(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a3);
  v15 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = *(a3 + 16);
  (*(v8 + 32))(v16 + v15, &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  v17 = (v16 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = a1;
  v17[1] = a2;

  sub_1E4BA8E24(0, 0, v13, &unk_1E4C14308, v16);
}

uint64_t sub_1E4BA9964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5[2] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[3] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v5[4] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v5[5] = v11;
  v12 = type metadata accessor for XPCPeerMessage();
  v5[6] = v12;
  v13 = *(v12 + 40);
  v17 = (a5 + *a5);
  v14 = a5[1];
  v15 = swift_task_alloc();
  v5[7] = v15;
  *v15 = v5;
  v15[1] = sub_1E4BA9B10;

  return v17(v11, a4 + v13);
}

uint64_t sub_1E4BA9B10()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1E4BA9CB8;
  }

  else
  {
    v3 = sub_1E4BA9C24;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E4BA9C24()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  XPCPeerMessage.reply(returning:)(v1, v0[6]);
  (*(v3 + 8))(v1, v2);
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E4BA9CB8()
{
  v1 = v0[8];
  v2 = v0[2];
  XPCPeerMessage.reply(throwing:)(v1, v0[6]);

  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E4BA9D4C(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  v7 = *(type metadata accessor for XPCPeerMessage() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 1);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1E4B33678;

  return sub_1E4BA9964(a1, v9, v10, v1 + v8, v12);
}

uint64_t XPCPeerMessage.processIdentifier.getter()
{
  v1 = __swift_project_boxed_opaque_existential_1((v0 + 40), *(v0 + 64));
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  *v4.val = v5;
  *&v4.val[4] = v2;
  return audit_token_to_pid(&v4);
}

uint64_t XPCPeerMessage.bundleIdentifier.getter()
{
  v1 = __swift_project_boxed_opaque_existential_1((v0 + 40), *(v0 + 64));
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = *v1;

  return sub_1E4B35054(v5, v2, v3, v4);
}

uint64_t XPCPeerMessage.satifies(requirement:)()
{
  v1 = __swift_project_boxed_opaque_existential_1((v0 + 40), *(v0 + 64));
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];

  return sub_1E4BF04AC();
}

uint64_t AnyXPCPeerMessage.processIdentifier.getter()
{
  v1 = __swift_project_boxed_opaque_existential_1((v0 + 40), *(v0 + 64));
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  *v4.val = v5;
  *&v4.val[4] = v2;
  return audit_token_to_pid(&v4);
}

uint64_t AnyXPCPeerMessage.bundleIdentifier.getter()
{
  v1 = __swift_project_boxed_opaque_existential_1((v0 + 40), *(v0 + 64));
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = *v1;

  return sub_1E4B35054(v5, v2, v3, v4);
}

uint64_t AnyXPCPeerMessage.satifies(requirement:)()
{
  v1 = __swift_project_boxed_opaque_existential_1((v0 + 40), *(v0 + 64));
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];

  return sub_1E4BF04AC();
}

uint64_t sub_1E4BAA2C0(uint64_t a1)
{
  result = sub_1E4BAA770(319, &qword_1ECF97008);
  if (v3 <= 0x3F)
  {
    result = sub_1E4BAA770(319, &qword_1ECF97010);
    if (v4 <= 0x3F)
    {
      v5 = *(a1 + 16);
      result = swift_checkMetadataState();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1E4BAA380(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 80) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 47) & 0xFFFFFFFFFFFFFFF8) + v6 + 40) & ~v6);
      }

      v15 = *(a1 + 3);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1E4BAA50C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 80) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 47) & 0xFFFFFFFFFFFFFFF8) + v9 + 40) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 3) = a2 - 1;
  }
}

uint64_t sub_1E4BAA770(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1E4BAA7DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94930, &unk_1E4C0D790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4BAA84C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E4BAA944;

  return v7(a1);
}

uint64_t sub_1E4BAA944()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1E4BAAA3C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E4B34F84;

  return sub_1E4BAA84C(a1, v5);
}

uint64_t sub_1E4BAAAF4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E4B33678;

  return sub_1E4BAA84C(a1, v5);
}

uint64_t sub_1E4BAABAC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  v44 = a2;
  v43 = type metadata accessor for RCSService.Configuration.CodableRepresentation(0);
  v7 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RCSConfigurationRequest.Reply(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if (qword_1ECF92418 != -1)
  {
    swift_once();
  }

  v15 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v15, qword_1ECF97018);
  v16 = sub_1E4BEFB5C();
  v17 = sub_1E4BF04BC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v42 = v2;
    v19 = v18;
    v41 = swift_slowAlloc();
    v47 = v41;
    *v19 = 136315138;
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_1E4BF069C();
    MEMORY[0x1E69205B0](0xD000000000000012, 0x80000001E4BF14E0);
    sub_1E4AEC058(v14);
    MEMORY[0x1E69205B0](41, 0xE100000000000000);
    v20 = sub_1E4B30548(v45, v46, &v47);

    *(v19 + 4) = v20;
    v4 = v3;
    _os_log_impl(&dword_1E4AD3000, v16, v17, "Retrieving RCS configuration for %s", v19, 0xCu);
    v21 = v41;
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x1E6921800](v21, -1, -1);
    v22 = v19;
    v5 = v42;
    MEMORY[0x1E6921800](v22, -1, -1);
  }

  v23 = v5[6];
  v24 = v5[7];
  __swift_project_boxed_opaque_existential_1(v5 + 3, v23);
  LOBYTE(v45) = v14;
  v25 = *(v24 + 40);
  v26 = sub_1E4B93E28();
  result = v25(&v45, &type metadata for RCSConfigurationRequest, v26, v23, v24);
  if (!v4)
  {
    v42 = 0;
    sub_1E4BB0F9C(v13, v9, type metadata accessor for RCSService.Configuration.CodableRepresentation);
    v28 = *v9;
    v40 = *(v9 + 1);
    v41 = v28;
    v29 = v9[16];
    v30 = v43;
    v31 = *(v43 + 20);
    v32 = type metadata accessor for RCSService.Configuration(0);
    v33 = v44;
    sub_1E4AF1898(&v9[v31], v44 + v32[5], &qword_1ECF92D68, &unk_1E4BFCDA0);
    v34 = &v9[v30[6]];
    v35 = *v34;
    v36 = v34[8];
    sub_1E4AF1898(&v9[v30[7]], v33 + v32[7], &qword_1ECF92D68, &unk_1E4BFCDA0);
    sub_1E4AF1898(&v9[v30[8]], v33 + v32[8], &qword_1ECF92D68, &unk_1E4BFCDA0);
    result = sub_1E4BB0F3C(v9, type metadata accessor for RCSService.Configuration.CodableRepresentation);
    v37 = v40;
    *v33 = v41;
    *(v33 + 8) = v37;
    *(v33 + 16) = v29;
    v38 = v33 + v32[6];
    *v38 = v35;
    *(v38 + 8) = v36;
  }

  return result;
}

uint64_t sub_1E4BAAF58(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = type metadata accessor for RCSService.Configuration(0);
  *(v3 + 32) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 48) = swift_task_alloc();
  v7 = type metadata accessor for RCSService.Configuration.CodableRepresentation(0);
  *(v3 + 56) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v3 + 64) = swift_task_alloc();
  v9 = *(*(type metadata accessor for RCSConfigurationRequest.Reply(0) - 8) + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 105) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1E4BAB060, 0, 0);
}

uint64_t sub_1E4BAB060()
{
  v22 = v0;
  if (qword_1ECF92418 != -1)
  {
    swift_once();
  }

  v1 = sub_1E4BEFB7C();
  *(v0 + 80) = __swift_project_value_buffer(v1, qword_1ECF97018);
  v2 = sub_1E4BEFB5C();
  v3 = sub_1E4BF04BC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 105);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    v20 = 0;
    *v6 = 136315138;
    v21 = 0xE000000000000000;
    sub_1E4BF069C();
    MEMORY[0x1E69205B0](0xD000000000000012, 0x80000001E4BF14E0);
    sub_1E4AEC058(v5);
    MEMORY[0x1E69205B0](41, 0xE100000000000000);
    v8 = sub_1E4B30548(v20, 0xE000000000000000, &v19);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_1E4AD3000, v2, v3, "Retrieving RCS configuration for %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E6921800](v7, -1, -1);
    MEMORY[0x1E6921800](v6, -1, -1);
  }

  v9 = *(v0 + 24);
  v10 = v9[6];
  v11 = v9[7];
  __swift_project_boxed_opaque_existential_1(v9 + 3, v10);
  *(v0 + 104) = v5;
  v12 = *(v11 + 24);
  v18 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v0 + 88) = v14;
  v15 = sub_1E4B93E28();
  *v14 = v0;
  v14[1] = sub_1E4BAB324;
  v16 = *(v0 + 72);

  return v18(v16, v0 + 104, &type metadata for RCSConfigurationRequest, v15, v10, v11);
}

uint64_t sub_1E4BAB324()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1E4BAB744;
  }

  else
  {
    v3 = sub_1E4BAB438;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E4BAB438()
{
  v34 = v0;
  v2 = v0[7];
  v1 = v0[8];
  v31 = v0[6];
  v32 = v0[10];
  v3 = v0[4];
  v4 = v0[2];
  sub_1E4BB0ED4(v0[9], v1, type metadata accessor for RCSService.Configuration.CodableRepresentation);
  v5 = *v1;
  v30 = *(v1 + 8);
  v29 = *(v1 + 16);
  sub_1E4AF1898(v1 + v2[5], v4 + v3[5], &qword_1ECF92D68, &unk_1E4BFCDA0);
  v6 = v1 + v2[6];
  v7 = *v6;
  v8 = *(v6 + 8);
  sub_1E4AF1898(v1 + v2[7], v4 + v3[7], &qword_1ECF92D68, &unk_1E4BFCDA0);
  sub_1E4AF1898(v1 + v2[8], v4 + v3[8], &qword_1ECF92D68, &unk_1E4BFCDA0);
  sub_1E4BB0F3C(v1, type metadata accessor for RCSService.Configuration.CodableRepresentation);
  *v4 = v5;
  *(v4 + 8) = v30;
  *(v4 + 16) = v29;
  v9 = v4 + v3[6];
  *v9 = v7;
  *(v9 + 8) = v8;
  sub_1E4BB0ED4(v4, v31, type metadata accessor for RCSService.Configuration);
  v10 = sub_1E4BEFB5C();
  v11 = sub_1E4BF04CC();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[9];
  v14 = v0[6];
  if (v12)
  {
    v16 = v0[4];
    v15 = v0[5];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v33 = v18;
    *v17 = 136315138;
    sub_1E4BB0ED4(v14, v15, type metadata accessor for RCSService.Configuration);
    v19 = sub_1E4BEFF0C();
    v21 = v20;
    sub_1E4BB0F3C(v14, type metadata accessor for RCSService.Configuration);
    v22 = sub_1E4B30548(v19, v21, &v33);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_1E4AD3000, v10, v11, "Retrieved configuration: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1E6921800](v18, -1, -1);
    MEMORY[0x1E6921800](v17, -1, -1);
  }

  else
  {

    sub_1E4BB0F3C(v14, type metadata accessor for RCSService.Configuration);
  }

  sub_1E4BB0F3C(v13, type metadata accessor for RCSConfigurationRequest.Reply);
  v24 = v0[8];
  v23 = v0[9];
  v26 = v0[5];
  v25 = v0[6];

  v27 = v0[1];

  return v27();
}

uint64_t sub_1E4BAB744()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[5];
  v3 = v0[6];

  v5 = v0[1];
  v6 = v0[12];

  return v5();
}

uint64_t sub_1E4BAB7CC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for RCSSendRequest();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = type metadata accessor for RCSMessage(0);
  v2[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E4BAB890, 0, 0);
}

uint64_t sub_1E4BAB890()
{
  v37 = v0;
  if (qword_1ECF92418 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[2];
  v3 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v3, qword_1ECF97018);
  sub_1E4BB0ED4(v2, v1, type metadata accessor for RCSMessage);
  v4 = sub_1E4BEFB5C();
  v5 = sub_1E4BF04BC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
  if (v6)
  {
    v8 = v0[6];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31 = v10;
    *v9 = 136315138;
    v11 = v7 + *(v8 + 28);
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);
    v14 = *(v11 + 24);
    v15 = *(v11 + 32);
    v32 = *v11;
    v33 = v12;
    v34 = v13;
    v35 = v14;
    v36 = v15;
    sub_1E4ADD6D8(v32, v12, v13, v14, v15);
    v16 = RCSHandle.description.getter();
    v18 = v17;
    sub_1E4ADD764(v32, v33, v34, v35, v36);
    sub_1E4BB0F3C(v7, type metadata accessor for RCSMessage);
    v19 = sub_1E4B30548(v16, v18, &v31);

    *(v9 + 4) = v19;
    _os_log_impl(&dword_1E4AD3000, v4, v5, "Sending RCS to %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E6921800](v10, -1, -1);
    MEMORY[0x1E6921800](v9, -1, -1);
  }

  else
  {

    sub_1E4BB0F3C(v7, type metadata accessor for RCSMessage);
  }

  v20 = v0[3];
  sub_1E4BB0ED4(v0[2], v0[5], type metadata accessor for RCSMessage);
  v21 = v20[6];
  v22 = v20[7];
  __swift_project_boxed_opaque_existential_1(v20 + 3, v21);
  v23 = *(v22 + 32);
  v30 = (v23 + *v23);
  v24 = v23[1];
  v25 = swift_task_alloc();
  v0[8] = v25;
  v26 = sub_1E4BB0E8C(&qword_1EE2BDED0, type metadata accessor for RCSSendRequest);
  *v25 = v0;
  v25[1] = sub_1E4BABBE4;
  v28 = v0[4];
  v27 = v0[5];

  return v30(v27, v28, v26, v21, v22);
}

uint64_t sub_1E4BABBE4()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1E4BABD88;
  }

  else
  {
    v3 = sub_1E4BABCF8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E4BABCF8()
{
  v1 = v0[7];
  sub_1E4BB0F3C(v0[5], type metadata accessor for RCSSendRequest);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1E4BABD88()
{
  v1 = v0[7];
  sub_1E4BB0F3C(v0[5], type metadata accessor for RCSSendRequest);

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_1E4BABE18(uint64_t a1, void *a2)
{
  *(v3 + 144) = v2;
  *(v3 + 216) = *a1;
  *(v3 + 152) = *(a1 + 8);
  *(v3 + 168) = *(a1 + 24);
  *(v3 + 217) = *(a1 + 40);
  *(v3 + 218) = *(a1 + 41);
  v4 = a2[1];
  *(v3 + 184) = *a2;
  *(v3 + 192) = v4;
  return MEMORY[0x1EEE6DFA0](sub_1E4BABE68, 0, 0);
}

uint64_t sub_1E4BABE68()
{
  v54 = v0;
  sub_1E4ADD6D8(*(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 217));
  if (qword_1ECF92418 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 192);
  v2 = *(v0 + 217);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  v6 = *(v0 + 152);
  v5 = *(v0 + 160);
  v7 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v7, qword_1ECF97018);
  sub_1E4ADD6D8(v6, v5, v4, v3, v2);

  v8 = sub_1E4BEFB5C();
  v9 = sub_1E4BF04BC();
  sub_1E4ADD764(v6, v5, v4, v3, v2);

  if (os_log_type_enabled(v8, v9))
  {
    v43 = *(v0 + 192);
    v45 = *(v0 + 184);
    v10 = *(v0 + 217);
    v11 = *(v0 + 168);
    v12 = *(v0 + 176);
    v14 = *(v0 + 152);
    v13 = *(v0 + 160);
    v15 = *(v0 + 216);
    v41 = *(v0 + 218);
    v42 = v15;
    v16 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48 = v47;
    *v16 = 136315906;
    v49 = 0;
    v50 = 0xE000000000000000;
    v44 = v9;
    sub_1E4BF069C();
    MEMORY[0x1E69205B0](0xD000000000000012, 0x80000001E4BF14E0);
    sub_1E4AEC058(v15);
    MEMORY[0x1E69205B0](41, 0xE100000000000000);
    v17 = sub_1E4B30548(0, 0xE000000000000000, &v48);

    *(v16 + 4) = v17;
    *(v16 + 12) = 2080;
    v49 = v14;
    v50 = v13;
    v51 = v11;
    v52 = v12;
    v53 = v10;
    sub_1E4ADD6D8(v14, v13, v11, v12, v10);
    v18 = RCSHandle.description.getter();
    v20 = v19;
    sub_1E4ADD764(v49, v50, v51, v52, v53);
    v21 = sub_1E4B30548(v18, v20, &v48);

    *(v16 + 14) = v21;
    *(v16 + 22) = 2080;
    if (v41)
    {
      v22 = 0x52724F6568636163;
    }

    else
    {
      v22 = 0x6C6E4F6568636163;
    }

    if (v41)
    {
      v23 = 0xED000065746F6D65;
    }

    else
    {
      v23 = 0xE900000000000079;
    }

    v24 = sub_1E4B30548(v22, v23, &v48);

    *(v16 + 24) = v24;
    *(v16 + 32) = 2080;
    v49 = 0;
    v50 = 0xE000000000000000;

    sub_1E4BF069C();

    v49 = 0x617265704F534352;
    v50 = 0xEF2844496E6F6974;
    MEMORY[0x1E69205B0](v45, v43);
    MEMORY[0x1E69205B0](41, 0xE100000000000000);

    v25 = sub_1E4B30548(v49, v50, &v48);
    v26 = v42;

    *(v16 + 34) = v25;
    _os_log_impl(&dword_1E4AD3000, v8, v44, "Starting remote discovery on [%s], %s, %s with ID: %s", v16, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1E6921800](v47, -1, -1);
    MEMORY[0x1E6921800](v16, -1, -1);
  }

  else
  {
    v26 = *(v0 + 216);
  }

  v27 = *(v0 + 184);
  v28 = *(v0 + 192);
  v29 = *(v0 + 218);
  v31 = *(v0 + 144);
  LOBYTE(v49) = *(v0 + 217);
  v30 = v49;
  *(v0 + 16) = v26;
  *(v0 + 24) = *(v0 + 152);
  *(v0 + 40) = *(v0 + 168);
  *(v0 + 56) = v30;
  *(v0 + 57) = v29;
  *(v0 + 64) = v27;
  *(v0 + 72) = v28;
  v32 = v31[6];
  v33 = v31[7];
  __swift_project_boxed_opaque_existential_1(v31 + 3, v32);
  v34 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v34;
  v35 = *(v0 + 64);
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 128) = v35;
  v36 = *(v33 + 32);

  v46 = (v36 + *v36);
  v37 = v36[1];
  v38 = swift_task_alloc();
  *(v0 + 200) = v38;
  v39 = sub_1E4B9E644();
  *v38 = v0;
  v38[1] = sub_1E4BAC380;

  return v46(v0 + 80, &type metadata for RCSCapabilityDiscoveryRequest, v39, v32, v33);
}

uint64_t sub_1E4BAC380()
{
  v2 = *(*v1 + 200);
  v3 = *v1;
  *(v3 + 208) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4BAC4BC, 0, 0);
  }

  else
  {
    sub_1E4BA2320(v3 + 16);
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E4BAC4BC()
{
  sub_1E4BA2320(v0 + 16);
  v1 = *(v0 + 8);
  v2 = *(v0 + 208);

  return v1();
}

uint64_t sub_1E4BAC520(uint64_t a1, void *a2)
{
  *(v3 + 144) = v2;
  *(v3 + 224) = *a1;
  *(v3 + 152) = *(a1 + 8);
  *(v3 + 168) = *(a1 + 24);
  *(v3 + 176) = *(a1 + 32);
  v4 = a2[1];
  *(v3 + 192) = *a2;
  *(v3 + 200) = v4;
  return MEMORY[0x1EEE6DFA0](sub_1E4BAC568, 0, 0);
}

uint64_t sub_1E4BAC568()
{
  v38 = v0;
  v1 = *(v0 + 184);
  v2 = qword_1ECF92418;

  if (v2 != -1)
  {
    swift_once();
    v32 = *(v0 + 184);
  }

  v3 = *(v0 + 200);
  v4 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v4, qword_1ECF97018);

  v5 = sub_1E4BEFB5C();
  v6 = sub_1E4BF04BC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 192);
    v8 = *(v0 + 200);
    v33 = *(v0 + 184);
    v9 = *(v0 + 224);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v35 = v11;
    *v10 = 136315906;
    *(v10 + 4) = sub_1E4B30548(v7, v8, &v35);
    *(v10 + 12) = 2080;
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_1E4BF069C();
    MEMORY[0x1E69205B0](0xD000000000000012, 0x80000001E4BF14E0);
    sub_1E4AEC058(v9);
    MEMORY[0x1E69205B0](41, 0xE100000000000000);
    v12 = sub_1E4B30548(v36, v37, &v35);

    *(v10 + 14) = v12;
    *(v10 + 22) = 2080;
    v13 = sub_1E4BB0808(v33);
    v15 = sub_1E4B30548(v13, v14, &v35);

    *(v10 + 24) = v15;
    *(v10 + 32) = 2080;
    v36 = 0;
    v37 = 0xE000000000000000;

    sub_1E4BF069C();

    v36 = 0x617265704F534352;
    v37 = 0xEF2844496E6F6974;
    MEMORY[0x1E69205B0](v7, v8);
    MEMORY[0x1E69205B0](41, 0xE100000000000000);

    v16 = sub_1E4B30548(v36, v37, &v35);

    *(v10 + 34) = v16;
    _os_log_impl(&dword_1E4AD3000, v5, v6, "%s] Adding participants: %s, %s, %s", v10, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1E6921800](v11, -1, -1);
    MEMORY[0x1E6921800](v10, -1, -1);
  }

  else
  {
    v9 = *(v0 + 224);
  }

  v17 = *(v0 + 192);
  v18 = *(v0 + 200);
  v20 = *(v0 + 160);
  v19 = *(v0 + 168);
  v22 = *(v0 + 144);
  v21 = *(v0 + 152);
  *(v0 + 16) = v9;
  *(v0 + 24) = v21;
  *(v0 + 32) = v20;
  *(v0 + 40) = v19;
  *(v0 + 48) = *(v0 + 176);
  *(v0 + 64) = v17;
  *(v0 + 72) = v18;
  v23 = v22[6];
  v24 = v22[7];
  __swift_project_boxed_opaque_existential_1(v22 + 3, v23);
  v25 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v25;
  v26 = *(v0 + 64);
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 128) = v26;
  v27 = *(v24 + 32);

  v34 = (v27 + *v27);
  v28 = v27[1];
  v29 = swift_task_alloc();
  *(v0 + 208) = v29;
  v30 = sub_1E4B1BF70();
  *v29 = v0;
  v29[1] = sub_1E4BAC9B0;

  return v34(v0 + 80, &type metadata for RCSGroupChatAddParticipantsRequest, v30, v23, v24);
}

uint64_t sub_1E4BAC9B0()
{
  v2 = *(*v1 + 208);
  v3 = *v1;
  *(v3 + 216) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4BACAEC, 0, 0);
  }

  else
  {
    sub_1E4B1AD88(v3 + 16);
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E4BACAEC()
{
  sub_1E4B1AD88(v0 + 16);
  v1 = *(v0 + 8);
  v2 = *(v0 + 216);

  return v1();
}

uint64_t sub_1E4BACB50(uint64_t a1, void *a2)
{
  *(v3 + 144) = v2;
  *(v3 + 224) = *a1;
  *(v3 + 152) = *(a1 + 8);
  *(v3 + 168) = *(a1 + 24);
  *(v3 + 176) = *(a1 + 32);
  v4 = a2[1];
  *(v3 + 192) = *a2;
  *(v3 + 200) = v4;
  return MEMORY[0x1EEE6DFA0](sub_1E4BACB98, 0, 0);
}

uint64_t sub_1E4BACB98()
{
  v40 = v0;
  if (qword_1ECF92418 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 200);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 160);
  v5 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v5, qword_1ECF97018);

  v6 = sub_1E4BEFB5C();
  v7 = sub_1E4BF04BC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 192);
    v9 = *(v0 + 200);
    v35 = *(v0 + 184);
    v10 = *(v0 + 224);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v37 = v12;
    *v11 = 136315906;
    *(v11 + 4) = sub_1E4B30548(v8, v9, &v37);
    *(v11 + 12) = 2080;
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_1E4BF069C();
    MEMORY[0x1E69205B0](0xD000000000000012, 0x80000001E4BF14E0);
    sub_1E4AEC058(v10);
    MEMORY[0x1E69205B0](41, 0xE100000000000000);
    v13 = sub_1E4B30548(v38, v39, &v37);

    *(v11 + 14) = v13;
    *(v11 + 22) = 2080;
    v14 = sub_1E4BB0808(v35);
    v16 = sub_1E4B30548(v14, v15, &v37);

    *(v11 + 24) = v16;
    *(v11 + 32) = 2080;
    v38 = 0;
    v39 = 0xE000000000000000;

    sub_1E4BF069C();

    v38 = 0x617265704F534352;
    v39 = 0xEF2844496E6F6974;
    MEMORY[0x1E69205B0](v8, v9);
    MEMORY[0x1E69205B0](41, 0xE100000000000000);

    v17 = sub_1E4B30548(v38, v39, &v37);

    *(v11 + 34) = v17;
    _os_log_impl(&dword_1E4AD3000, v6, v7, "[%s] Removing participants: %s, %s), %s", v11, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1E6921800](v12, -1, -1);
    MEMORY[0x1E6921800](v11, -1, -1);
  }

  else
  {
    v10 = *(v0 + 224);
  }

  v18 = *(v0 + 192);
  v19 = *(v0 + 200);
  v21 = *(v0 + 176);
  v20 = *(v0 + 184);
  v23 = *(v0 + 160);
  v22 = *(v0 + 168);
  v25 = *(v0 + 144);
  v24 = *(v0 + 152);
  *(v0 + 16) = v10;
  *(v0 + 24) = v24;
  *(v0 + 32) = v23;
  *(v0 + 40) = v22;
  *(v0 + 48) = v21;
  *(v0 + 56) = v20;
  *(v0 + 64) = v18;
  *(v0 + 72) = v19;
  v26 = v25[6];
  v27 = v25[7];
  __swift_project_boxed_opaque_existential_1(v25 + 3, v26);
  v28 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v28;
  v29 = *(v0 + 64);
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 128) = v29;
  v30 = *(v27 + 32);

  v36 = (v30 + *v30);
  v31 = v30[1];
  v32 = swift_task_alloc();
  *(v0 + 208) = v32;
  v33 = sub_1E4B1C0C0();
  *v32 = v0;
  v32[1] = sub_1E4BACFF0;

  return v36(v0 + 80, &type metadata for RCSGroupChatRemoveParticipantsRequest, v33, v26, v27);
}

uint64_t sub_1E4BACFF0()
{
  v2 = *(*v1 + 208);
  v3 = *v1;
  *(v3 + 216) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4BAD12C, 0, 0);
  }

  else
  {
    sub_1E4B1AEEC(v3 + 16);
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E4BAD12C()
{
  sub_1E4B1AEEC(v0 + 16);
  v1 = *(v0 + 8);
  v2 = *(v0 + 216);

  return v1();
}

uint64_t sub_1E4BAD190(uint64_t a1, uint64_t *a2)
{
  *(v3 + 160) = v2;
  *(v3 + 248) = *a1;
  *(v3 + 168) = *(a1 + 8);
  *(v3 + 184) = *(a1 + 24);
  *(v3 + 192) = *(a1 + 32);
  v4 = *a2;
  v5 = a2[1];
  *(v3 + 208) = *(a1 + 48);
  *(v3 + 216) = v4;
  *(v3 + 224) = v5;
  return MEMORY[0x1EEE6DFA0](sub_1E4BAD1E0, 0, 0);
}

uint64_t sub_1E4BAD1E0()
{
  v39 = v0;
  if (qword_1ECF92418 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v3 = *(v0 + 192);
  v4 = *(v0 + 176);
  v5 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v5, qword_1ECF97018);

  v6 = sub_1E4BEFB5C();
  v7 = sub_1E4BF04BC();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v0 + 216);
    v8 = *(v0 + 224);
    v33 = *(v0 + 200);
    v35 = *(v0 + 208);
    v10 = *(v0 + 248);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v36 = v12;
    *v11 = 136315907;
    *(v11 + 4) = sub_1E4B30548(v9, v8, &v36);
    *(v11 + 12) = 2080;
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1E4BF069C();
    MEMORY[0x1E69205B0](0xD000000000000012, 0x80000001E4BF14E0);
    sub_1E4AEC058(v10);
    MEMORY[0x1E69205B0](41, 0xE100000000000000);
    v13 = sub_1E4B30548(v37, v38, &v36);

    *(v11 + 14) = v13;
    *(v11 + 22) = 2085;
    *(v11 + 24) = sub_1E4B30548(v33, v35, &v36);
    *(v11 + 32) = 2080;
    v37 = 0;
    v38 = 0xE000000000000000;

    sub_1E4BF069C();

    v37 = 0x617265704F534352;
    v38 = 0xEF2844496E6F6974;
    MEMORY[0x1E69205B0](v9, v8);
    MEMORY[0x1E69205B0](41, 0xE100000000000000);

    v14 = sub_1E4B30548(v37, v38, &v36);

    *(v11 + 34) = v14;
    _os_log_impl(&dword_1E4AD3000, v6, v7, "%s] Changing subject: %s, %{sensitive}s, %s", v11, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1E6921800](v12, -1, -1);
    MEMORY[0x1E6921800](v11, -1, -1);
  }

  else
  {
    v10 = *(v0 + 248);
  }

  v15 = *(v0 + 216);
  v16 = *(v0 + 224);
  v17 = *(v0 + 200);
  v18 = *(v0 + 208);
  v19 = *(v0 + 184);
  v20 = *(v0 + 192);
  v21 = *(v0 + 168);
  v22 = *(v0 + 176);
  v23 = *(v0 + 160);
  *(v0 + 16) = v10;
  *(v0 + 24) = v21;
  *(v0 + 32) = v22;
  *(v0 + 40) = v19;
  *(v0 + 48) = v20;
  *(v0 + 56) = v17;
  *(v0 + 64) = v18;
  *(v0 + 72) = v15;
  *(v0 + 80) = v16;
  v24 = v23[6];
  v25 = v23[7];
  __swift_project_boxed_opaque_existential_1(v23 + 3, v24);
  v26 = *(v0 + 16);
  *(v0 + 104) = *(v0 + 32);
  v27 = *(v0 + 64);
  *(v0 + 120) = *(v0 + 48);
  *(v0 + 136) = v27;
  *(v0 + 152) = *(v0 + 80);
  *(v0 + 88) = v26;
  v28 = *(v25 + 32);

  v34 = (v28 + *v28);
  v29 = v28[1];
  v30 = swift_task_alloc();
  *(v0 + 232) = v30;
  v31 = sub_1E4B1C210();
  *v30 = v0;
  v30[1] = sub_1E4BAD644;

  return v34(v0 + 88, &type metadata for RCSGroupChatChangeSubjectRequest, v31, v24, v25);
}

uint64_t sub_1E4BAD644()
{
  v2 = *(*v1 + 232);
  v3 = *v1;
  *(v3 + 240) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4BAD780, 0, 0);
  }

  else
  {
    sub_1E4B1B050(v3 + 16);
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E4BAD780()
{
  sub_1E4B1B050(v0 + 16);
  v1 = *(v0 + 8);
  v2 = *(v0 + 240);

  return v1();
}

uint64_t sub_1E4BAD7E4(uint64_t a1, uint64_t *a2)
{
  *(v3 + 144) = *a1;
  v4 = *(a1 + 8);
  *(v3 + 72) = v2;
  *(v3 + 80) = v4;
  *(v3 + 88) = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  *(v3 + 104) = *(a1 + 32);
  *(v3 + 112) = v5;
  *(v3 + 120) = v6;
  return MEMORY[0x1EEE6DFA0](sub_1E4BAD828, 0, 0);
}

uint64_t sub_1E4BAD828()
{
  v37 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v3 = qword_1ECF92418;

  if (v3 != -1)
  {
    swift_once();
    v25 = *(v0 + 104);
    v26 = *(v0 + 88);
  }

  v4 = *(v0 + 120);
  v5 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v5, qword_1ECF97018);

  v6 = sub_1E4BEFB5C();
  v7 = sub_1E4BF04BC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 112);
    v9 = *(v0 + 120);
    v29 = *(v0 + 96);
    v30 = *(v0 + 104);
    v27 = *(v0 + 80);
    v28 = *(v0 + 88);
    v10 = *(v0 + 144);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v34 = v12;
    *v11 = 136316162;
    *(v11 + 4) = sub_1E4B30548(v8, v9, &v34);
    *(v11 + 12) = 2080;
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_1E4BF069C();
    MEMORY[0x1E69205B0](0xD000000000000012, 0x80000001E4BF14E0);
    sub_1E4AEC058(v10);
    MEMORY[0x1E69205B0](41, 0xE100000000000000);
    v13 = sub_1E4B30548(v35, v36, &v34);

    *(v11 + 14) = v13;
    *(v11 + 22) = 2080;
    *(v11 + 24) = sub_1E4B30548(v27, v28, &v34);
    *(v11 + 32) = 2080;
    *(v11 + 34) = sub_1E4B30548(v29, v30, &v34);
    *(v11 + 42) = 2080;
    v35 = 0;
    v36 = 0xE000000000000000;

    sub_1E4BF069C();

    v35 = 0x617265704F534352;
    v36 = 0xEF2844496E6F6974;
    MEMORY[0x1E69205B0](v8, v9);
    MEMORY[0x1E69205B0](41, 0xE100000000000000);

    v14 = sub_1E4B30548(v35, v36, &v34);

    *(v11 + 44) = v14;
    _os_log_impl(&dword_1E4AD3000, v6, v7, "%s] Exiting group chat: %s, %s/%s, %s", v11, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x1E6921800](v12, -1, -1);
    MEMORY[0x1E6921800](v11, -1, -1);
  }

  else
  {
    v10 = *(v0 + 144);
  }

  v16 = *(v0 + 112);
  v15 = *(v0 + 120);
  v31 = *(v0 + 80);
  v33 = *(v0 + 96);
  v17 = *(v0 + 72);
  v18 = v17[6];
  v19 = v17[7];
  __swift_project_boxed_opaque_existential_1(v17 + 3, v18);
  *(v0 + 16) = v10;
  *(v0 + 24) = v31;
  *(v0 + 40) = v33;
  *(v0 + 56) = v16;
  *(v0 + 64) = v15;
  v20 = *(v19 + 32);

  v32 = (v20 + *v20);
  v21 = v20[1];
  v22 = swift_task_alloc();
  *(v0 + 128) = v22;
  v23 = sub_1E4B1C360();
  *v22 = v0;
  v22[1] = sub_1E4BADC78;

  return v32(v0 + 16, &type metadata for RCSGroupChatLeaveRequest, v23, v18, v19);
}

uint64_t sub_1E4BADC78()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  v3[17] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4BADDDC, 0, 0);
  }

  else
  {
    v4 = v3[15];
    v5 = v3[13];
    v6 = v3[11];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_1E4BADDDC()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[11];

  v4 = v0[1];
  v5 = v0[17];

  return v4();
}

uint64_t sub_1E4BADE58(uint64_t a1, uint64_t *a2)
{
  *(v3 + 64) = v2;
  *(v3 + 128) = *a1;
  *(v3 + 72) = *(a1 + 8);
  v4 = *a2;
  v5 = a2[1];
  *(v3 + 88) = *(a1 + 24);
  *(v3 + 96) = v4;
  *(v3 + 104) = v5;
  return MEMORY[0x1EEE6DFA0](sub_1E4BADE98, 0, 0);
}

uint64_t sub_1E4BADE98()
{
  v36 = v0;
  if (qword_1ECF92418 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v4, qword_1ECF97018);

  v5 = sub_1E4BEFB5C();
  v6 = sub_1E4BF04BC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 96);
    v8 = *(v0 + 104);
    v30 = *(v0 + 72);
    v9 = *(v0 + 128);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v33 = v11;
    *v10 = 136315906;
    *(v10 + 4) = sub_1E4B30548(v7, v8, &v33);
    *(v10 + 12) = 2080;
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_1E4BF069C();
    MEMORY[0x1E69205B0](0xD000000000000012, 0x80000001E4BF14E0);
    v32 = v9;
    sub_1E4AEC058(v9);
    MEMORY[0x1E69205B0](41, 0xE100000000000000);
    v12 = sub_1E4B30548(v34, v35, &v33);

    *(v10 + 14) = v12;
    *(v10 + 22) = 2080;
    v13 = sub_1E4BB0808(v30);
    v15 = sub_1E4B30548(v13, v14, &v33);

    *(v10 + 24) = v15;
    *(v10 + 32) = 2080;
    v34 = 0;
    v35 = 0xE000000000000000;

    sub_1E4BF069C();

    v34 = 0x617265704F534352;
    v35 = 0xEF2844496E6F6974;
    MEMORY[0x1E69205B0](v7, v8);
    MEMORY[0x1E69205B0](41, 0xE100000000000000);

    v16 = sub_1E4B30548(v34, v35, &v33);

    *(v10 + 34) = v16;
    _os_log_impl(&dword_1E4AD3000, v5, v6, "%s] Creating group chat: %s, %s, %s", v10, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1E6921800](v11, -1, -1);
    MEMORY[0x1E6921800](v10, -1, -1);
  }

  else
  {
    v32 = *(v0 + 128);
  }

  v18 = *(v0 + 96);
  v17 = *(v0 + 104);
  v19 = *(v0 + 80);
  v20 = *(v0 + 88);
  v21 = *(v0 + 64);
  v22 = *(v0 + 72);
  v23 = v21[6];
  v24 = v21[7];
  __swift_project_boxed_opaque_existential_1(v21 + 3, v23);
  *(v0 + 16) = v32;
  *(v0 + 24) = v22;
  *(v0 + 32) = v19;
  *(v0 + 40) = v20;
  *(v0 + 48) = v18;
  *(v0 + 56) = v17;
  v25 = *(v24 + 32);

  v31 = (v25 + *v25);
  v26 = v25[1];
  v27 = swift_task_alloc();
  *(v0 + 112) = v27;
  v28 = sub_1E4B1C4B0();
  *v27 = v0;
  v27[1] = sub_1E4BAE2D0;

  return v31(v0 + 16, &type metadata for RCSGroupChatCreateRequest, v28, v23, v24);
}