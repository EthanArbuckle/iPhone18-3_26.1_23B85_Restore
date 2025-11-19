uint64_t sub_100D5D158(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 2036427888;
    }

    else
    {
      v4 = 0x7463656C6573;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE800000000000000;
    v4 = 0x657461676976616ELL;
  }

  else if (a1 == 3)
  {
    v3 = 0xE700000000000000;
    v4 = 0x7373696D736964;
  }

  else
  {
    v4 = 0x726F62616C6C6F63;
    v3 = 0xEB00000000657461;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 2036427888;
    }

    else
    {
      v9 = 0x7463656C6573;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE600000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x7373696D736964;
    if (a2 != 3)
    {
      v6 = 0x726F62616C6C6F63;
      v5 = 0xEB00000000657461;
    }

    if (a2 == 2)
    {
      v7 = 0x657461676976616ELL;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_100D5D2E0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "eAll";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "uniqueIdentifierChanged";
      v4 = 0xD000000000000018;
    }

    else
    {
      v5 = "userSocialProfileChanged";
      v4 = 0xD00000000000001DLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000017;
    }

    else
    {
      v4 = 0xD000000000000011;
    }

    if (v3)
    {
      v5 = "applicationLaunch";
    }

    else
    {
      v5 = "eAll";
    }
  }

  if (a2 > 1u)
  {
    v2 = "uniqueIdentifierChanged";
    v6 = "userSocialProfileChanged";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD000000000000018;
    }

    else
    {
      v8 = 0xD00000000000001DLL;
    }
  }

  else
  {
    v6 = "applicationLaunch";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD000000000000017;
    }

    else
    {
      v8 = 0xD000000000000011;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_100D5D404(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x7265746E6563;
  v6 = 0xE400000000000000;
  v7 = 1952867692;
  if (a1 != 4)
  {
    v7 = 0x7468676972;
    v6 = 0xE500000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE800000000000000;
  v9 = 0x676E696C69617274;
  if (a1 != 1)
  {
    v9 = 0x656966697473756ALL;
    v8 = 0xE900000000000064;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x676E696461656CLL;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x7265746E6563)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1952867692)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x7468676972)
      {
LABEL_34:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x676E696C69617274)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE900000000000064;
      if (v10 != 0x656966697473756ALL)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x676E696461656CLL)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_100D5D5D4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000014;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD00000000000001DLL;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (v3)
    {
      v6 = "fullCatalogPlayback";
    }

    else
    {
      v6 = "needsManualVerification";
    }
  }

  else if (a1 == 2)
  {
    v6 = "voiceActivatedCatalogPlayback";
    v5 = 0xD000000000000012;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = "cloudLibraryEligible";
    }

    else
    {
      v4 = "catalogLyricsViewing";
    }

    v6 = v4 - 32;
    v5 = 0xD000000000000014;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = 0xD00000000000001DLL;
    }

    else
    {
      v2 = 0xD000000000000013;
    }

    if (a2)
    {
      v7 = "fullCatalogPlayback";
    }

    else
    {
      v7 = "needsManualVerification";
    }
  }

  else if (a2 == 2)
  {
    v7 = "voiceActivatedCatalogPlayback";
    v2 = 0xD000000000000012;
  }

  else
  {
    v7 = "anyCatalogPlayback";
    if (a2 != 3)
    {
      v7 = "cloudLibraryEligible";
    }
  }

  if (v5 == v2 && (v6 | 0x8000000000000000) == (v7 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100D5D730(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6373627553746F6ELL;
    }

    else
    {
      v3 = 0xD000000000000013;
    }

    if (v2)
    {
      v4 = 0xED00006465626972;
    }

    else
    {
      v4 = 0x8000000100E5C850;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x6269726373627573;
    v4 = 0xEA00000000006465;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x6564696C67;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (v2 == 3)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x6373627553746F6ELL;
    }

    else
    {
      v6 = 0xD000000000000013;
    }

    if (a2)
    {
      v5 = 0xED00006465626972;
    }

    else
    {
      v5 = 0x8000000100E5C850;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xEA00000000006465;
    if (v3 != 0x6269726373627573)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE500000000000000;
    if (v3 != 0x6564696C67)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    if (v3 != 0x6E776F6E6B6E75)
    {
LABEL_34:
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_100D5D8DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000017;
    }

    else
    {
      v3 = 0x64656B6E696C6E75;
    }

    if (v2)
    {
      v4 = 0x8000000100E6D030;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE800000000000000;
    v3 = 0x656C626967696C65;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x6967696C45746F6ELL;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (v2 == 3)
    {
      v4 = 0xEB00000000656C62;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000017;
    }

    else
    {
      v6 = 0x64656B6E696C6E75;
    }

    if (a2)
    {
      v5 = 0x8000000100E6D030;
    }

    else
    {
      v5 = 0xE800000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE800000000000000;
    if (v3 != 0x656C626967696C65)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xEB00000000656C62;
    if (v3 != 0x6967696C45746F6ELL)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    if (v3 != 0x6E776F6E6B6E75)
    {
LABEL_34:
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_100D5DA90(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x74726F6873;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v2)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE600000000000000;
    v4 = 0x6D756964656DLL;
  }

  else
  {
    v3 = 0xE400000000000000;
    if (a1 == 3)
    {
      v4 = 1735290732;
    }

    else
    {
      v4 = 1819047270;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x74726F6873;
    }

    else
    {
      v8 = 1701736302;
    }

    if (a2)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    if (v4 != v8)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 1735290732;
    if (a2 != 3)
    {
      v5 = 1819047270;
    }

    if (a2 == 2)
    {
      v6 = 0x6D756964656DLL;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    if (v4 != v6)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v7)
  {
LABEL_33:
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

  v9 = 1;
LABEL_34:

  return v9 & 1;
}

uint64_t sub_100D5DBE0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x6574736575716572;
  v5 = 0xE900000000000064;
  v6 = 0x6E69776F6C6C6F66;
  v7 = 0xE900000000000067;
  if (a1 != 4)
  {
    v6 = 0x64656B636F6C62;
    v7 = 0xE700000000000000;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x6F6C6C6F46746F6ELL;
  v9 = 0xED0000656C626177;
  if (a1 != 1)
  {
    v8 = 0x6F6C6C6F46746F6ELL;
    v9 = 0xEC000000676E6977;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 1718379891;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE900000000000064;
      if (v10 != 0x6574736575716572)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE900000000000067;
      if (v10 != 0x6E69776F6C6C6F66)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x64656B636F6C62)
      {
LABEL_34:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xED0000656C626177;
      if (v10 != 0x6F6C6C6F46746F6ELL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEC000000676E6977;
      if (v10 != 0x6F6C6C6F46746F6ELL)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1718379891)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_100D5DDE8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006261;
  v3 = 0x547972617262696CLL;
  v4 = a1;
  v5 = 0x6154686372616573;
  v6 = 0xE900000000000062;
  if (a1 != 5)
  {
    v5 = 0x6979616C50776F6ELL;
    v6 = 0xEA0000000000676ELL;
  }

  v7 = 0x61546573776F7262;
  v8 = 0xE900000000000062;
  if (a1 != 3)
  {
    v7 = 0x6261546F69646172;
    v8 = 0xE800000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x6154756F59726F66;
  v10 = 0xE900000000000062;
  if (a1 != 1)
  {
    v9 = 0x6F4E6E657473696CLL;
    v10 = 0xEC00000062615477;
  }

  if (!a1)
  {
    v9 = 0x547972617262696CLL;
    v10 = 0xEA00000000006261;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        v2 = 0xEC00000062615477;
        if (v11 != 0x6F4E6E657473696CLL)
        {
          goto LABEL_35;
        }

        goto LABEL_32;
      }

      v13 = 0x756F59726F66;
      goto LABEL_26;
    }

LABEL_31:
    if (v11 != v3)
    {
LABEL_35:
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  if (a2 <= 4u)
  {
    if (a2 == 3)
    {
      v13 = 0x6573776F7262;
      goto LABEL_26;
    }

    v2 = 0xE800000000000000;
    v3 = 0x6261546F69646172;
    goto LABEL_31;
  }

  if (a2 == 5)
  {
    v13 = 0x686372616573;
LABEL_26:
    v2 = 0xE900000000000062;
    if (v11 != (v13 & 0xFFFFFFFFFFFFLL | 0x6154000000000000))
    {
      goto LABEL_35;
    }

    goto LABEL_32;
  }

  v2 = 0xEA0000000000676ELL;
  if (v11 != 0x6979616C50776F6ELL)
  {
    goto LABEL_35;
  }

LABEL_32:
  if (v12 != v2)
  {
    goto LABEL_35;
  }

  v14 = 1;
LABEL_36:

  return v14 & 1;
}

uint64_t sub_100D5E008(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746C7561666564;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6174654472657375;
    }

    else
    {
      v4 = 0x6552776F6C6C6F66;
    }

    if (v3 == 2)
    {
      v5 = 0xEB00000000736C69;
    }

    else
    {
      v5 = 0xEE00737473657571;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x74754F6E676973;
    }

    else
    {
      v4 = 0x746C7561666564;
    }

    v5 = 0xE700000000000000;
  }

  v6 = 0x6174654472657375;
  v7 = 0xEB00000000736C69;
  if (a2 != 2)
  {
    v6 = 0x6552776F6C6C6F66;
    v7 = 0xEE00737473657571;
  }

  if (a2)
  {
    v2 = 0x74754F6E676973;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v6;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE700000000000000;
  }

  else
  {
    v9 = v7;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_100D5E174(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x676E696461656CLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1952867692;
    }

    else
    {
      v4 = 0x7468676972;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x676E696C69617274;
    }

    else
    {
      v4 = 0x676E696461656CLL;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE400000000000000;
  v8 = 1952867692;
  if (a2 != 2)
  {
    v8 = 0x7468676972;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x676E696C69617274;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_100D5E2A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xD000000000000011;
  v5 = 0x8000000100E6CCB0;
  if (a1 != 5)
  {
    v4 = 1869768040;
    v5 = 0xE400000000000000;
  }

  v6 = 0xE600000000000000;
  v7 = 0x776F68537674;
  if (a1 != 3)
  {
    v7 = 0x65736163776F6873;
    v6 = 0xE800000000000000;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE600000000000000;
  v9 = 0x747369747261;
  if (a1 != 1)
  {
    v9 = 0x6F526D6F74737563;
    v8 = 0xEF6D75626C416D6FLL;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6D75626C61;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x747369747261)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xEF6D75626C416D6FLL;
        if (v10 != 0x6F526D6F74737563)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6D75626C61)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0x8000000100E6CCB0;
      if (v10 != 0xD000000000000011)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1869768040)
      {
LABEL_39:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x776F68537674)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE800000000000000;
    if (v10 != 0x65736163776F6873)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_100D5E4C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006B636142;
  v3 = 0x657461676976616ELL;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0x6146747369747261;
    v12 = 0xEF64657469726F76;
    if (a1 != 6)
    {
      v11 = 0xD000000000000011;
      v12 = 0x8000000100E6D330;
    }

    v13 = 0x8000000100E6D2E0;
    v14 = 0xD00000000000001CLL;
    if (a1 != 4)
    {
      v14 = 0xD00000000000001ELL;
      v13 = 0x8000000100E6D300;
    }

    if (a1 <= 5u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v11;
    }

    if (v4 <= 5)
    {
      v10 = v13;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v5 = 0x8000000100E6D2C0;
    v6 = 0xD000000000000014;
    if (a1 == 2)
    {
      v6 = 0x657461676976616ELL;
      v5 = 0xEC0000006B636142;
    }

    v7 = 0x8000000100E6D290;
    v8 = 0xD000000000000015;
    if (a1)
    {
      v7 = 0x8000000100E59DD0;
    }

    else
    {
      v8 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xEF64657469726F76;
        if (v9 != 0x6146747369747261)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v2 = 0x8000000100E6D330;
        if (v9 != 0xD000000000000011)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_42;
    }

    if (a2 == 4)
    {
      v2 = 0x8000000100E6D2E0;
      if (v9 != 0xD00000000000001CLL)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    v2 = 0x8000000100E6D300;
    v3 = 0xD00000000000001ELL;
  }

  else
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v2 = 0x8000000100E59DD0;
        if (v9 != 0xD000000000000015)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v2 = 0x8000000100E6D290;
        if (v9 != 0xD000000000000010)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_42;
    }

    if (a2 != 2)
    {
      v2 = 0x8000000100E6D2C0;
      if (v9 != 0xD000000000000014)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }
  }

  if (v9 != v3)
  {
LABEL_45:
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_46;
  }

LABEL_42:
  if (v10 != v2)
  {
    goto LABEL_45;
  }

  v15 = 1;
LABEL_46:

  return v15 & 1;
}

uint64_t sub_100D5E748(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x4843544150;
  v6 = 0xE300000000000000;
  v7 = 5526864;
  if (a1 != 4)
  {
    v7 = 0x4554454C4544;
    v6 = 0xE600000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 1145128264;
  if (a1 != 1)
  {
    v8 = 1414745936;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v8 = 5522759;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xE500000000000000;
      if (v9 != 0x4843544150)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xE300000000000000;
      if (v9 != 5526864)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x4554454C4544)
      {
LABEL_34:
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    v11 = 0xE400000000000000;
    if (a2 == 1)
    {
      if (v9 != 1145128264)
      {
        goto LABEL_34;
      }
    }

    else if (v9 != 1414745936)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v11 = 0xE300000000000000;
    if (v9 != 5522759)
    {
      goto LABEL_34;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_34;
  }

  v12 = 1;
LABEL_35:

  return v12 & 1;
}

uint64_t JSSettingsItem.Kind.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x746C7561666564;
  v2 = 0x6174654472657375;
  if (a1 != 2)
  {
    v2 = 0x6552776F6C6C6F66;
  }

  if (a1)
  {
    v1 = 0x74754F6E676973;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_100D5E984()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100D5EA5C()
{
  String.hash(into:)();
}

Swift::Int sub_100D5EB20()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100D5EBF4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicJSCore14JSSettingsItemC4KindO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_100D5EC24(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x746C7561666564;
  v4 = 0xEB00000000736C69;
  v5 = 0x6174654472657375;
  if (*v1 != 2)
  {
    v5 = 0x6552776F6C6C6F66;
    v4 = 0xEE00737473657571;
  }

  if (*v1)
  {
    v3 = 0x74754F6E676973;
    v2 = 0xE700000000000000;
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

Swift::Void __swiftcall JSSettingsItem.AccessoryItem.updateToggle(isToggled:)(Swift::Bool isToggled)
{
  if ((v1 & 0x8000000000000000) == 0)
  {
    v2 = v1;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v2;
    static Published.subscript.setter();
    sub_100D28280(v4);
  }
}

uint64_t static JSSettingsItem.AccessoryItem.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      return 0;
    }
  }

  else if (a2 < 0)
  {
    return 0;
  }

  sub_100009F78(0, &qword_101197A30);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t sub_100D5EE44(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101186D80);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2, v6);
  (v9)(v5, v8, v2);
  swift_beginAccess();
  sub_10010FC20(&qword_1011928F0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_100D5F020(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101186D80);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2, v6);
  (v9)(v5, v8, v2);
  swift_beginAccess();
  sub_10010FC20(&qword_1011928F0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_100D5F1F0@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100D5F270(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t JSSettingsItem.kind.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100D5F354(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011C0768);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2, v6);
  (v9)(v5, v8, v2);
  swift_beginAccess();
  sub_10010FC20(&qword_1011C06B0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_100D5F508(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return static Published.subscript.setter();
}

uint64_t sub_100D5F590(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011BF558);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2, v6);
  (v9)(v5, v8, v2);
  swift_beginAccess();
  sub_10010FC20(&qword_1011BF550);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_100D5F76C(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101182130);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2, v6);
  (v9)(v5, v8, v2);
  swift_beginAccess();
  sub_10010FC20(&unk_101189E60);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_100D5F948(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101182130);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2, v6);
  (v9)(v5, v8, v2);
  swift_beginAccess();
  sub_10010FC20(&unk_101189E60);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_100D5FB24(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101182130);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2, v6);
  (v9)(v5, v8, v2);
  swift_beginAccess();
  sub_10010FC20(&unk_101189E60);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_100D5FD00(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101182130);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2, v6);
  (v9)(v5, v8, v2);
  swift_beginAccess();
  sub_10010FC20(&unk_101189E60);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_100D5FEF8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_100D5FF80(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t JSSettingsItem.followRequestsCount.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100D60078(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011C0760);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2, v6);
  (v9)(v5, v8, v2);
  swift_beginAccess();
  sub_10010FC20(&unk_1011A4640);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

void sub_100D6022C(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = v19[0] & 0xF000000000000007;
  if ((~a1 & 0xF000000000000007) == 0)
  {
    if (v4 == 0xF000000000000007)
    {
      return;
    }

    goto LABEL_3;
  }

  if (v4 != 0xF000000000000007)
  {
    if (a1 < 0)
    {
      if (v19[0] < 0)
      {
        goto LABEL_9;
      }
    }

    else if ((v19[0] & 0x8000000000000000) == 0)
    {
LABEL_9:
      sub_100009F78(0, &qword_101197A30);
      v5 = static NSObject.== infix(_:_:)();
      sub_100D62474(v19[0]);
      if (v5)
      {
        return;
      }

      goto LABEL_10;
    }

LABEL_3:
    sub_100D62474(v19[0]);
  }

LABEL_10:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v6 = v19[0];
  if ((~v19[0] & 0xF000000000000007) != 0)
  {
    if (*(v2 + OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem_isUpdatingFromJS))
    {
      sub_100D62474(v19[0]);
    }

    else
    {
      if (v19[0] < 0)
      {
        if (qword_1011BDB08 != -1)
        {
          swift_once();
        }

        v13 = static JSBridge.shared;
        v20 = type metadata accessor for JSSettingsItemText();
        v19[0] &= ~0x8000000000000000;
        sub_100009F78(0, &qword_101182960);
        sub_1000189C0(v19, &v17);
        v8 = swift_allocObject();
        *(v8 + 16) = 1;
        v14 = v18;
        *(v8 + 24) = v17;
        *(v8 + 40) = v14;
        strcpy((v8 + 56), "accessoryItem");
        *(v8 + 70) = -4864;
        *(v8 + 72) = v2;
        *(v8 + 80) = v13;
        *(v8 + 88) = 0;
        sub_100D6245C(v6);
        v15 = v2;
        v16 = v13;
        v12 = sub_100D35F98;
      }

      else
      {
        if (qword_1011BDB08 != -1)
        {
          swift_once();
        }

        v7 = static JSBridge.shared;
        v20 = type metadata accessor for JSSettingsItemToggle();
        sub_100009F78(0, &qword_101182960);
        sub_1000189C0(v19, &v17);
        v8 = swift_allocObject();
        *(v8 + 16) = 1;
        v9 = v18;
        *(v8 + 24) = v17;
        *(v8 + 40) = v9;
        strcpy((v8 + 56), "accessoryItem");
        *(v8 + 70) = -4864;
        *(v8 + 72) = v2;
        *(v8 + 80) = v7;
        *(v8 + 88) = 0;
        sub_100D6245C(v6);
        v10 = v2;
        v11 = v7;
        v12 = sub_100D35EE8;
      }

      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(v12, v8);
      sub_100D62474(v6);

      sub_1000095E8(v19, &unk_101183F30);
    }
  }
}

void sub_100D605D4(unint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100D6245C(v2);
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_100D6245C(v2);
  v4 = v3;
  static Published.subscript.setter();
  sub_100D6022C(v5);
  sub_100D62474(v5);
  sub_100D62474(v2);
}

void JSSettingsItem.accessoryItem.setter(unint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  sub_100D6245C(a1);
  static Published.subscript.setter();
  sub_100D6022C(v4);
  sub_100D62474(v4);
  sub_100D62474(a1);
}

void (*JSSettingsItem.accessoryItem.modify(void *a1))(unint64_t *a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = a1[1];
  return sub_100D60834;
}

void sub_100D60834(unint64_t *a1, char a2)
{
  v4 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1[2];
  if (a2)
  {
    sub_100D6245C(v4);
    static Published.subscript.getter();

    v6 = a1[1];
    swift_getKeyPath();
    swift_getKeyPath();
    a1[1] = v4;
    v7 = v5;
    sub_100D6245C(v4);
    static Published.subscript.setter();
    sub_100D6022C(v6);
    sub_100D62474(v6);
    sub_100D62474(v4);
    v4 = *a1;
  }

  else
  {
    static Published.subscript.getter();

    v8 = a1[1];
    swift_getKeyPath();
    swift_getKeyPath();
    a1[1] = v4;
    v9 = v5;
    sub_100D6245C(v4);
    static Published.subscript.setter();
    sub_100D6022C(v8);
    sub_100D62474(v8);
  }

  sub_100D62474(v4);
}

uint64_t JSSettingsItem.$accessoryItem.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011C0700);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011C06F8);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*JSSettingsItem.$accessoryItem.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_1011C0700);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__accessoryItem;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_1011C06F8);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36374;
}

uint64_t JSSettingsItem.description.getter()
{
  v1 = v0;
  v2._countAndFlagsBits = 60;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 8250;
  v9._object = 0xE200000000000000;
  String.append(_:)(v9);
  v24 = v1;
  _print_unlocked<A, B>(_:_:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v25)
  {
    v10 = v1;
    v11 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v11 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      v24 = 59;
      v12 = v25;
      String.append(_:)(*&v10);

      v13._countAndFlagsBits = 34;
      v13._object = 0xE100000000000000;
      String.append(_:)(v13);
      v14._countAndFlagsBits = 0x20656C746974203BLL;
      v14._object = 0xEB0000000022203DLL;
      String.append(_:)(v14);
    }
  }

  v15 = 0x74754F6E676973;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v24 <= 1u && !v24)
  {
    goto LABEL_17;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v16 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v23 > 1u)
    {
      if (v23 == 2)
      {
        v15 = 0x6174654472657375;
        v17 = 0xEB00000000736C69;
      }

      else
      {
        v15 = 0x6552776F6C6C6F66;
        v17 = 0xEE00737473657571;
      }
    }

    else
    {
      v17 = 0xE700000000000000;
      if (!v23)
      {
        v15 = 0x746C7561666564;
      }
    }

    v18._countAndFlagsBits = v15;
    v18._object = v17;
    String.append(_:)(v18);

    v19._countAndFlagsBits = 34;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    v20._countAndFlagsBits = 0x3D20646E696B203BLL;
    v20._object = 0xEA00000000002220;
    String.append(_:)(v20);
