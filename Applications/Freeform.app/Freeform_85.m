uint64_t sub_100B595B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x72656E726F63;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEF7265696669746ELL;
    v4 = 0xE700000000000000;
    if (a1 == 2)
    {
      v6 = 0x6564695F65707974;
    }

    else
    {
      v6 = 0x6E6F6973726576;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0xE600000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x646576727563;
    }

    else
    {
      v6 = 0x72656E726F63;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0x6564695F65707974;
  v9 = 0xEF7265696669746ELL;
  if (a2 != 2)
  {
    v8 = 0x6E6F6973726576;
    v9 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x646576727563;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (a2 <= 1u)
  {
    v11 = 0xE600000000000000;
  }

  else
  {
    v11 = v9;
  }

  if (v6 == v10 && v7 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

uint64_t sub_100B596FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x736B72616DLL;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEF7265696669746ELL;
    v4 = 0xE700000000000000;
    if (a1 == 2)
    {
      v6 = 0x6564695F65707974;
    }

    else
    {
      v6 = 0x6E6F6973726576;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0xE500000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x656C797473;
    }

    else
    {
      v6 = 0x736B72616DLL;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0x6564695F65707974;
  v9 = 0xEF7265696669746ELL;
  if (a2 != 2)
  {
    v8 = 0x6E6F6973726576;
    v9 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x656C797473;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (a2 <= 1u)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = v9;
  }

  if (v6 == v10 && v7 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

uint64_t sub_100B59848(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000746E6564;
  v3 = 0x6E695F6C6562616CLL;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x646E695F74786574;
    }

    else
    {
      v5 = 0x6E695F6C6562616CLL;
    }

    if (v4)
    {
      v6 = 0xEB00000000746E65;
    }

    else
    {
      v6 = 0xEC000000746E6564;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE500000000000000;
    v5 = 0x6C6562616CLL;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x6564695F65707974;
    }

    else
    {
      v5 = 0x6E6F6973726576;
    }

    if (v4 == 3)
    {
      v6 = 0xEF7265696669746ELL;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  v7 = 0xE500000000000000;
  v8 = 0x6C6562616CLL;
  v9 = 0x6564695F65707974;
  v10 = 0xEF7265696669746ELL;
  if (a2 != 3)
  {
    v9 = 0x6E6F6973726576;
    v10 = 0xE700000000000000;
  }

  if (a2 != 2)
  {
    v8 = v9;
    v7 = v10;
  }

  if (a2)
  {
    v3 = 0x646E695F74786574;
    v2 = 0xEB00000000746E65;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_100B599F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x7265626D756ELL;
    }

    else
    {
      v3 = 0x6567616D69;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE600000000000000;
    v3 = 0x676E69727473;
  }

  else if (a1 == 3)
  {
    v3 = 0x6564695F65707974;
    v4 = 0xEF7265696669746ELL;
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x6E6F6973726576;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x7265626D756ELL;
    }

    else
    {
      v9 = 0x6567616D69;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x6564695F65707974;
    v6 = 0xEF7265696669746ELL;
    if (a2 != 3)
    {
      v5 = 0x6E6F6973726576;
      v6 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x676E69727473;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_100B59B80(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x656C616373;
    }

    else
    {
      v3 = 0x676E69727473;
    }

    if (v2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE600000000000000;
    v3 = 0x74657366666FLL;
  }

  else if (a1 == 3)
  {
    v3 = 0x6564695F65707974;
    v4 = 0xEF7265696669746ELL;
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x6E6F6973726576;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x656C616373;
    }

    else
    {
      v9 = 0x676E69727473;
    }

    if (a2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE600000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x6564695F65707974;
    v6 = 0xEF7265696669746ELL;
    if (a2 != 3)
    {
      v5 = 0x6E6F6973726576;
      v6 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x74657366666FLL;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_100B59D10(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x64656C63726963;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6C616D69636564;
    }

    else
    {
      v4 = 0x64656C63726963;
    }

    v3 = 0xE700000000000000;
  }

  else if (a1 == 2)
  {
    v4 = 0x705F656C62756F64;
    v3 = 0xEC0000006E657261;
  }

  else if (a1 == 3)
  {
    v3 = 0xE500000000000000;
    v4 = 0x6E65726170;
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x647261646E617473;
  }

  if (a2 <= 1u)
  {
    v5 = 0xE700000000000000;
    v6 = 0xE700000000000000;
    v7 = 0x6C616D69636564;
    v8 = a2 == 0;
  }

  else
  {
    v2 = 0x705F656C62756F64;
    v5 = 0xEC0000006E657261;
    v6 = 0xE500000000000000;
    v7 = 0x6E65726170;
    if (a2 != 3)
    {
      v7 = 0x647261646E617473;
      v6 = 0xE800000000000000;
    }

    v8 = a2 == 2;
  }

  if (v8)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (v8)
  {
    v10 = v5;
  }

  else
  {
    v10 = v6;
  }

  if (v4 == v9 && v3 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_100B59E94(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED000074616D726FLL;
  v3 = 0x665F7265626D756ELL;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x656C616373;
    }

    else
    {
      v5 = 0x665F7265626D756ELL;
    }

    if (v4)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xED000074616D726FLL;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE600000000000000;
    v5 = 0x646572656974;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x6564695F65707974;
    }

    else
    {
      v5 = 0x6E6F6973726576;
    }

    if (v4 == 3)
    {
      v6 = 0xEF7265696669746ELL;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  v7 = 0xE600000000000000;
  v8 = 0x646572656974;
  v9 = 0x6564695F65707974;
  v10 = 0xEF7265696669746ELL;
  if (a2 != 3)
  {
    v9 = 0x6E6F6973726576;
    v10 = 0xE700000000000000;
  }

  if (a2 != 2)
  {
    v8 = v9;
    v7 = v10;
  }

  if (a2)
  {
    v3 = 0x656C616373;
    v2 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_100B5A028(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x74657366666FLL;
    }

    else
    {
      v3 = 0x656C616373;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE800000000000000;
    v3 = 0x656372756F736572;
  }

  else if (a1 == 3)
  {
    v3 = 0x6564695F65707974;
    v4 = 0xEF7265696669746ELL;
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x6E6F6973726576;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x74657366666FLL;
    }

    else
    {
      v9 = 0x656C616373;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x6564695F65707974;
    v6 = 0xEF7265696669746ELL;
    if (a2 != 3)
    {
      v5 = 0x6E6F6973726576;
      v6 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x656372756F736572;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_100B5A1C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0x6564695F65707974;
  v5 = 0xEF7265696669746ELL;
  if (a1 != 6)
  {
    v4 = 0x6E6F6973726576;
    v5 = 0xE700000000000000;
  }

  v6 = 0x737569646172;
  if (a1 != 4)
  {
    v6 = 0x746867696568;
  }

  if (a1 <= 5u)
  {
    v4 = v6;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x726F6C6F63;
  if (a1 != 2)
  {
    v8 = 0x74657366666FLL;
    v7 = 0xE600000000000000;
  }

  v9 = 0x7974696361706FLL;
  if (a1)
  {
    v3 = 0xE700000000000000;
  }

  else
  {
    v9 = 0x656C676E61;
  }

  if (a1 > 1u)
  {
    v3 = v7;
  }

  else
  {
    v8 = v9;
  }

  if (a1 <= 3u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 3)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v12 = 0xEF7265696669746ELL;
        if (v10 != 0x6564695F65707974)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v12 = 0xE700000000000000;
        if (v10 != 0x6E6F6973726576)
        {
LABEL_45:
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_46;
        }
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (a2 == 4)
      {
        if (v10 != 0x737569646172)
        {
          goto LABEL_45;
        }
      }

      else if (v10 != 0x746867696568)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x726F6C6F63)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x74657366666FLL)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x7974696361706FLL)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x656C676E61)
    {
      goto LABEL_45;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_45;
  }

  v13 = 1;
LABEL_46:

  return v13 & 1;
}

uint64_t sub_100B5A424(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6C61757165;
  if (a1 > 1u)
  {
    v4 = a1 == 2;
    v3 = 0xEF7265696669746ELL;
    if (a1 == 2)
    {
      v5 = 0x6564695F65707974;
    }

    else
    {
      v5 = 0x6E6F6973726576;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = a1 == 0;
    if (a1)
    {
      v5 = 0x6C617571656E75;
    }

    else
    {
      v5 = 0x6C61757165;
    }
  }

  if (v4)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6564695F65707974;
  v9 = 0xEF7265696669746ELL;
  if (a2 != 2)
  {
    v8 = 0x6E6F6973726576;
    v9 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x6C617571656E75;
    v7 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (a2 <= 1u)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  if (v5 == v10 && v6 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

uint64_t sub_100B5A574(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746E756F63;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x775F6E6D756C6F63;
    }

    else
    {
      v4 = 0x746E756F63;
    }

    if (v3)
    {
      v5 = 0xED00007368746469;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x775F726574747567;
    v5 = 0xED00007368746469;
  }

  else if (a1 == 3)
  {
    v4 = 0x6564695F65707974;
    v5 = 0xEF7265696669746ELL;
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x6E6F6973726576;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE500000000000000;
    v7 = 0x775F6E6D756C6F63;
    v8 = 0xED00007368746469;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x775F726574747567;
    v6 = 0xED00007368746469;
    v7 = 0x6564695F65707974;
    v8 = 0xEF7265696669746ELL;
    if (a2 != 3)
    {
      v7 = 0x6E6F6973726576;
      v8 = 0xE700000000000000;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v8;
  }

  if (v4 == v10 && v5 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

uint64_t sub_100B5A734(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746E756F63;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6564695F65707974;
    }

    else
    {
      v4 = 0x6E6F6973726576;
    }

    if (v3 == 2)
    {
      v5 = 0xEF7265696669746ELL;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x775F726574747567;
    }

    else
    {
      v4 = 0x746E756F63;
    }

    if (v3)
    {
      v5 = 0xEC00000068746469;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0x6564695F65707974;
  v8 = 0xEF7265696669746ELL;
  if (a2 != 2)
  {
    v7 = 0x6E6F6973726576;
    v8 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x775F726574747567;
    v6 = 0xEC00000068746469;
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
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_100B5A8A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x746E656964617267;
    }

    else
    {
      v3 = 0x726F6C6F63;
    }

    if (v2)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE500000000000000;
    v3 = 0x6567616D69;
  }

  else if (a1 == 3)
  {
    v3 = 0x6564695F65707974;
    v4 = 0xEF7265696669746ELL;
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x6E6F6973726576;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x746E656964617267;
    }

    else
    {
      v9 = 0x726F6C6F63;
    }

    if (a2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x6564695F65707974;
    v6 = 0xEF7265696669746ELL;
    if (a2 != 3)
    {
      v5 = 0x6E6F6973726576;
      v6 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x6567616D69;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_100B5AA38(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0x6564695F65707974;
  v5 = 0xEF7265696669746ELL;
  if (a1 != 6)
  {
    v4 = 0x6E6F6973726576;
    v5 = 0xE700000000000000;
  }

  v6 = 0xE600000000000000;
  v7 = 0x737569646172;
  if (a1 != 4)
  {
    v7 = 0x6576727563;
    v6 = 0xE500000000000000;
  }

  if (a1 <= 5u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE500000000000000;
  v9 = 0x726F6C6F63;
  if (a1 != 2)
  {
    v9 = 0x74657366666FLL;
    v8 = 0xE600000000000000;
  }

  v10 = 0x7974696361706FLL;
  if (a1)
  {
    v3 = 0xE700000000000000;
  }

  else
  {
    v10 = 0x656C676E61;
  }

  if (a1 > 1u)
  {
    v3 = v8;
  }

  else
  {
    v9 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v4;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xEF7265696669746ELL;
        if (v11 != 0x6564695F65707974)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        if (v11 != 0x6E6F6973726576)
        {
LABEL_45:
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x737569646172)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE500000000000000;
      if (v11 != 0x6576727563)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE500000000000000;
      if (v11 != 0x726F6C6F63)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x74657366666FLL)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE700000000000000;
    if (v11 != 0x7974696361706FLL)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE500000000000000;
    if (v11 != 0x656C676E61)
    {
      goto LABEL_45;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v14 = 1;
LABEL_46:

  return v14 & 1;
}

uint64_t sub_100B5ACA4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656C62756F64;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x656C676E6973;
    }

    else
    {
      v4 = 2037801335;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1701736302;
    }

    else
    {
      v4 = 0x656C62756F64;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x656C676E6973;
  if (a2 != 2)
  {
    v8 = 2037801335;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 1701736302;
    v6 = 0xE400000000000000;
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

uint64_t sub_100B5ADB8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x737061635F6C6C61;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 1701736302;
    }

    else
    {
      v5 = 0x737061635F6C6C61;
    }

    if (v3)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x61635F6C6C616D73;
    v4 = 0xEA00000000007370;
  }

  else
  {
    v4 = 0xE500000000000000;
    if (a1 == 3)
    {
      v5 = 0x7472617473;
    }

    else
    {
      v5 = 0x656C746974;
    }
  }

  if (a2 <= 1u)
  {
    v6 = 0xE800000000000000;
    v7 = 0xE400000000000000;
    v8 = 1701736302;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x61635F6C6C616D73;
    v6 = 0xEA00000000007370;
    v7 = 0xE500000000000000;
    v8 = 0x7472617473;
    if (a2 != 3)
    {
      v8 = 0x656C746974;
      v7 = 0xE500000000000000;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  if (v5 == v10 && v4 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

uint64_t sub_100B5AF18(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x7463617865;
    }

    else
    {
      v5 = 0x6E656577746562;
    }

    if (v2)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1 == 2)
    {
      v3 = 0xE700000000000000;
      v4 = 1769496941;
      goto LABEL_12;
    }

    if (a1 == 3)
    {
      v3 = 0xE700000000000000;
      v4 = 1768843629;
LABEL_12:
      v5 = v4 | 0x6D756D00000000;
      goto LABEL_14;
    }

    v3 = 0xE800000000000000;
    v5 = 0x65766974616C6572;
  }

LABEL_14:
  if (a2 <= 1u)
  {
    if (a2)
    {
      v10 = 0x7463617865;
    }

    else
    {
      v10 = 0x6E656577746562;
    }

    if (a2)
    {
      v9 = 0xE500000000000000;
    }

    else
    {
      v9 = 0xE700000000000000;
    }

    if (v5 != v10)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
    v7 = 0x6D756D696E696DLL;
    if (a2 != 3)
    {
      v7 = 0x65766974616C6572;
      v6 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v8 = 0x6D756D6978616DLL;
    }

    else
    {
      v8 = v7;
    }

    if (a2 == 2)
    {
      v9 = 0xE700000000000000;
    }

    else
    {
      v9 = v6;
    }

    if (v5 != v8)
    {
      goto LABEL_34;
    }
  }

  if (v3 != v9)
  {
LABEL_34:
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_35;
  }

  v11 = 1;
LABEL_35:

  return v11 & 1;
}

uint64_t sub_100B5B094(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x7966697473756ALL;
    }

    else
    {
      v4 = 0x7265746E6563;
    }

    if (v2)
    {
      v3 = 0xE700000000000000;
    }

    else
    {
      v3 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1952867692;
  }

  else if (a1 == 3)
  {
    v3 = 0xE700000000000000;
    v4 = 0x6C61727574616ELL;
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x7468676972;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x7966697473756ALL;
    }

    else
    {
      v9 = 0x7265746E6563;
    }

    if (a2)
    {
      v8 = 0xE700000000000000;
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
    v6 = 0x6C61727574616ELL;
    if (a2 != 3)
    {
      v6 = 0x7468676972;
      v5 = 0xE500000000000000;
    }

    if (a2 == 2)
    {
      v7 = 1952867692;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
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

uint64_t sub_100B5B204(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000657A6973;
  v3 = 0x5F6C61727574616ELL;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6F745F656C616373;
    }

    else
    {
      v5 = 0x5F6C61727574616ELL;
    }

    if (v4)
    {
      v6 = 0xED00006C6C69665FLL;
    }

    else
    {
      v6 = 0xEC000000657A6973;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x6F745F656C616373;
    v6 = 0xEC0000007469665FLL;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x68637465727473;
    }

    else
    {
      v5 = 1701603700;
    }

    if (v4 == 3)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  v7 = 0x6F745F656C616373;
  v8 = 0xEC0000007469665FLL;
  v9 = 0xE700000000000000;
  v10 = 0x68637465727473;
  if (a2 != 3)
  {
    v10 = 1701603700;
    v9 = 0xE400000000000000;
  }

  if (a2 != 2)
  {
    v7 = v10;
    v8 = v9;
  }

  if (a2)
  {
    v3 = 0x6F745F656C616373;
    v2 = 0xED00006C6C69665FLL;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_100B5B3A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00656E694C6E6FLL;
  v3 = 0x697463656E6E6F63;
  v4 = a1;
  v5 = 0x6564695F65707974;
  v6 = 0xEF7265696669746ELL;
  if (a1 != 5)
  {
    v5 = 0x6E6F6973726576;
    v6 = 0xE700000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6570616873;
  if (a1 != 3)
  {
    v8 = 0x786F6274786574;
    v7 = 0xE700000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x70756F7267;
  if (a1 != 1)
  {
    v10 = 0x6567616D69;
    v9 = 0xE500000000000000;
  }

  if (!a1)
  {
    v10 = 0x697463656E6E6F63;
    v9 = 0xEE00656E694C6E6FLL;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xEF7265696669746ELL;
        if (v11 != 0x6564695F65707974)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x6E6F6973726576)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v2 = 0xE500000000000000;
      v13 = 1885431923;
      goto LABEL_29;
    }

    v2 = 0xE700000000000000;
    v3 = 0x786F6274786574;
    goto LABEL_32;
  }

  if (!a2)
  {
LABEL_32:
    if (v11 != v3)
    {
LABEL_36:
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_37;
    }

    goto LABEL_33;
  }

  v2 = 0xE500000000000000;
  if (a2 != 1)
  {
    v13 = 1734438249;
LABEL_29:
    if (v11 != (v13 & 0xFFFF0000FFFFFFFFLL | 0x6500000000))
    {
      goto LABEL_36;
    }

    goto LABEL_33;
  }

  if (v11 != 0x70756F7267)
  {
    goto LABEL_36;
  }

LABEL_33:
  if (v12 != v2)
  {
    goto LABEL_36;
  }

  v14 = 1;
LABEL_37:

  return v14 & 1;
}

uint64_t sub_100B5B5BC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 1684957547;
    }

    else
    {
      v3 = 0x6E6F697469736F70;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE600000000000000;
    v3 = 0x72656461656CLL;
  }

  else if (a1 == 3)
  {
    v3 = 0x6564695F65707974;
    v4 = 0xEF7265696669746ELL;
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x6E6F6973726576;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1684957547;
    }

    else
    {
      v9 = 0x6E6F697469736F70;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x6564695F65707974;
    v6 = 0xEF7265696669746ELL;
    if (a2 != 3)
    {
      v5 = 0x6E6F6973726576;
      v6 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x72656461656CLL;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_100B5B748(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7265746E6563;
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
      v4 = 0x6C616D69636564;
    }

    else
    {
      v4 = 0x7265746E6563;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0xE400000000000000;
  v8 = 1952867692;
  if (a2 != 2)
  {
    v8 = 0x7468676972;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x6C616D69636564;
    v6 = 0xE700000000000000;
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

uint64_t sub_100B5B870(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0x6564695F65707974;
  v5 = 0xEF7265696669746ELL;
  if (a1 != 5)
  {
    v4 = 0x6E6F6973726576;
    v5 = 0xE700000000000000;
  }

  v6 = 0x74657366666FLL;
  if (a1 != 3)
  {
    v6 = 0x737569646172;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x7974696361706FLL;
  if (a1 != 1)
  {
    v8 = 0x726F6C6F63;
    v7 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v8 = 0x656C676E61;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v11 = 0xE700000000000000;
        if (v9 != 0x7974696361706FLL)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v11 = 0xE500000000000000;
        if (v9 != 0x726F6C6F63)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v11 = 0xE500000000000000;
      if (v9 != 0x656C676E61)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xEF7265696669746ELL;
      if (v9 != 0x6564695F65707974)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xE700000000000000;
      if (v9 != 0x6E6F6973726576)
      {
LABEL_39:
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_40;
      }
    }
  }

  else
  {
    v11 = 0xE600000000000000;
    if (a2 == 3)
    {
      if (v9 != 0x74657366666FLL)
      {
        goto LABEL_39;
      }
    }

    else if (v9 != 0x737569646172)
    {
      goto LABEL_39;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_39;
  }

  v12 = 1;
LABEL_40:

  return v12 & 1;
}

uint64_t sub_100B5BA98(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0xD000000000000019;
  v4 = 0x6C61635377656976;
  v5 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0x4F746E65746E6F63;
    }

    else
    {
      v6 = 0x6C61635377656976;
    }

    if (v5)
    {
      v7 = 0xED00007465736666;
    }

    else
    {
      v7 = 0xE900000000000065;
    }
  }

  else if (a1 == 2)
  {
    v7 = 0x8000000101551700;
    v6 = 0xD00000000000001CLL;
  }

  else
  {
    if (a1 == 3)
    {
      v6 = 0xD000000000000021;
    }

    else
    {
      v6 = 0xD000000000000019;
    }

    if (v5 == 3)
    {
      v7 = 0x8000000101551720;
    }

    else
    {
      v7 = 0x8000000101551750;
    }
  }

  if (a2 <= 1u)
  {
    v3 = 0x4F746E65746E6F63;
    v8 = 0xED00007465736666;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x8000000101551700;
    v4 = 0xD00000000000001CLL;
    v8 = 0x8000000101551750;
    if (a2 == 3)
    {
      v3 = 0xD000000000000021;
      v8 = 0x8000000101551720;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v4;
  }

  else
  {
    v10 = v3;
  }

  if (v9)
  {
    v11 = v2;
  }

  else
  {
    v11 = v8;
  }

  if (v6 == v10 && v7 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

uint64_t sub_100B5BC1C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 5459817;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v3 = 0xE300000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE600000000000000;
    v4 = 0x534F64615069;
  }

  else if (a1 == 3)
  {
    v3 = 0xE500000000000000;
    v4 = 0x534F63616DLL;
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x534F6E6F69736976;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 5459817;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v6 = 0x534F63616DLL;
    if (a2 != 3)
    {
      v6 = 0x534F6E6F69736976;
      v5 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x534F64615069;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE600000000000000;
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

uint64_t sub_100B5BD88(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xE300000000000000;
  v5 = 6579570;
  if (a1 != 6)
  {
    v5 = 0x776F6C6C6579;
    v4 = 0xE600000000000000;
  }

  v6 = 0x65676E61726FLL;
  if (a1 != 4)
  {
    v6 = 0x656C70727570;
  }

  if (a1 <= 5u)
  {
    v5 = v6;
    v4 = 0xE600000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 2036429415;
  if (a1 != 2)
  {
    v8 = 0x6E65657267;
    v7 = 0xE500000000000000;
  }

  v9 = 1702194274;
  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v9 = 0x6B63616C62;
  }

  if (a1 > 1u)
  {
    v3 = v7;
  }

  else
  {
    v8 = v9;
  }

  if (a1 <= 3u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 3)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v12 = 0xE300000000000000;
        if (v10 != 6579570)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x776F6C6C6579)
        {
LABEL_45:
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_46;
        }
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (a2 == 4)
      {
        if (v10 != 0x65676E61726FLL)
        {
          goto LABEL_45;
        }
      }

      else if (v10 != 0x656C70727570)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v12 = 0xE400000000000000;
      if (v10 != 2036429415)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6E65657267)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v12 = 0xE400000000000000;
    if (v10 != 1702194274)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x6B63616C62)
    {
      goto LABEL_45;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_45;
  }

  v13 = 1;
LABEL_46:

  return v13 & 1;
}

uint64_t sub_100B5BFA4(uint64_t a1, int64_t a2, unint64_t a3, int64_t a4)
{
  v5 = a3;
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v8 = "com.apple.Freeform.system.font.light";
        goto LABEL_35;
      }

      v7 = 0x8000000101552030;
      v6 = 0xD000000000000026;
      if (a4 > 3)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (a2)
      {
        v6 = a1;
        v7 = a2;
        if (a2 != 1)
        {
          goto LABEL_24;
        }

        v9 = "com.apple.Freeform.system.font.thin";
LABEL_21:
        v7 = (v9 - 32) | 0x8000000000000000;
        v6 = 0xD000000000000023;
        if (a4 > 3)
        {
          goto LABEL_25;
        }

        goto LABEL_36;
      }

      v7 = 0x8000000101551FA0;
      v6 = 0xD000000000000029;
      if (a4 > 3)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
    if (a2 > 5)
    {
      if (a2 != 6)
      {
        if (a2 != 7)
        {
          v6 = a1;
          v7 = a2;
          if (a2 == 8)
          {
            v8 = "com.apple.Freeform.system.font.black";
            goto LABEL_35;
          }

LABEL_24:
          if (a4 <= 3)
          {
            goto LABEL_36;
          }

          goto LABEL_25;
        }

        v8 = "com.apple.Freeform.system.font.heavy";
LABEL_35:
        v7 = (v8 - 32) | 0x8000000000000000;
        v6 = 0xD000000000000024;
        if (a4 <= 3)
        {
          goto LABEL_36;
        }

LABEL_25:
        if (a4 <= 5)
        {
          if (a4 == 4)
          {
            v10 = 0x8000000101552060;
            a3 = 0xD000000000000025;
          }

          else
          {
            v10 = 0x8000000101552090;
            a3 = 0xD000000000000027;
          }

          goto LABEL_50;
        }

        if (a4 == 6)
        {
          v10 = 0x80000001015520C0;
          a3 = 0xD000000000000023;
          goto LABEL_50;
        }

        if (a4 == 7)
        {
          v11 = "com.apple.Freeform.system.font.heavy";
        }

        else
        {
          v10 = a4;
          if (a4 != 8)
          {
            goto LABEL_50;
          }

          v11 = "com.apple.Freeform.system.font.black";
        }

LABEL_49:
        v10 = (v11 - 32) | 0x8000000000000000;
        a3 = 0xD000000000000024;
        goto LABEL_50;
      }

      v9 = "com.apple.Freeform.system.font.bold";
      goto LABEL_21;
    }

    if (a2 == 4)
    {
      v7 = 0x8000000101552060;
      v6 = 0xD000000000000025;
      goto LABEL_24;
    }

    v7 = 0x8000000101552090;
    v6 = 0xD000000000000027;
    if (a4 > 3)
    {
      goto LABEL_25;
    }
  }

LABEL_36:
  if (a4 > 1)
  {
    if (a4 != 2)
    {
      v10 = 0x8000000101552030;
      a3 = 0xD000000000000026;
      goto LABEL_50;
    }

    v11 = "com.apple.Freeform.system.font.light";
    goto LABEL_49;
  }

  v12 = 0x8000000101551FD0;
  v13 = 0xD000000000000023;
  if (a4 != 1)
  {
    v13 = a3;
    v12 = a4;
  }

  if (a4)
  {
    a3 = v13;
  }

  else
  {
    a3 = 0xD000000000000029;
  }

  if (a4)
  {
    v10 = v12;
  }

  else
  {
    v10 = 0x8000000101551FA0;
  }

LABEL_50:
  if (v6 == a3 && v7 == v10)
  {
    v14 = 1;
  }

  else
  {
    v15 = a1;
    v16 = a2;
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2 = v16;
    v14 = v17;
    a1 = v15;
  }

  sub_100962394(a1, a2);
  sub_100962394(v5, a4);

  return v14 & 1;
}

uint64_t sub_100B5C2D4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x746E656D75636F64;
  v6 = 0x746E656D6D6F63;
  if (a1 != 4)
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = 0xE700000000000000;
  }

  v7 = 0x6570616873;
  if (a1 != 1)
  {
    v7 = 0x616964656DLL;
  }

  if (a1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v7 = 1954047348;
  }

  if (a1 <= 2u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  if (v2 <= 2)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v10 = 0xE800000000000000;
      if (v8 != 0x746E656D75636F64)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v10 = 0xE700000000000000;
      if (a2 == 4)
      {
        if (v8 != 0x746E656D6D6F63)
        {
          goto LABEL_34;
        }
      }

      else if (v8 != 0x6E776F6E6B6E75)
      {
LABEL_34:
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    v10 = 0xE500000000000000;
    if (a2 == 1)
    {
      if (v8 != 0x6570616873)
      {
        goto LABEL_34;
      }
    }

    else if (v8 != 0x616964656DLL)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v10 = 0xE400000000000000;
    if (v8 != 1954047348)
    {
      goto LABEL_34;
    }
  }

  if (v9 != v10)
  {
    goto LABEL_34;
  }

  v11 = 1;
LABEL_35:

  return v11 & 1;
}

uint64_t *TSContentLanguage.Models.Fill.version.unsafeMutableAddressor()
{
  if (qword_1019F1D70 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Fill.version;
}

double TSContentLanguage.Models.Fill.init(color:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100810AD0(a1, v6);
  v3 = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v3;
  *(a2 + 81) = 0;
  return result;
}

__n128 TSContentLanguage.Models.Fill.init(gradient:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v6.n128_u8[0] = *(a1 + 64);
  v5 = a1[3];
  v2 = *a1;
  v4 = a1[1];
  *(a2 + 32) = a1[2];
  *(a2 + 48) = v5;
  *(a2 + 80) = v7;
  *a2 = v2;
  *(a2 + 16) = v4;
  result = v6;
  *(a2 + 64) = v6;
  *(a2 + 81) = 1;
  return result;
}

__n128 TSContentLanguage.Models.Fill.init(image:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = *(a1 + 80);
  result = *a1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 81) = 2;
  return result;
}

__n128 TSContentLanguage.Models.Fill.init<A>(object:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_dynamicCast())
  {
    v9 = 0;
    v10 = 0;
    v14 = v17;
    v15 = v16;
    v11 = v18;
  }

  else if (swift_dynamicCast())
  {
    v14 = v17;
    v15 = v16;
    v11 = v18;
    v13 = v19;
    v3 = v20;
    v4 = v21;
    v10 = v18 & 0xFFFFFFFFFFFFFF00;
    v9 = 256;
  }

  else if (swift_dynamicCast())
  {
    v14 = v17;
    v15 = v16;
    v11 = v18;
    v13 = v19;
    v3 = v20;
    v4 = v21;
    v5 = v22;
    v10 = v18 & 0xFFFFFFFFFFFFFF00;
    v9 = v23 | 0x200;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v11 = 0;
    v10 = 0;
    v14 = 0u;
    v15 = 0u;
    v9 = -256;
    v13 = 0u;
  }

  (*(*(a2 - 8) + 8))(a1, a2);
  *a3 = v15;
  *(a3 + 16) = v14;
  *(a3 + 32) = v10 | v11;
  result = v13;
  *(a3 + 40) = v13;
  *(a3 + 56) = v3;
  *(a3 + 64) = v4;
  *(a3 + 72) = v5;
  *(a3 + 80) = v9;
  return result;
}

Swift::Int sub_100B5C7B4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100B5C89C()
{
  String.hash(into:)();
}

Swift::Int sub_100B5C970()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100B5CA54@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100B63A88(*a1);
  *a2 = result;
  return result;
}

void sub_100B5CA84(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x726F6C6F63;
  v5 = 0xE500000000000000;
  v6 = 0x6567616D69;
  v7 = 0xEF7265696669746ELL;
  v8 = 0x6564695F65707974;
  if (v2 != 3)
  {
    v8 = 0x6E6F6973726576;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x746E656964617267;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_100B5CB28()
{
  v1 = *v0;
  v2 = 0x726F6C6F63;
  v3 = 0x6567616D69;
  v4 = 0x6564695F65707974;
  if (v1 != 3)
  {
    v4 = 0x6E6F6973726576;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x746E656964617267;
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

unint64_t sub_100B5CBC8@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100B63A88(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100B5CBF0(uint64_t a1)
{
  v2 = sub_100B6458C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B5CC2C(uint64_t a1)
{
  v2 = sub_100B6458C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double TSContentLanguage.Models.Fill.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100B63AD4(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t TSContentLanguage.Models.Fill.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A126B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v22[-v10];
  __chkstk_darwin(v12);
  v14 = &v22[-v13];
  v31 = *(v3 + 40);
  v15 = v3[3];
  v30[2] = v3[2];
  v30[3] = v15;
  v30[4] = v3[4];
  v16 = v3[1];
  v30[0] = *v3;
  v30[1] = v16;
  if (HIBYTE(v31))
  {
    if (HIBYTE(v31) == 1)
    {
      sub_100020E58(a1, a1[3]);
      sub_100B6458C();
      dispatch thunk of Encoder.container<A>(keyedBy:)();
      v17 = v3[3];
      v26 = v3[2];
      v27 = v17;
      LOBYTE(v28) = *(v3 + 64);
      v18 = *v3;
      v25 = v3[1];
      v24 = v18;
      v23 = 1;
      sub_100B64634();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v2)
      {
        return (*(v6 + 8))(v11, v5);
      }

      else
      {
        LOBYTE(v24) = 3;
        KeyedEncodingContainer.encode(_:forKey:)();
        if (qword_1019F1D70 != -1)
        {
          swift_once();
        }

        *&v24 = static TSContentLanguage.Models.Fill.version;
        v23 = 4;
        type metadata accessor for TSCLVersion();
        sub_100969804(&qword_101A00458);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        return (*(v6 + 8))(v11, v5);
      }
    }

    else
    {
      sub_100020E58(a1, a1[3]);
      sub_100B6458C();
      dispatch thunk of Encoder.container<A>(keyedBy:)();
      v20 = v3[3];
      v26 = v3[2];
      v27 = v20;
      v28 = v3[4];
      v29 = *(v3 + 80);
      v21 = v3[1];
      v24 = *v3;
      v25 = v21;
      v23 = 2;
      sub_100B645E0();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v2)
      {
        return (*(v6 + 8))(v8, v5);
      }

      else
      {
        LOBYTE(v24) = 3;
        KeyedEncodingContainer.encode(_:forKey:)();
        if (qword_1019F1D70 != -1)
        {
          swift_once();
        }

        *&v24 = static TSContentLanguage.Models.Fill.version;
        v23 = 4;
        type metadata accessor for TSCLVersion();
        sub_100969804(&qword_101A00458);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        return (*(v6 + 8))(v8, v5);
      }
    }
  }

  else
  {
    sub_100810AD0(v30, v32);
    sub_100020E58(a1, a1[3]);
    sub_100B6458C();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    sub_100810AD0(v32, &v24);
    v23 = 0;
    sub_100B64688();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v2)
    {
      return (*(v6 + 8))(v14, v5);
    }

    else
    {
      LOBYTE(v24) = 3;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (qword_1019F1D70 != -1)
      {
        swift_once();
      }

      *&v24 = static TSContentLanguage.Models.Fill.version;
      v23 = 4;
      type metadata accessor for TSCLVersion();
      sub_100969804(&qword_101A00458);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      return (*(v6 + 8))(v14, v5);
    }
  }
}

uint64_t sub_100B5D318(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return _s8Freeform17TSContentLanguageO6ModelsO4FillO21__derived_enum_equalsySbAG_AGtFZ_0(v7, v9) & 1;
}

uint64_t *TSContentLanguage.Models.Fill.Gradient.version.unsafeMutableAddressor()
{
  if (qword_1019F1D78 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Fill.Gradient.version;
}

__n128 TSContentLanguage.Models.Fill.Gradient.flavor.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v3;
  result = *(v1 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v2;
  return result;
}

__n128 TSContentLanguage.Models.Fill.Gradient.flavor.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v2;
  result = *(a1 + 32);
  *(v1 + 48) = result;
  *(v1 + 64) = *(a1 + 48);
  return result;
}

uint64_t TSContentLanguage.Models.Fill.Gradient.init(stops:opacity:flavor:)@<X0>(uint64_t result@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v19[0] = result;
  *&v19[1] = a4;
  v4 = a2[1];
  v20 = *a2;
  v21 = v4;
  v22 = a2[2];
  v23 = *(a2 + 48);
  if (a4 < 0.0 || a4 > 1.0)
  {
    v14[0] = result;
    *&v14[1] = a4;
    v6 = a2[1];
    v15 = *a2;
    v16 = v6;
    v17 = a2[2];
    v18 = *(a2 + 48);
    sub_100B646DC(v19, &v11);
    sub_100810B80(v14);
    v12 = sub_1005B981C(&qword_101A02780);
    v13 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v11 = xmmword_101463BB0;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v8 = swift_allocError();
    *(v9 + 40) = a4;
    sub_100050F74(&v11, v9);
    swift_willThrow();
    sub_100810B2C();
    swift_allocError();
    *v10 = 0x7974696361706FLL;
    v10[1] = 0xE700000000000000;
    v10[2] = v8;
    swift_willThrow();
    return sub_100810B80(v19);
  }

  else
  {
    *a3 = result;
    *(a3 + 8) = a4;
    v5 = a2[1];
    *(a3 + 16) = *a2;
    *(a3 + 32) = v5;
    *(a3 + 48) = a2[2];
    *(a3 + 64) = *(a2 + 48);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TSContentLanguage.Models.Fill.Gradient.validate()()
{
  v1 = *(v0 + 8);
  if (v1 < 0.0 || v1 > 1.0)
  {
    v7 = sub_1005B981C(&qword_101A02780);
    v8 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v6 = xmmword_101463BB0;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v3 = swift_allocError();
    *(v4 + 40) = v1;
    sub_100050F74(&v6, v4);
    swift_willThrow();
    sub_100810B2C();
    swift_allocError();
    *v5 = 0x7974696361706FLL;
    v5[1] = 0xE700000000000000;
    v5[2] = v3;
    swift_willThrow();
  }
}

Swift::Int sub_100B5D7CC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100B5D8B4()
{
  String.hash(into:)();
}

Swift::Int sub_100B5D988()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100B5DA6C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100B64714(*a1);
  *a2 = result;
  return result;
}

void sub_100B5DA9C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x73706F7473;
  v5 = 0xE600000000000000;
  v6 = 0x726F76616C66;
  v7 = 0xEF7265696669746ELL;
  v8 = 0x6564695F65707974;
  if (v2 != 3)
  {
    v8 = 0x6E6F6973726576;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7974696361706FLL;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_100B5DB40()
{
  v1 = *v0;
  v2 = 0x73706F7473;
  v3 = 0x726F76616C66;
  v4 = 0x6564695F65707974;
  if (v1 != 3)
  {
    v4 = 0x6E6F6973726576;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7974696361706FLL;
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

unint64_t sub_100B5DBE0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100B64714(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100B5DC08(uint64_t a1)
{
  v2 = sub_100B65244();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B5DC44(uint64_t a1)
{
  v2 = sub_100B65244();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 TSContentLanguage.Models.Fill.Gradient.init(from:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100B64760(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t TSContentLanguage.Models.Fill.Gradient.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A126D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100B65244();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v11[0] = *v3;
  v13 = 0;
  sub_1005B981C(&qword_101A008D0);
  sub_100B65298();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v11[0]) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v10 = *(v3 + 32);
  v11[0] = *(v3 + 16);
  v11[1] = v10;
  v11[2] = *(v3 + 48);
  v12 = *(v3 + 64);
  v13 = 2;
  sub_100B65370();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v11[0]) = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (qword_1019F1D78 != -1)
  {
    swift_once();
  }

  *&v11[0] = static TSContentLanguage.Models.Fill.Gradient.version;
  v13 = 4;
  type metadata accessor for TSCLVersion();
  sub_100969804(&qword_101A00458);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t TSContentLanguage.Models.Fill.Gradient.isEquivalent(to:)(uint64_t a1)
{
  if (sub_100B5E85C(*a1, *v1))
  {
    v3 = sub_1007C87EC(*(v1 + 8), *(a1 + 8));
    if (v3)
    {
      v4 = *(v1 + 32);
      v9 = *(v1 + 16);
      v10 = v4;
      v11 = *(v1 + 48);
      v12 = *(v1 + 64);
      v5 = *(a1 + 32);
      v7[0] = *(a1 + 16);
      v7[1] = v5;
      v7[2] = *(a1 + 48);
      v8 = *(a1 + 64);
      LOBYTE(v3) = sub_100B1BDA8(v7);
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

uint64_t sub_100B5E04C(uint64_t a1, uint64_t a2)
{
  v7 = *(a2 + 16);
  v8 = *(a1 + 16);
  if (v7 != v8)
  {
    return 0;
  }

  if (!v7)
  {
    return 1;
  }

  v46 = v5;
  v47 = v6;
  *&v44[936] = v8;
  v45 = v2;
  *&v44[920] = v3;
  *&v44[928] = v4;
  __chkstk_darwin(a1);
  v10 = (v9 + 32);
  v12 = (v11 + 32);
  for (i = v13 - 1; ; --i)
  {
    memcpy(v39, v10, 0x3BDuLL);
    memcpy(v40, v12, 0x3BDuLL);
    v15 = v39[0] == v40[0] && v39[1] == v40[1];
    if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      break;
    }

    memcpy(v37, &v39[2], 0x3ADuLL);
    memcpy(&v37[944], &v40[2], 0x3ADuLL);
    memcpy(v38, &v39[2], 0x3ADuLL);
    if (sub_10067EF0C(v38) != 1)
    {
      memcpy(v35, v37, 0x3ADuLL);
      memcpy(v36, &v37[944], 0x3ADuLL);
      if (sub_10067EF0C(v36) == 1)
      {
LABEL_28:
        memcpy(v34, v37, 0x75DuLL);
        sub_100B698C4(&v39[2], v36);
        sub_100B698C4(&v40[2], v36);
        sub_10000CAAC(v34, &unk_1019F6F20);
        return 0;
      }

      memcpy(__dst, v35, 0x3ADuLL);
      memcpy(v32, &v37[944], 0x3ADuLL);
      v16 = sub_10067EF20(__dst);
      if (v16)
      {
        if (v16 == 1)
        {
          v19 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(__dst, *&v17);
          memcpy(v43, v19, 0x3ACuLL);
          memcpy(v31, &v37[944], 0x3ADuLL);
          if (sub_10067EF20(v31) != 1)
          {
            goto LABEL_30;
          }

          v22 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v31, *&v20);
          memcpy(v44, v22, 0x3ACuLL);
          sub_10067EF38(v39, v34);
          sub_10067EF38(v40, v34);
          sub_100B698C4(&v39[2], v34);
          sub_100B698C4(&v40[2], v34);
          sub_100B698C4(v35, v34);
          v23 = _s8Freeform17TSContentLanguageO6ModelsO22ScaffoldCharacterStyleV23__derived_struct_equalsySbAG_AGtFZ_0(v43);
          goto LABEL_19;
        }

        memcpy(v31, &v37[944], 0x3ADuLL);
        if (sub_10067EF20(v31) != 2)
        {
          sub_10067EF38(v39, v34);
          sub_10067EF38(v40, v34);
          sub_100B698C4(&v39[2], v34);
          sub_100B698C4(&v40[2], v34);
          v30 = v35;
          goto LABEL_32;
        }

        sub_10067EF38(v39, v34);
        sub_10067EF38(v40, v34);
        sub_100B698C4(&v39[2], v34);
        sub_100B698C4(&v40[2], v34);
        sub_100B698C4(v35, v34);
      }

      else
      {
        v24 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(__dst, *&v17);
        memcpy(v41, v24, 0x37CuLL);
        memcpy(v31, &v37[944], 0x3ADuLL);
        if (sub_10067EF20(v31))
        {
LABEL_30:
          sub_10067EF38(v39, v34);
          sub_10067EF38(v40, v34);
          sub_100B698C4(&v39[2], v34);
          v30 = &v40[2];
LABEL_32:
          sub_100B698C4(v30, v34);
          sub_10000CAAC(v32, &qword_1019F6F18);
LABEL_33:
          memcpy(v34, v37, 0x3ADuLL);
          sub_10000CAAC(v34, &qword_1019F6F18);
          sub_10067EF94(v40);
          sub_10067EF94(v39);
          return 0;
        }

        v27 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v31, *&v25);
        memcpy(v42, v27, sizeof(v42));
        sub_10067EF38(v39, v34);
        sub_10067EF38(v40, v34);
        sub_100B698C4(&v39[2], v34);
        sub_100B698C4(&v40[2], v34);
        sub_100B698C4(v35, v34);
        v23 = _s8Freeform17TSContentLanguageO6ModelsO19CharacterPropertiesV23__derived_struct_equalsySbAG_AGtFZ_0(v41);
LABEL_19:
        v28 = v23;
        sub_10000CAAC(v35, &qword_1019F6F18);
        sub_10000CAAC(v32, &qword_1019F6F18);
        if (!v28)
        {
          goto LABEL_33;
        }
      }

      memcpy(v34, v37, 0x3ADuLL);
      sub_10000CAAC(v34, &qword_1019F6F18);
      sub_10067EF94(v40);
      goto LABEL_24;
    }

    memcpy(v36, &v37[944], 0x3ADuLL);
    if (sub_10067EF0C(v36) != 1)
    {
      goto LABEL_28;
    }

    memcpy(v35, v37, 0x3ADuLL);
    sub_10067EF38(v39, v34);
    sub_100B698C4(&v39[2], v34);
    sub_100B698C4(&v40[2], v34);
    sub_10000CAAC(v35, &qword_1019F6F18);
LABEL_24:
    sub_10067EF94(v39);
    if (!i)
    {
      return 1;
    }

    v12 += 960;
    v10 += 960;
  }

  return 0;
}

uint64_t sub_100B5E638(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 != *(a1 + 16))
  {
    return 0;
  }

  if (v2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v3 - 2);
      if (*v4)
      {
        if ((*v3 & 1) == 0 || !sub_1007C87EC(*&v5, *&v6))
        {
          return 0;
        }
      }

      else
      {
        if (*v3)
        {
          return 0;
        }

        v7 = v5 == v6 && *(v4 - 1) == *(v3 - 1);
        if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 24;
      v4 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

BOOL sub_100B5E6F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TSContentLanguage.Models.CanvasObject();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = *(a2 + 16);
  if (v11 != *(a1 + 16))
  {
    return 0;
  }

  v12 = 0;
  do
  {
    v13 = v11 == v12;
    if (v11 == v12)
    {
      break;
    }

    v14 = v12 + 1;
    v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v16 = *(v5 + 72) * v12;
    sub_10069980C(a2 + v15 + v16, v10);
    sub_10069980C(a1 + v15 + v16, v7);
    LOBYTE(v15) = _s8Freeform17TSContentLanguageO6ModelsO12CanvasObjectO21__derived_enum_equalsySbAG_AGtFZ_0(v10, v7);
    sub_100699870(v7);
    sub_100699870(v10);
    v12 = v14;
  }

  while ((v15 & 1) != 0);
  return v13;
}

BOOL sub_100B5E85C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 != *(a1 + 16))
  {
    return 0;
  }

  v3 = (a2 + 80);
  v4 = v2 + 1;
  v5 = (a1 + 80);
  do
  {
    v6 = --v4 == 0;
    if (!v4 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3[-3], v5[-3]), vceqq_f64(v3[-2], v5[-2])))) & 1) == 0)
    {
      break;
    }

    v8 = v3[-1].f64[1];
    v7 = v3->f64[0];
    v10 = v5[-1].f64[1];
    v9 = v5->f64[0];
    v11 = LOBYTE(v3[-1].f64[0]) ? 1650946675 : 13168;
    v12 = LOBYTE(v3[-1].f64[0]) ? 0xE400000000000000 : 0xE200000000000000;
    v13 = LOBYTE(v5[-1].f64[0]) ? 1650946675 : 13168;
    v14 = LOBYTE(v5[-1].f64[0]) ? 0xE400000000000000 : 0xE200000000000000;
    if (v11 == v13 && v12 == v14)
    {
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
      {
        return v6;
      }
    }

    if (!sub_1007C87EC(v8, v10))
    {
      break;
    }

    v3 = (v3 + 56);
    v5 = (v5 + 56);
  }

  while (sub_1007C87EC(v7, v9));
  return v6;
}

uint64_t sub_100B5E9AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 != *(a1 + 16))
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = (a1 + 56);
  for (i = (a2 + 56); ; i += 4)
  {
    v5 = *(i - 16);
    v7 = *(i - 1);
    v6 = *i;
    v8 = *(v3 - 16);
    v10 = *(v3 - 1);
    v9 = *v3;
    v11 = sub_1007C87EC(*(i - 3), *(v3 - 3));

    if (!v11)
    {
      break;
    }

    if (v5 == 4)
    {
      if (v8 != 4)
      {
        break;
      }

      goto LABEL_33;
    }

    if (v8 == 4)
    {
      break;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v12 = 0xE400000000000000;
        v13 = 1952867692;
        if (v8 <= 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v12 = 0xE500000000000000;
        v13 = 0x7468676972;
        if (v8 <= 1)
        {
LABEL_23:
          if (v8)
          {
            v14 = 0xE700000000000000;
            if (v13 == 0x6C616D69636564)
            {
LABEL_29:
              if (v12 == v14)
              {

                if (v6 == 0.0)
                {
                  goto LABEL_4;
                }

                goto LABEL_34;
              }

              goto LABEL_32;
            }
          }

          else
          {
            v14 = 0xE600000000000000;
            if (v13 == 0x7265746E6563)
            {
              goto LABEL_29;
            }
          }

          goto LABEL_32;
        }
      }
    }

    else if (v5)
    {
      v12 = 0xE700000000000000;
      v13 = 0x6C616D69636564;
      if (v8 <= 1)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      v13 = 0x7265746E6563;
      if (v8 <= 1)
      {
        goto LABEL_23;
      }
    }

    if (v8 == 2)
    {
      v14 = 0xE400000000000000;
      if (v13 == 1952867692)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v14 = 0xE500000000000000;
      if (v13 == 0x7468676972)
      {
        goto LABEL_29;
      }
    }

LABEL_32:
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      break;
    }

LABEL_33:
    if (v6 == 0.0)
    {
LABEL_4:
      if (v9 != 0.0)
      {
        goto LABEL_42;
      }

      goto LABEL_5;
    }

LABEL_34:
    if (v9 == 0.0)
    {
      goto LABEL_42;
    }

    if (v7 == v10 && *&v6 == *&v9)
    {
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }

LABEL_5:
    v3 += 4;
    if (!--v2)
    {
      return 1;
    }
  }

LABEL_42:

  return 0;
}

BOOL sub_100B5EC34(int64x2_t *a1, int64x2_t *a2)
{
  v2 = a2[1].i64[0];
  if (v2 != a1[1].i64[0])
  {
    return 0;
  }

  v3 = a2 + 2;
  v4 = a1 + 2;
  do
  {
    result = v2 == 0;
    if (!v2)
    {
      break;
    }

    v6 = *v3++;
    v7 = v6;
    v8 = *v4++;
    *v7.i8 = vmovn_s64(vceqq_s64(v7, v8));
    --v2;
  }

  while ((v7.i32[0] & v7.i32[1] & 1) != 0);
  return result;
}

uint64_t sub_100B5EC88(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 + 16);
  if (v6 != *(a1 + 16))
  {
    return 0;
  }

  if (!v6)
  {
    return 1;
  }

  v36 = v5;
  v37 = v4;
  v38 = v2;
  v39 = v3;
  v7 = (a2 + 32);
  v8 = (a1 + 32);
  for (i = v6 - 1; ; --i)
  {
    v10 = v7[2];
    v11 = v7[4];
    v23 = v7[3];
    v24 = v11;
    v25 = *(v7 + 80);
    v12 = v7[1];
    v20 = *v7;
    v21 = v12;
    v22 = v10;
    v13 = v8[3];
    v28 = v8[2];
    v29 = v13;
    v30 = v8[4];
    v31 = *(v8 + 80);
    v14 = v8[1];
    v26 = *v8;
    v27 = v14;
    v15 = *&v26;
    v16 = *&v20;
    sub_10067EFE8(&v20, v19);
    sub_10067EFE8(&v26, v19);
    if (!sub_1007C87EC(v16, v15) || !sub_1007C87EC(*(&v20 + 1), *(&v26 + 1)))
    {
      sub_10067F044(&v26);
      sub_10067F044(&v20);
      return 0;
    }

    v34[2] = v29;
    v34[3] = v30;
    v35 = v31;
    v34[0] = v27;
    v34[1] = v28;
    v32[2] = v23;
    v32[3] = v24;
    v33 = v25;
    v32[0] = v21;
    v32[1] = v22;
    v17 = _s8Freeform17TSContentLanguageO6ModelsO13ListLabelTypeO21__derived_enum_equalsySbAG_AGtFZ_0(v32, v34);
    sub_10067F044(&v26);
    sub_10067F044(&v20);
    if (!v17)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v8 = (v8 + 88);
    v7 = (v7 + 88);
  }

  return 1;
}

BOOL sub_100B5EE10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 != *(a1 + 16))
  {
    return 0;
  }

  v3 = (a2 + 32);
  v4 = (a1 + 32);
  do
  {
    v5 = v2 == 0;
    if (!v2)
    {
      break;
    }

    v6 = *v3++;
    v7 = v6;
    v8 = *v4++;
    --v2;
  }

  while (sub_1007C87EC(v7, v8));
  return v5;
}

BOOL sub_100B5EEB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return _s8Freeform17TSContentLanguageO6ModelsO4FillO8GradientV23__derived_struct_equalsySbAI_AItFZ_0(v7, v9);
}

uint64_t sub_100B5EF14(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 32);
  v10[0] = *(a1 + 16);
  v10[1] = v4;
  v10[2] = *(a1 + 48);
  v11 = *(a1 + 64);
  v5 = *v1;
  v6 = *(v1 + 8);
  v15 = *(v1 + 64);
  v7 = *(v1 + 48);
  v13 = *(v1 + 32);
  v14 = v7;
  v12 = *(v1 + 16);
  if (sub_100B5E85C(v2, v5))
  {
    v8 = sub_1007C87EC(v6, v3);
    if (v8)
    {
      LOBYTE(v8) = sub_100B1BDA8(v10);
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t *TSContentLanguage.Models.Fill.Gradient.Stop.version.unsafeMutableAddressor()
{
  if (qword_1019F1D80 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Fill.Gradient.Stop.version;
}

__n128 TSContentLanguage.Models.Stroke.Line.color.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t TSContentLanguage.Models.Fill.Gradient.Stop.init(color:fraction:inflection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  result = sub_100810AD0(a1, v21);
  v23 = a3;
  v24 = a4;
  if (a3 < 0.0 || a3 > 1.0)
  {
    v19 = sub_1005B981C(&qword_101A02780);
    v20 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v18 = xmmword_101463BB0;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v9 = swift_allocError();
    *(v10 + 40) = a3;
    sub_100050F74(&v18, v10);
    v11 = 0xE800000000000000;
    v12 = 0x6E6F697463617266;
  }

  else
  {
    if (a4 >= 0.0 && a4 <= 1.0)
    {
      v16 = v22;
      v17 = v21[1];
      *a2 = v21[0];
      *(a2 + 16) = v17;
      *(a2 + 32) = v16;
      *(a2 + 40) = a3;
      *(a2 + 48) = a4;
      return result;
    }

    v19 = sub_1005B981C(&qword_101A02780);
    v20 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v18 = xmmword_101463BB0;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v9 = swift_allocError();
    *(v14 + 40) = a4;
    sub_100050F74(&v18, v14);
    v11 = 0xEA00000000006E6FLL;
    v12 = 0x697463656C666E69;
  }

  swift_willThrow();
  sub_100810B2C();
  swift_allocError();
  *v15 = v12;
  v15[1] = v11;
  v15[2] = v9;
  return swift_willThrow();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TSContentLanguage.Models.Fill.Gradient.Stop.validate()()
{
  v1 = *(v0 + 40);
  if (v1 < 0.0 || v1 > 1.0)
  {
    v12 = sub_1005B981C(&qword_101A02780);
    v13 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v11 = xmmword_101463BB0;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v3 = swift_allocError();
    *(v4 + 40) = v1;
    sub_100050F74(&v11, v4);
    v5 = 0xE800000000000000;
    v6 = 0x6E6F697463617266;
LABEL_13:
    swift_willThrow();
    sub_100810B2C();
    swift_allocError();
    *v10 = v6;
    v10[1] = v5;
    v10[2] = v3;
    swift_willThrow();
    return;
  }

  v7 = *(v0 + 48);
  if (v7 < 0.0 || v7 > 1.0)
  {
    v12 = sub_1005B981C(&qword_101A02780);
    v13 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v11 = xmmword_101463BB0;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v3 = swift_allocError();
    *(v9 + 40) = v7;
    sub_100050F74(&v11, v9);
    v5 = 0xEA00000000006E6FLL;
    v6 = 0x697463656C666E69;
    goto LABEL_13;
  }
}

Swift::Int sub_100B5F580()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100B5F670()
{
  String.hash(into:)();
}

Swift::Int sub_100B5F74C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100B5F838@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100B653C4(*a1);
  *a2 = result;
  return result;
}

void sub_100B5F868(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x726F6C6F63;
  v5 = 0xEA00000000006E6FLL;
  v6 = 0x697463656C666E69;
  v7 = 0xEF7265696669746ELL;
  v8 = 0x6564695F65707974;
  if (v2 != 3)
  {
    v8 = 0x6E6F6973726576;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6E6F697463617266;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_100B5F914()
{
  v1 = *v0;
  v2 = 0x726F6C6F63;
  v3 = 0x697463656C666E69;
  v4 = 0x6564695F65707974;
  if (v1 != 3)
  {
    v4 = 0x6E6F6973726576;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E6F697463617266;
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

unint64_t sub_100B5F9BC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100B653C4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100B5F9E4(uint64_t a1)
{
  v2 = sub_100B66044();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B5FA20(uint64_t a1)
{
  v2 = sub_100B66044();

  return CodingKey.debugDescription.getter(a1, v2);
}

double TSContentLanguage.Models.Fill.Gradient.Stop.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100B65410(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t TSContentLanguage.Models.Fill.Gradient.Stop.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A12700);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100B66044();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100810AD0(v3, v13);
  sub_100810AD0(v13, v12);
  v11 = 0;
  sub_100B64688();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v12[0]) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v12[0]) = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v12[0]) = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (qword_1019F1D80 != -1)
  {
    swift_once();
  }

  v12[0] = static TSContentLanguage.Models.Fill.Gradient.Stop.version;
  v11 = 4;
  type metadata accessor for TSCLVersion();
  sub_100969804(&qword_101A00458);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

BOOL TSContentLanguage.Models.Fill.Gradient.Stop.isEquivalent(to:)(uint64_t a1)
{
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v1, *a1), vceqq_f64(*(v1 + 16), *(a1 + 16))))) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 32);
  if (*(v1 + 32))
  {
    v5 = 1650946675;
  }

  else
  {
    v5 = 13168;
  }

  if (*(v1 + 32))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v4)
  {
    v7 = 1650946675;
  }

  else
  {
    v7 = 13168;
  }

  if (v4)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE200000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  result = sub_1007C87EC(*(v1 + 40), *(a1 + 40));
  if (result)
  {
    return sub_1007C87EC(*(v1 + 48), *(a1 + 48));
  }

  return result;
}

BOOL sub_100B5FEA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s8Freeform17TSContentLanguageO6ModelsO4FillO8GradientV4StopV23__derived_struct_equalsySbAK_AKtFZ_0(v5, v7);
}

uint64_t *TSContentLanguage.Models.Fill.Gradient.Flavor.version.unsafeMutableAddressor()
{
  if (qword_1019F1D88 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Fill.Gradient.Flavor.version;
}

double TSContentLanguage.Models.Fill.Gradient.Flavor.init(linear:)@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 33) = 0u;
  return result;
}

__n128 TSContentLanguage.Models.Fill.Gradient.Flavor.init(radial:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = 1;
  return result;
}

__n128 TSContentLanguage.Models.Fill.Gradient.Flavor.init<A>(object:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_dynamicCast())
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v6.n128_u64[0] = v14.n128_u64[0];
    v13 = v6;
    v10 = 0uLL;
LABEL_6:
    v12 = v10;
    goto LABEL_7;
  }

  if (!swift_dynamicCast())
  {
    v7 = 0;
    v8 = 0;
    v10 = 0uLL;
    v13 = 0u;
    v9 = -1;
    goto LABEL_6;
  }

  v12 = v15;
  v13 = v14;
  v9 = 1;
  v7 = v16;
  v8 = v17;
LABEL_7:
  (*(*(a2 - 8) + 8))(a1, a2);
  result = v13;
  *a3 = v13;
  *(a3 + 16) = v12;
  *(a3 + 32) = v7;
  *(a3 + 40) = v8;
  *(a3 + 48) = v9;
  return result;
}

Swift::Int sub_100B600F0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100B601B8()
{
  String.hash(into:)();
}

Swift::Int sub_100B6026C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100B60330@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100B66098(*a1);
  *a2 = result;
  return result;
}

void sub_100B60360(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x7261656E696CLL;
  v4 = 0xEF7265696669746ELL;
  v5 = 0x6564695F65707974;
  if (*v1 != 2)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x6C6169646172;
    v2 = 0xE600000000000000;
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

uint64_t sub_100B603E4()
{
  v1 = 0x7261656E696CLL;
  v2 = 0x6564695F65707974;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v1 = 0x6C6169646172;
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

unint64_t sub_100B60464@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100B66098(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100B6048C(uint64_t a1)
{
  v2 = sub_100B665EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B604C8(uint64_t a1)
{
  v2 = sub_100B665EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double TSContentLanguage.Models.Fill.Gradient.Flavor.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100B660E4(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t TSContentLanguage.Models.Fill.Gradient.Flavor.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A12710);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v14 - v10;
  v12 = *v3;
  if (*(v3 + 48))
  {
    sub_100020E58(a1, a1[3]);
    sub_100B665EC();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v14 = v12;
    v15 = *(v3 + 8);
    v16 = *(v3 + 24);
    v17 = *(v3 + 40);
    v18 = 1;
    sub_100B66640();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v2)
    {
      return (*(v6 + 8))(v8, v5);
    }

    else
    {
      LOBYTE(v14) = 2;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (qword_1019F1D88 != -1)
      {
        swift_once();
      }

      v14 = static TSContentLanguage.Models.Fill.Gradient.Flavor.version;
      v18 = 3;
      type metadata accessor for TSCLVersion();
      sub_100969804(&qword_101A00458);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      return (*(v6 + 8))(v8, v5);
    }
  }

  else
  {
    sub_100020E58(a1, a1[3]);
    sub_100B665EC();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v14 = v12;
    v18 = 0;
    sub_100B66694();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v2)
    {
      return (*(v6 + 8))(v11, v5);
    }

    else
    {
      LOBYTE(v14) = 2;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (qword_1019F1D88 != -1)
      {
        swift_once();
      }

      v14 = static TSContentLanguage.Models.Fill.Gradient.Flavor.version;
      v18 = 3;
      type metadata accessor for TSCLVersion();
      sub_100969804(&qword_101A00458);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      return (*(v6 + 8))(v11, v5);
    }
  }
}

uint64_t sub_100B609F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s8Freeform17TSContentLanguageO6ModelsO4FillO8GradientV6FlavorO21__derived_enum_equalsySbAK_AKtFZ_0(v5, v7) & 1;
}

uint64_t *TSContentLanguage.Models.Fill.Gradient.Flavor.Linear.version.unsafeMutableAddressor()
{
  if (qword_1019F1D90 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Fill.Gradient.Flavor.Linear.version;
}

double TSContentLanguage.Models.Fill.Gradient.Flavor.Linear.init(angle:)(double a1)
{
  if (a1 < 0.0 || a1 > 360.0)
  {
    v8 = sub_1005B981C(&qword_101A02780);
    v9 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v7 = xmmword_10147F9B0;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v3 = swift_allocError();
    *(v4 + 40) = a1;
    sub_100050F74(&v7, v4);
    swift_willThrow();
    sub_100810B2C();
    swift_allocError();
    *v5 = 0x656C676E61;
    v5[1] = 0xE500000000000000;
    v5[2] = v3;
    swift_willThrow();
  }

  return a1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TSContentLanguage.Models.Fill.Gradient.Flavor.Linear.validate()()
{
  v1 = v0;
  if (v0 < 0.0 || v0 > 360.0)
  {
    v7 = sub_1005B981C(&qword_101A02780);
    v8 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v6 = xmmword_10147F9B0;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v3 = swift_allocError();
    *(v4 + 40) = v1;
    sub_100050F74(&v6, v4);
    swift_willThrow();
    sub_100810B2C();
    swift_allocError();
    *v5 = 0x656C676E61;
    v5[1] = 0xE500000000000000;
    v5[2] = v3;
    swift_willThrow();
  }
}

uint64_t sub_100B60DB8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6564695F65707974;
  v4 = 0xEF7265696669746ELL;
  if (v2 != 1)
  {
    v3 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656C676E61;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x6564695F65707974;
  v8 = 0xEF7265696669746ELL;
  if (*a2 != 1)
  {
    v7 = 0x6E6F6973726576;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x656C676E61;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE500000000000000;
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

Swift::Int sub_100B60ED0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100B60F7C()
{
  String.hash(into:)();
}

Swift::Int sub_100B61014()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100B610BC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100B666E8(*a1);
  *a2 = result;
  return result;
}

void sub_100B610EC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xEF7265696669746ELL;
  v5 = 0x6564695F65707974;
  if (v2 != 1)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656C676E61;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100B61154()
{
  v1 = 0x6564695F65707974;
  if (*v0 != 1)
  {
    v1 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C676E61;
  }
}

unint64_t sub_100B611B8@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100B666E8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100B611E0(uint64_t a1)
{
  v2 = sub_100B66D14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B6121C(uint64_t a1)
{
  v2 = sub_100B66D14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TSContentLanguage.Models.Fill.Gradient.Flavor.Linear.encode(to:)(void *a1)
{
  v3 = sub_1005B981C(&qword_101A12730);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100020E58(a1, a1[3]);
  sub_100B66D14();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v10 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (qword_1019F1D90 != -1)
  {
    swift_once();
  }

  v9 = static TSContentLanguage.Models.Fill.Gradient.Flavor.Linear.version;
  v8[15] = 2;
  type metadata accessor for TSCLVersion();
  sub_100969804(&qword_101A00458);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

void sub_100B614C8(void *a1@<X0>, double *a2@<X8>)
{
  v4 = sub_100B66734(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

uint64_t *TSContentLanguage.Models.Fill.Gradient.Flavor.Radial.version.unsafeMutableAddressor()
{
  if (qword_1019F1D98 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Fill.Gradient.Flavor.Radial.version;
}

void TSContentLanguage.Models.Fill.Gradient.Flavor.Radial.init(startPoint:endPoint:baseNaturalSize:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
  a1[5] = a7;
}

Swift::Int sub_100B61608()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100B61708()
{
  String.hash(into:)();
}

Swift::Int sub_100B617F4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100B618F0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100B66D68(*a1);
  *a2 = result;
  return result;
}

void sub_100B61920(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000746E69;
  v4 = 0x6F705F7472617473;
  v5 = 0x8000000101551C40;
  v6 = 0xD000000000000011;
  v7 = 0xEF7265696669746ELL;
  v8 = 0x6564695F65707974;
  if (v2 != 3)
  {
    v8 = 0x6E6F6973726576;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6E696F705F646E65;
    v3 = 0xE900000000000074;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_100B619DC()
{
  v1 = *v0;
  v2 = 0x6F705F7472617473;
  v3 = 0xD000000000000011;
  v4 = 0x6564695F65707974;
  if (v1 != 3)
  {
    v4 = 0x6E6F6973726576;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E696F705F646E65;
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

unint64_t sub_100B61A94@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100B66D68(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100B61ABC(uint64_t a1)
{
  v2 = sub_100B67604();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B61AF8(uint64_t a1)
{
  v2 = sub_100B67604();

  return CodingKey.debugDescription.getter(a1, v2);
}

double TSContentLanguage.Models.Fill.Gradient.Flavor.Radial.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100B66DB4(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t TSContentLanguage.Models.Fill.Gradient.Flavor.Radial.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A12740);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100B67604();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v3;
  v11 = 0;
  sub_100B0D5F4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v12 = v3[1];
  v11 = 1;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v12 = v3[2];
  v11 = 2;
  sub_100B1A7E0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v12) = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (qword_1019F1D98 != -1)
  {
    swift_once();
  }

  *&v12 = static TSContentLanguage.Models.Fill.Gradient.Flavor.Radial.version;
  v11 = 4;
  type metadata accessor for TSCLVersion();
  sub_100969804(&qword_101A00458);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

BOOL TSContentLanguage.Models.Fill.Gradient.Flavor.Radial.isEquivalent(to:)(double *a1)
{
  result = sub_1007C87EC(*v1, *a1);
  if (result)
  {
    result = sub_1007C87EC(v1[1], a1[1]);
    if (result)
    {
      result = sub_1007C87EC(v1[2], a1[2]);
      if (result)
      {
        result = sub_1007C87EC(v1[3], a1[3]);
        if (result)
        {
          result = sub_1007C87EC(v1[4], a1[4]);
          if (result)
          {
            return sub_1007C87EC(v1[5], a1[5]);
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_100B61F0C(float64x2_t *a1, float64x2_t *a2)
{
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))) & 1) == 0)
  {
    return 0;
  }

  if (a1[2].f64[1] == a2[2].f64[1])
  {
    return a1[2].f64[0] == a2[2].f64[0];
  }

  return 0;
}

BOOL sub_100B61F54(double *a1)
{
  v4 = a1[2];
  v3 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v8 = v1[2];
  v7 = v1[3];
  v10 = v1[4];
  v9 = v1[5];
  result = sub_1007C87EC(*v1, *a1);
  if (result)
  {
    result = sub_1007C87EC(v1[1], a1[1]);
    if (result)
    {
      result = sub_1007C87EC(v8, v4);
      if (result)
      {
        result = sub_1007C87EC(v7, v3);
        if (result)
        {
          result = sub_1007C87EC(v10, v6);
          if (result)
          {
            return sub_1007C87EC(v9, v5);
          }
        }
      }
    }
  }

  return result;
}

uint64_t *TSContentLanguage.Models.Fill.ImageFill.version.unsafeMutableAddressor()
{
  if (qword_1019F1DA0 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Fill.ImageFill.version;
}

__n128 TSContentLanguage.Models.Fill.ImageFill.tintColor.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  result = *(v1 + 48);
  v4 = *(v1 + 64);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 TSContentLanguage.Models.Fill.ImageFill.tintColor.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v3;
  *(v1 + 80) = *(a1 + 32);
  return result;
}

uint64_t TSContentLanguage.Models.Fill.ImageFill.init(resource:technique:scalePercent:tintColor:)@<X0>(uint64_t result@<X0>, char a2@<W1>, __int128 *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v5 = *(result + 16);
  v25[0] = *result;
  v25[1] = v5;
  v26 = *(result + 32);
  v27 = a2;
  v28 = a5;
  v6 = a3[1];
  v29 = *a3;
  v30 = v6;
  v31 = *(a3 + 32);
  if (a5 < 10.0 || a5 > 200.0)
  {
    v9 = *(result + 16);
    v18[0] = *result;
    v18[1] = v9;
    v19 = *(result + 32);
    v20 = a2;
    v21 = a5;
    v10 = a3[1];
    v22 = *a3;
    v23 = v10;
    v24 = *(a3 + 32);
    sub_100B67658(v25, &v15);
    sub_100810A7C(v18);
    v16 = sub_1005B981C(&qword_101A02780);
    v17 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v15 = xmmword_10147F9C0;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v12 = swift_allocError();
    *(v13 + 40) = a5;
    sub_100050F74(&v15, v13);
    swift_willThrow();
    sub_100810B2C();
    swift_allocError();
    strcpy(v14, "scalePercent");
    v14[13] = 0;
    *(v14 + 7) = -5120;
    *(v14 + 2) = v12;
    swift_willThrow();
    return sub_100810A7C(v25);
  }

  else
  {
    v7 = *(result + 16);
    *a4 = *result;
    *(a4 + 16) = v7;
    *(a4 + 32) = *(result + 32);
    *(a4 + 33) = a2;
    *(a4 + 40) = a5;
    v8 = a3[1];
    *(a4 + 48) = *a3;
    *(a4 + 64) = v8;
    *(a4 + 80) = *(a3 + 32);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TSContentLanguage.Models.Fill.ImageFill.validate()()
{
  v1 = *(v0 + 40);
  if (v1 < 10.0 || v1 > 200.0)
  {
    v7 = sub_1005B981C(&qword_101A02780);
    v8 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v6 = xmmword_10147F9C0;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v3 = swift_allocError();
    *(v4 + 40) = v1;
    sub_100050F74(&v6, v4);
    swift_willThrow();
    sub_100810B2C();
    swift_allocError();
    strcpy(v5, "scalePercent");
    v5[13] = 0;
    *(v5 + 7) = -5120;
    *(v5 + 2) = v3;
    swift_willThrow();
  }
}

uint64_t sub_100B624B4()
{
  String.hash(into:)();
}

unint64_t sub_100B625CC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100B67690(*a1);
  *a2 = result;
  return result;
}

void sub_100B625FC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x656372756F736572;
  v5 = 0xEA0000000000726FLL;
  v6 = 0x6C6F635F746E6974;
  v7 = 0xEF7265696669746ELL;
  v8 = 0x6564695F65707974;
  if (v2 != 4)
  {
    v8 = 0x6E6F6973726576;
    v7 = 0xE700000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000065;
  v10 = 0x7571696E68636574;
  if (v2 != 1)
  {
    v10 = 0x65705F656C616373;
    v9 = 0xED0000746E656372;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_100B626DC()
{
  v1 = *v0;
  v2 = 0x656372756F736572;
  v3 = 0x6C6F635F746E6974;
  v4 = 0x6564695F65707974;
  if (v1 != 4)
  {
    v4 = 0x6E6F6973726576;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7571696E68636574;
  if (v1 != 1)
  {
    v5 = 0x65705F656C616373;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100B627B8@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100B67690(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100B627E0(uint64_t a1)
{
  v2 = sub_100B68210();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B6281C(uint64_t a1)
{
  v2 = sub_100B68210();

  return CodingKey.debugDescription.getter(a1, v2);
}

double TSContentLanguage.Models.Fill.ImageFill.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100B676DC(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t TSContentLanguage.Models.Fill.ImageFill.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A12750);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100B68210();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v14 = *v3;
  v15 = v9;
  v16 = *(v3 + 32);
  v13 = 0;
  sub_100B214E8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v14) = *(v3 + 33);
    v13 = 1;
    sub_100B68264();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = v3[4];
    v14 = v3[3];
    v15 = v10;
    v16 = *(v3 + 80);
    v13 = 3;
    sub_100B64688();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v14) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (qword_1019F1DA0 != -1)
    {
      swift_once();
    }

    *&v14 = static TSContentLanguage.Models.Fill.ImageFill.version;
    v13 = 5;
    type metadata accessor for TSCLVersion();
    sub_100969804(&qword_101A00458);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t TSContentLanguage.Models.Fill.ImageFill.isEquivalent(to:)(uint64_t *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  if (v1[4])
  {
    if ((a1[4] & 1) == 0)
    {
      goto LABEL_30;
    }

    if (v4)
    {
      if (!v8 || (v3 != v7 || v4 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else if (v8)
    {
      goto LABEL_30;
    }

    if (v5 == v9 && v6 == v10)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (a1[4])
    {
      goto LABEL_30;
    }

    v11 = v3 == v7 && v4 == v8;
    if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_30;
    }

    if (v5 == v9 && v6 == v10)
    {
      goto LABEL_24;
    }
  }

  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_24:
  if ((sub_100B5B204(*(v1 + 33), *(a1 + 33)) & 1) == 0)
  {
    goto LABEL_30;
  }

  v13 = sub_1007C87EC(*(v1 + 5), *(a1 + 5));
  if (v13)
  {
    v14 = *(v1 + 80);
    v15 = *(a1 + 80);
    if (v14 == 2)
    {
      if (v15 == 2)
      {
        LOBYTE(v13) = 1;
        return v13 & 1;
      }
    }

    else if (v15 != 2)
    {
      v17 = *(v1 + 4);
      v18 = *(a1 + 3);
      v19 = *(a1 + 4);
      v22 = *(v1 + 3);
      v23 = v17;
      v24 = v14 & 1;
      v20[0] = v18;
      v20[1] = v19;
      v21 = v15 & 1;
      LOBYTE(v13) = sub_100B1BBC8(v20);
      return v13 & 1;
    }

LABEL_30:
    LOBYTE(v13) = 0;
  }

  return v13 & 1;
}

uint64_t sub_100B62D2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return _s8Freeform17TSContentLanguageO6ModelsO4FillO05ImageE0V23__derived_struct_equalsySbAI_AItFZ_0(v7, v9) & 1;
}

void *TSContentLanguage.Models.Fill.ImageFill.Technique.version.unsafeMutableAddressor()
{
  if (qword_1019F1DA8 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Fill.ImageFill.Technique.version;
}

uint64_t TSContentLanguage.Models.Fill.ImageFill.Technique.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x5F6C61727574616ELL;
  v2 = 0x6F745F656C616373;
  v3 = 0x68637465727473;
  if (a1 != 3)
  {
    v3 = 1701603700;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x6F745F656C616373;
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

Swift::Int sub_100B62F1C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100B63014()
{
  String.hash(into:)();
}

Swift::Int sub_100B630F8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100B631EC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8Freeform17TSContentLanguageO6ModelsO4FillO05ImageE0V9TechniqueO8rawValueAKSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_100B6321C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000657A6973;
  v4 = 0x5F6C61727574616ELL;
  v5 = 0xEC0000007469665FLL;
  v6 = 0x6F745F656C616373;
  v7 = 0xE700000000000000;
  v8 = 0x68637465727473;
  if (v2 != 3)
  {
    v8 = 1701603700;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6F745F656C616373;
    v3 = 0xED00006C6C69665FLL;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t _s8Freeform17TSContentLanguageO6ModelsO4FillO21__derived_enum_equalsySbAG_AGtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = *(a1 + 1);
  v4 = *(a1 + 32);
  if (!*(a1 + 81))
  {
    if (!*(a2 + 81) && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *a2), vceqq_f64(v2, *(a2 + 1))))) & 1) != 0)
    {
      if (v4)
      {
        v14 = 1650946675;
      }

      else
      {
        v14 = 13168;
      }

      if (v4)
      {
        v15 = 0xE400000000000000;
      }

      else
      {
        v15 = 0xE200000000000000;
      }

      if (a2[4])
      {
        v16 = 1650946675;
      }

      else
      {
        v16 = 13168;
      }

      if (a2[4])
      {
        v17 = 0xE400000000000000;
      }

      else
      {
        v17 = 0xE200000000000000;
      }

      if (v14 == v16 && v15 == v17)
      {

        return 1;
      }

      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v31)
      {
        return 1;
      }
    }

    return 0;
  }

  v5 = *(a1 + 33);
  v6 = *(a1 + 5);
  v7 = a1[8];
  if (*(a1 + 81) == 1)
  {
    if (*(a2 + 81) == 1)
    {
      v39 = *(a1 + 3);
      v41 = *(a1 + 5);
      v8 = *(a1 + 19);
      v9 = *(a1 + 34);
      v34 = *(a2 + 3);
      v35 = *(a2 + 1);
      v33 = *(a2 + 2);
      v10 = *(a2 + 64);
      v11 = *(a2 + 1);
      v45 = *(a1 + 1);
      v37 = *a1;
      if ((sub_1006730B4(*&v3.f64[0], *a2) & 1) != 0 && v37.f64[1] == v11)
      {
        if (v7)
        {
          if (v10)
          {
            v12 = vmovn_s64(vceqq_f64(v45, v35));
            if (v12.i8[0] & 1) != 0 && (v12.i8[4])
            {
              *&v13.f64[0] = v4 | (v5 << 8) | ((v9 | (v8 << 32)) << 16);
              v13.f64[1] = v41;
              if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v13, v33), vceqq_f64(v39, v34)))))
              {
                return 1;
              }
            }
          }
        }

        else if ((v10 & 1) == 0 && v45.f64[0] == v35.f64[0])
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (*(a2 + 81) != 2)
  {
    return 0;
  }

  v40 = *(a1 + 3);
  v19 = a1[9];
  v20 = *(a1 + 80);
  v21 = *a2;
  v22 = a2[1];
  v23 = a2[2];
  v24 = a2[3];
  v25 = *(a2 + 33);
  v26 = *(a2 + 5);
  v36 = *(a2 + 4);
  v38 = *(a2 + 3);
  v27 = *(a2 + 80);
  if (v4)
  {
    if ((a2[4] & 1) == 0)
    {
      return 0;
    }

    v28 = a1[1];
    if (!*&v3.f64[1])
    {
      if (v22)
      {
        return 0;
      }

      goto LABEL_47;
    }

    if (!v22)
    {
      return 0;
    }

    v29 = *a1;
  }

  else
  {
    if (a2[4])
    {
      return 0;
    }

    v28 = a1[1];
    v29 = *a1;
  }

  if (v21 != v29 || v22 != v28)
  {
    v42 = v6;
    v46 = v2;
    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v6 = v42;
    v2 = v46;
    if ((v30 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_47:
  if (__PAIR128__(v24, v23) == *&v2 || (v43 = v6, v32 = _stringCompareWithSmolCheck(_:_:expecting:)(), v6 = v43, (v32 & 1) != 0))
  {
    v44 = v6;
    if ((sub_100B5B204(v5, v25) & 1) != 0 && v44 == v26)
    {
      if (v20 == 2)
      {
        if (v27 == 2)
        {
          return 1;
        }
      }

      else if (v27 != 2)
      {
        v47 = v40;
        v48 = v7;
        v49 = v19;
        v50 = v20 & 1;
        v51[0] = v38;
        v51[1] = v36;
        v52 = v27 & 1;
        if (_s8Freeform17TSContentLanguageO6ModelsO5ColorO4RGBAV23__derived_struct_equalsySbAI_AItFZ_0(&v47, v51))
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t _s8Freeform17TSContentLanguageO6ModelsO4FillO05ImageE0V23__derived_struct_equalsySbAI_AItFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  if ((a1[4] & 1) == 0)
  {
    if (a2[4])
    {
      return 0;
    }

    v12 = v4 == v8 && v5 == v9;
    if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    if (v6 != v10 || v7 != v11)
    {
      goto LABEL_24;
    }

LABEL_25:
    if ((sub_100B5B204(*(a1 + 33), *(a2 + 33)) & 1) == 0 || *(a1 + 5) != *(a2 + 5))
    {
      return 0;
    }

    v14 = *(a1 + 80);
    v15 = *(a2 + 80);
    if (v14 == 2)
    {
      if (v15 != 2)
      {
        return 0;
      }
    }

    else
    {
      if (v15 == 2)
      {
        return 0;
      }

      v16 = *(a1 + 4);
      v17 = *(a2 + 3);
      v18 = *(a2 + 4);
      v20[0] = *(a1 + 3);
      v20[1] = v16;
      v21 = v14 & 1;
      v22[0] = v17;
      v22[1] = v18;
      v23 = v15 & 1;
      if ((_s8Freeform17TSContentLanguageO6ModelsO5ColorO4RGBAV23__derived_struct_equalsySbAI_AItFZ_0(v20, v22) & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  if ((a2[4] & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9 || (v4 != v8 || v5 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6 == v10 && v7 == v11)
  {
    goto LABEL_25;
  }

LABEL_24:
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    goto LABEL_25;
  }

  return 0;
}

BOOL _s8Freeform17TSContentLanguageO6ModelsO4FillO8GradientV4StopV23__derived_struct_equalsySbAK_AKtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))))) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 32) == 0;
  if (*(a1 + 32))
  {
    v6 = 1650946675;
  }

  else
  {
    v6 = 13168;
  }

  if (v5)
  {
    v7 = 0xE200000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (*(a2 + 32))
  {
    v8 = 1650946675;
  }

  else
  {
    v8 = 13168;
  }

  if (*(a2 + 32))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE200000000000000;
  }

  if (v6 == v8 && v7 == v9)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 40) == *(a2 + 40))
  {
    return *(a1 + 48) == *(a2 + 48);
  }

  return 0;
}

uint64_t _s8Freeform17TSContentLanguageO6ModelsO4FillO8GradientV6FlavorO21__derived_enum_equalsySbAK_AKtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if ((*(a1 + 48) & 1) == 0)
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      return v2.f64[0] == *a2;
    }

    return 0;
  }

  if ((*(a2 + 48) & 1) == 0)
  {
    return 0;
  }

  v3 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v2, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))))) & (*(a1 + 32) == *(a2 + 32));
  if (*(a1 + 40) == *(a2 + 40))
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

BOOL _s8Freeform17TSContentLanguageO6ModelsO4FillO8GradientV23__derived_struct_equalsySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1006730B4(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4.f64[0] = *(a1 + 16);
  v5.f64[0] = *(a2 + 16);
  if ((*(a1 + 64) & 1) == 0)
  {
    return (*(a2 + 64) & 1) == 0 && v4.f64[0] == v5.f64[0];
  }

  v4.f64[1] = *(a1 + 24);
  v5.f64[1] = *(a2 + 24);
  return (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4, v5), vceqq_f64(*(a1 + 32), *(a2 + 32))))) & 1) != 0 && *(a1 + 48) == *(a2 + 48) && (*(a2 + 64) & 1) != 0 && *(a1 + 56) == *(a2 + 56);
}

unint64_t sub_100B63A88(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101875CA8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100B63AD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v3 - 8);
  v37[4] = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v38 = v37 - v6;
  v7 = type metadata accessor for CodingUserInfoKey();
  *&v39 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v37 - v11;
  v13 = sub_1005B981C(&qword_101A008F0);
  v41 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v37 - v14;
  v16 = a1[3];
  v58 = a1;
  sub_100020E58(a1, v16);
  sub_100B6458C();
  v17 = v42;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    goto LABEL_12;
  }

  v37[2] = v9;
  v37[3] = v12;
  *&v42 = v7;
  v18 = v40;
  LOBYTE(v49) = 3;
  v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v21 = v18;
  if (v20)
  {
    if (v19 == 0xD000000000000024 && v20 == 0x8000000101589D40)
    {
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v23 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v24[1] = 0;
        v24[2] = 0;
        *v24 = 0;
        swift_willThrow();
LABEL_11:
        (*(v41 + 8))(v15, v13);
LABEL_12:
        v25 = v58;
        sub_100020E58(v58, v58[3]);
        dispatch thunk of Decoder.singleValueContainer()();
        sub_100020E58(&v49, *(&v50 + 1));
        dispatch thunk of SingleValueDecodingContainer.decode(_:)();

        sub_100005070(&v49);
LABEL_13:
        sub_1007C8648();
        swift_allocError();
        *v27 = xmmword_101478600;
        *(v27 + 16) = 0;
        swift_willThrow();
        return sub_100005070(v25);
      }
    }
  }

  type metadata accessor for TSCLVersion();
  LOBYTE(v43) = 4;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v28 = v49;
  if (v49)
  {
    if (qword_1019F1D70 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.Fill.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v28[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v29 = xmmword_101463530;
      *(v29 + 16) = 0;
      swift_willThrow();

      goto LABEL_11;
    }
  }

  sub_100020E58(v58, v58[3]);
  v30 = dispatch thunk of Decoder.userInfo.getter();
  sub_1007B7ED0(0, v30, 0, 0, v56);

  v31 = v57;
  if (v57 == 2)
  {
    sub_100020E58(v58, v58[3]);
    v37[1] = dispatch thunk of Decoder.userInfo.getter();
    v52 = 1;
    sub_100B684D4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    if (v49)
    {

      v42 = v50;
      v39 = v49;
      v33 = v51[0];
      v53 = *&v51[1];
      v54 = *&v51[17];
      (*(v41 + 8))(v15, v13);
      v32 = 1;
    }

    else
    {
      v38 = v15;

      v45 = *v51;
      v46 = *&v51[16];
      LOBYTE(v47) = v51[32];
      v43 = v49;
      v44 = v50;
      sub_10000CAAC(&v43, &qword_101A128B8);
      v36 = v41;
      sub_100020E58(v58, v58[3]);
      dispatch thunk of Decoder.userInfo.getter();
      v52 = 2;
      sub_100B689D4();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      if (v51[0] == 0xFF)
      {

        (*(v36 + 8))(v38, v13);
        v45 = *v51;
        v46 = *&v51[16];
        v47 = *&v51[32];
        v48 = v51[48];
        v43 = v49;
        v44 = v50;
        sub_10000CAAC(&v43, &qword_101A031B0);
        v25 = v58;
        goto LABEL_13;
      }

      v42 = v50;
      v39 = v49;
      v33 = v51[0];
      v53 = *&v51[1];
      v54 = *&v51[17];
      v55 = *&v51[33];
      (*(v36 + 8))(v38, v13);
      v32 = 2;
      v21 = v18;
    }
  }

  else
  {
    v42 = v56[1];
    v39 = v56[0];
    (*(v41 + 8))(v15, v13);
    v32 = 0;
    v33 = v31 & 1;
  }

  result = sub_100005070(v58);
  v34 = v42;
  *v21 = v39;
  *(v21 + 16) = v34;
  *(v21 + 32) = v33;
  v35 = v54;
  *(v21 + 33) = v53;
  *(v21 + 49) = v35;
  *(v21 + 65) = v55;
  *(v21 + 81) = v32;
  return result;
}

unint64_t sub_100B6458C()
{
  result = qword_101A126B8;
  if (!qword_101A126B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A126B8);
  }

  return result;
}

unint64_t sub_100B645E0()
{
  result = qword_101A126C0;
  if (!qword_101A126C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A126C0);
  }

  return result;
}

unint64_t sub_100B64634()
{
  result = qword_101A126C8;
  if (!qword_101A126C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A126C8);
  }

  return result;
}

unint64_t sub_100B64688()
{
  result = qword_101A126D0;
  if (!qword_101A126D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A126D0);
  }

  return result;
}

unint64_t sub_100B64714(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101875D40, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100B64760@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v3 - 8);
  v5 = &v63 - v4;
  v6 = type metadata accessor for CodingUserInfoKey();
  v69 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_101A008D8);
  v70 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v63 - v10;
  v12 = a1;
  sub_100020E58(a1, a1[3]);
  sub_100B65244();
  v13 = v71;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    v17 = a1;
    return sub_100005070(v17);
  }

  v67 = v5;
  v71 = v8;
  v14 = v69;
  LOBYTE(v77) = 3;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v19 = a1;
  if (v16)
  {
    if (v15 == 0xD00000000000002DLL && v16 == 0x8000000101589D70)
    {
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v21 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v22[1] = 0;
        v22[2] = 0;
        *v22 = 0;
        swift_willThrow();
LABEL_14:
        (*(v70 + 8))(v11, v9);
        v17 = v12;
        return sub_100005070(v17);
      }
    }
  }

  type metadata accessor for TSCLVersion();
  LOBYTE(v72) = 4;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v23 = v77;
  if (v77)
  {
    if (qword_1019F1D78 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.Fill.Gradient.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v23[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v24 = xmmword_101463530;
      *(v24 + 16) = 0;
      swift_willThrow();

      goto LABEL_14;
    }
  }

  sub_100020E58(v12, v12[3]);
  v25 = dispatch thunk of Decoder.userInfo.getter();
  v65 = sub_1007BFF30(0, v25, 0, 0, 0);

  sub_100020E58(v12, v12[3]);
  v66 = dispatch thunk of Decoder.userInfo.getter();
  LOBYTE(v72) = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (BYTE8(v77))
  {
    v26 = 1.0;
  }

  else
  {
    v26 = *&v77;
  }

  v27 = v71;
  if (v26 < 0.0 || v26 > 1.0)
  {
    v79 = sub_1005B981C(&qword_101A02780);
    v80 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v77 = xmmword_101463BB0;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v30 = swift_allocError();
    *(v31 + 40) = v26;
    sub_100050F74(&v77, v31);
    swift_willThrow();
    sub_100810B2C();
    swift_allocError();
    *v32 = 0x7974696361706FLL;
    v32[1] = 0xE700000000000000;
    v32[2] = v30;
    swift_willThrow();
    v64 = 0;
    v33 = v67;
    CodingUserInfoKey.init(rawValue:)();
    v34 = v6;
    result = (*(v14 + 48))(v33, 1, v6);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(v14 + 32))(v27, v33, v6);
    if (*(v66 + 16) && (v35 = sub_1007C8514(v27), (v36 & 1) != 0))
    {
      v28 = v11;
      sub_100064288(*(v66 + 56) + 32 * v35, &v77);
      (*(v14 + 8))(v27, v34);
      if (swift_dynamicCast())
      {
        v29 = v70;
        if (v85)
        {

          v26 = 1.0;
          goto LABEL_33;
        }

LABEL_37:
        swift_willThrow();

        goto LABEL_38;
      }
    }

    else
    {
      v28 = v11;
      (*(v14 + 8))(v27, v34);
    }

    v29 = v70;
    goto LABEL_37;
  }

  v64 = 0;
  v28 = v11;

  v29 = v70;
LABEL_33:
  sub_100020E58(v19, v19[3]);
  dispatch thunk of Decoder.userInfo.getter();

  v92 = 2;
  sub_100B6874C();
  v37 = v64;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v37)
  {
LABEL_34:
    swift_willThrow();
LABEL_38:
    (*(v29 + 8))(v28, v9);
    sub_100005070(v19);
  }

  v38 = v91;
  if (v91 == 255)
  {
    v71 = v9;
    v52 = KeyedDecodingContainer.codingPath.getter();
    v53 = *(v52 + 16);
    if (v53)
    {
      *&v72 = _swiftEmptyArrayStorage;
      sub_100034080(0, v53, 0);
      v54 = v72;
      v69 = v52;
      v55 = v52 + 32;
      do
      {
        sub_10000630C(v55, &v77);
        sub_100020E58(&v77, v79);
        v56 = dispatch thunk of CodingKey.stringValue.getter();
        v58 = v57;
        sub_100005070(&v77);
        *&v72 = v54;
        v60 = v54[2];
        v59 = v54[3];
        if (v60 >= v59 >> 1)
        {
          sub_100034080((v59 > 1), v60 + 1, 1);
          v54 = v72;
        }

        v54[2] = v60 + 1;
        v61 = &v54[2 * v60];
        v61[4] = v56;
        v61[5] = v58;
        v55 += 40;
        --v53;
      }

      while (v53);

      v29 = v70;
    }

    else
    {

      v54 = _swiftEmptyArrayStorage;
    }

    sub_1007CDECC();
    swift_allocError();
    *v62 = 0x726F76616C66;
    v62[1] = 0xE600000000000000;
    v62[2] = v54;
    swift_willThrow();
    v9 = v71;
    goto LABEL_34;
  }

  v39 = v89;
  v71 = v90;
  v40 = v9;
  v42 = v87;
  v41 = v88;
  v43 = v29;
  v44 = v85;
  v45 = v86;
  v70 = v85;
  (*(v43 + 8))(v28, v40);
  v46 = v38 & 1;
  v93 = v46;
  v47 = v65;
  *&v72 = v65;
  *(&v72 + 1) = v26;
  *&v73 = v44;
  *(&v73 + 1) = v45;
  *&v74 = v42;
  *(&v74 + 1) = v41;
  *&v75 = v39;
  v48 = v71;
  *(&v75 + 1) = v71;
  v76 = v46;
  sub_100B646DC(&v72, &v77);
  sub_100005070(v19);
  *&v77 = v47;
  *(&v77 + 1) = v26;
  v78 = v70;
  v79 = v45;
  v80 = v42;
  v81 = v41;
  v82 = v39;
  v83 = v48;
  v84 = v46;
  result = sub_100810B80(&v77);
  v49 = v75;
  v50 = v68;
  *(v68 + 32) = v74;
  *(v50 + 48) = v49;
  *(v50 + 64) = v76;
  v51 = v73;
  *v50 = v72;
  *(v50 + 16) = v51;
  return result;
}

unint64_t sub_100B65244()
{
  result = qword_101A126E0;
  if (!qword_101A126E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A126E0);
  }

  return result;
}

unint64_t sub_100B65298()
{
  result = qword_101A126E8;
  if (!qword_101A126E8)
  {
    sub_1005C4E5C(&qword_101A008D0);
    sub_100B6531C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A126E8);
  }

  return result;
}

unint64_t sub_100B6531C()
{
  result = qword_101A126F0;
  if (!qword_101A126F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A126F0);
  }

  return result;
}

unint64_t sub_100B65370()
{
  result = qword_101A126F8;
  if (!qword_101A126F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A126F8);
  }

  return result;
}

unint64_t sub_100B653C4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101875DD8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100B65410@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v3 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v3 - 8);
  v5 = &v75 - v4;
  v6 = type metadata accessor for CodingUserInfoKey();
  v83 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_101A128B0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v75 - v11;
  v13 = a1[3];
  v86 = a1;
  sub_100020E58(a1, v13);
  sub_100B66044();
  v14 = v85;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    v19 = v86;
    return sub_100005070(v19);
  }

  v81 = v5;
  v82 = v8;
  v15 = v84;
  v85 = v10;
  LOBYTE(v87) = 3;
  v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v18 = v9;
  v80 = v12;
  v21 = v86;
  if (v17)
  {
    if (v16 == 0xD000000000000032 && v17 == 0x8000000101589DA0)
    {
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v23 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v24[1] = 0;
        v24[2] = 0;
        *v24 = 0;
        swift_willThrow();
        (*(v85 + 8))(v80, v18);
LABEL_14:
        v19 = v21;
        return sub_100005070(v19);
      }
    }
  }

  type metadata accessor for TSCLVersion();
  LOBYTE(v90) = 4;
  sub_100969804(&qword_101A00400);
  v25 = v80;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v26 = v87;
  if (v87)
  {
    if (qword_1019F1D80 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.Fill.Gradient.Stop.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v26[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v27 = xmmword_101463530;
      *(v27 + 16) = 0;
      swift_willThrow();

      (*(v85 + 8))(v25, v18);
      goto LABEL_14;
    }

    v28 = v18;
  }

  else
  {
    v28 = v18;
  }

  sub_100020E58(v21, v21[3]);
  dispatch thunk of Decoder.userInfo.getter();

  v92 = 0;
  sub_1007CE070();
  v29 = v28;
  v30 = v80;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v31 = v89;
  if (v89 == 2)
  {
    v32 = KeyedDecodingContainer.codingPath.getter();
    v33 = *(v32 + 16);
    if (v33)
    {
      v79 = v28;
      v90 = _swiftEmptyArrayStorage;
      sub_100034080(0, v33, 0);
      v34 = v90;
      v35 = v32 + 32;
      do
      {
        sub_10000630C(v35, &v87);
        sub_100020E58(&v87, *(&v88 + 1));
        v36 = dispatch thunk of CodingKey.stringValue.getter();
        v38 = v37;
        sub_100005070(&v87);
        v90 = v34;
        v40 = v34[2];
        v39 = v34[3];
        if (v40 >= v39 >> 1)
        {
          sub_100034080((v39 > 1), v40 + 1, 1);
          v34 = v90;
        }

        v34[2] = v40 + 1;
        v41 = &v34[2 * v40];
        v41[4] = v36;
        v41[5] = v38;
        v35 += 40;
        --v33;
      }

      while (v33);

      v29 = v79;
      v30 = v80;
      v21 = v86;
    }

    else
    {

      v34 = _swiftEmptyArrayStorage;
    }

    sub_1007CDECC();
    swift_allocError();
    *v53 = 0x726F6C6F63;
    v53[1] = 0xE500000000000000;
    v53[2] = v34;
    swift_willThrow();
    v54 = v85;
    swift_willThrow();
    (*(v54 + 8))(v30, v29);
    goto LABEL_14;
  }

  v77 = v88;
  v78 = v87;
  v91 = v89 & 1;
  v79 = v28;
  sub_100020E58(v21, v21[3]);
  v42 = v79;
  dispatch thunk of Decoder.userInfo.getter();

  v92 = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (BYTE8(v87))
  {
    v43 = KeyedDecodingContainer.codingPath.getter();
    v44 = *(v43 + 16);
    if (v44)
    {
      v90 = _swiftEmptyArrayStorage;
      sub_100034080(0, v44, 0);
      v45 = v90;
      v46 = v43 + 32;
      do
      {
        sub_10000630C(v46, &v87);
        sub_100020E58(&v87, *(&v88 + 1));
        v47 = dispatch thunk of CodingKey.stringValue.getter();
        v49 = v48;
        sub_100005070(&v87);
        v90 = v45;
        v51 = v45[2];
        v50 = v45[3];
        if (v51 >= v50 >> 1)
        {
          sub_100034080((v50 > 1), v51 + 1, 1);
          v45 = v90;
        }

        v45[2] = v51 + 1;
        v52 = &v45[2 * v51];
        v52[4] = v47;
        v52[5] = v49;
        v46 += 40;
        --v44;
      }

      while (v44);

      v42 = v79;
      v21 = v86;
    }

    else
    {

      v45 = _swiftEmptyArrayStorage;
    }

    sub_1007CDECC();
    swift_allocError();
    *v63 = 0x6E6F697463617266;
    v63[1] = 0xE800000000000000;
    v63[2] = v45;
    swift_willThrow();
    goto LABEL_49;
  }

  v55 = v87;
  if (*&v87 < 0.0 || *&v87 > 1.0)
  {
    *(&v88 + 1) = sub_1005B981C(&qword_101A02780);
    v89 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v87 = xmmword_101463BB0;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v60 = swift_allocError();
    *(v61 + 40) = v55;
    sub_100050F74(&v87, v61);
    swift_willThrow();
    sub_100810B2C();
    swift_allocError();
    *v62 = 0x6E6F697463617266;
    v62[1] = 0xE800000000000000;
    v62[2] = v60;
    swift_willThrow();
    v42 = v79;
LABEL_49:
    v64 = v85;
    swift_willThrow();
    (*(v64 + 8))(v80, v42);
    goto LABEL_14;
  }

  v76 = v31;
  sub_100020E58(v21, v21[3]);
  v56 = dispatch thunk of Decoder.userInfo.getter();
  LOBYTE(v90) = 2;
  v57 = v79;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (BYTE8(v87))
  {
    v58 = 0.5;
  }

  else
  {
    v58 = *&v87;
  }

  if (v58 >= 0.0 && v58 <= 1.0)
  {

    v59 = v85;
LABEL_56:
    (*(v59 + 8))(v80, v57);
    result = sub_100005070(v21);
    v74 = v77;
    *v15 = v78;
    *(v15 + 16) = v74;
    *(v15 + 32) = v76 & 1;
    *(v15 + 40) = v55;
    *(v15 + 48) = v58;
    return result;
  }

  *(&v88 + 1) = sub_1005B981C(&qword_101A02780);
  v89 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
  v87 = xmmword_101463BB0;
  sub_1005B981C(&qword_101A02790);
  sub_10001A2F8(&qword_101A02798, &qword_101A02790);
  v57 = v79;
  v65 = swift_allocError();
  *(v66 + 40) = v58;
  sub_100050F74(&v87, v66);
  swift_willThrow();
  sub_100810B2C();
  swift_allocError();
  *v67 = 0x697463656C666E69;
  v67[1] = 0xEA00000000006E6FLL;
  v67[2] = v65;
  swift_willThrow();
  v75 = 0;
  v68 = v6;
  v69 = v81;
  CodingUserInfoKey.init(rawValue:)();
  v70 = v83;
  result = (*(v83 + 48))(v69, 1, v68);
  v71 = v82;
  if (result != 1)
  {
    (*(v70 + 32))(v82, v69, v68);
    if (*(v56 + 16) && (v72 = sub_1007C8514(v71), (v73 & 1) != 0))
    {
      sub_100064288(*(v56 + 56) + 32 * v72, &v87);
      (*(v70 + 8))(v71, v68);
      if (swift_dynamicCast())
      {
        v59 = v85;
        if (v92)
        {

          v58 = 0.5;
          v76 = v91;
          goto LABEL_56;
        }

LABEL_59:
        swift_willThrow();

        (*(v59 + 8))(v80, v57);
        goto LABEL_14;
      }
    }

    else
    {
      (*(v70 + 8))(v71, v68);
    }

    v59 = v85;
    goto LABEL_59;
  }

  __break(1u);
  return result;
}

