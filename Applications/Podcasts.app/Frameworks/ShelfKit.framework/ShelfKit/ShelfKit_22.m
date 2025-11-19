void sub_258D90(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_3EE0F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_258DE4()
{
  result = type metadata accessor for ActionButton();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Action();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ActionMenu(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_258E6C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x686372616573;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6573616863727570;
    }

    else
    {
      v4 = 0x64616F6C6E776F64;
    }

    if (v3 == 2)
    {
      v5 = 0xE900000000000064;
    }

    else
    {
      v5 = 0xE900000000000073;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x737472616863;
    }

    else
    {
      v4 = 0x686372616573;
    }

    v5 = 0xE600000000000000;
  }

  v6 = 0x6573616863727570;
  v7 = 0xE900000000000064;
  if (a2 != 2)
  {
    v6 = 0x64616F6C6E776F64;
    v7 = 0xE900000000000073;
  }

  if (a2)
  {
    v2 = 0x737472616863;
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
    v9 = 0xE600000000000000;
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
    v10 = sub_3EE804();
  }

  return v10 & 1;
}

uint64_t sub_258FAC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x64616F6C6E776F64;
    }

    else
    {
      v4 = 0x7972617262696CLL;
    }

    if (v2)
    {
      v3 = 0xE900000000000073;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x6B72616D6B6F6F62;
    v3 = 0xE900000000000073;
  }

  else if (a1 == 3)
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E6F6974617473;
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1701736302;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x64616F6C6E776F64;
    }

    else
    {
      v9 = 0x7972617262696CLL;
    }

    if (a2)
    {
      v8 = 0xE900000000000073;
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
    v5 = 0xE700000000000000;
    v6 = 0x6E6F6974617473;
    if (a2 != 3)
    {
      v6 = 1701736302;
      v5 = 0xE400000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x6B72616D6B6F6F62;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE900000000000073;
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
    v10 = sub_3EE804();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_259138(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0x796C746E65636572;
  v5 = 0xED00006465646441;
  if (a1 != 5)
  {
    v4 = 0x796C746E65636572;
    v5 = 0xEF64657461647055;
  }

  v6 = 0xEA00000000006465;
  if (a1 != 3)
  {
    v6 = 0xEB00000000676E69;
  }

  if (a1 <= 4u)
  {
    v4 = 0x64616F6C6E776F64;
    v5 = v6;
  }

  v7 = 0xE800000000000000;
  v8 = 0x736C656E6E616863;
  if (a1 != 1)
  {
    v8 = 0x6B72616D6B6F6F62;
    v7 = 0xE900000000000073;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v8 = 0x73776F6873;
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
        v11 = 0xE800000000000000;
        if (v9 != 0x736C656E6E616863)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v11 = 0xE900000000000073;
        if (v9 != 0x6B72616D6B6F6F62)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v11 = 0xE500000000000000;
      if (v9 != 0x73776F6873)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xED00006465646441;
      if (v9 != 0x796C746E65636572)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xEF64657461647055;
      if (v9 != 0x796C746E65636572)
      {
LABEL_39:
        v12 = sub_3EE804();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v11 = 0xEA00000000006465;
    if (v9 != 0x64616F6C6E776F64)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v11 = 0xEB00000000676E69;
    if (v9 != 0x64616F6C6E776F64)
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

uint64_t sub_259394(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE700000000000000;
  v6 = 0x6B726F77747261;
  v7 = 0xE500000000000000;
  v8 = 0x6575676573;
  if (a1 != 4)
  {
    v8 = 0xD000000000000011;
    v7 = 0x8000000000422950;
  }

  if (a1 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x656C746974;
  if (a1 != 1)
  {
    v10 = 0x4B6B726F77747261;
    v9 = 0xEB00000000646E69;
  }

  if (a1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (a1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v13 = 0xE200000000000000;
      if (v11 != 25705)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }

    if (a2 != 1)
    {
      v13 = 0xEB00000000646E69;
      if (v11 != 0x4B6B726F77747261)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }

    v13 = 0xE500000000000000;
    v14 = 1819568500;
    goto LABEL_22;
  }

  if (a2 == 3)
  {
    v13 = 0xE700000000000000;
    if (v11 != 0x6B726F77747261)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (a2 == 4)
  {
    v13 = 0xE500000000000000;
    v14 = 1969710451;
LABEL_22:
    if (v11 != (v14 & 0xFFFF0000FFFFFFFFLL | 0x6500000000))
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  v13 = 0x8000000000422950;
  if (v11 != 0xD000000000000011)
  {
LABEL_33:
    v15 = sub_3EE804();
    goto LABEL_34;
  }

LABEL_31:
  if (v12 != v13)
  {
    goto LABEL_33;
  }

  v15 = 1;
LABEL_34:

  return v15 & 1;
}

uint64_t sub_259564(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xEA00000000007365;
  v6 = 0x63416C6C41656573;
  v7 = 0xEC0000006E6F6974;
  if (a1 != 4)
  {
    v6 = 0xD000000000000011;
    v7 = 0x8000000000422950;
  }

  if (a1 == 3)
  {
    v6 = 0x69726F6765746163;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0xE500000000000000;
  v9 = 0xD000000000000014;
  if (a1 == 1)
  {
    v9 = 0x656C746974;
  }

  else
  {
    v8 = 0x8000000000422990;
  }

  if (a1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (a1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
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
      v12 = 0xEA00000000007365;
      if (v10 != 0x69726F6765746163)
      {
        goto LABEL_35;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEC0000006E6F6974;
      if (v10 != 0x63416C6C41656573)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v12 = 0x8000000000422950;
      if (v10 != 0xD000000000000011)
      {
LABEL_35:
        v13 = sub_3EE804();
        goto LABEL_36;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x656C746974)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v12 = 0x8000000000422990;
      if (v10 != 0xD000000000000014)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    v12 = 0xE200000000000000;
    if (v10 != 25705)
    {
      goto LABEL_35;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_35;
  }

  v13 = 1;
LABEL_36:

  return v13 & 1;
}

uint64_t sub_25974C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE200000000000000;
    v12 = 25705;
    v13 = 0xE300000000000000;
    v14 = 7107189;
    if (a1 != 2)
    {
      v14 = 0x656372756F73;
      v13 = 0xE600000000000000;
    }

    if (a1)
    {
      v12 = 0x6449656C646E7562;
      v11 = 0xE800000000000000;
    }

    if (a1 <= 1u)
    {
      v9 = v12;
    }

    else
    {
      v9 = v14;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v13;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x6575676573;
    v5 = 0x4D747865746E6F63;
    v6 = 0xEB00000000756E65;
    if (a1 != 7)
    {
      v5 = 0xD000000000000011;
      v6 = 0x8000000000422950;
    }

    if (a1 != 6)
    {
      v4 = v5;
      v3 = v6;
    }

    v7 = 0x6F69746172647968;
    v8 = 0xE90000000000006ELL;
    if (a1 != 4)
    {
      v7 = 0x6D617266656D6974;
      v8 = 0xE900000000000065;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE300000000000000;
        if (v9 != 7107189)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v15 = 0xE600000000000000;
        if (v9 != 0x656372756F73)
        {
          goto LABEL_51;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xE800000000000000;
      if (v9 != 0x6449656C646E7562)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v15 = 0xE200000000000000;
      if (v9 != 25705)
      {
        goto LABEL_51;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0xE90000000000006ELL;
      if (v9 != 0x6F69746172647968)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v15 = 0xE900000000000065;
      if (v9 != 0x6D617266656D6974)
      {
LABEL_51:
        v16 = sub_3EE804();
        goto LABEL_52;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0xE500000000000000;
    if (v9 != 0x6575676573)
    {
      goto LABEL_51;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0xEB00000000756E65;
    if (v9 != 0x4D747865746E6F63)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v15 = 0x8000000000422950;
    if (v9 != 0xD000000000000011)
    {
      goto LABEL_51;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_51;
  }

  v16 = 1;
LABEL_52:

  return v16 & 1;
}

uint64_t sub_259A14(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x534E4F4954504FLL;
  if (a1 != 6)
  {
    v5 = 0x4543415254;
    v4 = 0xE500000000000000;
  }

  v6 = 0xE600000000000000;
  v7 = 0x4554454C4544;
  if (a1 != 4)
  {
    v7 = 0x5443454E4E4F43;
    v6 = 0xE700000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE400000000000000;
  v9 = 1145128264;
  if (a1 != 2)
  {
    v9 = 5526864;
    v8 = 0xE300000000000000;
  }

  v10 = 1414745936;
  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v10 = 5522759;
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
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE700000000000000;
        if (v11 != 0x534E4F4954504FLL)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE500000000000000;
        if (v11 != 0x4543415254)
        {
LABEL_45:
          v14 = sub_3EE804();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x4554454C4544)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x5443454E4E4F43)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE400000000000000;
      if (v11 != 1145128264)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE300000000000000;
      if (v11 != 5526864)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE400000000000000;
    if (v11 != 1414745936)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE300000000000000;
    if (v11 != 5522759)
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

uint64_t sub_259C44(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E6F69746341;
  v3 = a1;
  v4 = 0xE600000000000000;
  v5 = 0x6566664F776F6853;
  v6 = 0xE900000000000072;
  if (a1 != 6)
  {
    v5 = 0x79726F6765746143;
    v6 = 0xE800000000000000;
  }

  v7 = 0x4F65646F73697045;
  if (a1 != 4)
  {
    v7 = 0x4F74736163646F50;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v6 = 0xEC00000072656666;
  }

  v8 = 0x4C6C656E6E616843;
  if (a1 != 2)
  {
    v8 = 0x4C65646F73697045;
  }

  v9 = 0x70756B636F4CLL;
  if (a1)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v9 = 0x6E6F69746341;
  }

  if (a1 > 1u)
  {
    v4 = 0xED000070756B636FLL;
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

  if (v3 <= 3)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v12 = 0xE900000000000072;
        if (v10 != 0x6566664F776F6853)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x79726F6765746143)
        {
          goto LABEL_43;
        }
      }
    }

    else
    {
      if (a2 == 4)
      {
        v13 = 0x4F65646F73697045;
      }

      else
      {
        v13 = 0x4F74736163646F50;
      }

      v12 = 0xEC00000072656666;
      if (v10 != v13)
      {
        goto LABEL_43;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v12 = 0xED000070756B636FLL;
        if (v10 != 0x4C6C656E6E616843)
        {
          goto LABEL_43;
        }

        goto LABEL_40;
      }

      v2 = 0x4C65646F73697045;
      v12 = 0xED000070756B636FLL;
    }

    else
    {
      v12 = 0xE600000000000000;
      if (a2)
      {
        if (v10 != 0x70756B636F4CLL)
        {
          goto LABEL_43;
        }

        goto LABEL_40;
      }
    }

    if (v10 != v2)
    {
LABEL_43:
      v14 = sub_3EE804();
      goto LABEL_44;
    }
  }

LABEL_40:
  if (v11 != v12)
  {
    goto LABEL_43;
  }

  v14 = 1;
LABEL_44:

  return v14 & 1;
}

uint64_t sub_259EEC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE400000000000000;
  v6 = 1701605234;
  v7 = 0xE600000000000000;
  v8 = 0x6E6F69746361;
  if (a1 != 4)
  {
    v8 = 0xD000000000000011;
    v7 = 0x8000000000422950;
  }

  if (a1 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x656C746974;
  if (a1 != 1)
  {
    v10 = 1852793705;
    v9 = 0xE400000000000000;
  }

  if (a1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (a1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v13 = 0xE400000000000000;
      if (v11 != 1701605234)
      {
        goto LABEL_33;
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x6E6F69746361)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v13 = 0x8000000000422950;
      if (v11 != 0xD000000000000011)
      {
LABEL_33:
        v14 = sub_3EE804();
        goto LABEL_34;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v13 = 0xE500000000000000;
      if (v11 != 0x656C746974)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v13 = 0xE400000000000000;
      if (v11 != 1852793705)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
    v13 = 0xE200000000000000;
    if (v11 != 25705)
    {
      goto LABEL_33;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_33;
  }

  v14 = 1;
LABEL_34:

  return v14 & 1;
}

uint64_t sub_25A098(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6574617473;
  if (a1 != 5)
  {
    v5 = 0x6E6F69746361;
    v4 = 0xE600000000000000;
  }

  v6 = 1852793705;
  if (a1 != 3)
  {
    v6 = 1701605234;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = 0xE400000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x656C746974627573;
  if (a1 != 1)
  {
    v8 = 25705;
    v7 = 0xE200000000000000;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v8 = 0x656C746974;
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

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v11 = 0xE800000000000000;
        if (v9 != 0x656C746974627573)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v11 = 0xE200000000000000;
        if (v9 != 25705)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v11 = 0xE500000000000000;
      if (v9 != 0x656C746974)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xE500000000000000;
      if (v9 != 0x6574617473)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x6E6F69746361)
      {
LABEL_39:
        v12 = sub_3EE804();
        goto LABEL_40;
      }
    }
  }

  else
  {
    v11 = 0xE400000000000000;
    if (a2 == 3)
    {
      if (v9 != 1852793705)
      {
        goto LABEL_39;
      }
    }

    else if (v9 != 1701605234)
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

uint64_t sub_25A278(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x656C746974;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE800000000000000;
    v3 = 0x656C746974627573;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 1852793705;
    }

    else
    {
      v3 = 0x6E6572646C696863;
    }

    if (v2 == 3)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x656C746974;
    }

    else
    {
      v6 = 25705;
    }

    if (a2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE800000000000000;
    if (v3 != 0x656C746974627573)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE400000000000000;
    if (v3 != 1852793705)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    if (v3 != 0x6E6572646C696863)
    {
LABEL_34:
      v7 = sub_3EE804();
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

uint64_t static ModernShelf.generateNewUniqueId()()
{
  v0 = sub_3E5FC4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E5FB4();
  v4 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t ModernShelf.ItemPresentation.init(itemKind:orientation:background:horizontalRows:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 1) = a2 & 1;
  *(a5 + 2) = a3;
  *(a5 + 6) = BYTE4(a3);
  *(a5 + 7) = BYTE5(a3) & 1;
  *(a5 + 8) = a4;
  return result;
}

uint64_t ModernShelf.init(id:header:itemPresentation:items:url:mergeWhenFetched:hideFromCarPlay:shelvesIntent:impressionMetrics:metricsName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v28 = *a4;
  v16 = a4[1];
  v30 = *(a4 + 2);
  v17 = a4[6];
  v18 = a4[7];
  v27 = *(a4 + 1);
  v19 = type metadata accessor for ModernShelf();
  v20 = v19[9];
  v21 = &a9[v19[8]];
  v22 = sub_3E5DC4();
  (*(*(v22 - 8) + 56))(&a9[v20], 1, 1, v22);
  *a9 = a1;
  *(a9 + 1) = a2;
  sub_FACC(a3, &a9[v19[5]], &qword_4F1AC0);
  v23 = &a9[v19[6]];
  *v23 = v28;
  v23[1] = v16;
  v23[6] = v17;
  *(v23 + 2) = v30;
  v23[7] = v18;
  *(v23 + 1) = v27;
  *&a9[v19[7]] = a5;
  sub_51F9C(a6, &a9[v20], &unk_4E9EE0);
  a9[v19[10]] = a7;
  a9[v19[11]] = a8;
  v24 = &a9[v19[12]];
  v25 = *(a10 + 16);
  *v24 = *a10;
  *(v24 + 1) = v25;
  *(v24 + 4) = *(a10 + 32);
  result = sub_FACC(a11, &a9[v19[13]], &unk_4E9170);
  *v21 = a12;
  *(v21 + 1) = a13;
  return result;
}

uint64_t type metadata accessor for ModernShelf()
{
  result = qword_4FCA38;
  if (!qword_4FCA38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static ModernShelf.loadingShelf(id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v24 = a1;
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v7 = type metadata accessor for ModernShelf();
  v8 = v7[5];
  v9 = type metadata accessor for Header(0);
  (*(*(v9 - 8) + 56))(&a3[v8], 1, 1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_506560);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_3F5630;
  v11 = type metadata accessor for EmptyModel();
  *(v10 + 56) = v11;
  *(v10 + 64) = sub_25DE5C(&qword_4FC9A0, type metadata accessor for EmptyModel);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v10 + 32));
  v13 = *(v11 + 20);
  v14 = sub_3EC634();
  v15 = *(*(v14 - 8) + 56);
  v15(boxed_opaque_existential_0Tm + v13, 1, 1, v14);
  *boxed_opaque_existential_0Tm = 0x49676E6964616F6CLL;
  boxed_opaque_existential_0Tm[1] = 0xEB000000006D6574;
  v16 = sub_3E5DC4();
  v17 = *(*(v16 - 8) + 56);
  v17(v6, 1, 1, v16);
  v18 = &a3[v7[12]];
  *(v18 + 4) = 0;
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v15(&a3[v7[13]], 1, 1, v14);
  v19 = v7[9];
  v20 = &a3[v7[8]];
  v17(&a3[v19], 1, 1, v16);
  v21 = v25;
  *a3 = v24;
  *(a3 + 1) = v21;
  v22 = &a3[v7[6]];
  *v22 = 37;
  *(v22 + 3) = 256;
  *(v22 + 2) = 0;
  *(v22 + 1) = 1;
  *&a3[v7[7]] = v10;

  result = sub_51F9C(v6, &a3[v19], &unk_4E9EE0);
  a3[v7[10]] = 1;
  a3[v7[11]] = 0;
  *v20 = 0;
  *(v20 + 1) = 0;
  return result;
}

uint64_t static ModernShelf.bubbleTipShelf(for:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  sub_3E62F4();
  sub_3E62D4();

  v24 = sub_3E62E4();
  v8 = v7;

  v9 = type metadata accessor for ModernShelf();
  v10 = v9[5];
  v11 = type metadata accessor for Header(0);
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_506560);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_3F5630;
  *(v12 + 56) = type metadata accessor for BubbleTip();
  *(v12 + 64) = sub_25DE5C(&qword_4FC9A8, type metadata accessor for BubbleTip);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v12 + 32));
  sub_25DF04(a1, boxed_opaque_existential_0Tm, type metadata accessor for BubbleTip);
  v14 = sub_3E5DC4();
  v15 = *(*(v14 - 8) + 56);
  v15(v6, 1, 1, v14);
  v16 = a2 + v9[12];
  *(v16 + 4) = 0;
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v17 = v9[13];
  v18 = sub_3EC634();
  (*(*(v18 - 8) + 56))(a2 + v17, 1, 1, v18);
  v19 = v9[9];
  v20 = (a2 + v9[8]);
  v15(a2 + v19, 1, 1, v14);
  *a2 = v24;
  a2[1] = v8;
  v21 = a2 + v9[6];
  *v21 = 0;
  *(v21 + 3) = 256;
  *(v21 + 2) = 0;
  *(v21 + 1) = 1;
  *(a2 + v9[7]) = v12;
  result = sub_51F9C(v6, a2 + v19, &unk_4E9EE0);
  *(a2 + v9[10]) = 1;
  *(a2 + v9[11]) = 0;
  *v20 = 0;
  v20[1] = 0;
  return result;
}

uint64_t static ModernShelf.errorShelf(id:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v25 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for ModernShelf();
  v11 = v10[5];
  v12 = type metadata accessor for Header(0);
  (*(*(v12 - 8) + 56))(&a4[v11], 1, 1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_506560);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_3F5630;
  *(v13 + 56) = type metadata accessor for ErrorModel();
  *(v13 + 64) = sub_25DE5C(&qword_4FC9B0, type metadata accessor for ErrorModel);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v13 + 32));
  sub_25DF04(a3, boxed_opaque_existential_0Tm, type metadata accessor for ErrorModel);
  v15 = sub_3E5DC4();
  v16 = *(*(v15 - 8) + 56);
  v16(v9, 1, 1, v15);
  v17 = &a4[v10[12]];
  *(v17 + 4) = 0;
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v18 = v10[13];
  v19 = sub_3EC634();
  (*(*(v19 - 8) + 56))(&a4[v18], 1, 1, v19);
  v20 = v10[9];
  v21 = &a4[v10[8]];
  v16(&a4[v20], 1, 1, v15);
  *a4 = v25;
  *(a4 + 1) = a2;
  v22 = &a4[v10[6]];
  *v22 = 61;
  *(v22 + 3) = 256;
  *(v22 + 2) = 0;
  *(v22 + 1) = 1;
  *&a4[v10[7]] = v13;

  result = sub_51F9C(v9, &a4[v20], &unk_4E9EE0);
  a4[v10[10]] = 1;
  a4[v10[11]] = 0;
  *v21 = 0;
  *(v21 + 1) = 0;
  return result;
}

uint64_t ModernShelf.uberStyle.getter()
{
  v1 = *(v0 + *(type metadata accessor for ModernShelf() + 24));
  if (v1 <= 0x2A)
  {
    if (v1 == 34)
    {
      return 6;
    }

    if (v1 != 35)
    {
      if (v1 == 36)
      {
        return 1;
      }

      return 8;
    }

    return 2;
  }

  else if (v1 > 50)
  {
    if (v1 != 51)
    {
      if (v1 == 74)
      {
        return 7;
      }

      return 8;
    }

    return 0;
  }

  else
  {
    if (v1 != 43)
    {
      if (v1 == 44)
      {
        return 4;
      }

      return 8;
    }

    return 3;
  }
}

id ModernShelf.Background.color.getter(uint64_t a1)
{
  if ((a1 & 0x100000000) == 0)
  {
    v1 = [objc_allocWithZone(UIColor) initWithRed:a1 / 255.0 green:BYTE1(a1) / 255.0 blue:BYTE2(a1) / 255.0 alpha:BYTE3(a1) / 255.0];
    v2 = sub_3EDEA4();

    return v2;
  }

  if (a1 <= 1)
  {
    if (a1)
    {
      v4 = [objc_opt_self() secondarySystemBackgroundColor];
    }

    else
    {
      v4 = [objc_opt_self() systemBackgroundColor];
    }

    return v4;
  }

  if (a1 == 2)
  {
    v4 = [objc_opt_self() tertiarySystemBackgroundColor];
    return v4;
  }

  return 0;
}

BOOL static ModernShelf.Background.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x100000000) != 0)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return (a2 & 0x100000000) != 0 && a2 == 2;
      }

      else
      {
        return (a2 & 0x100000000) != 0 && a2 > 2;
      }
    }

    else if (a1)
    {
      return (a2 & 0x100000000) != 0 && a2 == 1;
    }

    else
    {
      return (a2 & 0x100000000) != 0 && !a2;
    }
  }

  else
  {
    if ((a2 & 0x100000000) != 0)
    {
      return 0;
    }

    return a1 == a2;
  }
}

void ModernShelf.Background.hash(into:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a2 & 0x100000000) != 0)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v3 = 2;
      }

      else
      {
        v3 = 3;
      }
    }

    else
    {
      v3 = a2 != 0;
    }

    sub_3EE964(v3);
  }

  else
  {
    sub_3EE964(4uLL);
    sub_3EE984(bswap32(v2));
  }
}

Swift::Int ModernShelf.Background.hashValue.getter(unint64_t a1)
{
  sub_3EE954();
  ModernShelf.Background.hash(into:)(v3, a1 | ((HIDWORD(a1) & 1) << 32));
  return sub_3EE9A4();
}

Swift::Int sub_25B2B4()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_3EE954();
  ModernShelf.Background.hash(into:)(v4, v1 | (v2 << 32));
  return sub_3EE9A4();
}

Swift::Int sub_25B328()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_3EE954();
  ModernShelf.Background.hash(into:)(v4, v1 | (v2 << 32));
  return sub_3EE9A4();
}

BOOL sub_25B378(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 4);
  if (*(a1 + 4) != 1)
  {
    if ((v6 & 1) == 0)
    {
      return sub_259EE0(v4, v5);
    }

    return 0;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v5 <= 2)
      {
        v6 = 0;
      }

      return (v6 & 1) != 0;
    }

    v7 = v5 == 2;
  }

  else if (v4)
  {
    v7 = v5 == 1;
  }

  else
  {
    v7 = v5 == 0;
  }

  if (!v7)
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