LABEL_17:
  }

  v21._countAndFlagsBits = 62;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  return 0;
}

uint64_t JSSettingsItem.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem_isUpdatingFromJS;
  v7 = v3[OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem_isUpdatingFromJS];
  v17[0] = a1;
  v17[1] = a2;
  sub_1000189C0(a3, v18);
  if (v18[3])
  {
    sub_1000189C0(v18, v16);

    if (swift_dynamicCast())
    {
      if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0x65546C6961746564 && a2 == 0xEA00000000007478 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_40;
      }

      if (a1 == 1684957547 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        _s11MusicJSCore14JSSettingsItemC4KindO8rawValueAESgSS_tcfC_0(v15);
        goto LABEL_40;
      }
    }

    type metadata accessor for JSArtwork();
    if (swift_dynamicCast())
    {
      if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_40;
      }
    }

    type metadata accessor for JSSettingsItemText();
    if (swift_dynamicCast())
    {
      if (a1 == 0x726F737365636361 && a2 == 0xED00006D65744979 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v9 = v15._countAndFlagsBits;
        static Published.subscript.getter();

        swift_getKeyPath();
        swift_getKeyPath();
        v3;
        v10 = v9;
        static Published.subscript.setter();
        sub_100D6022C(v14);
        sub_100D62474(v14);

        sub_10000959C(v16);
LABEL_42:
        sub_1000095E8(v18, &unk_101183F30);

        goto LABEL_43;
      }
    }

    type metadata accessor for JSSettingsItemToggle();
    if (swift_dynamicCast())
    {
      if (a1 == 0x726F737365636361 && a2 == 0xED00006D65744979 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v13 = v15._countAndFlagsBits;
        static Published.subscript.getter();

        swift_getKeyPath();
        swift_getKeyPath();
        v3;
        v11 = v13;
        static Published.subscript.setter();
        sub_100D6022C(v14);
        sub_100D62474(v14);

LABEL_41:
        sub_10000959C(v16);
        goto LABEL_42;
      }
    }

    if (swift_dynamicCast() && (a1 == 0xD000000000000018 && 0x8000000100E72210 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0x7276656843736168 && a2 == 0xEA00000000006E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0x4274696445736168 && a2 == 0xED00006E6F747475 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0x6174656C65447369 && a2 == 0xEB00000000656C62 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || swift_dynamicCast() && (a1 == 0xD000000000000013 && 0x8000000100E721F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
LABEL_40:
      swift_getKeyPath();
      swift_getKeyPath();
      v12 = v3;
      static Published.subscript.setter();
      goto LABEL_41;
    }

    sub_10000959C(v16);
  }

  else
  {
  }

  result = sub_1000095E8(v17, &unk_1011C0D90);
LABEL_43:
  v3[v6] = v7;
  return result;
}

id JSSettingsItem.init(type:)(uint64_t a1)
{
  v48 = a1;
  v2 = sub_10010FC20(&qword_1011C06F8);
  v46 = *(v2 - 8);
  v47 = v2;
  __chkstk_darwin(v2);
  v45 = &v35 - v3;
  v4 = sub_10010FC20(&unk_1011A4640);
  v43 = *(v4 - 8);
  v44 = v4;
  __chkstk_darwin(v4);
  v42 = &v35 - v5;
  v6 = sub_10010FC20(&unk_101189E60);
  v40 = *(v6 - 8);
  v41 = v6;
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  v9 = sub_10010FC20(&qword_1011BF550);
  v38 = *(v9 - 8);
  v39 = v9;
  __chkstk_darwin(v9);
  v37 = &v35 - v10;
  v36 = sub_10010FC20(&qword_1011C06B0);
  v11 = *(v36 - 8);
  __chkstk_darwin(v36);
  v13 = &v35 - v12;
  v14 = sub_10010FC20(&qword_1011928F0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v35 - v16;
  v18 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__title;
  v49 = 0;
  v50 = 0;
  sub_10010FC20(&qword_1011815E0);
  Published.init(initialValue:)();
  v19 = *(v15 + 32);
  v19(v1 + v18, v17, v14);
  v20 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__detailText;
  v49 = 0;
  v50 = 0;
  Published.init(initialValue:)();
  v19(v1 + v20, v17, v14);
  v21 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__kind;
  LOBYTE(v49) = 0;
  Published.init(initialValue:)();
  (*(v11 + 32))(v1 + v21, v13, v36);
  v22 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__artwork;
  v49 = 0;
  sub_10010FC20(&qword_1011BF540);
  v23 = v37;
  Published.init(initialValue:)();
  (*(v38 + 32))(v1 + v22, v23, v39);
  v24 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__usesApplicationTintColor;
  LOBYTE(v49) = 1;
  Published.init(initialValue:)();
  v25 = v41;
  v26 = *(v40 + 32);
  v26(v1 + v24, v8, v41);
  v27 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__hasChevron;
  LOBYTE(v49) = 0;
  Published.init(initialValue:)();
  v26(v1 + v27, v8, v25);
  v28 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__hasEditButton;
  LOBYTE(v49) = 0;
  Published.init(initialValue:)();
  v26(v1 + v28, v8, v25);
  v29 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__isDeletable;
  LOBYTE(v49) = 0;
  Published.init(initialValue:)();
  v26(v1 + v29, v8, v25);
  v30 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__followRequestsCount;
  v49 = 0;
  LOBYTE(v50) = 1;
  sub_10010FC20(&qword_101184A70);
  v31 = v42;
  Published.init(initialValue:)();
  (*(v43 + 32))(v1 + v30, v31, v44);
  v32 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__accessoryItem;
  v49 = 0xF000000000000007;
  sub_10010FC20(&qword_1011C06E8);
  v33 = v45;
  Published.init(initialValue:)();
  (*(v46 + 32))(v1 + v32, v33, v47);
  *(v1 + OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem_isUpdatingFromJS) = 0;
  return JSObject.init(type:)(v48);
}

uint64_t sub_100D61E80()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__title;
  v2 = sub_10010FC20(&qword_1011928F0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__detailText, v2);
  v4 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__kind;
  v5 = sub_10010FC20(&qword_1011C06B0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__artwork;
  v7 = sub_10010FC20(&qword_1011BF550);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__usesApplicationTintColor;
  v9 = sub_10010FC20(&unk_101189E60);
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v8, v9);
  v10(v0 + OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__hasChevron, v9);
  v10(v0 + OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__hasEditButton, v9);
  v10(v0 + OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__isDeletable, v9);
  v11 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__followRequestsCount;
  v12 = sub_10010FC20(&unk_1011A4640);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__accessoryItem;
  v14 = sub_10010FC20(&qword_1011C06F8);
  v15 = *(*(v14 - 8) + 8);

  return v15(v0 + v13, v14);
}

id JSSettingsItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSSettingsItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100D623D0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for JSSettingsItem();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

