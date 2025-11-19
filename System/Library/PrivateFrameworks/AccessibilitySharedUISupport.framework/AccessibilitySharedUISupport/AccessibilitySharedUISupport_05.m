unint64_t sub_23DAA0690()
{
  result = qword_27E2FE230;
  if (!qword_27E2FE230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE230);
  }

  return result;
}

unint64_t sub_23DAA06E4(uint64_t a1)
{
  result = sub_23DAA070C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23DAA070C()
{
  result = qword_27E2FE238;
  if (!qword_27E2FE238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE238);
  }

  return result;
}

void sub_23DAA0760(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    do
    {
      v3 = *v2++;
      if (UIAccessibilityIsVoiceOverRunning())
      {
        v4 = VOCommandIdentifier.rawValue.getter();
        MEMORY[0x23EEF6D00](v4);

        v5 = objc_opt_self();
        v6 = sub_23DB7087C();

        [v5 triggerEventCommand_];
      }

      --v1;
    }

    while (v1);
  }
}

void sub_23DAA084C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    do
    {
      v3 = *v2++;
      if (UIAccessibilityIsVoiceOverRunning())
      {
        v4 = VOCommandIdentifier.rawValue.getter();
        MEMORY[0x23EEF6D00](v4);

        v5 = objc_opt_self();
        v6 = sub_23DB7087C();

        [v5 triggerEventCommand_];
      }

      --v1;
    }

    while (v1);
  }
}

void sub_23DAA0938()
{
  if (qword_27E2FBBD0 != -1)
  {
    swift_once();
  }

  v0 = qword_27E30A6A8;
  v1 = *(qword_27E30A6A8 + 24);
  swift_beginAccess();
  LODWORD(v1) = *(v1 + 40);
  if (v1 != UIAccessibilityIsVoiceOverRunning())
  {
    IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
    v3 = *(v0 + 24);
    swift_beginAccess();
    *(v3 + 40) = IsVoiceOverRunning;

    sub_23DABC004();
  }

  if (UIAccessibilityIsVoiceOverRunning())
  {
    v4 = objc_opt_self();
    [v4 connectToVO];
    if (UIAccessibilityIsVoiceOverRunning())
    {
      v5 = sub_23DB7087C();
      [v4 triggerEventCommand_];
    }
  }
}

uint64_t sub_23DAA0A58()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  LODWORD(v1) = *(v1 + 40);
  result = UIAccessibilityIsVoiceOverRunning();
  if (v1 != result)
  {
    IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
    v4 = *(v0 + 24);
    swift_beginAccess();
    *(v4 + 40) = IsVoiceOverRunning;

    sub_23DABC004();
  }

  return result;
}

char sub_23DAA0ADC()
{
  IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
  if (IsVoiceOverRunning)
  {
    v2 = [objc_opt_self() getRecognizedGesture];
    v3 = sub_23DB708BC();
    v5 = v4;

    v6._countAndFlagsBits = v3;
    v6._object = v5;
    LOBYTE(IsVoiceOverRunning) = VOCommandIdentifier.init(rawValue:)(v6);
    if (v9 != 64)
    {
      v7 = *(v0 + 16);
      swift_beginAccess();
      *(v7 + 40) = v9;

      sub_23DABC32C();
    }
  }

  return IsVoiceOverRunning;
}

uint64_t sub_23DAA0B90()
{
  [objc_opt_self() getSpeakingRate];
  v2 = v1;
  v3 = *(v0 + 32);
  result = swift_beginAccess();
  if (vabds_f32(*(v3 + 40), v2) > 1.0)
  {
    *(v3 + 40) = v2;

    sub_23DABC02C();
  }

  return result;
}

uint64_t sub_23DAA0C3C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701736270;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v4 = 0x64657265626D754ELL;
    }

    if (v3 == 2)
    {
      v5 = 0x800000023DB85A40;
    }

    else
    {
      v5 = 0xEC00000064697247;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x656C4564656D614ELL;
    }

    else
    {
      v4 = 1701736270;
    }

    if (v3)
    {
      v5 = 0xED000073746E656DLL;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xD000000000000010;
  v8 = 0x800000023DB85A40;
  if (a2 != 2)
  {
    v7 = 0x64657265626D754ELL;
    v8 = 0xEC00000064697247;
  }

  if (a2)
  {
    v2 = 0x656C4564656D614ELL;
    v6 = 0xED000073746E656DLL;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23DB70DBC();
  }

  return v11 & 1;
}

uint64_t sub_23DAA0DA0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB000000006E6F69;
  v3 = 0x7461746369446F4ELL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x69447265626D754ELL;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (v4 == 2)
    {
      v6 = 0xEF6E6F6974617463;
    }

    else
    {
      v6 = 0x800000023DB85AB0;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x69446C616D726F4ELL;
    }

    else
    {
      v5 = 0x7461746369446F4ELL;
    }

    if (v4)
    {
      v6 = 0xEF6E6F6974617463;
    }

    else
    {
      v6 = 0xEB000000006E6F69;
    }
  }

  v7 = 0x69447265626D754ELL;
  v8 = 0x800000023DB85AB0;
  if (a2 == 2)
  {
    v8 = 0xEF6E6F6974617463;
  }

  else
  {
    v7 = 0xD000000000000011;
  }

  if (a2)
  {
    v3 = 0x69446C616D726F4ELL;
    v2 = 0xEF6E6F6974617463;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23DB70DBC();
  }

  return v11 & 1;
}

uint64_t sub_23DAA0F08(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000010;
  v3 = "arrowtriangle.down.fill";
  v4 = a1;
  v5 = 0xD000000000000016;
  if (a1 == 4)
  {
    v6 = "VO.Tutorial.Navigation.Previous";
  }

  else
  {
    v5 = 0xD000000000000010;
    v6 = "VO.Tutorial.Activation";
  }

  if (a1 == 3)
  {
    v7 = 0xD00000000000001FLL;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v6 = "VO.Tutorial.Navigation.Next";
  }

  v8 = 0xD000000000000013;
  if (a1 == 1)
  {
    v9 = "VO.Tutorial.Home";
  }

  else
  {
    v8 = 0xD00000000000001BLL;
    v9 = "VO.Tutorial.Welcome";
  }

  if (v4)
  {
    v10 = v9;
  }

  else
  {
    v8 = 0xD000000000000010;
    v10 = "arrowtriangle.down.fill";
  }

  if (v4 <= 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD00000000000001FLL;
      v3 = "VO.Tutorial.Navigation.Next";
    }

    else if (a2 == 4)
    {
      v2 = 0xD000000000000016;
      v3 = "VO.Tutorial.Navigation.Previous";
    }

    else
    {
      v3 = "VO.Tutorial.Activation";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000013;
      v3 = "VO.Tutorial.Home";
    }

    else
    {
      v2 = 0xD00000000000001BLL;
      v3 = "VO.Tutorial.Welcome";
    }
  }

  if (v11 == v2 && (v12 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_23DB70DBC();
  }

  return v13 & 1;
}

uint64_t sub_23DAA107C()
{
  v1 = *v0;
  sub_23DB70E0C();
  sub_23DB7091C();

  return sub_23DB70E4C();
}

uint64_t sub_23DAA1150()
{
  *v0;
  *v0;
  *v0;
  sub_23DB7091C();
}

uint64_t sub_23DAA1210()
{
  v1 = *v0;
  sub_23DB70E0C();
  sub_23DB7091C();

  return sub_23DB70E4C();
}

uint64_t sub_23DAA12E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23DAA92BC();
  *a2 = result;
  return result;
}