unint64_t sub_100B66044()
{
  result = qword_101A12708;
  if (!qword_101A12708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12708);
  }

  return result;
}

unint64_t sub_100B66098(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101875E70, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100B660E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A008B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100B665EC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    goto LABEL_12;
  }

  LOBYTE(v30[0]) = 2;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v10)
  {
    if (v9 == 0xD000000000000034 && v10 == 0x8000000101589DE0)
    {
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v13[1] = 0;
        v13[2] = 0;
        *v13 = 0;
        swift_willThrow();
LABEL_11:
        (*(v6 + 8))(v8, v5);
LABEL_12:
        sub_100020E58(a1, a1[3]);
        dispatch thunk of Decoder.singleValueContainer()();
        sub_100020E58(v30, v30[3]);
        dispatch thunk of SingleValueDecodingContainer.decode(_:)();

        sub_100005070(v30);
LABEL_13:
        sub_1007C8648();
        swift_allocError();
        *v15 = xmmword_101478600;
        *(v15 + 16) = 0;
        swift_willThrow();
        return sub_100005070(a1);
      }
    }
  }

  type metadata accessor for TSCLVersion();
  v35 = 3;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v16 = v30[0];
  if (v30[0])
  {
    if (qword_1019F1D88 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.Fill.Gradient.Flavor.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v16[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v17 = xmmword_101463530;
      *(v17 + 16) = 0;
      swift_willThrow();

      goto LABEL_11;
    }
  }

  sub_100020E58(a1, a1[3]);
  v18 = dispatch thunk of Decoder.userInfo.getter();
  v19 = sub_1007B7EF8(0, v18, 0);
  v21 = v20;
  v22 = v19;

  if (v21)
  {
    v23 = a1[3];
    *&v29 = a1[4];
    sub_100020E58(a1, v23);
    v24 = dispatch thunk of Decoder.userInfo.getter();
    sub_1007B81B8(1, v24, 0, v31);
    (*(v6 + 8))(v8, v5);

    if (v34)
    {
      goto LABEL_13;
    }

    v28 = v31[0];
    v29 = v31[1];
    v26 = v32;
    v25 = v33;
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    v26 = 0;
    v25 = 0;
    v29 = 0u;
    v28 = v22;
  }

  result = sub_100005070(a1);
  v27 = v29;
  *a2 = v28;
  *(a2 + 16) = v27;
  *(a2 + 32) = v26;
  *(a2 + 40) = v25;
  *(a2 + 48) = v21 & 1;
  return result;
}