ShelfKit::ModernShelf::ItemPresentation::Orientation_optional __swiftcall ModernShelf.ItemPresentation.Orientation.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_4B2108;
  v6._object = object;
  v3 = sub_3EE624(v2, v6);

  if (v3 == 1)
  {
    v4.value = ShelfKit_ModernShelf_ItemPresentation_Orientation_horizontal;
  }

  else
  {
    v4.value = ShelfKit_ModernShelf_ItemPresentation_Orientation_unknownDefault;
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

uint64_t ModernShelf.ItemPresentation.Orientation.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x746E6F7A69726F68;
  }

  else
  {
    return 0x6C61636974726576;
  }
}

uint64_t sub_25B47C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746E6F7A69726F68;
  }

  else
  {
    v3 = 0x6C61636974726576;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEA00000000006C61;
  }

  if (*a2)
  {
    v5 = 0x746E6F7A69726F68;
  }

  else
  {
    v5 = 0x6C61636974726576;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006C61;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_3EE804();
  }

  return v8 & 1;
}

uint64_t sub_25B528@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_4B2108;
  v8._object = v3;
  v5 = sub_3EE624(v4, v8);

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

void sub_25B588(uint64_t *a1@<X8>)
{
  v2 = 0x6C61636974726576;
  if (*v1)
  {
    v2 = 0x746E6F7A69726F68;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006C61;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_25B5CC()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_25B654()
{
  sub_3ED394();
}

Swift::Int sub_25B6C8()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t ModernShelf.ItemPresentation.background.setter(uint64_t result)
{
  *(v1 + 2) = result;
  *(v1 + 6) = BYTE4(result);
  *(v1 + 7) = BYTE5(result) & 1;
  return result;
}

void ModernShelf.ItemPresentation.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 6);
  v4 = *(v1 + 2);
  v5 = *(v1 + 7);
  v6 = *(v1 + 8);
  ModernShelf.ItemKind.rawValue.getter(*v1);
  sub_3ED394();

  sub_3ED394();

  if (v5 == 1)
  {
    sub_3EE974(0);
  }

  else
  {
    sub_3EE974(1u);
    ModernShelf.Background.hash(into:)(a1, v4 | ((((v4 | (v3 << 32)) >> 32) & 1) << 32));
  }

  sub_3EE964(v6);
}

Swift::Int ModernShelf.ItemPresentation.hashValue.getter()
{
  v1 = *(v0 + 6);
  v2 = *(v0 + 2);
  v3 = *(v0 + 7);
  v4 = *(v0 + 8);
  v5 = *v0;
  sub_3EE954();
  ModernShelf.ItemKind.rawValue.getter(v5);
  sub_3ED394();

  sub_3ED394();

  if (v3 == 1)
  {
    sub_3EE974(0);
  }

  else
  {
    sub_3EE974(1u);
    ModernShelf.Background.hash(into:)(v7, v2 | ((((v2 | (v1 << 32)) >> 32) & 1) << 32));
  }

  sub_3EE964(v4);
  return sub_3EE9A4();
}

Swift::Int sub_25B9F8()
{
  v1 = *(v0 + 6);
  v2 = *(v0 + 2);
  v3 = *(v0 + 7);
  v4 = *(v0 + 8);
  v5 = *v0;
  sub_3EE954();
  ModernShelf.ItemKind.rawValue.getter(v5);
  sub_3ED394();

  sub_3ED394();

  if (v3 == 1)
  {
    sub_3EE974(0);
  }

  else
  {
    sub_3EE974(1u);
    ModernShelf.Background.hash(into:)(v7, v2 | ((((v2 | (v1 << 32)) >> 32) & 1) << 32));
  }

  sub_3EE964(v4);
  return sub_3EE9A4();
}

uint64_t ModernShelf.itemPresentation.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ModernShelf();
  v4 = (v1 + *(result + 24));
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 2);
  v8 = v4[6];
  v9 = v4[7];
  v10 = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 6) = v8;
  *(a1 + 2) = v7;
  *(a1 + 7) = v9;
  *(a1 + 8) = v10;
  return result;
}

uint64_t ModernShelf.itemPresentation.setter(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 2);
  v5 = a1[6];
  v6 = a1[7];
  v7 = *(a1 + 1);
  result = type metadata accessor for ModernShelf();
  v9 = v1 + *(result + 24);
  *v9 = v2;
  *(v9 + 1) = v3;
  *(v9 + 6) = v5;
  *(v9 + 2) = v4;
  *(v9 + 7) = v6;
  *(v9 + 8) = v7;
  return result;
}

uint64_t ModernShelf.items.getter()
{
  type metadata accessor for ModernShelf();
}

uint64_t ModernShelf.items.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ModernShelf() + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ModernShelf.metricsName.getter()
{
  v1 = *(v0 + *(type metadata accessor for ModernShelf() + 32));

  return v1;
}

uint64_t ModernShelf.metricsName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ModernShelf() + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

__n128 ModernShelf.shelvesIntent.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ModernShelf() + 48);
  if (*(v3 + 24))
  {

    sub_1F958(v3, a1);
  }

  else
  {
    result = *v3;
    v5 = *(v3 + 16);
    *a1 = *v3;
    *(a1 + 16) = v5;
    *(a1 + 32) = *(v3 + 32);
  }

  return result;
}

uint64_t static ModernShelf.collectionUniqueItemIdFor(section:item:)(uint64_t *a1, void *a2)
{
  v9 = *a1;

  v10._countAndFlagsBits = 45;
  v10._object = 0xE100000000000000;
  sub_3ED3D4(v10);
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  v5 = (*(v4 + 16))(v3, v4);
  v7 = v6;

  v11._countAndFlagsBits = v5;
  v11._object = v7;
  sub_3ED3D4(v11);

  return v9;
}

uint64_t ModernShelf.merging(shelf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ModernShelf();
  if ((*(a1 + *(v5 + 40)) & 1) == 0)
  {
    return sub_25DF04(a1, a2, type metadata accessor for ModernShelf);
  }

  v6 = v5;
  v7 = *(v5 + 24);
  v8 = *(v2 + v7);
  v9 = ModernShelf.ItemKind.rawValue.getter(*(a1 + v7));
  v11 = v10;
  if (v9 == ModernShelf.ItemKind.rawValue.getter(v8) && v11 == v12)
  {
  }

  else
  {
    v14 = sub_3EE804();

    if ((v14 & 1) == 0)
    {
      type metadata accessor for ShelfError(0);
      sub_25DE5C(&qword_4FC9B8, type metadata accessor for ShelfError);
      swift_allocError();
      v16 = v15;
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC9C0) + 48);
      sub_25DF04(v2, v16, type metadata accessor for ModernShelf);
      sub_25DF04(a1, v16 + v17, type metadata accessor for ModernShelf);
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }

  sub_25DF04(v2, a2, type metadata accessor for ModernShelf);

  sub_41468(v19);
  v20 = *(v6 + 36);
  sub_FCF8(a2 + v20, &unk_4E9EE0);
  v21 = sub_3E5DC4();
  return (*(*(v21 - 8) + 56))(a2 + v20, 1, 1, v21);
}

BOOL Array<A>.shelvesAreEmpty.getter(uint64_t a1)
{
  v2 = type metadata accessor for ModernShelf();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 0;
  v7 = *(a1 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    sub_25DF04(a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v6++, v5, type metadata accessor for ModernShelf);
    v9 = *(*&v5[*(v2 + 28)] + 16);
    sub_25DEA4(v5, type metadata accessor for ModernShelf);
  }

  while (!v9);
  return v7 == v8;
}

BOOL Array<A>.shelvesHaveContent.getter(uint64_t a1)
{
  v2 = type metadata accessor for ModernShelf();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 0;
  v7 = *(a1 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    sub_25DF04(a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v6++, v5, type metadata accessor for ModernShelf);
    v9 = *(*&v5[*(v2 + 28)] + 16);
    sub_25DEA4(v5, type metadata accessor for ModernShelf);
  }

  while (!v9);
  return v7 != v8;
}

uint64_t ModernShelf.init(id:title:itemPresentation:items:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v70 = a6;
  v71 = a7;
  v58 = a3;
  v59 = a4;
  v67 = a1;
  v68 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v8 - 8);
  v69 = &v52 - v9;
  v54 = type metadata accessor for Header(0);
  v66 = *(v54 - 8);
  __chkstk_darwin(v54);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v12 - 8);
  v14 = &v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB0);
  __chkstk_darwin(v15 - 8);
  v17 = &v52 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB8);
  __chkstk_darwin(v18 - 8);
  v20 = &v52 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AC0);
  __chkstk_darwin(v21 - 8);
  v60 = &v52 - v22;
  v23 = *a5;
  v63 = a5[1];
  v64 = v23;
  v65 = *(a5 + 2) | (a5[6] << 32);
  v62 = a5[7];
  v61 = *(a5 + 1);
  v24 = type metadata accessor for ActionMenu(0);
  v53 = *(*(v24 - 8) + 56);
  v55 = v20;
  v53(v20, 1, 1, v24);
  v25 = type metadata accessor for Header.PrimaryAction(0);
  v26 = *(*(v25 - 8) + 56);
  v57 = v17;
  v26(v17, 1, 1, v25);
  v27 = sub_3E7784();
  v28 = *(*(v27 - 8) + 56);
  v56 = v14;
  v28(v14, 1, 1, v27);
  v11[32] = 0;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v29 = v54;
  v52 = *(v54 + 28);
  v53(&v11[v52], 1, 1, v24);
  v30 = *(v29 + 32);
  v26(&v11[v30], 1, 1, v25);
  v31 = v29;
  v32 = *(v29 + 36);
  v28(&v11[v32], 1, 1, v27);
  v34 = v58;
  v33 = v59;
  if (sub_3EE0E4())
  {
    *v11 = v34;
    *(v11 + 1) = v33;
    *(v11 + 2) = 0;
    *(v11 + 3) = 0;
    v11[32] = 0;
    sub_51F9C(v55, &v11[v52], &qword_4F1AB8);
    v35 = v57;
    sub_F7C5C(v57, &v11[v30]);
    sub_51F9C(v56, &v11[v32], &qword_4F1D50);
    v36 = v60;
    sub_25DF04(v11, v60, type metadata accessor for Header);
    (*(v66 + 56))(v36, 0, 1, v31);
    sub_FCF8(v35, &qword_4F1AB0);
    sub_25DEA4(v11, type metadata accessor for Header);
  }

  else
  {

    sub_FCF8(v56, &qword_4F1D50);
    sub_FCF8(v55, &qword_4F1AB8);
    sub_FCF8(v57, &qword_4F1AB0);
    sub_25DEA4(v11, type metadata accessor for Header);
    v36 = v60;
    (*(v66 + 56))(v60, 1, 1, v31);
  }

  v37 = sub_3E5DC4();
  v38 = *(*(v37 - 8) + 56);
  v39 = v69;
  v38(v69, 1, 1, v37);
  v40 = type metadata accessor for ModernShelf();
  v41 = v71;
  v42 = &v71[v40[12]];
  *(v42 + 4) = 0;
  *v42 = 0u;
  *(v42 + 1) = 0u;
  v43 = v40[13];
  v44 = sub_3EC634();
  (*(*(v44 - 8) + 56))(&v41[v43], 1, 1, v44);
  v45 = v40[9];
  v46 = &v41[v40[8]];
  v38(&v41[v45], 1, 1, v37);
  v47 = v68;
  *v41 = v67;
  *(v41 + 1) = v47;
  sub_FACC(v36, &v41[v40[5]], &qword_4F1AC0);
  v48 = &v41[v40[6]];
  v49 = v63;
  *v48 = v64;
  v48[1] = v49;
  v50 = v65;
  v48[6] = BYTE4(v65);
  *(v48 + 2) = v50;
  v48[7] = v62;
  *(v48 + 1) = v61;
  *&v41[v40[7]] = v70;
  result = sub_51F9C(v39, &v41[v45], &unk_4E9EE0);
  v41[v40[10]] = 1;
  v41[v40[11]] = 0;
  *v46 = 0;
  *(v46 + 1) = 0;
  return result;
}

Swift::String_optional __swiftcall ModernShelf.accessibilityLabel()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AC0);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v20 - v5;
  __chkstk_darwin(v7);
  v9 = (&v20 - v8);
  v10 = *(type metadata accessor for ModernShelf() + 20);
  sub_FBD0(v0 + v10, v9, &qword_4F1AC0);
  v11 = type metadata accessor for Header(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v9, 1, v11) == 1)
  {
    sub_FCF8(v9, &qword_4F1AC0);
  }

  else
  {
    v13 = *v9;
    v14 = v9[1];

    sub_25DEA4(v9, type metadata accessor for Header);
    if (v14)
    {
      sub_FBD0(v0 + v10, v6, &qword_4F1AC0);
      if (v12(v6, 1, v11) == 1)
      {
        sub_FCF8(v6, &qword_4F1AC0);
      }

      else
      {
        v18 = *(v6 + 2);
        v17 = *(v6 + 3);

        sub_25DEA4(v6, type metadata accessor for Header);
        if (v17)
        {
          v20 = v13;
          v21 = v14;
          v22._countAndFlagsBits = 8236;
          v22._object = 0xE200000000000000;
          sub_3ED3D4(v22);
          v23._countAndFlagsBits = v18;
          v23._object = v17;
          sub_3ED3D4(v23);

          v13 = v20;
          v14 = v21;
        }
      }

      goto LABEL_10;
    }
  }

  sub_FBD0(v0 + v10, v3, &qword_4F1AC0);
  if (v12(v3, 1, v11) == 1)
  {
    sub_FCF8(v3, &qword_4F1AC0);
LABEL_9:
    v13 = 0;
    v14 = 0;
    goto LABEL_10;
  }

  v13 = *(v3 + 2);
  v14 = *(v3 + 3);

  sub_25DEA4(v3, type metadata accessor for Header);
  if (!v14)
  {
    goto LABEL_9;
  }

LABEL_10:
  v15 = v13;
  v16 = v14;
  result.value._object = v16;
  result.value._countAndFlagsBits = v15;
  return result;
}

uint64_t ModernShelf.generateItemLevelImpressionFields(interactionView:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = sub_3EC544();
  __chkstk_darwin(v3 - 8);
  v54 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v5 - 8);
  v47 = &v44 - v6;
  v46 = sub_3EC5F4();
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v44 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v53 = &v44 - v9;
  v10 = type metadata accessor for ModernShelf();
  v11 = *(v10 + 52);
  v12 = sub_3EC634();
  v51 = *(v12 - 8);
  v48 = *(v51 + 48);
  v49 = v11;
  if (v48(v2 + v11, 1, v12) != 1)
  {
    sub_3ED9D4();
    sub_3B590();
    v13 = sub_3EE0C4();
    sub_3E9754();
  }

  v14 = *(v2 + *(v10 + 24));
  v15 = v14 == 9 || v14 == 28;
  v52 = v12;
  if (v15)
  {
    v16 = sub_3E8534();
  }

  else
  {
    v16 = sub_3E85C4();
  }

  v18 = v16;
  v19 = v17;
  v20 = sub_3E7844();
  v22 = v21;
  *(&v60 + 1) = &type metadata for String;
  *&v59 = v18;
  *(&v59 + 1) = v19;
  sub_1FB90(&v59, v58);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56 = _swiftEmptyDictionarySingleton;
  sub_39B88(v58, v20, v22, isUniquelyReferenced_nonNull_native);

  v50 = v56;
  v24 = sub_3E7924();
  v26 = v25;
  v59 = 0u;
  v60 = 0u;
  v27 = ModernShelf.metricsName(sender:)();
  v29 = v28;
  sub_FCF8(&v59, &unk_501090);
  *(&v60 + 1) = &type metadata for String;
  *&v59 = v27;
  *(&v59 + 1) = v29;
  sub_1FB90(&v59, v58);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v56 = _swiftEmptyDictionarySingleton;
  sub_39B88(v58, v24, v26, v30);

  v31 = sub_3E7854();
  v33 = v32;
  *(&v60 + 1) = &type metadata for String;
  *&v59 = v18;
  *(&v59 + 1) = v19;
  sub_1FB90(&v59, v58);
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v56 = _swiftEmptyDictionarySingleton;
  sub_39B88(v58, v31, v33, v34);

  v35 = v47;
  sub_FBD0(v2 + v49, v47, &unk_4E9170);
  v36 = v52;
  if (v48(v35, 1, v52) == 1)
  {
    sub_FCF8(v35, &unk_4E9170);
    v59 = 0u;
    v60 = 0u;
    v37 = ModernShelf.metricsName(sender:)();
    v39 = v38;
    sub_FCF8(&v59, &unk_501090);
    *&v59 = v37;
    *(&v59 + 1) = v39;
    *&v58[0] = 32;
    *(&v58[0] + 1) = 0xE100000000000000;
    v56 = 0;
    v57 = 0xE000000000000000;
    sub_68DC4();
    sub_3EE194();

    v40 = v51;
  }

  else
  {
    v41 = v44;
    sub_3EC614();
    v40 = v51;
    (*(v51 + 8))(v35, v36);
    sub_3EC5E4();
    (*(v45 + 8))(v41, v46);
  }

  sub_3EC5D4();
  sub_3EC534();
  v42 = v55;
  sub_3EC604();
  return (*(v40 + 56))(v42, 0, 1, v36);
}

unint64_t ModernShelf.metricsName(sender:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v1 - 8);
  v3 = &v24[-v2];
  v4 = sub_3EC634();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AC0);
  __chkstk_darwin(v8 - 8);
  v10 = &v24[-v9];
  v11 = type metadata accessor for ModernShelf();
  v12 = (v0 + *(v11 + 32));
  if (v12[1])
  {
    v13 = *v12;
    goto LABEL_3;
  }

  v15 = v11;
  sub_FBD0(v0 + *(v11 + 20), v10, &qword_4F1AC0);
  v16 = type metadata accessor for Header(0);
  if ((*(*(v16 - 8) + 48))(v10, 1, v16) == 1)
  {
    sub_FCF8(v10, &qword_4F1AC0);
  }

  else
  {
    v13 = *v10;
    v17 = v10[1];

    sub_25DEA4(v10, type metadata accessor for Header);
    if (v17)
    {
      goto LABEL_3;
    }
  }

  sub_FBD0(v0 + *(v15 + 52), v3, &unk_4E9170);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_FCF8(v3, &unk_4E9170);
  }

  else
  {
    v18 = v0;
    (*(v5 + 32))(v7, v3, v4);
    v19 = sub_3EC624();
    if (*(v19 + 16) && (v20 = sub_552A8(1701667182, 0xE400000000000000), (v21 & 1) != 0))
    {
      sub_2F4AC(*(v19 + 56) + 32 * v20, v24);
      (*(v5 + 8))(v7, v4);

      if (swift_dynamicCast())
      {
        v13 = v23;
        goto LABEL_3;
      }
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    v0 = v18;
  }

  v22 = *(v0 + *(v15 + 24));
  if (v22 > 0x35)
  {
    if (*(v0 + *(v15 + 24)) > 0x3Fu)
    {
      if (v22 == 64)
      {
        v13 = 0xD000000000000011;
        goto LABEL_3;
      }

      if (v22 == 70)
      {
        v13 = 0xD000000000000018;
        goto LABEL_3;
      }
    }

    else if (v22 - 59 < 2 || v22 == 54)
    {
      v13 = *v0;

      goto LABEL_3;
    }

    goto LABEL_32;
  }

  v13 = 0x5320726564616548;
  if (*(v0 + *(v15 + 24)) <= 0x2Au)
  {
    if (v22 == 29)
    {
      v13 = 0xD000000000000014;
      goto LABEL_3;
    }

    if (v22 == 36)
    {
      goto LABEL_3;
    }

LABEL_32:
    v13 = 0;
    goto LABEL_3;
  }

  if (v22 - 43 >= 2 && v22 != 51)
  {
    goto LABEL_32;
  }

LABEL_3:

  return v13;
}