void sub_23DAA1310(unint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701736270;
  v4 = 0x800000023DB85A40;
  v5 = 0xD000000000000010;
  if (*v1 != 2)
  {
    v5 = 0x64657265626D754ELL;
    v4 = 0xEC00000064697247;
  }

  if (*v1)
  {
    v3 = 0x656C4564656D614ELL;
    v2 = 0xED000073746E656DLL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_23DAA13A0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E696E657473694CLL;
  v4 = 0xE900000000000067;
  if (v2 != 1)
  {
    v3 = 6710863;
    v4 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x676E697065656C53;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x6E696E657473694CLL;
  v8 = 0xE900000000000067;
  if (*a2 != 1)
  {
    v7 = 6710863;
    v8 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x676E697065656C53;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23DB70DBC();
  }

  return v11 & 1;
}

uint64_t sub_23DAA149C()
{
  v1 = *v0;
  sub_23DB70E0C();
  sub_23DB7091C();

  return sub_23DB70E4C();
}

uint64_t sub_23DAA153C()
{
  *v0;
  *v0;
  sub_23DB7091C();
}

uint64_t sub_23DAA15C8()
{
  v1 = *v0;
  sub_23DB70E0C();
  sub_23DB7091C();

  return sub_23DB70E4C();
}

uint64_t sub_23DAA1664@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23DAA9308();
  *a2 = result;
  return result;
}

void sub_23DAA1694(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE900000000000067;
  v5 = 0x6E696E657473694CLL;
  if (v2 != 1)
  {
    v5 = 6710863;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x676E697065656C53;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_23DAA16FC()
{
  v1 = *v0;
  sub_23DB70E0C();
  sub_23DB7091C();

  return sub_23DB70E4C();
}

uint64_t sub_23DAA17E4()
{
  *v0;
  *v0;
  *v0;
  sub_23DB7091C();
}

uint64_t sub_23DAA18B8()
{
  v1 = *v0;
  sub_23DB70E0C();
  sub_23DB7091C();

  return sub_23DB70E4C();
}

uint64_t sub_23DAA199C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23DAA9354();
  *a2 = result;
  return result;
}

void sub_23DAA19CC(unint64_t *a1@<X8>)
{
  v2 = 0xEB000000006E6F69;
  v3 = 0x7461746369446F4ELL;
  v4 = 0x69447265626D754ELL;
  v5 = 0xEF6E6F6974617463;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000011;
    v5 = 0x800000023DB85AB0;
  }

  if (*v1)
  {
    v3 = 0x69446C616D726F4ELL;
    v2 = 0xEF6E6F6974617463;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_23DAA1A70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000013;
  }

  else
  {
    v4 = 0xD000000000000012;
  }

  if (v3)
  {
    v5 = "SpellingDictation";
  }

  else
  {
    v5 = "CommandWindowShown";
  }

  if (*a2)
  {
    v6 = 0xD000000000000013;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (*a2)
  {
    v7 = "CommandWindowShown";
  }

  else
  {
    v7 = "SpellingDictation";
  }

  if (v4 == v6 && (v5 | 0x8000000000000000) == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23DB70DBC();
  }

  return v9 & 1;
}

uint64_t sub_23DAA1B18()
{
  v1 = *v0;
  sub_23DB70E0C();
  sub_23DB7091C();

  return sub_23DB70E4C();
}

uint64_t sub_23DAA1B94()
{
  *v0;
  sub_23DB7091C();
}

uint64_t sub_23DAA1BFC()
{
  v1 = *v0;
  sub_23DB70E0C();
  sub_23DB7091C();

  return sub_23DB70E4C();
}

uint64_t sub_23DAA1C74@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23DB70D8C();

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

void sub_23DAA1CD4(unint64_t *a1@<X8>)
{
  v2 = "CommandWindowShown";
  v3 = 0xD000000000000012;
  if (*v1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v2 = "SpellingDictation";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

AccessibilitySharedUISupport::VCCommandIdentifier_optional __swiftcall VCCommandIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23DB70DCC();

  v5 = 0;
  v6 = 41;
  switch(v3)
  {
    case 0:
      goto LABEL_55;
    case 1:
      v5 = 1;
      goto LABEL_55;
    case 2:
      v5 = 2;
      goto LABEL_55;
    case 3:
      v5 = 3;
      goto LABEL_55;
    case 4:
      v5 = 4;
      goto LABEL_55;
    case 5:
      v5 = 5;
      goto LABEL_55;
    case 6:
      v5 = 6;
      goto LABEL_55;
    case 7:
      v5 = 7;
      goto LABEL_55;
    case 8:
      v5 = 8;
      goto LABEL_55;
    case 9:
      v5 = 9;
      goto LABEL_55;
    case 10:
      v5 = 10;
      goto LABEL_55;
    case 11:
      v5 = 11;
      goto LABEL_55;
    case 12:
      v5 = 12;
      goto LABEL_55;
    case 13:
      v5 = 13;
      goto LABEL_55;
    case 14:
      v5 = 14;
      goto LABEL_55;
    case 15:
      v5 = 15;
      goto LABEL_55;
    case 16:
      v5 = 16;
      goto LABEL_55;
    case 17:
      v5 = 17;
      goto LABEL_55;
    case 18:
      v5 = 18;
      goto LABEL_55;
    case 19:
      v5 = 19;
      goto LABEL_55;
    case 20:
      v5 = 20;
      goto LABEL_55;
    case 21:
      v5 = 21;
      goto LABEL_55;
    case 22:
      v5 = 22;
      goto LABEL_55;
    case 23:
      v5 = 23;
      goto LABEL_55;
    case 24:
      v5 = 24;
      goto LABEL_55;
    case 25:
      v5 = 25;
      goto LABEL_55;
    case 26:
      v5 = 26;
      goto LABEL_55;
    case 27:
      v5 = 27;
      goto LABEL_55;
    case 28:
      v5 = 28;
      goto LABEL_55;
    case 29:
      v5 = 29;
      goto LABEL_55;
    case 30:
      v5 = 30;
      goto LABEL_55;
    case 31:
      v5 = 31;
      goto LABEL_55;
    case 32:
      v5 = 32;
      goto LABEL_55;
    case 33:
      v5 = 33;
      goto LABEL_55;
    case 34:
      v5 = 34;
      goto LABEL_55;
    case 35:
      v5 = 35;
      goto LABEL_55;
    case 36:
      v5 = 36;
      goto LABEL_55;
    case 37:
      v5 = 37;
      goto LABEL_55;
    case 38:
      v5 = 38;
      goto LABEL_55;
    case 39:
      v5 = 39;
      goto LABEL_55;
    case 40:
      v5 = 40;
LABEL_55:
      v6 = v5;
      break;
    case 41:
      break;
    case 42:
      v6 = 42;
      break;
    case 43:
      v6 = 43;
      break;
    case 44:
      v6 = 44;
      break;
    case 45:
      v6 = 45;
      break;
    case 46:
      v6 = 46;
      break;
    case 47:
      v6 = 47;
      break;
    case 48:
      v6 = 48;
      break;
    case 49:
      v6 = 49;
      break;
    case 50:
      v6 = 50;
      break;
    case 51:
      v6 = 51;
      break;
    case 52:
      v6 = 52;
      break;
    case 53:
      v6 = 53;
      break;
    case 54:
      v6 = 54;
      break;
    case 55:
      v6 = 55;
      break;
    case 56:
      v6 = 56;
      break;
    case 57:
      v6 = 57;
      break;
    case 58:
      v6 = 58;
      break;
    default:
      v6 = 59;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t VCCommandIdentifier.rawValue.getter()
{
  result = 0x472E6D6574737953;
  switch(*v0)
  {
    case 1:
    case 0x27:
      result = 0xD00000000000001ALL;
      break;
    case 2:
      return result;
    case 3:
    case 0x1B:
    case 0x25:
    case 0x28:
      result = 0xD000000000000015;
      break;
    case 4:
    case 0x20:
    case 0x29:
    case 0x2A:
      result = 0xD000000000000014;
      break;
    case 5:
    case 0x34:
      result = 0xD000000000000026;
      break;
    case 6:
      result = 0xD00000000000002ALL;
      break;
    case 7:
    case 0x30:
      result = 0xD000000000000025;
      break;
    case 8:
      result = 0xD000000000000023;
      break;
    case 9:
    case 0x10:
    case 0x33:
      result = 0xD000000000000019;
      break;
    case 0xA:
    case 0x2C:
      result = 0xD00000000000001BLL;
      break;
    case 0xB:
    case 0x2E:
    case 0x35:
      result = 0xD000000000000018;
      break;
    case 0xC:
      result = 0xD000000000000016;
      break;
    case 0xD:
    case 0x14:
      result = 0xD00000000000002BLL;
      break;
    case 0xE:
      result = 0x736E552E74786554;
      break;
    case 0xF:
      result = 0xD00000000000002CLL;
      break;
    case 0x11:
    case 0x22:
      result = 0xD000000000000011;
      break;
    case 0x12:
      result = 0xD000000000000034;
      break;
    case 0x13:
      result = 0xD000000000000037;
      break;
    case 0x15:
      result = 0xD000000000000016;
      break;
    case 0x16:
      result = 0xD000000000000016;
      break;
    case 0x17:
      result = 0xD000000000000016;
      break;
    case 0x18:
    case 0x23:
    case 0x2B:
      result = 0xD00000000000001DLL;
      break;
    case 0x19:
      result = 0xD000000000000029;
      break;
    case 0x1A:
      result = 0xD000000000000027;
      break;
    case 0x1C:
      result = 0x552E6D6574737953;
      break;
    case 0x1D:
      result = 0x522E6D6574737953;
      break;
    case 0x1E:
    case 0x24:
      result = 0xD00000000000001CLL;
      break;
    case 0x1F:
      result = 0xD000000000000013;
      break;
    case 0x21:
      result = 0xD000000000000012;
      break;
    case 0x26:
    case 0x31:
      result = 0xD000000000000017;
      break;
    case 0x2D:
      result = 0xD000000000000016;
      break;
    case 0x2F:
      result = 0xD000000000000021;
      break;
    case 0x32:
      result = 0x532E6D6574737953;
      break;
    case 0x36:
    case 0x3A:
      result = 0xD000000000000010;
      break;
    case 0x37:
      result = 0x656449726568744FLL;
      break;
    case 0x38:
      result = 0;
      break;
    case 0x39:
      result = 0xD000000000000020;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

uint64_t sub_23DAA26F8(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = VCCommandIdentifier.rawValue.getter();
  v4 = v3;
  if (v2 == VCCommandIdentifier.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_23DB70DBC();
  }

  return v7 & 1;
}

unint64_t sub_23DAA2798()
{
  result = qword_27E2FE268;
  if (!qword_27E2FE268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE268);
  }

  return result;
}

uint64_t sub_23DAA27F0()
{
  v1 = *v0;
  sub_23DB70E0C();
  VCCommandIdentifier.rawValue.getter();
  sub_23DB7091C();

  return sub_23DB70E4C();
}

uint64_t sub_23DAA285C()
{
  v2 = *v0;
  VCCommandIdentifier.rawValue.getter();
  sub_23DB7091C();
}

uint64_t sub_23DAA28C4()
{
  v1 = *v0;
  sub_23DB70E0C();
  VCCommandIdentifier.rawValue.getter();
  sub_23DB7091C();

  return sub_23DB70E4C();
}

unint64_t sub_23DAA2934@<X0>(unint64_t *a1@<X8>)
{
  result = VCCommandIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23DAA2974()
{
  v0 = sub_23DB6EBFC();
  __swift_allocate_value_buffer(v0, qword_27E2FE250);
  __swift_project_value_buffer(v0, qword_27E2FE250);
  return sub_23DB6EBEC();
}

uint64_t sub_23DAA29F4()
{
  type metadata accessor for VoiceControlController();
  swift_allocObject();
  result = sub_23DAA2FA0();
  qword_27E30A6B0 = result;
  return result;
}

uint64_t sub_23DAA2A30()
{
  v1 = v0;
  v2 = sub_23DB707AC();
  v39 = *(v2 - 8);
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23DB707CC();
  v38 = *(v7 - 8);
  v8 = *(v38 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v37 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23DB707EC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v31 - v19;
  v21 = *(v0 + 32);
  swift_beginAccess();
  if (*(v21 + 40) && *(v21 + 40) != 1)
  {

    goto LABEL_6;
  }

  v22 = sub_23DB70DBC();

  if (v22)
  {
LABEL_6:
    sub_23DAA967C(0, &qword_27E2FCFE0, 0x277D85C78);
    v33 = sub_23DB70AEC();
    sub_23DB707DC();
    v32 = v20;
    sub_23DB707FC();
    v24 = *(v12 + 8);
    v35 = v12 + 8;
    v36 = v24;
    v34 = v11;
    v24(v16, v11);
    aBlock[4] = sub_23DAA97F0;
    aBlock[5] = v1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23DABB3DC;
    aBlock[3] = &block_descriptor_219;
    v25 = _Block_copy(aBlock);

    v26 = v37;
    sub_23DB707BC();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_23DAA96CC();
    v27 = v39;
    v31 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
    v28 = v38;
    sub_23DA17B80(&qword_27E2FE300, &qword_27E2FCFE8, &unk_23DB7A4E0);
    sub_23DB70C0C();
    v30 = v32;
    v29 = v33;
    MEMORY[0x23EEF6E80](v32, v26, v6, v25);
    _Block_release(v25);

    (*(v27 + 8))(v6, v2);
    (*(v28 + 8))(v26, v31);
    return v36(v30, v34);
  }

  return result;
}

uint64_t sub_23DAA2E70(uint64_t result)
{
  v1 = *(result + 152);
  if (v1)
  {
    v2 = result;
    v3 = *(result + 152);
    swift_unknownObjectRetain();
    v4 = sub_23DAA8C4C(0x6E696E657473696CLL, 0xEF73757461745367);
    v5 = *(v2 + 144);
    v6 = swift_allocObject();
    swift_weakInit();
    v8[4] = sub_23DAA9914;
    v8[5] = v6;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_23DB3C694;
    v8[3] = &block_descriptor_224;
    v7 = _Block_copy(v8);

    xpc_connection_send_message_with_reply(v1, v4, v5, v7);
    _Block_release(v7);
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_23DAA2FA0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE320, &qword_23DB7B4B8);
  swift_allocObject();
  *(v0 + 16) = sub_23DABC940(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE328, &qword_23DB7BBE0);
  swift_allocObject();
  *(v0 + 24) = sub_23DABCD40(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE330, &qword_23DB7BBE8);
  swift_allocObject();
  *(v0 + 32) = sub_23DABCF3C(2);
  swift_allocObject();
  *(v0 + 40) = sub_23DABC940(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE338, &unk_23DB7BBF0);
  swift_allocObject();
  *(v0 + 48) = sub_23DABD138(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE340, &qword_23DB75330);
  swift_allocObject();
  *(v0 + 56) = sub_23DABD334(0, 0xE000000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE348, &qword_23DB7BC00);
  swift_allocObject();
  *(v0 + 64) = sub_23DABD534(1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE350, &qword_23DB7BC08);
  swift_allocObject();
  *(v0 + 72) = sub_23DABD734(55);
  swift_allocObject();
  *(v0 + 80) = sub_23DABD334(0, 0xE000000000000000);
  swift_allocObject();
  *(v0 + 88) = sub_23DABD334(0, 0xE000000000000000);
  swift_allocObject();
  *(v0 + 96) = sub_23DABD334(0, 0xE000000000000000);
  swift_allocObject();
  *(v0 + 104) = sub_23DABD334(0, 0xE000000000000000);
  v2 = *MEMORY[0x277CCA868];
  v3 = *(MEMORY[0x277CCA868] + 8);
  v4 = *(MEMORY[0x277CCA868] + 16);
  v5 = *(MEMORY[0x277CCA868] + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE358, &qword_23DB7BC10);
  swift_allocObject();
  *(v0 + 112) = sub_23DABD930(v2, v3, v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE360, &qword_23DB7BC18);
  swift_allocObject();
  *(v0 + 120) = sub_23DABDB4C(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2FE368, &unk_23DB7BC20);
  swift_allocObject();
  *(v0 + 128) = sub_23DABDD48(52);
  swift_allocObject();
  *(v0 + 136) = sub_23DABC940(0);
  sub_23DAA967C(0, &qword_27E2FCFE0, 0x277D85C78);
  *(v0 + 144) = sub_23DB70AEC();
  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  *(v0 + 164) = 0;
  *(v0 + 168) = 0;
  *(v0 + 176) = sub_23DAA33AC;
  *(v0 + 184) = sub_23DAA347C;
  v6 = *MEMORY[0x277D81C90];
  if (*MEMORY[0x277D81C90])
  {
    v7 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(v7, 0, *(v1 + 184), v6, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v8 = CFNotificationCenterGetDarwinNotifyCenter();
  v9 = *(v1 + 176);
  v10 = sub_23DB7087C();
  CFNotificationCenterAddObserver(v8, 0, v9, v10, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  sub_23DAA8DC8();
  sub_23DAA764C();
  return v1;
}

uint64_t sub_23DAA33AC()
{
  if (qword_27E2FBBE0 != -1)
  {
    swift_once();
  }

  v0 = qword_27E30A6B0;
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 heySiriEnabled];

  v3 = *(v0 + 40);
  swift_beginAccess();
  *(v3 + 40) = v2;

  sub_23DABC004();
}

uint64_t sub_23DAA347C()
{
  if (qword_27E2FBBE0 != -1)
  {
    swift_once();
  }

  return sub_23DAA8DC8();
}

void sub_23DAA3520(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16))
  {
    v4 = sub_23DB6B36C(1752457552, 0xE400000000000000);
    if (v5)
    {
      sub_23DA16DC8(*(a1 + 56) + 32 * v4, v27);
      sub_23DAA967C(0, &qword_27E2FE2D8, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE310, &unk_23DB7C540);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_23DB74310;
        *(v6 + 32) = v23;
        v7 = *(v2 + 120);
        swift_beginAccess();
        v8 = *(v7 + 40);
        *(v7 + 40) = v6;
        v9 = v23;

        sub_23DABC3A4();
      }
    }
  }

  if (*(a1 + 16))
  {
    v10 = sub_23DB6B36C(0x6C616E69467349, 0xE700000000000000);
    if (v11)
    {
      sub_23DA16DC8(*(a1 + 56) + 32 * v10, v27);
      if (swift_dynamicCast())
      {
        if (v23 == 5457241 && v24 == 0xE300000000000000 || (sub_23DB70DBC() & 1) != 0)
        {

          v12 = *(v2 + 128);
          swift_beginAccess();
          v13 = 53;
        }

        else
        {
          if (v23 == 20302 && v24 == 0xE200000000000000)
          {
          }

          else
          {
            v22 = sub_23DB70DBC();

            if ((v22 & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          v12 = *(v2 + 128);
          swift_beginAccess();
          v13 = 52;
        }

        *(v12 + 40) = v13;

        sub_23DABC3CC();
      }
    }
  }

LABEL_13:
  if (*(a1 + 16))
  {
    v14 = sub_23DB6B36C(0x726F727265, 0xE500000000000000);
    if (v15)
    {
      sub_23DA16DC8(*(a1 + 56) + 32 * v14, v27);
      if (swift_dynamicCast())
      {
        if (qword_27E2FBBD8 != -1)
        {
          swift_once();
        }

        v16 = sub_23DB6EBFC();
        __swift_project_value_buffer(v16, qword_27E2FE250);

        v17 = sub_23DB6EBDC();
        v18 = sub_23DB70AAC();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v27[0] = v20;
          *v19 = 136315138;
          v21 = sub_23DB5EC5C(v25, v26, v27);

          *(v19 + 4) = v21;
          _os_log_impl(&dword_23D9FF000, v17, v18, "Update grid path error %s", v19, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v20);
          MEMORY[0x23EEF7D90](v20, -1, -1);
          MEMORY[0x23EEF7D90](v19, -1, -1);
        }

        else
        {
        }
      }
    }
  }
}

uint64_t sub_23DAA3918(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v3 = *(result + 120);
  swift_beginAccess();
  v4 = *(v3 + 40);
  *(v3 + 40) = MEMORY[0x277D84F90];

  sub_23DABC3A4();

  v5 = MEMORY[0x23EEF7F80](a1);
  if (v5 != sub_23DB6EC1C() || !xpc_dictionary_get_value(a1, "replyObject"))
  {
  }

  v6 = MEMORY[0x23EEF7F80]();
  if (v6 != sub_23DB6EC1C() || (swift_getObjectType(), (v7 = sub_23DAA3AC0()) == 0) || (v8 = sub_23DAA3B2C(v7), , !v8))
  {
    swift_unknownObjectRelease();
  }

  if (*(v8 + 16) && (v9 = sub_23DB6B36C(0xD000000000000015, 0x800000023DB8AE20), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);

    sub_23DAA3520(v11);

    swift_unknownObjectRelease();
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_23DAA3AC0()
{
  result = _CFXPCCreateCFObjectFromXPCObject();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2C8, &qword_23DB7BBA8);
    if (swift_dynamicCast())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_23DAA3B2C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2B8, &qword_23DB7BB98);
    v2 = sub_23DB70D6C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v14 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v14);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v5)) | (v14 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v25 = *(*(a1 + 56) + 8 * v15);

        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2C0, &qword_23DB7BBA0);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_23DB6B36C(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = v2[7];
          v13 = *(v12 + 8 * v11);
          *(v12 + 8 * v11) = v24;

          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          *(v2[7] + 8 * result) = v24;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_24;
          }

          v2[2] = v23;
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v14 = v8;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_23DAA3D68(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE308, &unk_23DB7BBC0);
    v2 = sub_23DB70D6C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v16 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v16 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v16);
    ++v9;
    if (v6)
    {
      while (1)
      {
        v17 = __clz(__rbit64(v6)) | (v16 << 6);
        v18 = (*(v1 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v29 = *(*(v1 + 56) + 8 * v17);

        swift_unknownObjectRetain();
        if (!swift_dynamicCast())
        {
          break;
        }

        v6 &= v6 - 1;
        result = sub_23DB6B36C(v20, v19);
        if (v21)
        {
          v10 = v1;
          v11 = 16 * result;
          v12 = (v2[6] + 16 * result);
          v13 = v12[1];
          *v12 = v20;
          v12[1] = v19;

          v14 = (v2[7] + v11);
          v1 = v10;
          v15 = v14[1];
          *v14 = v27;
          v14[1] = v28;

          v9 = v16;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v22 = (v2[6] + 16 * result);
          *v22 = v20;
          v22[1] = v19;
          v23 = (v2[7] + 16 * result);
          *v23 = v27;
          v23[1] = v28;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_24;
          }

          v2[2] = v26;
          v9 = v16;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v16 = v9;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_23DAA3FB4(uint64_t result)
{
  v2 = *(v1 + 152);
  if (v2)
  {
    v3 = 0xEF73757461745367;
    if (result)
    {
      if (result == 1)
      {
        v4 = 0x5379616C7265766FLL;
      }

      else
      {
        v4 = 0x6F69746174636964;
      }

      if (result == 1)
      {
        v3 = 0xED00007375746174;
      }

      else
      {
        v3 = 0xEF7375746174536ELL;
      }
    }

    else
    {
      v4 = 0x6E696E657473696CLL;
    }

    v5 = *(v1 + 152);
    swift_unknownObjectRetain();
    v6 = sub_23DAA8C4C(v4, v3);

    v7 = *(v1 + 144);
    v8 = swift_allocObject();
    swift_weakInit();
    v10[4] = sub_23DAA9914;
    v10[5] = v8;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_23DB3C694;
    v10[3] = &block_descriptor_216;
    v9 = _Block_copy(v10);

    xpc_connection_send_message_with_reply(v2, v6, v7, v9);
    _Block_release(v9);
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_23DAA413C(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = MEMORY[0x23EEF7F80](a1);
    if (v3 == sub_23DB6EC1C() && xpc_dictionary_get_value(a1, "replyObject"))
    {
      v4 = MEMORY[0x23EEF7F80]();
      if (v4 == sub_23DB6EC1C())
      {
        sub_23DAA41F8();
      }

      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_23DAA41F8()
{
  v236 = sub_23DB707AC();
  v0 = *(v236 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v236, v2);
  v237 = v206 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = sub_23DB707CC();
  v4 = *(v235 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v235, v6);
  v238 = v206 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v8 = sub_23DAA3AC0();
  if (!v8)
  {
    return;
  }

  v9 = sub_23DAA3D68(v8);

  if (!v9)
  {
    return;
  }

  v11 = 0;
  v12 = *(v9 + 64);
  v229 = v9 + 64;
  v13 = 1 << *(v9 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v240 = 0x800000023DB8AF00;
  v227 = 0x800000023DB8AF20;
  v228 = (v13 + 63) >> 6;
  v222 = 0x800000023DB8AF40;
  v223 = 0x800000023DB85A40;
  v231 = (v0 + 8);
  v232 = &v245;
  v230 = (v4 + 8);
  v224 = 0x800000023DB8AF60;
  v220 = 0x800000023DB8AF80;
  v218 = 0x800000023DB8AFA0;
  v215 = 0x800000023DB8AFD0;
  v211 = 0x800000023DB8AFF0;
  v212 = 0x800000023DB86260;
  v213 = "SecondaryDefault";
  v214 = 0x800000023DB86240;
  v219 = 0x800000023DB85AB0;
  *&v10 = 136315138;
  v225 = v10;
  v216 = "SpellingDictation";
  v217 = "CommandWindowShown";
  v234 = v9;
  while (v15)
  {
LABEL_11:
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v18 = (v11 << 10) | (16 * v17);
    v19 = (*(v9 + 48) + v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = (*(v9 + 56) + v18);
    v23 = *v22;
    v24 = v22[1];
    v25 = *v19 == 0xD000000000000015 && v240 == v21;
    if (v25 || (v26 = *v19, v27 = v19[1], (sub_23DB70DBC() & 1) != 0))
    {

      v28 = sub_23DB70D8C();

      if (v28 <= 2)
      {
        v29 = v239[4];
        swift_beginAccess();
        v226 = v28;
        *(v29 + 40) = v28;
        sub_23DAA967C(0, &qword_27E2FCFE0, 0x277D85C78);

        v233 = sub_23DB70AEC();
        v30 = swift_allocObject();
        swift_weakInit();
        v247 = sub_23DAA97D8;
        v248 = v30;
        aBlock = MEMORY[0x277D85DD0];
        v244 = 1107296256;
        v245 = sub_23DABB3DC;
        v246 = &block_descriptor_211;
        v31 = _Block_copy(&aBlock);

        v32 = v238;
        sub_23DB707BC();
        aBlock = MEMORY[0x277D84F90];
        sub_23DAA96CC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
        sub_23DA17B80(&qword_27E2FE300, &qword_27E2FCFE8, &unk_23DB7A4E0);
        v34 = v236;
        v33 = v237;
        sub_23DB70C0C();
        v35 = v233;
        MEMORY[0x23EEF6EA0](0, v32, v33, v31);
        _Block_release(v31);

        (*v231)(v33, v34);
        (*v230)(v32, v235);
        if (qword_27E2FBBD8 != -1)
        {
          swift_once();
        }

        v36 = sub_23DB6EBFC();
        __swift_project_value_buffer(v36, qword_27E2FE250);
        v37 = sub_23DB6EBDC();
        v38 = sub_23DB70AAC();
        if (!os_log_type_enabled(v37, v38))
        {
          goto LABEL_155;
        }

        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        aBlock = v40;
        *v39 = v225;
        v9 = v234;
        if (v226)
        {
          if (v226 == 1)
          {
            v41 = 0xE900000000000067;
            v42 = 0x6E696E657473694CLL;
          }

          else
          {
            v41 = 0xE300000000000000;
            v42 = 6710863;
          }
        }

        else
        {
          v41 = 0xE800000000000000;
          v42 = 0x676E697065656C53;
        }

        v60 = sub_23DB5EC5C(v42, v41, &aBlock);

        *(v39 + 4) = v60;
        v61 = v38;
        v62 = v37;
        v63 = "listeningStatus: %s";
LABEL_78:
        _os_log_impl(&dword_23D9FF000, v62, v61, v63, v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x23EEF7D90](v40, -1, -1);
        MEMORY[0x23EEF7D90](v39, -1, -1);
      }
    }

    else
    {
      v233 = 0xD000000000000013;
      v43 = v20 == 0xD000000000000013 && v227 == v21;
      if (v43 || (sub_23DB70DBC() & 1) != 0 || (v20 == 0xD000000000000019 ? (v44 = v222 == v21) : (v44 = 0), v44 || (sub_23DB70DBC() & 1) != 0))
      {

        v45 = sub_23DB70D8C();
        if (v45 > 3)
        {

          goto LABEL_74;
        }

        v221 = v45;
        v226 = v23;
        v46 = v239[3];
        swift_beginAccess();
        v47 = *(v46 + 40);
        if (v47 == 2)
        {
          v48 = 0xD000000000000010;
        }

        else
        {
          v48 = 0x64657265626D754ELL;
        }

        if (v47 == 2)
        {
          v49 = v223;
        }

        else
        {
          v49 = 0xEC00000064697247;
        }

        if (*(v46 + 40))
        {
          v50 = 0x656C4564656D614ELL;
        }

        else
        {
          v50 = 1701736270;
        }

        if (*(v46 + 40))
        {
          v51 = 0xED000073746E656DLL;
        }

        else
        {
          v51 = 0xE400000000000000;
        }

        if (*(v46 + 40) <= 1u)
        {
          v52 = v50;
        }

        else
        {
          v52 = v48;
        }

        if (*(v46 + 40) <= 1u)
        {
          v53 = v51;
        }

        else
        {
          v53 = v49;
        }

        if (v221 == 2)
        {
          v54 = 0xD000000000000010;
        }

        else
        {
          v54 = 0x64657265626D754ELL;
        }

        if (v221 == 2)
        {
          v55 = v223;
        }

        else
        {
          v55 = 0xEC00000064697247;
        }

        if (v221)
        {
          v56 = 0x656C4564656D614ELL;
        }

        else
        {
          v56 = 1701736270;
        }

        if (v221)
        {
          v57 = 0xED000073746E656DLL;
        }

        else
        {
          v57 = 0xE400000000000000;
        }

        if (v221 <= 1u)
        {
          v58 = v56;
        }

        else
        {
          v58 = v54;
        }

        if (v221 <= 1u)
        {
          v59 = v57;
        }

        else
        {
          v59 = v55;
        }

        if (v52 == v58 && v53 == v59)
        {
        }

        else
        {
          v210 = 0xD000000000000010;
          v64 = sub_23DB70DBC();

          if ((v64 & 1) == 0)
          {
            v65 = v239[3];
            swift_beginAccess();
            *(v65 + 40) = v221;
            sub_23DAA967C(0, &qword_27E2FCFE0, 0x277D85C78);
            v209 = v65;

            v208 = sub_23DB70AEC();
            v66 = swift_allocObject();
            swift_weakInit();
            v247 = sub_23DAA97D8;
            v248 = v66;
            aBlock = MEMORY[0x277D85DD0];
            v244 = 1107296256;
            v245 = sub_23DABB3DC;
            v246 = &block_descriptor_204;
            v207 = _Block_copy(&aBlock);

            sub_23DB707BC();
            aBlock = MEMORY[0x277D84F90];
            v206[1] = sub_23DAA96CC();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
            sub_23DA17B80(&qword_27E2FE300, &qword_27E2FCFE8, &unk_23DB7A4E0);
            v68 = v236;
            v67 = v237;
            sub_23DB70C0C();
            v69 = v67;
            v71 = v207;
            v70 = v208;
            MEMORY[0x23EEF6EA0](0, v238, v69, v207);
            _Block_release(v71);

            (*v231)(v237, v68);
            (*v230)(v238, v235);

            if (qword_27E2FBBD8 != -1)
            {
              swift_once();
            }

            v72 = sub_23DB6EBFC();
            __swift_project_value_buffer(v72, qword_27E2FE250);
            v73 = sub_23DB6EBDC();
            v74 = sub_23DB70AAC();
            if (os_log_type_enabled(v73, v74))
            {
              v75 = swift_slowAlloc();
              v208 = v75;
              v209 = swift_slowAlloc();
              aBlock = v209;
              *v75 = v225;
              v76 = v221;
              v77 = 0x64657265626D754ELL;
              if (v221 == 2)
              {
                v77 = v210;
              }

              v78 = v223;
              if (v221 != 2)
              {
                v78 = 0xEC00000064697247;
              }

              v79 = 1701736270;
              if (v221)
              {
                v79 = 0x656C4564656D614ELL;
              }

              v80 = 0xE400000000000000;
              if (v221)
              {
                v80 = 0xED000073746E656DLL;
              }

              if (v221 <= 1u)
              {
                v81 = v79;
              }

              else
              {
                v81 = v77;
              }

              v221 = v73;
              if (v76 <= 1)
              {
                v82 = v80;
              }

              else
              {
                v82 = v78;
              }

              v83 = sub_23DB5EC5C(v81, v82, &aBlock);

              v84 = v208;
              *(v208 + 4) = v83;
              v85 = v221;
              _os_log_impl(&dword_23D9FF000, v221, v74, "currentOverlay: %s", v84, 0xCu);
              v86 = v209;
              __swift_destroy_boxed_opaque_existential_0(v209);
              MEMORY[0x23EEF7D90](v86, -1, -1);
              MEMORY[0x23EEF7D90](v84, -1, -1);
            }

            else
            {
            }
          }
        }
      }

      else
      {
        v226 = v23;
      }

      if (v20 == 0xD000000000000015 && v224 == v21 || (sub_23DB70DBC() & 1) != 0)
      {

        v9 = v234;
        if (qword_27E2FBBD8 != -1)
        {
          swift_once();
        }

        v87 = sub_23DB6EBFC();
        v88 = __swift_project_value_buffer(v87, qword_27E2FE250);
        v89 = sub_23DB6EBDC();
        v90 = sub_23DB70AAC();
        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          *v91 = 0;
          _os_log_impl(&dword_23D9FF000, v89, v90, "got dictation related xpc message", v91, 2u);
          MEMORY[0x23EEF7D90](v91, -1, -1);
        }

        v92 = sub_23DB70D8C();

        if (v92 <= 3)
        {
          v93 = v239[6];
          swift_beginAccess();
          v221 = v92;
          *(v93 + 40) = v92;
          sub_23DAA967C(0, &qword_27E2FCFE0, 0x277D85C78);

          v233 = sub_23DB70AEC();
          v94 = swift_allocObject();
          swift_weakInit();
          v247 = sub_23DAA97D8;
          v248 = v94;
          aBlock = MEMORY[0x277D85DD0];
          v244 = 1107296256;
          v245 = sub_23DABB3DC;
          v246 = &block_descriptor_197;
          v95 = _Block_copy(&aBlock);

          v226 = v88;
          v96 = v238;
          sub_23DB707BC();
          aBlock = MEMORY[0x277D84F90];
          sub_23DAA96CC();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
          sub_23DA17B80(&qword_27E2FE300, &qword_27E2FCFE8, &unk_23DB7A4E0);
          v97 = v236;
          v98 = v237;
          sub_23DB70C0C();
          v99 = v233;
          MEMORY[0x23EEF6EA0](0, v96, v98, v95);
          _Block_release(v95);

          (*v231)(v98, v97);
          (*v230)(v96, v235);

          v37 = sub_23DB6EBDC();
          v100 = sub_23DB70AAC();
          if (os_log_type_enabled(v37, v100))
          {
            v39 = swift_slowAlloc();
            v40 = swift_slowAlloc();
            aBlock = v40;
            *v39 = v225;
            if (v221 > 1u)
            {
              v9 = v234;
              if (v221 != 2)
              {
                v101 = 0xD000000000000011;
                v102 = v219;
                goto LABEL_143;
              }

              v123 = 0x7265626D754ELL;
            }

            else
            {
              v9 = v234;
              if (!v221)
              {
                v101 = 0x7461746369446F4ELL;
                v102 = 0xEB000000006E6F69;
LABEL_143:
                v143 = sub_23DB5EC5C(v101, v102, &aBlock);

                *(v39 + 4) = v143;
                v61 = v100;
                v62 = v37;
                v63 = "dictationStatus: %s";
                goto LABEL_78;
              }

              v123 = 0x6C616D726F4ELL;
            }

            v101 = v123 & 0xFFFFFFFFFFFFLL | 0x6944000000000000;
            v102 = 0xEF6E6F6974617463;
            goto LABEL_143;
          }

          goto LABEL_155;
        }
      }

      else
      {
        if (v20 == 0x6174636944646944 && v21 == 0xEE00747865546574 || (v103 = sub_23DB70DBC(), v9 = v234, (v103 & 1) != 0))
        {

          if (qword_27E2FBBD8 != -1)
          {
            swift_once();
          }

          v104 = sub_23DB6EBFC();
          v233 = __swift_project_value_buffer(v104, qword_27E2FE250);
          v105 = sub_23DB6EBDC();
          v106 = sub_23DB70AAC();
          if (os_log_type_enabled(v105, v106))
          {
            v107 = swift_slowAlloc();
            *v107 = 0;
            _os_log_impl(&dword_23D9FF000, v105, v106, "got diddictatetext", v107, 2u);
            MEMORY[0x23EEF7D90](v107, -1, -1);
          }

          v108 = v239[7];
          swift_beginAccess();
          v109 = *(v108 + 48);
          *(v108 + 40) = v226;
          *(v108 + 48) = v24;

          sub_23DAA967C(0, &qword_27E2FCFE0, 0x277D85C78);
          v221 = sub_23DB70AEC();
          v110 = swift_allocObject();
          swift_weakInit();
          v247 = sub_23DAA98B4;
          v248 = v110;
          aBlock = MEMORY[0x277D85DD0];
          v244 = 1107296256;
          v245 = sub_23DABB3DC;
          v246 = &block_descriptor_191;
          v210 = _Block_copy(&aBlock);

          v111 = v238;
          sub_23DB707BC();
          aBlock = MEMORY[0x277D84F90];
          sub_23DAA96CC();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
          sub_23DA17B80(&qword_27E2FE300, &qword_27E2FCFE8, &unk_23DB7A4E0);
          v112 = v236;
          v113 = v237;
          sub_23DB70C0C();
          v114 = v210;
          v115 = v221;
          MEMORY[0x23EEF6EA0](0, v111, v113, v210);
          _Block_release(v114);

          (*v231)(v113, v112);
          (*v230)(v111, v235);

          v37 = sub_23DB6EBDC();
          v116 = sub_23DB70AAC();

          if (os_log_type_enabled(v37, v116))
          {
            v117 = swift_slowAlloc();
            v118 = swift_slowAlloc();
            aBlock = v118;
            *v117 = v225;
            v119 = sub_23DB5EC5C(v226, v24, &aBlock);

            *(v117 + 4) = v119;
            v120 = v116;
            v121 = v37;
            v122 = "dictated: %s";
            goto LABEL_121;
          }

          goto LABEL_154;
        }

        if (v20 == 0xD000000000000019 && v220 == v21 || (sub_23DB70DBC() & 1) != 0)
        {

          if (qword_27E2FBBD8 != -1)
          {
            swift_once();
          }

          v124 = sub_23DB6EBFC();
          v125 = __swift_project_value_buffer(v124, qword_27E2FE250);
          v126 = sub_23DB6EBDC();
          v127 = sub_23DB70AAC();
          if (os_log_type_enabled(v126, v127))
          {
            v128 = swift_slowAlloc();
            *v128 = 0;
            _os_log_impl(&dword_23D9FF000, v126, v127, "got commandoverlaystatus", v128, 2u);
            MEMORY[0x23EEF7D90](v128, -1, -1);
          }

          v129 = sub_23DB70D8C();

          if (v129 <= 1)
          {
            v233 = v125;
            v130 = v239[8];
            swift_beginAccess();
            LODWORD(v221) = v129;
            *(v130 + 40) = v129;
            sub_23DAA967C(0, &qword_27E2FCFE0, 0x277D85C78);

            v226 = sub_23DB70AEC();
            v131 = swift_allocObject();
            swift_weakInit();
            v247 = sub_23DAA97D8;
            v248 = v131;
            aBlock = MEMORY[0x277D85DD0];
            v244 = 1107296256;
            v245 = sub_23DABB3DC;
            v246 = &block_descriptor_186;
            v132 = _Block_copy(&aBlock);

            v133 = v238;
            sub_23DB707BC();
            aBlock = MEMORY[0x277D84F90];
            sub_23DAA96CC();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
            sub_23DA17B80(&qword_27E2FE300, &qword_27E2FCFE8, &unk_23DB7A4E0);
            v135 = v236;
            v134 = v237;
            sub_23DB70C0C();
            v136 = v226;
            MEMORY[0x23EEF6EA0](0, v133, v134, v132);
            _Block_release(v132);

            (*v231)(v134, v135);
            (*v230)(v133, v235);

            v37 = sub_23DB6EBDC();
            v137 = sub_23DB70AAC();
            if (!os_log_type_enabled(v37, v137))
            {
              goto LABEL_155;
            }

            v138 = swift_slowAlloc();
            v139 = swift_slowAlloc();
            aBlock = v139;
            *v138 = v225;
            if (v221)
            {
              v140 = 0xD000000000000013;
            }

            else
            {
              v140 = 0xD000000000000012;
            }

            if (v221)
            {
              v141 = v217;
            }

            else
            {
              v141 = v216;
            }

            v142 = sub_23DB5EC5C(v140, v141 | 0x8000000000000000, &aBlock);

            *(v138 + 4) = v142;
            _os_log_impl(&dword_23D9FF000, v37, v137, "commandWindowStatus: %s", v138, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v139);
            MEMORY[0x23EEF7D90](v139, -1, -1);
            MEMORY[0x23EEF7D90](v138, -1, -1);

            v9 = v234;
          }
        }

        else if (v20 == 0xD000000000000021 && v218 == v21 || (sub_23DB70DBC() & 1) != 0)
        {

          if (qword_27E2FBBD8 != -1)
          {
            swift_once();
          }

          v144 = sub_23DB6EBFC();
          v145 = __swift_project_value_buffer(v144, qword_27E2FE250);
          v146 = sub_23DB6EBDC();
          v147 = sub_23DB70AAC();
          if (os_log_type_enabled(v146, v147))
          {
            v148 = swift_slowAlloc();
            *v148 = 0;
            _os_log_impl(&dword_23D9FF000, v146, v147, "got recognizedCommandIdentifier", v148, 2u);
            MEMORY[0x23EEF7D90](v148, -1, -1);
          }

          v149._countAndFlagsBits = v226;
          v149._object = v24;
          VCCommandIdentifier.init(rawValue:)(v149);
          v150 = aBlock;
          if (aBlock != 59)
          {
            v151 = v239[9];
            swift_beginAccess();
            *(v151 + 40) = v150;
            sub_23DAA967C(0, &qword_27E2FCFE0, 0x277D85C78);
            v233 = v151;

            v210 = sub_23DB70AEC();
            v152 = swift_allocObject();
            swift_weakInit();
            v247 = sub_23DAA97E8;
            v248 = v152;
            aBlock = MEMORY[0x277D85DD0];
            v244 = 1107296256;
            v245 = sub_23DABB3DC;
            v246 = &block_descriptor_179;
            v153 = _Block_copy(&aBlock);
            v221 = v145;
            v154 = v153;

            v155 = v238;
            sub_23DB707BC();
            aBlock = MEMORY[0x277D84F90];
            sub_23DAA96CC();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
            sub_23DA17B80(&qword_27E2FE300, &qword_27E2FCFE8, &unk_23DB7A4E0);
            v156 = v236;
            v157 = v237;
            sub_23DB70C0C();
            v158 = v210;
            MEMORY[0x23EEF6EA0](0, v155, v157, v154);
            _Block_release(v154);

            (*v231)(v157, v156);
            (*v230)(v155, v235);

            v37 = sub_23DB6EBDC();
            v159 = sub_23DB70AAC();

            if (os_log_type_enabled(v37, v159))
            {
              v117 = swift_slowAlloc();
              v118 = swift_slowAlloc();
              aBlock = v118;
              *v117 = v225;
              v160 = sub_23DB5EC5C(v226, v24, &aBlock);

              *(v117 + 4) = v160;
              v120 = v159;
              v121 = v37;
              v122 = "recognizedCommandIdentifierStatus: %s";
LABEL_121:
              _os_log_impl(&dword_23D9FF000, v121, v120, v122, v117, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v118);
              MEMORY[0x23EEF7D90](v118, -1, -1);
              MEMORY[0x23EEF7D90](v117, -1, -1);
LABEL_155:

              goto LABEL_156;
            }

LABEL_154:

            goto LABEL_155;
          }

LABEL_74:
        }

        else if (v20 == 0xD00000000000001CLL && v215 == v21 || (sub_23DB70DBC() & 1) != 0)
        {

          if (qword_27E2FBBD8 != -1)
          {
            swift_once();
          }

          v161 = sub_23DB6EBFC();
          __swift_project_value_buffer(v161, qword_27E2FE250);
          v162 = sub_23DB6EBDC();
          v163 = sub_23DB70AAC();
          if (os_log_type_enabled(v162, v163))
          {
            v164 = swift_slowAlloc();
            *v164 = 0;
            _os_log_impl(&dword_23D9FF000, v162, v163, "got numbersForOnboardingElements", v164, 2u);
            MEMORY[0x23EEF7D90](v164, -1, -1);
          }

          aBlock = v226;
          v244 = v24;
          v241 = 2112032;
          v242 = 0xE300000000000000;
          sub_23DA16E70();
          v165 = sub_23DB70B8C();

          if (!v165[2])
          {
            goto LABEL_205;
          }

          v166 = v165[4];
          v167 = v165[5];

          v168 = sub_23DB70D8C();

          if (v168 > 2)
          {
            goto LABEL_74;
          }

          if (v165[2] < 2uLL)
          {
            goto LABEL_206;
          }

          v170 = v165[6];
          v169 = v165[7];

          if (v168)
          {
            v171 = sub_23DB70DBC();

            if (v171)
            {
              goto LABEL_185;
            }

            v172 = v9;
            v173 = v239;
            v174 = v168 & 7;
            if (v212 == v214 || ((4u >> (v168 & 7)) & 1) != 0)
            {

LABEL_197:
              v204 = v173[11];
              goto LABEL_198;
            }

            v175 = sub_23DB70DBC();

            if (v175)
            {
              goto LABEL_197;
            }

            if ((1u >> v174))
            {
              v176 = sub_23DB70DBC();

              if ((v176 & 1) == 0)
              {

                goto LABEL_199;
              }
            }

            else
            {
            }

            v204 = v173[12];
LABEL_198:
            swift_beginAccess();
            v205 = *(v204 + 48);
            *(v204 + 40) = v170;
            *(v204 + 48) = v169;

            sub_23DABC354();

LABEL_199:
            v9 = v172;
          }

          else
          {

LABEL_185:
            v190 = v239[10];
            swift_beginAccess();
            v191 = *(v190 + 48);
            *(v190 + 40) = v170;
            *(v190 + 48) = v169;

            sub_23DABC354();
          }
        }

        else
        {
          if (v20 == v233 && v211 == v21 || (sub_23DB70DBC() & 1) != 0)
          {
            if (qword_27E2FBBD8 != -1)
            {
              swift_once();
            }

            v177 = sub_23DB6EBFC();
            __swift_project_value_buffer(v177, qword_27E2FE250);
            v178 = sub_23DB6EBDC();
            v179 = sub_23DB70AAC();
            if (os_log_type_enabled(v178, v179))
            {
              v180 = swift_slowAlloc();
              *v180 = 0;
              _os_log_impl(&dword_23D9FF000, v178, v179, "got phoneticAlternative", v180, 2u);
              MEMORY[0x23EEF7D90](v180, -1, -1);
            }

            v181 = v239[13];
            swift_beginAccess();
            v182 = *(v181 + 48);
            *(v181 + 40) = v226;
            *(v181 + 48) = v24;

            sub_23DAA967C(0, &qword_27E2FCFE0, 0x277D85C78);
            v233 = sub_23DB70AEC();
            v183 = swift_allocObject();
            swift_weakInit();
            v247 = sub_23DAA97E0;
            v248 = v183;
            aBlock = MEMORY[0x277D85DD0];
            v244 = 1107296256;
            v245 = sub_23DABB3DC;
            v246 = &block_descriptor_172;
            v226 = _Block_copy(&aBlock);

            v184 = v238;
            sub_23DB707BC();
            aBlock = MEMORY[0x277D84F90];
            v221 = sub_23DAA96CC();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
            sub_23DA17B80(&qword_27E2FE300, &qword_27E2FCFE8, &unk_23DB7A4E0);
            v186 = v236;
            v185 = v237;
            sub_23DB70C0C();
            v187 = v184;
            v188 = v226;
            v189 = v233;
            MEMORY[0x23EEF6EA0](0, v187, v185, v226);
            _Block_release(v188);

            (*v231)(v185, v186);
            (*v230)(v238, v235);
          }

          else
          {
          }

          v9 = v234;
          if (v20 == 0x4164656C6C697244 && v21 == 0xEF7265626D754E74)
          {

LABEL_191:
            if (qword_27E2FBBD8 != -1)
            {
              swift_once();
            }

            v193 = sub_23DB6EBFC();
            __swift_project_value_buffer(v193, qword_27E2FE250);
            v194 = sub_23DB6EBDC();
            v195 = sub_23DB70AAC();
            if (os_log_type_enabled(v194, v195))
            {
              v196 = swift_slowAlloc();
              *v196 = 0;
              _os_log_impl(&dword_23D9FF000, v194, v195, "got drilledAtNumber", v196, 2u);
              MEMORY[0x23EEF7D90](v196, -1, -1);
            }

            v197 = v239[17];
            swift_beginAccess();
            *(v197 + 40) = (*(v197 + 40) & 1) == 0;
            sub_23DAA967C(0, &qword_27E2FCFE0, 0x277D85C78);

            v233 = sub_23DB70AEC();
            v198 = swift_allocObject();
            swift_weakInit();
            v247 = sub_23DAA97D8;
            v248 = v198;
            aBlock = MEMORY[0x277D85DD0];
            v244 = 1107296256;
            v245 = sub_23DABB3DC;
            v246 = &block_descriptor_166;
            v199 = _Block_copy(&aBlock);

            v200 = v238;
            sub_23DB707BC();
            aBlock = MEMORY[0x277D84F90];
            sub_23DAA96CC();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
            sub_23DA17B80(&qword_27E2FE300, &qword_27E2FCFE8, &unk_23DB7A4E0);
            v201 = v236;
            v202 = v237;
            sub_23DB70C0C();
            v203 = v233;
            MEMORY[0x23EEF6EA0](0, v200, v202, v199);
            _Block_release(v199);

            (*v231)(v202, v201);
            (*v230)(v200, v235);

LABEL_156:
            v9 = v234;
          }

          else
          {
            v192 = sub_23DB70DBC();

            if (v192)
            {
              goto LABEL_191;
            }
          }
        }
      }
    }
  }

  while (1)
  {
    v16 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v16 >= v228)
    {

      return;
    }

    v15 = *(v229 + 8 * v16);
    ++v11;
    if (v15)
    {
      v11 = v16;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
}

void sub_23DAA66A8()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    v2 = *(v0 + 152);
    swift_unknownObjectRetain();
    v3 = sub_23DB7080C();
    v4 = _CFXPCCreateXPCObjectFromCFObject();
    if (v4)
    {
      v5 = v4;
      count = xpc_dictionary_get_count(v4);

      if (count)
      {
        v7 = xpc_dictionary_create(0, 0, 0);
        v8 = sub_23DB708EC();
        xpc_dictionary_set_int64(v7, (v8 + 32), 101);

        v9 = sub_23DB708EC();
        swift_unknownObjectRetain();
        xpc_dictionary_set_value(v7, (v9 + 32), v5);
        swift_unknownObjectRelease();

        xpc_connection_send_message(v1, v7);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_23DAA67F4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  if (!a3)
  {
    if (qword_27E2FBBF0 != -1)
    {
      swift_once();
    }

    (*(*qword_27E30A6D8 + 304))();
    v8 = [objc_opt_self() mainBundle];
    sub_23DB6E9FC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2B0, &qword_23DB76980);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_23DB73BA0;
    v7 = v3[10];
    goto LABEL_9;
  }

  if (a3 == 1)
  {
    if (qword_27E2FBBF0 != -1)
    {
      swift_once();
    }

    (*(*qword_27E30A6D8 + 304))();
    v5 = [objc_opt_self() mainBundle];
    sub_23DB6E9FC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2B0, &qword_23DB76980);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_23DB73BA0;
    v7 = v3[12];
LABEL_9:
    swift_beginAccess();
    v10 = *(v7 + 40);
    v9 = *(v7 + 48);
    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 64) = sub_23DA40598();
    *(v6 + 32) = v10;
    *(v6 + 40) = v9;

    v11 = sub_23DB708CC();

    return v11;
  }

  v14 = v3[11];
  swift_beginAccess();
  if (*(v14 + 40))
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v14 + 48) == 0xE000000000000000;
  }

  if (!v15 && (sub_23DB70DBC() & 1) == 0)
  {
    if (qword_27E2FBBF0 != -1)
    {
      swift_once();
    }

    (*(*qword_27E30A6D8 + 304))(a1, a2);
    v17 = [objc_opt_self() mainBundle];
    sub_23DB6E9FC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2B0, &qword_23DB76980);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_23DB73BA0;
    v7 = v4[11];
    goto LABEL_9;
  }

  if (qword_27E2FBBF0 != -1)
  {
    swift_once();
  }

  return (*(*qword_27E30A6D8 + 304))(0xD000000000000022, 0x800000023DB8AED0);
}

void sub_23DAA6CB8()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    v2 = v0;
    v3 = qword_27E2FBBD8;
    swift_unknownObjectRetain();
    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_23DB6EBFC();
    __swift_project_value_buffer(v4, qword_27E2FE250);
    v5 = sub_23DB6EBDC();
    v6 = sub_23DB70AAC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_23D9FF000, v5, v6, "Tearing down XPC connection", v7, 2u);
      MEMORY[0x23EEF7D90](v7, -1, -1);
    }

    v8 = swift_allocObject();
    *(v8 + 16) = v1;
    v11[4] = sub_23DAA97D0;
    v11[5] = v8;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_23DABB3DC;
    v11[3] = &block_descriptor_160;
    v9 = _Block_copy(v11);
    swift_unknownObjectRetain();

    xpc_connection_send_barrier(v1, v9);
    swift_unknownObjectRelease();
    _Block_release(v9);
    v10 = *(v2 + 152);
    *(v2 + 152) = 0;
    swift_unknownObjectRelease();
  }
}

void sub_23DAA6E6C()
{
  v1 = v0;
  v2 = sub_23DB707AC();
  isa = v2[-1].isa;
  v4 = *(isa + 8);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23DB707CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23DB707EC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v18, v21);
  if (*(v1 + 161) == 1)
  {
    if (qword_27E2FBBD8 != -1)
    {
      swift_once();
    }

    v24 = sub_23DB6EBFC();
    __swift_project_value_buffer(v24, qword_27E2FE250);
    v53 = sub_23DB6EBDC();
    v25 = sub_23DB70AAC();
    if (os_log_type_enabled(v53, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_23D9FF000, v53, v25, "Retry already pending, bailing", v26, 2u);
      MEMORY[0x23EEF7D90](v26, -1, -1);
    }

    v27 = v53;

    return;
  }

  v28 = *(v1 + 164);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
    goto LABEL_18;
  }

  v48 = &v46 - v23;
  v49 = v7;
  v7 = v22;
  v51 = v8;
  v52 = isa;
  v53 = v2;
  *(v1 + 164) = v30;
  if (qword_27E2FBBD8 != -1)
  {
LABEL_18:
    swift_once();
  }

  v31 = sub_23DB6EBFC();
  __swift_project_value_buffer(v31, qword_27E2FE250);

  v32 = sub_23DB6EBDC();
  v33 = sub_23DB70AAC();
  v34 = os_log_type_enabled(v32, v33);
  v50 = v9;
  if (v34)
  {
    v35 = swift_slowAlloc();
    *v35 = 67109120;
    *(v35 + 4) = *(v1 + 164);

    _os_log_impl(&dword_23D9FF000, v32, v33, "Connection error. Retrying xpc connection (Attempt  %d)", v35, 8u);
    MEMORY[0x23EEF7D90](v35, -1, -1);
  }

  else
  {
  }

  sub_23DAA6CB8();
  *(v1 + 168) = 0;
  v36 = sub_23DB6EBDC();
  v37 = sub_23DB70AAC();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_23D9FF000, v36, v37, "Schedule retry timer", v38, 2u);
    MEMORY[0x23EEF7D90](v38, -1, -1);
  }

  *(v1 + 160) = 256;
  sub_23DAA967C(0, &qword_27E2FCFE0, 0x277D85C78);
  v39 = sub_23DB70AEC();
  sub_23DB707DC();
  v40 = v48;
  sub_23DB707FC();
  v41 = *(v15 + 8);
  v46 = v7;
  v47 = v41;
  v41(v20, v7);
  v42 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_23DAA9790;
  aBlock[5] = v42;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DABB3DC;
  aBlock[3] = &block_descriptor_154;
  v43 = _Block_copy(aBlock);

  sub_23DB707BC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23DAA96CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
  sub_23DA17B80(&qword_27E2FE300, &qword_27E2FCFE8, &unk_23DB7A4E0);
  v44 = v49;
  v45 = v53;
  sub_23DB70C0C();
  MEMORY[0x23EEF6E80](v40, v13, v44, v43);
  _Block_release(v43);

  (*(v52 + 1))(v44, v45);
  (*(v50 + 8))(v13, v51);
  v47(v40, v46);
}

void sub_23DAA74A4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(Strong + 161) = 0;
    if (qword_27E2FBBD8 != -1)
    {
      swift_once();
    }

    v2 = sub_23DB6EBFC();
    __swift_project_value_buffer(v2, qword_27E2FE250);
    v3 = sub_23DB6EBDC();
    v4 = sub_23DB70AAC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_23D9FF000, v3, v4, "Retry timer fired", v5, 2u);
      MEMORY[0x23EEF7D90](v5, -1, -1);
    }

    if (*(v1 + 160) == 1)
    {
      v6 = sub_23DB6EBDC();
      v7 = sub_23DB70AAC();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_23D9FF000, v6, v7, "Bailing because retries cancelled", v8, 2u);
        MEMORY[0x23EEF7D90](v8, -1, -1);
      }
    }

    else
    {
      sub_23DAA764C();
    }
  }
}