unint64_t _s11MusicJSCore14JSSettingsItemC4KindO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010FA360, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100D6245C(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return (result & 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

void sub_100D62474(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }
}

uint64_t type metadata accessor for JSSettingsItem()
{
  result = qword_1011C0740;
  if (!qword_1011C0740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100D624DC()
{
  result = qword_1011C0710;
  if (!qword_1011C0710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011C0710);
  }

  return result;
}

void sub_100D62538()
{
  sub_1000054CC(319, &qword_101187B08, &qword_1011815E0);
  if (v0 <= 0x3F)
  {
    sub_100005390(319, &qword_1011C0750);
    if (v1 <= 0x3F)
    {
      sub_1000054CC(319, &qword_1011BF5D0, &qword_1011BF540);
      if (v2 <= 0x3F)
      {
        sub_100005390(319, &qword_10119ED80);
        if (v3 <= 0x3F)
        {
          sub_1000054CC(319, &qword_101184A68, &qword_101184A70);
          if (v4 <= 0x3F)
          {
            sub_1000054CC(319, &qword_1011C0758, &qword_1011C06E8);
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t JSBiographyViewModel.items.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100D6286C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100D628EC(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t JSBiographyViewModel.items.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

void (*JSBiographyViewModel.items.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_10012FF30;
}

uint64_t JSBiographyViewModel.$items.getter()
{
  swift_beginAccess();
  sub_10010FC20(&qword_1011C0780);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t JSBiographyViewModel.$items.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011C0788);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011C0780);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*JSBiographyViewModel.$items.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_1011C0788);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore20JSBiographyViewModel__items;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_1011C0780);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36374;
}

uint64_t JSBiographyViewModel.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = a1;
  v10[1] = a2;
  sub_1000189C0(a3, v11);
  if (v11[3])
  {
    sub_1000189C0(v11, v9);

    sub_10010FC20(&qword_1011C0770);
    if (swift_dynamicCast())
    {
      if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v7 = v3;
        static Published.subscript.setter();
        sub_10000959C(v9);
        sub_1000095E8(v11, &unk_101183F30);
      }
    }

    sub_10000959C(v9);
  }

  else
  {
  }

  JSViewModel.updateProperty(_:value:)(a1, a2, a3);
  return sub_1000095E8(v10, &unk_1011C0D90);
}

id JSBiographyViewModel.__allocating_init(type:)(uint64_t a1)
{
  v3 = sub_10010FC20(&qword_1011C0780);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v12 - v5;
  v7 = objc_allocWithZone(v1);
  v8 = OBJC_IVAR____TtC11MusicJSCore20JSBiographyViewModel__items;
  v12[1] = _swiftEmptyArrayStorage;
  sub_10010FC20(&qword_1011C0770);
  Published.init(initialValue:)();
  (*(v4 + 32))(&v7[v8], v6, v3);
  v9 = &v7[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName];
  *v9 = 0;
  *(v9 + 1) = 0xE000000000000000;
  *&v7[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData] = xmmword_100EFDB60;
  v10 = &v7[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID];
  *v10 = 0;
  *(v10 + 1) = 0;
  return JSObject.init(type:)(a1);
}

id JSBiographyViewModel.init(type:)(uint64_t a1)
{
  v3 = sub_10010FC20(&qword_1011C0780);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC11MusicJSCore20JSBiographyViewModel__items;
  v11[1] = _swiftEmptyArrayStorage;
  sub_10010FC20(&qword_1011C0770);
  Published.init(initialValue:)();
  (*(v4 + 32))(v1 + v7, v6, v3);
  v8 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_100EFDB60;
  v9 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v9 = 0;
  v9[1] = 0;
  return JSObject.init(type:)(a1);
}

uint64_t sub_100D631DC()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore20JSBiographyViewModel__items;
  v2 = sub_10010FC20(&qword_1011C0780);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id JSBiographyViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSBiographyViewModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for JSBiographyViewModel()
{
  result = qword_1011C07B8;
  if (!qword_1011C07B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100D6334C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for JSBiographyViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void sub_100D63394()
{
  sub_100D63424();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100D63424()
{
  if (!qword_1011C07C8)
  {
    sub_1001109D0(&qword_1011C0770);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1011C07C8);
    }
  }
}

uint64_t JSViewModelKind.innerViewModel.getter(unint64_t a1)
{
  v1 = a1;
  switch((a1 >> 58) & 0x3C | (a1 >> 1) & 3)
  {
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x1FuLL:
    case 0x20uLL:
    case 0x21uLL:
    case 0x22uLL:
    case 0x23uLL:
    case 0x24uLL:
    case 0x25uLL:
    case 0x26uLL:
    case 0x27uLL:
    case 0x28uLL:
    case 0x29uLL:
    case 0x2AuLL:
    case 0x2BuLL:
    case 0x2CuLL:
      v1 = a1 & 0xFFFFFFFFFFFFFF9;
      break;
    default:
      break;
  }

  v2 = (a1 & 0xFFFFFFFFFFFFFF9);
  return v1;
}

uint64_t JSViewModelKind.hash(into:)(uint64_t a1, unint64_t a2)
{
  v2 = (a2 >> 58) & 0x3C | (a2 >> 1) & 3;
  switch((a2 >> 58) & 0x3C | (a2 >> 1) & 3)
  {
    case 1uLL:
      v2 = 1;
      break;
    case 2uLL:
      v2 = 2;
      break;
    case 3uLL:
      v2 = 3;
      break;
    case 4uLL:
      v2 = 4;
      break;
    case 5uLL:
      v2 = 5;
      break;
    case 6uLL:
      v2 = 6;
      break;
    case 7uLL:
      v2 = 7;
      break;
    case 8uLL:
      v2 = 8;
      break;
    case 9uLL:
      v2 = 9;
      break;
    case 0xAuLL:
      v2 = 10;
      break;
    case 0xBuLL:
      v2 = 11;
      break;
    case 0xCuLL:
      v2 = 12;
      break;
    case 0xDuLL:
      v2 = 13;
      break;
    case 0xEuLL:
      v2 = 14;
      break;
    case 0xFuLL:
      v2 = 15;
      break;
    case 0x10uLL:
      v2 = 16;
      break;
    case 0x11uLL:
      v2 = 17;
      break;
    case 0x12uLL:
      v2 = 18;
      break;
    case 0x13uLL:
      v2 = 19;
      break;
    case 0x14uLL:
      v2 = 20;
      break;
    case 0x15uLL:
      v2 = 21;
      break;
    case 0x16uLL:
      v2 = 22;
      break;
    case 0x17uLL:
      v2 = 23;
      break;
    case 0x18uLL:
      v2 = 24;
      break;
    case 0x19uLL:
      v2 = 25;
      break;
    case 0x1AuLL:
      v2 = 26;
      break;
    case 0x1BuLL:
      v2 = 27;
      break;
    case 0x1CuLL:
      v2 = 28;
      break;
    case 0x1DuLL:
      v2 = 29;
      break;
    case 0x1EuLL:
      v2 = 30;
      break;
    case 0x1FuLL:
      v2 = 31;
      break;
    case 0x20uLL:
      v2 = 32;
      break;
    case 0x21uLL:
      v2 = 33;
      break;
    case 0x22uLL:
      v2 = 34;
      break;
    case 0x23uLL:
      v2 = 35;
      break;
    case 0x24uLL:
      v2 = 36;
      break;
    case 0x25uLL:
      v2 = 37;
      break;
    case 0x26uLL:
      v2 = 38;
      break;
    case 0x27uLL:
      v2 = 39;
      break;
    case 0x28uLL:
      v2 = 40;
      break;
    case 0x29uLL:
      v2 = 41;
      break;
    case 0x2AuLL:
      v2 = 42;
      break;
    case 0x2BuLL:
      v2 = 43;
      break;
    case 0x2CuLL:
      v2 = 44;
      break;
    default:
      break;
  }

  Hasher._combine(_:)(v2);
  return NSObject.hash(into:)();
}

Swift::Int JSViewModelKind.hashValue.getter(unint64_t a1)
{
  Hasher.init(_seed:)();
  JSViewModelKind.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

Swift::Int sub_100D63858()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  JSViewModelKind.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_100D638A8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  JSViewModelKind.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t _s11MusicJSCore15JSViewModelKindO21__derived_enum_equalsySbAC_ACtFZ_0(unint64_t a1, unint64_t a2)
{
  v2 = (a2 >> 58) & 0x3C | (a2 >> 1) & 3;
  switch((a1 >> 58) & 0x3C | (a1 >> 1) & 3)
  {
    case 1uLL:
      if (v2 != 1)
      {
        return 0;
      }

      type metadata accessor for JSShelf();
      return static NSObject.== infix(_:_:)() & 1;
    case 2uLL:
      if (v2 != 2)
      {
        return 0;
      }

      type metadata accessor for JSBrick();
      return static NSObject.== infix(_:_:)() & 1;
    case 3uLL:
      if (v2 != 3)
      {
        return 0;
      }

      type metadata accessor for JSFlowcase();
      return static NSObject.== infix(_:_:)() & 1;
    case 4uLL:
      if (v2 != 4)
      {
        return 0;
      }

      type metadata accessor for JSGrid();
      return static NSObject.== infix(_:_:)() & 1;
    case 5uLL:
      if (v2 != 5)
      {
        return 0;
      }

      type metadata accessor for JSLiveRadioCase();
      return static NSObject.== infix(_:_:)() & 1;
    case 6uLL:
      if (v2 != 6)
      {
        return 0;
      }

      type metadata accessor for JSVerticalStack();
      return static NSObject.== infix(_:_:)() & 1;
    case 7uLL:
      if (v2 != 7)
      {
        return 0;
      }

      type metadata accessor for JSMenu();
      return static NSObject.== infix(_:_:)() & 1;
    case 8uLL:
      if (v2 != 8)
      {
        return 0;
      }

      type metadata accessor for JSSettingsViewModel();
      return static NSObject.== infix(_:_:)() & 1;
    case 9uLL:
      if (v2 != 9)
      {
        return 0;
      }

      type metadata accessor for JSMessageViewModel();
      return static NSObject.== infix(_:_:)() & 1;
    case 0xAuLL:
      if (v2 != 10)
      {
        return 0;
      }

      type metadata accessor for JSOnboardingViewModel();
      return static NSObject.== infix(_:_:)() & 1;
    case 0xBuLL:
      if (v2 != 11)
      {
        return 0;
      }

      type metadata accessor for JSStaticImageViewModel();
      return static NSObject.== infix(_:_:)() & 1;
    case 0xCuLL:
      if (v2 != 12)
      {
        return 0;
      }

      type metadata accessor for JSParagraphViewModel();
      return static NSObject.== infix(_:_:)() & 1;
    case 0xDuLL:
      if (v2 != 13)
      {
        return 0;
      }

      type metadata accessor for JSMultiChoiceViewModel();
      return static NSObject.== infix(_:_:)() & 1;
    case 0xEuLL:
      if (v2 != 14)
      {
        return 0;
      }

      type metadata accessor for JSToggleSelectorViewModel();
      return static NSObject.== infix(_:_:)() & 1;
    case 0xFuLL:
      if (v2 != 15)
      {
        return 0;
      }

      type metadata accessor for JSItemizedTextListViewModel();
      return static NSObject.== infix(_:_:)() & 1;
    case 0x10uLL:
      if (v2 != 16)
      {
        return 0;
      }

      type metadata accessor for JSGroupedTextListViewModel();
      return static NSObject.== infix(_:_:)() & 1;
    case 0x11uLL:
      if (v2 != 17)
      {
        return 0;
      }

      type metadata accessor for JSGroupedItemizedTextListViewModel();
      return static NSObject.== infix(_:_:)() & 1;
    case 0x12uLL:
      if (v2 != 18)
      {
        return 0;
      }

      type metadata accessor for JSBadgingViewModel();
      return static NSObject.== infix(_:_:)() & 1;
    case 0x13uLL:
      if (v2 != 19)
      {
        return 0;
      }

      type metadata accessor for JSMusicVideoViewModel();
      return static NSObject.== infix(_:_:)() & 1;
    case 0x14uLL:
      if (v2 != 20)
      {
        return 0;
      }

      type metadata accessor for JSTVShowEpisodeDetail();
      return static NSObject.== infix(_:_:)() & 1;
    case 0x15uLL:
      if (v2 != 21)
      {
        return 0;
      }

      type metadata accessor for JSTVShowPlayBarViewModel();
      return static NSObject.== infix(_:_:)() & 1;
    case 0x16uLL:
      if (v2 != 22)
      {
        return 0;
      }

      type metadata accessor for JSSearchLandingUpsell();
      return static NSObject.== infix(_:_:)() & 1;
    case 0x17uLL:
      if (v2 != 23)
      {
        return 0;
      }

      type metadata accessor for JSSocialLightIdentityCreator();
      return static NSObject.== infix(_:_:)() & 1;
    case 0x18uLL:
      if (v2 != 24)
      {
        return 0;
      }

      type metadata accessor for JSSocialOnboardingFriendsFinder();
      return static NSObject.== infix(_:_:)() & 1;
    case 0x19uLL:
      if (v2 != 25)
      {
        return 0;
      }

      type metadata accessor for JSSocialProfileVerticalStack();
      return static NSObject.== infix(_:_:)() & 1;
    case 0x1AuLL:
      if (v2 != 26)
      {
        return 0;
      }

      type metadata accessor for JSSocialOnboardingVerticalStack();
      return static NSObject.== infix(_:_:)() & 1;
    case 0x1BuLL:
      if (v2 != 27)
      {
        return 0;
      }

      type metadata accessor for JSSocialOnboardingWelcomeViewModel();
      return static NSObject.== infix(_:_:)() & 1;
    case 0x1CuLL:
      if (v2 != 28)
      {
        return 0;
      }

      type metadata accessor for JSSocialProfileCollection();
      return static NSObject.== infix(_:_:)() & 1;
    case 0x1DuLL:
      if (v2 != 29)
      {
        return 0;
      }

      type metadata accessor for JSSocialProfileEditor();
      return static NSObject.== infix(_:_:)() & 1;
    case 0x1EuLL:
      if (v2 != 30)
      {
        return 0;
      }

      type metadata accessor for JSSongDetail();
      return static NSObject.== infix(_:_:)() & 1;
    case 0x1FuLL:
      if (v2 != 31)
      {
        return 0;
      }

      type metadata accessor for JSSplitWidgetViewModel();
      return static NSObject.== infix(_:_:)() & 1;
    case 0x20uLL:
      if (v2 != 32)
      {
        return 0;
      }

      type metadata accessor for JSInlineSocialUpsell();
      return static NSObject.== infix(_:_:)() & 1;
    case 0x21uLL:
      if (v2 != 33)
      {
        return 0;
      }

      type metadata accessor for JSCircleImage();
      return static NSObject.== infix(_:_:)() & 1;
    case 0x22uLL:
      if (v2 != 34)
      {
        return 0;
      }

      type metadata accessor for JSInlinePopup();
      return static NSObject.== infix(_:_:)() & 1;
    case 0x23uLL:
      if (v2 != 35)
      {
        return 0;
      }

      type metadata accessor for JSAlertViewModel();
      return static NSObject.== infix(_:_:)() & 1;
    case 0x24uLL:
      if (v2 != 36)
      {
        return 0;
      }

      type metadata accessor for JSOrderedPlaylistSelector();
      return static NSObject.== infix(_:_:)() & 1;
    case 0x25uLL:
      if (v2 != 37)
      {
        return 0;
      }

      type metadata accessor for JSPrivacyLinkViewModel();
      return static NSObject.== infix(_:_:)() & 1;
    case 0x26uLL:
      if (v2 != 38)
      {
        return 0;
      }

      type metadata accessor for JSBiographyViewModel();
      return static NSObject.== infix(_:_:)() & 1;
    case 0x27uLL:
      if (v2 != 39)
      {
        return 0;
      }

      type metadata accessor for JSSearchLandingViewModel();
      return static NSObject.== infix(_:_:)() & 1;
    case 0x28uLL:
      if (v2 != 40)
      {
        return 0;
      }

      type metadata accessor for JSInterstellarViewModel();
      return static NSObject.== infix(_:_:)() & 1;
    case 0x29uLL:
      if (v2 != 41)
      {
        return 0;
      }

      type metadata accessor for JSListenNowMusicSiriUpsell();
      return static NSObject.== infix(_:_:)() & 1;
    case 0x2AuLL:
      if (v2 != 42)
      {
        return 0;
      }

      type metadata accessor for JSUserNotificationAuthorizationViewModel();
      return static NSObject.== infix(_:_:)() & 1;
    case 0x2BuLL:
      if (v2 != 43)
      {
        return 0;
      }

      type metadata accessor for JSWhatsNewFeaturedItemViewModel();
      return static NSObject.== infix(_:_:)() & 1;
    case 0x2CuLL:
      if (v2 != 44)
      {
        return 0;
      }

      type metadata accessor for JSWhatsNewViewModel();
      return static NSObject.== infix(_:_:)() & 1;
    default:
      if (v2)
      {
        return 0;
      }

      type metadata accessor for JSContainerDetail();
      return static NSObject.== infix(_:_:)() & 1;
  }
}

unint64_t _s11MusicJSCore15JSViewModelKindO5valueACSgyp_tcfC_0(uint64_t a1)
{
  type metadata accessor for JSContainerDetail();
  if (!swift_dynamicCast())
  {
    type metadata accessor for JSShelf();
    if (swift_dynamicCast())
    {
      v2 = v9 | 2;
      goto LABEL_19;
    }

    type metadata accessor for JSBrick();
    if (swift_dynamicCast())
    {
      v2 = v9 | 4;
      goto LABEL_19;
    }

    type metadata accessor for JSFlowcase();
    if (swift_dynamicCast())
    {
      v2 = v9 | 6;
      goto LABEL_19;
    }

    type metadata accessor for JSGrid();
    if (swift_dynamicCast())
    {
      v2 = v9 | 0x1000000000000000;
      goto LABEL_19;
    }

    type metadata accessor for JSLiveRadioCase();
    if (swift_dynamicCast())
    {
      v3 = v9;
      v4 = 0x1000000000000002;
LABEL_13:
      v2 = v3 | v4;
      goto LABEL_19;
    }

    type metadata accessor for JSSocialLightIdentityCreator();
    if (swift_dynamicCast())
    {
      v5 = v9;
      v6 = 0x5000000000000002;
      goto LABEL_16;
    }

    type metadata accessor for JSSocialOnboardingFriendsFinder();
    if (swift_dynamicCast())
    {
      v2 = v9 | 0x6000000000000000;
      goto LABEL_19;
    }

    type metadata accessor for JSSocialProfileVerticalStack();
    if (swift_dynamicCast())
    {
      v3 = v9;
      v4 = 0x6000000000000002;
      goto LABEL_13;
    }

    type metadata accessor for JSSocialOnboardingVerticalStack();
    if (swift_dynamicCast())
    {
      v3 = v9;
      v8 = 0x6000000000000002;
    }

    else
    {
      type metadata accessor for JSSocialProfileCollection();
      if (swift_dynamicCast())
      {
        v2 = v9 | 0x7000000000000000;
        goto LABEL_19;
      }

      type metadata accessor for JSSocialProfileEditor();
      if (swift_dynamicCast())
      {
        v3 = v9;
        v4 = 0x7000000000000002;
        goto LABEL_13;
      }

      type metadata accessor for JSInlineSocialUpsell();
      if (swift_dynamicCast())
      {
        v2 = v9 | 0x8000000000000000;
        goto LABEL_19;
      }

      type metadata accessor for JSCircleImage();
      if (swift_dynamicCast())
      {
        v3 = v9;
        v4 = 0x8000000000000002;
        goto LABEL_13;
      }

      type metadata accessor for JSVerticalStack();
      if (swift_dynamicCast())
      {
        v3 = v9;
        v8 = 0x1000000000000002;
      }

      else
      {
        type metadata accessor for JSMenu();
        if (swift_dynamicCast())
        {
          v5 = v9;
          v6 = 0x1000000000000002;
          goto LABEL_16;
        }

        type metadata accessor for JSSettingsViewModel();
        if (swift_dynamicCast())
        {
          v2 = v9 | 0x2000000000000000;
          goto LABEL_19;
        }

        type metadata accessor for JSMessageViewModel();
        if (swift_dynamicCast())
        {
          v3 = v9;
          v4 = 0x2000000000000002;
          goto LABEL_13;
        }

        type metadata accessor for JSOnboardingViewModel();
        if (swift_dynamicCast())
        {
          v3 = v9;
          v8 = 0x2000000000000002;
        }

        else
        {
          type metadata accessor for JSStaticImageViewModel();
          if (swift_dynamicCast())
          {
            v5 = v9;
            v6 = 0x2000000000000002;
            goto LABEL_16;
          }

          type metadata accessor for JSParagraphViewModel();
          if (swift_dynamicCast())
          {
            v2 = v9 | 0x3000000000000000;
            goto LABEL_19;
          }

          type metadata accessor for JSMultiChoiceViewModel();
          if (swift_dynamicCast())
          {
            v3 = v9;
            v4 = 0x3000000000000002;
            goto LABEL_13;
          }

          type metadata accessor for JSToggleSelectorViewModel();
          if (swift_dynamicCast())
          {
            v3 = v9;
            v8 = 0x3000000000000002;
          }

          else
          {
            type metadata accessor for JSItemizedTextListViewModel();
            if (swift_dynamicCast())
            {
              v5 = v9;
              v6 = 0x3000000000000002;
              goto LABEL_16;
            }

            type metadata accessor for JSGroupedTextListViewModel();
            if (swift_dynamicCast())
            {
              v2 = v9 | 0x4000000000000000;
              goto LABEL_19;
            }

            type metadata accessor for JSGroupedItemizedTextListViewModel();
            if (swift_dynamicCast())
            {
              v3 = v9;
              v4 = 0x4000000000000002;
              goto LABEL_13;
            }

            type metadata accessor for JSBadgingViewModel();
            if (swift_dynamicCast())
            {
              v3 = v9;
              v8 = 0x4000000000000002;
            }

            else
            {
              type metadata accessor for JSMusicVideoViewModel();
              if (swift_dynamicCast())
              {
                v5 = v9;
                v6 = 0x4000000000000002;
                goto LABEL_16;
              }

              type metadata accessor for JSTVShowEpisodeDetail();
              if (swift_dynamicCast())
              {
                v3 = v9;
                v4 = 0x5000000000000000;
                goto LABEL_13;
              }

              type metadata accessor for JSTVShowPlayBarViewModel();
              if (swift_dynamicCast())
              {
                v3 = v9;
                v4 = 0x5000000000000002;
                goto LABEL_13;
              }

              type metadata accessor for JSInlinePopup();
              if (swift_dynamicCast())
              {
                v3 = v9;
                v8 = 0x8000000000000002;
              }

              else
              {
                type metadata accessor for JSAlertViewModel();
                if (swift_dynamicCast())
                {
                  v5 = v9;
                  v6 = 0x8000000000000002;
                  goto LABEL_16;
                }

                type metadata accessor for JSOrderedPlaylistSelector();
                if (swift_dynamicCast())
                {
                  v3 = v9;
                  v4 = 0x9000000000000000;
                  goto LABEL_13;
                }

                type metadata accessor for JSPrivacyLinkViewModel();
                if (swift_dynamicCast())
                {
                  v3 = v9;
                  v4 = 0x9000000000000002;
                  goto LABEL_13;
                }

                type metadata accessor for JSSocialOnboardingWelcomeViewModel();
                if (swift_dynamicCast())
                {
                  v5 = v9;
                  v6 = 0x6000000000000002;
                  goto LABEL_16;
                }

                type metadata accessor for JSBiographyViewModel();
                if (swift_dynamicCast())
                {
                  v3 = v9;
                  v8 = 0x9000000000000002;
                }

                else
                {
                  type metadata accessor for JSSplitWidgetViewModel();
                  if (swift_dynamicCast())
                  {
                    v5 = v9;
                    v6 = 0x7000000000000002;
                    goto LABEL_16;
                  }

                  type metadata accessor for JSSongDetail();
                  if (swift_dynamicCast())
                  {
                    v3 = v9;
                    v8 = 0x7000000000000002;
                  }

                  else
                  {
                    type metadata accessor for JSSearchLandingViewModel();
                    if (swift_dynamicCast())
                    {
                      v5 = v9;
                      v6 = 0x9000000000000002;
                      goto LABEL_16;
                    }

                    type metadata accessor for JSSearchLandingUpsell();
                    if (swift_dynamicCast())
                    {
                      v3 = v9;
                      v8 = 0x5000000000000002;
                    }

                    else
                    {
                      type metadata accessor for JSListenNowMusicSiriUpsell();
                      if (swift_dynamicCast())
                      {
                        v3 = v9;
                        v4 = 0xA000000000000002;
                        goto LABEL_13;
                      }

                      type metadata accessor for JSInterstellarViewModel();
                      if (swift_dynamicCast())
                      {
                        v3 = v9;
                        v4 = 0xA000000000000000;
                        goto LABEL_13;
                      }

                      type metadata accessor for JSUserNotificationAuthorizationViewModel();
                      if (!swift_dynamicCast())
                      {
                        type metadata accessor for JSWhatsNewFeaturedItemViewModel();
                        if (!swift_dynamicCast())
                        {
                          type metadata accessor for JSWhatsNewViewModel();
                          if (!swift_dynamicCast())
                          {
                            v2 = 0xF000000000000007;
                            goto LABEL_19;
                          }

                          v3 = v9;
                          v4 = 0xB000000000000000;
                          goto LABEL_13;
                        }

                        v5 = v9;
                        v6 = 0xA000000000000002;
LABEL_16:
                        v2 = v5 | v6 | 4;
                        goto LABEL_19;
                      }

                      v3 = v9;
                      v8 = 0xA000000000000002;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v4 = v8 + 2;
    goto LABEL_13;
  }

  v2 = v9;
LABEL_19:
  sub_10000959C(a1);
  return v2;
}

unint64_t sub_100D6479C()
{
  result = qword_1011C07D0;
  if (!qword_1011C07D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011C07D0);
  }

  return result;
}

uint64_t sub_100D64804(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x54 && *(a1 + 8))
  {
    return (*a1 + 84);
  }

  v3 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 1) & 0xFFFFFFBF | ((*a1 & 1) << 6)) ^ 0x7F;
  if (v3 >= 0x53)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100D64860(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x53)
  {
    *result = a2 - 84;
    if (a3 >= 0x54)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x54)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 6) & 1 | (2 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *JSDateFormatter.dateFormattingOptions.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore15JSDateFormatter_dateFormattingOptions;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

Swift::Void __swiftcall JSDateFormatter.invokeMethod(_:arguments:)(Swift::String _, Swift::OpaquePointer arguments)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  if (*(arguments._rawValue + 2))
  {
    sub_10000DD18(arguments._rawValue + 32, &v28);
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v26[0] = countAndFlagsBits;
  v26[1] = object;
  v27[0] = v28;
  v27[1] = v29;
  if (*(&v29 + 1))
  {
    sub_1000189C0(v27, v25);

    if (swift_dynamicCast())
    {
      v5 = v23;
      v4 = v24;
      if (countAndFlagsBits == 0x6D726F4665746164 && object == 0xEA00000000007461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        Array.subscript.getter(&type metadata for Any + 8, v21);
        if (v22)
        {
          v6 = swift_dynamicCast();
          if (v6)
          {
            v7 = v19;
          }

          else
          {
            v7 = 0;
          }

          if (v6)
          {
            v8 = v20;
          }

          else
          {
            v8 = 0;
          }
        }

        else
        {
          sub_1000095E8(v21, &unk_101183F30);
          v7 = 0;
          v8 = 0;
        }

        Array.subscript.getter(&type metadata for Any + 8, v21);
        if (v22)
        {
          v9 = swift_dynamicCast();
          if (v9)
          {
            v10 = v19;
          }

          else
          {
            v10 = 0;
          }

          if (v9)
          {
            v11 = v20;
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          sub_1000095E8(v21, &unk_101183F30);
          v10 = 0;
          v11 = 0;
        }

        sub_100D64D34(v5, v4, v7, v8, v10, v11);

        sub_10000959C(v25);
        sub_1000095E8(v27, &unk_101183F30);

        return;
      }
    }

    sub_10000959C(v25);
  }

  else
  {
  }

  if (qword_1011BDBB8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000060E4(v12, qword_1011C07E8);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    *v15 = 136315650;
    *(v15 + 4) = sub_1000105AC(0xD00000000000001ALL, 0x8000000100E72320, v25);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_1000105AC(countAndFlagsBits, object, v25);
    *(v15 + 22) = 2080;
    v16 = Array.description.getter();
    v18 = sub_1000105AC(v16, v17, v25);

    *(v15 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s Unexpected method: '%s' '%s'", v15, 0x20u);
    swift_arrayDestroy();
  }

  sub_1000095E8(v26, &unk_1011C0D90);
}

void sub_100D64D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  v12 = *(type metadata accessor for Locale() - 8);
  __chkstk_darwin();
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a6)
  {
    v38 = v13;

    if (a4)
    {

      Locale.init(identifier:)();
    }

    else
    {
      static Locale.current.getter();
    }

    v20 = objc_opt_self();
    v21 = String._bridgeToObjectiveC()();
    isa = Locale._bridgeToObjectiveC()().super.isa;
    v23 = [v20 dateFormatFromTemplate:v21 options:0 locale:isa];

    if (v23)
    {
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    v37 = a5;
    if (qword_1011BDB08 != -1)
    {
      swift_once();
    }

    v27 = static JSBridge.shared;
    sub_10010FC20(&qword_101181530);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_100EBE260;
    *(v28 + 56) = ObjectType;
    *(v28 + 32) = v7;
    if (v26)
    {
      *(&v40 + 1) = &type metadata for String;
      *&v39 = v24;
      *(&v39 + 1) = v26;
      sub_100016270(&v39, (v28 + 64));
      v29 = v7;
    }

    else
    {
      v39 = 0u;
      v40 = 0u;
      v30 = objc_allocWithZone(NSNull);
      v31 = v7;
      v32 = [v30 init];
      *(v28 + 88) = sub_100009F78(0, &qword_1011C1830);
      *(v28 + 64) = v32;
      if (*(&v40 + 1))
      {
        sub_1000095E8(&v39, &unk_101183F30);
      }
    }

    *(v28 + 120) = &type metadata for String;
    *(v28 + 96) = v37;
    *(v28 + 104) = a6;
    sub_100009F78(0, &qword_101182960);
    v33 = swift_allocObject();
    *(v33 + 16) = v28;
    *(v33 + 24) = _swiftEmptyArrayStorage;
    *(v33 + 32) = 0xD00000000000001ELL;
    *(v33 + 40) = 0x8000000100E72570;
    *(v33 + 48) = v7;
    *(v33 + 56) = v27;
    *(v33 + 64) = 0;
    v34 = v7;
    v35 = v27;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100CE6890, v33);

    (*(v12 + 8))(v15, v38);
  }

  else
  {
    if (qword_1011BDBB8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000060E4(v16, qword_1011C07E8);
    v38 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v38, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v39 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1000105AC(0xD00000000000002FLL, 0x8000000100E72540, &v39);
      _os_log_impl(&_mh_execute_header, v38, v17, "Completion handler required for '%s''", v18, 0xCu);
      sub_10000959C(v19);
    }

    else
    {
      v36 = v38;
    }
  }
}

uint64_t JSDateFormatter.updateProperty(_:value:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v21[0] = a1;
  v21[1] = a2;
  sub_1000189C0(a3, v22);
  if (v22[3])
  {
    sub_1000189C0(v22, v20);
    type metadata accessor for JSDateFormattingOptions();

    if (swift_dynamicCast())
    {
      if (a1 == 0xD000000000000015 && 0x8000000100E72360 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v7 = OBJC_IVAR____TtC11MusicJSCore15JSDateFormatter_dateFormattingOptions;
        swift_beginAccess();
        v8 = *(v3 + v7);
        *(v3 + v7) = v19;

        sub_10000959C(v20);
        sub_1000095E8(v22, &unk_101183F30);
      }
    }

    sub_10000959C(v20);
  }

  else
  {
  }

  if (qword_1011BDBB8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000060E4(v10, qword_1011C07E8);
  sub_1000189C0(a3, v20);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v13 = 136315650;
    *(v13 + 4) = sub_1000105AC(0xD000000000000018, 0x8000000100E72340, &v19);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_1000105AC(a1, a2, &v19);
    *(v13 + 22) = 2080;
    sub_1000189C0(v20, v18);
    sub_10010FC20(&unk_101183F30);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    sub_1000095E8(v20, &unk_101183F30);
    v17 = sub_1000105AC(v14, v16, &v19);

    *(v13 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s Unexpected property name or value: '%s' '%s'", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000095E8(v20, &unk_101183F30);
  }

  return sub_1000095E8(v21, &unk_1011C0D90);
}

void JSDateFormatter.transformedValue(from:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = OBJC_IVAR____TtC11MusicJSCore15JSDateFormatter_dateFormattingOptions;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (!v6)
  {
    if (qword_1011BDBB8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000060E4(v15, qword_1011C07E8);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v30[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1000105AC(0xD000000000000017, 0x8000000100E72380, v30);
      _os_log_impl(&_mh_execute_header, v16, v17, "%s Date formatting options should be assigned upon initialization", v18, 0xCu);
      sub_10000959C(v19);
    }

    goto LABEL_15;
  }

  sub_10000DD18(a1, v30);
  type metadata accessor for JSDateDescriptor();
  v7 = v6;
  if (!swift_dynamicCast())
  {
    type metadata accessor for JSDateRangeDescriptor();
    if (!swift_dynamicCast())
    {
      if (qword_1011BDBB8 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_1000060E4(v20, qword_1011C07E8);
      sub_10000DD18(a1, v29);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v23 = 136315394;
        *(v23 + 4) = sub_1000105AC(0xD000000000000017, 0x8000000100E72380, &v28);
        *(v23 + 12) = 2080;
        sub_10000954C(v29, v29[3]);
        swift_getDynamicType();
        v24 = _typeName(_:qualified:)();
        v26 = v25;
        sub_10000959C(v29);
        v27 = sub_1000105AC(v24, v26, &v28);

        *(v23 + 14) = v27;
        _os_log_impl(&_mh_execute_header, v21, v22, "%s Unhandled raw value type method/arguments: '%s'", v23, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_10000959C(v29);
      }

      *a2 = 0u;
      *(a2 + 16) = 0u;
      goto LABEL_22;
    }

    v8 = v29[0];
    if ((*(v29[0] + OBJC_IVAR____TtC11MusicJSCore21JSDateRangeDescriptor_startTimestamp + 8) & 1) == 0 && (*(v29[0] + OBJC_IVAR____TtC11MusicJSCore21JSDateRangeDescriptor_endTimestamp + 8) & 1) == 0)
    {
      v10 = *(v29[0] + OBJC_IVAR____TtC11MusicJSCore21JSDateRangeDescriptor_endTimestamp);
      v9 = *(v29[0] + OBJC_IVAR____TtC11MusicJSCore21JSDateRangeDescriptor_startTimestamp);
      v11 = 0;
      goto LABEL_5;
    }

    goto LABEL_14;
  }

  v8 = v29[0];
  if (*(v29[0] + OBJC_IVAR____TtC11MusicJSCore16JSDateDescriptor_timestamp + 8))
  {
LABEL_14:

    sub_10000959C(v30);
LABEL_15:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v9 = *(v29[0] + OBJC_IVAR____TtC11MusicJSCore16JSDateDescriptor_timestamp);
  v10 = 0;
  v11 = 1;
LABEL_5:
  v12 = sub_100D66B78(v10, v11, v7, v9);
  v14 = v13;
  *(a2 + 24) = &type metadata for String;

  *a2 = v12;
  *(a2 + 8) = v14;
LABEL_22:
  sub_10000959C(v30);
}

uint64_t sub_100D65980(uint64_t a1, char a2, double a3)
{
  v5 = (v3 + OBJC_IVAR____TtC11MusicJSCore23JSDateFormattingOptions_template);
  result = swift_beginAccess();
  v7 = v5[1];
  if (v7)
  {
    v8 = *v5;
    v9 = (v3 + OBJC_IVAR____TtC11MusicJSCore23JSDateFormattingOptions_languageTag);
    swift_beginAccess();
    v11 = *v9;
    v10 = v9[1];
    v12 = OBJC_IVAR____TtC11MusicJSCore23JSDateFormattingOptions_dateStyle;
    swift_beginAccess();
    v13 = *(v3 + v12);
    v14 = v13 == 5;
    if (v13 == 5)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(v3 + v12);
    }

    v16 = OBJC_IVAR____TtC11MusicJSCore23JSDateFormattingOptions_timeStyle;
    swift_beginAccess();
    v17 = *(v3 + v16);
    v18 = v17 == 5;
    if (v17 == 5)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(v3 + v16);
    }

    v20 = OBJC_IVAR____TtC11MusicJSCore23JSDateFormattingOptions_uppercasedDateComponentSymbols;
    swift_beginAccess();
    v21 = *(v3 + v20);
    type metadata accessor for JSDateFormatter.CacheCoordinator.Key();
    v22 = swift_allocObject();
    *(v22 + 16) = a3;
    *(v22 + 56) = v11;
    *(v22 + 64) = v10;
    *(v22 + 40) = v8;
    *(v22 + 48) = v7;
    *(v22 + 72) = v15;
    *(v22 + 80) = v14;
    *(v22 + 88) = v19;
    *(v22 + 96) = v18;
    *(v22 + 24) = a1;
    *(v22 + 32) = a2 & 1;
    *(v22 + 104) = v21;

    return v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100D65B20()
{
  result = [objc_allocWithZone(NSCache) init];
  qword_1011C07D8 = result;
  return result;
}

void sub_100D65B54(uint64_t a1)
{
  v2 = v1;
  String.hash(into:)();
  Hasher._combine(_:)((*(v2 + 32) & 1) == 0);
  if (*(v2 + 64))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v2 + 80) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = *(v2 + 72);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v4);
  }

  if (*(v2 + 96) != 1)
  {
    v6 = *(v2 + 88);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v6);
    v5 = *(v2 + 104);
    if (v5)
    {
      goto LABEL_9;
    }

LABEL_13:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(0);
  v5 = *(v2 + 104);
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_9:
  Hasher._combine(_:)(1u);

  sub_100D66438(a1, v5);
}

id sub_100D65D68()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(NSDateIntervalFormatter) init];
  if (*(v1 + 64))
  {

    Locale.init(identifier:)();
    isa = Locale._bridgeToObjectiveC()().super.isa;
    (*(v3 + 8))(v5, v2);
    [v6 setLocale:isa];
  }

  if ((*(v1 + 80) & 1) == 0)
  {
    [v6 setDateStyle:*(v1 + 72)];
  }

  if ((*(v1 + 96) & 1) == 0)
  {
    [v6 setTimeStyle:*(v1 + 88)];
  }

  [v6 setBoundaryStyle:2];
  v8 = String._bridgeToObjectiveC()();
  [v6 setDateTemplate:v8];

  return v6;
}

id sub_100D65F08()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(NSDateFormatter) init];
  if (*(v1 + 64))
  {

    Locale.init(identifier:)();
    isa = Locale._bridgeToObjectiveC()().super.isa;
    (*(v3 + 8))(v5, v2);
    [v6 setLocale:isa];
  }

  if ((*(v1 + 80) & 1) == 0)
  {
    [v6 setDateStyle:*(v1 + 72)];
  }

  if ((*(v1 + 96) & 1) == 0)
  {
    [v6 setTimeStyle:*(v1 + 88)];
  }

  v8 = String._bridgeToObjectiveC()();
  [v6 setLocalizedDateFormatFromTemplate:v8];

  return v6;
}

uint64_t sub_100D66094()
{

  return swift_deallocClassInstance();
}

Swift::Int sub_100D660DC()
{
  Hasher.init(_seed:)();
  sub_100D65B54(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100D66144()
{
  Hasher.init(_seed:)();
  sub_100D65B54(v1);
  return Hasher._finalize()();
}

uint64_t sub_100D66184(uint64_t a1)
{
  v3 = type metadata accessor for Mirror();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v10[3] = a1;
  v10[0] = v7;

  Mirror.init(reflecting:)();
  v8 = Mirror.description.getter();
  (*(v4 + 8))(v6, v3);
  return v8;
}

id JSDateFormatter.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11MusicJSCore15JSDateFormatter_dateFormattingOptions] = 0;
  return JSObject.init(type:)(a1);
}

uint64_t sub_100D66348()
{
  sub_100009F78(0, &qword_101191A90);
  result = OS_os_log.init(musicCategory:)();
  qword_1011C07E0 = result;
  return result;
}

uint64_t sub_100D663AC()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_1011C07E8);
  sub_1000060E4(v0, qword_1011C07E8);
  if (qword_1011BDBB0 != -1)
  {
    swift_once();
  }

  v1 = qword_1011C07E0;
  return Logger.init(_:)();
}

void sub_100D66438(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = a2 + 32;
    do
    {
      ++v4;
      String.hash(into:)();

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_100D6650C(char **a1)
{
  v3 = type metadata accessor for Date();
  v59 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v58 - v6;
  if (qword_1011BDBA8 != -1)
  {
LABEL_39:
    swift_once();
  }

  v8 = [qword_1011C07D8 objectForKey:{a1, v58}];
  if (!v8)
  {
    if (a1[4])
    {
      v9 = sub_100D65F08();
    }

    else
    {
      v9 = sub_100D65D68();
    }

    v8 = v9;
    [qword_1011C07D8 setObject:v9 forKey:a1];
  }

  v60 = v7;
  v61 = v3;
  Date.init(timeIntervalSince1970:)();
  objc_opt_self();
  v63 = swift_dynamicCastObjCClass();
  if (!v63)
  {
    objc_opt_self();
    v1 = v8;
    v42 = swift_dynamicCastObjCClass();
    if (!v42 || (a1[4] & 1) != 0)
    {
      goto LABEL_42;
    }

    v43 = v42;
    v44 = v60;
    isa = Date._bridgeToObjectiveC()().super.isa;
    Date.init(timeIntervalSince1970:)();
    v46 = Date._bridgeToObjectiveC()().super.isa;
    v47 = *(v59 + 8);
    v48 = v5;
    v49 = v61;
    v47(v48, v61);
    v50 = [v43 stringFromDate:isa toDate:v46];

    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47(v44, v49);
    return v41;
  }

  v58 = v8;
  v3 = a1[13];
  v5 = v63;
  if (!v3 || (v7 = *(v3 + 16)) == 0)
  {
LABEL_33:
    v38 = v60;
    v39 = Date._bridgeToObjectiveC()().super.isa;
    v40 = [v5 stringFromDate:v39];

    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v59 + 8))(v38, v61);
    return v41;
  }

  v10 = 0;
  v11 = v3 + 32;
  v65 = *(v3 + 16);
  v66 = v3;
  v64 = v3 + 32;
  while (1)
  {
    if (v10 >= *(v3 + 16))
    {
      __break(1u);
      goto LABEL_39;
    }

    if (!*(v11 + v10))
    {
      break;
    }

    if (*(v11 + v10) != 1)
    {
      goto LABEL_13;
    }

    v13 = [v5 shortMonthSymbols];
    if (!v13)
    {
      goto LABEL_41;
    }

    v14 = v13;
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v1 = *(v15 + 16);
    if (!v1)
    {

      a1 = &selRef_setShortMonthSymbols_;
      goto LABEL_12;
    }

    v67 = _swiftEmptyArrayStorage;
    sub_100015C04(0, v1, 0);
    v16 = v67;
    sub_100009838();
    v17 = (v15 + 40);
    do
    {
      v18 = *v17;
      v68 = *(v17 - 1);
      v69 = v18;
      v19 = StringProtocol.localizedUppercase.getter();
      v67 = v16;
      v22 = v16[2];
      v21 = v16[3];
      if (v22 >= v21 >> 1)
      {
        v24 = v19;
        v25 = v20;
        sub_100015C04((v21 > 1), v22 + 1, 1);
        v20 = v25;
        v19 = v24;
        v5 = v63;
        v16 = v67;
      }

      v16[2] = v22 + 1;
      v23 = &v16[2 * v22];
      v23[4] = v19;
      v23[5] = v20;
      v17 += 2;
      --v1;
    }

    while (v1);

    a1 = &selRef_setShortMonthSymbols_;
LABEL_11:
    v7 = v65;
    v3 = v66;
    v11 = v64;
LABEL_12:
    v12 = Array._bridgeToObjectiveC()().super.isa;

    [v5 *a1];

LABEL_13:
    if (++v10 == v7)
    {
      goto LABEL_33;
    }
  }

  v26 = [v5 shortWeekdaySymbols];
  if (v26)
  {
    v27 = v26;
    v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v1 = *(v28 + 16);
    if (!v1)
    {

      a1 = &selRef_setShortWeekdaySymbols_;
      goto LABEL_12;
    }

    v67 = _swiftEmptyArrayStorage;
    sub_100015C04(0, v1, 0);
    v29 = v67;
    sub_100009838();
    v62 = v28;
    v30 = (v28 + 40);
    do
    {
      v31 = *v30;
      v68 = *(v30 - 1);
      v69 = v31;
      v32 = StringProtocol.localizedUppercase.getter();
      v34 = v33;
      v67 = v29;
      v36 = v29[2];
      v35 = v29[3];
      if (v36 >= v35 >> 1)
      {
        sub_100015C04((v35 > 1), v36 + 1, 1);
        v29 = v67;
      }

      v29[2] = v36 + 1;
      v37 = &v29[2 * v36];
      v37[4] = v32;
      v37[5] = v34;
      v30 += 2;
      --v1;
    }

    while (v1);

    a1 = &selRef_setShortWeekdaySymbols_;
    v5 = v63;
    goto LABEL_11;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  v68 = 0;
  v69 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v68 = 0xD000000000000016;
  v69 = 0x8000000100E72520;
  v52 = [v1 description];
  v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v54;

  v56._countAndFlagsBits = v53;
  v56._object = v55;
  String.append(_:)(v56);

  v57._countAndFlagsBits = 39;
  v57._object = 0xE100000000000000;
  String.append(_:)(v57);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100D66B78(uint64_t a1, char a2, uint64_t a3, double a4)
{
  v8 = type metadata accessor for Mirror();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100D65980(a1, a2 & 1, a4);
  v13 = sub_100D6650C(v12);
  v14 = v13;
  v16 = v15;
  v17 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v17 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {
    if (qword_1011BDBB8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000060E4(v18, qword_1011C07E8);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v48[0] = v41;
      *v21 = 136315394;
      *(v21 + 4) = sub_1000105AC(0xD000000000000040, 0x8000000100E724A0, v48);
      *(v21 + 12) = 2080;
      v43 = type metadata accessor for JSDateFormatter.CacheCoordinator.Key();
      v42 = v12;

      Mirror.init(reflecting:)();
      LODWORD(v40) = v20;
      v22 = Mirror.description.getter();
      v39 = v19;
      v23 = v12;
      v25 = v24;
      (*(v9 + 8))(v11, v8);
      v26 = sub_1000105AC(v22, v25, v48);
      v12 = v23;

      *(v21 + 14) = v26;
      v27 = v39;
      _os_log_impl(&_mh_execute_header, v39, v40, "%s Empty formatted value for key: '%s'", v21, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  v28 = OBJC_IVAR____TtC11MusicJSCore23JSDateFormattingOptions_excludedPatterns;
  swift_beginAccess();
  v29 = *(a3 + v28);
  if (v29)
  {
    v40 = a3;
    v41 = v12;
    v30 = *(v29 + 16);

    if (v30)
    {
      sub_100009838();
      v31 = (v29 + 40);
      do
      {
        v32 = *(v31 - 1);
        v33 = *v31;
        v48[0] = v14;
        v48[1] = v16;
        v46 = v32;
        v47 = v33;
        v44 = 0;
        v45 = 0xE000000000000000;

        v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v35 = v34;

        v31 += 2;
        v16 = v35;
        --v30;
      }

      while (v30);
    }

    else
    {
      v35 = v16;
    }

    v16 = v35;
    a3 = v40;
  }

  v36 = a3 + OBJC_IVAR____TtC11MusicJSCore23JSDateFormattingOptions_stringFormat;
  swift_beginAccess();
  if (*(v36 + 8))
  {
    sub_10010FC20(&qword_101186688);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_100EBC6B0;
    *(v37 + 56) = &type metadata for String;
    *(v37 + 64) = sub_10001CDD0();
    *(v37 + 32) = v14;
    *(v37 + 40) = v16;

    v14 = String.init(format:_:)();
  }

  return v14;
}

unint64_t sub_100D67040()
{
  result = qword_1011C0900;
  if (!qword_1011C0900)
  {
    type metadata accessor for JSDateFormatter.CacheCoordinator.Key();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011C0900);
  }

  return result;
}

uint64_t sub_100D67098(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  if (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48))
  {
    v4 = a1;
    v5 = a2;
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2 = v5;
    v7 = v6;
    a1 = v4;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = *(a1 + 64);
  v9 = *(a2 + 64);
  if (v8)
  {
    if (!v9)
    {
      return 0;
    }

    if (*(a1 + 56) != *(a2 + 56) || v8 != v9)
    {
      v10 = a1;
      v11 = a2;
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v11;
      v13 = v12;
      a1 = v10;
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v14 = *(a2 + 80);
  if ((*(a1 + 80) & 1) == 0)
  {
    if (*(a1 + 72) != *(a2 + 72))
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }

LABEL_23:
    v14 = *(a2 + 96);
    if ((*(a1 + 96) & 1) == 0)
    {
      return (*(a1 + 88) == *(a2 + 88)) & ~v14;
    }

    return v14;
  }

  if (*(a2 + 80))
  {
    goto LABEL_23;
  }

  return v14;
}

uint64_t JSItemizedTextListItem.wantsTitleAsBadge.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_wantsTitleAsBadge;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t JSItemizedTextListItem.wantsTitleAsBadge.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_wantsTitleAsBadge;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t JSItemizedTextListItem.wantsLeadingLineBreak.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_wantsLeadingLineBreak;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t JSItemizedTextListItem.wantsLeadingLineBreak.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_wantsLeadingLineBreak;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t JSItemizedTextListItem.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[0] = a1;
  v13[1] = a2;
  sub_1000189C0(a3, v14);
  if (v14[3])
  {
    sub_1000189C0(v14, v12);

    if (swift_dynamicCast())
    {
      if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v6 = OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_title;
LABEL_7:
        v7 = (v3 + v6);
        swift_beginAccess();
        *v7 = v10;
        v7[1] = v11;

LABEL_20:
        sub_10000959C(v12);
        sub_1000095E8(v14, &unk_101183F30);
      }

      if (a1 == 1954047348 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v6 = OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_text;
        goto LABEL_7;
      }
    }

    if (swift_dynamicCast())
    {
      if (a1 == 0xD000000000000011 && 0x8000000100E72590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v8 = OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_wantsTitleAsBadge;
LABEL_19:
        swift_beginAccess();
        *(v3 + v8) = v10;
        goto LABEL_20;
      }

      if (a1 == 0xD000000000000015 && 0x8000000100E725B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v8 = OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_wantsLeadingLineBreak;
        goto LABEL_19;
      }
    }

    sub_10000959C(v12);
  }

  else
  {
  }

  return sub_1000095E8(v13, &unk_1011C0D90);
}

id JSItemizedTextListItem.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_title];
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v3[OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_wantsTitleAsBadge] = 0;
  v5 = &v3[OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_text];
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v3[OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_wantsLeadingLineBreak] = 0;
  return JSObject.init(type:)(a1);
}

id JSItemizedTextListItem.init(type:)(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_title);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_wantsTitleAsBadge) = 0;
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_text);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_wantsLeadingLineBreak) = 0;
  return JSObject.init(type:)(a1);
}

uint64_t sub_100D677BC()
{
}

id JSItemizedTextListItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSItemizedTextListItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100D678D4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for JSItemizedTextListItem();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t JSItemizedTextListViewModel.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11MusicJSCore27JSItemizedTextListViewModel_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*JSItemizedTextListViewModel.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore27JSItemizedTextListViewModel_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_100CC4F94;
}

uint64_t JSItemizedTextListViewModel.title.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicJSCore27JSItemizedTextListViewModel_title);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t JSItemizedTextListViewModel.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MusicJSCore27JSItemizedTextListViewModel_title);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t JSItemizedTextListViewModel.items.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100D67C48@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100D67CC8(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t JSItemizedTextListViewModel.items.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

void (*JSItemizedTextListViewModel.items.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_10012FF30;
}

uint64_t JSItemizedTextListViewModel.$items.getter()
{
  swift_beginAccess();
  sub_10010FC20(&qword_1011C0970);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t JSItemizedTextListViewModel.$items.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011C0978);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011C0970);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*JSItemizedTextListViewModel.$items.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_1011C0978);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore27JSItemizedTextListViewModel__items;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_1011C0970);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36374;
}