unint64_t sub_100B665EC()
{
  result = qword_101A12718;
  if (!qword_101A12718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12718);
  }

  return result;
}

unint64_t sub_100B66640()
{
  result = qword_101A12720;
  if (!qword_101A12720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12720);
  }

  return result;
}

unint64_t sub_100B66694()
{
  result = qword_101A12728;
  if (!qword_101A12728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12728);
  }

  return result;
}

unint64_t sub_100B666E8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101875EF0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

double sub_100B66734(void *a1)
{
  v4 = sub_1005B981C(&qword_101A128A8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v30 - v6;
  sub_100020E58(a1, a1[3]);
  sub_100B66D14();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_32;
  }

  LOBYTE(v33) = 1;
  v8 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v9)
  {
    if (v8 == 0xD00000000000003BLL && v9 == 0x8000000101589E20)
    {
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v12[1] = 0;
        v12[2] = 0;
        *v12 = 0;
LABEL_30:
        swift_willThrow();
        goto LABEL_31;
      }
    }
  }

  type metadata accessor for TSCLVersion();
  LOBYTE(v36) = 2;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v13 = v33;
  if (v33)
  {
    if (qword_1019F1D90 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.Fill.Gradient.Flavor.Linear.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v13[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v14 = xmmword_101463530;
      *(v14 + 16) = 0;
      swift_willThrow();

LABEL_31:
      (*(v5 + 8))(v7, v4);
LABEL_32:
      sub_100005070(a1);
      return v2;
    }
  }

  sub_100020E58(a1, a1[3]);
  dispatch thunk of Decoder.userInfo.getter();

  v37 = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (BYTE8(v33))
  {
    v15 = KeyedDecodingContainer.codingPath.getter();
    v16 = *(v15 + 16);
    if (v16)
    {
      v31 = v5;
      v36 = _swiftEmptyArrayStorage;
      sub_100034080(0, v16, 0);
      v17 = v36;
      v30[1] = v15;
      v18 = v15 + 32;
      do
      {
        sub_10000630C(v18, &v33);
        sub_100020E58(&v33, v34);
        v19 = dispatch thunk of CodingKey.stringValue.getter();
        v32 = v20;
        sub_100005070(&v33);
        v36 = v17;
        v22 = v17[2];
        v21 = v17[3];
        if (v22 >= v21 >> 1)
        {
          sub_100034080((v21 > 1), v22 + 1, 1);
          v17 = v36;
        }

        v17[2] = v22 + 1;
        v23 = &v17[2 * v22];
        v24 = v32;
        v23[4] = v19;
        v23[5] = v24;
        v18 += 40;
        --v16;
      }

      while (v16);

      v5 = v31;
    }

    else
    {

      v17 = _swiftEmptyArrayStorage;
    }

    sub_1007CDECC();
    swift_allocError();
    *v28 = 0x656C676E61;
    v28[1] = 0xE500000000000000;
    v28[2] = v17;
    goto LABEL_29;
  }

  v2 = *&v33;
  if (*&v33 < 0.0 || *&v33 > 360.0)
  {
    v34 = sub_1005B981C(&qword_101A02780);
    v35 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v33 = xmmword_10147F9B0;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v25 = swift_allocError();
    *(v26 + 40) = v2;
    sub_100050F74(&v33, v26);
    swift_willThrow();
    sub_100810B2C();
    swift_allocError();
    *v27 = 0x656C676E61;
    v27[1] = 0xE500000000000000;
    v27[2] = v25;
LABEL_29:
    swift_willThrow();
    goto LABEL_30;
  }

  (*(v5 + 8))(v7, v4);
  sub_100005070(a1);
  return v2;
}