void sub_23DAA764C()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceControlEnabled];

  *(v1 + 160) = 1;
  if (v3)
  {
    if (*(v1 + 164) < 101)
    {
      if (qword_27E2FBBD8 != -1)
      {
        swift_once();
      }

      v11 = sub_23DB6EBFC();
      __swift_project_value_buffer(v11, qword_27E2FE250);
      v12 = sub_23DB6EBDC();
      v13 = sub_23DB70AAC();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_23D9FF000, v12, v13, "Voice Control is enabled, so trying XPC connection", v14, 2u);
        MEMORY[0x23EEF7D90](v14, -1, -1);
      }

      sub_23DAA6CB8();
      v15 = sub_23DB708EC();
      mach_service = xpc_connection_create_mach_service((v15 + 32), 0, 0);

      v17 = *(v1 + 152);
      *(v1 + 152) = mach_service;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      if (mach_service)
      {
        v18 = swift_allocObject();
        swift_weakInit();
        v29 = sub_23DAA9654;
        v30 = v18;
        aBlock = MEMORY[0x277D85DD0];
        v26 = 1107296256;
        v27 = sub_23DB3C694;
        v28 = &block_descriptor_2;
        v19 = _Block_copy(&aBlock);

        xpc_connection_set_event_handler(mach_service, v19);
        _Block_release(v19);
        xpc_connection_resume(mach_service);
        v20 = sub_23DAA8C4C(0x6E696E657473696CLL, 0xEF73757461745367);
        v21 = *(v1 + 144);
        v22 = swift_allocObject();
        swift_weakInit();
        v29 = sub_23DAA9674;
        v30 = v22;
        aBlock = MEMORY[0x277D85DD0];
        v26 = 1107296256;
        v27 = sub_23DB3C694;
        v28 = &block_descriptor_141;
        v23 = _Block_copy(&aBlock);

        xpc_connection_send_message_with_reply(mach_service, v20, v21, v23);
        _Block_release(v23);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      if (qword_27E2FBBD8 != -1)
      {
        swift_once();
      }

      v4 = sub_23DB6EBFC();
      __swift_project_value_buffer(v4, qword_27E2FE250);
      v5 = sub_23DB6EBDC();
      v6 = sub_23DB70AAC();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_23D9FF000, v5, v6, "Bailing retry, attempts > 100!!", v7, 2u);
        MEMORY[0x23EEF7D90](v7, -1, -1);
      }

      *(v1 + 164) = 0;
      *(v1 + 168) = 0;
    }
  }

  else
  {
    if (qword_27E2FBBD8 != -1)
    {
      swift_once();
    }

    v8 = sub_23DB6EBFC();
    __swift_project_value_buffer(v8, qword_27E2FE250);
    oslog = sub_23DB6EBDC();
    v9 = sub_23DB70AAC();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_23D9FF000, oslog, v9, "Voice Control is not enabled, so skipping xpc-connection creation", v10, 2u);
      MEMORY[0x23EEF7D90](v10, -1, -1);
    }
  }
}

