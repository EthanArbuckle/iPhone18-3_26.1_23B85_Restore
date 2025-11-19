uint64_t sub_2239ABA60(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xD000000000000012;
  v5 = 0x80000002239B9010;
  if (a1 != 5)
  {
    v4 = 0x746F687370616E73;
    v5 = 0xED000079616C6544;
  }

  v6 = 0xE800000000000000;
  v7 = 0x6570795465736163;
  if (a1 != 3)
  {
    v7 = 0x5462755365736163;
    v6 = 0xEB00000000657079;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE800000000000000;
  v9 = 0x65636E6174736E69;
  if (a1 != 1)
  {
    v9 = 1701667182;
    v8 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x64656C62616E65;
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
        v12 = 0xE800000000000000;
        if (v10 != 0x65636E6174736E69)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE400000000000000;
        if (v10 != 1701667182)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x64656C62616E65)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0x80000002239B9010;
      if (v10 != 0xD000000000000012)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xED000079616C6544;
      if (v10 != 0x746F687370616E73)
      {
LABEL_39:
        v13 = sub_2239B3958();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE800000000000000;
    if (v10 != 0x6570795465736163)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xEB00000000657079;
    if (v10 != 0x5462755365736163)
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

uint64_t sub_2239ABCA4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v10 = 0xE700000000000000;
    v11 = 0x80000002239B9100;
    v12 = 0xD000000000000014;
    if (a1 != 2)
    {
      v12 = 0xD000000000000012;
      v11 = 0x80000002239B9120;
    }

    v13 = 0xD000000000000016;
    if (a1)
    {
      v10 = 0x80000002239B90E0;
    }

    else
    {
      v13 = 0x64656C62616E65;
    }

    if (a1 <= 1u)
    {
      v8 = v13;
    }

    else
    {
      v8 = v12;
    }

    if (v2 <= 1)
    {
      v9 = v10;
    }

    else
    {
      v9 = v11;
    }
  }

  else
  {
    v3 = 0x80000002239B9180;
    v4 = 0x80000002239B91A0;
    v5 = 0x6465726975716572;
    if (a1 == 7)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v4 = 0xEF746C7561666544;
    }

    if (a1 == 6)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v3 = v4;
    }

    v6 = 0x80000002239B9140;
    v7 = 0xD000000000000019;
    if (a1 != 4)
    {
      v7 = 0xD000000000000013;
      v6 = 0x80000002239B9160;
    }

    if (a1 <= 5u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v5;
    }

    if (v2 <= 5)
    {
      v9 = v6;
    }

    else
    {
      v9 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0x80000002239B9100;
        if (v8 != 0xD000000000000014)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v15 = 0x80000002239B9120;
        if (v8 != 0xD000000000000012)
        {
          goto LABEL_54;
        }
      }
    }

    else if (a2)
    {
      v15 = 0x80000002239B90E0;
      if (v8 != 0xD000000000000016)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v15 = 0xE700000000000000;
      if (v8 != 0x64656C62616E65)
      {
        goto LABEL_54;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0x80000002239B9140;
      if (v8 != 0xD000000000000019)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v15 = 0x80000002239B9160;
      if (v8 != 0xD000000000000013)
      {
LABEL_54:
        v16 = sub_2239B3958();
        goto LABEL_55;
      }
    }
  }

  else
  {
    if (a2 == 6)
    {
      v14 = "minSessionLength";
    }

    else
    {
      if (a2 != 7)
      {
        v15 = 0xEF746C7561666544;
        if (v8 != 0x6465726975716572)
        {
          goto LABEL_54;
        }

        goto LABEL_52;
      }

      v14 = "maxSessionLength";
    }

    v15 = (v14 - 32) | 0x8000000000000000;
    if (v8 != 0xD000000000000010)
    {
      goto LABEL_54;
    }
  }

LABEL_52:
  if (v9 != v15)
  {
    goto LABEL_54;
  }

  v16 = 1;
LABEL_55:

  return v16 & 1;
}

uint64_t sub_2239ABF68(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x676E69727473;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x656C62756F64;
    }

    else
    {
      v4 = 1819242338;
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
      v4 = 7630441;
    }

    else
    {
      v4 = 0x676E69727473;
    }

    if (v3)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x656C62756F64;
  if (a2 != 2)
  {
    v8 = 1819242338;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 7630441;
    v6 = 0xE300000000000000;
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
    v11 = sub_2239B3958();
  }

  return v11 & 1;
}

uint64_t sub_2239AC080(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE600000000000000;
    v12 = 0x80000002239B9060;
    v13 = 0xD000000000000012;
    if (a1 != 2)
    {
      v13 = 0x746E656D6D6F63;
      v12 = 0xE700000000000000;
    }

    v14 = 0xD000000000000010;
    if (a1)
    {
      v14 = 0x73646C697562;
    }

    else
    {
      v11 = 0x80000002239B9040;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0x6C616E7265746E69;
    v4 = 0xE900000000000073;
    v5 = 0x80000002239B90C0;
    v6 = 0x6D726F6674616C70;
    if (a1 == 7)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v5 = 0xE900000000000073;
    }

    if (a1 != 6)
    {
      v3 = v6;
      v4 = v5;
    }

    v7 = 0xE800000000000000;
    v8 = 0xD000000000000018;
    if (a1 == 4)
    {
      v8 = 0x73746E656D6D6F63;
    }

    else
    {
      v7 = 0x80000002239B9090;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v16 = 0x80000002239B9060;
        if (v9 != 0xD000000000000012)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v16 = 0xE700000000000000;
        if (v9 != 0x746E656D6D6F63)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_52;
    }

    if (a2)
    {
      v16 = 0xE600000000000000;
      if (v9 != 0x73646C697562)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    }

    v15 = "audioServiceType";
    goto LABEL_35;
  }

  if (a2 > 5u)
  {
    if (a2 == 6)
    {
      v17 = 0x6C616E7265746E69;
    }

    else
    {
      if (a2 == 7)
      {
        v15 = "operatingSystems";
LABEL_35:
        v16 = (v15 - 32) | 0x8000000000000000;
        if (v9 != 0xD000000000000010)
        {
          goto LABEL_54;
        }

        goto LABEL_52;
      }

      v17 = 0x6D726F6674616C70;
    }

    v16 = 0xE900000000000073;
    if (v9 != v17)
    {
      goto LABEL_54;
    }

    goto LABEL_52;
  }

  if (a2 == 4)
  {
    v16 = 0xE800000000000000;
    if (v9 != 0x73746E656D6D6F63)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v16 = 0x80000002239B9090;
    if (v9 != 0xD000000000000018)
    {
LABEL_54:
      v18 = sub_2239B3958();
      goto LABEL_55;
    }
  }

LABEL_52:
  if (v10 != v16)
  {
    goto LABEL_54;
  }

  v18 = 1;
LABEL_55:

  return v18 & 1;
}