unint64_t sub_100B66D14()
{
  result = qword_101A12738;
  if (!qword_101A12738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12738);
  }

  return result;
}

unint64_t sub_100B66D68(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101875F58, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100B66DB4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A128A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v56 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100B67604();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  LOBYTE(v60) = 3;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v10)
  {
    if (v9 == 0xD00000000000003BLL && v10 == 0x8000000101589E60)
    {
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v13[1] = 0;
        v13[2] = 0;
        *v13 = 0;
LABEL_33:
        swift_willThrow();
        goto LABEL_34;
      }
    }
  }

  type metadata accessor for TSCLVersion();
  LOBYTE(v64) = 4;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v14 = v60;
  if (v60)
  {
    if (qword_1019F1D98 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.Fill.Gradient.Flavor.Radial.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v14[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v15 = xmmword_101463530;
      *(v15 + 16) = 0;
      swift_willThrow();

LABEL_34:
      (*(v6 + 8))(v8, v5);
      return sub_100005070(a1);
    }
  }

  sub_100020E58(a1, a1[3]);
  dispatch thunk of Decoder.userInfo.getter();

  v65 = 0;
  sub_1007CEB2C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v62)
  {
    v58 = v6;
    v16 = KeyedDecodingContainer.codingPath.getter();
    v17 = *(v16 + 16);
    if (v17)
    {
      v59 = v5;
      v64 = _swiftEmptyArrayStorage;
      sub_100034080(0, v17, 0);
      v18 = v64;
      v57 = v16;
      v19 = v16 + 32;
      do
      {
        sub_10000630C(v19, &v60);
        sub_100020E58(&v60, v63);
        v20 = dispatch thunk of CodingKey.stringValue.getter();
        v22 = v21;
        sub_100005070(&v60);
        v64 = v18;
        v24 = v18[2];
        v23 = v18[3];
        if (v24 >= v23 >> 1)
        {
          sub_100034080((v23 > 1), v24 + 1, 1);
          v18 = v64;
        }

        v18[2] = v24 + 1;
        v25 = &v18[2 * v24];
        v25[4] = v20;
        v25[5] = v22;
        v19 += 40;
        --v17;
      }

      while (v17);

      v5 = v59;
    }

    else
    {

      v18 = _swiftEmptyArrayStorage;
    }

    sub_1007CDECC();
    swift_allocError();
    v38 = 0x6F705F7472617473;
    v39 = 0xEB00000000746E69;
LABEL_32:
    *v37 = v38;
    v37[1] = v39;
    v37[2] = v18;
    swift_willThrow();
    v6 = v58;
    goto LABEL_33;
  }

  v27 = v60;
  v26 = v61;
  v59 = v5;
  sub_100020E58(a1, a1[3]);
  v5 = v59;
  dispatch thunk of Decoder.userInfo.getter();

  v65 = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v62)
  {
    v58 = v6;
    v28 = KeyedDecodingContainer.codingPath.getter();
    v29 = *(v28 + 16);
    if (v29)
    {
      v64 = _swiftEmptyArrayStorage;
      sub_100034080(0, v29, 0);
      v18 = v64;
      v57 = v28;
      v30 = v28 + 32;
      do
      {
        sub_10000630C(v30, &v60);
        sub_100020E58(&v60, v63);
        v31 = dispatch thunk of CodingKey.stringValue.getter();
        v33 = v32;
        sub_100005070(&v60);
        v64 = v18;
        v35 = v18[2];
        v34 = v18[3];
        if (v35 >= v34 >> 1)
        {
          sub_100034080((v34 > 1), v35 + 1, 1);
          v18 = v64;
        }

        v18[2] = v35 + 1;
        v36 = &v18[2 * v35];
        v36[4] = v31;
        v36[5] = v33;
        v30 += 40;
        --v29;
      }

      while (v29);

      v5 = v59;
    }

    else
    {

      v18 = _swiftEmptyArrayStorage;
    }

    sub_1007CDECC();
    swift_allocError();
    v38 = 0x6E696F705F646E65;
    v39 = 0xE900000000000074;
    goto LABEL_32;
  }

  v42 = v60;
  v41 = v61;
  sub_100020E58(a1, a1[3]);
  dispatch thunk of Decoder.userInfo.getter();

  v65 = 2;
  sub_1007CEF28();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v62)
  {
    v43 = KeyedDecodingContainer.codingPath.getter();
    v44 = *(v43 + 16);
    if (v44)
    {
      v58 = v6;
      v64 = _swiftEmptyArrayStorage;
      sub_100034080(0, v44, 0);
      v45 = v64;
      v57 = v43;
      v46 = v43 + 32;
      do
      {
        sub_10000630C(v46, &v60);
        sub_100020E58(&v60, v63);
        v47 = dispatch thunk of CodingKey.stringValue.getter();
        v49 = v48;
        sub_100005070(&v60);
        v64 = v45;
        v51 = v45[2];
        v50 = v45[3];
        if (v51 >= v50 >> 1)
        {
          sub_100034080((v50 > 1), v51 + 1, 1);
          v45 = v64;
        }

        v45[2] = v51 + 1;
        v52 = &v45[2 * v51];
        v52[4] = v47;
        v52[5] = v49;
        v46 += 40;
        --v44;
      }

      while (v44);

      v6 = v58;
    }

    else
    {

      v45 = _swiftEmptyArrayStorage;
    }

    sub_1007CDECC();
    swift_allocError();
    *v55 = 0xD000000000000011;
    v55[1] = 0x8000000101551C40;
    v55[2] = v45;
    swift_willThrow();
    v5 = v59;
    goto LABEL_33;
  }

  v54 = v60;
  v53 = v61;
  (*(v6 + 8))(v8, v5);
  result = sub_100005070(a1);
  *a2 = v27;
  a2[1] = v26;
  a2[2] = v42;
  a2[3] = v41;
  a2[4] = v54;
  a2[5] = v53;
  return result;
}