uint64_t ModernShelf.locationFields(at:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = sub_3EC5F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v10 - 8);
  v12 = v35 - v11;
  v13 = type metadata accessor for ModernShelf();
  sub_FBD0(v3 + *(v13 + 52), v12, &unk_4E9170);
  v14 = sub_3EC634();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    sub_FCF8(v12, &unk_4E9170);
    v36 = 0u;
    v37 = 0u;
    v16 = ModernShelf.metricsName(sender:)();
    v18 = v17;
    sub_FCF8(&v36, &unk_501090);
    *&v36 = v16;
    *(&v36 + 1) = v18;
    v35[2] = 32;
    v35[3] = 0xE100000000000000;
    v35[0] = 0;
    v35[1] = 0xE000000000000000;
    sub_68DC4();
    v19 = sub_3EE194();
    v21 = v20;
  }

  else
  {
    sub_3EC614();
    (*(v15 + 8))(v12, v14);
    v19 = sub_3EC5E4();
    v21 = v22;
    (*(v7 + 8))(v9, v6);
  }

  v23 = sub_3E79F4();
  v25 = v24;
  v26 = *(v3 + *(v13 + 24));
  if (v26 == 9 || v26 == 28)
  {
    v27 = sub_3E8534();
  }

  else
  {
    v27 = sub_3E85C4();
  }

  v29 = v27;
  v30 = v28;
  v36 = 0u;
  v37 = 0u;
  v31 = ModernShelf.metricsName(sender:)();
  v33 = v32;
  result = sub_FCF8(&v36, &unk_501090);
  *a2 = v19;
  a2[1] = v21;
  a2[2] = v23;
  a2[3] = v25;
  a2[4] = a1;
  a2[5] = v29;
  a2[6] = v30;
  a2[7] = v31;
  a2[8] = v33;
  return result;
}

BOOL _s8ShelfKit06ModernA0V16ItemPresentationV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v23 = *(a1 + 6);
  v3 = *(a1 + 2);
  v4 = *(a1 + 7);
  v5 = *(a2 + 1);
  v6 = *(a2 + 6);
  v7 = *(a2 + 2);
  v8 = *(a2 + 7);
  v24 = *(a2 + 8);
  v25 = *(a1 + 8);
  v9 = *a2;
  v10 = ModernShelf.ItemKind.rawValue.getter(*a1);
  v12 = v11;
  if (v10 == ModernShelf.ItemKind.rawValue.getter(v9) && v12 == v13)
  {
  }

  else
  {
    v15 = sub_3EE804();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  if (v2)
  {
    v16 = 0x746E6F7A69726F68;
  }

  else
  {
    v16 = 0x6C61636974726576;
  }

  if (v2)
  {
    v17 = 0xEA00000000006C61;
  }

  else
  {
    v17 = 0xE800000000000000;
  }

  if (v5)
  {
    v18 = 0x746E6F7A69726F68;
  }

  else
  {
    v18 = 0x6C61636974726576;
  }

  if (v5)
  {
    v19 = 0xEA00000000006C61;
  }

  else
  {
    v19 = 0xE800000000000000;
  }

  if (v16 == v18 && v17 == v19)
  {
  }

  else
  {
    v20 = sub_3EE804();

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  if (v4)
  {
    if (v8)
    {
      return v25 == v24;
    }

    return 0;
  }

  if (v8)
  {
    return 0;
  }

  v22 = v7 | (v6 << 32);
  if (((v3 | (v23 << 32)) & 0x100000000) != 0)
  {
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        result = 0;
        if ((v22 & 0x100000000) != 0 && v7 == 2)
        {
          return v25 == v24;
        }
      }

      else
      {
        result = 0;
        if ((v22 & 0x100000000) != 0 && v7 >= 3)
        {
          return v25 == v24;
        }
      }
    }

    else
    {
      result = 0;
      if (v3)
      {
        if ((v22 & 0x100000000) != 0 && v7 == 1)
        {
          return v25 == v24;
        }
      }

      else if ((v22 & 0x100000000) != 0 && !v7)
      {
        return v25 == v24;
      }
    }
  }

  else
  {
    result = 0;
    if ((v22 & 0x100000000) == 0 && v3 == v7)
    {
      return v25 == v24;
    }
  }

  return result;
}

uint64_t sub_25DE5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25DEA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25DF04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_25DF70()
{
  result = qword_4FC9C8;
  if (!qword_4FC9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FC9C8);
  }

  return result;
}

unint64_t sub_25DFC8()
{
  result = qword_4FC9D0;
  if (!qword_4FC9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FC9D0);
  }

  return result;
}

unint64_t sub_25E020()
{
  result = qword_4FC9D8;
  if (!qword_4FC9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FC9D8);
  }

  return result;
}

uint64_t sub_25E088(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AC0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[13];

  return v15(v16, a2, v14);
}

uint64_t sub_25E22C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AC0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[13];

  return v15(v16, a2, a2, v14);
}

void sub_25E3BC()
{
  sub_25E5D8(319, &qword_4FCA48, type metadata accessor for Header);
  if (v0 <= 0x3F)
  {
    sub_25E574(319, &qword_4FCA50, &qword_4EA7A8, &unk_3FDCD0, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_1972C();
      if (v2 <= 0x3F)
      {
        sub_25E5D8(319, &qword_4E9918, &type metadata accessor for URL);
        if (v3 <= 0x3F)
        {
          sub_25E574(319, &qword_4FCA58, &unk_4FCA60, &unk_410E90, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_25E5D8(319, &qword_4EB028, &type metadata accessor for ImpressionMetrics);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_25E574(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_25E5D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_3EE0F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ModernShelf.Background(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ModernShelf.Background(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_25E68C(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25E6A8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ModernShelf.ItemPresentation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 16))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ModernShelf.ItemPresentation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

uint64_t ModernShelf.ItemKind.targetType.getter(char a1)
{
  if (a1 == 28 || a1 == 9)
  {
    return sub_3E8534();
  }

  else
  {
    return sub_3E85C4();
  }
}

ValueMetadata *ModernShelf.ItemKind.modelType.getter(char a1)
{
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 5:
    case 6:
    case 8:
    case 9:
    case 10:
    case 11:
      v1 = type metadata accessor for LegacyEpisodeLockup();
      v2 = &unk_4FCB40;
      v3 = type metadata accessor for LegacyEpisodeLockup;
      goto LABEL_4;
    case 4:
    case 7:
      v1 = type metadata accessor for LibraryEpisodeLockup();
      v2 = &qword_4EDDC0;
      v3 = type metadata accessor for LibraryEpisodeLockup;
      goto LABEL_4;
    case 12:
    case 19:
    case 20:
    case 21:
    case 23:
    case 29:
      v1 = type metadata accessor for Link();
      v2 = &qword_4EDDC8;
      v4 = type metadata accessor for Link;
      goto LABEL_5;
    case 13:
      v1 = type metadata accessor for Highlight();
      v2 = &unk_503D60;
      v4 = type metadata accessor for Highlight;
      goto LABEL_5;
    case 14:
      v1 = type metadata accessor for HighlightItem();
      v2 = &unk_4FCB38;
      v4 = type metadata accessor for HighlightItem;
      goto LABEL_5;
    case 15:
    case 27:
    case 33:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 62:
    case 63:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
      v1 = type metadata accessor for LegacyLockup();
      v2 = &qword_4EDDD8;
      v3 = type metadata accessor for LegacyLockup;
LABEL_4:
      v4 = v3;
      goto LABEL_5;
    case 16:
    case 17:
    case 18:
      v1 = type metadata accessor for Information();
      v2 = &qword_4EDDE8;
      v4 = type metadata accessor for Information;
      goto LABEL_5;
    case 22:
      v1 = type metadata accessor for Paragraph();
      v2 = &qword_4F9C28;
      v4 = type metadata accessor for Paragraph;
      goto LABEL_5;
    case 24:
      v1 = type metadata accessor for SearchHint();
      v2 = &unk_4FCB30;
      v4 = type metadata accessor for SearchHint;
      goto LABEL_5;
    case 25:
    case 26:
      v1 = type metadata accessor for SearchLandingBrick();
      v2 = &unk_4FCB08;
      v4 = type metadata accessor for SearchLandingBrick;
      goto LABEL_5;
    case 28:
      v1 = type metadata accessor for ShowHero();
      v2 = &unk_4FCB28;
      v4 = type metadata accessor for ShowHero;
      goto LABEL_5;
    case 30:
      v1 = type metadata accessor for EditorialCard();
      v2 = &unk_4FCB20;
      v4 = type metadata accessor for EditorialCard;
      goto LABEL_5;
    case 31:
      v1 = type metadata accessor for Showcase();
      v2 = &unk_4FCB18;
      v4 = type metadata accessor for Showcase;
      goto LABEL_5;
    case 32:
      v1 = type metadata accessor for Brick();
      v2 = &unk_4FCB10;
      v4 = type metadata accessor for Brick;
      goto LABEL_5;
    case 34:
      v1 = type metadata accessor for RoomUber();
      v2 = &qword_4F74A8;
      v4 = type metadata accessor for RoomUber;
      goto LABEL_5;
    case 35:
    case 43:
      v1 = type metadata accessor for ShowHeader();
      v2 = &qword_4F6868;
      v4 = type metadata accessor for ShowHeader;
      goto LABEL_5;
    case 36:
    case 44:
      v1 = type metadata accessor for EpisodeHeader();
      v2 = &unk_4FCAE0;
      v4 = type metadata accessor for EpisodeHeader;
      goto LABEL_5;
    case 37:
      v1 = type metadata accessor for EmptyModel();
      v2 = &qword_4FC9A0;
      v4 = type metadata accessor for EmptyModel;
      goto LABEL_5;
    case 38:
      v1 = type metadata accessor for Ratings(0);
      v2 = &unk_4FCB00;
      v4 = type metadata accessor for Ratings;
      goto LABEL_5;
    case 39:
    case 40:
      v1 = type metadata accessor for Review(0);
      v2 = &unk_4FCAF8;
      v4 = type metadata accessor for Review;
      goto LABEL_5;
    case 41:
      v1 = type metadata accessor for TapToRate(0);
      v2 = &unk_4FCAF0;
      v4 = type metadata accessor for TapToRate;
      goto LABEL_5;
    case 42:
      v1 = type metadata accessor for ReviewActions(0);
      v2 = &unk_4FCAE8;
      v4 = type metadata accessor for ReviewActions;
      goto LABEL_5;
    case 51:
      v1 = type metadata accessor for ChannelHeader();
      v2 = &qword_4F92F0;
      v4 = type metadata accessor for ChannelHeader;
      goto LABEL_5;
    case 52:
    case 53:
      v1 = type metadata accessor for CategoryListItem();
      v2 = &qword_4EDDE0;
      v4 = type metadata accessor for CategoryListItem;
      goto LABEL_5;
    case 54:
      v1 = type metadata accessor for UpsellBanner();
      v2 = &unk_4FCAD8;
      v4 = type metadata accessor for UpsellBanner;
      goto LABEL_5;
    case 55:
      v1 = type metadata accessor for ToggleCellModel();
      v2 = &qword_4F71E0;
      v4 = type metadata accessor for ToggleCellModel;
      goto LABEL_5;
    case 56:
      v1 = type metadata accessor for ShowEpisodeCountHeader(0);
      v2 = &qword_4FA238;
      v4 = type metadata accessor for ShowEpisodeCountHeader;
      goto LABEL_5;
    case 57:
      v1 = type metadata accessor for EpisodeUpsellBannerModel();
      v2 = &unk_4FCAD0;
      v4 = type metadata accessor for EpisodeUpsellBannerModel;
      goto LABEL_5;
    case 58:
      v1 = sub_C0DF4();
      v2 = &qword_506570;
      v4 = sub_C0DF4;
      goto LABEL_5;
    case 59:
    case 60:
      v1 = &type metadata for Label;
      sub_25F18C();
      return v1;
    case 61:
      v1 = type metadata accessor for ErrorModel();
      v2 = &qword_4FC9B0;
      v4 = type metadata accessor for ErrorModel;
      goto LABEL_5;
    case 69:
      v1 = type metadata accessor for TranscriptSnippet();
      v2 = &unk_4FCAC0;
      v4 = type metadata accessor for TranscriptSnippet;
      goto LABEL_5;
    case 70:
      v1 = type metadata accessor for RecentlySearchedHeader();
      v2 = &qword_4F7500;
      v4 = type metadata accessor for RecentlySearchedHeader;
      goto LABEL_5;
    case 71:
    case 72:
      v1 = type metadata accessor for CategorySelection();
      v2 = &unk_4FCAB8;
      v4 = type metadata accessor for CategorySelection;
      goto LABEL_5;
    case 73:
      v1 = &type metadata for AnyReferenceLink;
      sub_25F138();
      return v1;
    case 74:
      v1 = type metadata accessor for CategoryHeader();
      v2 = &qword_4F8E48;
      v4 = type metadata accessor for CategoryHeader;
      goto LABEL_5;
    default:
      v1 = type metadata accessor for BubbleTip();
      v2 = &qword_4FC9A8;
      v4 = type metadata accessor for BubbleTip;
LABEL_5:
      sub_25F1E0(v2, v4);
      return v1;
  }
}

unint64_t sub_25F138()
{
  result = qword_4FCAB0;
  if (!qword_4FCAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FCAB0);
  }

  return result;
}

unint64_t sub_25F18C()
{
  result = qword_4FCAC8;
  if (!qword_4FCAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FCAC8);
  }

  return result;
}

uint64_t sub_25F1E0(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL ModernShelf.ItemKind.canContainEpisodeModel.getter(unsigned __int8 a1)
{
  v1 = a1;
  result = 1;
  if ((v1 - 8) > 0x3C || ((1 << (v1 - 8)) & 0x11C000000000000FLL) == 0)
  {
    return (v1 - 1) < 6;
  }

  return result;
}

uint64_t ModernShelf.ItemKind.rawValue.getter(char a1)
{
  result = 0x6954656C62627562;
  switch(a1)
  {
    case 1:
      result = 0x4365646F73697065;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
    case 4:
    case 12:
    case 63:
    case 70:
      result = 0xD000000000000016;
      break;
    case 5:
    case 26:
    case 44:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0xD00000000000001DLL;
      break;
    case 7:
      result = 0xD000000000000021;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x4865646F73697065;
      break;
    case 10:
    case 64:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0xD00000000000001ELL;
      break;
    case 13:
      result = 0x6867696C68676968;
      break;
    case 14:
      result = 0x6867696C68676968;
      break;
    case 15:
      result = 1953722216;
      break;
    case 16:
    case 17:
      result = 0x74616D726F666E69;
      break;
    case 18:
    case 59:
    case 72:
      result = 0xD000000000000018;
      break;
    case 19:
    case 20:
    case 21:
      result = 0x7473694C6B6E696CLL;
      break;
    case 22:
      result = 0x7061726761726170;
      break;
    case 23:
      result = 0x6F77737265776F70;
      break;
    case 24:
      result = 0x6948686372616573;
      break;
    case 25:
      result = 0x614C686372616573;
      break;
    case 27:
      result = 2003789939;
      break;
    case 28:
      result = 0x6F726548776F6873;
      break;
    case 29:
      result = 0xD000000000000010;
      break;
    case 30:
      result = 0x6169726F74696465;
      break;
    case 31:
      result = 0x65736163776F6873;
      break;
    case 32:
      result = 0x6B63697262;
      break;
    case 33:
      result = 0x72616843776F6873;
      break;
    case 34:
      v3 = 1836019570;
      goto LABEL_15;
    case 35:
      v3 = 2003789939;
LABEL_15:
      result = v3 | 0x7265625500000000;
      break;
    case 36:
      result = 0x4865646F73697065;
      break;
    case 37:
      result = 0x676E6964616F6CLL;
      break;
    case 38:
      result = 0x73676E69746172;
      break;
    case 39:
      result = 0x73776569766572;
      break;
    case 40:
      result = 0x4C73776569766572;
      break;
    case 41:
      result = 0x7461526F54706174;
      break;
    case 42:
      result = 0x6341776569766572;
      break;
    case 43:
      result = 0xD000000000000011;
      break;
    case 45:
      result = 0x6C656E6E616863;
      break;
    case 46:
      result = 0x426C656E6E616863;
      break;
    case 47:
      result = 0x536C656E6E616863;
      break;
    case 48:
      result = 0x4F6C656E6E616863;
      break;
    case 49:
    case 53:
    case 57:
      result = 0xD000000000000013;
      break;
    case 50:
      result = 0x4C6C656E6E616863;
      break;
    case 51:
      result = 0x486C656E6E616863;
      break;
    case 52:
    case 74:
      result = 0x79726F6765746163;
      break;
    case 54:
      result = 0x61426C6C65737075;
      break;
    case 55:
      result = 0x656C67676F74;
      break;
    case 56:
      result = 0xD000000000000011;
      break;
    case 58:
      result = 0x656E6E6142736D61;
      break;
    case 60:
      result = 0x6C6562616CLL;
      break;
    case 61:
      result = 0x726F727265;
      break;
    case 62:
      result = 0x616553646578696DLL;
      break;
    case 65:
      result = 0x6143686372616573;
      break;
    case 66:
      result = 0x6843686372616573;
      break;
    case 67:
      result = 0x6853686372616573;
      break;
    case 68:
      result = 0x7045686372616573;
      break;
    case 69:
      result = 0xD000000000000011;
      break;
    case 71:
      result = 0xD000000000000011;
      break;
    case 73:
      result = 0x636E657265666572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25FB84(char *a1, char *a2)
{
  v2 = *a2;
  v3 = ModernShelf.ItemKind.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == ModernShelf.ItemKind.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_3EE804();
  }

  return v8 & 1;
}

uint64_t sub_25FC0C@<X0>(_BYTE *a1@<X8>)
{
  result = _s8ShelfKit06ModernA0V8ItemKindO8rawValueAESgSS_tcfC_0();
  *a1 = result;
  return result;
}

uint64_t sub_25FC3C@<X0>(uint64_t *a1@<X8>)
{
  result = ModernShelf.ItemKind.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_25FC78()
{
  v1 = *v0;
  sub_3EE954();
  ModernShelf.ItemKind.rawValue.getter(v1);
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_25FCDC()
{
  ModernShelf.ItemKind.rawValue.getter(*v0);
  sub_3ED394();
}

Swift::Int sub_25FD30()
{
  v1 = *v0;
  sub_3EE954();
  ModernShelf.ItemKind.rawValue.getter(v1);
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t ModernShelf.ItemPresentation.compactHorizontalPresentation.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[6];
  v6 = *(v1 + 2);
  v7 = v1[7];
  v8 = *(v1 + 1);
  v9 = (v6 << 16) | (v5 << 48);
  if (v4)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  result = sub_25FEF0(v3 | v10);
  v12 = 0x100000000000000;
  if (!v7)
  {
    v12 = 0;
  }

  v13 = v12 & 0xFFFFFFFFFFFFFF00 | result | v10 | v9;
  v14 = 512;
  if (result == 75)
  {
    v15 = 0;
  }

  else
  {
    v14 = v13;
    v15 = v8;
  }

  *a1 = v14;
  a1[1] = v15;
  return result;
}

uint64_t sub_25FEF0(__int16 a1)
{
  if (a1 <= 0x2Bu)
  {
    if (a1 > 0x18u)
    {
      switch(a1)
      {
        case 0x19u:
          return 26;
        case 0x27u:
          if ((a1 & 0x100) == 0)
          {
            return 40;
          }

          break;
        case 0x2Bu:
          return 35;
      }
    }

    else if (a1 == 4)
    {
      if ((a1 & 0x100) == 0)
      {
        return 7;
      }
    }

    else if (a1 == 9)
    {
      if ((a1 & 0x100) == 0)
      {
        return 5;
      }
    }

    else if (a1 == 16 && (a1 & 0x100) == 0)
    {
      return 17;
    }

    return 75;
  }

  if (a1 > 0x2Fu)
  {
    if (a1 == 48)
    {
      if ((a1 & 0x100) != 0)
      {
        return 49;
      }

      return 50;
    }

    if (a1 != 53)
    {
      if (a1 == 71)
      {
        return 72;
      }

      return 75;
    }

    return 52;
  }

  else
  {
    if (a1 == 44)
    {
      return 36;
    }

    if (a1 != 45)
    {
      if (a1 != 46 || (a1 & 0x100) != 0)
      {
        return 75;
      }

      return 50;
    }

    if ((a1 & 0x100) == 0)
    {
      return 50;
    }

    return 47;
  }
}

uint64_t _s8ShelfKit06ModernA0V8ItemKindO8rawValueAESgSS_tcfC_0()
{
  v0 = sub_3EE834();

  if (v0 >= 0x4B)
  {
    return 75;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_26004C()
{
  result = qword_4FCB48;
  if (!qword_4FCB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FCB50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FCB48);
  }

  return result;
}

unint64_t sub_2600B4()
{
  result = qword_4FCB58;
  if (!qword_4FCB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FCB58);
  }

  return result;
}

uint64_t _s8ItemKindOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xB6)
  {
    goto LABEL_17;
  }

  if (a2 + 74 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 74) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 74;
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

      return (*a1 | (v4 << 8)) - 74;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 74;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x4B;
  v8 = v6 - 75;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s8ItemKindOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 74 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 74) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xB6)
  {
    v4 = 0;
  }

  if (a2 > 0xB5)
  {
    v5 = ((a2 - 182) >> 8) + 1;
    *result = a2 + 74;
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
    *result = a2 + 74;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_260258()
{
  result = qword_4FCB60;
  if (!qword_4FCB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FCB60);
  }

  return result;
}

void ModernShelf.ItemPresentation.accessibilityRepresentation(traitCollection:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[6];
  v6 = *(v2 + 2);
  v7 = v2[7];
  v8 = *(v2 + 1);
  v9 = [a1 preferredContentSizeCategory];
  if ((sub_3EDCF4() & 1) == 0)
  {
    goto LABEL_20;
  }

  if (v4 <= 4)
  {
LABEL_12:
    if (v4 != 1)
    {
      if (v4 == 3)
      {
        v17 = sub_3ED244();
        v19 = v18;
        if (v17 != sub_3ED244() || v19 != v20)
        {
          v22 = sub_3EE804();
          v23 = v9;

          if ((v22 & 1) == 0)
          {
            __break(1u);
            goto LABEL_20;
          }

          goto LABEL_35;
        }

        goto LABEL_34;
      }

LABEL_20:

LABEL_21:
      v8 = 0;
      v24 = 512;
      goto LABEL_52;
    }

    v42 = sub_3ED244();
    v44 = v43;
    if (v42 != sub_3ED244() || v44 != v45)
    {
      v47 = sub_3EE804();
      v48 = v9;

      if (v47)
      {
LABEL_44:
        v50 = sub_3EDD04();

        if ((v50 & 1) == 0)
        {
          goto LABEL_21;
        }

        v41 = 2;
        goto LABEL_49;
      }

      __break(1u);
    }

    v49 = v9;

    goto LABEL_44;
  }

  switch(v4)
  {
    case 5:
      v25 = sub_3ED244();
      v27 = v26;
      if (v25 == sub_3ED244() && v27 == v28)
      {
        goto LABEL_34;
      }

      v30 = sub_3EE804();
      v31 = v9;

      if (v30)
      {
        goto LABEL_35;
      }

      __break(1u);
      break;
    case 9:
      break;
    case 10:
      v4 = UIContentSizeCategoryAccessibilityLarge;
      v10 = sub_3ED244();
      v12 = v11;
      if (v10 == sub_3ED244() && v12 == v13)
      {
        v51 = v9;
      }

      else
      {
        v15 = sub_3EE804();
        v16 = v9;

        if ((v15 & 1) == 0)
        {
          __break(1u);
          goto LABEL_12;
        }
      }

      v52 = sub_3EDD04();

      if ((v52 & 1) == 0)
      {
        goto LABEL_21;
      }

      v41 = 11;
      goto LABEL_49;
    default:
      goto LABEL_20;
  }

  v32 = sub_3ED244();
  v34 = v33;
  if (v32 == sub_3ED244() && v34 == v35)
  {
    goto LABEL_34;
  }

  v37 = sub_3EE804();
  v38 = v9;

  if ((v37 & 1) == 0)
  {
    __break(1u);
LABEL_34:
    v39 = v9;
  }

LABEL_35:
  v40 = sub_3EDD04();

  if ((v40 & 1) == 0)
  {
    goto LABEL_21;
  }

  v41 = 6;
LABEL_49:
  v53 = v41 & 0xFF0000000000FFFFLL | (((v6 | (v5 << 32)) & 0xFFFFFFFFFFLL) << 16);
  v54 = 0x100000000000000;
  if (!v7)
  {
    v54 = 0;
  }

  v24 = v53 | v54;
LABEL_52:
  *a2 = v24;
  a2[1] = v8;
}

Swift::Int_optional __swiftcall ModernShelf.ItemPresentation.accessibilityNumberOfItemsLimit(traitCollection:)(UITraitCollection traitCollection)
{
  v2 = *(v1 + 1);
  ModernShelf.ItemPresentation.accessibilityRepresentation(traitCollection:)(traitCollection.super.isa, &v8);
  v3 = v8;
  if ((v8 & 0xFF00) == 0x200)
  {
    goto LABEL_2;
  }

  if (v2)
  {
  }

  else
  {
    v6 = sub_3EE804();

    if ((v6 & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  if ((v3 & 0x100) == 0)
  {

LABEL_9:
    v5 = 0;
    v4 = 3;
    goto LABEL_10;
  }

  v7 = sub_3EE804();

  if (v7)
  {
    goto LABEL_9;
  }

LABEL_2:
  v4 = 0;
  v5 = 1;
LABEL_10:
  result.value = v4;
  result.is_nil = v5;
  return result;
}

uint64_t Shelf.mapToModernShelf()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_3E5FC4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Header(0);
  v100 = *(v8 - 8);
  __chkstk_darwin(v8);
  v104 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v10 - 8);
  v103 = &v86 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB8);
  __chkstk_darwin(v12 - 8);
  v102 = &v86 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AC0);
  __chkstk_darwin(v14 - 8);
  v16 = &v86 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB0);
  __chkstk_darwin(v17 - 8);
  v105 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v86 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v22 - 8);
  v24 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v86 - v26;
  v28 = ShelfContentType.modernItemKind.getter(*(v2 + OBJC_IVAR____TtC8ShelfKit5Shelf_contentType));
  if (v28 == 75)
  {
    v29 = type metadata accessor for ModernShelf();
    v30 = *(*(v29 - 8) + 56);

    return v30(a1, 1, 1, v29);
  }

  v98 = v8;
  v101 = v21;
  v93 = v16;
  v94 = v28;
  v95 = v7;
  v99 = v24;
  v86 = v5;
  v87 = v4;
  v32 = OBJC_IVAR____TtC8ShelfKit5Shelf_items;
  swift_beginAccess();
  v33 = *(v2 + v32);
  v34 = *(v33 + 16);
  v97 = a1;
  v96 = v2;
  if (v34)
  {
    v92 = v27;
    v35 = v33 + 32;
    v91 = v33;

    v36 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_1F958(v35, &v110);
      sub_1D4F0(&v110, v109);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9B70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7A8);
      if (swift_dynamicCast())
      {
        if (*(&v107 + 1))
        {
          sub_1D4F0(&v106, v109);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v36 = sub_E02D8(0, v36[2] + 1, 1, v36);
          }

          v38 = v36[2];
          v37 = v36[3];
          if (v38 >= v37 >> 1)
          {
            v36 = sub_E02D8((v37 > 1), v38 + 1, 1, v36);
          }

          v36[2] = v38 + 1;
          sub_1D4F0(v109, &v36[5 * v38 + 4]);
          goto LABEL_9;
        }
      }

      else
      {
        v108 = 0;
        v106 = 0u;
        v107 = 0u;
      }

      sub_FCF8(&v106, &qword_4FCB68);
LABEL_9:
      v35 += 40;
      if (!--v34)
      {

        a1 = v97;
        v2 = v96;
        v27 = v92;
        goto LABEL_19;
      }
    }
  }

  v36 = _swiftEmptyArrayStorage;
LABEL_19:
  *&v110 = v36;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5A88);
  sub_261920();
  v39 = sub_3ED4C4();

  v40 = v2 + OBJC_IVAR____TtC8ShelfKit5Shelf_shelvesIntent;
  v41 = *(v2 + OBJC_IVAR____TtC8ShelfKit5Shelf_shelvesIntent + 24);
  v42 = v105;
  v92 = (v2 + OBJC_IVAR____TtC8ShelfKit5Shelf_shelvesIntent);
  if (v41)
  {
    sub_1F958(v40, &v110);
  }

  else
  {
    v43 = *(v40 + 16);
    v110 = *v40;
    v111 = v43;
    v112 = *(v40 + 32);
  }

  v44 = v101;
  if (*(&v111 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v110);
  }

  else if (!*(v39 + 16))
  {
    sub_FBD0(v2 + OBJC_IVAR____TtC8ShelfKit5Shelf_url, v27, &unk_4E9EE0);
    v45 = sub_3E5DC4();
    if ((*(*(v45 - 8) + 48))(v27, 1, v45) == 1)
    {

      sub_FCF8(v27, &unk_4E9EE0);
      v46 = type metadata accessor for ModernShelf();
      return (*(*(v46 - 8) + 56))(a1, 1, 1, v46);
    }

    sub_FCF8(v27, &unk_4E9EE0);
  }

  v91 = v39;
  v47 = type metadata accessor for Header.PrimaryAction(0);
  v88 = *(v47 - 8);
  v48 = *(v88 + 56);
  v48(v44, 1, 1, v47);
  v49 = *(v2 + OBJC_IVAR____TtC8ShelfKit5Shelf_seeAllAction);
  if (v49)
  {

    sub_FCF8(v44, &qword_4F1AB0);
    *v44 = v49;
    swift_storeEnumTagMultiPayload();
    v48(v44, 0, 1, v47);
  }

  v51 = *(v2 + OBJC_IVAR____TtC8ShelfKit5Shelf_title);
  v50 = *(v2 + OBJC_IVAR____TtC8ShelfKit5Shelf_title + 8);
  v52 = *(v2 + OBJC_IVAR____TtC8ShelfKit5Shelf_subtitle + 8);
  v89 = *(v2 + OBJC_IVAR____TtC8ShelfKit5Shelf_subtitle);
  v90 = *(v2 + OBJC_IVAR____TtC8ShelfKit5Shelf_displaySubtitleAsEyebrow);
  sub_FBD0(v2 + OBJC_IVAR____TtC8ShelfKit5Shelf_titleContextMenu, v102, &qword_4F1AB8);
  sub_FBD0(v44, v42, &qword_4F1AB0);
  sub_FBD0(v2 + OBJC_IVAR____TtC8ShelfKit5Shelf_headerArtwork, v103, &qword_4F1D50);
  v53 = v104;
  v104[32] = 0;
  *v53 = 0u;
  *(v53 + 1) = 0u;
  v54 = v98;
  v55 = *(v98 + 28);
  v56 = type metadata accessor for ActionMenu(0);
  (*(*(v56 - 8) + 56))(&v53[v55], 1, 1, v56);
  v57 = *(v54 + 32);
  v48(&v53[v57], 1, 1, v47);
  v58 = *(v54 + 36);
  v59 = sub_3E7784();
  v60 = &v53[v58];
  v61 = v105;
  (*(*(v59 - 8) + 56))(v60, 1, 1, v59);

  if ((sub_3EE0E4() & 1) != 0 || (*(v88 + 48))(v61, 1, v47) != 1)
  {
    *&v63 = v51;
    *(&v63 + 1) = v50;
    *&v64 = v89;
    *(&v64 + 1) = v52;
    v65 = v104;
    *v104 = v63;
    *(v65 + 16) = v64;
    *(v65 + 32) = v90;
    sub_51F9C(v102, v65 + v55, &qword_4F1AB8);
    sub_F7C5C(v61, v65 + v57);
    sub_51F9C(v103, v65 + v58, &qword_4F1D50);
    v62 = v93;
    sub_F7CCC(v65, v93);
    (*(v100 + 56))(v62, 0, 1, v98);
    sub_FCF8(v61, &qword_4F1AB0);
    sub_261984(v65);
  }

  else
  {

    sub_FCF8(v103, &qword_4F1D50);
    sub_FCF8(v102, &qword_4F1AB8);
    sub_FCF8(v61, &qword_4F1AB0);
    sub_261984(v104);
    v62 = v93;
    (*(v100 + 56))(v93, 1, 1, v98);
  }

  v66 = v95;
  v67 = v96;
  v68 = *(v96 + OBJC_IVAR____TtC8ShelfKit5Shelf_backgroundColor);
  v69 = v97;
  v70 = v101;
  if (*(v96 + OBJC_IVAR____TtC8ShelfKit5Shelf_backgroundColor + 8))
  {
    if (*(v96 + OBJC_IVAR____TtC8ShelfKit5Shelf_backgroundColor + 8) != 2)
    {
      goto LABEL_36;
    }

    switch(v68)
    {
      case 1:
        LODWORD(v105) = 0;
        v71 = 0x100000001;
        break;
      case 2:
        LODWORD(v105) = 0;
        v71 = 0x100000002;
        break;
      case 4:
        LODWORD(v105) = 0;
        v71 = 0x100000003;
        break;
      default:
LABEL_36:
        v71 = 0;
        LODWORD(v105) = 1;
        break;
    }
  }

  else
  {
    LODWORD(v105) = 0;
    v71 = v68;
  }

  v72 = *(v96 + OBJC_IVAR____TtC8ShelfKit5Shelf_isHorizontal);
  v104 = *(v96 + OBJC_IVAR____TtC8ShelfKit5Shelf_rowsPerColumn);
  v73 = *(v96 + OBJC_IVAR____TtC8ShelfKit5Shelf_id + 8);
  if (v73)
  {
    v74 = *(v96 + OBJC_IVAR____TtC8ShelfKit5Shelf_id);
  }

  else
  {
    sub_3E5FB4();
    v74 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v73 = v75;
    (*(v86 + 8))(v66, v87);
  }

  sub_FCF8(v70, &qword_4F1AB0);
  v76 = type metadata accessor for ModernShelf();
  sub_F7BEC(v62, v69 + v76[5]);
  sub_FBD0(v67 + OBJC_IVAR____TtC8ShelfKit5Shelf_url, v99, &unk_4E9EE0);
  v77 = *(v67 + OBJC_IVAR____TtC8ShelfKit5Shelf_mergeWhenFetched);
  v78 = *(v67 + OBJC_IVAR____TtC8ShelfKit5Shelf_hideFromCarPlay);
  v79 = v69 + v76[12];
  v80 = v92;
  if (*(v92 + 3))
  {
    sub_1F958(v92, v79);
  }

  else
  {
    v81 = *(v92 + 1);
    *v79 = *v92;
    *(v79 + 16) = v81;
    *(v79 + 32) = *(v80 + 32);
  }

  sub_FBD0(v67 + OBJC_IVAR____TtC8ShelfKit5Shelf_impressionMetrics, v69 + v76[13], &unk_4E9170);
  v82 = v76[9];
  v83 = (v69 + v76[8]);
  v84 = sub_3E5DC4();
  (*(*(v84 - 8) + 56))(v69 + v82, 1, 1, v84);
  *v69 = v74;
  v69[1] = v73;
  v85 = v69 + v76[6];
  *v85 = v94;
  v85[1] = v72;
  v85[6] = BYTE4(v71);
  *(v85 + 2) = v71;
  v85[7] = v105;
  *(v85 + 1) = v104;
  *(v69 + v76[7]) = v91;
  sub_51F9C(v99, v69 + v82, &unk_4E9EE0);
  *(v69 + v76[10]) = v77;
  *(v69 + v76[11]) = v78;
  *v83 = 0;
  v83[1] = 0;
  return (*(*(v76 - 1) + 56))(v69, 0, 1, v76);
}