uint64_t sub_2239AC354(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 5459817;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x534F6863746177;
    }

    else
    {
      v5 = 5459817;
    }

    if (v3)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 1397716596;
    v4 = 0xE400000000000000;
  }

  else if (a1 == 3)
  {
    v4 = 0xE500000000000000;
    v5 = 0x534F63616DLL;
  }

  else
  {
    v4 = 0xE400000000000000;
    v5 = 1397715576;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE300000000000000;
    v7 = 0xE700000000000000;
    v8 = 0x534F6863746177;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 1397716596;
    v6 = 0xE400000000000000;
    v7 = 0xE500000000000000;
    v8 = 0x534F63616DLL;
    if (a2 != 3)
    {
      v8 = 1397715576;
      v7 = 0xE400000000000000;
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
    v12 = sub_2239B3958();
  }

  return v12 & 1;
}

uint64_t sub_2239AC4A8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x64616F6C7265766FLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x73747469726973;
    }

    else
    {
      v4 = 0x65646F63656D6974;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xED00006575737349;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6573616870;
    }

    else
    {
      v4 = 0x64616F6C7265766FLL;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x73747469726973;
  if (a2 != 2)
  {
    v8 = 0x65646F63656D6974;
    v7 = 0xED00006575737349;
  }

  if (a2)
  {
    v2 = 0x6573616870;
    v6 = 0xE500000000000000;
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
    v11 = sub_2239B3958();
  }

  return v11 & 1;
}

uint64_t sub_2239AC5FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x676E69727473;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x74616F6C66;
    }

    else
    {
      v4 = 1819242338;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
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
      v4 = 7630441;
    }

    else
    {
      v4 = 0x676E69727473;
    }

    if (v3)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0xE500000000000000;
  v8 = 0x74616F6C66;
  if (a2 != 2)
  {
    v8 = 1819242338;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 7630441;
    v6 = 0xE300000000000000;
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
    v11 = sub_2239B3958();
  }

  return v11 & 1;
}

uint64_t sub_2239AC714()
{
  sub_2239B3228();
}

uint64_t sub_2239AC8B8()
{
  sub_2239B3228();
}

uint64_t sub_2239ACA28()
{
  sub_2239B3228();
}

uint64_t sub_2239ACB8C()
{
  sub_2239B3A18();
  sub_2239B3228();

  return sub_2239B3A78();
}

uint64_t sub_2239ACCC0()
{
  sub_2239B3A18();
  sub_2239B3228();

  return sub_2239B3A78();
}

uint64_t sub_2239ACE0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_223982880(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FFE8, &qword_2239B5B80);
      swift_dynamicCast();
      v10 = v2;
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_223982880((v6 > 1), v7 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v7 + 1;
      sub_2239695C0(&v9, v2 + 40 * v7 + 32);
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_2239ACF20(uint64_t a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  if ((a2 & 1) == 0)
  {
    if (qword_281336768 != -1)
    {
      swift_once();
    }

    LOBYTE(v115) = 9;
    sub_22397F28C(a1, qword_2813382B8, &v115);
    if (v3)
    {
      v145 = v3;
LABEL_22:

      return;
    }
  }

  v8 = sub_2239AEB78(v7, sub_2239AEEB0, sub_2239AEEB0);

  if ((a2 & 1) == 0)
  {
    sub_22399F11C(v8);
    if (v3)
    {
      v145 = v3;
LABEL_21:

      goto LABEL_22;
    }
  }

  v10 = sub_2239AEB78(v9, sub_2239AECE8, sub_2239AECE8);
  v145 = v3;

  if (a2)
  {
    v11 = 266;
  }

  else
  {
    v11 = 10;
    v12 = v145;
    sub_22399D854(v10);
    v145 = v12;
    if (v12)
    {

      goto LABEL_21;
    }
  }

  v13 = sub_22399B688(2u, v10);
  v14 = v145;
  v15 = sub_22398A144(v13);
  v145 = v14;
  if (v14)
  {

    goto LABEL_22;
  }

  v16 = v15;
  v72 = a3;

  v17 = sub_22399B88C(1u, v10);
  v83 = (v17 == 2) | v17;
  v18 = sub_22399BA80(3u, v10);
  v80 = sub_22399BC80(4u, v10);
  v81 = v19;
  v76 = sub_22399BC80(5u, v10);
  v78 = v20;
  v84 = sub_22399BC80(6u, v10);
  v22 = v21;
  v75 = sub_22399BC80(7u, v10);
  v24 = v23;
  v25 = sub_22399BE78(8u, v10);
  v73 = v26;

  v144 = BYTE4(v18) & 1;
  v143 = v22 & 1;
  v27 = *&v80;
  v142 = v24 & 1;
  LOBYTE(v136) = v83 & 1;
  if (v81)
  {
    v27 = 0.0;
  }

  v28 = *&v76;
  *(&v136 + 1) = v16;
  LODWORD(v137) = v18;
  if (v78)
  {
    v28 = 3600.0;
  }

  BYTE4(v137) = v144;
  *(&v137 + 1) = v27;
  *&v138 = v28;
  *(&v138 + 1) = v84;
  LOBYTE(v139) = v143;
  *(&v139 + 1) = v75;
  LOBYTE(v140) = v142;
  *(&v140 + 1) = v25;
  v141 = v73;
  v29 = v145;
  v30 = sub_22397BF28(6, v8, v11);
  v145 = v29;
  if (v29)
  {
LABEL_20:
    sub_223973A10(&v136);
    goto LABEL_21;
  }

  v32 = v30;
  v33 = v31;

  v34._countAndFlagsBits = v32;
  v34._object = v33;
  TTRConfig.RadarReproducibility.init(rawValue:)(v34);
  v35 = v115;
  if (v115 == 7)
  {

    sub_223973A10(&v136);

    *&v115 = 0;
    *(&v115 + 1) = 0xE000000000000000;
    sub_2239B3678();

    v36 = 0x80000002239BAFD0;
    v37 = 0xD000000000000026;
LABEL_25:
    *&v115 = v37;
    *(&v115 + 1) = v36;
    MEMORY[0x223DEE030](v32, v33);

    MEMORY[0x223DEE030](32032, 0xE200000000000000);
    v38 = v115;
    sub_223973AD8();
    v39 = swift_allocError();
    *v40 = v38;
    *(v40 + 16) = 0;
    v145 = v39;
    swift_willThrow();
    return;
  }

  v41 = v145;
  v42 = sub_22397BF28(7, v8, v11);
  v145 = v41;
  if (v41)
  {
    goto LABEL_20;
  }

  v32 = v42;
  v33 = v43;

  v44._countAndFlagsBits = v32;
  v44._object = v33;
  TTRConfig.RadarClassification.init(rawValue:)(v44);
  v45 = v115;
  if (v115 == 11)
  {

    sub_223973A10(&v136);

    *&v115 = 0;
    *(&v115 + 1) = 0xE000000000000000;
    sub_2239B3678();

    v36 = 0x80000002239BB000;
    v37 = 0xD000000000000024;
    goto LABEL_25;
  }

  v46 = sub_22399D004(0, v8, v11);
  v47 = v145;
  v48 = sub_22397BF28(1, v8, v11);
  if (v47)
  {
    v145 = v47;
    goto LABEL_20;
  }

  v50 = v49;
  v85 = v48;
  v51 = sub_22397BF28(2, v8, v11);
  v53 = v52;
  *&v82 = sub_22397BF28(3, v8, v11);
  *(&v82 + 1) = v54;
  *&v79 = sub_22397BF28(4, v8, v11);
  *(&v79 + 1) = v55;
  v77 = sub_22397C08C(5, v8, v11);
  v145 = 0;
  *&v74 = sub_22397BF28(8, v8, v11);
  *(&v74 + 1) = v56;
  v145 = 0;
  v57 = sub_22399D0DC(9, v8, v11);

  v58 = v145;
  CommonConfigFields.init(dict:)(a1, &v131);
  v145 = v58;
  if (v58)
  {
    sub_223973A10(&v136);

    goto LABEL_22;
  }

  if (v46 == 2 || (v46 & 1) != 0)
  {
    v106 = v138;
    v107 = v139;
    v108 = v140;
    v104 = v136;
    v105 = v137;
    *&v92[40] = v138;
    *&v92[56] = v139;
    *&v92[72] = v140;
    *&v92[8] = v136;
    v130 = v132;
    *&v86 = v85;
    *(&v86 + 1) = v50;
    *&v87 = v51;
    *(&v87 + 1) = v53;
    v88 = v82;
    v89 = v79;
    *&v90 = v77;
    BYTE8(v90) = v35;
    BYTE9(v90) = v45;
    v91 = v74;
    *v92 = v57;
    *&v92[88] = v141;
    *&v92[24] = v137;
    LOWORD(v93) = v131;
    BYTE2(v93) = v132;
    *(&v93 + 1) = v133;
    v94 = v134;
    v95 = v135;
    v96[0] = v85;
    v96[1] = v50;
    v96[2] = v51;
    v96[3] = v53;
    v97 = v82;
    v98 = v79;
    v99 = v77;
    v100 = v35;
    v101 = v45;
    v102 = v74;
    v109 = v141;
    v103 = v57;
    v110 = v131;
    v111 = v132;
    v112 = v133;
    v113 = v134;
    v114 = v135;
    sub_22398AC40(&v86, &v115);
    sub_2239AF100(v96);
    v127 = v93;
    v128 = v94;
    v129 = v95;
    v123 = *&v92[32];
    v124 = *&v92[48];
    v125 = *&v92[64];
    v126 = *&v92[80];
    v119 = v90;
    v120 = v91;
    v121 = *v92;
    v122 = *&v92[16];
    v115 = v86;
    v116 = v87;
    v117 = v88;
    v118 = v89;
    nullsub_1(&v115);
  }

  else
  {
    sub_223973A10(&v136);

    if (qword_2813366C0 != -1)
    {
      swift_once();
    }

    v59 = sub_2239B3048();
    __swift_project_value_buffer(v59, qword_2813366C8);

    v60 = sub_2239B3028();
    v61 = sub_2239B34C8();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *&v115 = v63;
      *v62 = 136380675;
      v64 = sub_223973B2C(v85, v50, &v115);

      *(v62 + 4) = v64;
      _os_log_impl(&dword_22395C000, v60, v61, "Instance disabled. { radarTitle=%{private}s }", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v63);
      MEMORY[0x223DEF1D0](v63, -1, -1);
      MEMORY[0x223DEF1D0](v62, -1, -1);
    }

    else
    {
    }

    sub_2239AF130(&v115);
  }

  v65 = v128;
  v72[12] = v127;
  v72[13] = v65;
  v72[14] = v129;
  v66 = v124;
  v72[8] = v123;
  v72[9] = v66;
  v67 = v126;
  v72[10] = v125;
  v72[11] = v67;
  v68 = v120;
  v72[4] = v119;
  v72[5] = v68;
  v69 = v122;
  v72[6] = v121;
  v72[7] = v69;
  v70 = v116;
  *v72 = v115;
  v72[1] = v70;
  v71 = v118;
  v72[2] = v117;
  v72[3] = v71;
}