unint64_t sub_100B67604()
{
  result = qword_101A12748;
  if (!qword_101A12748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12748);
  }

  return result;
}

unint64_t sub_100B67690(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101875FF0, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100B676DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v3 - 8);
  v62 = &v56 - v4;
  v5 = type metadata accessor for CodingUserInfoKey();
  v63 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_101A008B0);
  v65 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v56 - v9;
  sub_100020E58(a1, a1[3]);
  sub_100B68210();
  v11 = v66;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v11)
  {
    v12 = a1;
    return sub_100005070(v12);
  }

  v66 = v7;
  v61 = v5;
  v13 = a1;
  v14 = v64;
  LOBYTE(v73) = 4;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = 0;
  if (v16)
  {
    v18 = v15 == 0xD00000000000002FLL && v16 == 0x8000000101589EA0;
    if (v18)
    {
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v20[1] = 0;
        v20[2] = 0;
        *v20 = 0;
        swift_willThrow();
LABEL_12:
        (*(v65 + 8))(v10, v8);
        v12 = v13;
        return sub_100005070(v12);
      }
    }
  }

  type metadata accessor for TSCLVersion();
  LOBYTE(v67) = 5;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v22 = v73;
  if (v73)
  {
    if (qword_1019F1DA0 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.Fill.ImageFill.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v22[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v23 = xmmword_101463530;
      *(v23 + 16) = 0;
      swift_willThrow();

      goto LABEL_12;
    }
  }

  sub_100020E58(v13, v13[3]);
  v24 = dispatch thunk of Decoder.userInfo.getter();
  memset(v89, 0, 32);
  v89[32] = -1;
  sub_1007C0420(0, v24, 0, 0, v89, v84);

  v59 = v84[0];
  v60 = v84[1];
  v83 = v85;
  sub_100020E58(v13, v13[3]);
  dispatch thunk of Decoder.userInfo.getter();

  v80 = 1;
  sub_100B68CA0();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v73 == 5)
  {
    v66 = v8;
    v25 = KeyedDecodingContainer.codingPath.getter();
    v26 = *(v25 + 16);
    if (v26)
    {
      v63 = v10;
      *&v67 = _swiftEmptyArrayStorage;
      sub_100034080(0, v26, 0);
      v27 = v67;
      v64 = v25;
      v28 = v25 + 32;
      do
      {
        sub_10000630C(v28, &v73);
        sub_100020E58(&v73, *(&v74 + 1));
        v29 = dispatch thunk of CodingKey.stringValue.getter();
        v31 = v30;
        sub_100005070(&v73);
        *&v67 = v27;
        v33 = v27[2];
        v32 = v27[3];
        if (v33 >= v32 >> 1)
        {
          sub_100034080((v32 > 1), v33 + 1, 1);
          v27 = v67;
        }

        v27[2] = v33 + 1;
        v34 = &v27[2 * v33];
        v34[4] = v29;
        v34[5] = v31;
        v28 += 40;
        --v26;
      }

      while (v26);

      v10 = v63;
    }

    else
    {

      v27 = _swiftEmptyArrayStorage;
    }

    sub_1007CDECC();
    swift_allocError();
    *v36 = 0x7571696E68636574;
    v36[1] = 0xE900000000000065;
    v36[2] = v27;
    swift_willThrow();
    v37 = v66;
    swift_willThrow();
    (*(v65 + 8))(v10, v37);
    goto LABEL_30;
  }

  v57 = v73;
  sub_100020E58(v13, v13[3]);
  v35 = dispatch thunk of Decoder.userInfo.getter();
  LOBYTE(v67) = 2;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (BYTE8(v73))
  {
    v38 = 100.0;
  }

  else
  {
    v38 = *&v73;
  }

  if (v38 < 10.0 || v38 > 200.0)
  {
    v58 = v35;
    *(&v74 + 1) = sub_1005B981C(&qword_101A02780);
    v75 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v73 = xmmword_10147F9C0;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v40 = swift_allocError();
    *(v41 + 40) = v38;
    sub_100050F74(&v73, v41);
    swift_willThrow();
    sub_100810B2C();
    swift_allocError();
    strcpy(v42, "scalePercent");
    v42[13] = 0;
    *(v42 + 7) = -5120;
    *(v42 + 2) = v40;
    swift_willThrow();
    v56 = 0;
    v43 = v62;
    CodingUserInfoKey.init(rawValue:)();
    v44 = v63;
    v18 = (*(v63 + 6))(v43, 1, v61) == 1;
    result = v66;
    if (v18)
    {
      __break(1u);
      return result;
    }

    v45 = v66;
    (*(v44 + 4))();
    v46 = v58;
    if (*(v58 + 16) && (v47 = sub_1007C8514(v45), v45 = v66, (v48 & 1) != 0))
    {
      sub_100064288(*(v46 + 56) + 32 * v47, &v73);
      (*(v44 + 1))(v45, v61);
      if (swift_dynamicCast())
      {
        v39 = v65;
        if (v80)
        {
          v63 = v10;

          v38 = 100.0;
          v17 = v56;
          goto LABEL_43;
        }

LABEL_47:
        swift_willThrow();

        (*(v39 + 8))(v10, v8);
        goto LABEL_30;
      }
    }

    else
    {
      (*(v44 + 1))(v45, v61);
    }

    v39 = v65;
    goto LABEL_47;
  }

  v63 = v10;

  v39 = v65;