void *Array<A>.mapToModernShelves()(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  __chkstk_darwin(v2 - 8);
  v4 = (&v18 - v3);
  v21 = type metadata accessor for ModernShelf();
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v20 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_3EE5A4())
  {
    v7 = 0;
    v8 = a1 & 0xC000000000000001;
    v9 = a1 & 0xFFFFFFFFFFFFFF8;
    v10 = (v19 + 48);
    v11 = _swiftEmptyArrayStorage;
    v18 = a1;
    while (1)
    {
      if (v8)
      {
        v12 = sub_3EE3F4();
      }

      else
      {
        if (v7 >= *(v9 + 16))
        {
          goto LABEL_18;
        }

        v12 = *(a1 + 8 * v7 + 32);
      }

      v13 = v12;
      v14 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      Shelf.mapToModernShelf()(v4);

      if ((*v10)(v4, 1, v21) == 1)
      {
        sub_FCF8(v4, &unk_503DA0);
      }

      else
      {
        sub_F7928(v4, v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_E02B0(0, v11[2] + 1, 1, v11);
        }

        v16 = v11[2];
        v15 = v11[3];
        if (v16 >= v15 >> 1)
        {
          v11 = sub_E02B0(v15 > 1, v16 + 1, 1, v11);
        }

        v11[2] = v16 + 1;
        sub_F7928(v20, v11 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v16);
        a1 = v18;
      }

      ++v7;
      if (v14 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t ShelfContentType.modernItemKind.getter(unint64_t a1)
{
  if (a1 < 0x3C)
  {
    return byte_411056[a1];
  }

  result = sub_3EE854();
  __break(1u);
  return result;
}

uint64_t sub_2618C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

unint64_t sub_261920()
{
  result = qword_4FCB70;
  if (!qword_4FCB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F5A88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FCB70);
  }

  return result;
}

uint64_t sub_261984(uint64_t a1)
{
  v2 = type metadata accessor for Header(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void ModernShelfListBuilder.areAnyImportantShelvesStillLoading.getter()
{
  v1 = 0;
  v2 = *(v0 + 8);
  v3 = *(v2 + 16);
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    ++v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F14E8);
    if (sub_3E9544())
    {
      return;
    }
  }
}

ShelfKit::ModernShelfListBuilder __swiftcall ModernShelfListBuilder.init()()
{
  *v0 = 0;
  *(v0 + 8) = &_swiftEmptyArrayStorage;
  *(v0 + 16) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t ModernShelfListBuilder.addShelf(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5978);
  __chkstk_darwin(v4);
  v6 = v13 - v5;
  sub_2629D0(a1, v13 - v5);
  v7 = type metadata accessor for ModernShelf();
  (*(*(v7 - 8) + 56))(v6, 0, 2, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
  sub_3E9504();
  v8 = v13[1];
  v9 = *(v2 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_E02FC(0, v9[2] + 1, 1, v9);
  }

  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_E02FC((v10 > 1), v11 + 1, 1, v9);
  }

  result = sub_262E18(v6);
  v9[2] = v11 + 1;
  v9[v11 + 4] = v8;
  *(v2 + 16) = v9;
  return result;
}

uint64_t ModernShelfListBuilder.addImportantShelf(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5978);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  sub_2629D0(a1, &v7 - v3);
  v5 = type metadata accessor for ModernShelf();
  (*(*(v5 - 8) + 56))(v4, 0, 2, v5);
  ModernShelfListBuilder.addImportantShelf(_:)();
  return sub_262E18(v4);
}

uint64_t ModernShelfListBuilder.addImportantShelf(_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5978);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
  sub_3E9504();
  v1 = *(v0 + 8);
  sub_192B2C(v8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_E02FC(0, v1[2] + 1, 1, v1);
  }

  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_E02FC((v2 > 1), v3 + 1, 1, v1);
  }

  v1[2] = v3 + 1;
  v1[v3 + 4] = v8;
  *(v0 + 8) = v1;
  v4 = *(v0 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_E02FC(0, v4[2] + 1, 1, v4);
    v4 = result;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    result = sub_E02FC((v6 > 1), v7 + 1, 1, v4);
    v4 = result;
  }

  v4[2] = v7 + 1;
  v4[v7 + 4] = v8;
  *(v0 + 16) = v4;
  return result;
}

uint64_t ModernShelfListBuilder.addShelf(_:)()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5978);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
  sub_3E9504();
  v2 = *(v0 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_E02FC(0, v2[2] + 1, 1, v2);
    v2 = result;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    result = sub_E02FC((v4 > 1), v5 + 1, 1, v2);
    v2 = result;
  }

  v2[2] = v5 + 1;
  v2[v5 + 4] = v6;
  *(v1 + 16) = v2;
  return result;
}