uint64_t sub_23DAA7B18(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = MEMORY[0x23EEF7F80](a1);
    if (v3 == sub_23DB6EC0C())
    {
      if (qword_27E2FBBD8 != -1)
      {
        swift_once();
      }

      v5 = sub_23DB6EBFC();
      __swift_project_value_buffer(v5, qword_27E2FE250);
      v6 = sub_23DB6EBDC();
      v7 = sub_23DB70AAC();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_23D9FF000, v6, v7, "Retry connection because of XPC error", v8, 2u);
        MEMORY[0x23EEF7D90](v8, -1, -1);
      }

      sub_23DAA6E6C();
    }

    else
    {
      v4 = MEMORY[0x23EEF7F80](a1);
      if (v4 == sub_23DB6EC1C())
      {
        sub_23DAA41F8();
      }
    }
  }

  return result;
}

void sub_23DAA7C74()
{
  v0 = sub_23DB707AC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23DB707CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    swift_getObjectType();
    if (sub_23DAA3AC0())
    {

      *(v13 + 164) = 0;
      v28 = v13;
      *(v13 + 168) = 1;
      sub_23DAA967C(0, &qword_27E2FCFE0, 0x277D85C78);
      v27 = sub_23DB70AEC();
      v14 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      aBlock[4] = sub_23DAA96C4;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23DABB3DC;
      aBlock[3] = &block_descriptor_145;
      v15 = _Block_copy(aBlock);

      sub_23DB707BC();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_23DAA96CC();
      v26 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
      sub_23DA17B80(&qword_27E2FE300, &qword_27E2FCFE8, &unk_23DB7A4E0);
      sub_23DB70C0C();
      v16 = v27;
      MEMORY[0x23EEF6EA0](0, v11, v5, v15);
      _Block_release(v15);

      (*(v1 + 8))(v5, v0);
      (*(v7 + 8))(v11, v26);
      if (qword_27E2FBBD8 != -1)
      {
        swift_once();
      }

      v17 = sub_23DB6EBFC();
      __swift_project_value_buffer(v17, qword_27E2FE250);
      v18 = sub_23DB6EBDC();
      v19 = sub_23DB70AAC();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_23D9FF000, v18, v19, "XPC connection successful!!", v20, 2u);
        MEMORY[0x23EEF7D90](v20, -1, -1);
      }
    }

    else
    {
      if (qword_27E2FBBD8 != -1)
      {
        swift_once();
      }

      v21 = sub_23DB6EBFC();
      __swift_project_value_buffer(v21, qword_27E2FE250);
      v22 = sub_23DB6EBDC();
      v23 = sub_23DB70AAC();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_23D9FF000, v22, v23, "Retry connection because of invalid response", v24, 2u);
        MEMORY[0x23EEF7D90](v24, -1, -1);
      }

      sub_23DAA6E6C();
    }
  }
}

uint64_t sub_23DAA8134()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    for (i = 0; i != 3; ++i)
    {
      v3 = *(v1 + 152);
      if (v3)
      {
        v4 = 0xEF7375746174536ELL;
        v5 = 0x5379616C7265766FLL;
        if (byte_284FE77F0[i + 32] == 1)
        {
          v4 = 0xED00007375746174;
        }

        else
        {
          v5 = 0x6F69746174636964;
        }

        if (byte_284FE77F0[i + 32])
        {
          v6 = v5;
        }

        else
        {
          v6 = 0x6E696E657473696CLL;
        }

        if (byte_284FE77F0[i + 32])
        {
          v7 = v4;
        }

        else
        {
          v7 = 0xEF73757461745367;
        }

        v8 = *(v1 + 152);
        swift_unknownObjectRetain();
        v9 = xpc_dictionary_create(0, 0, 0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2D0, &unk_23DB7BBB0);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_23DB73BA0;
        *(v10 + 56) = MEMORY[0x277D837D0];
        *(v10 + 32) = v6;
        *(v10 + 40) = v7;
        sub_23DAA967C(0, &unk_27E2FE2E0, 0x277CBEA60);

        v11 = MEMORY[0x23EEF6EB0](v10);
        v12 = _CFXPCCreateXPCObjectFromCFObject();
        v13 = sub_23DB708EC();
        xpc_dictionary_set_value(v9, (v13 + 32), v12);
        swift_unknownObjectRelease();

        v14 = xpc_dictionary_create(0, 0, 0);
        v15 = sub_23DB708EC();
        xpc_dictionary_set_int64(v14, (v15 + 32), 102);

        v16 = sub_23DB708EC();
        swift_unknownObjectRetain();
        xpc_dictionary_set_value(v14, (v16 + 32), v9);

        swift_unknownObjectRelease_n();

        v17 = *(v1 + 144);
        v18 = swift_allocObject();
        swift_weakInit();
        aBlock[4] = sub_23DAA9724;
        aBlock[5] = v18;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_23DB3C694;
        aBlock[3] = &block_descriptor_150;
        v19 = _Block_copy(aBlock);

        xpc_connection_send_message_with_reply(v3, v14, v17, v19);
        _Block_release(v19);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_23DAA8474()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  v5 = *(v0 + 48);

  v6 = *(v0 + 56);

  v7 = *(v0 + 64);

  v8 = *(v0 + 72);

  v9 = *(v0 + 80);

  v10 = *(v0 + 88);

  v11 = *(v0 + 96);

  v12 = *(v0 + 104);

  v13 = *(v0 + 112);

  v14 = *(v0 + 120);

  v15 = *(v0 + 128);

  v16 = *(v0 + 136);

  v17 = *(v0 + 152);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_23DAA851C()
{
  sub_23DAA8474();

  return MEMORY[0x2821FE8D8](v0, 192, 7);
}

uint64_t sub_23DAA8574(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC6)
  {
    goto LABEL_17;
  }

  if (a2 + 58 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 58) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 58;
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

      return (*a1 | (v4 << 8)) - 58;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 58;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x3B;
  v8 = v6 - 59;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_23DAA8604(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 58 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 58) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC6)
  {
    v4 = 0;
  }

  if (a2 > 0xC5)
  {
    v5 = ((a2 - 198) >> 8) + 1;
    *result = a2 + 58;
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
    *result = a2 + 58;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NavigationDirection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NavigationDirection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23DAA8848(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_23DAA88D8(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23DAA899C()
{
  result = qword_27E2FE270;
  if (!qword_27E2FE270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE270);
  }

  return result;
}

unint64_t sub_23DAA89F4()
{
  result = qword_27E2FE278;
  if (!qword_27E2FE278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE278);
  }

  return result;
}

unint64_t sub_23DAA8A4C()
{
  result = qword_27E2FE280;
  if (!qword_27E2FE280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE280);
  }

  return result;
}

unint64_t sub_23DAA8AE8()
{
  result = qword_27E2FE298;
  if (!qword_27E2FE298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE298);
  }

  return result;
}

unint64_t sub_23DAA8B40()
{
  result = qword_27E2FE2A0;
  if (!qword_27E2FE2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE2A0);
  }

  return result;
}

unint64_t sub_23DAA8B94(uint64_t a1)
{
  result = sub_23DAA8BBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23DAA8BBC()
{
  result = qword_27E2FE2A8;
  if (!qword_27E2FE2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE2A8);
  }

  return result;
}

uint64_t sub_23DAA8C10@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for VoiceControlController();
  result = sub_23DB6EE6C();
  *a1 = result;
  return result;
}

xpc_object_t sub_23DAA8C4C(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2D0, &unk_23DB7BBB0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_23DB73BA0;
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  sub_23DAA967C(0, &unk_27E2FE2E0, 0x277CBEA60);

  v6 = MEMORY[0x23EEF6EB0](v5);
  v7 = _CFXPCCreateXPCObjectFromCFObject();
  v8 = sub_23DB708EC();
  xpc_dictionary_set_value(v4, (v8 + 32), v7);
  swift_unknownObjectRelease();

  v9 = xpc_dictionary_create(0, 0, 0);
  v10 = sub_23DB708EC();
  xpc_dictionary_set_int64(v9, (v10 + 32), 102);

  v11 = sub_23DB708EC();
  swift_unknownObjectRetain();
  xpc_dictionary_set_value(v9, (v11 + 32), v4);

  swift_unknownObjectRelease_n();

  return v9;
}

uint64_t sub_23DAA8DC8()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 voiceControlEnabled];

  if (v2)
  {
    v3 = *(v0 + 16);
    swift_beginAccess();
    if ((*(v3 + 40) & 1) == 0)
    {
      sub_23DAA764C();
      sub_23DAA3FB4(0);
      sub_23DAA3FB4(1);
      sub_23DB6BB30(&unk_284FE56D8);
      sub_23DAA97F8(&unk_284FE56F8);
      sub_23DAA66A8();
    }
  }

  v4 = *(v0 + 16);
  swift_beginAccess();
  *(v4 + 40) = v2;

  sub_23DABC004();
}

uint64_t sub_23DAA8EC0(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = *a3;
  v4 = [objc_opt_self() sharedInstance];
  VCCommandIdentifier.rawValue.getter();
  v5 = sub_23DB7087C();

  v6 = [v4 localizedVoiceControlCommand_];

  v7 = sub_23DB708BC();
  v9 = v8;

  v10 = [objc_opt_self() mainBundle];
  sub_23DB6E9FC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2B0, &qword_23DB76980);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_23DB73BA0;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_23DA40598();
  *(v11 + 32) = v7;
  *(v11 + 40) = v9;
  v12 = sub_23DB708CC();

  return v12;
}

uint64_t sub_23DAA904C(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = [objc_opt_self() sharedInstance];
  VCCommandIdentifier.rawValue.getter();
  v6 = sub_23DB7087C();

  v7 = [v5 localizedVoiceControlCommand_];

  v8 = sub_23DB708BC();
  v10 = v9;

  if (qword_27E2FBBF0 != -1)
  {
    swift_once();
  }

  v11 = (*qword_27E30A6D8 + 304);
  v12 = *v11;
  v13 = (*v11)(0xD00000000000001ELL, 0x800000023DB8ADD0);
  v14 = v12(0xD00000000000001ELL, 0x800000023DB8ADF0);
  v16 = v15;
  if (sub_23DB7092C())
  {
    if (a3)
    {
      sub_23DA16E70();
      v17 = sub_23DB70BBC();
      v19 = v18;

      v21 = v13;
      MEMORY[0x23EEF6D00](v17, v19);
    }

    else
    {
      v21 = v13;
      MEMORY[0x23EEF6D00](v8, v10);
    }

    MEMORY[0x23EEF6D00](v14, v16);

    return v21;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_23DAA92BC()
{
  v0 = sub_23DB70D8C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_23DAA9308()
{
  v0 = sub_23DB70D8C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_23DAA9354()
{
  v0 = sub_23DB70D8C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

xpc_object_t sub_23DAA93A0()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  v1 = [objc_opt_self() mainScreen];
  [v1 _integerDisplayID];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2D0, &unk_23DB7BBB0);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D837D0];
  *(v2 + 16) = xmmword_23DB7B4D0;
  *(v2 + 56) = v3;
  *(v2 + 32) = 0x47657475706D6F43;
  *(v2 + 40) = 0xEF68746150646972;
  v4 = sub_23DAA967C(0, &qword_27E2FE2D8, 0x277CCABB0);
  v5 = sub_23DB70B2C();
  *(v2 + 88) = v4;
  *(v2 + 64) = v5;
  v6 = sub_23DB70B2C();
  *(v2 + 120) = v4;
  *(v2 + 96) = v6;
  v7 = sub_23DB70B2C();
  *(v2 + 152) = v4;
  *(v2 + 128) = v7;
  v8 = sub_23DB70B2C();
  *(v2 + 184) = v4;
  *(v2 + 160) = v8;
  v9 = sub_23DB70B3C();
  *(v2 + 216) = v4;
  *(v2 + 192) = v9;
  sub_23DAA967C(0, &unk_27E2FE2E0, 0x277CBEA60);
  v10 = MEMORY[0x23EEF6EB0](v2);
  v11 = _CFXPCCreateXPCObjectFromCFObject();
  v12 = sub_23DB708EC();
  xpc_dictionary_set_value(v0, (v12 + 32), v11);
  swift_unknownObjectRelease();

  v13 = xpc_dictionary_create(0, 0, 0);
  v14 = sub_23DB708EC();
  xpc_dictionary_set_int64(v13, (v14 + 32), 102);

  v15 = sub_23DB708EC();
  xpc_dictionary_set_value(v13, (v15 + 32), v0);

  swift_unknownObjectRelease();

  return v13;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_23DAA961C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23DAA967C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_23DAA96CC()
{
  result = qword_27E2FE2F0;
  if (!qword_27E2FE2F0)
  {
    sub_23DB707AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE2F0);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_23DAA9798()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_23DAA97F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE318, &unk_23DB7BBD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23DAA992C()
{
  v1 = *v0;
  v2 = sub_23DB707AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23DB707CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DA5295C();
  v14 = sub_23DB70AEC();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = *(v1 + 80);
  *(v16 + 24) = v15;
  aBlock[4] = sub_23DAAA5CC;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DABB3DC;
  aBlock[3] = &block_descriptor_3;
  v17 = _Block_copy(aBlock);

  sub_23DB707BC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23DAA96CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
  sub_23DAAA5EC();
  sub_23DB70C0C();
  MEMORY[0x23EEF6EA0](0, v13, v7, v17);
  _Block_release(v17);

  (*(v3 + 8))(v7, v2);
  return (*(v9 + 8))(v13, v8);
}

uint64_t sub_23DAA9BE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = *(result + 16);
    sub_23DAA9CEC(v6);
    sub_23DB6EE7C();
    (*(v3 + 8))(v6, a2);
  }

  return result;
}

uint64_t sub_23DAA9CEC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_23DAA9D8C(uint64_t a1)
{
  v3 = *v1;
  sub_23DAAA08C(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

uint64_t (*sub_23DAA9E08(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  v2 = *(*v1 + 112);
  swift_beginAccess();
  return sub_23DAA9E78;
}

uint64_t sub_23DAA9E78(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_23DAA992C();
  }

  return result;
}

char *PublishedDidSet.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 48);
  v5 = *(v1 + 52);
  swift_allocObject();
  v6 = sub_23DAAA138(a1);
  (*(*(*(v2 + 80) - 8) + 8))(a1);
  return v6;
}

char *PublishedDidSet.init(wrappedValue:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_23DAAA138(a1);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v4;
}

char *PublishedDidSet.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  v3 = *(v0 + 3);

  v4 = *(v0 + 4);

  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 112)]);
  return v0;
}

uint64_t PublishedDidSet.__deallocating_deinit()
{
  PublishedDidSet.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_23DAAA08C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 24))(v1 + v4, a1);
  swift_endAccess();
  return sub_23DAA992C();
}

char *sub_23DAAA138(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*v2 + 80);
  sub_23DB6EEAC();
  swift_getWitnessTable();
  v6 = sub_23DB6EE2C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v16 - v11;
  (*(*(v5 - 8) + 16))(&v2[*(v4 + 112)], a1, v5, v10);
  v13 = sub_23DB6EE8C();
  *(v2 + 2) = v13;
  v17 = v13;
  *(v2 + 3) = sub_23DB6EF3C();
  v17 = *(v2 + 2);
  *(swift_allocObject() + 16) = v5;

  sub_23DB6EF4C();

  swift_getWitnessTable();
  v14 = sub_23DB6EF3C();
  (*(v7 + 8))(v12, v6);
  *(v2 + 4) = v14;
  return v2;
}

uint64_t sub_23DAAA3F4(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23DAAA55C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_23DAAA594()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23DAAA5EC()
{
  result = qword_27E2FE300;
  if (!qword_27E2FE300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE300);
  }

  return result;
}

uint64_t sub_23DAAA68C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23DB6F78C();
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4, v6);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2, v7);
  swift_storeEnumTagMultiPayload();
  return sub_23DB6F79C();
}

uint64_t sub_23DAAA784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_23DB6F78C();
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5, v7);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3, v8);
  swift_storeEnumTagMultiPayload();
  return sub_23DB6F79C();
}

uint64_t AXOnboardingSectionType.hashValue.getter()
{
  v1 = *v0;
  sub_23DB70E0C();
  MEMORY[0x23EEF71C0](v1);
  return sub_23DB70E4C();
}

uint64_t AXOnboardingSection.init(type:header:content:footer:)@<X0>(char *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(int *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X3>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = type metadata accessor for AXOnboardingSection();
  *(a5 + v10[19]) = v9;
  v16 = a3(v10, v11, v12, v13, v14, v15);
  v17 = a5 + v10[17];
  v18 = a4(v16);
  v19 = a5 + v10[18];
  return a2(v18);
}

uint64_t AXOnboardingSection.init<>(type:content:)@<X0>(char *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for AXOnboardingSection();
  *(a3 + *(v6 + 76)) = v5;
  return a2(v6, v7, v8, v9, v10, v11);
}

uint64_t AXOnboardingSection.init<>(type:content:footer:)@<X0>(char *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t (*a3)(uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = type metadata accessor for AXOnboardingSection();
  *(a4 + *(v8 + 76)) = v7;
  v14 = a2(v8, v9, v10, v11, v12, v13);
  v15 = a4 + *(v8 + 68);
  return a3(v14);
}

uint64_t AXOnboardingSection.init<>(type:header:content:)@<X0>(char *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = type metadata accessor for AXOnboardingSection();
  *(a4 + *(v8 + 76)) = v7;
  v14 = a3(v8, v9, v10, v11, v12, v13);
  v15 = a4 + *(v8 + 72);
  return a2(v14);
}

uint64_t sub_23DAAABB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v42 = a3;
  v6 = *(a1 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v41 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 32);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10, v14);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 16);
  v38[1] = v16;
  v39 = v18;
  v19 = sub_23DB7055C();
  v20 = *(v19 - 8);
  v21 = v20[8];
  MEMORY[0x28223BE20](v19, v22);
  v24 = v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25, v26);
  v40 = v38 - v28;
  (*(v12 + 16))(v16, v4 + *(a1 + 72), v11, v27);
  (*(v7 + 16))(v41, v4 + *(a1 + 68), v6);
  *&v29 = v11;
  v30 = *(a1 + 40);
  v31 = *(a1 + 48);
  *(&v29 + 1) = v30;
  *&v32 = v39;
  *(&v32 + 1) = v6;
  v43 = v32;
  v44 = v29;
  v33 = *(a1 + 56);
  v45 = v31;
  v46 = v33;
  v47 = v4;
  sub_23DB7053C();
  v48 = v33;
  v49 = v30;
  v50 = v31;
  swift_getWitnessTable();
  v34 = v20[2];
  v35 = v40;
  v34(v40, v24, v19);
  v36 = v20[1];
  v36(v24, v19);
  v34(v42, v35, v19);
  return (v36)(v35, v19);
}

uint64_t sub_23DAAAECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1, a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 16);
  v9(v8);
  (v9)(a3, v8, a2);
  return (*(v5 + 8))(v8, a2);
}