LABEL_43:
  sub_100020E58(v13, v13[3]);
  v49 = dispatch thunk of Decoder.userInfo.getter();
  v50 = v63;
  sub_1007B84BC(3, v49, 0, 0, &v86);
  if (v17)
  {
    (*(v39 + 8))(v50, v8);

LABEL_30:
    sub_100005070(v13);
    return sub_10067F154();
  }

  (*(v39 + 8))(v50, v8);

  v51 = v59;
  v67 = v59;
  v52 = v60;
  v68 = v60;
  LODWORD(v66) = v83;
  LOBYTE(v69) = v83;
  v53 = v57;
  BYTE1(v69) = v57;
  *(&v69 + 2) = v81;
  WORD3(v69) = v82;
  *(&v69 + 1) = v38;
  v70 = v86;
  v71 = v87;
  v72 = v88;
  sub_100B67658(&v67, &v73);
  sub_100005070(v13);
  v73 = v51;
  v74 = v52;
  LOBYTE(v75) = v66;
  BYTE1(v75) = v53;
  *(&v75 + 2) = v81;
  HIWORD(v75) = v82;
  v76 = v38;
  v77 = v86;
  v78 = v87;
  v79 = v88;
  result = sub_100810A7C(&v73);
  v54 = v70;
  *(v14 + 32) = v69;
  *(v14 + 48) = v54;
  *(v14 + 64) = v71;
  *(v14 + 80) = v72;
  v55 = v68;
  *v14 = v67;
  *(v14 + 16) = v55;
  return result;
}