uint64_t JSItemizedTextListViewModel.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[0] = a1;
  v19[1] = a2;
  sub_1000189C0(a3, v20);
  if (v20[3])
  {
    sub_1000189C0(v20, v18);

    if (swift_dynamicCast())
    {
      if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v7 = &v3[OBJC_IVAR____TtC11MusicJSCore27JSItemizedTextListViewModel_title];
        swift_beginAccess();
        *v7 = v16;
        *(v7 + 1) = v17;

        v8 = &v3[OBJC_IVAR____TtC11MusicJSCore27JSItemizedTextListViewModel_delegate];
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v9 = *(v8 + 1);
          ObjectType = swift_getObjectType();
          (*(v9 + 8))(v3, ObjectType, v9);
LABEL_16:
          swift_unknownObjectRelease();
          goto LABEL_17;
        }

        goto LABEL_17;
      }
    }

    sub_10010FC20(&qword_1011C0960);
    if (swift_dynamicCast())
    {
      if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v11 = v3;
        static Published.subscript.setter();
        v12 = &v11[OBJC_IVAR____TtC11MusicJSCore27JSItemizedTextListViewModel_delegate];
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v13 = *(v12 + 1);
          v14 = swift_getObjectType();
          (*(v13 + 16))(v11, v14, v13);
          goto LABEL_16;
        }