uint64_t sub_23DAAAFC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = *(a1 + 24);
  v59 = a3;
  v60 = *(v58 - 8);
  v5 = v60[8];
  MEMORY[0x28223BE20](a1, a2);
  v63 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v62 = &v48 - v9;
  v11 = *(v10 + 16);
  v49 = v11;
  v56 = *(v11 - 8);
  v12 = v56;
  v13 = *(v56 + 64);
  MEMORY[0x28223BE20](v10, v14);
  v61 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v48 - v18;
  v50 = &v48 - v18;
  v51 = *(v20 + 32);
  v57 = *(v51 - 8);
  v21 = v57;
  v22 = *(v57 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26, v27);
  v30 = &v48 - v29;
  v32 = *(v31 + 72);
  v54 = *(v31 + 56);
  v33 = *(v21 + 16);
  v33(&v48 - v29, v3 + v32, v28);
  v53 = *(a1 + 40);
  v34 = *(v12 + 16);
  v34(v19, v3, v11);
  v35 = *(a1 + 68);
  v52 = *(a1 + 48);
  v36 = v60[2];
  v37 = v58;
  v36(v62, v3 + v35, v58);
  v55 = v25;
  v38 = v51;
  (v33)(v25, v30, v51);
  v68[0] = v25;
  v39 = v61;
  v40 = v50;
  v41 = v49;
  v34(v61, v50, v49);
  v68[1] = v39;
  v43 = v62;
  v42 = v63;
  v36(v63, v62, v37);
  v68[2] = v42;
  v67[0] = v38;
  v67[1] = v41;
  v67[2] = v37;
  v64 = v54;
  v65 = v53;
  v66 = v52;
  sub_23DAC2F38(v68, 3uLL, v67);
  v44 = v60[1];
  v44(v43, v37);
  v45 = *(v56 + 8);
  v45(v40, v41);
  v46 = *(v57 + 8);
  v46(v30, v38);
  v44(v63, v37);
  v45(v61, v41);
  return (v46)(v55, v38);
}

uint64_t AXOnboardingSection.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a1 + 16);
  swift_getTupleTypeMetadata3();
  v7 = sub_23DB706BC();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v7, v10);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v46 - v15;
  v17 = sub_23DB7055C();
  v18 = *(v17 - 8);
  v19 = v18[8];
  MEMORY[0x28223BE20](v17, v20);
  v22 = v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v26 = v46 - v25;
  v27 = sub_23DB6F7AC();
  v48 = *(v27 - 8);
  v49 = v27;
  v28 = *(v48 + 64);
  MEMORY[0x28223BE20](v27, v29);
  v51 = v46 - v31;
  if (*(v2 + *(a1 + 76)) == 1)
  {
    sub_23DAAAFC0(a1, v30, v12);
    swift_getWitnessTable();
    v32 = v8[2];
    v32(v16, v12, v7);
    v33 = v8[1];
    v33(v12, v7);
    v32(v12, v16, v7);
    v34 = *(a1 + 40);
    v37 = a1 + 48;
    v36 = *(a1 + 48);
    v35 = *(v37 + 8);
    v60 = v35;
    v61 = v34;
    v62 = v36;
    swift_getWitnessTable();
    sub_23DAAA784(v12, v17, v7);
    v33(v12, v7);
    v33(v16, v7);
  }

  else
  {
    sub_23DAAABB4(a1, v30, v22);
    v47 = *(a1 + 56);
    v34 = *(a1 + 40);
    v36 = *(a1 + 48);
    v52 = v47;
    v53 = v34;
    v54 = v36;
    v46[1] = swift_getWitnessTable();
    v38 = v18[2];
    v38(v26, v22, v17);
    v39 = v18[1];
    v39(v22, v17);
    v38(v22, v26, v17);
    swift_getWitnessTable();
    sub_23DAAA68C(v22, v17);
    v39(v22, v17);
    v39(v26, v17);
    v35 = v47;
  }

  v57 = v35;
  v58 = v34;
  v59 = v36;
  WitnessTable = swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  v55 = WitnessTable;
  v56 = v41;
  v42 = v49;
  swift_getWitnessTable();
  v43 = v48;
  v44 = v51;
  (*(v48 + 16))(v50, v51, v42);
  return (*(v43 + 8))(v44, v42);
}

unint64_t sub_23DAAB874()
{
  result = qword_27E2FE3F0[0];
  if (!qword_27E2FE3F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E2FE3F0);
  }

  return result;
}

uint64_t sub_23DAAB8C8(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23DAAB930(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v7 = a1[4];
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23DAAB9E0(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = a3[4];
  v7 = *(v5 + 84);
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v6 - 8);
  v12 = *(v11 + 84);
  v13 = *(v8 + 80);
  v14 = *(*(a3[3] - 8) + 64);
  v15 = *(v11 + 80);
  v16 = *(v11 + 64);
  if (v12 <= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = *(v11 + 84);
  }

  if (v17 <= 0xFD)
  {
    v17 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(*(a3[2] - 8) + 64) + v13;
  v19 = a2 - v17;
  if (a2 <= v17)
  {
    goto LABEL_33;
  }

  v20 = v16 + ((v14 + v15 + (v18 & ~v13)) & ~v15) + 1;
  v21 = 8 * v20;
  if (v20 <= 3)
  {
    v24 = ((v19 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v24))
    {
      v22 = *(a1 + v20);
      if (!v22)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v24 > 0xFF)
    {
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v24 < 2)
    {
LABEL_33:
      if (v7 == v17)
      {
        v28 = *(v5 + 48);

        return v28();
      }

      else
      {
        v29 = (a1 + v18) & ~v13;
        if (v9 == v17)
        {
          v30 = *(v8 + 48);

          return v30(v29);
        }

        else
        {
          v31 = (v29 + v14 + v15) & ~v15;
          if (v12 == v17)
          {
            v32 = *(v11 + 48);

            return v32(v31, v12, v6);
          }

          else
          {
            v33 = *(v31 + v16);
            if (v33 >= 3)
            {
              return v33 - 2;
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

  v22 = *(a1 + v20);
  if (!*(a1 + v20))
  {
    goto LABEL_33;
  }

LABEL_20:
  v25 = (v22 - 1) << v21;
  if (v20 > 3)
  {
    v25 = 0;
  }

  if (v16 + ((v14 + v15 + (v18 & ~v13)) & ~v15) == -1)
  {
    v27 = 0;
  }

  else
  {
    if (v20 <= 3)
    {
      v26 = v16 + ((v14 + v15 + (v18 & ~v13)) & ~v15) + 1;
    }

    else
    {
      v26 = 4;
    }

    if (v26 > 2)
    {
      if (v26 == 3)
      {
        v27 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v27 = *a1;
      }
    }

    else if (v26 == 1)
    {
      v27 = *a1;
    }

    else
    {
      v27 = *a1;
    }
  }

  return v17 + (v27 | v25) + 1;
}

char *sub_23DAABCC0(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v6 = *(v5 + 84);
  v7 = a4[3];
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(a4[4] - 8);
  v12 = *(v11 + 84);
  v13 = *(*(a4[2] - 8) + 64);
  v14 = *(v8 + 80);
  v15 = *(*(v7 - 8) + 64);
  v16 = *(v11 + 80);
  v17 = *(v11 + 64);
  if (v12 <= v10)
  {
    v18 = v10;
  }

  else
  {
    v18 = *(v11 + 84);
  }

  if (v18 <= 0xFD)
  {
    v18 = 253;
  }

  v19 = v17 + ((v15 + v16 + ((v13 + v14) & ~v14)) & ~v16) + 1;
  v20 = a3 >= v18;
  v21 = a3 - v18;
  if (v21 != 0 && v20)
  {
    if (v19 <= 3)
    {
      v26 = ((v21 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
      if (HIWORD(v26))
      {
        v22 = 4;
      }

      else
      {
        if (v26 < 0x100)
        {
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }

        if (v26 >= 2)
        {
          v22 = v27;
        }

        else
        {
          v22 = 0;
        }
      }
    }

    else
    {
      v22 = 1;
    }
  }

  else
  {
    v22 = 0;
  }

  if (v18 < a2)
  {
    v23 = ~v18 + a2;
    if (v19 < 4)
    {
      v25 = (v23 >> (8 * v19)) + 1;
      if (v19)
      {
        v28 = v23 & ~(-1 << (8 * v19));
        v29 = result;
        bzero(result, v19);
        result = v29;
        if (v19 != 3)
        {
          if (v19 == 2)
          {
            *v29 = v28;
            if (v22 > 1)
            {
LABEL_56:
              if (v22 == 2)
              {
                *&result[v19] = v25;
              }

              else
              {
                *&result[v19] = v25;
              }

              return result;
            }
          }

          else
          {
            *v29 = v23;
            if (v22 > 1)
            {
              goto LABEL_56;
            }
          }

          goto LABEL_53;
        }

        *v29 = v28;
        v29[2] = BYTE2(v28);
      }

      if (v22 > 1)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v24 = result;
      bzero(result, v19);
      result = v24;
      *v24 = v23;
      v25 = 1;
      if (v22 > 1)
      {
        goto LABEL_56;
      }
    }

LABEL_53:
    if (v22)
    {
      result[v19] = v25;
    }

    return result;
  }

  if (v22 > 1)
  {
    if (v22 != 2)
    {
      *&result[v19] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *&result[v19] = 0;
  }

  else if (v22)
  {
    result[v19] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 == v18)
  {
    v30 = *(v5 + 56);

    return v30();
  }

  else
  {
    v31 = &result[v13 + v14] & ~v14;
    if (v9 == v18)
    {
      v32 = *(v8 + 56);

      return v32(v31);
    }

    else
    {
      result = ((v31 + v15 + v16) & ~v16);
      if (v12 == v18)
      {
        v33 = *(v11 + 56);

        return v33(result);
      }

      else
      {
        result[v17] = a2 + 2;
      }
    }
  }

  return result;
}

uint64_t sub_23DAAC050(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[5];
  sub_23DB7055C();
  swift_getTupleTypeMetadata3();
  sub_23DB706BC();
  sub_23DB6F7AC();
  v7 = *(a1 + 3);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23DAAC15C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  return sub_23DAAAECC(v1[8], v1[2], a1);
}

uint64_t sub_23DAAC174@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_23DAAC1CC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 88));
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 4);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE570, &qword_23DB7C078);
  return MEMORY[0x23EEF6810](v3);
}

double sub_23DAAC22C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 92));
  v5 = *v2;
  v6 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCB8, &qword_23DB798F8);
  sub_23DB7038C();
  return v4;
}

uint64_t sub_23DAAC28C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 92));
  v4 = *v2;
  v5 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCB8, &qword_23DB798F8);
  return sub_23DB7039C();
}

double sub_23DAAC2EC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 96));
  v5 = *v2;
  v6 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCB8, &qword_23DB798F8);
  sub_23DB7038C();
  return v4;
}

uint64_t sub_23DAAC34C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 96));
  v4 = *v2;
  v5 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCB8, &qword_23DB798F8);
  return sub_23DB7039C();
}

double sub_23DAAC3AC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 100));
  v5 = *v2;
  v6 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCB8, &qword_23DB798F8);
  sub_23DB7038C();
  return v4;
}

uint64_t sub_23DAAC40C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 100));
  v4 = *v2;
  v5 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCB8, &qword_23DB798F8);
  return sub_23DB7039C();
}

uint64_t AXOnboardingView.init(title:description:iconName:traits:content:button:customIconView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t (*a8)(uint64_t)@<X7>, void *a9@<X8>, uint64_t a10, uint64_t (*a11)(uint64_t), uint64_t a12, uint64_t (*a13)(uint64_t), uint64_t a14, __int128 a15)
{
  v19 = a7[1];
  v33 = *a7;
  v20 = *(a7 + 4);
  v21 = type metadata accessor for AXOnboardingView();
  v22 = (a9 + v21[23]);
  sub_23DB7037C();
  *v22 = a15;
  v23 = (a9 + v21[24]);
  sub_23DB7037C();
  *v23 = a15;
  v24 = (a9 + v21[25]);
  v25 = sub_23DB7037C();
  *v24 = a15;
  v26 = a9 + v21[19];
  v27 = a8(v25);
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  v28 = a9 + v21[20];
  v29 = a11(v27);
  v30 = a9 + v21[22];
  *v30 = v33;
  *(v30 + 1) = v19;
  *(v30 + 4) = v20;
  v31 = a9 + v21[21];
  return a13(v29);
}

uint64_t AXOnboardingView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE498, &qword_23DB7BDB0);
  v29 = a1[4];
  v30 = a1[7];
  v27 = a1;
  type metadata accessor for AXOnboardingHeader();
  sub_23DB6F2DC();
  sub_23DB70B7C();
  v28 = a1[2];
  sub_23DB6F2DC();
  sub_23DB6F7AC();
  v26 = a1[3];
  v25 = sub_23DB70B7C();
  sub_23DB6F2DC();
  sub_23DB6F2DC();
  swift_getTupleTypeMetadata2();
  sub_23DB706BC();
  sub_23DB70B7C();
  swift_getTupleTypeMetadata3();
  sub_23DB706BC();
  sub_23DB702AC();
  swift_getTupleTypeMetadata2();
  sub_23DB706BC();
  swift_getWitnessTable();
  sub_23DB7044C();
  sub_23DB6F2DC();
  sub_23DB6F2DC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE4A0, &qword_23DB7BDB8);
  sub_23DB6F2DC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE4A8, &qword_23DB7BDC0);
  sub_23DB6F2DC();
  v24[0] = MEMORY[0x277CE1198];
  WitnessTable = swift_getWitnessTable();
  v48 = MEMORY[0x277CDF678];
  v45 = swift_getWitnessTable();
  v46 = MEMORY[0x277CDFC60];
  v43 = swift_getWitnessTable();
  v44 = sub_23DA17B80(&qword_27E2FE4B0, &qword_27E2FE4A0, &qword_23DB7BDB8);
  v41 = swift_getWitnessTable();
  v42 = sub_23DA17B80(&qword_27E2FE4B8, &qword_27E2FE4A8, &qword_23DB7BDC0);
  swift_getWitnessTable();
  sub_23DB6F00C();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v39 = OpaqueTypeMetadata2;
  v40 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_23DB6F1CC();
  sub_23DB6F2DC();
  sub_23DB6F2DC();
  sub_23DB6F2DC();
  sub_23DB70B7C();
  swift_getTupleTypeMetadata2();
  sub_23DB706BC();
  v24[1] = swift_getWitnessTable();
  v5 = sub_23DB7044C();
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v24 - v8;
  v10 = swift_getWitnessTable();
  v39 = v5;
  v40 = v10;
  v24[0] = MEMORY[0x277CDED08];
  v11 = swift_getOpaqueTypeMetadata2();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = v24 - v19;
  v33 = v28;
  v34 = v26;
  v35 = v29;
  v21 = v27;
  v36 = *(v27 + 5);
  v37 = v30;
  v38 = v31;
  sub_23DB6F68C();
  sub_23DB7043C();
  sub_23DAAC1CC(v21);
  sub_23DB7001C();
  (*(v25 + 8))(v9, v5);
  v39 = v5;
  v40 = v10;
  swift_getOpaqueTypeConformance2();
  sub_23DAAC170(v16);
  v22 = *(v12 + 8);
  v22(v16, v11);
  sub_23DAAC170(v20);
  return (v22)(v20, v11);
}

uint64_t sub_23DAACD7C@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v73 = a4;
  v79 = a8;
  v80 = a1;
  v85 = a3;
  v88 = sub_23DB70B7C();
  v82 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE4A0, &qword_23DB7BDB8);
  v14 = sub_23DB6F2DC();
  v81 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE4A8, &qword_23DB7BDC0);
  v87 = v14;
  v15 = sub_23DB6F2DC();
  v71 = *(v15 - 8);
  v16 = *(v71 + 64);
  MEMORY[0x28223BE20](v15, v15);
  v69 = &v68 - v17;
  v86 = v18;
  v19 = sub_23DB6F2DC();
  v75 = *(v19 - 8);
  v20 = *(v75 + 64);
  MEMORY[0x28223BE20](v19, v19);
  v72 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v70 = &v68 - v24;
  v84 = v25;
  v78 = sub_23DB70B7C();
  v76 = *(v78 - 8);
  v26 = *(v76 + 64);
  MEMORY[0x28223BE20](v78, v27);
  v83 = &v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30);
  v77 = &v68 - v31;
  v32 = a2;
  v116 = a2;
  v117 = a3;
  v118 = a4;
  v119 = a5;
  v33 = a5;
  v34 = a6;
  v120 = a6;
  v121 = a7;
  v35 = a7;
  v36 = type metadata accessor for AXOnboardingView();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  v40 = MEMORY[0x28223BE20](v36, v39);
  v42 = &v68 - v41;
  (*(v37 + 16))(&v68 - v41, v80, v36, v40);
  v43 = (*(v37 + 80) + 64) & ~*(v37 + 80);
  v44 = swift_allocObject();
  v74 = v44;
  v45 = v85;
  v44[2] = v32;
  v44[3] = v45;
  v44[4] = v73;
  v44[5] = v33;
  v85 = v34;
  v44[6] = v34;
  v44[7] = v35;
  (*(v37 + 32))(v44 + v43, v42, v36);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE498, &qword_23DB7BDB0);
  type metadata accessor for AXOnboardingHeader();
  sub_23DB6F2DC();
  sub_23DB70B7C();
  sub_23DB6F2DC();
  sub_23DB6F7AC();
  sub_23DB6F2DC();
  sub_23DB6F2DC();
  swift_getTupleTypeMetadata2();
  sub_23DB706BC();
  sub_23DB70B7C();
  swift_getTupleTypeMetadata3();
  sub_23DB706BC();
  sub_23DB702AC();
  swift_getTupleTypeMetadata2();
  sub_23DB706BC();
  swift_getWitnessTable();
  sub_23DB7044C();
  sub_23DB6F2DC();
  sub_23DB6F2DC();
  sub_23DB6F2DC();
  sub_23DB6F2DC();
  WitnessTable = swift_getWitnessTable();
  v115 = MEMORY[0x277CDF678];
  v112 = swift_getWitnessTable();
  v113 = MEMORY[0x277CDFC60];
  v46 = swift_getWitnessTable();
  v47 = sub_23DA17B80(&qword_27E2FE4B0, &qword_27E2FE4A0, &qword_23DB7BDB8);
  v110 = v46;
  v111 = v47;
  v82 = v47;
  v48 = swift_getWitnessTable();
  v49 = sub_23DA17B80(&qword_27E2FE4B8, &qword_27E2FE4A8, &qword_23DB7BDC0);
  v108 = v48;
  v109 = v49;
  v81 = v49;
  swift_getWitnessTable();
  v50 = sub_23DB6F00C();
  v51 = swift_getWitnessTable();
  v116 = v50;
  v117 = v51;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v116 = v50;
  v117 = v51;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v116 = OpaqueTypeMetadata2;
  v117 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  v116 = OpaqueTypeMetadata2;
  v117 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v106 = sub_23DB6F1BC();
  v107 = v54;
  v55 = sub_23DB6F1CC();
  v56 = swift_getWitnessTable();
  sub_23DAAC170(&v106);

  sub_23DAAC1CC(v36);
  if ((v106 & 2) != 0)
  {
    sub_23DAB06C4(v36, v57, v69);
    v93 = v85;
    v91 = swift_getWitnessTable();
    v92 = v82;
    v89 = swift_getWitnessTable();
    v90 = v81;
    swift_getWitnessTable();
    View.onboardingViewFormat()();
  }

  (*(v75 + 56))(v83, 1, 1, v84);
  v105[8] = v85;
  v105[6] = swift_getWitnessTable();
  v105[7] = v82;
  v105[4] = swift_getWitnessTable();
  v105[5] = v81;
  v58 = swift_getWitnessTable();
  v59 = sub_23DAB22E0();
  v105[2] = v58;
  v105[3] = v59;
  swift_getWitnessTable();
  v60 = v77;
  v61 = v83;
  sub_23DAC3108(v83, v77);
  v62 = v76;
  v80 = *(v76 + 8);
  v63 = v78;
  v80(v61, v78);
  v105[0] = v116;
  v105[1] = v117;
  v106 = v105;
  (*(v62 + 16))(v61, v60, v63);
  v107 = v61;

  v104[0] = v55;
  v104[1] = v63;
  v101 = v85;
  v102 = v56;
  v99 = swift_getWitnessTable();
  v100 = v82;
  v97 = swift_getWitnessTable();
  v98 = v81;
  v64 = swift_getWitnessTable();
  v65 = sub_23DAB22E0();
  v95 = v64;
  v96 = v65;
  v94 = swift_getWitnessTable();
  v103 = swift_getWitnessTable();
  sub_23DAC2F38(&v106, 2uLL, v104);
  v66 = v80;
  v80(v60, v63);

  v66(v61, v63);
}