uint64_t ModernShelfListBuilder.addImportantShelves(_:)(unint64_t a1)
{
  v3 = *(v1 + 8);
  sub_192B2C(a1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_E02FC(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_E02FC((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v3[v5 + 4] = a1;
  *(v1 + 8) = v3;
  v6 = *(v1 + 16);
  sub_192B2C(a1);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_E02FC(0, v6[2] + 1, 1, v6);
    v6 = result;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    result = sub_E02FC((v8 > 1), v9 + 1, 1, v6);
    v6 = result;
  }

  v6[2] = v9 + 1;
  v6[v9 + 4] = a1;
  *(v1 + 16) = v6;
  return result;
}

Swift::Void __swiftcall ModernShelfListBuilder.addImportantShelves(_:)(Swift::OpaquePointer a1)
{
  v3 = *(v1 + 8);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_E02FC(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_E02FC((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v3[v5 + 4] = a1._rawValue;
  *(v1 + 8) = v3;
  v6 = *(v1 + 16);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_E02FC(0, v6[2] + 1, 1, v6);
  }

  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    v6 = sub_E02FC((v7 > 1), v8 + 1, 1, v6);
  }

  v6[2] = v8 + 1;
  v6[v8 + 4] = a1._rawValue;
  *(v1 + 16) = v6;
}

void ModernShelfListBuilder.hasImportantContent.getter()
{
  v1 = type metadata accessor for ModernShelf();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 8);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v5 + 32;
    v14 = v5 + 32;
    v15 = v6;
    while (v7 < *(v5 + 16))
    {
      v9 = *(v8 + 8 * v7);
      v17 = v9;
      sub_192B2C(v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F14E8);
      sub_3E9514();
      v10 = v16;
      if (v16)
      {
        v11 = 0;
        v12 = *(v16 + 16);
        while (1)
        {
          if (v12 == v11)
          {
            sub_192858(v9);

            v8 = v14;
            v6 = v15;
            goto LABEL_12;
          }

          if (v11 >= *(v10 + 16))
          {
            break;
          }

          sub_2629D0(v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v11++, v4);
          v13 = *(*&v4[*(v1 + 28)] + 16);
          sub_208EA8(v4);
          if (v13)
          {
            sub_192858(v9);

            return;
          }
        }

        __break(1u);
        break;
      }

      sub_192858(v9);
LABEL_12:
      if (++v7 == v6)
      {
        return;
      }
    }

    __break(1u);
  }
}

void ModernShelfListBuilder.buildList()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v1 - 8);
  v45 = &v38 - v2;
  v3 = type metadata accessor for ModernShelf();
  v4 = *(v3 - 1);
  __chkstk_darwin(v3);
  v44 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v8 = &v38 - v7;
  LODWORD(v49) = 0;
  v9 = 0;
  v46 = *v0;
  v10 = *(v0 + 2);
  v53 = _swiftEmptyArrayStorage;
  v11 = *(v10 + 16);
  v12 = v10 + 32;
  v43 = 0x800000000042B710;
  v42 = xmmword_3F5630;
  v47 = v11;
  v48 = v10;
LABEL_2:
  v13 = v49 & v46;
  v14 = v9;
  while (v14 != v11)
  {
    if (v14 >= *(v10 + 16))
    {
      goto LABEL_24;
    }

    v15 = *(v12 + 8 * v14);
    v9 = v14 + 1;
    if (v15 != 1)
    {
      if (v15)
      {
        sub_192B2C(*(v12 + 8 * v14));

        sub_41410(v16);
        v17 = 0;
        v18 = *(v15 + 16);
        while (1)
        {
          if (v18 == v17)
          {
            sub_192858(v15);
            v11 = v47;
            v10 = v48;
            goto LABEL_4;
          }

          if (v17 >= *(v15 + 16))
          {
            break;
          }

          sub_2629D0(v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v17++, v8);
          v19 = *(*&v8[v3[7]] + 16);
          sub_208EA8(v8);
          if (v19)
          {
            sub_192858(v15);
            LODWORD(v49) = 0;
            v11 = v47;
            v10 = v48;
            goto LABEL_2;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
        return;
      }

      if (v49)
      {
        LODWORD(v49) = 1;
        if (!v46)
        {
          goto LABEL_2;
        }
      }

      else
      {
        v41 = v12;
        v51 = 0;
        v52 = 0xE000000000000000;
        sub_3EE3C4(21);

        v50 = v14;
        v51 = 0xD000000000000013;
        v52 = v43;
        v54._countAndFlagsBits = sub_3EE7A4();
        sub_3ED3D4(v54);

        v49 = v51;
        v40 = v52;
        v20 = v3[5];
        v21 = type metadata accessor for Header(0);
        v22 = v44;
        (*(*(v21 - 8) + 56))(v44 + v20, 1, 1, v21);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_506560);
        v23 = swift_allocObject();
        v39 = v23;
        *(v23 + 16) = v42;
        v24 = type metadata accessor for EmptyModel();
        *(v23 + 56) = v24;
        *(v23 + 64) = sub_262E80();
        boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v23 + 32));
        v26 = *(v24 + 20);
        v27 = sub_3EC634();
        v38 = *(*(v27 - 8) + 56);
        v38(boxed_opaque_existential_0Tm + v26, 1, 1, v27);
        *boxed_opaque_existential_0Tm = 0x49676E6964616F6CLL;
        boxed_opaque_existential_0Tm[1] = 0xEB000000006D6574;
        v28 = sub_3E5DC4();
        v29 = *(*(v28 - 8) + 56);
        v29(v45, 1, 1, v28);
        v30 = v22 + v3[12];
        *(v30 + 4) = 0;
        *v30 = 0u;
        *(v30 + 1) = 0u;
        v38(v22 + v3[13], 1, 1, v27);
        v31 = v3[9];
        v32 = (v22 + v3[8]);
        v29(v22 + v31, 1, 1, v28);
        v33 = v40;
        *v22 = v49;
        v22[1] = v33;
        v34 = v22 + v3[6];
        *v34 = 37;
        *(v34 + 3) = 256;
        *(v34 + 2) = 0;
        *(v34 + 1) = 1;
        *(v22 + v3[7]) = v39;
        sub_17F4C4(v45, v22 + v31);
        *(v22 + v3[10]) = 1;
        *(v22 + v3[11]) = 0;
        *v32 = 0;
        v32[1] = 0;
        v35 = v53;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_E02B0(0, v35[2] + 1, 1, v35);
        }

        v37 = v35[2];
        v36 = v35[3];
        if (v37 >= v36 >> 1)
        {
          v35 = sub_E02B0(v36 > 1, v37 + 1, 1, v35);
        }

        v35[2] = v37 + 1;
        sub_F7928(v44, v35 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v37);
        v53 = v35;
        LODWORD(v49) = 1;
        v11 = v47;
        v10 = v48;
        v12 = v41;
        if ((v46 & 1) == 0)
        {
          goto LABEL_2;
        }
      }

      return;
    }

LABEL_4:
    v14 = v9;
    if (v13)
    {
      return;
    }
  }
}

uint64_t ModernShelfListBuilder.addShelves(_:)(unint64_t a1)
{
  v3 = *(v1 + 16);
  sub_192B2C(a1);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_E02FC(0, v3[2] + 1, 1, v3);
    v3 = result;
  }

  v6 = v3[2];
  v5 = v3[3];
  if (v6 >= v5 >> 1)
  {
    result = sub_E02FC((v5 > 1), v6 + 1, 1, v3);
    v3 = result;
  }

  v3[2] = v6 + 1;
  v3[v6 + 4] = a1;
  *(v1 + 16) = v3;
  return result;
}

uint64_t sub_2629D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModernShelf();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void ModernShelfListBuilder.hasContent.getter()
{
  v1 = type metadata accessor for ModernShelf();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v5 + 32;
    v14 = v5 + 32;
    v15 = v6;
    while (v7 < *(v5 + 16))
    {
      v9 = *(v8 + 8 * v7);
      v17 = v9;
      sub_192B2C(v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F14E8);
      sub_3E9514();
      v10 = v16;
      if (v16)
      {
        v11 = 0;
        v12 = *(v16 + 16);
        while (1)
        {
          if (v12 == v11)
          {
            sub_192858(v9);

            v8 = v14;
            v6 = v15;
            goto LABEL_12;
          }

          if (v11 >= *(v10 + 16))
          {
            break;
          }

          sub_2629D0(v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v11++, v4);
          v13 = *(*&v4[*(v1 + 28)] + 16);
          sub_208EA8(v4);
          if (v13)
          {
            sub_192858(v9);

            return;
          }
        }

        __break(1u);
        break;
      }

      sub_192858(v9);
LABEL_12:
      if (++v7 == v6)
      {
        return;
      }
    }

    __break(1u);
  }
}

void ModernShelfListBuilder.areAnyShelvesStillLoading.getter()
{
  v1 = 0;
  v2 = *(v0 + 16);
  v3 = *(v2 + 16);
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    ++v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F14E8);
    if (sub_3E9544())
    {
      return;
    }
  }
}

uint64_t sub_262CAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7D8);
  v4 = *(type metadata accessor for ModernShelf() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_3F5630;
  result = sub_2629D0(a1, v6 + v5);
  *a2 = v6;
  return result;
}

Swift::Void __swiftcall ModernShelfListBuilder.addShelves(_:)(Swift::OpaquePointer a1)
{
  v3 = *(v1 + 16);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_E02FC(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_E02FC((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v3[v5 + 4] = a1._rawValue;
  *(v1 + 16) = v3;
}

uint64_t sub_262E18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5978);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_262E80()
{
  result = qword_4FC9A0;
  if (!qword_4FC9A0)
  {
    type metadata accessor for EmptyModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FC9A0);
  }

  return result;
}

uint64_t ModernShelvesPresenter.interactionContextOrigin.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for InteractionContext.Origin.local(_:);
  v3 = sub_3E6424();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void *sub_262FA8(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v13 = _swiftEmptyArrayStorage;
    sub_3EE4C4();
    v9 = *(type metadata accessor for ModernShelf() - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v12, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_3EE494();
      sub_3EE4D4();
      sub_3EE4E4();
      sub_3EE4A4();
      v10 += v11;
      if (!--v6)
      {
        return v13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2630EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18[0] = a1;
  v18[1] = a2;
  v6 = type metadata accessor for ActionMenu.Child(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v21 = _swiftEmptyArrayStorage;
  sub_41A30(0, v10, 0);
  v11 = v21;
  v12 = (a3 + 40);
  while (1)
  {
    v13 = *(v12 - 1);
    v14 = *v12;
    v19 = v13;
    v20 = v14;
    sub_1748BC(v13, v14);
    (v18[0])(&v19);
    if (v4)
    {
      break;
    }

    v4 = 0;
    sub_6BF60(v13, v14);
    v21 = v11;
    v16 = v11[2];
    v15 = v11[3];
    if (v16 >= v15 >> 1)
    {
      sub_41A30(v15 > 1, v16 + 1, 1);
      v11 = v21;
    }

    v12 += 16;
    v11[2] = v16 + 1;
    sub_268764(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, type metadata accessor for ActionMenu.Child);
    if (!--v10)
    {
      return v11;
    }
  }

  sub_6BF60(v13, v14);

  __break(1u);
  return result;
}

uint64_t sub_263314(void (*a1)(unint64_t *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v22 = a1;
  v23 = a2;
  v7 = _s7EpisodeVMa();
  v21 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a4 - a3;
  if (a4 < a3)
  {
    if ((a3 - a4) < 0)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v10 = a4 - a3;
LABEL_5:
    v11 = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      v12 = _swiftEmptyArrayStorage;
      if (v10 == -1)
      {
        return v12;
      }

      v26 = _swiftEmptyArrayStorage;
      sub_41F30(0, v11 & ~(v11 >> 63), 0);
      if (v11 < 0)
      {
        goto LABEL_23;
      }

      v13 = 0;
      v14 = 0;
      v12 = v26;
      v15 = v9;
      while (!__OFADD__(v13, 1))
      {
        v24 = v13 + 1;
        if (v14)
        {
          goto LABEL_26;
        }

        v16 = a3;
        v25 = a3;
        v22(&v25);
        if (v4)
        {
          goto LABEL_27;
        }

        v26 = v12;
        v17 = v12[2];
        v18 = v12[3];
        if (v17 >= v18 >> 1)
        {
          sub_41F30(v18 > 1, v17 + 1, 1);
          v12 = v26;
        }

        v12[2] = v17 + 1;
        sub_268764(v15, v12 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v17, _s7EpisodeVMa);
        v14 = a3 == a4;
        if (a3 == a4)
        {
          a3 = 0;
        }

        else
        {
          ++a3;
          if (v16 == -1)
          {
            goto LABEL_21;
          }
        }

        v4 = 0;
        ++v13;
        if (v24 == v11)
        {
          return v12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((a4 - a3) >= 0)
  {
    goto LABEL_5;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:

  __break(1u);
  return result;
}

uint64_t sub_2635A4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void))
{
  v25 = a6;
  v26 = a1;
  v8 = v6;
  v27 = a2;
  v10 = a4(0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v22 - v13;
  v15 = *(a3 + 16);
  v16 = _swiftEmptyArrayStorage;
  if (!v15)
  {
    return v16;
  }

  v28 = _swiftEmptyArrayStorage;
  v23 = a5;
  (a5)(0, v15, 0, v12);
  v16 = v28;
  v24 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v17 = a3 + v24;
  v18 = *(v11 + 72);
  while (1)
  {
    v26(v17);
    if (v8)
    {
      break;
    }

    v8 = 0;
    v28 = v16;
    v20 = v16[2];
    v19 = v16[3];
    if (v20 >= v19 >> 1)
    {
      v23(v19 > 1, v20 + 1, 1);
      v16 = v28;
    }

    v16[2] = v20 + 1;
    sub_268764(v14, v16 + v24 + v20 * v18, v25);
    v17 += v18;
    if (!--v15)
    {
      return v16;
    }
  }

  __break(1u);
  return result;
}

void sub_263750(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v22 = a2;
  v6 = _s7EpisodeVMa();
  v20 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)); i; i = sub_3EE5A4())
  {
    v24 = _swiftEmptyArrayStorage;
    sub_41F30(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v10 = 0;
    v11 = v24;
    v18 = i;
    v19 = a3 & 0xC000000000000001;
    v17 = a3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v19)
      {
        v13 = sub_3EE3F4();
      }

      else
      {
        if (v10 >= *(v17 + 16))
        {
          goto LABEL_17;
        }

        v13 = *(a3 + 8 * v10 + 32);
      }

      i = v13;
      v23 = v13;
      v21(&v23);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v24 = v11;
      v15 = v11[2];
      v14 = v11[3];
      if (v15 >= v14 >> 1)
      {
        sub_41F30(v14 > 1, v15 + 1, 1);
        v11 = v24;
      }

      v11[2] = v15 + 1;
      sub_268764(v8, v11 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v15, _s7EpisodeVMa);
      ++v10;
      if (v12 == v18)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t StoreDataProvider.progressivelyLoadShelfItemsPublisher(objectGraph:shelves:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v22 = a1;
  v23 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  __chkstk_darwin(v5 - 8);
  v7 = (&v22 - v6);
  v28 = type metadata accessor for ModernShelf();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v27 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)); i; i = sub_3EE5A4())
  {
    v10 = 0;
    v11 = a2 & 0xC000000000000001;
    v12 = a2 & 0xFFFFFFFFFFFFFF8;
    v13 = (v26 + 48);
    v14 = _swiftEmptyArrayStorage;
    v25 = a2;
    while (1)
    {
      if (v11)
      {
        v15 = sub_3EE3F4();
      }

      else
      {
        if (v10 >= *(v12 + 16))
        {
          goto LABEL_18;
        }

        v15 = *(a2 + 8 * v10 + 32);
      }

      v16 = v15;
      v17 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      Shelf.mapToModernShelf()(v7);

      if ((*v13)(v7, 1, v28) == 1)
      {
        sub_FCF8(v7, &unk_503DA0);
      }

      else
      {
        sub_268764(v7, v27, type metadata accessor for ModernShelf);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_E02B0(0, v14[2] + 1, 1, v14);
        }

        v19 = v14[2];
        v18 = v14[3];
        if (v19 >= v18 >> 1)
        {
          v14 = sub_E02B0(v18 > 1, v19 + 1, 1, v14);
        }

        v14[2] = v19 + 1;
        sub_268764(v27, v14 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v19, type metadata accessor for ModernShelf);
        a2 = v25;
      }

      ++v10;
      if (v17 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v14 = _swiftEmptyArrayStorage;
LABEL_21:
  v20 = StoreDataProvider.progressivelyLoadShelfItemsPublisher(objectGraph:shelves:)(v22, v14, v23, v24);

  return v20;
}

uint64_t Publisher<>.progressivelyLoadingShelfItems(objectGraph:storeDataProvider:)(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v22 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F6330);
  v20[1] = v2;
  v3 = sub_3E9C04();
  v23 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v20 - v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_886BC(&qword_4F6340, &qword_4F6330);
  v20[2] = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v24 = v2;
  *(&v24 + 1) = AssociatedTypeWitness;
  v25 = v7;
  v26 = AssociatedConformanceWitness;
  v9 = sub_3E9B94();
  swift_getWitnessTable();
  v10 = sub_3E9C04();
  WitnessTable = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  *&v24 = v9;
  *(&v24 + 1) = v10;
  v25 = WitnessTable;
  v26 = v12;
  v13 = sub_3E9BA4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v20 - v15;
  sub_1F958(v21, &v24);
  v17 = swift_allocObject();
  sub_1D4F0(&v24, v17 + 16);
  *(v17 + 56) = v22;

  sub_3EA024();

  sub_3E9F84();
  (*(v23 + 8))(v5, v3);
  swift_getWitnessTable();
  v18 = sub_3E9F94();
  (*(v14 + 8))(v16, v13);
  return v18;
}

void *ProgressivelyLoadShelvesController.__allocating_init(asPartOf:)()
{
  v0 = swift_allocObject();
  v0[7] = _swiftEmptyArrayStorage;
  v0[8] = _swiftEmptyArrayStorage;
  v0[9] = _swiftEmptyDictionarySingleton;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F72B0);
  swift_allocObject();
  v0[10] = sub_3E9D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEB28);
  sub_3EC444();
  sub_3ECD14();

  return v0;
}

uint64_t StoreDataProvider.progressivelyLoadShelfItemsPublisher(objectGraph:shelves:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FCB78);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FCB80);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v18 - v14;
  v21 = a3;
  v22 = a4;
  v23 = v4;
  v24 = a1;
  sub_262FA8(sub_266E5C, v20, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6330);
  sub_886BC(&qword_4F6340, &qword_4F6330);
  sub_3E9BE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
  sub_886BC(&qword_4FCB88, &qword_4FCB78);
  sub_3EA024();
  (*(v9 + 8))(v11, v8);
  sub_886BC(&qword_4FCB90, &qword_4FCB80);
  v16 = sub_3E9F94();
  (*(v13 + 8))(v15, v12);
  return v16;
}

uint64_t StoreDataProvider.progressivelyLoadShelfItemsPublisher(objectGraph:shelf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)())
{
  v66 = a1;
  v67 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A50);
  v56 = *(v6 - 8);
  v57 = v6;
  __chkstk_darwin(v6);
  v55 = &v45 - v7;
  v8 = type metadata accessor for ModernShelf();
  v63 = *(v8 - 8);
  *&v64 = v8;
  v9 = *(v63 + 64);
  __chkstk_darwin(v8);
  v54 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FCB98);
  v59 = *(v10 - 8);
  v60 = v10;
  __chkstk_darwin(v10);
  v58 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FCBA0);
  v61 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v45 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FCBA8);
  v62 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v45 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v18 - 8);
  v20 = &v45 - v19;
  v65 = sub_3E5DC4();
  v21 = *(v65 - 8);
  __chkstk_darwin(v65);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v66;
  v66 = a2;
  result = sub_266EA4(v24, a2);
  if (!result)
  {
    v47 = v9;
    v48 = a3;
    v53 = v23;
    v49 = v14;
    v50 = v17;
    v51 = v12;
    v52 = v15;
    v26 = v63;
    sub_189AC(v66 + *(v64 + 36), v20);
    if ((*(v21 + 48))(v20, 1, v65) == 1)
    {
      sub_FCF8(v20, &unk_4E9EE0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7D8);
      v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_3F5630;
      sub_2687CC(v66, v28 + v27, type metadata accessor for ModernShelf);
      v68 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
      v29 = v55;
      sub_3E9DF4();
      sub_886BC(&qword_4F1A88, &qword_4F1A50);
      v30 = v57;
      v31 = sub_3E9F94();
      (*(v56 + 8))(v29, v30);
    }

    else
    {
      v46 = v21;
      v32 = v53;
      (*(v21 + 32))(v53, v20, v65);
      (*(v67 + 22))(v32, v48);
      v33 = sub_3ECD54();

      v67 = type metadata accessor for ModernShelf;
      v68 = v33;
      v34 = v54;
      sub_2687CC(v66, v54, type metadata accessor for ModernShelf);
      v35 = *(v26 + 80);
      v36 = swift_allocObject();
      sub_268764(v34, v36 + ((v35 + 16) & ~v35), type metadata accessor for ModernShelf);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5E20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
      sub_886BC(&qword_4F5E28, &qword_4F5E20);
      v37 = v58;
      sub_3EA0C4();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FCBB0);
      sub_886BC(&qword_4FCBB8, &qword_4FCB98);
      sub_886BC(&qword_4FCBC0, &qword_4FCBB0);
      v38 = v49;
      v39 = v60;
      sub_3EA054();
      (*(v59 + 8))(v37, v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1400);
      v40 = swift_allocObject();
      v64 = xmmword_3F5630;
      *(v40 + 16) = xmmword_3F5630;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7D8);
      v41 = swift_allocObject();
      *(v41 + 16) = v64;
      sub_2687CC(v66, v41 + ((v35 + 32) & ~v35), v67);
      *(v40 + 32) = v41;
      sub_886BC(&qword_4FCBC8, &qword_4FCBA0);
      v42 = v50;
      v43 = v51;
      sub_3EA104();

      (*(v61 + 8))(v38, v43);
      sub_886BC(&qword_4FCBD0, &qword_4FCBA8);
      v44 = v52;
      v31 = sub_3E9F94();
      (*(v62 + 8))(v42, v44);
      (*(v46 + 8))(v53, v65);
    }

    return v31;
  }

  return result;
}

id sub_264C50@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  __chkstk_darwin(v6 - 8);
  v8 = (&v33 - v7);
  v9 = type metadata accessor for ModernShelf();
  v10 = *(v9 - 1);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  Shelf.mapToModernShelf()(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_FCF8(v8, &unk_503DA0);
    type metadata accessor for ShelfError(0);
    sub_268614();
    swift_allocError();
    *v14 = v13;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v13;
  }

  sub_268764(v8, v12, type metadata accessor for ModernShelf);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7D8);
  v16 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_3F5630;
  v18 = v17 + v16;
  if (v12[v9[10]] == 1)
  {
    v34 = a3;
    v19 = v9[6];
    v20 = *(a2 + v19);
    v21 = ModernShelf.ItemKind.rawValue.getter(v12[v19]);
    v23 = v22;
    if (v21 == ModernShelf.ItemKind.rawValue.getter(v20) && v23 == v24)
    {
    }

    else
    {
      v26 = sub_3EE804();

      if ((v26 & 1) == 0)
      {
        type metadata accessor for ShelfError(0);
        sub_268614();
        swift_allocError();
        v28 = v27;
        v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC9C0) + 48);
        sub_2687CC(a2, v28, type metadata accessor for ModernShelf);
        sub_2687CC(v12, v28 + v29, type metadata accessor for ModernShelf);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_208EA8(v12);
        *(v17 + 16) = 0;
      }
    }

    sub_2687CC(a2, v18, type metadata accessor for ModernShelf);

    sub_41468(v30);
    v31 = v9[9];
    sub_FCF8(v18 + v31, &unk_4E9EE0);
    v32 = sub_3E5DC4();
    (*(*(v32 - 8) + 56))(v18 + v31, 1, 1, v32);
    a3 = v34;
  }

  else
  {
    sub_2687CC(v12, v18, type metadata accessor for ModernShelf);
  }

  result = sub_208EA8(v12);
  *a3 = v17;
  return result;
}