LABEL_17:
        sub_10000959C(v18);
        sub_1000095E8(v20, &unk_101183F30);
      }
    }

    sub_10000959C(v18);
  }

  else
  {
  }

  JSViewModel.updateProperty(_:value:)(a1, a2, a3);
  return sub_1000095E8(v19, &unk_1011C0D90);
}

id JSItemizedTextListViewModel.init(type:)(uint64_t a1)
{
  v3 = sub_10010FC20(&qword_1011C0970);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - v5;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore27JSItemizedTextListViewModel_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v7 = (v1 + OBJC_IVAR____TtC11MusicJSCore27JSItemizedTextListViewModel_title);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = OBJC_IVAR____TtC11MusicJSCore27JSItemizedTextListViewModel__items;
  v12[1] = _swiftEmptyArrayStorage;
  sub_10010FC20(&qword_1011C0960);
  Published.init(initialValue:)();
  (*(v4 + 32))(v1 + v8, v6, v3);
  v9 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_100EFDB60;
  v10 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v10 = 0;
  v10[1] = 0;
  return JSObject.init(type:)(a1);
}

uint64_t sub_100D68618()
{
  sub_1000D8F2C(v0 + OBJC_IVAR____TtC11MusicJSCore27JSItemizedTextListViewModel_delegate);

  v1 = OBJC_IVAR____TtC11MusicJSCore27JSItemizedTextListViewModel__items;
  v2 = sub_10010FC20(&qword_1011C0970);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id JSItemizedTextListViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSItemizedTextListViewModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for JSItemizedTextListViewModel()
{
  result = qword_1011C09A8;
  if (!qword_1011C09A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100D687D0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for JSItemizedTextListViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void sub_100D68818()
{
  sub_100D688BC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100D688BC()
{
  if (!qword_1011C09B8)
  {
    sub_1001109D0(&qword_1011C0960);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1011C09B8);
    }
  }
}

MusicJSCore::JSArtwork::Treatment_optional __swiftcall JSArtwork.Treatment.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010FAC40, v2);

  if (v3 == 1)
  {
    v4.value = MusicJSCore_JSArtwork_Treatment_circle;
  }

  else
  {
    v4.value = MusicJSCore_JSArtwork_Treatment_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t JSArtwork.Treatment.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x656C63726963;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_100D689A8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656C63726963;
  }

  else
  {
    v3 = 0x746C7561666564;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x656C63726963;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100D68A4C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100D68ACC()
{
  String.hash(into:)();
}

Swift::Int sub_100D68B38()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100D68BB4@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1010FAC40, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_100D68C14(uint64_t *a1@<X8>)
{
  v2 = 0x746C7561666564;
  if (*v1)
  {
    v2 = 0x656C63726963;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t JSArtwork.artworkDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11MusicJSCore9JSArtwork_artworkDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*JSArtwork.artworkDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_artworkDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_100CC4F94;
}

uint64_t sub_100D68DF4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_storeLookupDictionary;
  swift_beginAccess();
  *(v3 + v4) = v2;

  v5 = v3 + OBJC_IVAR____TtC11MusicJSCore9JSArtwork_artworkDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(v3, ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

void *JSArtwork.cropStyle.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_cropStyle;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100D68F08(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_cropStyle;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4)
  {
    if (a1)
    {
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;
      if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
      {

        return;
      }

      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v11 = a1;

      if (v10)
      {

        return;
      }
    }
  }

  else
  {
    if (!a1)
    {
      return;
    }

    v12 = a1;
  }

  v13 = v1 + OBJC_IVAR____TtC11MusicJSCore9JSArtwork_artworkDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v13 + 8);
    ObjectType = swift_getObjectType();
    (*(v14 + 8))(v1, ObjectType, v14);
    swift_unknownObjectRelease();
  }
}

uint64_t JSArtwork.treatment.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_treatment;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100D690B0(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_treatment;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (a1)
  {
    v5 = 0x656C63726963;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (a1)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4)
  {
    v7 = 0x656C63726963;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (v4)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      v12 = v1 + OBJC_IVAR____TtC11MusicJSCore9JSArtwork_artworkDelegate;
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v13 = *(v12 + 8);
        ObjectType = swift_getObjectType();
        (*(v13 + 8))(v1, ObjectType, v13);
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

id JSArtwork.artworkCatalog(defaultCropStyle:)(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_storeLookupDictionary;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!v4 || !*(v4 + 16))
  {
    return 0;
  }

  sub_1003647E0(v5);
  v6 = objc_allocWithZone(ICStoreArtworkInfo);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v8 = [v6 initWithArtworkResponseDictionary:isa];

  if (!v8)
  {

    return 0;
  }

  v9 = [objc_opt_self() tokenWithImageArtworkInfo:v8];
  v10 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_cropStyle;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (v11)
  {
    v12 = *(v1 + v10);
  }

  else
  {
    v12 = a1;
    v11 = 0;
  }

  v14 = v11;
  [v9 setCropStyle:v12];

  v15 = objc_opt_self();
  v16 = v9;
  result = [v15 sharedStoreArtworkDataSource];
  if (result)
  {
    v17 = result;

    v18 = objc_allocWithZone(MPArtworkCatalog);
    v19 = v16;
    v20 = [v18 initWithToken:v19 dataSource:v17];

    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t JSArtwork.artwork.getter@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_1011C09E0);
  __chkstk_darwin();
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = v22 - v5;
  v7 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork____lazy_storage___artwork;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &qword_1011C09E0);
  v8 = sub_10010FC20(&unk_101188920);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return sub_1005535F8(v6, a1);
  }

  sub_1000095E8(v6, &qword_1011C09E0);
  v10 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_storeLookupDictionary;
  swift_beginAccess();
  if (!*(v1 + v10))
  {
    goto LABEL_7;
  }

  v11 = objc_opt_self();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v23[0] = 0;
  v13 = [v11 dataWithJSONObject:isa options:0 error:v23];

  v14 = v23[0];
  if (!v13)
  {
    v20 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();

LABEL_7:
    v21 = type metadata accessor for Artwork();
    (*(*(v21 - 8) + 56))(a1, 1, 1, v21);
    goto LABEL_8;
  }

  v22[0] = v1;
  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v18 = type metadata accessor for Artwork();
  sub_100D6A18C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_10002C064(v15, v17);

  (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
  v1 = v22[0];
LABEL_8:
  sub_1000089F8(a1, v4, &unk_101188920);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_100D697D0(v4, v1 + v7);
  return swift_endAccess();
}

uint64_t sub_100D697D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011C09E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t JSArtwork.artwork.setter(uint64_t a1)
{
  sub_10010FC20(&qword_1011C09E0);
  __chkstk_darwin();
  v4 = &v8 - v3;
  sub_1005535F8(a1, &v8 - v3);
  v5 = sub_10010FC20(&unk_101188920);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork____lazy_storage___artwork;
  swift_beginAccess();
  sub_100D697D0(v4, v1 + v6);
  return swift_endAccess();
}

void (*JSArtwork.artwork.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = *(*(sub_10010FC20(&qword_1011C09E0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v4[7] = v6;
  v7 = sub_10010FC20(&unk_101188920);
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v8 + 64));
  }

  v4[10] = v9;
  JSArtwork.artwork.getter(v9);
  return sub_100D69A70;
}

void sub_100D69A70(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*(*a1 + 72) + 56);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 56);
  v6 = *(*a1 + 64);
  if (a2)
  {
    v7 = v2[6];
    sub_1000089F8(v2[10], v2[7], &unk_101188920);
    (*v3)(v5, 0, 1, v6);
    v8 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork____lazy_storage___artwork;
    swift_beginAccess();
    sub_100D697D0(v5, v7 + v8);
    swift_endAccess();
    sub_1000095E8(v4, &unk_101188920);
  }

  else
  {
    v9 = v2[6];
    sub_1005535F8(v2[10], v2[7]);
    (*v3)(v5, 0, 1, v6);
    v10 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork____lazy_storage___artwork;
    swift_beginAccess();
    sub_100D697D0(v5, v9 + v10);
    swift_endAccess();
  }

  free(v4);
  free(v5);

  free(v2);
}