uint64_t sub_23DAAD8FC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v64 = a8;
  v68 = a7;
  v65 = a6;
  v63 = a5;
  v66 = a2;
  v67 = a1;
  v72 = a9;
  v71 = sub_23DB6F7FC();
  v70 = *(v71 - 8);
  v11 = *(v70 + 64);
  MEMORY[0x28223BE20](v71, v12);
  v69 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE498, &qword_23DB7BDB0);
  type metadata accessor for AXOnboardingHeader();
  sub_23DB6F2DC();
  sub_23DB70B7C();
  v62 = a3;
  sub_23DB6F2DC();
  sub_23DB6F7AC();
  sub_23DB70B7C();
  sub_23DB6F2DC();
  sub_23DB6F2DC();
  swift_getTupleTypeMetadata2();
  sub_23DB706BC();
  sub_23DB70B7C();
  swift_getTupleTypeMetadata3();
  sub_23DB706BC();
  sub_23DB702AC();
  swift_getTupleTypeMetadata2();
  sub_23DB706BC();
  swift_getWitnessTable();
  sub_23DB7044C();
  sub_23DB6F2DC();
  sub_23DB6F2DC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE4A0, &qword_23DB7BDB8);
  sub_23DB6F2DC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE4A8, &qword_23DB7BDC0);
  v14 = sub_23DB6F2DC();
  WitnessTable = swift_getWitnessTable();
  v94 = MEMORY[0x277CDF678];
  v91 = swift_getWitnessTable();
  v92 = MEMORY[0x277CDFC60];
  v15 = swift_getWitnessTable();
  v16 = sub_23DA17B80(&qword_27E2FE4B0, &qword_27E2FE4A0, &qword_23DB7BDB8);
  v89 = v15;
  v90 = v16;
  v17 = swift_getWitnessTable();
  v18 = sub_23DA17B80(&qword_27E2FE4B8, &qword_27E2FE4A8, &qword_23DB7BDC0);
  v87 = v17;
  v88 = v18;
  v53[1] = v14;
  v53[0] = swift_getWitnessTable();
  v19 = sub_23DB6F00C();
  v60 = *(v19 - 8);
  v20 = *(v60 + 64);
  MEMORY[0x28223BE20](v19, v21);
  v23 = v53 - v22;
  v24 = swift_getWitnessTable();
  v81 = v19;
  v82 = v24;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v61 = *(OpaqueTypeMetadata2 - 8);
  v26 = *(v61 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2, v27);
  v58 = v53 - v28;
  v81 = v19;
  v82 = v24;
  v53[2] = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v57 = OpaqueTypeMetadata2;
  v81 = OpaqueTypeMetadata2;
  v82 = OpaqueTypeConformance2;
  v56 = OpaqueTypeConformance2;
  v30 = swift_getOpaqueTypeMetadata2();
  v59 = *(v30 - 8);
  v31 = *(v59 + 64);
  MEMORY[0x28223BE20](v30, v32);
  v54 = v53 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v35);
  v55 = v53 - v36;
  v37 = v62;
  v73 = v62;
  v38 = a4;
  v74 = a4;
  v39 = v63;
  v40 = v65;
  v75 = v63;
  v76 = v65;
  v41 = v68;
  v42 = v64;
  v77 = v68;
  v78 = v64;
  v79 = v66;
  v80 = v67;
  sub_23DB6FB1C();
  v67 = v23;
  sub_23DB6F01C();
  v81 = v37;
  v82 = v38;
  v83 = v39;
  v84 = v40;
  v85 = v41;
  v86 = v42;
  v43 = type metadata accessor for AXOnboardingView();
  sub_23DAAC1CC(v43);
  if ((v81 & 0x20) == 0)
  {
    sub_23DAB05D0(v43);
  }

  v44 = v58;
  v45 = v67;
  sub_23DB6FEAC();
  (*(v60 + 8))(v45, v19);
  sub_23DAAC1CC(v43);
  v46 = v69;
  if ((v81 & 0x20) != 0)
  {
    sub_23DB6F7DC();
  }

  else
  {
    sub_23DB6F7EC();
  }

  sub_23DB6FB1C();
  v47 = v54;
  v48 = v57;
  v49 = v56;
  sub_23DB6FFAC();
  (*(v70 + 8))(v46, v71);
  (*(v61 + 8))(v44, v48);
  v81 = v48;
  v82 = v49;
  swift_getOpaqueTypeConformance2();
  v50 = v55;
  sub_23DAAC170(v47);
  v51 = *(v59 + 8);
  v51(v47, v30);
  sub_23DAAC170(v50);
  return (v51)(v50, v30);
}

uint64_t sub_23DAAE1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v95 = a7;
  v97 = a6;
  v91 = a2;
  v96 = a1;
  v89 = a9;
  v87 = sub_23DB6F15C();
  v86 = *(v87 - 8);
  v88 = *(v86 + 64);
  MEMORY[0x28223BE20](v87, v15);
  v85 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = a3;
  v114 = a4;
  v92 = a4;
  v115 = a5;
  v116 = a6;
  v94 = a5;
  v117 = a7;
  v118 = a8;
  v93 = a8;
  v83 = type metadata accessor for AXOnboardingView();
  v82 = *(v83 - 8);
  v84 = *(v82 + 64);
  MEMORY[0x28223BE20](v83, v17);
  v81 = &v70 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE498, &qword_23DB7BDB0);
  type metadata accessor for AXOnboardingHeader();
  sub_23DB6F2DC();
  sub_23DB70B7C();
  sub_23DB6F2DC();
  v72 = a3;
  sub_23DB6F7AC();
  sub_23DB70B7C();
  sub_23DB6F2DC();
  sub_23DB6F2DC();
  swift_getTupleTypeMetadata2();
  sub_23DB706BC();
  sub_23DB70B7C();
  swift_getTupleTypeMetadata3();
  sub_23DB706BC();
  sub_23DB702AC();
  swift_getTupleTypeMetadata2();
  sub_23DB706BC();
  swift_getWitnessTable();
  v19 = sub_23DB7044C();
  v71 = *(v19 - 8);
  v20 = *(v71 + 64);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v70 - v22;
  v24 = sub_23DB6F2DC();
  v73 = *(v24 - 8);
  v25 = *(v73 + 64);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v70 - v27;
  v29 = sub_23DB6F2DC();
  v74 = *(v29 - 8);
  v30 = *(v74 + 64);
  MEMORY[0x28223BE20](v29, v31);
  v70 = &v70 - v32;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE4A0, &qword_23DB7BDB8);
  v76 = sub_23DB6F2DC();
  v79 = *(v76 - 8);
  v33 = *(v79 + 64);
  MEMORY[0x28223BE20](v76, v34);
  v90 = &v70 - v35;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE4A8, &qword_23DB7BDC0);
  v78 = sub_23DB6F2DC();
  v80 = *(v78 - 8);
  v36 = *(v80 + 64);
  MEMORY[0x28223BE20](v78, v37);
  v75 = &v70 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v40);
  v77 = &v70 - v41;
  v98 = a3;
  v99 = v92;
  v100 = v94;
  v101 = v97;
  v102 = v95;
  v103 = v93;
  v104 = v96;
  sub_23DB6F68C();
  sub_23DB7043C();
  sub_23DB6F13C();
  sub_23DB7062C();
  WitnessTable = swift_getWitnessTable();
  sub_23DB7004C();
  (*(v71 + 8))(v23, v19);
  sub_23DB6F13C();
  sub_23DB7062C();
  v111 = WitnessTable;
  v112 = MEMORY[0x277CDF678];
  v71 = MEMORY[0x277CDFAD8];
  v69 = swift_getWitnessTable();
  v43 = v70;
  sub_23DB7005C();
  (*(v73 + 8))(v28, v24);
  sub_23DB7062C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE580, &unk_23DB7C080);
  v109 = v69;
  v110 = MEMORY[0x277CDFC60];
  v44 = swift_getWitnessTable();
  sub_23DA17B80(&qword_27E2FE588, &qword_27E2FE580, &unk_23DB7C080);
  sub_23DB6FDFC();
  (*(v74 + 8))(v43, v29);
  v45 = v82;
  v46 = v81;
  v47 = v83;
  (*(v82 + 16))(v81, v96, v83);
  v48 = v86;
  v49 = v85;
  v50 = v87;
  (*(v86 + 16))(v85, v91, v87);
  v51 = v45;
  v52 = (*(v45 + 80) + 64) & ~*(v45 + 80);
  v53 = v48;
  v54 = (v84 + *(v48 + 80) + v52) & ~*(v48 + 80);
  v55 = swift_allocObject();
  v56 = v92;
  *(v55 + 2) = v72;
  *(v55 + 3) = v56;
  v57 = v97;
  *(v55 + 4) = v94;
  *(v55 + 5) = v57;
  v58 = v93;
  *(v55 + 6) = v95;
  *(v55 + 7) = v58;
  (*(v51 + 32))(&v55[v52], v46, v47);
  (*(v53 + 32))(&v55[v54], v49, v50);
  v59 = sub_23DA17B80(&qword_27E2FE4B0, &qword_27E2FE4A0, &qword_23DB7BDB8);
  v107 = v44;
  v108 = v59;
  v60 = v76;
  v61 = swift_getWitnessTable();
  sub_23DAB2648();
  sub_23DAB269C();
  v62 = v75;
  v63 = v90;
  sub_23DB6FF4C();

  (*(v79 + 8))(v63, v60);
  v64 = sub_23DA17B80(&qword_27E2FE4B8, &qword_27E2FE4A8, &qword_23DB7BDC0);
  v105 = v61;
  v106 = v64;
  v65 = v78;
  swift_getWitnessTable();
  v66 = v77;
  sub_23DAAC170(v62);
  v67 = *(v80 + 8);
  v67(v62, v65);
  sub_23DAAC170(v66);
  return (v67)(v66, v65);
}

uint64_t sub_23DAAED44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v39 = a7;
  v40 = a1;
  v41 = a8;
  v42 = a6;
  v32 = a4;
  type metadata accessor for AXOnboardingHeader();
  sub_23DB6F2DC();
  sub_23DB70B7C();
  sub_23DB6F2DC();
  sub_23DB6F7AC();
  sub_23DB70B7C();
  sub_23DB6F2DC();
  sub_23DB6F2DC();
  swift_getTupleTypeMetadata2();
  sub_23DB706BC();
  sub_23DB70B7C();
  swift_getTupleTypeMetadata3();
  sub_23DB706BC();
  v12 = sub_23DB702AC();
  v38 = *(v12 - 8);
  v13 = *(v38 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v37 = &v31 - v19;
  v20 = a2;
  v53 = a2;
  v54 = a3;
  v21 = a3;
  v55 = a4;
  v56 = a5;
  v22 = v39;
  v57 = v42;
  v58 = v39;
  v23 = type metadata accessor for AXOnboardingView();
  v24 = v40;
  sub_23DAAF174(v23);
  sub_23DB7062C();
  sub_23DB6F10C();
  v33 = v61[3];
  v34 = v63;
  v35 = v66;
  v36 = v65;
  v72 = 1;
  v70 = v62;
  v68 = v64;
  v43 = v20;
  v44 = v21;
  v45 = v32;
  v46 = a5;
  v47 = v42;
  v48 = v22;
  v49 = v24;
  WitnessTable = swift_getWitnessTable();
  sub_23DB7029C();
  v61[2] = WitnessTable;
  v26 = swift_getWitnessTable();
  v27 = v37;
  sub_23DAAC170(v16);
  v28 = v38;
  v29 = *(v38 + 8);
  v29(v16, v12);
  v53 = 0;
  LOBYTE(v54) = v72;
  *(&v54 + 1) = *v71;
  HIDWORD(v54) = *&v71[3];
  v55 = v33;
  LOBYTE(v56) = v70;
  *(&v56 + 1) = *v69;
  HIDWORD(v56) = *&v69[3];
  v57 = v34;
  LOBYTE(v58) = v68;
  *(&v58 + 1) = *v67;
  HIDWORD(v58) = *&v67[3];
  v59 = v36;
  v60 = v35;
  v61[0] = &v53;
  (*(v28 + 16))(v16, v27, v12);
  v61[1] = v16;
  v52[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE498, &qword_23DB7BDB0);
  v52[1] = v12;
  v50 = sub_23DAB2B4C();
  v51 = v26;
  sub_23DAC2F38(v61, 2uLL, v52);
  v29(v27, v12);
  return (v29)(v16, v12);
}

double sub_23DAAF174(uint64_t a1)
{
  v2 = 0.0;
  if (AXDeviceTemplateType() != 4 && AXDeviceTemplateType() != 5)
  {
    v3 = objc_opt_self();
    v4 = [v3 mainScreen];
    [v4 bounds];
    v6 = v5;

    sub_23DAAC1CC(a1);
    v2 = 15.0;
    if ((_UISolariumEnabled() & 1) == 0)
    {
      if (v12)
      {
        v7 = v6 * 0.06;
      }

      else
      {
        v7 = 0.0;
      }

      v8 = [v3 mainScreen];
      [v8 bounds];
      v10 = v9;

      return v10 * 0.09 - v7;
    }
  }

  return v2;
}

uint64_t sub_23DAAF27C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(void, void)@<X6>, uint64_t a8@<X8>)
{
  v141 = a6;
  v134 = a5;
  v131 = a8;
  v132 = a3;
  v112 = sub_23DB70B7C();
  v12 = sub_23DB6F2DC();
  v13 = sub_23DB6F2DC();
  swift_getTupleTypeMetadata2();
  v14 = sub_23DB706BC();
  v125 = *(v14 - 8);
  v15 = *(v125 + 64);
  MEMORY[0x28223BE20](v14, v14);
  v115 = v12;
  v116 = &v104 - v16;
  v110 = *(v12 - 8);
  v17 = *(v110 + 64);
  MEMORY[0x28223BE20](v18, v19);
  v109 = &v104 - v20;
  v117 = v13;
  v111 = *(v13 - 8);
  v21 = *(v111 + 64);
  MEMORY[0x28223BE20](v22, v23);
  v114 = &v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v113 = &v104 - v27;
  v130 = v28;
  v140 = sub_23DB70B7C();
  v127 = *(v140 - 8);
  v29 = *(v127 + 64);
  MEMORY[0x28223BE20](v140, v30);
  v129 = &v104 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v128 = &v104 - v34;
  v122 = sub_23DB6F2DC();
  v139 = sub_23DB6F7AC();
  v137 = *(v139 - 8);
  v35 = *(v137 + 64);
  MEMORY[0x28223BE20](v139, v36);
  v145 = &v104 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v39);
  v144 = &v104 - v40;
  v41 = sub_23DB70B7C();
  v119 = *(v41 - 8);
  v120 = v41;
  v42 = *(v119 + 64);
  MEMORY[0x28223BE20](v41, v43);
  v123 = &v104 - v44;
  v133 = a7;
  v45 = type metadata accessor for AXOnboardingHeader();
  v124 = *(v45 - 8);
  v46 = *(v124 + 64);
  MEMORY[0x28223BE20](v45, v47);
  v121 = (&v104 - v48);
  v49 = sub_23DB6F2DC();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49, v52);
  MEMORY[0x28223BE20](v53, v54);
  v56 = &v104 - v55;
  v138 = sub_23DB70B7C();
  v136 = *(v138 - 8);
  v57 = *(v136 + 64);
  MEMORY[0x28223BE20](v138, v58);
  v60 = &v104 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x28223BE20](v61, v62);
  v142 = v60;
  v143 = &v104 - v65;
  v66 = *(a1 + 8);
  v135 = v49;
  v146 = v63;
  v126 = v45;
  if (v66)
  {
    v67 = *v63;
    v68 = *(v63 + 2);
    v104 = *(v146 + 3);
    v105 = v67;
    v106 = *(v146 + 4);
    v107 = v68;
    v69 = *(v146 + 5);

    v156 = a2;
    v157 = v132;
    v158 = a4;
    v159 = v134;
    v118 = v56;
    v70 = v133;
    v160 = v141;
    v161 = v133;
    v71 = type metadata accessor for AXOnboardingView();
    v108 = v50;
    sub_23DAAC1CC(v71);
    v72 = v123;
    (*(v119 + 16))(v123, &v146[*(v71 + 84)], v120);
    v102 = a4;
    v103 = v70;
    AXOnboardingHeader.init(title:description:iconName:traits:customIconView:)(v105, v66, v107, v104, v106, v69, &v147, v72, v121);
    swift_getWitnessTable();
    View.onboardingViewFormat()();
  }

  (*(v50 + 56))(v60, 1, 1, v49, v64);
  WitnessTable = swift_getWitnessTable();
  v74 = sub_23DAB22E0();
  v162 = WitnessTable;
  v163 = v74;
  swift_getWitnessTable();
  sub_23DAC3108(v60, v143);
  v123 = *(v136 + 8);
  v124 = v136 + 8;
  (v123)(v60, v138);
  v75 = v132;
  v76 = v133;
  v156 = a2;
  v157 = v132;
  v77 = a2;
  v78 = v134;
  v158 = a4;
  v159 = v134;
  v79 = v141;
  v160 = v141;
  v161 = v133;
  v80 = type metadata accessor for AXOnboardingView();
  v119 = *(v80 + 76);
  v81 = sub_23DAAC1CC(v80);
  v120 = &v104;
  LODWORD(v118) = (v156 & 8) == 0;
  MEMORY[0x28223BE20](v81, v82);
  *(&v104 - 6) = v77;
  *(&v104 - 5) = v75;
  *(&v104 - 4) = a4;
  *(&v104 - 3) = v78;
  v102 = v79;
  v103 = v76;
  v83 = sub_23DAB22E0();
  v155[12] = v78;
  v155[13] = v83;
  v84 = v122;
  v85 = swift_getWitnessTable();
  v86 = v145;
  sub_23DAB00D8(v118, sub_23DAB2BD0, (&v104 - 8), v77, v84, v78, v85, v145);
  v155[10] = v85;
  v155[11] = v78;
  v87 = v139;
  v132 = swift_getWitnessTable();
  sub_23DAAC170(v86);
  v133 = *(v137 + 8);
  v134 = v137 + 8;
  v133(v86, v87);
  sub_23DAAC1CC(v80);
  v121 = v83;
  if ((v156 & 2) == 0)
  {
    v88 = *(v80 + 80);
    sub_23DB6FB4C();
    v155[9] = v141;
    v89 = swift_getWitnessTable();
    sub_23DB7007C();
    v155[7] = v89;
    v155[8] = MEMORY[0x277CDF918];
    swift_getWitnessTable();
    View.onboardingViewFormat()();
  }

  v90 = v129;
  (*(v125 + 56))(v129, 1, 1, v130);
  swift_getWitnessTable();
  v91 = v128;
  sub_23DAC3108(v90, v128);
  v92 = v127;
  v93 = *(v127 + 8);
  v146 = ((v127 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  v94 = v140;
  v93(v90, v140);
  v95 = v142;
  v96 = v138;
  (*(v136 + 16))(v142, v143);
  v156 = v95;
  v97 = v145;
  v98 = v139;
  (*(v137 + 16))(v145, v144, v139);
  v157 = v97;
  (*(v92 + 16))(v90, v91, v94);
  v158 = v90;
  v155[0] = v96;
  v155[1] = v98;
  v155[2] = v94;
  v150 = swift_getWitnessTable();
  v151 = v121;
  v149 = swift_getWitnessTable();
  v152 = swift_getWitnessTable();
  v153 = v132;
  v148 = swift_getWitnessTable();
  v154 = swift_getWitnessTable();
  sub_23DAC2F38(&v156, 3uLL, v155);
  v93(v91, v94);
  v99 = v133;
  v133(v144, v98);
  v100 = v123;
  (v123)(v143, v96);
  v93(v90, v140);
  v99(v145, v98);
  return (v100)(v142, v96);
}

uint64_t sub_23DAB00D8@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, __n128)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v44 = a7;
  v45 = a6;
  v38 = a3;
  v39 = a2;
  v40 = a1;
  v43 = a8;
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v38 - v16;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v38 - v27;
  v29 = sub_23DB6F7AC();
  v42 = *(v29 - 8);
  v30 = *(v42 + 64);
  v32 = MEMORY[0x28223BE20](v29, v31);
  v34 = &v38 - v33;
  if (v40)
  {
    v39(v41, v32);
    sub_23DAAC170(v24);
    v35 = *(v19 + 8);
    v35(v24, a5);
    sub_23DAAC170(v28);
    sub_23DAAA68C(v24, a5);
    v35(v24, a5);
    v35(v28, a5);
  }

  else
  {
    sub_23DAAC170(v41);
    sub_23DAAC170(v17);
    sub_23DAAA784(v13, a5, a4);
    v36 = *(v10 + 8);
    v36(v13, a4);
    v36(v17, a4);
  }

  v46 = v44;
  v47 = v45;
  swift_getWitnessTable();
  sub_23DAAC170(v34);
  return (*(v42 + 8))(v34, v29);
}

uint64_t sub_23DAB045C(CGFloat *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26[0] = a8;
  v26[1] = a2;
  v14 = sub_23DB6F82C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v21 = a1[1];
  v22 = a1[2];
  v23 = a1[3];
  sub_23DB6F95C();
  sub_23DB6F14C();
  (*(v15 + 8))(v19, v14);
  v27.origin.x = v20;
  v27.origin.y = v21;
  v27.size.width = v22;
  v27.size.height = v23;
  CGRectGetHeight(v27);
  v26[2] = a4;
  v26[3] = a5;
  v26[4] = a6;
  v26[5] = a7;
  v26[6] = v26[0];
  v26[7] = a9;
  v24 = type metadata accessor for AXOnboardingView();
  return sub_23DAAC28C(v24);
}

BOOL sub_23DAB05D0(uint64_t a1)
{
  sub_23DAAC1CC(a1);
  v2 = sub_23DAAC22C(a1);
  if ((v14 & 2) != 0)
  {
    if (v2 <= sub_23DAAC2EC(a1) + 1.0)
    {
      return 1;
    }

    v12 = sub_23DAAC3AC(a1) > 0.0;
  }

  else
  {
    v3 = [objc_opt_self() mainScreen];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v15.origin.x = v5;
    v15.origin.y = v7;
    v15.size.width = v9;
    v15.size.height = v11;
    v12 = v2 > CGRectGetHeight(v15);
  }

  return !v12;
}

uint64_t sub_23DAB06C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v4 = *(a1 - 8);
  v41 = *(v4 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v36 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(v6 + 24);
  sub_23DB70B7C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE4A0, &qword_23DB7BDB8);
  v38 = sub_23DB6F2DC();
  v43 = *(v38 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v38, v8);
  v46 = v35 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE4A8, &qword_23DB7BDC0);
  v10 = sub_23DB6F2DC();
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v37 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v42 = v35 - v16;
  v35[1] = *(a1 + 80);
  sub_23DB7062C();
  v35[0] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE580, &unk_23DB7C080);
  v51 = *(a1 + 48);
  v18 = v51;
  WitnessTable = swift_getWitnessTable();
  sub_23DA17B80(&qword_27E2FE588, &qword_27E2FE580, &unk_23DB7C080);
  v20 = v39;
  sub_23DB6FDFC();
  v21 = v36;
  (*(v4 + 16))(v36, v20, a1);
  v22 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v23 = swift_allocObject();
  v24 = v40;
  *(v23 + 16) = *(a1 + 16);
  *(v23 + 24) = v24;
  *(v23 + 32) = *(a1 + 32);
  v25 = *(a1 + 56);
  *(v23 + 48) = v18;
  *(v23 + 56) = v25;
  (*(v4 + 32))(v23 + v22, v21, a1);
  v26 = sub_23DA17B80(&qword_27E2FE4B0, &qword_27E2FE4A0, &qword_23DB7BDB8);
  v49 = WitnessTable;
  v50 = v26;
  v27 = v38;
  v28 = swift_getWitnessTable();
  sub_23DAB2648();
  sub_23DAB269C();
  v29 = v37;
  v30 = v46;
  sub_23DB6FF4C();

  (*(v43 + 8))(v30, v27);
  v31 = sub_23DA17B80(&qword_27E2FE4B8, &qword_27E2FE4A8, &qword_23DB7BDC0);
  v47 = v28;
  v48 = v31;
  swift_getWitnessTable();
  v32 = v42;
  sub_23DAAC170(v29);
  v33 = *(v44 + 8);
  v33(v29, v10);
  sub_23DAAC170(v32);
  return (v33)(v32, v10);
}