uint64_t sub_265054(uint64_t *a1)
{
  v2 = sub_3E9A04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  sub_36174(0, &qword_4F6BF0);
  sub_3EE054();
  swift_errorRetain();
  v7 = sub_3E99F4();
  v8 = sub_3ED9D4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v6;
    v16 = v10;
    *v9 = 136315138;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8);
    v11 = sub_3ED2B4();
    v13 = sub_2EDD0(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_0, v7, v8, "Error completing a shelf: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  (*(v3 + 8))(v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
  return sub_3E9E04();
}

uint64_t sub_265284@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (!v4)
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_20:
    *a2 = v6;
    return result;
  }

  v5 = 0;
  v6 = _swiftEmptyArrayStorage;
  while (v5 < *(v3 + 16))
  {
    v7 = *(v3 + 32 + 8 * v5);
    v8 = *(v7 + 16);
    v9 = v6[2];
    v10 = v9 + v8;
    if (__OFADD__(v9, v8))
    {
      goto LABEL_22;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v10 <= v6[3] >> 1)
    {
      if (*(v7 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v9 <= v10)
      {
        v12 = v9 + v8;
      }

      else
      {
        v12 = v9;
      }

      v6 = sub_E02B0(isUniquelyReferenced_nonNull_native, v12, 1, v6);
      if (*(v7 + 16))
      {
LABEL_15:
        v13 = (v6[3] >> 1) - v6[2];
        result = type metadata accessor for ModernShelf();
        if (v13 < v8)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v8)
        {
          v14 = v6[2];
          v15 = __OFADD__(v14, v8);
          v16 = v14 + v8;
          if (v15)
          {
            goto LABEL_25;
          }

          v6[2] = v16;
        }

        goto LABEL_4;
      }
    }

    if (v8)
    {
      goto LABEL_23;
    }

LABEL_4:
    if (v4 == ++v5)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_265410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_265434, 0, 0);
}

uint64_t sub_265434()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = v2[3];
  v6 = v2[4];
  v7 = __swift_project_boxed_opaque_existential_1(v2, v5);
  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_265520;
  v9 = v0[5];
  v10 = v0[2];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v10, v7, v9, v5, v6, v3, v4);
}

uint64_t sub_265520()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_265614@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A50);
  v26 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v23 - v5;
  v7 = sub_3E9A04();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  sub_36174(0, &qword_4F6BF0);
  sub_3EE054();
  swift_errorRetain();
  v12 = sub_3E99F4();
  v13 = sub_3ED9D4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v24 = v4;
    v17 = v16;
    v27 = v11;
    v28 = v16;
    *v15 = 136315138;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8);
    v18 = sub_3ED2B4();
    v20 = sub_2EDD0(v18, v19, &v28);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_0, v12, v13, "Error completing a shelf: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    v4 = v24;

    a2 = v25;
  }

  (*(v8 + 8))(v10, v7);
  v28 = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
  sub_3E9DF4();
  sub_886BC(&qword_4F1A88, &qword_4F1A50);
  v21 = sub_3E9F94();
  result = (*(v26 + 8))(v6, v4);
  *a2 = v21;
  return result;
}

uint64_t sub_265934@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  result = StoreDataProvider.progressivelyLoadShelfItemsPublisher(objectGraph:shelves:)(a3, v6, v7, v8);
  *a4 = result;
  return result;
}

void *ProgressivelyLoadShelvesController.init(asPartOf:)()
{
  v0 = sub_266D94();

  return v0;
}

uint64_t sub_2659D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F72C8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v7 - v3;
  v7[1] = *(v0 + 80);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F72B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
  sub_886BC(&qword_4F72D0, &qword_4F72B0);
  sub_3E9FA4();

  sub_886BC(&qword_4F72D8, &qword_4F72C8);
  v5 = sub_3E9F94();
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t sub_265B9C()
{
  result = swift_beginAccess();
  v2 = v0[7];
  if (!(v2 >> 62))
  {
    v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_10:
    v0[7] = _swiftEmptyArrayStorage;

    v0[8] = _swiftEmptyArrayStorage;

    swift_beginAccess();
    v0[9] = _swiftEmptyDictionarySingleton;
  }

  result = sub_3EE5A4();
  v3 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v3 >= 1)
  {

    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        sub_3EE3F4();
      }

      else
      {
      }

      sub_3E9CA4();
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_265CCC()
{
  sub_265B9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F72B0);
  swift_allocObject();
  *(v0 + 80) = sub_3E9D94();
}

uint64_t sub_265D38(uint64_t a1, unint64_t a2)
{
  v28 = a1;
  v29 = a2;
  v3 = sub_3E5FC4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v31 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v27 - v7;
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  sub_3E5FB4();
  v12 = *(v4 + 16);
  v32 = v3;
  v33 = v11;
  v27 = v12;
  v12(v8, v11, v3);
  v13 = v2[8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2[8] = v13;
  if (isUniquelyReferenced_nonNull_native)
  {
    v15 = v2;
  }

  else
  {
    v13 = sub_E05E0(0, *(v13 + 2) + 1, 1, v13);
    v15 = v2;
    v2[8] = v13;
  }

  v17 = *(v13 + 2);
  v16 = *(v13 + 3);
  if (v17 >= v16 >> 1)
  {
    v13 = sub_E05E0(v16 > 1, v17 + 1, 1, v13);
  }

  *(v13 + 2) = v17 + 1;
  v30 = v4;
  v18 = *(v4 + 80);
  v19 = *(v4 + 32);
  v20 = v32;
  v19(&v13[((v18 + 32) & ~v18) + *(v4 + 72) * v17], v8, v32);
  v15[8] = v13;
  v21 = v15[5];
  v22 = v15[6];
  __swift_project_boxed_opaque_existential_1(v15 + 2, v21);
  v34 = StoreDataProvider.progressivelyLoadShelfItemsPublisher(objectGraph:shelves:)(v28, v29, v21, v22);
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = v31;
  v27(v31, v33, v20);
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  v19((v25 + ((v18 + 24) & ~v18)), v24, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6330);
  sub_886BC(&qword_4F6340, &qword_4F6330);
  sub_3EA1A4();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59C0);
  sub_886BC(&qword_4F59C8, &qword_4F59C0);
  sub_3E9C94();
  swift_endAccess();

  return (*(v30 + 8))(v33, v20);
}

uint64_t sub_2660EC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_266160(a3, v4);
  }

  return result;
}

uint64_t sub_266160(uint64_t a1, uint64_t a2)
{
  v5 = sub_3E5FC4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v2 + 72);
  *(v2 + 72) = 0x8000000000000000;
  v10 = a2;
  v11 = v2;
  sub_3A5D8(v10, a1, isUniquelyReferenced_nonNull_native);
  *(v2 + 72) = v34;
  swift_endAccess();
  v12 = *(v2 + 64);
  v13 = *(v12 + 16);
  if (!v13)
  {
    v18 = _swiftEmptyArrayStorage;
    goto LABEL_15;
  }

  v15 = *(v6 + 16);
  v14 = v6 + 16;
  v16 = v12 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
  v32 = *(v14 + 56);
  v33 = v15;
  v17 = (v14 - 8);
  v31[0] = v12;

  v18 = _swiftEmptyArrayStorage;
  v31[1] = v14;
  do
  {
    v33(v8, v16, v5);
    v19 = *(v11 + 72);
    if (!*(v19 + 16))
    {
      goto LABEL_4;
    }

    v20 = sub_55490(v8);
    if ((v21 & 1) == 0)
    {

LABEL_4:
      (*v17)(v8, v5);
      goto LABEL_5;
    }

    v22 = v11;
    v23 = *(*(v19 + 56) + 8 * v20);
    v24 = *v17;

    v24(v8, v5);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_E0A3C(0, v18[2] + 1, 1, v18);
    }

    v26 = v18[2];
    v25 = v18[3];
    if (v26 >= v25 >> 1)
    {
      v18 = sub_E0A3C((v25 > 1), v26 + 1, 1, v18);
    }

    v18[2] = v26 + 1;
    v18[v26 + 4] = v23;
    v11 = v22;
LABEL_5:
    v16 += v32;
    --v13;
  }

  while (v13);

LABEL_15:
  sub_266520(v18);
  v28 = v27;

  v29 = sub_2682F4(v28);

  v35 = v29;

  sub_3E9D44();
}

uint64_t ProgressivelyLoadShelvesController.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return v0;
}

uint64_t ProgressivelyLoadShelvesController.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_2664E0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return _swift_deallocObject(v0, 64, 7);
}

void sub_266520(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  __chkstk_darwin(v2 - 8);
  v4 = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v51 = v47 - v6;
  v7 = type metadata accessor for ModernShelf();
  v8.n128_f64[0] = __chkstk_darwin(v7);
  v53 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = 0;
  v55 = 0;
  v10 = 0;
  v47[0] = *(v11 + 80);
  v56 = _swiftEmptyArrayStorage;
  v49 = (v47[0] + 32) & ~v47[0];
  v50 = _swiftEmptyArrayStorage + v49;
  v12 = (v11 + 56);
  v47[1] = v11 + 48;
  v48 = v11;
  v54 = v13;
LABEL_4:
  v16 = *(a1 + 16);
  if (v10 == v16)
  {
LABEL_38:
    v21 = v51;
    (*v12)(v51, 1, 1, v7, v8);
LABEL_39:
    v43 = v55;
    v42 = v56;

    sub_FCF8(v21, &unk_503DA0);
    v44 = v42[3];
    if (v44 < 2)
    {
      return;
    }

    v45 = v44 >> 1;
    v41 = __OFSUB__(v45, v43);
    v46 = v45 - v43;
    if (!v41)
    {
      v42[2] = v46;
      return;
    }
  }

  else
  {
    if (v10 < v16)
    {
      while (1)
      {
        v17 = *(a1 + 32 + 8 * v10);

        if (v17)
        {
          break;
        }

LABEL_9:
        ++v10;
        v18 = *(a1 + 16);
        if (v10 == v18)
        {
          goto LABEL_38;
        }

        if (v10 >= v18)
        {
          goto LABEL_43;
        }
      }

      v14 = *(v17 + 16);
      if (!v14)
      {
        (*v12)(v4, 1, 1, v7);
        sub_FCF8(v4, &unk_503DA0);
        goto LABEL_9;
      }

      v15 = 0;
      ++v10;
      while (1)
      {
        if (v15 >= v14)
        {
          goto LABEL_44;
        }

        v19 = v48;
        v20 = *(v48 + 72);
        v57 = v15;
        v52 = v20;
        sub_2687CC(v17 + v49 + v20 * v15, v4, type metadata accessor for ModernShelf);
        (*(v19 + 56))(v4, 0, 1, v54);
        v21 = v51;
        sub_FACC(v4, v51, &unk_503DA0);
        v22 = *(v19 + 48);
        v7 = v54;
        if (v22(v21, 1, v54) == 1)
        {
          goto LABEL_39;
        }

        sub_268764(v21, v53, type metadata accessor for ModernShelf);
        v23 = v56;
        if (!v55)
        {
          break;
        }

        v24 = v50;
        v25 = v55 - 1;
        if (__OFSUB__(v55, 1))
        {
          goto LABEL_45;
        }

LABEL_37:
        v55 = v25;
        ++v57;
        sub_268764(v53, v24, type metadata accessor for ModernShelf);
        v50 = (v24 + v52);
        v56 = v23;
        v14 = *(v17 + 16);
        v15 = v57;
        if (v57 == v14)
        {
          (*v12)(v4, 1, 1, v7);
          sub_FCF8(v4, &unk_503DA0);
          goto LABEL_4;
        }
      }

      v26 = v56[3];
      if (((v26 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_47;
      }

      v27 = v26 & 0xFFFFFFFFFFFFFFFELL;
      if (v27 <= 1)
      {
        v28 = 1;
      }

      else
      {
        v28 = v27;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7D8);
      v29 = v49;
      v23 = swift_allocObject();
      v30 = _swift_stdlib_malloc_size(v23);
      v31 = v52;
      if (!v52)
      {
        goto LABEL_48;
      }

      v32 = v30 - v29;
      if (v30 - v29 == 0x8000000000000000 && v52 == -1)
      {
        goto LABEL_49;
      }

      v34 = v29;
      v35 = v32 / v52;
      v23[2] = v28;
      v23[3] = 2 * (v32 / v31);
      v36 = v23 + v34;
      v37 = v56;
      v38 = v56[3] >> 1;
      v39 = v38 * v31;
      if (!v56[2])
      {
LABEL_36:
        v24 = &v36[v39];
        v40 = (v35 & 0x7FFFFFFFFFFFFFFFLL) - v38;

        v41 = __OFSUB__(v40, 1);
        v25 = v40 - 1;
        if (v41)
        {
          goto LABEL_45;
        }

        goto LABEL_37;
      }

      if (v23 < v56 || v36 >= v56 + v34 + v39)
      {
        v55 = v56[3] >> 1;
        v50 = v39;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v23 == v56)
        {
LABEL_35:
          v37[2] = 0;
          goto LABEL_36;
        }

        v55 = v56[3] >> 1;
        v50 = v39;
        swift_arrayInitWithTakeBackToFront();
      }

      v39 = v50;
      v38 = v55;
      v37 = v56;
      goto LABEL_35;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
}

void sub_266A38(uint64_t a1)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FCD68);
  __chkstk_darwin(v42);
  v41 = (&v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v6 = &v37 - v5;
  v7 = _swiftEmptyArrayStorage;
  v40 = *(a1 + 16);
  if (v40)
  {
    v43 = v4;
    v8 = *(v4 + 80);
    v37 = v8;
    v38 = (v8 + 32) & ~v8;
    v9 = _swiftEmptyArrayStorage + v38;
    v10 = 0;
    v11 = 0;
    v12 = *(type metadata accessor for WidgetEyebrowGenerator(0) - 8);
    v13 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v39 = *(v12 + 72);
    v14 = _swiftEmptyArrayStorage;
    while (1)
    {
      v15 = v41;
      v16 = *(v42 + 48);
      *v41 = v10;
      sub_2687CC(v13, v15 + v16, type metadata accessor for WidgetEyebrowGenerator);
      v17 = v6;
      sub_FACC(v15, v6, &qword_4FCD68);
      if (v11)
      {
        v44 = v14;
      }

      else
      {
        v18 = v14[3];
        if (((v18 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v19 = v18 & 0xFFFFFFFFFFFFFFFELL;
        if (v19 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v19;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FCD70);
        v21 = *(v43 + 72);
        v22 = v38;
        v44 = swift_allocObject();
        v23 = _swift_stdlib_malloc_size(v44);
        if (!v21)
        {
          goto LABEL_35;
        }

        v24 = v23 - v22;
        if (v23 - v22 == 0x8000000000000000 && v21 == -1)
        {
          goto LABEL_36;
        }

        v26 = v24 / v21;
        v27 = v44;
        *(v44 + 2) = v20;
        v27[3] = 2 * (v24 / v21);
        v28 = v27 + v22;
        v29 = v14[3] >> 1;
        v30 = v29 * v21;
        if (v14[2])
        {
          if (v27 < v14 || v28 >= v14 + v38 + v30)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v27 != v14)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v14[2] = 0;
        }

        v9 = &v28[v30];
        v11 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - v29;
      }

      v32 = v43;
      v6 = v17;
      v33 = __OFSUB__(v11--, 1);
      if (v33)
      {
        break;
      }

      ++v10;
      sub_FACC(v17, v9, &qword_4FCD68);
      v9 += *(v32 + 72);
      v13 += v39;
      v7 = v44;
      v14 = v44;
      if (v40 == v10)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v11 = 0;
LABEL_29:
  v34 = v7[3];
  if (v34 >= 2)
  {
    v35 = v34 >> 1;
    v33 = __OFSUB__(v35, v11);
    v36 = v35 - v11;
    if (v33)
    {
LABEL_37:
      __break(1u);
      return;
    }

    v7[2] = v36;
  }
}

void *sub_266D94()
{
  v0[7] = _swiftEmptyArrayStorage;
  v0[8] = _swiftEmptyArrayStorage;
  v0[9] = _swiftEmptyDictionarySingleton;
  *&v2 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F72B0);
  swift_allocObject();
  v0[10] = sub_3E9D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEB28);
  sub_3EC444();
  sub_3ECD14();
  sub_1D4F0(&v2, (v0 + 2));
  return v0;
}

uint64_t sub_266E5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = StoreDataProvider.progressivelyLoadShelfItemsPublisher(objectGraph:shelf:)(*(v2 + 40), a1, *(v2 + 16), *(v2 + 24));
  *a2 = result;
  return result;
}

uint64_t sub_266EA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v38 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v38 - v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FCD28);
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v11 = &v38 - v10;
  *&v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FCD30);
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FCD38);
  v49 = *(v14 - 8);
  __chkstk_darwin(v14);
  v47 = &v38 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FCD40);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v48 = &v38 - v18;
  v19 = type metadata accessor for ModernShelf();
  v20 = a2 + *(v19 + 48);
  if (!*(v20 + 24))
  {
    v36 = *(v20 + 16);
    v52 = *v20;
    v53 = v36;
    v54 = *(v20 + 32);
    if (*(&v36 + 1))
    {
      goto LABEL_3;
    }

    return 0;
  }

  sub_1F958(v20, &v52);
  if (!*(&v53 + 1))
  {
    return 0;
  }

LABEL_3:
  sub_1D4F0(&v52, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC0);
  sub_3EC394();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8E20);
  v42 = v14;
  v21 = sub_3ED6F4();
  (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  sub_1F958(&v52, v51);
  sub_1F958(v55, v50);
  v22 = swift_allocObject();
  v41 = v17;
  v23 = v22;
  sub_1D4F0(v51, v22 + 16);
  sub_1D4F0(v50, v23 + 56);
  *(v23 + 96) = a1;

  *&v51[0] = sub_3E9E14();
  sub_36174(0, &qword_4F10B0);
  v39 = a2;
  v24 = sub_3EDBC4();
  *&v50[0] = v24;
  v25 = sub_3EDB64();
  (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
  sub_886BC(&qword_4F8E28, &qword_4F8E20);
  v40 = v16;
  sub_87870();
  sub_3EA114();
  sub_FCF8(v6, &qword_4F69E0);

  sub_3E9C64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6330);
  sub_886BC(&qword_4FCD48, &qword_4FCD28);
  sub_886BC(&qword_4F6340, &qword_4F6330);
  v26 = v44;
  sub_3EA0E4();
  (*(v43 + 8))(v11, v26);
  sub_886BC(&qword_4FCD50, &qword_4FCD30);
  v27 = v47;
  v28 = v46;
  sub_3EA054();
  (*(v45 + 8))(v13, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1400);
  v29 = swift_allocObject();
  v46 = xmmword_3F5630;
  *(v29 + 16) = xmmword_3F5630;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7D8);
  v30 = (*(*(v19 - 8) + 80) + 32) & ~*(*(v19 - 8) + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v46;
  sub_2687CC(v39, v31 + v30, type metadata accessor for ModernShelf);
  *(v29 + 32) = v31;
  sub_886BC(&qword_4FCD58, &qword_4FCD38);
  v32 = v48;
  v33 = v42;
  sub_3EA104();

  (*(v49 + 8))(v27, v33);
  sub_886BC(&qword_4FCD60, &qword_4FCD40);
  v34 = v40;
  v35 = sub_3E9F94();
  (*(v41 + 8))(v32, v34);
  __swift_destroy_boxed_opaque_existential_1Tm(&v52);
  __swift_destroy_boxed_opaque_existential_1Tm(v55);
  return v35;
}