uint64_t JSArtwork.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[0] = a1;
  v18[1] = a2;
  sub_1000089F8(a3, v19, &unk_101183F30);
  if (v19[3])
  {
    sub_1000089F8(v19, v17, &unk_101183F30);

    sub_10010FC20(&qword_101197BD0);
    if (swift_dynamicCast())
    {
      if (a1 == 0x616E6F6974636964 && a2 == 0xEA00000000007972 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v6 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_storeLookupDictionary;
        swift_beginAccess();
        *(v3 + v6) = v16;

        v7 = v3 + OBJC_IVAR____TtC11MusicJSCore9JSArtwork_artworkDelegate;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v8 = *(v7 + 8);
          ObjectType = swift_getObjectType();
          (*(v8 + 8))(v3, ObjectType, v8);
          swift_unknownObjectRelease();
        }

        goto LABEL_15;
      }
    }

    if (swift_dynamicCast())
    {
      if (a1 == 0x6C797453706F7263 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v10 = String._bridgeToObjectiveC()();

        sub_100D68F08(v10);
LABEL_15:
        sub_10000959C(v17);
        sub_1000095E8(v19, &unk_101183F30);
      }

      if (a1 == 0x6E656D7461657274 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v12 = _findStringSwitchCase(cases:string:)(&off_1010FAC40, v15);

        if (v12 <= 1)
        {
          v13 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_treatment;
          swift_beginAccess();
          v14 = *(v3 + v13);
          *(v3 + v13) = v12;
          sub_100D690B0(v14);
        }

        goto LABEL_15;
      }
    }

    sub_10000959C(v17);
  }

  else
  {
  }

  return sub_1000095E8(v18, &unk_1011C0D90);
}

id JSArtwork.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11MusicJSCore9JSArtwork_artworkDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC11MusicJSCore9JSArtwork_storeLookupDictionary] = 0;
  *&v3[OBJC_IVAR____TtC11MusicJSCore9JSArtwork_cropStyle] = 0;
  v3[OBJC_IVAR____TtC11MusicJSCore9JSArtwork_treatment] = 0;
  v4 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork____lazy_storage___artwork;
  v5 = sub_10010FC20(&unk_101188920);
  (*(*(v5 - 8) + 56))(&v3[v4], 1, 1, v5);
  return JSObject.init(type:)(a1);
}

id JSArtwork.init(type:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11MusicJSCore9JSArtwork_artworkDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC11MusicJSCore9JSArtwork_storeLookupDictionary) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore9JSArtwork_cropStyle) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore9JSArtwork_treatment) = 0;
  v3 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork____lazy_storage___artwork;
  v4 = sub_10010FC20(&unk_101188920);
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);

  return JSObject.init(type:)(a1);
}

uint64_t sub_100D6A094()
{
  sub_1000D8F2C(v0 + OBJC_IVAR____TtC11MusicJSCore9JSArtwork_artworkDelegate);

  return sub_1000095E8(v0 + OBJC_IVAR____TtC11MusicJSCore9JSArtwork____lazy_storage___artwork, &qword_1011C09E0);
}

unint64_t sub_100D6A18C()
{
  result = qword_1011C09F0;
  if (!qword_1011C09F0)
  {
    type metadata accessor for Artwork();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011C09F0);
  }

  return result;
}

unint64_t sub_100D6A1E8()
{
  result = qword_1011C09F8;
  if (!qword_1011C09F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011C09F8);
  }

  return result;
}

uint64_t type metadata accessor for JSArtwork()
{
  result = qword_1011C0A28;
  if (!qword_1011C0A28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100D6A290()
{
  sub_100D6A340();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100D6A340()
{
  if (!qword_1011C0A38)
  {
    sub_1001109D0(&unk_101188920);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1011C0A38);
    }
  }
}

void *JSCatalogPlaybackIntent.containerStoreItemMetadata.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore23JSCatalogPlaybackIntent_containerStoreItemMetadata;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *JSCatalogPlaybackIntent.containerIdentifierSet.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore23JSCatalogPlaybackIntent_containerIdentifierSet;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t JSCatalogPlaybackIntent.startItemIdentifier.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore23JSCatalogPlaybackIntent_startItemIdentifier;
  swift_beginAccess();
  return *(v0 + v1);
}

unint64_t JSCatalogPlaybackIntent.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32[0] = a1;
  v32[1] = a2;
  sub_1000189C0(a3, v33);
  if (!v33[3])
  {

LABEL_41:
    if (a1 == 0xD000000000000013 && 0x8000000100E726C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_1000189C0(a3, &v28);
      if (v29)
      {
        sub_100016270(&v28, &v30);
        sub_10000954C(&v30, v31);
        _bridgeAnythingToObjectiveC<A>(_:)();
        v22 = MPStoreItemMetadataInt64NormalizeStoreIDValue();
        swift_unknownObjectRelease();
        sub_10000959C(&v30);
        v23 = OBJC_IVAR____TtC11MusicJSCore23JSCatalogPlaybackIntent_startItemIdentifier;
        swift_beginAccess();
        *(v3 + v23) = v22;
      }

      else
      {
        sub_1000095E8(&v28, &unk_101183F30);
        v24 = OBJC_IVAR____TtC11MusicJSCore23JSCatalogPlaybackIntent_startItemIdentifier;
        swift_beginAccess();
        *(v3 + v24) = 0;
      }

      goto LABEL_47;
    }

    JSPlaybackIntent.updateProperty(_:value:)(a1, a2, a3);
    return sub_1000095E8(v32, &unk_1011C0D90);
  }

  sub_1000189C0(v33, &v30);

  sub_10010FC20(&unk_1011BE660);
  if (swift_dynamicCast())
  {
    if (a1 == 0xD000000000000020 && 0x8000000100E72740 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v7 = objc_allocWithZone(MPStoreItemMetadata);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v9 = [v7 initWithStorePlatformDictionary:isa];

      v10 = OBJC_IVAR____TtC11MusicJSCore23JSCatalogPlaybackIntent_containerStoreItemMetadata;
      swift_beginAccess();
      v11 = *(v3 + v10);
      *(v3 + v10) = v9;

      sub_10000959C(&v30);
LABEL_47:
      sub_1000095E8(v33, &unk_101183F30);
    }
  }

  type metadata accessor for JSIdentifierSet();
  if (swift_dynamicCast())
  {
    v12 = v3;
    if (a1 == 0xD000000000000016 && 0x8000000100E72720 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v13 = OBJC_IVAR____TtC11MusicJSCore23JSCatalogPlaybackIntent_containerIdentifierSet;
      swift_beginAccess();
      v14 = *(v12 + v13);
      *(v12 + v13) = v27;

LABEL_38:
      sub_10000959C(&v30);
      goto LABEL_47;
    }
  }

  sub_10010FC20(&qword_1011C0A68);
  if (!swift_dynamicCast())
  {
LABEL_33:
    sub_10010FC20(&qword_1011C0A70);
    if (swift_dynamicCast())
    {
      if (a1 == 0xD000000000000012 && 0x8000000100E726E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v21 = OBJC_IVAR____TtC11MusicJSCore23JSCatalogPlaybackIntent_itemIdentifiers;
        swift_beginAccess();
        *(v3 + v21) = v27;

        goto LABEL_38;
      }
    }

    sub_10000959C(&v30);
    goto LABEL_41;
  }

  result = 0xD00000000000001DLL;
  if (a1 != 0xD00000000000001DLL || 0x8000000100E72700 != a2)
  {
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((result & 1) == 0)
    {

      goto LABEL_33;
    }
  }

  if (v27 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v16 = result;
    v26 = v3;
    if (result)
    {
      goto LABEL_21;
    }

LABEL_51:

    v25 = OBJC_IVAR____TtC11MusicJSCore23JSCatalogPlaybackIntent_items;
    swift_beginAccess();
    *(v26 + v25) = _swiftEmptyArrayStorage;

    sub_10000959C(&v30);
    sub_1000095E8(v33, &unk_101183F30);
  }

  v16 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v26 = v3;
  if (!v16)
  {
    goto LABEL_51;
  }

LABEL_21:
  if (v16 >= 1)
  {
    for (i = 0; i != v16; ++i)
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v18 = sub_100D01D88(i, v27);
      }

      else
      {
        v18 = *(v27 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      *&v28 = v18;
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v19 = objc_allocWithZone(MPStoreItemMetadata);
        v20 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v19 initWithStorePlatformDictionary:v20];

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    goto LABEL_51;
  }

  __break(1u);
  return result;
}

id JSCatalogPlaybackIntent.init(type:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11MusicJSCore23JSCatalogPlaybackIntent_containerStoreItemMetadata) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore23JSCatalogPlaybackIntent_containerIdentifierSet) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore23JSCatalogPlaybackIntent_items) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore23JSCatalogPlaybackIntent_itemIdentifiers) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore23JSCatalogPlaybackIntent_startItemIdentifier) = 0;
  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore16JSPlaybackIntent_playActivityFeatureName);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore16JSPlaybackIntent_playActivityRecommendationData) = xmmword_100EFDB60;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore16JSPlaybackIntent_shuffleMode) = 1;
  return JSObject.init(type:)(a1);
}

uint64_t sub_100D6AC58()
{
}

id JSSubscriptionPurchaseSegue.__allocating_init(nativeBuyParameters:)()
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  v7 = 3;
  v1 = objc_allocWithZone(v0);
  v2 = JSSubscriptionPurchaseSegue.init(type:)(v5);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  static Published.subscript.setter();
  return v3;
}

uint64_t JSSubscriptionPurchaseSegue.buyParameters.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

double sub_100D6AE68@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_100D6AEE8(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_100D6AF84()
{
  swift_beginAccess();
  sub_10010FC20(&qword_1011928F0);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t sub_100D6AFFC(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101186D80);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2, v6);
  (v9)(v5, v8, v2);
  swift_beginAccess();
  sub_10010FC20(&qword_1011928F0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t JSSubscriptionPurchaseSegue.metricsOverlay.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100D6B244@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100D6B2C4(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t JSSubscriptionPurchaseSegue.metricsOverlay.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

void (*JSSubscriptionPurchaseSegue.metricsOverlay.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A360A8;
}

uint64_t JSSubscriptionPurchaseSegue.$metricsOverlay.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011C0AC0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011C0AB8);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSSubscriptionPurchaseSegue.$metricsOverlay.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_1011C0AC0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore27JSSubscriptionPurchaseSegue__metricsOverlay;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_1011C0AB8);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36370;
}

uint64_t JSSubscriptionPurchaseSegue.shouldShowLoadingIndicator.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100D6B784@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100D6B804(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t JSSubscriptionPurchaseSegue.shouldShowLoadingIndicator.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

void (*JSSubscriptionPurchaseSegue.shouldShowLoadingIndicator.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A36E1C;
}

uint64_t JSSubscriptionPurchaseSegue.$shouldShowLoadingIndicator.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101182130);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&unk_101189E60);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSSubscriptionPurchaseSegue.$shouldShowLoadingIndicator.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&unk_101182130);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore27JSSubscriptionPurchaseSegue__shouldShowLoadingIndicator;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&unk_101189E60);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

uint64_t JSSubscriptionPurchaseSegue.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = a1;
  v10[1] = a2;
  sub_1000189C0(a3, v11);
  if (v11[3])
  {
    sub_1000189C0(v11, v9);

    if (swift_dynamicCast())
    {
      if (a1 == 0x6D61726150797562 && a2 == 0xED00007372657465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }
    }

    sub_10010FC20(&qword_101197BD0);
    if (swift_dynamicCast())
    {
      if (a1 == 0x4F7363697274656DLL && a2 == 0xEE0079616C726576 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }
    }

    if (swift_dynamicCast() && (a1 == 0xD00000000000001ALL && 0x8000000100E727E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
LABEL_19:
      swift_getKeyPath();
      swift_getKeyPath();
      v7 = v3;
      static Published.subscript.setter();
      sub_10000959C(v9);
      sub_1000095E8(v11, &unk_101183F30);
    }

    sub_10000959C(v9);
  }

  else
  {
  }

  JSSegue.updateProperty(_:value:)(a1, a2, a3);
  return sub_1000095E8(v10, &unk_1011C0D90);
}

id JSSubscriptionPurchaseSegue.init(type:)(uint64_t a1)
{
  v18 = a1;
  v17 = sub_10010FC20(&unk_101189E60);
  v2 = *(v17 - 8);
  __chkstk_darwin(v17);
  v4 = &v17 - v3;
  v5 = sub_10010FC20(&qword_1011C0AB8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  v9 = sub_10010FC20(&qword_1011928F0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - v11;
  v13 = OBJC_IVAR____TtC11MusicJSCore27JSSubscriptionPurchaseSegue__buyParameters;
  v19 = 0;
  v20 = 0;
  sub_10010FC20(&qword_1011815E0);
  Published.init(initialValue:)();
  (*(v10 + 32))(v1 + v13, v12, v9);
  v14 = OBJC_IVAR____TtC11MusicJSCore27JSSubscriptionPurchaseSegue__metricsOverlay;
  v19 = 0;
  sub_10010FC20(&qword_1011C0AA8);
  Published.init(initialValue:)();
  (*(v6 + 32))(v1 + v14, v8, v5);
  v15 = OBJC_IVAR____TtC11MusicJSCore27JSSubscriptionPurchaseSegue__shouldShowLoadingIndicator;
  LOBYTE(v19) = 1;
  Published.init(initialValue:)();
  (*(v2 + 32))(v1 + v15, v4, v17);
  *(v1 + OBJC_IVAR____TtC11MusicJSCore7JSSegue_playbackIntent) = 0;
  return JSObject.init(type:)(v18);
}

uint64_t sub_100D6C200()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore27JSSubscriptionPurchaseSegue__buyParameters;
  v2 = sub_10010FC20(&qword_1011928F0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11MusicJSCore27JSSubscriptionPurchaseSegue__metricsOverlay;
  v4 = sub_10010FC20(&qword_1011C0AB8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC11MusicJSCore27JSSubscriptionPurchaseSegue__shouldShowLoadingIndicator;
  v6 = sub_10010FC20(&unk_101189E60);
  v7 = *(*(v6 - 8) + 8);

  return v7(v0 + v5, v6);
}

uint64_t type metadata accessor for JSSubscriptionPurchaseSegue()
{
  result = qword_1011C0AF8;
  if (!qword_1011C0AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100D6C470()
{
  sub_1000054CC(319, &qword_101187B08, &qword_1011815E0);
  if (v0 <= 0x3F)
  {
    sub_1000054CC(319, &qword_1011C0B08, &qword_1011C0AA8);
    if (v1 <= 0x3F)
    {
      sub_100008E30();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t JSBrickItem.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[0] = a1;
  v13[1] = a2;
  sub_1000189C0(a3, v14);
  if (v14[3])
  {
    sub_1000189C0(v14, v12);

    if (swift_dynamicCast())
    {
      if (a1 == 0x656E696C64616568 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v7 = OBJC_IVAR____TtC11MusicJSCore11JSBrickItem_headlineText;
LABEL_7:
        v8 = (v3 + v7);
        swift_beginAccess();
        *v8 = v10;
        v8[1] = v11;

        sub_10000959C(v12);
        sub_1000095E8(v14, &unk_101183F30);
      }

      if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v7 = OBJC_IVAR____TtC11MusicJSCore11JSBrickItem_titleText;
        goto LABEL_7;
      }

      if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v7 = OBJC_IVAR____TtC11MusicJSCore11JSBrickItem_subtitleText;
        goto LABEL_7;
      }
    }

    sub_10000959C(v12);
  }

  else
  {
  }

  JSMediaItem.updateProperty(_:value:)(a1, a2, a3);
  return sub_1000095E8(v13, &unk_1011C0D90);
}

id JSBrickItem.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore11JSBrickItem_headlineText];
  *v4 = 0;
  *(v4 + 1) = 0xE000000000000000;
  v5 = &v3[OBJC_IVAR____TtC11MusicJSCore11JSBrickItem_titleText];
  *v5 = 0;
  *(v5 + 1) = 0xE000000000000000;
  v6 = &v3[OBJC_IVAR____TtC11MusicJSCore11JSBrickItem_subtitleText];
  *v6 = 0;
  *(v6 + 1) = 0xE000000000000000;
  return JSMediaItem.init(type:)(a1);
}

id JSBrickItem.init(type:)(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSBrickItem_headlineText);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSBrickItem_titleText);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSBrickItem_subtitleText);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  return JSMediaItem.init(type:)(a1);
}