AudioAnalyticsBase::TTRConfig::RadarReproducibility_optional __swiftcall TTRConfig.RadarReproducibility.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2239B37B8();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

AudioAnalyticsBase::TTRConfig::RadarClassification_optional __swiftcall TTRConfig.RadarClassification.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2239B37B8();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void TTRConfig.init(enabled:radarTitle:radarProblemDescription:radarComponentName:radarComponentVersion:radarComponentIdentifier:radarReproducibility:radarClassification:displayReason:radarKeywords:diagnosticRulesConfig:commonFields:allowUnknownFields:)(char a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10, uint64_t a11, char *a12, char *a13, __int128 a14, uint64_t a15, __int128 *a16, uint64_t *a17)
{
  v128 = a3;
  v21 = *a12;
  v22 = *a13;
  v23 = a16[3];
  v126[2] = a16[2];
  v126[3] = v23;
  v126[4] = a16[4];
  v127 = *(a16 + 10);
  v24 = a16[1];
  v126[0] = *a16;
  v126[1] = v24;
  v25 = *a17;
  v26 = a17[1];
  v27 = a17[2];
  v28 = a17[3];
  v29 = a17[4];
  v30 = a17[5];
  v81 = a2;
  if (a1 == 2 || (a1 & 1) != 0)
  {
    if (v26 == 1)
    {
      v74 = v22;
      v75 = v21;
      v77 = a4;
      v78 = a6;
      v80 = a8;
      v31 = sub_223974468(MEMORY[0x277D84F90]);
      CommonConfigFields.init(dict:)(v31, &v118);
      if (v17)
      {

        v32 = a16[3];
        v110 = a16[2];
        v111 = v32;
        v112 = a16[4];
        *&v113 = *(a16 + 10);
        v33 = a16[1];
        v108 = *a16;
        v109 = v33;
        sub_223973A10(&v108);
        return;
      }

      LOWORD(v25) = v118;
      LOBYTE(v34) = v119;
      v26 = v120;
      v27 = v121;
      v28 = v122;
      v29 = v123;
      v30 = v124;
      a8 = v80;
      a2 = v81;
      a4 = v77;
      a6 = v78;
      v21 = v75;
      v22 = v74;
    }

    else
    {
      v34 = (v25 >> 16) & 1;
    }

    v70 = v25;
    *&v76 = v27;
    *(&v76 + 1) = v28;
    *&v79 = v29;
    *(&v79 + 1) = v30;
    v125 = v34;
    *&v83 = a2;
    *(&v83 + 1) = v128;
    *&v84 = a4;
    *(&v84 + 1) = a5;
    v72 = a5;
    v73 = a7;
    *&v85 = a6;
    *(&v85 + 1) = a7;
    *&v86 = a8;
    *(&v86 + 1) = a10;
    *&v87 = a11;
    BYTE8(v87) = v21;
    BYTE9(v87) = v22;
    v88 = a14;
    v43 = a16[1];
    *&v89[8] = *a16;
    *&v89[24] = v43;
    v44 = a16[2];
    v45 = a16[3];
    v46 = a16[4];
    v47 = *(a16 + 10);
    *v89 = a15;
    *&v89[88] = v47;
    *&v89[72] = v46;
    *&v89[56] = v45;
    *&v89[40] = v44;
    LOWORD(v90) = v25;
    v71 = v125;
    BYTE2(v90) = v125;
    *(&v90 + 1) = v26;
    *&v91 = v27;
    *(&v91 + 1) = v28;
    *&v92 = v29;
    *(&v92 + 1) = v30;
    v93 = v83;
    v94 = v84;
    v97 = v87;
    v98 = a14;
    v95 = v85;
    v96 = v86;
    v101 = *&v89[32];
    v102 = *&v89[48];
    v99 = *v89;
    v100 = *&v89[16];
    v106 = v91;
    v107 = v92;
    v104 = *&v89[80];
    v105 = v90;
    v103 = *&v89[64];
    v48 = a8;
    v49 = a6;
    v50 = a4;
    v51 = v21;
    v52 = v22;
    nullsub_1(&v93);
    v53 = v106;
    a9[12] = v105;
    a9[13] = v53;
    a9[14] = v107;
    v54 = v102;
    a9[8] = v101;
    a9[9] = v54;
    v55 = v104;
    a9[10] = v103;
    a9[11] = v55;
    v56 = v98;
    a9[4] = v97;
    a9[5] = v56;
    v57 = v100;
    a9[6] = v99;
    a9[7] = v57;
    v58 = v94;
    *a9 = v93;
    a9[1] = v58;
    v59 = v96;
    a9[2] = v95;
    a9[3] = v59;
    v60 = a16[3];
    *&v114[40] = a16[2];
    *&v114[56] = v60;
    *&v114[72] = a16[4];
    v61 = a16[1];
    *&v114[8] = *a16;
    *&v108 = v81;
    *(&v108 + 1) = v128;
    *&v109 = v50;
    *(&v109 + 1) = v72;
    *&v110 = v49;
    *(&v110 + 1) = v73;
    *&v111 = v48;
    *(&v111 + 1) = a10;
    *&v112 = a11;
    BYTE8(v112) = v51;
    BYTE9(v112) = v52;
    v113 = a14;
    v62 = *(a16 + 10);
    *v114 = a15;
    *&v114[88] = v62;
    *&v114[24] = v61;
    LOWORD(v115) = v70;
    BYTE2(v115) = v71;
    *(&v115 + 1) = v26;
    v116 = v76;
    v117 = v79;
    sub_22398AC40(&v83, v82);
    sub_2239AF100(&v108);
  }

  else
  {
    v35 = *a17;
    sub_223973A10(v126);

    sub_223973A64(v35, v26);

    if (qword_2813366C0 != -1)
    {
      swift_once();
    }

    v36 = sub_2239B3048();
    __swift_project_value_buffer(v36, qword_2813366C8);
    v37 = v128;

    v38 = sub_2239B3028();
    v39 = sub_2239B34C8();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v108 = v41;
      *v40 = 136380675;
      v42 = sub_223973B2C(v81, v37, &v108);

      *(v40 + 4) = v42;
      _os_log_impl(&dword_22395C000, v38, v39, "Instance disabled. { radarTitle=%{private}s }", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
      MEMORY[0x223DEF1D0](v41, -1, -1);
      MEMORY[0x223DEF1D0](v40, -1, -1);
    }

    else
    {
    }

    sub_2239AF130(&v108);
    v63 = v116;
    a9[12] = v115;
    a9[13] = v63;
    a9[14] = v117;
    v64 = *&v114[48];
    a9[8] = *&v114[32];
    a9[9] = v64;
    v65 = *&v114[80];
    a9[10] = *&v114[64];
    a9[11] = v65;
    v66 = v113;
    a9[4] = v112;
    a9[5] = v66;
    v67 = *&v114[16];
    a9[6] = *v114;
    a9[7] = v67;
    v68 = v109;
    *a9 = v108;
    a9[1] = v68;
    v69 = v111;
    a9[2] = v110;
    a9[3] = v69;
  }
}