uint64_t sub_23DAB0BB4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_23DB6F82C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23DB7018C();
  sub_23DB6F95C();
  sub_23DB6F14C();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  result = (*(v3 + 8))(v7, v2);
  *a1 = v8;
  a1[1] = v10;
  a1[2] = v12;
  a1[3] = v14;
  a1[4] = v16;
  return result;
}

uint64_t sub_23DAB0CCC(CGFloat *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v7.origin.x = *a1;
  v7.origin.y = v2;
  v7.size.width = v3;
  v7.size.height = v4;
  CGRectGetMinY(v7);
  v5 = type metadata accessor for AXOnboardingView();
  sub_23DAAC34C(v5);
  v8.origin.x = v1;
  v8.origin.y = v2;
  v8.size.width = v3;
  v8.size.height = v4;
  CGRectGetHeight(v8);
  return sub_23DAAC40C(v5);
}

BOOL sub_23DAB0E48(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_23DAB0E78@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_23DAB0EA4@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

_DWORD *sub_23DAB0F90@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t static FramePreferenceKey.defaultValue.setter(double a1, double a2, double a3, double a4)
{
  result = swift_beginAccess();
  *&xmmword_27E2FE478 = a1;
  *(&xmmword_27E2FE478 + 1) = a2;
  qword_27E2FE488 = *&a3;
  unk_27E2FE490 = *&a4;
  return result;
}

uint64_t sub_23DAB10D0(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_23DAB1120()
{
  result = qword_27E2FE4C0;
  if (!qword_27E2FE4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE4C0);
  }

  return result;
}

unint64_t sub_23DAB1178()
{
  result = qword_27E2FE4C8;
  if (!qword_27E2FE4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE4C8);
  }

  return result;
}

unint64_t sub_23DAB11D0()
{
  result = qword_27E2FE4D0;
  if (!qword_27E2FE4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE4D0);
  }

  return result;
}

unint64_t sub_23DAB1228()
{
  result = qword_27E2FE4D8[0];
  if (!qword_27E2FE4D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E2FE4D8);
  }

  return result;
}

double sub_23DAB127C@<D0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  result = *&xmmword_27E2FE478;
  v3 = *&qword_27E2FE488;
  *a1 = xmmword_27E2FE478;
  a1[1] = v3;
  return result;
}

double sub_23DAB12C8@<D0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  result = *&xmmword_27E2FE478;
  v3 = *&qword_27E2FE488;
  *a1 = xmmword_27E2FE478;
  a1[1] = v3;
  return result;
}

__n128 sub_23DAB1314(uint64_t a1)
{
  swift_beginAccess();
  result = *a1;
  v3 = *(a1 + 16);
  xmmword_27E2FE478 = *a1;
  *&qword_27E2FE488 = v3;
  return result;
}

void sub_23DAB1368(void *a1)
{
  sub_23DAB1BA8(319, &qword_27E2FC298, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v2 <= 0x3F)
  {
    v3 = a1[2];
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      v5 = a1[3];
      sub_23DB70B7C();
      if (v6 <= 0x3F)
      {
        v7 = a1[4];
        sub_23DB70B7C();
        if (v8 <= 0x3F)
        {
          sub_23DAB1BA8(319, &qword_27E2FE560, &type metadata for OnboardingTraits, MEMORY[0x277CE11F8]);
          if (v9 <= 0x3F)
          {
            sub_23DAB1BA8(319, &qword_27E2FE568, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
            if (v10 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23DAB14D4(int *a1, unsigned int a2, void *a3)
{
  v4 = a3[2];
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(a3[3] - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  if (v6 <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = *(v5 + 84);
  }

  v11 = a3[4];
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v10 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v10;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(*(a3[3] - 8) + 64);
  if (!v8)
  {
    ++v17;
  }

  v18 = *(v5 + 80);
  v19 = *(*(v4 - 8) + 64);
  v20 = *(v7 + 80);
  v21 = *(v12 + 80);
  if (v13)
  {
    v22 = *(*(v11 - 8) + 64);
  }

  else
  {
    v22 = *(*(v11 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v23 = v17 + v21;
  v24 = v22 + 7;
  if (v16 < a2)
  {
    v25 = ((((((((v24 + ((v23 + ((v19 + v20 + ((v18 + 48) & ~v18)) & ~v20)) & ~v21)) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    v26 = a2 - v16;
    v27 = v25 & 0xFFFFFFF8;
    if ((v25 & 0xFFFFFFF8) != 0)
    {
      v28 = 2;
    }

    else
    {
      v28 = v26 + 1;
    }

    if (v28 >= 0x10000)
    {
      v29 = 4;
    }

    else
    {
      v29 = 2;
    }

    if (v28 < 0x100)
    {
      v29 = 1;
    }

    if (v28 >= 2)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    if (v30 > 1)
    {
      if (v30 == 2)
      {
        v31 = *(a1 + v25);
        if (v31)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v31 = *(a1 + v25);
        if (v31)
        {
          goto LABEL_37;
        }
      }
    }

    else if (v30)
    {
      v31 = *(a1 + v25);
      if (v31)
      {
LABEL_37:
        v32 = v31 - 1;
        if (v27)
        {
          v32 = 0;
          v33 = *a1;
        }

        else
        {
          v33 = 0;
        }

        return v16 + (v33 | v32) + 1;
      }
    }
  }

  v34 = (((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v18 + 16) & ~v18;
  if (v6 == v16)
  {
    v35 = *(v5 + 48);

    return v35(v34, v6, v4);
  }

  v37 = (v34 + v19 + v20) & ~v20;
  if (v9 == v16)
  {
    if (v8 >= 2)
    {
      v38 = (*(v7 + 48))(v37);
      goto LABEL_59;
    }

    return 0;
  }

  v39 = (v23 + v37) & ~v21;
  if (v14 == v16)
  {
    if (v13 >= 2)
    {
      v38 = (*(v12 + 48))(v39, v13, v11);
LABEL_59:
      if (v38 >= 2)
      {
        return v38 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v40 = *(((v24 + v39) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v40 >= 0xFFFFFFFF)
  {
    LODWORD(v40) = -1;
  }

  return (v40 + 1);
}

_DWORD *sub_23DAB1808(_DWORD *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = 0;
  v6 = *(a4[2] - 8);
  v7 = *(v6 + 84);
  v8 = *(a4[3] - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v7 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = *(v6 + 84);
  }

  v12 = a4[4];
  v13 = *(v12 - 8);
  v14 = *(v13 + 84);
  v15 = *(v6 + 80);
  v16 = *(*(a4[2] - 8) + 64);
  v17 = *(v8 + 80);
  v18 = *(v13 + 80);
  if (v14)
  {
    v19 = v14 - 1;
  }

  else
  {
    v19 = 0;
  }

  if (v11 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v11;
  }

  if (v20 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  if (v9)
  {
    v21 = *(*(a4[3] - 8) + 64);
  }

  else
  {
    v21 = *(*(a4[3] - 8) + 64) + 1;
  }

  v22 = v21 + v18;
  v23 = (v21 + v18 + ((v16 + v17 + ((v15 + 48) & ~v15)) & ~v17)) & ~v18;
  if (v14)
  {
    v24 = *(*(v12 - 8) + 64);
  }

  else
  {
    v24 = *(*(v12 - 8) + 64) + 1;
  }

  v25 = v24 + 7;
  v26 = ((((((((v25 + v23) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v20 < a3)
  {
    v27 = a3 - v20;
    if (((((((((v25 + v23) & 0xFFFFFFF8) + 27) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v28 = v27 + 1;
    }

    else
    {
      v28 = 2;
    }

    if (v28 >= 0x10000)
    {
      v5 = 4;
    }

    else
    {
      v5 = 2;
    }

    if (v28 < 0x100)
    {
      v5 = 1;
    }

    if (v28 < 2)
    {
      v5 = 0;
    }
  }

  if (a2 > v20)
  {
    if (((((((((v25 + v23) & 0xFFFFFFF8) + 27) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v29 = a2 - v20;
    }

    else
    {
      v29 = 1;
    }

    if (((((((((v25 + v23) & 0xFFFFFFF8) + 27) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v30 = ~v20 + a2;
      v31 = result;
      bzero(result, v26);
      result = v31;
      *v31 = v30;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + v26) = v29;
      }

      else
      {
        *(result + v26) = v29;
      }
    }

    else if (v5)
    {
      *(result + v26) = v29;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + v26) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_50;
    }

    *(result + v26) = 0;
  }

  else if (v5)
  {
    *(result + v26) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_50;
  }

  if (!a2)
  {
    return result;
  }

LABEL_50:
  v32 = (((((result + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v15 + 16) & ~v15;
  if (v7 == v20)
  {
    v33 = *(v6 + 56);

    return v33(v32);
  }

  else
  {
    v34 = (v32 + v16 + v17) & ~v17;
    if (v10 == v20)
    {
      v35 = *(v8 + 56);
      v36 = a2 + 1;

      return v35(v34, v36, v9);
    }

    else
    {
      result = ((v22 + v34) & ~v18);
      if (v19 == v20)
      {
        v37 = *(v13 + 56);
        v38 = a2 + 1;

        return v37(result, v38, v14, v12);
      }

      else
      {
        v39 = (result + v25) & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v39 + 16) = 0;
          *v39 = a2 & 0x7FFFFFFF;
          *(v39 + 8) = 0;
        }

        else
        {
          *(v39 + 8) = a2 - 1;
        }
      }
    }
  }

  return result;
}

void sub_23DAB1BA8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for OnboardingTraits(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for OnboardingTraits(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for FramePreferenceKey(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for FramePreferenceKey(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_23DAB1D3C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[5];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE498, &qword_23DB7BDB0);
  type metadata accessor for AXOnboardingHeader();
  sub_23DB6F2DC();
  sub_23DB70B7C();
  sub_23DB6F2DC();
  sub_23DB6F7AC();
  sub_23DB70B7C();
  sub_23DB6F2DC();
  sub_23DB6F2DC();
  swift_getTupleTypeMetadata2();
  sub_23DB706BC();
  sub_23DB70B7C();
  swift_getTupleTypeMetadata3();
  sub_23DB706BC();
  sub_23DB702AC();
  swift_getTupleTypeMetadata2();
  sub_23DB706BC();
  swift_getWitnessTable();
  sub_23DB7044C();
  sub_23DB6F2DC();
  sub_23DB6F2DC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE4A0, &qword_23DB7BDB8);
  sub_23DB6F2DC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE4A8, &qword_23DB7BDC0);
  sub_23DB6F2DC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23DA17B80(&qword_27E2FE4B0, &qword_27E2FE4A0, &qword_23DB7BDB8);
  swift_getWitnessTable();
  sub_23DA17B80(&qword_27E2FE4B8, &qword_27E2FE4A8, &qword_23DB7BDC0);
  swift_getWitnessTable();
  sub_23DB6F00C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_23DB6F1CC();
  sub_23DB6F2DC();
  sub_23DB6F2DC();
  sub_23DB6F2DC();
  sub_23DB70B7C();
  swift_getTupleTypeMetadata2();
  sub_23DB706BC();
  swift_getWitnessTable();
  sub_23DB7044C();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23DAB220C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = *(type metadata accessor for AXOnboardingView() - 8);
  v12 = v2 + ((*(v11 + 80) + 64) & ~*(v11 + 80));

  return sub_23DAAD8FC(a1, v12, v5, v6, v7, v8, v9, v10, a2);
}

unint64_t sub_23DAB22E0()
{
  result = qword_27E2FE578;
  if (!qword_27E2FE578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE578);
  }

  return result;
}

uint64_t objectdestroyTm_4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v20 = *(v0 + 32);
  v21 = *(v0 + 48);
  v3 = type metadata accessor for AXOnboardingView();
  v4 = *(*(v3 - 1) + 64);
  v5 = (v0 + ((*(*(v3 - 1) + 80) + 64) & ~*(*(v3 - 1) + 80)));
  v6 = *(v5 + 1);

  v7 = *(v5 + 3);

  v8 = *(v5 + 5);

  (*(*(v2 - 8) + 8))(&v5[v3[19]], v2);
  v9 = v3[20];
  v10 = *(v1 - 8);
  if (!(*(v10 + 48))(&v5[v9], 1, v1))
  {
    (*(v10 + 8))(&v5[v9], v1);
  }

  v11 = v3[21];
  v12 = *(v20 - 8);
  if (!(*(v12 + 48))(&v5[v11], 1, v20))
  {
    (*(v12 + 8))(&v5[v11], v20);
  }

  v13 = &v5[v3[22]];
  v14 = *v13;

  v15 = *(v13 + 1);

  v16 = *&v5[v3[23] + 8];

  v17 = *&v5[v3[24] + 8];

  v18 = *&v5[v3[25] + 8];

  return swift_deallocObject();
}

uint64_t sub_23DAB2584(CGFloat *a1)
{
  v3 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v4 = *(*(type metadata accessor for AXOnboardingView() - 8) + 80);

  return sub_23DAB0CCC(a1);
}

unint64_t sub_23DAB2648()
{
  result = qword_27E2FE590;
  if (!qword_27E2FE590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE590);
  }

  return result;
}

unint64_t sub_23DAB269C()
{
  result = qword_27E2FD1F8;
  if (!qword_27E2FD1F8)
  {
    type metadata accessor for CGRect(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD1F8);
  }

  return result;
}

uint64_t sub_23DAB2720()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v22 = *(v0 + 32);
  v26 = *(v0 + 48);
  v3 = type metadata accessor for AXOnboardingView();
  v4 = (*(*(v3 - 1) + 80) + 64) & ~*(*(v3 - 1) + 80);
  v23 = *(*(v3 - 1) + 64);
  v25 = sub_23DB6F15C();
  v5 = *(v25 - 8);
  v6 = *(v5 + 80);
  v24 = *(v5 + 64);
  v7 = v0 + v4;
  v8 = *(v0 + v4 + 8);

  v9 = *(v0 + v4 + 24);

  v10 = *(v0 + v4 + 40);

  (*(*(v2 - 8) + 8))(v0 + v4 + v3[19], v2);
  v11 = v3[20];
  v12 = *(v1 - 8);
  if (!(*(v12 + 48))(v0 + v4 + v11, 1, v1))
  {
    (*(v12 + 8))(v7 + v11, v1);
  }

  v13 = v3[21];
  v14 = *(v22 - 8);
  if (!(*(v14 + 48))(v7 + v13, 1, v22))
  {
    (*(v14 + 8))(v7 + v13, v22);
  }

  v15 = (v7 + v3[22]);
  v16 = *v15;

  v17 = v15[1];

  v18 = *(v7 + v3[23] + 8);

  v19 = *(v7 + v3[24] + 8);

  v20 = *(v7 + v3[25] + 8);

  (*(v5 + 8))(v0 + ((v4 + v23 + v6) & ~v6), v25);
  return swift_deallocObject();
}

uint64_t sub_23DAB29FC(CGFloat *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = *(type metadata accessor for AXOnboardingView() - 8);
  v10 = (*(v9 + 80) + 64) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_23DB6F15C() - 8);
  return sub_23DAB045C(a1, v1 + v10, v1 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80)), v3, v4, v5, v6, v7, v8);
}

unint64_t sub_23DAB2B4C()
{
  result = qword_27E2FE598;
  if (!qword_27E2FE598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE498, &qword_23DB7BDB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE598);
  }

  return result;
}

void sub_23DAB2BD0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  View.onboardingViewFormat()();
}

uint64_t sub_23DAB2C0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23DB6F55C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEF8, &qword_23DB73D60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = (&v19 - v13);
  sub_23DA0E2B4(v2, &v19 - v13, &qword_27E2FBEF8, &qword_23DB73D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_23DB6F25C();
    return (*(*(v15 - 8) + 32))(a1, v14, v15);
  }

  else
  {
    v17 = *v14;
    sub_23DB70ACC();
    v18 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v4);
  }
}

uint64_t AXOnboardingBulletList.init(content:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEF8, &qword_23DB73D60);
  swift_storeEnumTagMultiPayload();
  v4 = a2 + *(type metadata accessor for AXOnboardingBulletList() + 36);
  return a1();
}

uint64_t AXOnboardingBulletList.body.getter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E2FE5A0, &qword_23DB7C0C8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_23DB7044C();
  type metadata accessor for AXOnboardingBulletListFormat(255);
  sub_23DB6F2DC();
  swift_getTupleTypeMetadata2();
  sub_23DB706BC();
  swift_getWitnessTable();
  v5 = sub_23DB7044C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v17[-v13];
  v18 = v3;
  v19 = v4;
  v20 = v1;
  sub_23DB6F68C();
  sub_23DB7043C();
  swift_getWitnessTable();
  sub_23DAAC170(v10);
  v15 = *(v6 + 8);
  v15(v10, v5);
  sub_23DAAC170(v14);
  return (v15)(v14, v5);
}

uint64_t sub_23DAB30F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a4;
  v7 = sub_23DB7044C();
  v41 = *(v7 - 8);
  v8 = *(v41 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v37 - v10;
  type metadata accessor for AXOnboardingBulletListFormat(255);
  v12 = sub_23DB6F2DC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v39 = &v37 - v20;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2FE5A0, &qword_23DB7C0C8);
  v21 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40, v22);
  v38 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v37 - v26;
  v29 = *(v28 + 36);
  *&v27[v29] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEF8, &qword_23DB73D60);
  swift_storeEnumTagMultiPayload();
  *v27 = 0;
  v27[8] = 1;
  sub_23DB6F69C();
  type metadata accessor for AXOnboardingBulletList();
  sub_23DAB3550();
  v43 = a2;
  v44 = a3;
  v45 = a1;
  sub_23DB7043C();
  WitnessTable = swift_getWitnessTable();
  View.bulletListFormat()(v7, WitnessTable);
  (*(v41 + 8))(v11, v7);
  v31 = sub_23DAB3FBC(&qword_27E2FE628, type metadata accessor for AXOnboardingBulletListFormat);
  v49[2] = WitnessTable;
  v49[3] = v31;
  v32 = swift_getWitnessTable();
  v33 = v39;
  sub_23DAAC170(v17);
  v34 = *(v13 + 8);
  v34(v17, v12);
  v35 = v38;
  sub_23DA0E2B4(v27, v38, qword_27E2FE5A0, &qword_23DB7C0C8);
  v49[0] = v35;
  (*(v13 + 16))(v17, v33, v12);
  v49[1] = v17;
  v48[0] = v40;
  v48[1] = v12;
  v46 = sub_23DAB3E98();
  v47 = v32;
  sub_23DAC2F38(v49, 2uLL, v48);
  v34(v33, v12);
  sub_23DAB3F54(v27);
  v34(v17, v12);
  return sub_23DAB3F54(v35);
}

double sub_23DAB3550()
{
  v0 = sub_23DB6F25C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v16 - v8;
  sub_23DAB2C0C(&v16 - v8);
  (*(v1 + 104))(v5, *MEMORY[0x277CDFA00], v0);
  sub_23DAB3FBC(&qword_27E2FC160, MEMORY[0x277CDFA28]);
  v10 = sub_23DB7084C();
  v11 = *(v1 + 8);
  v11(v5, v0);
  if (v10)
  {
    v11(v9, v0);
    goto LABEL_4;
  }

  IsPad = AXDeviceIsPad();
  v11(v9, v0);
  if (IsPad)
  {
LABEL_4:
    v13 = AXDeviceTemplateType();
    if ((v13 - 2) > 3)
    {
      return 36.0;
    }

    else
    {
      return dbl_23DB7C160[v13 - 2];
    }
  }

  v15 = AXDeviceTemplateType();
  result = 26.0;
  if (v15 == 5)
  {
    return 22.0;
  }

  return result;
}

uint64_t sub_23DAB3734(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AXOnboardingBulletList();
  sub_23DAAC170(a1 + *(v8 + 36));
  sub_23DAAC170(v7);
  return (*(v4 + 8))(v7, a2);
}

void sub_23DAB3830(uint64_t a1)
{
  sub_23DA156A4();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23DAB38B8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_23DB6F25C() - 8) + 64);
  v7 = *(*(a3 + 16) - 8);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= 0xFE)
  {
    v11 = 254;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = v6 + v9 + 1;
  if (a2 <= v11)
  {
    goto LABEL_30;
  }

  v13 = (v12 & ~v9) + v10;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v11 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_30:
      if (v8 > 0xFE)
      {
        v22 = *(*(*(a3 + 16) - 8) + 48);

        return v22((a1 + v12) & ~v9);
      }

      else
      {
        v21 = *(a1 + v6);
        if (v21 >= 2)
        {
          return (v21 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_30;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v19 = v13;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_23DAB3AB0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_23DB6F25C() - 8) + 64);
  v9 = 8;
  if (v8 > 8)
  {
    v9 = v8;
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = v9 + 1;
  v15 = v9 + 1 + v12;
  v16 = (v15 & ~v12) + *(v10 + 64);
  if (a3 <= v13)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v13 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v13 < a2)
  {
    v18 = ~v13 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_57:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v16] = 0;
LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!v17)
  {
    goto LABEL_32;
  }

  a1[v16] = 0;
  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v11 > 0xFE)
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v12, a2);
  }

  else if (a2 > 0xFE)
  {
    if (v14 <= 3)
    {
      v24 = ~(-1 << (8 * v14));
    }

    else
    {
      v24 = -1;
    }

    if (v9 != -1)
    {
      v25 = v24 & (a2 - 255);
      if (v14 <= 3)
      {
        v26 = v9 + 1;
      }

      else
      {
        v26 = 4;
      }

      bzero(a1, v14);
      if (v26 > 2)
      {
        if (v26 == 3)
        {
          *a1 = v25;
          a1[2] = BYTE2(v25);
        }

        else
        {
          *a1 = v25;
        }
      }

      else if (v26 == 1)
      {
        *a1 = v25;
      }

      else
      {
        *a1 = v25;
      }
    }
  }

  else
  {
    a1[v9] = -a2;
  }
}

uint64_t sub_23DAB3DA4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E2FE5A0, &qword_23DB7C0C8);
  sub_23DB7044C();
  type metadata accessor for AXOnboardingBulletListFormat(255);
  sub_23DB6F2DC();
  swift_getTupleTypeMetadata2();
  sub_23DB706BC();
  swift_getWitnessTable();
  sub_23DB7044C();

  return swift_getWitnessTable();
}

unint64_t sub_23DAB3E98()
{
  result = qword_27E2FE630;
  if (!qword_27E2FE630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E2FE5A0, &qword_23DB7C0C8);
    sub_23DAB3FBC(&qword_27E2FE638, type metadata accessor for AXOnboardingTitleToListFormat);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE630);
  }

  return result;
}

uint64_t sub_23DAB3F54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2FE5A0, &qword_23DB7C0C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23DAB3FBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23DAB4004@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23DB6F55C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEF8, &qword_23DB73D60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = (&v19 - v13);
  sub_23DA0E2B4(v2, &v19 - v13, &qword_27E2FBEF8, &qword_23DB73D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_23DB6F25C();
    return (*(*(v15 - 8) + 32))(a1, v14, v15);
  }

  else
  {
    v17 = *v14;
    sub_23DB70ACC();
    v18 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v4);
  }
}

int *AXOnboardingBulletItem.init(iconName:title:description:iconColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  *a8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEF8, &qword_23DB73D60);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for AXOnboardingBulletItem();
  v17 = (a8 + result[5]);
  *v17 = a1;
  v17[1] = a2;
  v18 = (a8 + result[6]);
  *v18 = a3;
  v18[1] = a4;
  v19 = (a8 + result[7]);
  *v19 = a5;
  v19[1] = a6;
  *(a8 + result[8]) = a7;
  return result;
}

uint64_t type metadata accessor for AXOnboardingBulletItem()
{
  result = qword_27E2FE688;
  if (!qword_27E2FE688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AXOnboardingBulletItem.body.getter@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE640, &qword_23DB7C1B8);
  v1 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66, v2);
  v4 = &v55 - v3;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE648, &qword_23DB7C1C0);
  v59 = *(v67 - 8);
  v5 = *(v59 + 64);
  MEMORY[0x28223BE20](v67, v6);
  v58 = &v55 - v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE650, &qword_23DB7C1C8);
  v8 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63, v9);
  v65 = &v55 - v10;
  v11 = sub_23DB6F9FC();
  v60 = *(v11 - 8);
  v61 = v11;
  v12 = *(v60 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE658, &qword_23DB7C1D0);
  v16 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62, v17);
  v19 = &v55 - v18;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE660, &qword_23DB7C1D8);
  v57 = *(v64 - 8);
  v20 = *(v57 + 64);
  MEMORY[0x28223BE20](v64, v21);
  v56 = &v55 - v22;
  v23 = sub_23DB6F25C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v55 - v31;
  sub_23DAB4004(&v55 - v31);
  (*(v24 + 104))(v28, *MEMORY[0x277CDFA00], v23);
  sub_23DAB4A80();
  v33 = sub_23DB7084C();
  v34 = *(v24 + 8);
  v34(v28, v23);
  if (v33)
  {
    v34(v32, v23);
  }

  else
  {
    IsPad = AXDeviceIsPad();
    v34(v32, v23);
    if ((IsPad & 1) == 0)
    {
      *v19 = sub_23DB6F69C();
      *(v19 + 1) = 0;
      v19[16] = 1;
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE668, &qword_23DB7C1E0);
      sub_23DAB4AD8(&v19[*(v48 + 44)]);
      sub_23DB6F9DC();
      v49 = sub_23DA17B80(&qword_27E2FE670, &qword_27E2FE658, &qword_23DB7C1D0);
      v50 = v56;
      v51 = v62;
      sub_23DB6FF8C();
      (*(v60 + 8))(v15, v61);
      sub_23DA17988(v19, &qword_27E2FE658, &qword_23DB7C1D0);
      v52 = v57;
      v53 = v64;
      (*(v57 + 16))(v65, v50, v64);
      swift_storeEnumTagMultiPayload();
      v69 = v51;
      v70 = v49;
      swift_getOpaqueTypeConformance2();
      v54 = sub_23DA17B80(&qword_27E2FE678, &qword_27E2FE640, &qword_23DB7C1B8);
      v69 = v66;
      v70 = v54;
      swift_getOpaqueTypeConformance2();
      sub_23DB6F79C();
      return (*(v52 + 8))(v50, v53);
    }
  }

  if (_UISolariumEnabled())
  {
    v36 = sub_23DB6F5AC();
  }

  else
  {
    v36 = sub_23DB6F5BC();
  }

  v37 = v36;
  v38 = _UISolariumEnabled();
  v39 = 0x402C000000000000;
  if (v38)
  {
    v39 = 0x403E000000000000;
  }

  *v4 = v37;
  *(v4 + 1) = v39;
  v4[16] = 0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE680, &qword_23DB7C1E8);
  sub_23DAB4AD8(&v4[*(v40 + 44)]);
  sub_23DB6F9DC();
  v41 = sub_23DA17B80(&qword_27E2FE678, &qword_27E2FE640, &qword_23DB7C1B8);
  v42 = v58;
  v43 = v66;
  sub_23DB6FF8C();
  (*(v60 + 8))(v15, v61);
  sub_23DA17988(v4, &qword_27E2FE640, &qword_23DB7C1B8);
  v44 = v59;
  v45 = v67;
  (*(v59 + 16))(v65, v42, v67);
  swift_storeEnumTagMultiPayload();
  v46 = sub_23DA17B80(&qword_27E2FE670, &qword_27E2FE658, &qword_23DB7C1D0);
  v69 = v62;
  v70 = v46;
  swift_getOpaqueTypeConformance2();
  v69 = v43;
  v70 = v41;
  swift_getOpaqueTypeConformance2();
  sub_23DB6F79C();
  return (*(v44 + 8))(v42, v45);
}

unint64_t sub_23DAB4A80()
{
  result = qword_27E2FC160;
  if (!qword_27E2FC160)
  {
    sub_23DB6F25C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FC160);
  }

  return result;
}

uint64_t sub_23DAB4AD8@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE6B0, &unk_23DB7C270);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v37 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v35 - v8;
  v10 = sub_23DB702CC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE6B8, &unk_23DB7CCA0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v36 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v35 = &v35 - v22;
  v23 = type metadata accessor for AXOnboardingBulletItem();
  v24 = (v1 + *(v23 + 20));
  v25 = *v24;
  v26 = v24[1];

  sub_23DB702DC();
  _UISolariumEnabled();
  (*(v11 + 104))(v15, *MEMORY[0x277CE0FE0], v10);
  v27 = sub_23DB702EC();
  (*(v11 + 8))(v15, v10);
  sub_23DB7062C();
  sub_23DB6F10C();

  v43 = 1;
  *&v42[38] = v46;
  *&v42[22] = v45;
  *&v42[6] = v44;
  result = *(v1 + *(v23 + 32));
  if (result)
  {
    *(v40 + 2) = *v42;
    *(&v40[1] + 2) = *&v42[16];
    *(&v40[2] + 2) = *&v42[32];
    v39 = v27;
    LOWORD(v40[0]) = v43;
    *&v40[3] = *&v42[46];
    *(&v40[3] + 1) = result;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE6C0, &unk_23DB7C280);
    sub_23DAB57C0();
    v29 = v35;
    sub_23DB6FE7C();
    v41[2] = v40[1];
    v41[3] = v40[2];
    v41[4] = v40[3];
    v41[0] = v39;
    v41[1] = v40[0];
    sub_23DA17988(v41, &qword_27E2FE6C0, &unk_23DB7C280);
    *v9 = sub_23DB6F69C();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE6F0, &qword_23DB7C2A0);
    sub_23DAB4F38(v1, &v9[*(v30 + 44)]);
    v31 = v36;
    sub_23DA0E2B4(v29, v36, &qword_27E2FE6B8, &unk_23DB7CCA0);
    v32 = v37;
    sub_23DAB5988(v9, v37);
    v33 = v38;
    sub_23DA0E2B4(v31, v38, &qword_27E2FE6B8, &unk_23DB7CCA0);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE6F8, &qword_23DB7C2A8);
    sub_23DAB5988(v32, v33 + *(v34 + 48));
    sub_23DA17988(v9, &qword_27E2FE6B0, &unk_23DB7C270);
    sub_23DA17988(v29, &qword_27E2FE6B8, &unk_23DB7CCA0);
    sub_23DA17988(v32, &qword_27E2FE6B0, &unk_23DB7C270);
    return sub_23DA17988(v31, &qword_27E2FE6B8, &unk_23DB7CCA0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23DAB4F38@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v66 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE700, &unk_23DB7C2B0);
  v68 = *(v3 - 8);
  v69 = v3;
  v4 = *(v68 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v67 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v70 = &v64 - v9;
  v10 = type metadata accessor for AXOnboardingBulletItem();
  v11 = *(v10 + 24);
  v65 = a1;
  v12 = (a1 + v11);
  v13 = v12[1];
  v71 = *v12;
  v72 = v13;
  v14 = sub_23DA16E70();

  v64 = v14;
  v15 = sub_23DB6FD8C();
  v17 = v16;
  v19 = v18;
  if (_UISolariumEnabled())
  {
    sub_23DB6FBCC();
  }

  else
  {
    sub_23DB6FBBC();
  }

  v20 = sub_23DB6FD3C();
  v22 = v21;
  v24 = v23;

  sub_23DA16EC4(v15, v17, v19 & 1);

  LODWORD(v71) = sub_23DB6F87C();
  v25 = sub_23DB6FCEC();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_23DA16EC4(v20, v22, v24 & 1);

  v71 = v25;
  v72 = v27;
  v73 = v29 & 1;
  v74 = v31;
  v75 = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE708, &qword_23DB7D9B0);
  sub_23DAB59F8();
  sub_23DB7002C();
  sub_23DA16EC4(v25, v27, v29 & 1);

  v32 = (v65 + *(v10 + 28));
  v34 = *v32;
  v33 = v32[1];
  v35 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v35 = v34 & 0xFFFFFFFFFFFFLL;
  }

  if (v35)
  {
    v71 = v34;
    v72 = v33;

    v36 = sub_23DB6FD8C();
    v38 = v37;
    v40 = v39;
    if (_UISolariumEnabled())
    {
      sub_23DB6FBCC();
    }

    else
    {
      sub_23DB6FBBC();
    }

    v45 = sub_23DB6FD3C();
    v47 = v46;
    v49 = v48;

    sub_23DA16EC4(v36, v38, v40 & 1);

    LODWORD(v71) = sub_23DB6F89C();
    v50 = sub_23DB6FCEC();
    v41 = v51;
    v53 = v52;
    v43 = v54;
    sub_23DA16EC4(v45, v47, v49 & 1);

    v42 = v53 & 1;
    v65 = v50;
    sub_23DA6D470(v50, v41, v53 & 1);

    v44 = 256;
  }

  else
  {
    v65 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
  }

  v56 = v67;
  v55 = v68;
  v57 = *(v68 + 16);
  v58 = v69;
  v57(v67, v70, v69);
  v59 = v66;
  v57(v66, v56, v58);
  v60 = &v59[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE718, &unk_23DB7C2C0) + 48)];
  v61 = v65;
  sub_23DA6EC54(v65, v41, v42, v43);
  sub_23DA6EC98(v61, v41, v42, v43);
  *v60 = v61;
  *(v60 + 1) = v41;
  *(v60 + 2) = v42;
  *(v60 + 3) = v43;
  *(v60 + 16) = v44;
  v62 = *(v55 + 8);
  v62(v70, v58);
  sub_23DA6EC98(v61, v41, v42, v43);
  return (v62)(v56, v58);
}

uint64_t sub_23DAB53D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2FBF58, &unk_23DB73E30);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23DAB54B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2FBF58, &unk_23DB73E30);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_23DAB557C()
{
  sub_23DA156A4();
  if (v0 <= 0x3F)
  {
    sub_23DAB560C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23DAB560C()
{
  if (!qword_27E2FE698)
  {
    v0 = sub_23DB70B7C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2FE698);
    }
  }
}