uint64_t sub_267760()
{
  v1 = v0;
  v2 = type metadata accessor for ModernShelf();
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = v0 + v4;

  v7 = v6 + v2[5];
  v8 = type metadata accessor for Header(0);
  if (!(*(*(v8 - 1) + 48))(v7, 1, v8))
  {
    v66 = v5;
    v67 = v1;

    v9 = v7 + v8[7];
    v10 = type metadata accessor for ActionMenu(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v11 = v9 + *(v10 + 28);
      v12 = sub_3E7784();
      if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
      {

        v13 = *(v11 + 32);
        if (v13 != 255)
        {
          sub_F2248(*(v11 + 16), *(v11 + 24), v13);
        }

        v14 = *(v11 + 64);
        if (v14 != 255)
        {
          sub_F2260(*(v11 + 56), v14);
        }

        v15 = *(v11 + 80);
        if (v15 != 255)
        {
          sub_F2260(*(v11 + 72), v15);
        }

        v16 = *(v11 + 96);
        if (v16 != 255)
        {
          sub_F2260(*(v11 + 88), v16);
        }

        v17 = *(v11 + 112);
        if (v17 != 255)
        {
          sub_F2260(*(v11 + 104), v17);
        }

        v18 = *(v11 + 128);
        if (v18 != 255)
        {
          sub_F2260(*(v11 + 120), v18);
        }

        v63 = *(v12 + 44);
        v19 = sub_3E7624();
        (*(*(v19 - 8) + 8))(v11 + v63, v19);
      }
    }

    v20 = v7 + v8[8];
    v21 = type metadata accessor for Header.PrimaryAction(0);
    if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      switch(EnumCaseMultiPayload)
      {
        case 2:

          v53 = v20 + *(v10 + 28);
          v54 = sub_3E7784();
          if (!(*(*(v54 - 8) + 48))(v53, 1, v54))
          {

            v55 = *(v53 + 32);
            if (v55 != 255)
            {
              sub_F2248(*(v53 + 16), *(v53 + 24), v55);
            }

            v56 = *(v53 + 64);
            if (v56 != 255)
            {
              sub_F2260(*(v53 + 56), v56);
            }

            v57 = *(v53 + 80);
            if (v57 != 255)
            {
              sub_F2260(*(v53 + 72), v57);
            }

            v58 = *(v53 + 96);
            if (v58 != 255)
            {
              sub_F2260(*(v53 + 88), v58);
            }

            v59 = *(v53 + 112);
            if (v59 != 255)
            {
              sub_F2260(*(v53 + 104), v59);
            }

            v60 = *(v53 + 128);
            if (v60 != 255)
            {
              sub_F2260(*(v53 + 120), v60);
            }

            v65 = *(v54 + 44);
            v61 = sub_3E7624();
            (*(*(v61 - 8) + 8))(v53 + v65, v61);
          }

          break;
        case 1:

          break;
        case 0:

          v40 = type metadata accessor for ActionButton();
          v41 = v20 + v40[6];
          v42 = sub_3E7784();
          if (!(*(*(v42 - 8) + 48))(v41, 1, v42))
          {

            v43 = *(v41 + 32);
            if (v43 != 255)
            {
              sub_F2248(*(v41 + 16), *(v41 + 24), v43);
            }

            v44 = *(v41 + 64);
            if (v44 != 255)
            {
              sub_F2260(*(v41 + 56), v44);
            }

            v45 = *(v41 + 80);
            if (v45 != 255)
            {
              sub_F2260(*(v41 + 72), v45);
            }

            v46 = *(v41 + 96);
            if (v46 != 255)
            {
              sub_F2260(*(v41 + 88), v46);
            }

            v47 = *(v41 + 112);
            if (v47 != 255)
            {
              sub_F2260(*(v41 + 104), v47);
            }

            v48 = *(v41 + 128);
            if (v48 != 255)
            {
              sub_F2260(*(v41 + 120), v48);
            }

            v64 = *(v42 + 44);
            v49 = sub_3E7624();
            (*(*(v49 - 8) + 8))(v41 + v64, v49);
          }

          __swift_destroy_boxed_opaque_existential_1Tm(v20 + v40[8]);
          v50 = v40[9];
          v51 = sub_3EC634();
          v52 = *(v51 - 8);
          if (!(*(v52 + 48))(v20 + v50, 1, v51))
          {
            (*(v52 + 8))(v20 + v50, v51);
          }

          break;
      }
    }

    v22 = v7 + v8[9];
    v23 = sub_3E7784();
    v5 = v66;
    v1 = v67;
    if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
    {

      v24 = *(v22 + 32);
      if (v24 != 255)
      {
        sub_F2248(*(v22 + 16), *(v22 + 24), v24);
      }

      v25 = *(v22 + 64);
      if (v25 != 255)
      {
        sub_F2260(*(v22 + 56), v25);
      }

      v26 = *(v22 + 80);
      if (v26 != 255)
      {
        sub_F2260(*(v22 + 72), v26);
      }

      v27 = *(v22 + 96);
      if (v27 != 255)
      {
        sub_F2260(*(v22 + 88), v27);
      }

      v28 = *(v22 + 112);
      if (v28 != 255)
      {
        sub_F2260(*(v22 + 104), v28);
      }

      v29 = *(v22 + 128);
      if (v29 != 255)
      {
        sub_F2260(*(v22 + 120), v29);
      }

      v30 = *(v23 + 44);
      v31 = sub_3E7624();
      (*(*(v31 - 8) + 8))(v22 + v30, v31);
    }
  }

  v32 = v2[9];
  v33 = sub_3E5DC4();
  v34 = *(v33 - 8);
  if (!(*(v34 + 48))(v6 + v32, 1, v33))
  {
    (*(v34 + 8))(v6 + v32, v33);
  }

  v35 = v6 + v2[12];
  if (*(v35 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
  }

  v36 = v2[13];
  v37 = sub_3EC634();
  v38 = *(v37 - 8);
  if (!(*(v38 + 48))(v6 + v36, 1, v37))
  {
    (*(v38 + 8))(v6 + v36, v37);
  }

  return _swift_deallocObject(v1, v4 + v5, v3 | 7);
}

uint64_t sub_2680A4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2680DC()
{
  v1 = sub_3E5FC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_2681A0(uint64_t *a1)
{
  v3 = *(sub_3E5FC4() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_2660EC(a1, v4, v5);
}

size_t sub_2682F4(uint64_t a1)
{
  v30 = type metadata accessor for ModernShelf();
  __chkstk_darwin(v30);
  v28 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = (&v27 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    v29 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v8 = a1 + v29;
    v9 = *(v4 + 72);
    v10 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_2687CC(v8, v6, type metadata accessor for ModernShelf);
      v11 = v10[2];
      if (!v11)
      {
        break;
      }

      v12 = (v11 - 1) * v9;
      if (*(v6 + v30[10]) != 1)
      {
        v13 = (v10 + v29 + v12);
        v14 = *v6 == *v13 && v6[1] == v13[1];
        if (!v14 && (sub_3EE804() & 1) == 0)
        {
          break;
        }
      }

      v15 = v30[6];
      v16 = *(v10 + v29 + v12 + v15);
      v17 = ModernShelf.ItemKind.rawValue.getter(*(v6 + v15));
      v19 = v18;
      if (v17 == ModernShelf.ItemKind.rawValue.getter(v16) && v19 == v20)
      {
      }

      else
      {
        v22 = sub_3EE804();

        if ((v22 & 1) == 0)
        {
          break;
        }
      }

      v25 = *(v6 + v30[7]);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2A5130(v10);
        v10 = result;
      }

      if (v11 > v10[2])
      {
        __break(1u);
        return result;
      }

      sub_41468(v25);
LABEL_4:
      sub_208EA8(v6);
      v8 += v9;
      if (!--v7)
      {
        return v10;
      }
    }

    sub_2687CC(v6, v28, type metadata accessor for ModernShelf);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_E02B0(0, v10[2] + 1, 1, v10);
    }

    v24 = v10[2];
    v23 = v10[3];
    if (v24 >= v23 >> 1)
    {
      v10 = sub_E02B0(v23 > 1, v24 + 1, 1, v10);
    }

    v10[2] = v24 + 1;
    sub_268764(v28, v10 + v29 + v24 * v9, type metadata accessor for ModernShelf);
    goto LABEL_4;
  }

  return _swiftEmptyArrayStorage;
}

unint64_t sub_268614()
{
  result = qword_4FC9B8;
  if (!qword_4FC9B8)
  {
    type metadata accessor for ShelfError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FC9B8);
  }

  return result;
}

uint64_t sub_26866C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_2686B4(uint64_t a1)
{
  v4 = *(v1 + 96);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2368C;

  return sub_265410(a1, v1 + 16, v1 + 56, v4);
}

uint64_t sub_268764(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2687CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_268840(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *UberViewModel.item.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 8);

  return sub_2688E4(a1, (v1 + 8));
}

_OWORD *sub_2688E4(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

double UberViewModel.init(shelf:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ModernShelf();
  v5 = *(a1 + *(v4 + 28));
  if (*(v5 + 16))
  {
    v6 = v4;
    sub_1F958(v5 + 32, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FCD78);
    if (swift_dynamicCast())
    {
      sub_2688E4(v12, &v14);
      v7 = v15;
      v8 = v16;
      __swift_project_boxed_opaque_existential_1(&v14, v15);
      if ((*(v8 + 8))(v7, v8))
      {
        v9 = *(a1 + *(v6 + 24));
        sub_208EA8(a1);
        LOBYTE(v17[0]) = v9;
        sub_2688E4(&v14, (v17 + 8));
        v10 = v17[1];
        *a2 = v17[0];
        *(a2 + 16) = v10;
        result = *&v18;
        *(a2 + 32) = v18;
        *(a2 + 48) = v19;
        return result;
      }

      sub_208EA8(a1);
      __swift_destroy_boxed_opaque_existential_1Tm(&v14);
    }

    else
    {
      sub_208EA8(a1);
      memset(v12, 0, sizeof(v12));
      sub_FCF8(v12, &qword_4FCD80);
    }
  }

  else
  {
    sub_208EA8(a1);
  }

  *(a2 + 48) = 0;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  return result;
}

uint64_t Array<A>.extractUber.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModernShelf() - 8;
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  sub_2629D0(a2 + v9, &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  UberViewModel.init(shelf:)(v7, v13);
  if (!v14)
  {
    sub_FCF8(v13, &qword_4FCD88);
LABEL_5:
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;

    return a2;
  }

  v16[0] = v13[0];
  v16[1] = v13[1];
  v16[2] = v14;
  v17 = v15;
  sub_268C1C(v16, a1);
  sub_268D90(a2, a2 + v9, 1, (2 * v8) | 1, &qword_4EA7D8, &unk_3FF1C0, type metadata accessor for ModernShelf);
  a2 = v10;
  sub_268C94(v16);
  return a2;
}

uint64_t sub_268CC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_268D0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_268D90(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        a7(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_268F4C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void))
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        a5(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C80);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_269038(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1408);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
      if (v4 != a3)
      {
LABEL_5:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9B70);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t ChannelDetail.__allocating_init(from:)(void *a1)
{
  v2 = sub_269930(a1);

  return v2;
}

uint64_t sub_269164@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_3E7624();
  v5 = [a1 uberBackgroundImageURL];
  if (v5)
  {
    v6 = v5;
    sub_3ED244();

    v7 = [a1 uberBackgroundJoeColor];
    if (v7)
    {
      v8 = v7;
      sub_3ED244();

      sub_3E9464();
    }

    [a1 storeId];
    sub_3E94B4();
    sub_3E7614();
    v12 = [a1 name];
    if (v12)
    {
      v13 = v12;
      sub_3ED244();
    }

    sub_3E79B4();
    sub_3E7764();
    v14 = sub_3E7784();
    return (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
  }

  else
  {
    v9 = sub_3E7784();
    v10 = *(*(v9 - 8) + 56);

    return v10(a2, 1, 1, v9);
  }
}

uint64_t sub_269438@<X0>(void *a1@<X0>, SEL *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_3E7624();
  v7 = [a1 *a2];
  if (v7)
  {
    v8 = v7;
    sub_3ED244();

    [a1 storeId];
    sub_3E94B4();
    sub_3E7604();
    sub_3E79B4();
    sub_3E7764();
    v9 = sub_3E7784();
    return (*(*(v9 - 8) + 56))(a3, 0, 1, v9);
  }

  else
  {
    v11 = sub_3E7784();
    v12 = *(*(v11 - 8) + 56);

    return v12(a3, 1, 1, v11);
  }
}

uint64_t sub_269638(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v20._countAndFlagsBits = 0xE000000000000000;
  v23._countAndFlagsBits = 0x5F4C454E4E414843;
  v23._object = 0xED0000454C544954;
  v25.value._countAndFlagsBits = 0;
  v25.value._object = 0;
  v4.super.isa = v3;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v5 = sub_3E5A74(v23, v25, v4, v27, v20);
  v7 = v6;

  v8 = [v2 mainBundle];
  v20._countAndFlagsBits = 0xE000000000000000;
  v24._object = 0x800000000042B790;
  v24._countAndFlagsBits = 0xD00000000000001ELL;
  v26.value._countAndFlagsBits = 0;
  v26.value._object = 0;
  v9.super.isa = v8;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  sub_3E5A74(v24, v26, v9, v28, v20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_3F5630;
  v11 = [a1 resolvedShowCount];
  *(v10 + 56) = &type metadata for Int64;
  *(v10 + 64) = &protocol witness table for Int64;
  *(v10 + 32) = v11;
  v12 = sub_3ED214();
  v14 = v13;

  sub_3E7D44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F87C0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_3F5310;
  *(v15 + 32) = v5;
  *(v15 + 40) = v7;
  *(v15 + 48) = v12;
  *(v15 + 56) = v14;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0);
  v22 = sub_D74C0();
  v20._object = v15;

  v16 = sub_3E7CC4();
  v18 = v17;
  __swift_destroy_boxed_opaque_existential_1Tm(&v20._object);
  if (!v18)
  {
    return v12;
  }

  return v16;
}

id sub_26987C(void *a1)
{
  if ([a1 subscriptionActive])
  {
    return &dword_0 + 3;
  }

  result = [a1 displayType];
  if (result)
  {
    v3 = result;
    sub_3ED244();

    v4 = sub_3ED204();
    v5 = MTDisplayTypeFromPersistentString();
    swift_bridgeObjectRelease_n();

    if (v5 == 1)
    {
      return &dword_0 + 1;
    }

    else
    {
      return (2 * (v5 == 2));
    }
  }

  return result;
}

uint64_t sub_269930(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v30 - v6;
  v9 = __chkstk_darwin(v8);
  v11 = &v30 - v10;
  v12 = [a1 backgroundColor];
  if (v12)
  {
    v13 = v12;
    sub_3ED244();

    v14 = sub_3E9464();
    v33 = v15;
    v34 = v14;
  }

  else
  {
    v34 = 0;
    v33 = 255;
  }

  [a1 storeId];
  v32 = sub_3E94B4();
  v16 = [a1 name];
  if (v16)
  {
    v17 = v16;
    v31 = sub_3ED244();
    v19 = v18;
  }

  else
  {
    v31 = 0;
    v19 = 0;
  }

  v20 = sub_269638(a1);
  v22 = v21;
  v23 = sub_26987C(a1);
  sub_269164(a1, v11);
  sub_269438(a1, &selRef_logoImageURL, v7);
  sub_269438(a1, &selRef_artworkURL, v4);
  v24 = [a1 showCount];
  v25 = [a1 availableShowCount];
  type metadata accessor for ChannelDetail();
  v26 = swift_allocObject();
  v27 = v31;
  *(v26 + 16) = v32;
  *(v26 + 24) = v27;
  *(v26 + 32) = v19;
  *(v26 + 40) = v20;
  *(v26 + 48) = v22;
  *(v26 + 56) = v23;
  sub_25612C(v11, v26 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_uberArtwork);
  sub_25612C(v7, v26 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_logoArtwork);
  sub_25612C(v4, v26 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_iconArtwork);
  v28 = v26 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_backgroundColor;
  *v28 = v34;
  *(v28 + 8) = v33;
  *(v26 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_showCount) = v24;
  *(v26 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_availableShowCount) = v25;
  return v26;
}

uint64_t Episode.__allocating_init(from:clickAction:wantsListenNowReason:)(void *a1, uint64_t a2, _BOOL4 a3)
{
  v147 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF470);
  __chkstk_darwin(v6 - 8);
  v8 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v108 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v12 - 8);
  v14 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v108 - v16;
  __chkstk_darwin(v18);
  v20 = &v108 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  __chkstk_darwin(v21 - 8);
  v23 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v108 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v27 - 8);
  v148 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v150 = &v108 - v30;
  __chkstk_darwin(v31);
  v149 = &v108 - v32;
  v34 = __chkstk_darwin(v33);
  v151 = &v108 - v35;
  v36 = [a1 uuid];
  if (!v36)
  {
    sub_FCF8(a2, &qword_4EDE00);

    return 0;
  }

  v145 = v23;
  v146 = v8;
  v37 = v36;
  v144 = sub_3ED244();
  v39 = v38;

  v40 = [a1 podcast];
  if (!v40)
  {
    sub_FCF8(a2, &qword_4EDE00);

LABEL_9:

    return 0;
  }

  v41 = v40;
  v143 = v39;
  v42 = [a1 podcastUuid];
  if (!v42)
  {
    sub_FCF8(a2, &qword_4EDE00);

    goto LABEL_9;
  }

  v142 = v3;
  v43 = v42;
  v44 = sub_3ED244();
  v137 = v45;
  v138 = v44;

  v136 = sub_3EDF74();
  v131 = v46;
  v47 = [a1 bestTitle];
  if (v47)
  {
    v48 = v47;
    v49 = sub_3ED244();
    v134 = v50;
    v135 = v49;
  }

  else
  {
    v134 = 0xE000000000000000;
    v135 = 0;
  }

  v52 = [a1 numberedTitle];
  if (v52)
  {
    v53 = v52;
    v133 = sub_3ED244();
    v132 = v54;
  }

  else
  {
    v133 = 0;
    v132 = 0xE000000000000000;
  }

  v55 = [a1 podcast];
  if (v55)
  {
    v56 = v55;
    sub_3EDF94();
  }

  else
  {
    v57 = sub_3E7784();
    (*(*(v57 - 8) + 56))(v151, 1, 1, v57);
  }

  v139 = v17;
  v140 = v14;
  v141 = a2;
  v58 = [a1 bestSummary];
  if (v58)
  {
    v59 = v58;
    sub_3ED244();

    v60 = sub_3E9A64();
    sub_3E9A34();
    sub_3E9A24();
    v61 = objc_allocWithZone(v60);
    v130 = sub_3E9A84();
  }

  else
  {
    v130 = 0;
  }

  sub_3EDF04();
  v62 = [a1 assetURL];
  if (v62)
  {
    v63 = v62;
    sub_3ED244();

    sub_3E5D94();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v64 = sub_3E5DC4();
    (*(*(v64 - 8) + 56))(v20, 1, 1, v64);
  }

  v129 = sub_3EDF84();
  v128 = [a1 isExplicit];
  [a1 duration];
  v66 = v65;
  v126 = [a1 episodeNumber];
  v124 = [a1 seasonNumber];
  v127 = sub_3EDF34();
  v67 = [v41 title];
  if (v67)
  {
    v68 = v67;
    v125 = sub_3ED244();
    v123 = v69;
  }

  else
  {
    v125 = 0;
    v123 = 0;
  }

  v122 = [a1 entitlementState];
  v70 = [a1 podcast];
  if (v70 && (v71 = v70, v72 = [v70 channel], v71, v72) && (v73 = objc_msgSend(v72, "subscriptionName"), v72, v73))
  {
    v121 = sub_3ED244();
    v120 = v74;
  }

  else
  {
    v121 = 0;
    v120 = 0;
  }

  v75 = [a1 podcast];
  if (v75 && (v76 = v75, v77 = [v75 channel], v76, v77) && (v78 = objc_msgSend(v77, "name"), v77, v78))
  {
    v119 = sub_3ED244();
    v118 = v79;
  }

  else
  {
    v119 = 0;
    v118 = 0;
  }

  v80 = [a1 podcast];
  if (v80 && (v81 = v80, v82 = [v80 title], v81, v82))
  {
    v117 = sub_3ED244();
    v116 = v83;
  }

  else
  {
    v117 = 0;
    v116 = 0;
  }

  v84 = [v41 displayType];
  if (v84)
  {
    v85 = v84;
    sub_3ED244();
  }

  v115 = sub_3E7684();
  v86 = [a1 podcast];
  if (v86 && (v87 = v86, v88 = [v86 channel], v87, v88))
  {
    [v88 storeId];

    v114 = sub_3E94B4();
    v113 = 0;
  }

  else
  {
    v114 = 0;
    v113 = 1;
  }

  v89 = [a1 podcast];
  v90 = v89;
  if (v89)
  {
    [v89 storeCollectionId];

    v112 = sub_3E94B4();
  }

  else
  {
    v112 = 0;
  }

  v91 = v145;
  LODWORD(v145) = sub_3EDF64();
  if (v147)
  {
    sub_3EDF24();
  }

  else
  {
    v92 = sub_3E8D24();
    (*(*(v92 - 8) + 56))(v11, 1, 1, v92);
  }

  v93 = v11;
  v147 = v90 == 0;
  v108 = [a1 storeTrackId];
  sub_FBD0(v151, v149, &qword_4F1D50);
  sub_3EDFE4();
  v94 = v148;
  sub_3EDF14();
  sub_FBD0(v26, v91, &qword_4EF460);
  v95 = sub_3E5DC4();
  v96 = v139;
  (*(*(v95 - 8) + 56))(v139, 1, 1, v95);
  v111 = v20;
  v97 = v20;
  v98 = v140;
  sub_FBD0(v97, v140, &unk_4E9EE0);
  v99 = [v41 showTypeSetting];
  v110 = v26;
  v100 = v146;
  sub_FBD0(v93, v146, &qword_4EF470);
  v101 = [a1 hasFreeVersion];
  v109 = v41;
  v102 = v91;
  v103 = v101;
  [a1 upNextScore];
  LOBYTE(v107) = v115;
  HIBYTE(v106) = v145;
  HIBYTE(v107) = v127 & 1;
  LOBYTE(v106) = 0;
  HIBYTE(v105) = v128;
  LOBYTE(v105) = v129;
  v104 = (*(v142 + 344))(v135, v134, v133, v132, v144, v143, v138, v137, v112, v147, v136, v131 & 1, v114, v113, v119, v118, v149, v150, v94, v125, v123, v130, v102, v96, v98, v105, 0, 0, v66, 0, v124, 0, v126, v106, v117, v116, v107, v99, 0, v100, v122, v103, v121, v120, v108, 0);

  sub_FCF8(v141, &qword_4EDE00);
  sub_FCF8(v93, &qword_4EF470);
  sub_FCF8(v111, &unk_4E9EE0);
  sub_FCF8(v110, &qword_4EF460);
  sub_FCF8(v151, &qword_4F1D50);
  return v104;
}

uint64_t EpisodeStateController.stateMachine(for:)()
{
  type metadata accessor for LibraryEpisodeLockup();
  if (swift_dynamicCastClass())
  {

    v0 = sub_3E8D34();

    return v0;
  }

  else
  {

    return sub_3E8D34();
  }
}

uint64_t static PodcastDetail.displayType(from:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 2 * (result == 2);
  if (result == 1)
  {
    v2 = 1;
  }

  *a2 = v2;
  return result;
}

uint64_t static PodcastDetail.fullPodcastDetails(from:)(void *a1)
{
  v2 = [a1 smartPlayEpisode];
  v3 = sub_3EDFA4();
  v5 = v4;
  v6 = a1;

  return sub_26AA94(v6, 0, v2, v3, v5 & 1);
}