unint64_t sub_100B68210()
{
  result = qword_101A12758;
  if (!qword_101A12758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12758);
  }

  return result;
}

unint64_t sub_100B68264()
{
  result = qword_101A12760;
  if (!qword_101A12760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12760);
  }

  return result;
}

unint64_t _s8Freeform17TSContentLanguageO6ModelsO4FillO05ImageE0V9TechniqueO8rawValueAKSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1018760A0, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100B68330()
{
  result = qword_101A12768;
  if (!qword_101A12768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12768);
  }

  return result;
}

unint64_t sub_100B68384()
{
  result = qword_101A12770;
  if (!qword_101A12770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12770);
  }

  return result;
}

unint64_t sub_100B68418()
{
  result = qword_101A12778;
  if (!qword_101A12778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12778);
  }

  return result;
}

unint64_t sub_100B6846C(uint64_t a1)
{
  result = sub_100B109D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100B684D4()
{
  result = qword_101A12780;
  if (!qword_101A12780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12780);
  }

  return result;
}

unint64_t sub_100B68528()
{
  result = qword_101A12788;
  if (!qword_101A12788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12788);
  }

  return result;
}

unint64_t sub_100B6857C(uint64_t a1)
{
  result = sub_100B10980();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100B685E4()
{
  result = qword_101A12790;
  if (!qword_101A12790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12790);
  }

  return result;
}