uint64_t sub_100D6C870()
{
}

uint64_t type metadata accessor for JSBrickItem()
{
  result = qword_1011C0B38;
  if (!qword_1011C0B38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t JSRedirectSegue.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore15JSRedirectSegue_url;
  swift_beginAccess();
  return sub_1000089F8(v1 + v3, a1, &qword_101183A20);
}

uint64_t JSRedirectSegue.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10010FC20(&qword_101183A20);
  __chkstk_darwin();
  v8 = v12 - v7 + 32;
  v13[0] = a1;
  v13[1] = a2;
  sub_1000089F8(a3, v14, &unk_101183F30);
  if (v14[3])
  {
    sub_1000089F8(v14, v12, &unk_101183F30);

    if (swift_dynamicCast())
    {
      if (a1 == 7107189 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        URL.init(string:)();

        v9 = OBJC_IVAR____TtC11MusicJSCore15JSRedirectSegue_url;
        swift_beginAccess();
        sub_10003CC08(v8, v3 + v9);
        swift_endAccess();
        sub_10000959C(v12);
        sub_1000095E8(v14, &unk_101183F30);
      }
    }

    sub_10000959C(v12);
  }

  else
  {
  }

  JSSegue.updateProperty(_:value:)(a1, a2, a3);
  return sub_1000095E8(v13, &unk_1011C0D90);
}

id JSRedirectSegue.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC11MusicJSCore15JSRedirectSegue_url;
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 56))(&v3[v4], 1, 1, v5);
  *&v3[OBJC_IVAR____TtC11MusicJSCore7JSSegue_playbackIntent] = 0;
  return JSObject.init(type:)(a1);
}

id JSRedirectSegue.init(type:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore15JSRedirectSegue_url;
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC11MusicJSCore7JSSegue_playbackIntent) = 0;

  return JSObject.init(type:)(a1);
}

uint64_t type metadata accessor for JSRedirectSegue()
{
  result = qword_1011C0B70;
  if (!qword_1011C0B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100D6CE20()
{
  sub_100039B3C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id JSNowPlayingViewModel.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR____TtC11MusicJSCore21JSNowPlayingViewModel_mode] = 3;
  v3[OBJC_IVAR____TtC11MusicJSCore21JSNowPlayingViewModel_lyricsMode] = 5;
  *&v3[OBJC_IVAR____TtC11MusicJSCore21JSNowPlayingViewModel_currentMetricsDictionary] = _swiftEmptyDictionarySingleton;
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName];
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *&v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData] = xmmword_100EFDB60;
  v5 = &v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID];
  *v5 = 0;
  v5[1] = 0;
  return JSObject.init(type:)(a1);
}

uint64_t JSNowPlayingViewModel.Action.rawValue.getter(char a1)
{
  result = 0x62694C6F54646461;
  switch(a1)
  {
    case 1:
      return 0x616C506F54646461;
    case 2:
    case 3:
      return 0x79616C506F747561;
    case 4:
      return 0x616C506E69676562;
    case 5:
      return 0x7453657461657263;
    case 6:
      return 0xD000000000000012;
    case 7:
      return 0x64616F6C6E776F64;
    case 8:
      return 0x657469726F766166;
    case 9:
      return 0x69726F7661666E75;
    case 10:
      return 1702125928;
    case 11:
      v4 = 1701079400;
      goto LABEL_29;
    case 12:
      v5 = 1701079400;
      goto LABEL_12;
    case 13:
      return 0x6574614C79616C70;
    case 14:
      return 0x7478654E79616C70;
    case 15:
      return 0x6F4374726F706572;
    case 16:
      v3 = 0x4C6275726373;
      goto LABEL_27;
    case 17:
      return 0x6572616873;
    case 18:
      return 0x616C506572616873;
    case 19:
      v3 = 0x4C6572616873;
LABEL_27:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7279000000000000;
      break;
    case 20:
      result = 0xD000000000000011;
      break;
    case 21:
      result = 0x79726F7473;
      break;
    case 22:
      result = 0x74736948776F6873;
      break;
    case 23:
      v4 = 2003789939;
LABEL_29:
      result = v4 | 0x6972794C00000000;
      break;
    case 24:
      v5 = 2003789939;
LABEL_12:
      result = v5 | 0x654E705500000000;
      break;
    case 25:
      result = 0x6F466C6169636F73;
      break;
    case 26:
      result = 0x75626C4177656976;
      break;
    case 27:
      result = 0xD00000000000001BLL;
      break;
    case 28:
      result = 0xD000000000000017;
      break;
    case 29:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int sub_100D6D2D8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  JSNowPlayingViewModel.Action.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100D6D33C()
{
  JSNowPlayingViewModel.Action.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int sub_100D6D390()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  JSNowPlayingViewModel.Action.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100D6D3F0@<X0>(_BYTE *a1@<X8>)
{
  result = _s11MusicJSCore21JSNowPlayingViewModelC6ActionO8rawValueAESgSS_tcfC_0();
  *a1 = result;
  return result;
}

uint64_t sub_100D6D420@<X0>(uint64_t *a1@<X8>)
{
  result = JSNowPlayingViewModel.Action.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t JSNowPlayingViewModel.Mode.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x736C6F72746E6F63;
  }

  if (a1 == 1)
  {
    return 0x73636972796CLL;
  }

  return 0x75517478654E7075;
}

uint64_t sub_100D6D4AC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x73636972796CLL;
  if (v2 != 1)
  {
    v4 = 0x75517478654E7075;
    v3 = 0xEB00000000657565;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x736C6F72746E6F63;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x73636972796CLL;
  if (*a2 != 1)
  {
    v8 = 0x75517478654E7075;
    v7 = 0xEB00000000657565;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x736C6F72746E6F63;
  }

  if (*a2)
  {
    v10 = v7;
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
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100D6D5B8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100D6D660()
{
  String.hash(into:)();
}

Swift::Int sub_100D6D6F4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100D6D798@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicJSCore21JSNowPlayingViewModelC4ModeO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_100D6D7C8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x73636972796CLL;
  if (v2 != 1)
  {
    v5 = 0x75517478654E7075;
    v4 = 0xEB00000000657565;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x736C6F72746E6F63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t JSNowPlayingViewModel.LyricsMode.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 2:
      return 1701736302;
    case 3:
      return 0x676E6964616F6CLL;
    case 4:
      return 0x636974617473;
  }

  if (a1)
  {
    v2 = 0x8000000100E6D5A0;
  }

  else
  {
    v2 = 0xEA0000000000656ELL;
  }

  if (0x8000000100E6D5A0 == v2 && (a1 & 1) != 0)
  {

    return 0xD000000000000012;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 0xD000000000000012;
    if ((v3 & 1) == 0)
    {
      return 0x636E7953656D6974;
    }
  }

  return result;
}

uint64_t sub_100D6D964@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicJSCore21JSNowPlayingViewModelC10LyricsModeO8rawValueAESgSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100D6D994@<X0>(uint64_t *a1@<X8>)
{
  result = JSNowPlayingViewModel.LyricsMode.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100D6D9D8(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

MusicJSCore::JSNowPlayingViewModel::TimeSyncingPrecision_optional __swiftcall JSNowPlayingViewModel.TimeSyncingPrecision.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010FB998, v2);

  if (v3 == 1)
  {
    v4.value = MusicJSCore_JSNowPlayingViewModel_TimeSyncingPrecision_syllableBySyllable;
  }

  else
  {
    v4.value = MusicJSCore_JSNowPlayingViewModel_TimeSyncingPrecision_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t JSNowPlayingViewModel.TimeSyncingPrecision.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x694C7942656E696CLL;
  }
}

uint64_t sub_100D6DB00(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0x694C7942656E696CLL;
  }

  if (v2)
  {
    v4 = 0xEA0000000000656ELL;
  }

  else
  {
    v4 = 0x8000000100E6D5A0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0x694C7942656E696CLL;
  }

  if (*a2)
  {
    v6 = 0x8000000100E6D5A0;
  }

  else
  {
    v6 = 0xEA0000000000656ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100D6DBB0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100D6DC3C()
{
  String.hash(into:)();
}

Swift::Int sub_100D6DCB4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100D6DD3C@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1010FB998, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_100D6DD9C(unint64_t *a1@<X8>)
{
  v2 = 0x8000000100E6D5A0;
  v3 = 0x694C7942656E696CLL;
  if (*v1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xEA0000000000656ELL;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_100D6DDE4(unsigned __int8 a1)
{
  v3 = 0x736C6F72746E6F63;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC11MusicJSCore21JSNowPlayingViewModel_mode;
  result = swift_beginAccess();
  v7 = v1[v5];
  if (v7 != 3)
  {
    if (a1 == 3)
    {
      goto LABEL_27;
    }

    if (v1[v5])
    {
      if (v7 == 1)
      {
        v8 = 0xE600000000000000;
        v9 = 0x73636972796CLL;
        v10 = a1;
        if (!a1)
        {
LABEL_18:
          v12 = 0xE800000000000000;
          if (v9 != 0x736C6F72746E6F63)
          {
            goto LABEL_23;
          }

          goto LABEL_21;
        }
      }

      else
      {
        v9 = 0x75517478654E7075;
        v8 = 0xEB00000000657565;
        v10 = a1;
        if (!a1)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      v8 = 0xE800000000000000;
      v9 = 0x736C6F72746E6F63;
      v10 = a1;
      if (!a1)
      {
        goto LABEL_18;
      }
    }

    if (v10 == 1)
    {
      v12 = 0xE600000000000000;
      if (v9 != 0x73636972796CLL)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v12 = 0xEB00000000657565;
      if (v9 != 0x75517478654E7075)
      {
        goto LABEL_23;
      }
    }

LABEL_21:
    if (v8 == v12)
    {
    }

LABEL_23:
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      return result;
    }

    if (a1 == 1)
    {
      goto LABEL_25;
    }

    goto LABEL_11;
  }

  if (a1 <= 1u)
  {
    if (!a1)
    {
      goto LABEL_11;
    }

LABEL_25:

    goto LABEL_26;
  }

  if (a1 != 2)
  {
    return result;
  }

LABEL_11:
  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
LABEL_26:
    v14 = OBJC_IVAR____TtC11MusicJSCore21JSNowPlayingViewModel_lyricsMode;
    swift_beginAccess();
    v15 = v1[v14];
    v1[v14] = 5;
    sub_100D6E38C(v15);
  }

LABEL_27:
  if (qword_1011BDB08 != -1)
  {
    swift_once();
  }

  v16 = static JSBridge.shared;
  sub_10010FC20(&qword_101181530);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100EBDC20;
  *(v17 + 56) = ObjectType;
  *(v17 + 32) = v1;
  if (v1[v5] > 1u)
  {
    if (v1[v5] != 2)
    {
      v26 = 0u;
      v27 = 0u;
      v23 = objc_allocWithZone(NSNull);
      v24 = v1;
      v25 = [v23 init];
      *(v17 + 88) = sub_100009F78(0, &qword_1011C1830);
      *(v17 + 64) = v25;
      if (*(&v27 + 1))
      {
        sub_100011DF0(&v26);
      }

      goto LABEL_36;
    }

    v3 = 0x75517478654E7075;
    v18 = 0xEB00000000657565;
  }

  else if (v1[v5])
  {
    v18 = 0xE600000000000000;
    v3 = 0x73636972796CLL;
  }

  else
  {
    v18 = 0xE800000000000000;
  }

  *(&v27 + 1) = &type metadata for String;
  *&v26 = v3;
  *(&v26 + 1) = v18;
  sub_100016270(&v26, (v17 + 64));
  v19 = v1;
LABEL_36:
  sub_100009F78(0, &qword_101182960);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  *(v20 + 24) = _swiftEmptyArrayStorage;
  *(v20 + 32) = 0x6F4D657461647075;
  *(v20 + 40) = 0xEA00000000006564;
  *(v20 + 48) = v1;
  *(v20 + 56) = v16;
  *(v20 + 64) = 0;
  v21 = v1;
  v22 = v16;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05FE0, v20);
}

uint64_t JSNowPlayingViewModel.mode.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore21JSNowPlayingViewModel_mode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100D6E284(char a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

void (*JSNowPlayingViewModel.mode.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore21JSNowPlayingViewModel_mode;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_100D6E374;
}

uint64_t sub_100D6E38C(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC11MusicJSCore21JSNowPlayingViewModel_lyricsMode;
  swift_beginAccess();
  result = v1[v4];
  if (result == 5)
  {
    if (a1 == 5)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (a1 == 5)
  {
    goto LABEL_5;
  }

  v17 = JSNowPlayingViewModel.LyricsMode.rawValue.getter(result);
  v19 = v18;
  if (v17 == JSNowPlayingViewModel.LyricsMode.rawValue.getter(a1) && v19 == v20)
  {
  }

  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v22 & 1) == 0)
  {
LABEL_5:
    if (qword_1011BDB08 != -1)
    {
      swift_once();
    }

    v6 = static JSBridge.shared;
    sub_10010FC20(&qword_101181530);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100EBDC20;
    *(v7 + 56) = ObjectType;
    *(v7 + 32) = v1;
    v8 = v1[v4];
    if (v8 == 5)
    {
      v24 = 0u;
      v9 = objc_allocWithZone(NSNull);
      v10 = v1;
      v11 = [v9 init];
      *(v7 + 88) = sub_100009F78(0, &qword_1011C1830);
      *(v7 + 64) = v11;
      if (*(&v24 + 1))
      {
        sub_100011DF0(&v23);
      }
    }

    else
    {
      v12 = v1;
      *(&v24 + 1) = &type metadata for String;
      *&v23 = JSNowPlayingViewModel.LyricsMode.rawValue.getter(v8);
      *(&v23 + 1) = v13;
      sub_100016270(&v23, (v7 + 64));
    }

    sub_100009F78(0, &qword_101182960);
    v14 = swift_allocObject();
    *(v14 + 16) = v7;
    *(v14 + 24) = _swiftEmptyArrayStorage;
    *(v14 + 32) = 0xD000000000000010;
    *(v14 + 40) = 0x8000000100E72960;
    *(v14 + 48) = v1;
    *(v14 + 56) = v6;
    *(v14 + 64) = 0;
    v15 = v1;
    v16 = v6;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05FE0, v14);
  }

  return result;
}

uint64_t JSNowPlayingViewModel.lyricsMode.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore21JSNowPlayingViewModel_lyricsMode;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*JSNowPlayingViewModel.lyricsMode.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore21JSNowPlayingViewModel_lyricsMode;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_100D6E6F8;
}

void sub_100D6E710(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v3 = *a1;
  v5 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v7 = *(v5 + v4);
  *(v5 + v4) = v6;
  a3(v7);

  free(v3);
}

uint64_t sub_100D6E75C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC11MusicJSCore21JSNowPlayingViewModel_currentMetricsDictionary;
  swift_beginAccess();
  v5 = *&v1[v4];

  LOBYTE(a1) = sub_100D6F4B0(a1, v5);

  if ((a1 & 1) == 0)
  {
    if (qword_1011BDB08 != -1)
    {
      swift_once();
    }

    v7 = static JSBridge.shared;
    sub_10010FC20(&qword_101181530);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100EBDC20;
    *(v8 + 56) = ObjectType;
    *(v8 + 32) = v1;
    v9 = v1;

    v11 = sub_100D6E994(v10);

    if (v11)
    {
      *(&v17 + 1) = sub_10010FC20(&unk_1011BE660);
      *&v16 = v11;
      sub_100016270(&v16, (v8 + 64));
    }

    else
    {
      v17 = 0u;
      v12 = [objc_allocWithZone(NSNull) init];
      *(v8 + 88) = sub_100009F78(0, &qword_1011C1830);
      *(v8 + 64) = v12;
      if (*(&v17 + 1))
      {
        sub_100011DF0(&v16);
      }
    }

    sub_100009F78(0, &qword_101182960);
    v13 = swift_allocObject();
    *(v13 + 16) = v8;
    *(v13 + 24) = _swiftEmptyArrayStorage;
    *(v13 + 32) = 0xD000000000000011;
    *(v13 + 40) = 0x8000000100E72940;
    *(v13 + 48) = v9;
    *(v13 + 56) = v7;
    *(v13 + 64) = 0;
    v14 = v9;
    v15 = v7;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05FE0, v13);
  }

  return result;
}