unint64_t sub_23DAB5660()
{
  result = qword_27E2FE6A0;
  if (!qword_27E2FE6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE6A8, &qword_23DB7C268);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE658, &qword_23DB7C1D0);
    sub_23DA17B80(&qword_27E2FE670, &qword_27E2FE658, &qword_23DB7C1D0);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE640, &qword_23DB7C1B8);
    sub_23DA17B80(&qword_27E2FE678, &qword_27E2FE640, &qword_23DB7C1B8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE6A0);
  }

  return result;
}

unint64_t sub_23DAB57C0()
{
  result = qword_27E2FE6C8;
  if (!qword_27E2FE6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE6C0, &unk_23DB7C280);
    sub_23DAB5878();
    sub_23DA17B80(&qword_27E2FC200, &qword_27E2FC208, &qword_23DB7CCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE6C8);
  }

  return result;
}

unint64_t sub_23DAB5878()
{
  result = qword_27E2FE6D0;
  if (!qword_27E2FE6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE6D8, &unk_23DB7CCB0);
    sub_23DAB5904();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE6D0);
  }

  return result;
}

unint64_t sub_23DAB5904()
{
  result = qword_27E2FE6E0;
  if (!qword_27E2FE6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE6E8, &unk_23DB7C290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE6E0);
  }

  return result;
}

uint64_t sub_23DAB5988(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE6B0, &unk_23DB7C270);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23DAB59F8()
{
  result = qword_27E2FE710;
  if (!qword_27E2FE710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE708, &qword_23DB7D9B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE710);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23DAB5A90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23DAB5AD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_23DAB5B48@<D0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v60 = a1;
  v62 = a2;
  v2 = sub_23DB6F32C();
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD208, &qword_23DB7C3F0);
  v8 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61, v9);
  v11 = &v58 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE750, &qword_23DB7C3F8);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v58 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE758, &qword_23DB7C400);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v58 - v22;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE760, &qword_23DB7C408);
  v24 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59, v25);
  v27 = &v58 - v26;
  sub_23DB6F98C();
  v28 = sub_23DB6FB3C();
  sub_23DB6EFAC();
  v29 = &v17[*(v13 + 44)];
  *v29 = v28;
  *(v29 + 1) = v30;
  *(v29 + 2) = v31;
  *(v29 + 3) = v32;
  *(v29 + 4) = v33;
  v29[40] = 0;
  sub_23DB7062C();
  sub_23DB6F34C();
  sub_23DA17A54(v17, v23, &qword_27E2FE750, &qword_23DB7C3F8);
  v34 = &v23[*(v19 + 44)];
  v35 = v68;
  *(v34 + 4) = v67;
  *(v34 + 5) = v35;
  *(v34 + 6) = v69;
  v36 = v64;
  *v34 = v63;
  *(v34 + 1) = v36;
  v37 = v66;
  *(v34 + 2) = v65;
  *(v34 + 3) = v37;
  v38 = *(v3 + 28);
  v39 = *MEMORY[0x277CE0118];
  v40 = sub_23DB6F63C();
  (*(*(v40 - 8) + 104))(&v7[v38], v39, v40);
  __asm { FMOV            V0.2D, #8.0 }

  *v7 = _Q0;
  v46 = sub_23DB6F99C();
  if (v60)
  {
    v47 = sub_23DB700EC();
  }

  else
  {
    if (v46)
    {
      if (qword_27E2FBBA8 != -1)
      {
        swift_once();
      }

      v47 = qword_27E30A680;
    }

    else
    {
      if (qword_27E2FBBA0 != -1)
      {
        swift_once();
      }

      v47 = qword_27E30A678;
    }
  }

  sub_23DAB698C(v7, v11);
  v48 = v61;
  *&v11[*(v61 + 52)] = v47;
  *&v11[*(v48 + 56)] = 256;
  v49 = sub_23DB7062C();
  v51 = v50;
  v52 = &v27[*(v59 + 36)];
  sub_23DA17A54(v11, v52, &qword_27E2FD208, &qword_23DB7C3F0);
  v53 = (v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE768, &qword_23DB7C410) + 36));
  *v53 = v49;
  v53[1] = v51;
  sub_23DA17A54(v23, v27, &qword_27E2FE758, &qword_23DB7C400);
  sub_23DB7062C();
  sub_23DB6F10C();
  v54 = v62;
  sub_23DA17A54(v27, v62, &qword_27E2FE760, &qword_23DB7C408);
  v55 = (v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE770, &qword_23DB7C418) + 36));
  v56 = v71;
  *v55 = v70;
  v55[1] = v56;
  result = *&v72;
  v55[2] = v72;
  return result;
}

double sub_23DAB6010@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23DB6F68C();
  v19 = 1;
  sub_23DAB611C(a1, &v11);
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v27[0] = v11;
  v27[1] = v12;
  v27[2] = v13;
  v27[3] = v14;
  v27[4] = v15;
  v27[5] = v16;
  v27[6] = v17;
  sub_23DAB673C(&v20, &v10);
  sub_23DAB67AC(v27);
  *&v18[55] = v23;
  *&v18[71] = v24;
  *&v18[87] = v25;
  *&v18[103] = v26;
  *&v18[7] = v20;
  *&v18[23] = v21;
  *&v18[39] = v22;
  v5 = *&v18[80];
  *(a2 + 81) = *&v18[64];
  *(a2 + 97) = v5;
  *(a2 + 113) = *&v18[96];
  v6 = *&v18[16];
  *(a2 + 17) = *v18;
  *(a2 + 33) = v6;
  result = *&v18[32];
  v8 = *&v18[48];
  *(a2 + 49) = *&v18[32];
  v9 = v19;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  *(a2 + 128) = *&v18[111];
  *(a2 + 65) = v8;
  return result;
}

double sub_23DAB611C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23DB702CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];

  sub_23DB702DC();
  (*(v5 + 104))(v9, *MEMORY[0x277CE0FE0], v4);
  v12 = sub_23DB702EC();

  (*(v5 + 8))(v9, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDAC8, &qword_23DB7C380);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_23DB78D60;
  if (a1[4])
  {
    if (qword_27E2FBBA0 != -1)
    {
      swift_once();
    }

    *(v13 + 32) = qword_27E30A678;
  }

  else
  {
    if (qword_27E2FBBC0 != -1)
    {
      swift_once();
    }

    *(v13 + 32) = qword_27E30A698;
    v14 = qword_27E2FBBC8;

    if (v14 != -1)
    {
      swift_once();
    }
  }

  sub_23DB7071C();
  sub_23DB7070C();
  MEMORY[0x23EEF6910](v13);
  sub_23DB6F1DC();
  v15 = v22;
  v21 = 1;
  sub_23DB7062C();
  sub_23DB6F10C();
  *a2 = v12;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v15;
  v16 = v24;
  *(a2 + 32) = v23;
  *(a2 + 48) = v16;
  v17 = v19[1];
  *(a2 + 64) = v19[0];
  *(a2 + 80) = v17;
  result = *&v20;
  *(a2 + 96) = v20;
  return result;
}

uint64_t sub_23DAB63F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE720, &qword_23DB7C368);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v11[-v5];
  v7 = *(v0 + 16);
  v14[0] = *v0;
  v14[1] = v7;
  v15 = *(v0 + 32);
  v16 = v14[0];
  v8 = swift_allocObject();
  v9 = *(v0 + 16);
  *(v8 + 16) = *v0;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(v0 + 32);
  v12 = v14;
  sub_23DAB668C(&v16, v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE728, &qword_23DB7C370);
  sub_23DA17B80(&qword_27E2FE730, &qword_27E2FE728, &qword_23DB7C370);
  sub_23DB703CC();
  v13[0] = v15;
  sub_23DA17B80(&qword_27E2FE738, &qword_27E2FE720, &qword_23DB7C368);
  sub_23DAB66E8();
  sub_23DB6FE3C();
  return (*(v2 + 8))(v6, v1);
}

uint64_t sub_23DAB661C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_23DAB665C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

unint64_t sub_23DAB66E8()
{
  result = qword_27E2FE740;
  if (!qword_27E2FE740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE740);
  }

  return result;
}

uint64_t sub_23DAB673C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE748, &qword_23DB7C378);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DAB67AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE748, &qword_23DB7C378);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for CategoryButtonStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_23DAB68C4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE720, &qword_23DB7C368);
  sub_23DA17B80(&qword_27E2FE738, &qword_27E2FE720, &qword_23DB7C368);
  sub_23DAB66E8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23DAB698C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23DB6F32C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23DAB69F4()
{
  result = qword_27E2FE778;
  if (!qword_27E2FE778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE770, &qword_23DB7C418);
    sub_23DAB6A80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE778);
  }

  return result;
}

unint64_t sub_23DAB6A80()
{
  result = qword_27E2FE780;
  if (!qword_27E2FE780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE760, &qword_23DB7C408);
    sub_23DAB6B38();
    sub_23DA17B80(&unk_27E2FE7A0, &qword_27E2FE768, &qword_23DB7C410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE780);
  }

  return result;
}

unint64_t sub_23DAB6B38()
{
  result = qword_27E2FE788;
  if (!qword_27E2FE788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE758, &qword_23DB7C400);
    sub_23DAB6BC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE788);
  }

  return result;
}