uint64_t TTRConfig.radarTitle.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TTRConfig.radarProblemDescription.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t TTRConfig.radarComponentName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t TTRConfig.radarComponentVersion.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t TTRConfig.displayReason.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t TTRConfig.diagnosticRulesConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  v4 = *(v1 + 168);
  v10 = *(v1 + 152);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 184);
  v6 = *(v1 + 120);
  v9[0] = *(v1 + 104);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_223969B50(v9, v8);
}

uint64_t TTRConfig.commonFields.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 194);
  v3 = *(v1 + 200);
  v4 = *(v1 + 208);
  v5 = *(v1 + 216);
  v6 = *(v1 + 224);
  v7 = *(v1 + 232);
  *a1 = *(v1 + 192);
  *(a1 + 2) = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
}

uint64_t sub_2239AE0B8(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000013;
    v6 = 0x5279616C70736964;
    if (a1 != 8)
    {
      v6 = 0x79654B7261646172;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000014;
    if (a1 == 5)
    {
      v7 = 0xD000000000000018;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x64656C62616E65;
    v2 = 0xD000000000000012;
    v3 = 0xD000000000000017;
    if (a1 != 3)
    {
      v2 = 0xD000000000000015;
    }

    if (a1 != 2)
    {
      v3 = v2;
    }

    if (a1)
    {
      v1 = 0x7469547261646172;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_2239AE220(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_2239AE0B8(*a1);
  v5 = v4;
  if (v3 == sub_2239AE0B8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2239B3958();
  }

  return v8 & 1;
}

uint64_t sub_2239AE2A8()
{
  v1 = *v0;
  sub_2239B3A18();
  sub_2239AE0B8(v1);
  sub_2239B3228();

  return sub_2239B3A78();
}

uint64_t sub_2239AE30C()
{
  sub_2239AE0B8(*v0);
  sub_2239B3228();
}

uint64_t sub_2239AE360()
{
  v1 = *v0;
  sub_2239B3A18();
  sub_2239AE0B8(v1);
  sub_2239B3228();

  return sub_2239B3A78();
}

uint64_t sub_2239AE3C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2239AF49C();
  *a2 = result;
  return result;
}

uint64_t sub_2239AE3F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2239AE0B8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t TTRConfig.RadarReproducibility.rawValue.getter()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x7254746E64694469;
  if (v1 != 5)
  {
    v3 = 0x696C707041746F6ELL;
  }

  v4 = 0x796C65726172;
  if (v1 != 3)
  {
    v4 = 0x656C62616E75;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x737961776C61;
  if (v1 != 1)
  {
    v5 = 0x656D6974656D6F73;
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

uint64_t sub_2239AE530()
{
  *v0;
  *v0;
  *v0;
  *v0;
  sub_2239B3228();
}

void sub_2239AE658(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736302;
  v5 = 0xE900000000000079;
  v6 = 0x7254746E64694469;
  if (v2 != 5)
  {
    v6 = 0x696C707041746F6ELL;
    v5 = 0xED0000656C626163;
  }

  v7 = 0x796C65726172;
  if (v2 != 3)
  {
    v7 = 0x656C62616E75;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE600000000000000;
  }

  v8 = 0xE600000000000000;
  v9 = 0x737961776C61;
  if (v2 != 1)
  {
    v9 = 0x656D6974656D6F73;
    v8 = 0xE900000000000073;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t TTRConfig.RadarClassification.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v7 = 1701736302;
    v8 = 0xD000000000000011;
    v9 = 0x7265776F70;
    if (v1 != 3)
    {
      v9 = 0x616D726F66726570;
    }

    if (v1 != 2)
    {
      v8 = v9;
    }

    if (*v0)
    {
      v7 = 0x7974697275636573;
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v2 = 0x4E65727574616566;
    v3 = 0x6D65636E61686E65;
    if (v1 != 9)
    {
      v3 = 1802723700;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0x6C69626173556975;
    v5 = 0x4273756F69726573;
    if (v1 != 6)
    {
      v5 = 0x677542726568746FLL;
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2239AE8D4()
{
  v1 = *v0;
  sub_2239B3A18();
  sub_2239AC714();
  return sub_2239B3A78();
}

uint64_t sub_2239AE924()
{
  v1 = *v0;
  sub_2239B3A18();
  sub_2239AC714();
  return sub_2239B3A78();
}

unint64_t sub_2239AE974@<X0>(unint64_t *a1@<X8>)
{
  result = TTRConfig.RadarClassification.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2239AE9AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD40, &qword_2239B8C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2239B46E0;
  *(inited + 32) = sub_2239ACE0C(&unk_2836FC9A0);
  *(inited + 40) = sub_2239ACE0C(&unk_2836FB1F0);
  *(inited + 48) = sub_2239ACE0C(&unk_2836FB220);
  v1 = _s18AudioAnalyticsBase6ConfigC12collapseKeysyShySSGSaySY_pSS8RawValueSYRts_XPGd_tFZ_0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD48, &unk_2239B4D50);
  result = swift_arrayDestroy();
  qword_2813382B8 = v1;
  return result;
}

uint64_t sub_2239AEA90@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 194);
  v3 = *(v1 + 200);
  v4 = *(v1 + 208);
  v5 = *(v1 + 216);
  v6 = *(v1 + 224);
  v7 = *(v1 + 232);
  *a1 = *(v1 + 192);
  *(a1 + 2) = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
}

uint64_t sub_2239AEB14(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_2239AEB78(a1, sub_2239AECE8, sub_2239AECE8);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2239AEB78(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v9 = v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v13 = swift_slowAlloc();
  v14 = sub_2239AF078(v13, v7, v5, a3);
  result = MEMORY[0x223DEF1D0](v13, -1, -1);
  if (!v3)
  {
    result = v14;
  }

LABEL_4:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2239AECE8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v20 = result;
  v26 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    sub_22395E644(*(a3 + 56) + 32 * v13, v25);
    v23[0] = v15;
    v23[1] = v16;
    sub_22395E644(v25, &v24);
    sub_22397F788(v23, &v21);
    swift_bridgeObjectRetain_n();
    v17 = sub_2239B37B8();

    sub_223975758(v23, &qword_27D09FD38, "n_");
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);

    if (v17 <= 8)
    {
      *(v20 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
        return sub_22399088C(v20, a2, v26, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_22399088C(v20, a2, v26, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2239AEEB0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v20 = result;
  v26 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    sub_22395E644(*(a3 + 56) + 32 * v13, v25);
    v23[0] = v15;
    v23[1] = v16;
    sub_22395E644(v25, &v24);
    sub_22397F788(v23, &v21);
    swift_bridgeObjectRetain_n();
    v17 = sub_2239B37B8();

    sub_223975758(v23, &qword_27D09FD38, "n_");
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);

    if (v17 <= 9)
    {
      *(v20 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
        return sub_22399088C(v20, a2, v26, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_22399088C(v20, a2, v26, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_2239AF078(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

double sub_2239AF130(_OWORD *a1)
{
  result = 0.0;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_2239AF15C()
{
  result = qword_27D0A05B8;
  if (!qword_27D0A05B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A05B8);
  }

  return result;
}

unint64_t sub_2239AF1E4()
{
  result = qword_27D0A05D0;
  if (!qword_27D0A05D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A05D0);
  }

  return result;
}

uint64_t sub_2239AF268(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
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

uint64_t sub_2239AF2B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRConfig.RadarClassification(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRConfig.RadarClassification(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2239AF49C()
{
  v0 = sub_2239B37B8();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2239AF4E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!*(a1 + 16) || (v9 = sub_223981500(0xAu), (v10 & 1) == 0) || (sub_22395E644(*(a1 + 56) + 32 * v9, &v96), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD28, &unk_2239B72D0), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_2813366C0 == -1)
    {
LABEL_19:
      v25 = sub_2239B3048();
      __swift_project_value_buffer(v25, qword_2813366C8);
      v26 = sub_2239B3028();
      v27 = sub_2239B34C8();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_22395C000, v26, v27, "No ttr section found, or malformed.", v28, 2u);
        MEMORY[0x223DEF1D0](v28, -1, -1);
      }

      return 0;
    }

LABEL_46:
    swift_once();
    goto LABEL_19;
  }

  v11 = *&v95[0];
  v12 = *(*&v95[0] + 16);
  if (v12)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v111 = v12 - 1;
    do
    {
      v15 = v13;
      while (1)
      {
        if (v15 >= *(v11 + 16))
        {
          __break(1u);
          goto LABEL_45;
        }

        v16 = *(v11 + 32 + 8 * v15);

        sub_2239ACF20(v17, a4 & 1, &v96);
        if (v4)
        {
        }

        v95[12] = v108;
        v95[13] = v109;
        v95[14] = v110;
        v95[8] = v104;
        v95[9] = v105;
        v95[10] = v106;
        v95[11] = v107;
        v95[4] = v100;
        v95[5] = v101;
        v95[6] = v102;
        v95[7] = v103;
        v95[0] = v96;
        v95[1] = v97;
        v95[2] = v98;
        v95[3] = v99;
        if (sub_2239AFB18(v95) != 1)
        {
          break;
        }

        ++v15;
        v92 = v108;
        v93 = v109;
        v94 = v110;
        v88 = v104;
        v89 = v105;
        v90 = v106;
        v91 = v107;
        v84 = v100;
        v85 = v101;
        v86 = v102;
        v87 = v103;
        v80 = v96;
        v81 = v97;
        v82 = v98;
        v83 = v99;
        sub_223975758(&v80, &qword_27D0A05E8, &qword_2239B8C78);
        if (v12 == v15)
        {
          goto LABEL_25;
        }
      }

      v92 = v108;
      v93 = v109;
      v94 = v110;
      v88 = v104;
      v89 = v105;
      v90 = v106;
      v91 = v107;
      v84 = v100;
      v85 = v101;
      v86 = v102;
      v87 = v103;
      v80 = v96;
      v81 = v97;
      v82 = v98;
      v83 = v99;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_223982134(0, *(v14 + 2) + 1, 1, v14);
      }

      v19 = *(v14 + 2);
      v18 = *(v14 + 3);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v63 = v19 + 1;
        v22 = v14;
        v23 = *(v14 + 2);
        v24 = sub_223982134((v18 > 1), v19 + 1, 1, v22);
        v19 = v23;
        v20 = v63;
        v14 = v24;
      }

      v13 = v15 + 1;
      v69 = v84;
      v70 = v85;
      v67 = v82;
      v68 = v83;
      v73 = v88;
      v74 = v89;
      v71 = v86;
      v72 = v87;
      v78 = v93;
      v79 = v94;
      v76 = v91;
      v77 = v92;
      v75 = v90;
      v64 = v80;
      v66 = v81;
      *(v14 + 2) = v20;
      v21 = &v14[240 * v19];
      *(v21 + 3) = v66;
      *(v21 + 4) = v67;
      *(v21 + 2) = v64;
      *(v21 + 7) = v70;
      *(v21 + 8) = v71;
      *(v21 + 5) = v68;
      *(v21 + 6) = v69;
      *(v21 + 11) = v74;
      *(v21 + 12) = v75;
      *(v21 + 9) = v72;
      *(v21 + 10) = v73;
      *(v21 + 15) = v78;
      *(v21 + 16) = v79;
      *(v21 + 13) = v76;
      *(v21 + 14) = v77;
    }

    while (v111 != v15);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

LABEL_25:

  v30 = *(v14 + 2);
  if (v30)
  {
    v31 = 0;
    v111 = MEMORY[0x277D84F90];
LABEL_27:
    v32 = 240 * v31 + 32;
    v33 = v31;
    while (v33 < *(v14 + 2))
    {
      v34 = *&v14[v32];
      v35 = *&v14[v32 + 32];
      v97 = *&v14[v32 + 16];
      v98 = v35;
      v96 = v34;
      v36 = *&v14[v32 + 48];
      v37 = *&v14[v32 + 64];
      v38 = *&v14[v32 + 96];
      v101 = *&v14[v32 + 80];
      v102 = v38;
      v99 = v36;
      v100 = v37;
      v39 = *&v14[v32 + 112];
      v40 = *&v14[v32 + 128];
      v41 = *&v14[v32 + 160];
      v105 = *&v14[v32 + 144];
      v106 = v41;
      v103 = v39;
      v104 = v40;
      v42 = *&v14[v32 + 176];
      v43 = *&v14[v32 + 192];
      v44 = *&v14[v32 + 224];
      v109 = *&v14[v32 + 208];
      v110 = v44;
      v107 = v42;
      v108 = v43;
      *(&v81 + 1) = &type metadata for TTRConfig;
      *&v82 = &protocol witness table for TTRConfig;
      *&v80 = swift_allocObject();
      memmove((v80 + 16), &v14[v32], 0xF0uLL);
      sub_22398AC40(&v96, v95);
      sub_22398AC40(&v96, v95);
      v45 = sub_223984164(&v80, a2, a3);
      if (v4)
      {

        sub_2239AF100(&v96);
        __swift_destroy_boxed_opaque_existential_0Tm(&v80);
      }

      v46 = v45;
      __swift_destroy_boxed_opaque_existential_0Tm(&v80);
      if (v46)
      {
        v47 = v111;
        v65 = v111;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_223982970(0, *(v47 + 16) + 1, 1);
          v47 = v65;
        }

        v49 = *(v47 + 16);
        v48 = *(v47 + 24);
        v50 = v49 + 1;
        if (v49 >= v48 >> 1)
        {
          v111 = v49 + 1;
          sub_223982970((v48 > 1), v49 + 1, 1);
          v50 = v111;
          v47 = v65;
        }

        v31 = v33 + 1;
        *(v47 + 16) = v50;
        v111 = v47;
        v51 = (v47 + 240 * v49);
        v52 = v96;
        v53 = v98;
        v51[3] = v97;
        v51[4] = v53;
        v51[2] = v52;
        v54 = v99;
        v55 = v100;
        v56 = v102;
        v51[7] = v101;
        v51[8] = v56;
        v51[5] = v54;
        v51[6] = v55;
        v57 = v103;
        v58 = v104;
        v59 = v106;
        v51[11] = v105;
        v51[12] = v59;
        v51[9] = v57;
        v51[10] = v58;
        v60 = v107;
        v61 = v108;
        v62 = v110;
        v51[15] = v109;
        v51[16] = v62;
        v51[13] = v60;
        v51[14] = v61;
        if (v30 - 1 != v33)
        {
          goto LABEL_27;
        }

        goto LABEL_41;
      }

      ++v33;
      sub_2239AF100(&v96);
      v32 += 240;
      if (v30 == v33)
      {
        goto LABEL_41;
      }
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v111 = MEMORY[0x277D84F90];
LABEL_41:

  result = v111;
  if (!*(v111 + 16))
  {

    return 0;
  }

  return result;
}

uint64_t sub_2239AFB18(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for TTRConfig.TTRKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRConfig.TTRKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2239AFCB0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2239AFD08()
{
  result = qword_27D0A0600;
  if (!qword_27D0A0600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0600);
  }

  return result;
}

id static Utilities.generateError(with:code:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0610, &qword_2239B8D78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2239B5BE0;
  v7 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_2239B3188();
  *(inited + 40) = v8;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  v9 = sub_223974EC4(inited);
  swift_setDeallocating();
  sub_2239B1EF0(inited + 32);
  sub_2239AFF30(v9);

  v10 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v11 = sub_2239B3158();
  v12 = sub_2239B30C8();

  v13 = [v10 initWithDomain:v11 code:a3 userInfo:v12];

  return v13;
}

unint64_t sub_2239AFF30(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD70, &qword_2239B4D78);
    v2 = sub_2239B3798();
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
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v25 = *v19;
        v26 = v19[1];

        swift_dynamicCast();
        sub_2239685CC(&v27, v29);
        sub_2239685CC(v29, v30);
        sub_2239685CC(v30, &v28);
        result = sub_22396236C(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0Tm(v12);
          result = sub_2239685CC(&v28, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = sub_2239685CC(&v28, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_2239B01AC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D0A0620, &qword_2239B8D88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2239B46E0;
  v3 = *MEMORY[0x277CCA180];
  *(inited + 32) = *MEMORY[0x277CCA180];
  v4 = MEMORY[0x277D83B88];
  v5 = MEMORY[0x277CCA160];
  *(inited + 40) = a1;
  v6 = *v5;
  *(inited + 64) = v4;
  *(inited + 72) = v6;
  v7 = MEMORY[0x277D837D0];
  *(inited + 80) = 0x656C69626F6DLL;
  *(inited + 88) = 0xE600000000000000;
  v8 = *MEMORY[0x277CCA120];
  *(inited + 104) = v7;
  *(inited + 112) = v8;
  *(inited + 144) = v7;
  *(inited + 120) = 0x656C69626F6DLL;
  *(inited + 128) = 0xE600000000000000;
  v9 = v3;
  v10 = v6;
  v11 = v8;
  v12 = sub_223974FD8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD08, &qword_2239B8D90);
  swift_arrayDestroy();
  return v12;
}

uint64_t sub_2239B02B4()
{
  v0 = sub_2239B3518();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2239B3508();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_2239B30B8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_223976FB0();
  sub_2239B3098();
  v10[1] = MEMORY[0x277D84F90];
  sub_223976FFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FED8, &qword_2239B52E0);
  sub_223977054();
  sub_2239B3608();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v0);
  result = sub_2239B3548();
  qword_27D0A0608 = result;
  return result;
}

id static Utilities.reportingServerQueue.getter()
{
  if (qword_27D09FCA0 != -1)
  {
    swift_once();
  }

  v1 = qword_27D0A0608;

  return v1;
}

uint64_t sub_2239B0518()
{
  v0 = sub_2239B2F28();
  __swift_allocate_value_buffer(v0, qword_281336750);
  __swift_project_value_buffer(v0, qword_281336750);
  return sub_2239B2EC8();
}

uint64_t sub_2239B064C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2239B2F28();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v6, a2);
  __swift_project_value_buffer(v3, a2);
  if (qword_281336748 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v3, qword_281336750);
  (*(v4 + 16))(v8, v9, v3);
  sub_2239B2EE8();
  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_2239B07C8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2239B2F28();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_2239B0860(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F6870656C6574 && a2 == 0xE900000000000079 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 2;
  }

  else if (a1 == 1769105779 && a2 == 0xE400000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 1;
  }

  else if (a1 == 0x736D72616C61 && a2 == 0xE600000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 4;
  }

  else if (a1 == 0x73636974706168 && a2 == 0xE700000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 3;
  }

  else if (a1 == 0x636972656E6567 && a2 == 0xE700000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v5 = 0;
    v4 = 0;
  }

  else if (a1 == 0x6F6C41646E617473 && a2 == 0xEA0000000000656ELL || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 5;
  }

  else if (a1 == 0x747541646E756F73 && a2 == 0xEF6769666E6F436FLL || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 6;
  }

  else if (a1 == 0x6D726F46676E6F6CLL && a2 == 0xED00006F69647541 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002239BB150 == a2 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 8;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002239BB130 == a2 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 9;
  }

  else if (a1 == 0x737472656C61 && a2 == 0xE600000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 10;
  }

  else if (a1 == 1953719668 && a2 == 0xE400000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 11;
  }

  else if (a1 == 0x6567617355697061 && a2 == 0xE800000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 12;
  }

  else if (a1 == 0x6F536D6574737973 && a2 == 0xEC00000073646E75 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 13;
  }

  else if (a1 == 0x616E41646E756F73 && a2 == 0xED0000736973796CLL || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 14;
  }

  else if (a1 == 0x657275636573 && a2 == 0xE600000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 15;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {
    v4 = 0;
    v5 = 0xFFFF;
  }

  else
  {
    v7 = sub_2239B3958();
    v4 = v7 ^ 1;
    if (v7)
    {
      v5 = 0xFFFF;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5 & 0xFFFEFFFF | ((v4 & 1) << 16);
}

uint64_t sub_2239B0D94(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x636972656E6547 && a2 == 0xE700000000000000;
  if (v3 || (sub_2239B3958() & 1) != 0)
  {
    v5 = 0;
    v6 = 0;
  }

  else if (a1 == 0x7472617453 && a2 == 0xE500000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 1;
  }

  else if (a1 == 1886352467 && a2 == 0xE400000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 2;
  }

  else if (a1 == 0x7075746553 && a2 == 0xE500000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 5;
  }

  else if (a1 == 0x726F727245 && a2 == 0xE500000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 6;
  }

  else if (a1 == 0x7465446575737349 && a2 == 0xED0000726F746365 || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 7;
  }

  else if (a1 == 0x6E776F6E6B6E55 && a2 == 0xE700000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 0xFFFF;
  }

  else if (a1 == 0x6574617669746341 && a2 == 0xE800000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 3;
  }

  else if (a1 == 0x6176697463616544 && a2 == 0xEA00000000006574 || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 4;
  }

  else if (a1 == 0x766972444944494DLL && a2 == 0xEA00000000007265 || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 10;
  }

  else if (a1 == 0x676F4C7265776F50 && a2 == 0xE800000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 8;
  }

  else if (a1 == 0x6F4C79726F6D654DLL && a2 == 0xE900000000000067 || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 19;
  }

  else if (a1 == 0x696E556F69647541 && a2 == 0xEE00656761735574 || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 9;
  }

  else if (a1 == 0x7972616D6D7553 && a2 == 0xE700000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 11;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002239BB230 == a2 || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 12;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002239BB210 == a2 || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 14;
  }

  else if (a1 == 0x7078456F69647541 && a2 == 0xED0000657275736FLL || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 13;
  }

  else if (a1 == 0x694B726F736E6553 && a2 == 0xE900000000000074 || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 15;
  }

  else if (a1 == 0x656C706D6953 && a2 == 0xE600000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 16;
  }

  else if (a1 == 0x6172676F74736948 && a2 == 0xE90000000000006DLL || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 17;
  }

  else if (a1 == 0x6574617453 && a2 == 0xE500000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 18;
  }

  else if (a1 == 0x6E49646F50726941 && a2 == 0xEA00000000006F66 || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 20;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002239BB1F0 == a2 || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 22;
  }

  else if (a1 == 0x73676E6974746553 && a2 == 0xEE00657461647055)
  {
    v6 = 0;
    v5 = 23;
  }

  else
  {
    v8 = sub_2239B3958();
    v6 = v8 ^ 1;
    if (v8)
    {
      v5 = 23;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5 & 0xFFFEFFFF | ((v6 & 1) << 16);
}

unint64_t sub_2239B14AC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x636972656E6547 && a2 == 0xE700000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 1;
  }

  else if (a1 == 0x64726F636552 && a2 == 0xE600000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 2;
  }

  else if (a1 == 0x6B63616279616C50 && a2 == 0xE800000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002239BB250 == a2 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 6;
  }

  else if (a1 == 0x7475706E49 && a2 == 0xE500000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 3;
  }

  else if (a1 == 0x74757074754FLL && a2 == 0xE600000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 5;
  }

  else if (a1 == 20297 && a2 == 0xE200000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 7;
  }

  else if (a1 == 0x7075746553 && a2 == 0xE500000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 8;
  }

  else if (a1 == 0x6552746E65696C43 && a2 == 0xED00007473657571 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 9;
  }

  else if (a1 == 0x6168436574756F52 && a2 == 0xEB0000000065676ELL || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 10;
  }

  else if (a1 == 0x726F727245 && a2 == 0xE500000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 11;
  }

  else if (a1 == 0x74726F7065524F49 && a2 == 0xEB00000000676E69 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 12;
  }

  else if (a1 == 0x616D726F66726550 && a2 == 0xEB0000000065636ELL || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 13;
  }

  else if (a1 == 0x656D756C6F56 && a2 == 0xE600000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 14;
  }

  else if (a1 == 0x65736E61707845 && a2 == 0xE700000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 15;
  }

  else if (a1 == 0x6F72506563696F56 && a2 == 0xEE00726F73736563 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 18;
  }

  else if (a1 == 0x48676E6972616548 && a2 == 0xED000068746C6165 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 16;
  }

  else if (a1 == 0x73646F50726941 && a2 == 0xE700000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 17;
  }

  else if (a1 == 0x6C616974617053 && a2 == 0xE700000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 20;
  }

  else if (a1 == 0x556F5478694D5056 && a2 == 0xED00006B6E696C70 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 21;
  }

  else if (a1 == 0x6863746157 && a2 == 0xE500000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 22;
  }

  else if (a1 == 0x636E657265666E49 && a2 == 0xE900000000000065 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 23;
  }

  else if (a1 == 0x6E6172546C6C6143 && a2 == 0xEF6E6F6974616C73 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 24;
  }

  else if (a1 == 0x756F527261456E49 && a2 == 0xEC000000676E6974 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 25;
  }

  else if (a1 == 0x6E776F6E6B6E55 && a2 == 0xE700000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 0xFFFFFFFFLL;
  }

  else if (a1 == 1229211981 && a2 == 0xE400000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 0x4000000;
  }

  else if (a1 == 0x6E6F6973736553 && a2 == 0xE700000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 0x8000000;
  }

  else if (a1 == 5264196 && a2 == 0xE300000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 0x10000000;
  }

  else if (a1 == 4997448 && a2 == 0xE300000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 0x20000000;
  }

  else if (a1 == 0x676E6974756F52 && a2 == 0xE700000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 0x40000000;
  }

  else if (a1 == 0x786F626C6F6F54 && a2 == 0xE700000000000000)
  {
    v4 = 0;
    v5 = 0x80000000;
  }

  else
  {
    v7 = sub_2239B3958();
    v4 = v7 ^ 1;
    v5 = 0x80000000;
    if ((v7 & 1) == 0)
    {
      v5 = 0;
    }
  }

  return v5 | ((v4 & 1) << 32);
}

unint64_t sub_2239B1DD8(uint64_t a1, uint64_t a2)
{
  sub_22396C8B8();
  if (sub_2239B35E8())
  {
    v4 = sub_2239B35C8();
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = (v4 + 40);
      do
      {
        v8 = sub_2239B14AC(*(v7 - 1), *v7);
        if ((v8 & 0x100000000) != 0)
        {
          v9 = 0;
        }

        else
        {
          v9 = v8;
        }

        v6 |= v9;
        v7 += 2;
        --v5;
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }

    LOBYTE(v11) = v6 == 0;
  }

  else
  {
    v10 = sub_2239B14AC(a1, a2);
    v6 = v10;
    v11 = HIDWORD(v10) & 1;
  }

  return v6 | (v11 << 32);
}

uint64_t sub_2239B1EF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0618, &qword_2239B8D80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ValueWithChangeIndicator.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  v6 = *(type metadata accessor for ValueWithChangeIndicator() + 36);
  (*(*(a2 - 8) + 56))(&a3[v6], 1, 1, a2);
  v7 = sub_2239B3598();
  v8 = *(*(v7 - 8) + 40);

  return v8(&a3[v6], a1, v7);
}

uint64_t ValueWithChangeIndicator.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = *(a1 + 16);
  v6 = sub_2239B3598();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

uint64_t sub_2239B20BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = sub_2239B3598();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(v11 + 16))(&v14 - v9, a1);
  v12 = type metadata accessor for ValueWithChangeIndicator();
  return ValueWithChangeIndicator.value.setter(v10, v12);
}

uint64_t ValueWithChangeIndicator.value.setter(_BYTE *a1, uint64_t a2)
{
  v49 = a1;
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v41 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2239B3598();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v44 = *(TupleTypeMetadata2 - 8);
  v8 = *(v44 + 64);
  v9 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v11 = &v39 - v10;
  v12 = *(v7 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v9);
  v43 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v39 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v39 - v19;
  v42 = a2;
  v21 = *(a2 + 36);
  v22 = v12[2];
  v22(&v39 - v19, &v52[v21], v7);
  v45 = v4;
  v23 = *(v4 + 48);
  v51 = v3;
  v48 = v23;
  LODWORD(v3) = v23(v20, 1, v3);
  v50 = v12;
  v47 = v12[1];
  v47(v20, v7);
  v24 = v3 == 1;
  v25 = v49;
  if (!v24)
  {
    v40 = v21;
    v22(v18, &v52[v21], v7);
    v26 = TupleTypeMetadata2;
    v27 = *(TupleTypeMetadata2 + 48);
    v22(v11, v25, v7);
    v22(&v11[v27], v18, v7);
    if (v48(v11, 1, v51) == 1)
    {
      v28 = v47;
      v47(v18, v7);
      if (v48(&v11[v27], 1, v51) == 1)
      {
        v28(v11, v7);
        v21 = v40;
        return (v50[5])(&v52[v21], v25, v7);
      }
    }

    else
    {
      v39 = v18;
      v29 = v43;
      v22(v43, v11, v7);
      if (v48(&v11[v27], 1, v51) != 1)
      {
        v31 = v29;
        v32 = v45;
        v33 = v41;
        v34 = v51;
        (*(v45 + 32))(v41, &v11[v27], v51);
        v35 = *(v42 + 24);
        v36 = sub_2239B3138();
        v37 = *(v32 + 8);
        v37(v33, v34);
        v38 = v47;
        v47(v39, v7);
        v37(v31, v34);
        v38(v11, v7);
        v21 = v40;
        if (v36)
        {
          return (v50[5])(&v52[v21], v25, v7);
        }

        goto LABEL_8;
      }

      v47(v39, v7);
      (*(v45 + 8))(v29, v51);
    }

    (*(v44 + 8))(v11, v26);
    v21 = v40;
LABEL_8:
    *v52 = 1;
  }

  return (v50[5])(&v52[v21], v25, v7);
}

void (*ValueWithChangeIndicator.value.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v9 = sub_2239B3598();
  v7[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v7[3] = v10;
  v12 = *(v10 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v7[5] = v13;
  v14 = *(a2 + 36);
  (*(v11 + 16))();
  return sub_2239B27BC;
}

void sub_2239B27BC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))((*a1)[4], v4, v5);
    ValueWithChangeIndicator.value.setter(v3, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v9 = v2[1];
    ValueWithChangeIndicator.value.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_2239B28AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_2239B3598();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2239B292C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 1) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *&a1[v11];
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *&a1[v11];
      if (!*&a1[v11])
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      if (v6 > 0xFE)
      {
        v20 = (*(v4 + 48))(&a1[v8 + 1] & ~v8);
        if (v20 >= 2)
        {
          return v20 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *a1;
        v18 = v17 >= 2;
        v19 = (v17 + 2147483646) & 0x7FFFFFFF;
        if (v18)
        {
          return (v19 + 1);
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v13 = a1[v11];
  if (!a1[v11])
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (a1[2] << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_2239B2AEC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 1) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
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
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_60:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v9 > 0xFE)
  {
    v21 = (&a1[v11 + 1] & ~v11);
    if (v9 >= a2)
    {
      v25 = *(v7 + 56);
      v26 = a2 + 1;
      v27 = &a1[v11 + 1] & ~v11;

      v25(v27, v26);
    }

    else
    {
      if (v12 <= 3)
      {
        v22 = ~(-1 << (8 * v12));
      }

      else
      {
        v22 = -1;
      }

      if (v12)
      {
        v23 = v22 & (~v9 + a2);
        if (v12 <= 3)
        {
          v24 = v12;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v12);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else
  {
    *a1 = a2 + 1;
  }
}