void *sub_100D6E994(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  while (v4)
  {
    v8 = v6;
LABEL_11:
    v9 = __clz(__rbit64(v4)) | (v8 << 6);
    v10 = (*(a1 + 48) + 16 * v9);
    v11 = v10[1];
    v12 = *(a1 + 56) + 24 * v9;
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    *&v34 = *v10;
    *(&v34 + 1) = v11;
    swift_bridgeObjectRetain_n();

    sub_100D6FEB4(v13, v14, v15);
    AnyHashable.init<A>(_:)();
    v31 = v14;
    v32 = v13;
    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v35 = &type metadata for Float;
        LODWORD(v34) = v13;
      }

      else
      {
        v35 = &type metadata for String;
        *&v34 = v13;
        *(&v34 + 1) = v14;
      }
    }

    else if (v15)
    {
      v35 = &type metadata for Int;
      *&v34 = v13;
    }

    else
    {
      v35 = &type metadata for Bool;
      LOBYTE(v34) = v13 & 1;
    }

    sub_100016270(&v34, v33);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = sub_1000160B4(v36);
    v19 = _swiftEmptyDictionarySingleton[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      goto LABEL_29;
    }

    v23 = v18;
    if (_swiftEmptyDictionarySingleton[3] >= v22)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = v17;
        sub_1006C8CD0();
        v17 = v28;
      }
    }

    else
    {
      sub_1006C199C(v22, isUniquelyReferenced_nonNull_native);
      v17 = sub_1000160B4(v36);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_31;
      }
    }

    v4 &= v4 - 1;
    if (v23)
    {
      v7 = (_swiftEmptyDictionarySingleton[7] + 32 * v17);
      sub_10000959C(v7);
      sub_100016270(v33, v7);

      sub_100D6FECC(v32, v31, v15);

      sub_10001621C(v36);
    }

    else
    {
      _swiftEmptyDictionarySingleton[(v17 >> 6) + 8] |= 1 << v17;
      v25 = v17;
      sub_1000160F8(v36, _swiftEmptyDictionarySingleton[6] + 40 * v17);
      sub_100016270(v33, (_swiftEmptyDictionarySingleton[7] + 32 * v25));

      sub_100D6FECC(v32, v31, v15);

      sub_10001621C(v36);
      v26 = _swiftEmptyDictionarySingleton[2];
      v21 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v21)
      {
        goto LABEL_30;
      }

      _swiftEmptyDictionarySingleton[2] = v27;
    }

    v6 = v8;
  }

  while (1)
  {
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      return _swiftEmptyDictionarySingleton;
    }

    v4 = *(v1 + 8 * v8);
    ++v6;
    if (v4)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t JSNowPlayingViewModel.currentMetricsDictionary.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore21JSNowPlayingViewModel_currentMetricsDictionary;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_100D6E75C(v4);
}

void (*JSNowPlayingViewModel.currentMetricsDictionary.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore21JSNowPlayingViewModel_currentMetricsDictionary;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return sub_100D6EE00;
}

void sub_100D6EE00(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v5 = *(v4 + v3);
  *(v4 + v3) = *(*a1 + 24);
  if (a2)
  {

    sub_100D6E75C(v5);
  }

  else
  {
    sub_100D6E75C(v5);
  }

  free(v2);
}

uint64_t JSNowPlayingViewModel.handleMetricsEvent(event:impressions:pageDetailsProvider:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  type metadata accessor for Metrics.Event.Action(0);
  __chkstk_darwin();
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100D16E60(a1, v10);
  result = sub_100D6F6DC(v10);
  if (result == 30)
  {
    return result;
  }

  v12 = result;
  if (qword_1011BDB08 != -1)
  {
    swift_once();
  }

  v13 = static JSBridge.shared;
  sub_10010FC20(&qword_101181530);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100EC6C60;
  *(v14 + 56) = ObjectType;
  *(v14 + 32) = v4;
  v15 = JSNowPlayingViewModel.Action.rawValue.getter(v12);
  *(v14 + 88) = &type metadata for String;
  *(v14 + 64) = v15;
  *(v14 + 72) = v16;
  v17 = *(a1 + *(type metadata accessor for Metrics.Event(0) + 20));
  if (v17 <= 1)
  {
    if (v17)
    {
      v18 = 0x8000000100E5BF50;
      v19 = 0xD000000000000010;
    }

    else
    {
      v18 = 0xE600000000000000;
      v19 = 0x6E6F74747562;
    }
  }

  else if (v17 == 2)
  {
    v18 = 0xE500000000000000;
    v19 = 0x6B63617274;
  }

  else if (v17 == 3)
  {
    v18 = 0xEB000000006E6F74;
    v19 = 0x7475426B63617274;
  }

  else
  {
    v18 = 0x8000000100E5BF30;
    v19 = 0xD000000000000015;
  }

  *(v14 + 120) = &type metadata for String;
  *(v14 + 96) = v19;
  *(v14 + 104) = v18;
  if (!a2)
  {
    *(v14 + 152) = sub_100009F78(0, &qword_101197A30);
    v24 = v4;
LABEL_17:
    v23 = [objc_allocWithZone(NSNull) init];
    goto LABEL_18;
  }

  objc_allocWithZone(type metadata accessor for JSImpressionsBatch());
  v20 = a3;
  v21 = v4;

  v23 = sub_100D32680(v22, 0, a3);

  *(v14 + 152) = sub_100009F78(0, &qword_101197A30);
  if (!v23)
  {
    goto LABEL_17;
  }

LABEL_18:
  *(v14 + 128) = v23;
  v25 = Metrics.Event.metricsDictionary.getter();
  if (v25)
  {
    v26 = v25;
    *(&v32 + 1) = sub_10010FC20(&unk_1011BE660);
    *&v31 = v26;
    sub_100016270(&v31, (v14 + 160));
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v27 = [objc_allocWithZone(NSNull) init];
    *(v14 + 184) = sub_100009F78(0, &qword_1011C1830);
    *(v14 + 160) = v27;
    if (*(&v32 + 1))
    {
      sub_100011DF0(&v31);
    }
  }

  sub_100009F78(0, &qword_101182960);
  v28 = swift_allocObject();
  *(v28 + 16) = v14;
  *(v28 + 24) = _swiftEmptyArrayStorage;
  *(v28 + 32) = 0xD000000000000011;
  *(v28 + 40) = 0x8000000100E71510;
  *(v28 + 48) = v4;
  *(v28 + 56) = v13;
  *(v28 + 64) = 0;
  v29 = v4;
  v30 = v13;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05168, v28);
}

id JSNowPlayingViewModel.init(type:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11MusicJSCore21JSNowPlayingViewModel_mode) = 3;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore21JSNowPlayingViewModel_lyricsMode) = 5;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore21JSNowPlayingViewModel_currentMetricsDictionary) = _swiftEmptyDictionarySingleton;
  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_100EFDB60;
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v3 = 0;
  v3[1] = 0;
  return JSObject.init(type:)(a1);
}

uint64_t sub_100D6F30C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_100019C10(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100D6F4B0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  v29 = result;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v30 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = (*(result + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(result + 56) + 24 * v12;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);

    sub_100D6FEB4(v17, v18, v19);
    v20 = sub_100019C10(v14, v15);
    v22 = v21;

    if ((v22 & 1) == 0)
    {
LABEL_35:
      sub_100D6FECC(v17, v18, v19);
      return 0;
    }

    v23 = *(a2 + 56) + 24 * v20;
    v24 = *v23;
    if (*(v23 + 16) > 1u)
    {
      if (*(v23 + 16) == 2)
      {
        if (v19 != 2)
        {
          goto LABEL_35;
        }

        v26 = *&v24 == *&v17;
        goto LABEL_24;
      }

      if (v19 != 3)
      {
        goto LABEL_35;
      }

      if (v24 == v17 && *(v23 + 8) == v18)
      {
        sub_100D6FECC(v17, v18, 3);
        result = v29;
        v7 = v30;
      }

      else
      {
        v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_100D6FECC(v17, v18, 3);
        result = v29;
        v7 = v30;
        if ((v28 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (*(v23 + 16))
    {
      if (v19 != 1)
      {
        goto LABEL_35;
      }

      v26 = v24 == v17;
LABEL_24:
      result = v29;
      v7 = v30;
      if (!v26)
      {
        return 0;
      }
    }

    else
    {
      if (v19)
      {
        goto LABEL_35;
      }

      v25 = v24 ^ v17;
      result = v29;
      v7 = v30;
      if (v25)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v30 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100D6F6DC(uint64_t a1)
{
  type metadata accessor for Metrics.Event.Action(0);
  v2 = swift_getEnumCaseMultiPayload() - 2;
  result = 0;
  switch(v2)
  {
    case 0:
      result = 16;
      break;
    case 1:
      sub_100D16EC4(a1);
      result = 20;
      break;
    case 2:
      sub_100D16EC4(a1);
      result = 21;
      break;
    case 4:
      result = 27;
      break;
    case 5:
      return result;
    case 6:
      result = 1;
      break;
    case 9:
      result = 2;
      break;
    case 10:
      result = 3;
      break;
    case 11:
      result = 4;
      break;
    case 14:
      result = 5;
      break;
    case 18:
      result = 6;
      break;
    case 19:
      result = 7;
      break;
    case 21:
      result = 8;
      break;
    case 22:
      result = 9;
      break;
    case 23:
      result = 10;
      break;
    case 24:
      result = 11;
      break;
    case 25:
      result = 12;
      break;
    case 27:
      result = 13;
      break;
    case 28:
      result = 14;
      break;
    case 37:
      result = 15;
      break;
    case 39:
      result = 17;
      break;
    case 40:
      result = 18;
      break;
    case 41:
      result = 19;
      break;
    case 42:
      result = 22;
      break;
    case 43:
      result = 23;
      break;
    case 44:
      result = 24;
      break;
    case 49:
      result = 25;
      break;
    case 51:
      result = 26;
      break;
    case 55:
      result = 28;
      break;
    case 56:
      result = 29;
      break;
    default:
      sub_100D16EC4(a1);
      result = 30;
      break;
  }

  return result;
}

uint64_t _s11MusicJSCore21JSNowPlayingViewModelC12MetricsValueO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      return a6 == 2 && *&a1 == *&a4;
    }

    else if (a6 == 3)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      else
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = a4 ^ a1 ^ 1;
    if (a6)
    {
      v6 = 0;
    }

    v8 = a6 == 1 && a1 == a4;
    if (a3)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t _s11MusicJSCore21JSNowPlayingViewModelC6ActionO8rawValueAESgSS_tcfC_0()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x1E)
  {
    return 30;
  }

  else
  {
    return v0;
  }
}

unint64_t _s11MusicJSCore21JSNowPlayingViewModelC4ModeO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010FB930, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t _s11MusicJSCore21JSNowPlayingViewModelC10LyricsModeO8rawValueAESgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E6964616F6CLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x636974617473 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x636E7953656D6974 && a2 == 0xEA00000000006465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000100E6D5A0 == a2)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_100D6FB50()
{
  result = qword_1011C0B98;
  if (!qword_1011C0B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011C0B98);
  }

  return result;
}

unint64_t sub_100D6FBA8()
{
  result = qword_1011C0BA0;
  if (!qword_1011C0BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011C0BA0);
  }

  return result;
}

unint64_t sub_100D6FC00()
{
  result = qword_1011C0BA8;
  if (!qword_1011C0BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011C0BA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSNowPlayingViewModel.Action(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 29;
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

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JSNowPlayingViewModel.Action(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSNowPlayingViewModel.LyricsMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100D6FEB4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3)
  {
  }

  return result;
}

uint64_t sub_100D6FECC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3)
  {
  }

  return result;
}

void *JSSettingsAuthenticationSection.forgotCredentialsLink.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_forgotCredentialsLink;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t JSSettingsAuthenticationSection.description.getter()
{
  v1 = v0;
  v2._countAndFlagsBits = 60;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 8250;
  v9._object = 0xE200000000000000;
  String.append(_:)(v9);
  _print_unlocked<A, B>(_:_:)();
  v10 = (v1 + OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_identifierLabelText);
  swift_beginAccess();
  v11 = v10[1];
  v12 = *v10 & 0xFFFFFFFFFFFFLL;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(v11) & 0xF;
  }

  if (v12)
  {
    _StringGuts.grow(_:)(28);

    v14 = *v10;
    v13 = v10[1];

    v15._countAndFlagsBits = v14;
    v15._object = v13;
    String.append(_:)(v15);

    v16._countAndFlagsBits = 34;
    v16._object = 0xE100000000000000;
    String.append(_:)(v16);
    v17._countAndFlagsBits = 0xD000000000000019;
    v17._object = 0x8000000100E72980;
    String.append(_:)(v17);
  }

  v18 = (v1 + OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_identifierFieldPlaceholder);
  swift_beginAccess();
  v19 = v18[1];
  v20 = *v18 & 0xFFFFFFFFFFFFLL;
  if ((v19 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(v19) & 0xF;
  }

  if (v20)
  {
    _StringGuts.grow(_:)(35);

    v22 = *v18;
    v21 = v18[1];

    v23._countAndFlagsBits = v22;
    v23._object = v21;
    String.append(_:)(v23);

    v24._countAndFlagsBits = 34;
    v24._object = 0xE100000000000000;
    String.append(_:)(v24);
    v25._countAndFlagsBits = 0xD000000000000020;
    v25._object = 0x8000000100E729A0;
    String.append(_:)(v25);
  }

  v26 = (v1 + OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_passwordLabelText);
  swift_beginAccess();
  v27 = v26[1];
  v28 = *v26 & 0xFFFFFFFFFFFFLL;
  if ((v27 & 0x2000000000000000) != 0)
  {
    v28 = HIBYTE(v27) & 0xF;
  }

  if (v28)
  {
    _StringGuts.grow(_:)(26);

    v30 = *v26;
    v29 = v26[1];

    v31._countAndFlagsBits = v30;
    v31._object = v29;
    String.append(_:)(v31);

    v32._countAndFlagsBits = 34;
    v32._object = 0xE100000000000000;
    String.append(_:)(v32);
    v33._countAndFlagsBits = 0xD000000000000017;
    v33._object = 0x8000000100E729D0;
    String.append(_:)(v33);
  }

  v34 = (v1 + OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_passwordFieldPlaceholder);
  swift_beginAccess();
  v35 = v34[1];
  v36 = *v34 & 0xFFFFFFFFFFFFLL;
  if ((v35 & 0x2000000000000000) != 0)
  {
    v36 = HIBYTE(v35) & 0xF;
  }

  if (v36)
  {
    _StringGuts.grow(_:)(33);

    v38 = *v34;
    v37 = v34[1];

    v39._countAndFlagsBits = v38;
    v39._object = v37;
    String.append(_:)(v39);

    v40._countAndFlagsBits = 34;
    v40._object = 0xE100000000000000;
    String.append(_:)(v40);
    v41._countAndFlagsBits = 0xD00000000000001ELL;
    v41._object = 0x8000000100E729F0;
    String.append(_:)(v41);
  }

  v42 = (v1 + OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_submitButtonText);
  swift_beginAccess();
  v43 = v42[1];
  v44 = *v42 & 0xFFFFFFFFFFFFLL;
  if ((v43 & 0x2000000000000000) != 0)
  {
    v44 = HIBYTE(v43) & 0xF;
  }

  if (v44)
  {
    _StringGuts.grow(_:)(25);

    v46 = *v42;
    v45 = v42[1];

    v47._countAndFlagsBits = v46;
    v47._object = v45;
    String.append(_:)(v47);

    v48._countAndFlagsBits = 34;
    v48._object = 0xE100000000000000;
    String.append(_:)(v48);
    v49._countAndFlagsBits = 0xD000000000000016;
    v49._object = 0x8000000100E72A10;
    String.append(_:)(v49);
  }

  v50 = OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_forgotCredentialsLink;
  swift_beginAccess();
  v51 = *(v1 + v50);
  if (v51)
  {
    v52 = v51;
    _StringGuts.grow(_:)(28);

    v53 = [v52 description];
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    v57._countAndFlagsBits = v54;
    v57._object = v56;
    String.append(_:)(v57);

    v58._countAndFlagsBits = 0xD00000000000001ALL;
    v58._object = 0x8000000100E72A30;
    String.append(_:)(v58);
  }

  v59._countAndFlagsBits = 62;
  v59._object = 0xE100000000000000;
  String.append(_:)(v59);
  return 0;
}

uint64_t JSSettingsAuthenticationSection.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[0] = a1;
  v14[1] = a2;
  sub_1000189C0(a3, v15);
  if (v15[3])
  {
    sub_1000189C0(v15, v13);

    if (swift_dynamicCast())
    {
      if (a1 == 0xD000000000000013 && 0x8000000100E72A70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v6 = OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_identifierLabelText;
LABEL_7:
        v7 = (v3 + v6);
        swift_beginAccess();
        *v7 = v11;
        v7[1] = v12;

LABEL_31:
        sub_10000959C(v13);
        sub_1000095E8(v15, &unk_101183F30);
      }

      if (a1 == 0xD00000000000001ALL && 0x8000000100E72A90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v6 = OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_identifierFieldPlaceholder;
        goto LABEL_7;
      }

      if (a1 == 0xD000000000000011 && 0x8000000100E72AB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v6 = OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_passwordLabelText;
        goto LABEL_7;
      }

      if (a1 == 0xD000000000000018 && 0x8000000100E72AD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v6 = OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_passwordFieldPlaceholder;
        goto LABEL_7;
      }

      if (a1 == 0xD000000000000010 && 0x8000000100E72AF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v6 = OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_submitButtonText;
        goto LABEL_7;
      }
    }

    type metadata accessor for JSSettingsLink();
    if (swift_dynamicCast())
    {
      if (a1 == 0xD000000000000015 && 0x8000000100E72A50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v8 = OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_forgotCredentialsLink;
        swift_beginAccess();
        v9 = *(v3 + v8);
        *(v3 + v8) = v11;

        goto LABEL_31;
      }
    }

    sub_10000959C(v13);
  }

  else
  {
  }

  return sub_1000095E8(v14, &unk_1011C0D90);
}

id JSSettingsAuthenticationSection.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_identifierLabelText];
  *v4 = 0;
  *(v4 + 1) = 0xE000000000000000;
  v5 = &v3[OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_identifierFieldPlaceholder];
  *v5 = 0;
  *(v5 + 1) = 0xE000000000000000;
  v6 = &v3[OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_passwordLabelText];
  *v6 = 0;
  *(v6 + 1) = 0xE000000000000000;
  v7 = &v3[OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_passwordFieldPlaceholder];
  *v7 = 0;
  *(v7 + 1) = 0xE000000000000000;
  v8 = &v3[OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_submitButtonText];
  *v8 = 0;
  *(v8 + 1) = 0xE000000000000000;
  *&v3[OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_forgotCredentialsLink] = 0;
  return JSObject.init(type:)(a1);
}

id JSSettingsAuthenticationSection.init(type:)(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_identifierLabelText);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_identifierFieldPlaceholder);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v1 + OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_passwordLabelText);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = (v1 + OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_passwordFieldPlaceholder);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = (v1 + OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_submitButtonText);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_forgotCredentialsLink) = 0;
  return JSObject.init(type:)(a1);
}

void sub_100D7092C()
{

  v1 = *(v0 + OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_forgotCredentialsLink);
}