uint64_t sub_26AA94(void *a1, unint64_t a2, void *a3, uint64_t a4, int a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v10 - 8);
  v252 = v212 - v11;
  v12 = sub_3E9A04();
  v241 = *(v12 - 8);
  __chkstk_darwin(v12);
  v247 = v212 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FCD90);
  __chkstk_darwin(v14);
  v240 = v212 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v249 = v212 - v17;
  __chkstk_darwin(v18);
  v246 = v212 - v19;
  __chkstk_darwin(v20);
  v254 = v212 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v22 - 8);
  v253 = v212 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v244 = v212 - v25;
  __chkstk_darwin(v26);
  v250 = v212 - v27;
  __chkstk_darwin(v28);
  v256 = v212 - v29;
  __chkstk_darwin(v30);
  v255 = v212 - v31;
  __chkstk_darwin(v32);
  v34 = v212 - v33;
  __chkstk_darwin(v35);
  v262 = v212 - v36;
  __chkstk_darwin(v37);
  v261 = v212 - v38;
  __chkstk_darwin(v39);
  v245 = v212 - v40;
  __chkstk_darwin(v41);
  v260 = v212 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v43 - 8);
  v243 = v212 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v242 = v212 - v46;
  __chkstk_darwin(v47);
  v251 = v212 - v48;
  __chkstk_darwin(v49);
  v259 = v212 - v50;
  __chkstk_darwin(v51);
  v258 = v212 - v52;
  __chkstk_darwin(v53);
  v257 = v212 - v54;
  __chkstk_darwin(v55);
  v264 = v212 - v56;
  __chkstk_darwin(v57);
  v59 = v212 - v58;
  v61 = __chkstk_darwin(v60);
  v263 = v212 - v62;
  v63 = [a1 uuid];
  if (!v63)
  {

    return 0;
  }

  v236 = a5;
  v248 = a3;
  v64 = v63;
  v229 = sub_3ED244();
  v231 = v65;

  v66 = sub_3EDFF4();
  v228 = v67;
  v68 = [a1 title];
  if (v68)
  {
    v69 = v68;
    v233 = sub_3ED244();
    v232 = v70;
  }

  else
  {
    v233 = 0;
    v232 = 0;
  }

  v212[1] = v14;
  v213 = v12;
  v234 = v66;
  v235 = a4;
  [a1 addedDate];
  v73 = v72;
  v74 = [a1 bestDescription];
  if (v74)
  {
    v75 = v74;
    sub_3ED244();

    v76 = sub_3E9A64();
    sub_3E9A34();
    sub_3E9A24();
    v77 = objc_allocWithZone(v76);
    v230 = sub_3E9A84();
  }

  else
  {
    v230 = 0;
  }

  v78 = [a1 author];
  if (v78)
  {
    v79 = v78;
    v227 = sub_3ED244();
    v226 = v80;
  }

  else
  {
    v227 = 0;
    v226 = 0;
  }

  v81 = [a1 provider];
  if (v81)
  {
    v82 = v81;
    v225 = sub_3ED244();
    v224 = v83;
  }

  else
  {
    v225 = 0;
    v224 = 0;
  }

  if ([a1 isSerialShowTypeInFeed])
  {
    goto LABEL_16;
  }

  v84 = &selRef_newEpisodesCount;
  if ([a1 newEpisodesCount] <= 0)
  {
    v84 = &selRef_newTrailersCount;
    if ([a1 newTrailersCount] < 1)
    {
LABEL_16:
      v223 = 0;
      v222 = 0;
      goto LABEL_22;
    }

    v85 = "NEW_TRAILERS_FORMAT";
  }

  else
  {
    v85 = "NEW_EPISODES_FORMAT";
  }

  v86 = v85 - 32;
  v87 = [objc_opt_self() mainBundle];
  v211._countAndFlagsBits = 0xE000000000000000;
  v269._object = (v86 | 0x8000000000000000);
  v269._countAndFlagsBits = 0xD000000000000013;
  v270.value._countAndFlagsBits = 0;
  v270.value._object = 0;
  v88.super.isa = v87;
  v271._countAndFlagsBits = 0;
  v271._object = 0xE000000000000000;
  sub_3E5A74(v269, v270, v88, v271, v211);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_3F5630;
  v90 = [a1 *v84];
  *(v89 + 56) = &type metadata for Int64;
  *(v89 + 64) = &protocol witness table for Int64;
  *(v89 + 32) = v90;
  v223 = sub_3ED214();
  v222 = v91;

LABEL_22:
  v92 = [a1 artworkPrimaryColor];
  if (v92)
  {
    v93 = v92;
    sub_3ED244();

    v99 = sub_3E9464();
    v101 = v100;
    v239 = 0;
  }

  else
  {
    v239 = 0;
    sub_26C5A0();
    v94 = [swift_getObjCClassFromMetadata() sharedInstance];
    v95 = [a1 uuid];
    v96 = [v94 colorThemeForPodcastUuid:v95];

    v97 = [v96 backgroundColor];
    if (!v97)
    {
      v97 = [objc_opt_self() whiteColor];
    }

    v98 = v97;
    v99 = [v97 CGColor];

    v101 = 1;
  }

  v102 = v263;
  sub_3EDF94();
  v103 = sub_3E7784();
  v104 = *(v103 - 8);
  if ((*(v104 + 48))(v59, 1, v103) == 1)
  {
    sub_FCF8(v59, &qword_4F1D50);
    v105 = 1;
  }

  else
  {
    sub_3E7744();
    sub_86F48(v59);
    v105 = 0;
  }

  v106 = *(v104 + 56);
  v107 = v104 + 56;
  v108 = 1;
  v238 = v103;
  v237 = v107;
  v106(v102, v105, 1, v103);
  sub_3EDFE4();
  v109 = [a1 bestAvailableStoreCleanURL];
  v221 = v101;
  v110 = v245;
  if (v109)
  {
    v111 = v109;
    sub_3E5D44();

    v108 = 0;
  }

  v245 = v99;
  v112 = sub_3E5DC4();
  v113 = *(*(v112 - 8) + 56);
  v113(v110, v108, 1, v112);
  sub_FACC(v110, v260, &unk_4E9EE0);
  v114 = [a1 webpageURL];
  if (v114)
  {
    v115 = v114;
    sub_3ED244();

    sub_3E5D94();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v113(v261, 1, 1, v112);
  }

  v116 = [a1 bestFeedURLExcludingRedirectURL:0];
  if (v116)
  {
    v117 = v116;
    sub_3E5D44();

    v118 = 0;
  }

  else
  {
    v118 = 1;
  }

  v113(v34, v118, 1, v112);
  sub_FACC(v34, v262, &unk_4E9EE0);
  v119 = [a1 isAuthenticatedDark];
  v120 = [a1 isPastAutodownloadOrEpisodeLimitDark];
  v121 = v119 | 2;
  if (!v120)
  {
    v121 = v119;
  }

  v219 = v121;
  v122 = v248;
  if (v248)
  {
    type metadata accessor for Episode();
    v267 = 0;
    v265 = 0u;
    v266 = 0u;
    v218 = Episode.__allocating_init(from:clickAction:wantsListenNowReason:)(v122, &v265, 0);
  }

  else
  {
    v218 = 0;
  }

  v123 = v247;
  v124 = [a1 displayType];
  if (v124)
  {
    v125 = v124;
    v216 = MTDisplayTypeFromPersistentString();
  }

  else
  {
    v216 = 0;
  }

  v220 = [a1 isExplicit];
  v215 = [a1 offerTypes];
  v126 = [a1 channel];
  if (v126)
  {
    v127 = v126;
    v214 = [v126 subscriptionActive];
  }

  else
  {
    v214 = 0;
  }

  v128 = [a1 channel];
  if (v128)
  {
    v129 = v128;
    type metadata accessor for ChannelDetail();
    v217 = sub_269930(v129);
  }

  else
  {
    v217 = 0;
  }

  v130 = a1;
  v131 = v254;
  sub_3E8644();
  v132 = v246;
  sub_FBD0(v131, v246, &qword_4FCD90);
  v133 = sub_3E8654();
  v134 = *(v133 - 8);
  v135 = (*(v134 + 48))(v132, 1, v133);
  v247 = v130;
  if (v135 == 1)
  {
    sub_FCF8(v132, &qword_4FCD90);
    v136 = v249;
    goto LABEL_56;
  }

  v137 = v239;
  v138 = sub_3E8634();
  v139 = v137;
  v136 = v249;
  if (v139)
  {

    (*(v134 + 8))(v132, v133);
    v239 = 0;
LABEL_56:
    sub_3E9994();
    sub_FBD0(v254, v136, &qword_4FCD90);
    v140 = v130;
    v141 = sub_3E99F4();
    v142 = sub_3ED9D4();

    if (os_log_type_enabled(v141, v142))
    {
      v143 = swift_slowAlloc();
      v246 = swift_slowAlloc();
      v268 = v246;
      *v143 = 136381699;
      v144 = [v140 title];
      v212[0] = v106;
      if (v144)
      {
        v145 = v144;
        v146 = sub_3ED244();
        v148 = v147;
      }

      else
      {
        v146 = 0;
        v148 = 0;
      }

      *&v265 = v146;
      *(&v265 + 1) = v148;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9950);
      v150 = sub_3ED2B4();
      v152 = sub_2EDD0(v150, v151, &v268);

      *(v143 + 4) = v152;
      *(v143 + 12) = 2080;
      v153 = [v140 uuid];
      if (v153)
      {
        v154 = v153;
        v155 = sub_3ED244();
        v157 = v156;
      }

      else
      {
        v155 = 0;
        v157 = 0;
      }

      *&v265 = v155;
      *(&v265 + 1) = v157;
      v158 = sub_3ED2B4();
      v160 = sub_2EDD0(v158, v159, &v268);

      *(v143 + 14) = v160;
      *(v143 + 22) = 2081;
      *&v265 = [v140 storeCollectionId];
      v161 = sub_3EE7A4();
      v163 = sub_2EDD0(v161, v162, &v268);

      *(v143 + 24) = v163;
      *(v143 + 32) = 2081;
      v164 = [v140 feedURL];
      if (v164)
      {
        v165 = v164;
        v166 = sub_3ED244();
        v168 = v167;
      }

      else
      {
        v166 = 0;
        v168 = 0;
      }

      v169 = v240;
      *&v265 = v166;
      *(&v265 + 1) = v168;
      v170 = sub_3ED2B4();
      v172 = sub_2EDD0(v170, v171, &v268);

      *(v143 + 34) = v172;
      *(v143 + 42) = 2080;
      v173 = v249;
      sub_FBD0(v249, v169, &qword_4FCD90);
      v174 = sub_3ED2B4();
      v176 = v175;
      sub_FCF8(v173, &qword_4FCD90);
      v177 = sub_2EDD0(v174, v176, &v268);

      *(v143 + 44) = v177;
      _os_log_impl(&dword_0, v141, v142, "Podcast %{private}s, uuid: %s, adamID: %{private}s, feedURL: %{private}s; Can't get a sanitized state from it, podcastsStateModel: %s", v143, 0x34u);
      swift_arrayDestroy();

      (*(v241 + 8))(v123, v213);
      v149 = 3;
      v130 = v247;
      v106 = v212[0];
    }

    else
    {

      sub_FCF8(v136, &qword_4FCD90);
      (*(v241 + 8))(v123, v213);
      v149 = 3;
      v130 = v247;
    }

    goto LABEL_69;
  }

  v239 = 0;
  (*(v134 + 8))(v132, v133);
  v149 = v138;
LABEL_69:
  sub_FBD0(v263, v257, &qword_4F1D50);
  sub_FBD0(v264, v258, &qword_4F1D50);
  v106(v259, 1, 1, v238);
  v178 = [v130 isSerialShowTypeInFeed];
  v246 = sub_3EDFD4();
  LODWORD(v241) = v179;
  LODWORD(v249) = v178;
  if (a2)
  {
    LODWORD(v240) = v149;
    v268 = _swiftEmptyArrayStorage;
    if (a2 >> 62)
    {
LABEL_96:
      v180 = sub_3EE5A4();
    }

    else
    {
      v180 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    }

    v181 = 0;
    v182 = _swiftEmptyArrayStorage;
LABEL_73:
    v183 = v182;
    while (v180 != v181)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v184 = sub_3EE3F4();
      }

      else
      {
        if (v181 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_95;
        }

        v184 = *(a2 + 8 * v181 + 32);
      }

      v185 = v184;
      v186 = v181 + 1;
      if (__OFADD__(v181, 1))
      {
        __break(1u);
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      type metadata accessor for Episode();
      v267 = 0;
      v265 = 0u;
      v266 = 0u;
      v187 = Episode.__allocating_init(from:clickAction:wantsListenNowReason:)(v185, &v265, 0);
      ++v181;
      v182 = v183;
      if (v187)
      {
        sub_3ED564();
        if (*(&dword_10 + (v268 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v268 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_3ED5A4();
        }

        sub_3ED604();
        v182 = v268;
        v181 = v186;
        goto LABEL_73;
      }
    }

    v239 = v182;

    LOBYTE(v149) = v240;
  }

  else
  {
    v239 = 0;
  }

  LODWORD(v240) = ((v215 & 2) != 0) & v214;
  sub_FBD0(v260, v255, &unk_4E9EE0);
  sub_FBD0(v261, v256, &unk_4E9EE0);
  v188 = v250;
  sub_FBD0(v262, v250, &unk_4E9EE0);
  [v130 lastDatePlayed];
  v190 = v189;
  LODWORD(v238) = [v130 hidesPlayedEpisodes];
  v191 = sub_3EDFC4();
  if (v216 == 1)
  {
    v192 = 1;
  }

  else
  {
    v192 = 2 * (v216 == 2);
  }

  v193 = sub_3EC634();
  v194 = v252;
  (*(*(v193 - 8) + 56))(v252, 1, 1, v193);
  type metadata accessor for PodcastDetail(0);
  v71 = swift_allocObject();
  v195 = OBJC_IVAR____TtC8ShelfKit13PodcastDetail_episodes;
  *(v71 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_episodes) = 0;
  v196 = OBJC_IVAR____TtC8ShelfKit13PodcastDetail_channel;
  *(v71 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_channel) = 0;
  *(v71 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_podcastState) = v149;
  swift_beginAccess();
  *(v71 + v195) = v239;
  sub_FBD0(v188, v71 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_feedUrl, &unk_4E9EE0);
  *(v71 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_offerAction) = 0;
  *(v71 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_episodeToPlay) = v218;
  v197 = v71 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_seasonToShow;
  *v197 = v235;
  *(v197 + 8) = v236 & 1;
  *(v71 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_isSerialShowTypeInFeed) = v249;
  v198 = v71 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_episodeUserFilter;
  *v198 = v246;
  *(v198 + 8) = v241;
  *(v71 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_darkModeOptions) = v219;
  v199 = (v71 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_shelfUniqueId);
  v200 = v229;
  v201 = v231;
  *v199 = v229;
  v199[1] = v201;
  *(v71 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_hasEverPlayed) = v190 != 0.0;
  *(v71 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_sort) = v191;
  *(v71 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_hidesPlayedEpisodes) = v238;
  *(v71 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_displayType) = v192;
  swift_beginAccess();
  *(v71 + v196) = v217;
  sub_FBD0(v194, v71 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_impressionMetrics, &unk_4E9170);
  sub_FBD0(v257, v251, &qword_4F1D50);
  v202 = v242;
  sub_FBD0(v258, v242, &qword_4F1D50);
  v203 = v243;
  sub_FBD0(v259, v243, &qword_4F1D50);
  v204 = v244;
  sub_FBD0(v255, v244, &unk_4E9EE0);
  sub_FBD0(v256, v253, &unk_4E9EE0);
  *(v71 + 32) = v200;
  *(v71 + 40) = v201;

  v205 = v234;
  if (v228)
  {
    v205 = sub_3E9484();
  }

  sub_F2260(v245, v221);

  sub_FCF8(v252, &unk_4E9170);
  sub_FCF8(v250, &unk_4E9EE0);
  sub_FCF8(v256, &unk_4E9EE0);
  sub_FCF8(v255, &unk_4E9EE0);
  sub_FCF8(v259, &qword_4F1D50);
  sub_FCF8(v258, &qword_4F1D50);
  sub_FCF8(v257, &qword_4F1D50);
  sub_FCF8(v254, &qword_4FCD90);
  sub_FCF8(v262, &unk_4E9EE0);
  sub_FCF8(v261, &unk_4E9EE0);
  sub_FCF8(v260, &unk_4E9EE0);
  sub_FCF8(v264, &qword_4F1D50);
  sub_FCF8(v263, &qword_4F1D50);
  *(v71 + 16) = v205;
  *(v71 + 24) = 0;
  v206 = v232;
  *(v71 + 48) = v233;
  *(v71 + 56) = v206;
  *(v71 + 64) = v73;
  *(v71 + 72) = 0;
  v207 = v227;
  *(v71 + 80) = v230;
  *(v71 + 88) = v207;
  v208 = v225;
  *(v71 + 96) = v226;
  *(v71 + 104) = v208;
  v209 = v223;
  *(v71 + 112) = v224;
  *(v71 + 120) = v209;
  *(v71 + 128) = v222;
  sub_FACC(v251, v71 + OBJC_IVAR____TtC8ShelfKit7Podcast_artwork, &qword_4F1D50);
  sub_FACC(v202, v71 + OBJC_IVAR____TtC8ShelfKit7Podcast_uberArtwork, &qword_4F1D50);
  sub_FACC(v203, v71 + OBJC_IVAR____TtC8ShelfKit7Podcast_logoArtwork, &qword_4F1D50);
  *(v71 + OBJC_IVAR____TtC8ShelfKit7Podcast_paidSubscriptionActive) = v240;
  sub_FACC(v204, v71 + OBJC_IVAR____TtC8ShelfKit7Podcast_storeUrl, &unk_4E9EE0);
  sub_FACC(v253, v71 + OBJC_IVAR____TtC8ShelfKit7Podcast_webpageUrl, &unk_4E9EE0);
  *(v71 + OBJC_IVAR____TtC8ShelfKit7Podcast_isExplicit) = v220;
  return v71;
}

unint64_t sub_26C5A0()
{
  result = qword_4FCD98;
  if (!qword_4FCD98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4FCD98);
  }

  return result;
}

uint64_t RecentlySearchedStorage.Item.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId);
  type metadata accessor for LibraryEpisodeLockup();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v6 = *(v4 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_uuid);
    v5 = *(v4 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_uuid + 8);

    v8 = 0;
    v9 = 68;
  }

  else
  {
    type metadata accessor for LegacyChannelLockup();
    if (swift_dynamicCastClass())
    {

      v6 = 0;
      v5 = 0;
      v9 = 66;
    }

    else
    {
      type metadata accessor for LibraryShowLockup();
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v6 = *(v10 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_uuid);
        v5 = *(v10 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_uuid + 8);

        v8 = 0;
        v9 = 67;
        goto LABEL_8;
      }

      type metadata accessor for LegacyEpisodeLockup();
      if (swift_dynamicCastClass())
      {

        v6 = 0;
        v5 = 0;
        v9 = 68;
      }

      else
      {
        type metadata accessor for LegacyCategoryLockup();
        if (swift_dynamicCastClass())
        {

          v8 = 0;
          v6 = 0;
          v5 = 0;
          v9 = 65;
          goto LABEL_8;
        }

        type metadata accessor for LegacyEditorialItemLockup();
        v11 = swift_dynamicCastClass();

        v6 = 0;
        v5 = 0;
        if (v11)
        {
          v9 = 65;
        }

        else
        {
          v9 = 67;
        }
      }
    }

    v8 = 1;
  }

LABEL_8:
  *a2 = v9;
  *(a2 + 1) = v8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  return result;
}

uint64_t sub_26C78C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FCED0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FCED8);
  v7 = *(v6 - 8);
  v24 = v6;
  v25 = v7;
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FCEE0);
  v11 = *(v10 - 8);
  v26 = v10;
  v27 = v11;
  __chkstk_darwin(v10);
  v13 = &v23 - v12;
  v14 = *(v0 + OBJC_IVAR____TtC8ShelfKit24LocalShowPageFeedUpdater_libraryActionController + 24);
  v15 = *(v0 + OBJC_IVAR____TtC8ShelfKit24LocalShowPageFeedUpdater_libraryActionController + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8ShelfKit24LocalShowPageFeedUpdater_libraryActionController), v14);
  (*(v15 + 128))(*(v1 + OBJC_IVAR____TtC8ShelfKit24LocalShowPageFeedUpdater_podcastUUID), *(v1 + OBJC_IVAR____TtC8ShelfKit24LocalShowPageFeedUpdater_podcastUUID + 8), *(v1 + OBJC_IVAR____TtC8ShelfKit24LocalShowPageFeedUpdater_isImplicitlyFollowed) | 0x40u, v14, v15);
  v16 = sub_3ECD24();

  v28 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FCEE8);
  sub_886BC(&qword_4FCEF0, &qword_4FCEE8);
  sub_3E9FA4();

  LODWORD(v16) = *(v0 + OBJC_IVAR____TtC8ShelfKit24LocalShowPageFeedUpdater_showUpdaterType);
  *(swift_allocObject() + 16) = v16;
  sub_3E9B74();

  (*(v3 + 8))(v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FCEF8);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_3F5630;
  v18 = 0x3000000000000007;
  if (v16)
  {
    v18 = 0x7000000000000007;
  }

  *(v17 + 32) = v18;
  sub_886BC(&qword_4FCF00, &qword_4FCED8);
  v19 = v24;
  sub_3EA104();

  (*(v25 + 8))(v9, v19);
  swift_allocObject();
  swift_weakInit();
  sub_886BC(&qword_4FCF08, &qword_4FCEE0);
  v20 = v26;
  v21 = sub_3EA1A4();

  (*(v27 + 8))(v13, v20);
  *(v1 + OBJC_IVAR____TtC8ShelfKit24LocalShowPageFeedUpdater_internalStatusSubscription) = v21;
}

unint64_t sub_26CC30()
{
  if ((*v0 & 0xF000000000000007) == 0xF000000000000007)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000011;
  }
}