unint64_t sub_100B68664()
{
  result = qword_101A12798;
  if (!qword_101A12798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12798);
  }

  return result;
}

unint64_t sub_100B686B8()
{
  result = qword_101A127A0;
  if (!qword_101A127A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A127A0);
  }

  return result;
}

unint64_t sub_100B6874C()
{
  result = qword_101A127A8;
  if (!qword_101A127A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A127A8);
  }

  return result;
}

unint64_t sub_100B687A0()
{
  result = qword_101A127B0;
  if (!qword_101A127B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A127B0);
  }

  return result;
}

unint64_t sub_100B687F4(uint64_t a1)
{
  result = sub_100B108D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100B6885C()
{
  result = qword_101A127B8;
  if (!qword_101A127B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A127B8);
  }

  return result;
}

unint64_t sub_100B688B0(uint64_t a1)
{
  result = sub_100B10884();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100B68918()
{
  result = qword_101A127C0;
  if (!qword_101A127C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A127C0);
  }

  return result;
}

unint64_t sub_100B6896C(uint64_t a1)
{
  result = sub_100B10830();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100B689D4()
{
  result = qword_101A127C8;
  if (!qword_101A127C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A127C8);
  }

  return result;
}

unint64_t sub_100B68A28()
{
  result = qword_101A127D0;
  if (!qword_101A127D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A127D0);
  }

  return result;
}

unint64_t sub_100B68A80()
{
  result = qword_101A127D8;
  if (!qword_101A127D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A127D8);
  }

  return result;
}

uint64_t sub_100B68B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100B68B3C()
{
  result = qword_101A127E0;
  if (!qword_101A127E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A127E0);
  }

  return result;
}

unint64_t sub_100B68B90()
{
  result = qword_101A127E8;
  if (!qword_101A127E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A127E8);
  }

  return result;
}

unint64_t sub_100B68BE4(uint64_t a1)
{
  result = sub_100B107DC();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100B68C4C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[2] = a4();
  a1[3] = a5();
  result = a6();
  a1[4] = result;
  return result;
}

unint64_t sub_100B68CA0()
{
  result = qword_101A127F0;
  if (!qword_101A127F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A127F0);
  }

  return result;
}

__n128 sub_100B68D00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100B68D24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 82))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 81);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100B68D6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 82) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 82) = 0;
    }

    if (a2)
    {
      *(result + 81) = -a2;
    }
  }

  return result;
}

__n128 sub_100B68DE0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100B68E04(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100B68E4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100B68EB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 56))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100B68EF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t _s4FillO8GradientV6FlavorOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t _s4FillO8GradientV6FlavorOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

__n128 sub_100B69034(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100B69058(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 81))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100B690A0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_100B69190()
{
  result = qword_101A127F8;
  if (!qword_101A127F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A127F8);
  }

  return result;
}

unint64_t sub_100B691E8()
{
  result = qword_101A12800;
  if (!qword_101A12800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12800);
  }

  return result;
}

unint64_t sub_100B69240()
{
  result = qword_101A12808;
  if (!qword_101A12808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12808);
  }

  return result;
}

unint64_t sub_100B69298()
{
  result = qword_101A12810;
  if (!qword_101A12810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12810);
  }

  return result;
}

unint64_t sub_100B692F0()
{
  result = qword_101A12818;
  if (!qword_101A12818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12818);
  }

  return result;
}

unint64_t sub_100B69348()
{
  result = qword_101A12820;
  if (!qword_101A12820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12820);
  }

  return result;
}

unint64_t sub_100B693A0()
{
  result = qword_101A12828;
  if (!qword_101A12828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12828);
  }

  return result;
}

unint64_t sub_100B693F8()
{
  result = qword_101A12830;
  if (!qword_101A12830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12830);
  }

  return result;
}

unint64_t sub_100B69450()
{
  result = qword_101A12838;
  if (!qword_101A12838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12838);
  }

  return result;
}