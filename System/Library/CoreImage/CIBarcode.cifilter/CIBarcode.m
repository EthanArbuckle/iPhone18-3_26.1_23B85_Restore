uint64_t sub_CF0()
{
  if (qword_211C0 != -1)
  {
    sub_EE14();
  }

  return qword_211B8;
}

uint64_t sub_D58()
{
  if (qword_211D0 != -1)
  {
    sub_EE28();
  }

  return qword_211C8;
}

double sub_23E4(uint64_t a1)
{
  result = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  return result;
}

void sub_40C0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_40E0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

__n128 sub_4108@<Q0>(uint64_t a1@<X0>, int *a2@<X1>, __n128 *a3@<X8>)
{
  v3 = (a1 + 20 * *a2);
  result = v3[2];
  *a3 = result;
  a3[1].n128_u32[0] = v3[3].n128_u32[0];
  return result;
}

void sub_415C(int a1@<W0>, uint64_t a2@<X8>)
{
  *(a2 + 112) = 0;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  if ((a1 - 41) > 0xFFFFFFD7)
  {
    switch(a1)
    {
      case 2:
        *a2 = 0x600000002;
        *(a2 + 8) = 18;
        v3 = xmmword_14840;
        v4 = xmmword_14850;
        v5 = xmmword_14860;
        v6 = xmmword_14870;
        v7 = xmmword_14880;
        break;
      case 3:
        *a2 = 0x600000003;
        *(a2 + 8) = 22;
        v3 = xmmword_14800;
        v4 = xmmword_14810;
        v5 = xmmword_146F0;
        v6 = xmmword_14820;
        v7 = xmmword_14830;
        break;
      case 4:
        *a2 = 0x600000004;
        *(a2 + 8) = 22;
        v3 = xmmword_147B0;
        v4 = xmmword_147C0;
        v5 = xmmword_147D0;
        v6 = xmmword_147E0;
        v7 = xmmword_147F0;
        break;
      case 5:
        *a2 = 0x600000005;
        *(a2 + 8) = 30;
        v3 = xmmword_14770;
        v4 = xmmword_14780;
        v5 = xmmword_146F0;
        v6 = xmmword_14790;
        v7 = xmmword_147A0;
        break;
      case 6:
        *a2 = 0x600000006;
        *(a2 + 8) = 34;
        v3 = xmmword_14720;
        v4 = xmmword_14730;
        v5 = xmmword_14740;
        v6 = xmmword_14750;
        v7 = xmmword_14760;
        break;
      case 7:
        *a2 = xmmword_146C0;
        v3 = xmmword_146D0;
        v4 = xmmword_146E0;
        v5 = xmmword_146F0;
        v6 = xmmword_14700;
        v7 = xmmword_14710;
        break;
      case 8:
        *a2 = xmmword_14660;
        v3 = xmmword_14670;
        v4 = xmmword_14680;
        v5 = xmmword_14690;
        v6 = xmmword_146A0;
        v7 = xmmword_146B0;
        break;
      case 9:
        *a2 = xmmword_14600;
        v3 = xmmword_14610;
        v4 = xmmword_14620;
        v5 = xmmword_14630;
        v6 = xmmword_14640;
        v7 = xmmword_14650;
        break;
      case 10:
        *a2 = xmmword_145A0;
        v3 = xmmword_145B0;
        v4 = xmmword_145C0;
        v5 = xmmword_145D0;
        v6 = xmmword_145E0;
        v7 = xmmword_145F0;
        break;
      case 11:
        *a2 = xmmword_14540;
        v3 = xmmword_14550;
        v4 = xmmword_14560;
        v5 = xmmword_14570;
        v6 = xmmword_14580;
        v7 = xmmword_14590;
        break;
      case 12:
        *a2 = xmmword_144E0;
        v3 = xmmword_144F0;
        v4 = xmmword_14500;
        v5 = xmmword_14510;
        v6 = xmmword_14520;
        v7 = xmmword_14530;
        break;
      case 13:
        *a2 = xmmword_14480;
        v3 = xmmword_14490;
        v4 = xmmword_144A0;
        v5 = xmmword_144B0;
        v6 = xmmword_144C0;
        v7 = xmmword_144D0;
        break;
      case 14:
        *a2 = xmmword_14420;
        *(a2 + 16) = 66;
        v3 = xmmword_14430;
        v4 = xmmword_14440;
        v5 = xmmword_14450;
        v6 = xmmword_14460;
        v7 = xmmword_14470;
        break;
      case 15:
        *a2 = xmmword_143C0;
        *(a2 + 16) = 70;
        v3 = xmmword_143D0;
        v4 = xmmword_143E0;
        v5 = xmmword_143F0;
        v6 = xmmword_14400;
        v7 = xmmword_14410;
        break;
      case 16:
        *a2 = xmmword_14360;
        *(a2 + 16) = 74;
        v3 = xmmword_14370;
        v4 = xmmword_14380;
        v5 = xmmword_14390;
        v6 = xmmword_143A0;
        v7 = xmmword_143B0;
        break;
      case 17:
        *a2 = xmmword_14300;
        *(a2 + 16) = 78;
        v3 = xmmword_14310;
        v4 = xmmword_14320;
        v5 = xmmword_14330;
        v6 = xmmword_14340;
        v7 = xmmword_14350;
        break;
      case 18:
        *a2 = xmmword_142A0;
        *(a2 + 16) = 82;
        v3 = xmmword_142B0;
        v4 = xmmword_142C0;
        v5 = xmmword_142D0;
        v6 = xmmword_142E0;
        v7 = xmmword_142F0;
        break;
      case 19:
        *a2 = xmmword_14240;
        *(a2 + 16) = 86;
        v3 = xmmword_14250;
        v4 = xmmword_14260;
        v5 = xmmword_14270;
        v6 = xmmword_14280;
        v7 = xmmword_14290;
        break;
      case 20:
        *a2 = xmmword_141E0;
        *(a2 + 16) = 90;
        v3 = xmmword_141F0;
        v4 = xmmword_14200;
        v5 = xmmword_14210;
        v6 = xmmword_14220;
        v7 = xmmword_14230;
        break;
      case 21:
        *a2 = xmmword_14190;
        *(a2 + 16) = 0x5E00000048;
        v3 = xmmword_141A0;
        v4 = xmmword_13FF0;
        v5 = xmmword_141B0;
        v6 = xmmword_141C0;
        v7 = xmmword_141D0;
        break;
      case 22:
        *a2 = xmmword_14130;
        *(a2 + 16) = 0x620000004ALL;
        v3 = xmmword_14140;
        v4 = xmmword_14150;
        v5 = xmmword_14160;
        v6 = xmmword_14170;
        v7 = xmmword_14180;
        break;
      case 23:
        *a2 = xmmword_140E0;
        *(a2 + 16) = 0x660000004ALL;
        v3 = xmmword_140F0;
        v4 = xmmword_13B70;
        v5 = xmmword_14100;
        v6 = xmmword_14110;
        v7 = xmmword_14120;
        break;
      case 24:
        *a2 = xmmword_14080;
        *(a2 + 16) = 0x6A00000050;
        v3 = xmmword_14090;
        v4 = xmmword_140A0;
        v5 = xmmword_140B0;
        v6 = xmmword_140C0;
        v7 = xmmword_140D0;
        break;
      case 25:
        *a2 = xmmword_14030;
        *(a2 + 16) = 0x6E00000054;
        v3 = xmmword_14040;
        v4 = xmmword_13B00;
        v5 = xmmword_14050;
        v6 = xmmword_14060;
        v7 = xmmword_14070;
        break;
      case 26:
        *a2 = xmmword_13FD0;
        *(a2 + 16) = 0x7200000056;
        v3 = xmmword_13FE0;
        v4 = xmmword_13FF0;
        v5 = xmmword_14000;
        v6 = xmmword_14010;
        v7 = xmmword_14020;
        break;
      case 27:
        *a2 = xmmword_13F70;
        *(a2 + 16) = 0x760000005ALL;
        v3 = xmmword_13F80;
        v4 = xmmword_13F90;
        v5 = xmmword_13FA0;
        v6 = xmmword_13FB0;
        v7 = xmmword_13FC0;
        break;
      case 28:
        *a2 = xmmword_13F10;
        *(a2 + 16) = 0x620000004ALL;
        v3 = xmmword_13F20;
        v4 = xmmword_13F30;
        v5 = xmmword_13F40;
        v6 = xmmword_13F50;
        v7 = xmmword_13F60;
        break;
      case 29:
        *a2 = xmmword_13EB0;
        *(a2 + 16) = 0x660000004ELL;
        *(a2 + 24) = 126;
        v3 = xmmword_13EC0;
        v4 = xmmword_13ED0;
        v5 = xmmword_13EE0;
        v6 = xmmword_13EF0;
        v7 = xmmword_13F00;
        break;
      case 30:
        *a2 = xmmword_13E50;
        *(a2 + 16) = 0x680000004ELL;
        *(a2 + 24) = 130;
        v3 = xmmword_13E60;
        v4 = xmmword_13E70;
        v5 = xmmword_13E80;
        v6 = xmmword_13E90;
        v7 = xmmword_13EA0;
        break;
      case 31:
        *a2 = xmmword_13DF0;
        *(a2 + 16) = 0x6C00000052;
        *(a2 + 24) = 134;
        v3 = xmmword_13E00;
        v4 = xmmword_13E10;
        v5 = xmmword_13E20;
        v6 = xmmword_13E30;
        v7 = xmmword_13E40;
        break;
      case 32:
        *a2 = xmmword_13D90;
        *(a2 + 16) = 0x7000000056;
        *(a2 + 24) = 138;
        v3 = xmmword_13DA0;
        v4 = xmmword_13DB0;
        v5 = xmmword_13DC0;
        v6 = xmmword_13DD0;
        v7 = xmmword_13DE0;
        break;
      case 33:
        *a2 = xmmword_13D40;
        *(a2 + 16) = 0x7200000056;
        *(a2 + 24) = 142;
        v3 = xmmword_13D50;
        v4 = xmmword_13D60;
        v5 = xmmword_13D70;
        v6 = xmmword_13D20;
        v7 = xmmword_13D80;
        break;
      case 34:
        *a2 = xmmword_13CE0;
        *(a2 + 16) = 0x760000005ALL;
        *(a2 + 24) = 146;
        v3 = xmmword_13CF0;
        v4 = xmmword_13D00;
        v5 = xmmword_13D10;
        v6 = xmmword_13D20;
        v7 = xmmword_13D30;
        break;
      case 35:
        *a2 = xmmword_13C80;
        *(a2 + 16) = xmmword_13C90;
        v3 = xmmword_13CA0;
        v4 = xmmword_13B70;
        v5 = xmmword_13CB0;
        v6 = xmmword_13CC0;
        v7 = xmmword_13CD0;
        break;
      case 36:
        *a2 = xmmword_13C20;
        *(a2 + 16) = xmmword_13C30;
        v3 = xmmword_13C40;
        v4 = xmmword_13BE0;
        v5 = xmmword_13C50;
        v6 = xmmword_13C60;
        v7 = xmmword_13C70;
        break;
      case 37:
        *a2 = xmmword_13BB0;
        *(a2 + 16) = xmmword_13BC0;
        v3 = xmmword_13BD0;
        v4 = xmmword_13BE0;
        v5 = xmmword_13BF0;
        v6 = xmmword_13C00;
        v7 = xmmword_13C10;
        break;
      case 38:
        *a2 = xmmword_13B40;
        *(a2 + 16) = xmmword_13B50;
        v3 = xmmword_13B60;
        v4 = xmmword_13B70;
        v5 = xmmword_13B80;
        v6 = xmmword_13B90;
        v7 = xmmword_13BA0;
        break;
      case 39:
        *a2 = xmmword_13AD0;
        *(a2 + 16) = xmmword_13AE0;
        v3 = xmmword_13AF0;
        v4 = xmmword_13B00;
        v5 = xmmword_13B10;
        v6 = xmmword_13B20;
        v7 = xmmword_13B30;
        break;
      case 40:
        *a2 = xmmword_13A60;
        *(a2 + 16) = xmmword_13A70;
        v3 = xmmword_13A80;
        v4 = xmmword_13A90;
        v5 = xmmword_13AA0;
        v6 = xmmword_13AB0;
        v7 = xmmword_13AC0;
        break;
      default:
        *a2 = 1;
        v3 = xmmword_14890;
        v4 = xmmword_148A0;
        v5 = xmmword_148B0;
        v6 = xmmword_148C0;
        v7 = xmmword_148D0;
        break;
    }

    v8 = 0;
    v9 = 0;
    *(a2 + 32) = v7;
    *(a2 + 48) = v6;
    *(a2 + 64) = v5;
    *(a2 + 80) = v4;
    v10 = 1;
    *(a2 + 96) = v3;
    do
    {
      v11 = v10;
      v9 += (*(a2 + 36 + 8 * v8 + 4) + v7) * *(a2 + 36 + 8 * v8);
      v8 = 1;
      v10 = 0;
    }

    while ((v11 & 1) != 0);
    *(a2 + 112) = v9;
  }

  else
  {
    v2 = sub_D58();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_F084(v2);
    }
  }
}

id sub_4CF0(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  while (a1)
  {
    v3 = *(a1 + 8);
    if (v3 > 6)
    {
      v4 = 0;
    }

    else
    {
      v4 = off_1C610[v3];
    }

    v27 = 0;
    v26 = 0;
    v5 = &v27;
    v24 = &v27;
    v25 = xmmword_14960;
    sub_5168(a1);
    v6 = v26 - 8 * v25;
    sub_5254(&v24);
    v23 = 0;
    v21 = &v27;
    v22 = xmmword_14960;
    v7 = malloc_type_malloc(0x20uLL, 0x100004077774924uLL);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 4;
    do
    {
      if (!v9)
      {
        v10 <<= 8;
        if (v11)
        {
          --v11;
          v12 = *v5++;
          v10 |= v12;
          v9 = 8;
        }

        else
        {
          v9 = 8;
          v11 = -1;
        }
      }

      if ((v10 >> --v9))
      {
        v13 = 49;
      }

      else
      {
        v13 = 48;
      }

      v7[v8++] = v13;
    }

    while (v8 != 32);
    v14 = [[NSString alloc] initWithBytesNoCopy:v7 length:32 encoding:1 freeWhenDone:1];
    v15 = [v14 substringToIndex:v6 + 32];

    sub_5254(&v21);
    v16 = [v15 UTF8String];
    v17 = (v4)(a1 + 12);
    v18 = [NSString stringWithFormat:@"%-15s %@", v16, v17];
    [v2 addObject:v18];

    a1 = *a1;
  }

  v19 = [v2 componentsJoinedByString:@"\n"];

  return v19;
}

id sub_4F20(uint64_t a1)
{
  v2 = sub_6BD8(*a1);
  v3 = [NSString stringWithFormat:@"%@ '%c'", v2, *(a1 + 4)];

  return v3;
}

id sub_4FE4(unsigned int *a1)
{
  v2 = sub_6BD8(*a1);
  v3 = sub_6BD8(a1[1]);
  v4 = [NSString stringWithFormat:@"Latch %@->%@", v2, v3];

  return v4;
}

id sub_5074(unsigned int *a1)
{
  v2 = sub_6BD8(*a1);
  v3 = sub_6BD8(a1[1]);
  v4 = [NSString stringWithFormat:@"Shift %@->%@", v2, v3];

  return v4;
}

const __CFString *sub_5104(unsigned int *a1)
{
  v1 = *a1;
  if (v1 > 5)
  {
    return @"<unknown two char punc>";
  }

  else
  {
    return *(&off_1C648 + v1);
  }
}

uint64_t sub_5168(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 2)
  {
    if (v1 <= 4)
    {
      if (v1 == 3)
      {
        p_vtable = (&OBJC_METACLASS___CIQRCodeGenerator + 24);
        v3 = sub_6CF0;
      }

      else
      {
        p_vtable = (&OBJC_METACLASS___CIQRCodeGenerator + 24);
        v3 = sub_6D38;
      }

      goto LABEL_17;
    }

    if (v1 == 5)
    {
      p_vtable = (&OBJC_METACLASS___CIQRCodeGenerator + 24);
      v3 = sub_6D70;
      goto LABEL_17;
    }

    if (v1 == 6)
    {
      p_vtable = (&OBJC_METACLASS___CIQRCodeGenerator + 24);
      v3 = sub_6D84;
      goto LABEL_17;
    }

    return (off_211D8)(a1 + 12);
  }

  if (!v1)
  {
    p_vtable = (&OBJC_METACLASS___CIQRCodeGenerator + 24);
    v3 = nullsub_2;
    goto LABEL_17;
  }

  if (v1 == 1)
  {
    p_vtable = &OBJC_METACLASS___CIQRCodeGenerator.vtable;
    v3 = sub_6C00;
    goto LABEL_17;
  }

  if (v1 != 2)
  {
    return (off_211D8)(a1 + 12);
  }

  p_vtable = (&OBJC_METACLASS___CIQRCodeGenerator + 24);
  v3 = sub_6CDC;
LABEL_17:
  p_vtable[59] = v3;
  return (v3)(a1 + 12);
}

uint64_t sub_5254(uint64_t result)
{
  v1 = result;
  for (i = *(result + 24); i; i = *(v1 + 24))
  {
    result = sub_6EB8(v1, 0, -i & 7);
  }

  if (*(v1 + 8))
  {
    do
    {
      v3 = (*v1)++;
      *v3 = 0;
      v4 = *(v1 + 8) - 1;
      *(v1 + 8) = v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_52C0(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v2 = 0;
  do
  {
    v9 = 0;
    v8 = 0;
    v6 = &v9;
    v7 = xmmword_14960;
    sub_5168(v1);
    v3 = v7;
    v4 = v8;
    sub_5254(&v6);
    v2 = v2 - 8 * v3 + v4 + 32;
    v1 = *v1;
  }

  while (v1);
  return v2;
}

CGImageRef sub_5360(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v238 = v3;
  if (!v3)
  {
    sub_F0C8();
  }

  if (qword_212E8 != -1)
  {
    sub_F160();
  }

  v236 = v4;
  if (![v3 length])
  {
    v227 = @"The message must contain at least one character.";
    goto LABEL_325;
  }

  if ([v3 length] >= 0x9C01)
  {
    v227 = @"The message is too long for an Aztec barcode.";
LABEL_325:
    sub_6B00(v227, v5, v6, v7, v8, v9, v10, v11, decode);
  }

  v12 = !sub_7018(v4, @"AztecOptionMessageCodeWordCount", dword_14DEC) || !sub_7018(v4, @"AztecOptionLayers", dword_14DF8) || sub_7018(v4, @"AztecOptionUseCompactStyle", dword_14E04) == -1;
  if (sub_7018(v4, @"AztecOptionMessageDataIsDataCodeWords", dword_14E04) == 0 || v12)
  {
    v13 = v3;
    v247 = [v13 bytes];
    v14 = [v13 length];
    v15 = sub_70DC(6 * v14);
    v270 = xmmword_14E10;
    v271 = 4294967297000000;
    memset(v272 + 8, 0, 40);
    v16 = sub_7148(v15);
    v240 = v13;
    *(v16 + 8) = 0;
    *&v272[0] = v16;
    v266 = 0u;
    v267 = 0u;
    v265 = 0u;
    if (v14 > 0)
    {
      v17 = 0;
      v257 = 0;
      v244 = v14 & 0x7FFFFFFF;
      while (1)
      {
        v18 = 0;
        v19 = dword_14B70;
        do
        {
          v20 = 0;
          while (1)
          {
            v21 = v19[v20] + *(&v270 + v18);
            if (v21 < *(&v270 + v20))
            {
              *(&v270 + v20) = v21;
              v22 = *(v272 + v18);
              v23 = sub_7148(v15);
              *v23 = v22;
              *(v23 + 8) = 3;
              *(v23 + 12) = v18;
              *(v23 + 16) = v20;
              *(v272 + v20) = v23;
              if (v20 == 5)
              {
                break;
              }
            }

            if (++v20 == 6)
            {
              goto LABEL_21;
            }
          }

          v24 = sub_7148(v15);
          *v24 = v23;
          *(v24 + 8) = 6;
          *(v24 + 12) = 0;
          *(&v272[2] + 1) = v24;
          v257 = dword_14E28[v18];
LABEL_21:
          ++v18;
          v19 += 6;
        }

        while (v18 != 5);
        for (i = 0; i != 6; ++i)
        {
          v26 = dword_14B70[6 * v257 + i] + HIDWORD(v271);
          if (v26 < *(&v270 + i))
          {
            *(&v270 + i) = v26;
            v27 = *(&v272[2] + 1);
            v28 = sub_7148(v15);
            *v28 = v27;
            *(v28 + 8) = 0x500000003;
            *(v28 + 16) = v257;
            v29 = sub_7148(v15);
            *v29 = v28;
            *(v29 + 8) = 3;
            *(v29 + 12) = v257;
            *(v29 + 16) = i;
            *(v272 + i) = v29;
          }
        }

        v266 = 0u;
        v267 = 0u;
        v265 = 0u;
        memset_pattern16(&__b, &unk_14990, 0x18uLL);
        v30 = 0;
        v250 = &v247[v17];
        v253 = v17;
        v31 = v247[v17];
        v255 = *(&v272[2] + 1);
        v32 = dword_14D20;
        do
        {
          if ((off_1C540[v30])(v31))
          {
            v33 = dword_14E40[v30];
            v34 = v33 + *(&v270 + v30);
            if (v34 < *(&__b + v30))
            {
              *(&__b + v30) = v34;
              if (v30 == 5)
              {
                if (*(v255 + 8) == 2)
                {
                  v35 = *(v255 + 13);
                  if (((v35 + 1) & 0x100) != 0)
                  {
                    v36 = -1;
                  }

                  else
                  {
                    v36 = v35 + 1;
                  }
                }

                else
                {
                  v36 = 1;
                }

                v39 = sub_7148(v15);
                *v39 = v255;
                *(v39 + 8) = 2;
                *(v39 + 12) = v31;
                *(v39 + 13) = v36;
                *(&v267 + 1) = v39;
              }

              else
              {
                v37 = *(v272 + v30);
                v38 = sub_7148(v15);
                *v38 = v37;
                *(v38 + 8) = 1;
                *(v38 + 12) = v30;
                *(v38 + 16) = v31;
                *(&v265 + v30) = v38;
              }
            }

            v40 = 0;
            v41 = v32;
            do
            {
              if (v30 != v40)
              {
                v42 = *(&v270 + v40) + v33 + *v41;
                if (v42 < *(&__b + v40))
                {
                  *(&__b + v40) = v42;
                  v43 = *(v272 + v40);
                  v44 = sub_7148(v15);
                  *v44 = v43;
                  *(v44 + 8) = 4;
                  *(v44 + 12) = v40;
                  *(v44 + 16) = v30;
                  v45 = sub_7148(v15);
                  *v45 = v44;
                  *(v45 + 8) = 1;
                  *(v45 + 12) = v30;
                  *(v45 + 16) = v31;
                  *(&v265 + v40) = v45;
                }
              }

              ++v40;
              v41 += 6;
            }

            while (v40 != 6);
          }

          ++v30;
          ++v32;
        }

        while (v30 != 6);
        if (!v253)
        {
          goto LABEL_60;
        }

        v46 = HIDWORD(v270);
        if (SHIDWORD(v270) >= SHIDWORD(__b))
        {
          goto LABEL_60;
        }

        v47 = *(v250 - 1);
        v48 = *v250;
        if (v47 == 13 && v48 == 10)
        {
          break;
        }

        if (v47 == 46 && v48 == 32)
        {
          v49 = 3;
          goto LABEL_57;
        }

        if (v47 == 44 && v48 == 32)
        {
          v49 = 4;
          goto LABEL_57;
        }

        if (v47 == 58 && v48 == 32)
        {
          v49 = 5;
          goto LABEL_57;
        }

LABEL_60:
        if (*(*(&v267 + 1) + 13) == 32)
        {
          HIDWORD(v269) += 11;
        }

        v17 = v253 + 1;
        v270 = __b;
        v271 = v269;
        v272[0] = v265;
        v272[1] = v266;
        v272[2] = v267;
        if (v253 + 1 == v244)
        {
          goto LABEL_63;
        }
      }

      v49 = 2;
LABEL_57:
      if (*(*(&v272[1] + 1) + 8) == 1 && *(*(&v272[1] + 1) + 16) == v47)
      {
        v50 = **(&v272[1] + 1);
        v51 = sub_7148(v15);
        *v51 = v50;
        *(v51 + 8) = 5;
        *(v51 + 12) = v49;
        *(&v266 + 1) = v51;
        HIDWORD(__b) = v46;
      }

      goto LABEL_60;
    }

LABEL_63:
    v52 = 0;
    v53 = 0;
    v54 = 0x7FFFFFFF;
    do
    {
      if (*(&v270 + v52) < v54)
      {
        v53 = v52;
        v54 = *(&v270 + v52);
      }

      ++v52;
    }

    while (v52 != 6);
    v55 = *(v272 + v53);
    if (v55)
    {
      v56 = 0;
      v57 = 0;
      v58 = v240;
      v59 = v15;
      do
      {
        v60 = v55;
        v61 = *(v55 + 8);
        if (v61 == 6)
        {
          *(v60 + 12) = v57;
          v57 = 0;
        }

        else if (v61 == 2)
        {
          ++v57;
        }

        v55 = *v60;
        *v60 = v56;
        v56 = v60;
      }

      while (v55);
    }

    else
    {
      v60 = 0;
      v58 = v240;
      v59 = v15;
    }

    if (byte_212F0)
    {
      LOBYTE(v77) = byte_212F0 - 2;
    }

    else
    {
      v78 = +[NSUserDefaults standardUserDefaults];
      v77 = [v78 objectForKey:@"AztecDebugSequence"];

      if (v77)
      {
        LODWORD(v77) = [v78 BOOLForKey:@"AztecDebugSequence"];
        v79 = [v78 volatileDomainForName:NSArgumentDomain];
        v80 = [v79 objectForKey:@"AztecDebugSequence"];

        byte_212F0 = v77 | 2;
        if (v80)
        {
          v81 = @"NO";
          if (v77)
          {
            v81 = @"YES";
          }

          NSLog(@"%@=%@", @"AztecDebugSequence", v81);
        }
      }

      else
      {
        byte_212F0 = 2;
      }
    }

    if (v77)
    {
      sub_4CF0(v60);
      shouldInterpolate = decode = v54;
      NSLog(@"len:%ld seq:\n%@");
    }

    v87 = v54 + 7;
    if (v54 < -7)
    {
      v87 = v54 + 14;
    }

    v88 = [NSMutableData dataWithLength:v87 >> 3];
    v261 = [v88 mutableBytes];
    v262 = [v88 length];
    v263 = 0;
    for (j = 0; v60; v60 = *v60)
    {
      sub_5168(v60);
    }

    sub_5254(&v261);
    do
    {
      free(*v59);
      v89 = v59[3];
      free(v59);
      v59 = v89;
    }

    while (v89);

    v90 = v236;
    v91 = sub_7018(v90, @"AztecOptionUseCompactStyle", dword_14E04);
    v63 = (v91 - 1) < 0xFFFFFFFE;
    v245 = sub_7018(v90, @"AztecOptionLayers", dword_14DF8);
    v92 = sub_7018(v90, @"AztecOptionErrorCorrectionPercentage", dword_14E58) / 100.0;
    if (v245)
    {
      if (v91 == -1)
      {
        LODWORD(v63) = v245 < 4;
      }

      else
      {
        LODWORD(v63) = (v91 - 1) < 0xFFFFFFFE;
      }

      if (v245 >= 5 && v63)
      {
        if (v91 != -1)
        {
          goto LABEL_130;
        }

        v93 = v245;
        v94 = v54;
        v95 = 1.0 - v92;
LABEL_141:
        if (v95 * dword_14E78[v93] + -3.0 >= v94)
        {
          LOBYTE(v63) = 0;
          goto LABEL_144;
        }

LABEL_130:
        if (sub_7018(v90, @"AztecOptionLayers", dword_14DF8))
        {
          sub_6B00(@"The message doesn't fit into the specified number of layers, %d.", v101, v102, v103, v104, v105, v106, v107, v245);
        }

        v108 = @"The message is too large for an Aztec barcode.";
        goto LABEL_132;
      }

      v109 = &unk_14E64;
      if (!v63)
      {
        v109 = dword_14E78;
      }

      v94 = v54;
      v95 = 1.0 - v92;
      v110 = v95 * v109[v245] + -3.0;
      if (v110 < v54 && v63 && v91 == -1)
      {
        v93 = v245;
        goto LABEL_141;
      }

      if (v110 < v94)
      {
        goto LABEL_130;
      }
    }

    else
    {
      v96 = 1.0 - v92;
      v97 = &unk_14E7C;
      v98 = &unk_14E68;
      v99 = 1;
      while (1)
      {
        if (v91 == -1)
        {
          LOBYTE(v63) = v99 < 4;
        }

        if (v99 < 5 || !v63)
        {
          v100 = (v63 ? v98 : v97);
          if (v96 * *v100 + -3.0 >= v54)
          {
            break;
          }
        }

        ++v99;
        v97 += 4;
        v98 += 4;
        if (v99 == 33)
        {
          v245 = 33;
          goto LABEL_130;
        }
      }

      LODWORD(v245) = v99;
    }

LABEL_144:

    if (v245 >= 3)
    {
      if (v245 >= 9)
      {
        if (v245 >= 0x17)
        {
          v111 = 12;
        }

        else
        {
          v111 = 10;
        }
      }

      else
      {
        v111 = 8;
      }
    }

    else
    {
      v111 = 6;
    }

    v256 = v111;
    v112 = &unk_149CC;
    if (v63)
    {
      v112 = &unk_149B8;
    }

    v113 = v112[v245];
    v114 = [NSMutableData dataWithLength:4 * v113];
    v115 = v88;
    v116 = v114;
    v117 = v116;
    v251 = [v116 mutableBytes];
    v118 = [v116 length];
    *(&v272[1] + 1) = 0;
    v119 = v115;
    v120 = [v115 bytes];
    v121 = [v115 length];
    v122 = v118 >> 2;
    v123 = v256;
    v260 = ~(-1 << v256);
    *&v272[0] = v120;
    *(&v272[0] + 1) = v121;
    *&v272[1] = 0;
    DWORD2(v272[1]) = 0;
    v241 = v118 >> 2;
    if (v54 >= v256)
    {
      v258 = v63;
      v126 = 0;
      LOBYTE(v124) = 0;
      v127 = v122 & ~(v122 >> 31);
      v234 = @"The message does not fit into the space allocated in the barcode.";
      do
      {
        v128 = sub_6F20(v272, v123);
        v129 = 1 << (v256 - 1);
        if ((v124 & 1) == 0)
        {
          v129 = 0;
        }

        v130 = v128 | v129;
        v131 = v130 == 1;
        if (!v130)
        {
          v131 = 0;
        }

        v132 = v130 == 0;
        if (v130)
        {
          v133 = v130;
        }

        else
        {
          v133 = 1;
        }

        if (v130 == -2 - (-1 << v256))
        {
          v131 = 0;
          v132 = 1;
          v133 = -2 - (-1 << v256);
        }

        v124 = v130 == v260 || v131;
        v125 = v130 != v260 && v132;
        if (v130 == v260)
        {
          v134 = -2 - (-1 << v256);
        }

        else
        {
          v134 = v133;
        }

        if (v127 == v126)
        {
          goto LABEL_133;
        }

        v54 -= v123;
        v251[v126] = v134;
        v64 = v126 + 1;
        if (v124 | v125)
        {
          v123 = v256 - 1;
        }

        else
        {
          v123 = v256;
        }

        ++v126;
      }

      while (v54 >= v123);
      LOBYTE(v63) = v258;
      v123 = v256;
      if (v124)
      {
LABEL_182:
        v135 = sub_6F20(v272, v54);
        if (v64 < v241)
        {
          v136 = v123 - (v124 | v125);
          if ((v136 - v54) <= 0x1F)
          {
            v137 = ~(-1 << (v123 - (v124 | v125) - v54));
          }

          else
          {
            v137 = -1;
          }

          v138 = v136 - v54;
          if (!v138)
          {
            v137 = 0;
          }

          v139 = v135 << v138;
          v140 = 1 << (v256 - 1);
          if (!v124)
          {
            v140 = 0;
          }

          v141 = v137 | v140 | v139;
          if (v141 == v260)
          {
            v141 &= ~1u;
          }

          v251[v64++] = v141;
          goto LABEL_193;
        }

        v108 = @"The message does not fit into the space allocated in the barcode.";
LABEL_132:
        v234 = v108;
LABEL_133:
        sub_6B00(v234, v101, v102, v103, v104, v105, v106, v107, decode);
      }
    }

    else
    {
      v124 = 0;
      v125 = 0;
      v64 = 0;
    }

    if (!v125 && !v54)
    {
LABEL_193:
      v82 = v116;

      v75 = v113;
      goto LABEL_194;
    }

    goto LABEL_182;
  }

  v62 = sub_7018(v4, @"AztecOptionUseCompactStyle", dword_14E04);
  LOBYTE(v63) = v62 != 0;
  v64 = sub_7018(v4, @"AztecOptionMessageCodeWordCount", dword_14DEC);
  v65 = sub_7018(v4, @"AztecOptionLayers", dword_14DF8);
  v73 = v65;
  v74 = &unk_149CC;
  if (v62)
  {
    v74 = &unk_149B8;
  }

  v75 = v74[v65];
  if (v65 >= 3)
  {
    if (v65 >= 9)
    {
      if (v65 >= 0x17)
      {
        v76 = 12;
      }

      else
      {
        v76 = 10;
      }
    }

    else
    {
      v76 = 8;
    }
  }

  else
  {
    v76 = 6;
  }

  if (v64 >= v75)
  {
    v228 = @"Number of message codewords must be less than the number of symbol codewords.";
    goto LABEL_328;
  }

  if (v76 * v64 > (8 * [v238 length]))
  {
    v228 = @"Insufficient message data supplied for Aztec symbol with explicit geometry";
LABEL_328:
    sub_6B00(v228, v66, v67, v68, v69, v70, v71, v72, decode);
  }

  v82 = [NSMutableData dataWithLength:4 * v75];
  v83 = v238;
  LODWORD(v84) = v64;
  if ((8 * [v83 length]) / v76 <= v64)
  {
    LODWORD(v84) = (8 * [v83 length]) / v76;
  }

  *&v272[0] = [v83 bytes];
  *(&v272[0] + 1) = [v83 length];
  v272[1] = 0uLL;
  v85 = [v82 mutableBytes];
  LODWORD(v245) = v73;
  if (v84 >= 1)
  {
    v86 = v85;
    v84 = v84;
    do
    {
      *v86++ = sub_6F20(v272, v76);
      --v84;
    }

    while (v84);
  }

  v256 = v76;

LABEL_194:
  v142 = v82;
  v143 = [v82 mutableBytes];
  if (v245 >= 0x17)
  {
    v144 = 4096;
  }

  else
  {
    v144 = 1024;
  }

  if (v245 >= 0x17)
  {
    v145 = 4201;
  }

  else
  {
    v145 = 1033;
  }

  if (v245 >= 9)
  {
    v146 = v144;
  }

  else
  {
    v146 = 256;
  }

  if (v245 >= 9)
  {
    v147 = v145;
  }

  else
  {
    v147 = 301;
  }

  if (v245 >= 3)
  {
    v148 = v146;
  }

  else
  {
    v148 = 64;
  }

  if (v245 >= 3)
  {
    v149 = v147;
  }

  else
  {
    v149 = 67;
  }

  sub_7254(v143, v64, v75 - v64, v148, v149);
  v150 = v245 - 1;
  v151 = v64 - 1;
  if (v63)
  {
    v152 = &v265 + 4;
    LODWORD(v265) = (v151 >> 4) | (4 * v150);
    v153 = 5;
    v154 = 2;
  }

  else
  {
    v152 = &v265 + 12;
    LODWORD(v265) = v150 >> 1;
    DWORD1(v265) = (8 * (v150 & 1)) | (v151 >> 8);
    DWORD2(v265) = v151 >> 4;
    v153 = 6;
    v154 = 4;
  }

  *v152 = v151 & 0xF;
  sub_7254(&v265, v154, v153, 0x10uLL, 19);
  v237 = v82;
  v155 = v237;
  v252 = [v237 bytes];
  v156 = [v237 length];
  v157 = &unk_14F10;
  if (v63)
  {
    v157 = &unk_14EFC;
  }

  v158 = v157[v245];
  v232 = v158 + 4;
  v233 = 4 * (v158 + 4);
  v231 = v233 * (v158 + 4);
  v235 = malloc_type_malloc(v231, 0x100004077774924uLL);
  *&v272[0] = _NSConcreteStackBlock;
  *(&v272[0] + 1) = 3221225472;
  *&v272[1] = sub_7750;
  *(&v272[1] + 1) = &unk_1C5F0;
  *&v272[2] = v235;
  DWORD2(v272[2]) = v158 / 2 + 2;
  HIDWORD(v272[2]) = 4 * (v158 + 4);
  v159 = objc_retainBlock(v272);
  v160 = 0;
  v254 = v156 >> 2;
  v261 = 0x100000000;
  v262 = vadd_s32(vdup_n_s32(v158), 0x300000002);
  do
  {
    memset(&v235[*(&v261 + v160) * 4 * (v158 + 4)], 255, 4 * (v158 + 4));
    v160 += 4;
  }

  while (v160 != 16);
  v161 = 0;
  v162 = vdupq_n_s64(v232 - 1);
  v163 = xmmword_14970;
  v164 = xmmword_14980;
  v165 = vdupq_n_s64(4uLL);
  do
  {
    if (v158 >= -3)
    {
      v166 = &v235[4 * *(&v261 + v161)];
      v167 = (v232 + 3) & 0x1FFFFFFFCLL;
      v168 = xmmword_14980;
      v169 = xmmword_14970;
      do
      {
        v170 = vmovn_s64(vcgeq_u64(v162, v168));
        if (vuzp1_s16(v170, v162.n128_u64[0]).u8[0])
        {
          *v166 = -1;
        }

        if (vuzp1_s16(v170, *&v162).i8[2])
        {
          *&v166[4 * v158 + 16] = -1;
        }

        if (vuzp1_s16(*&v162, vmovn_s64(vcgeq_u64(*&v162, *&v169))).i32[1])
        {
          *&v166[8 * v158 + 32] = -1;
          *&v166[12 * v158 + 48] = -1;
        }

        v169 = vaddq_s64(v169, v165);
        v168 = vaddq_s64(v168, v165);
        v166 += 16 * v158 + 64;
        v167 -= 4;
      }

      while (v167);
    }

    ++v161;
  }

  while (v161 != 4);
  if (v63)
  {
    v171 = 11;
  }

  else
  {
    v171 = 15;
  }

  v242 = v171;
  v172 = v171 - 2;
  v173 = (v171 - 2) >> 1;
  v174 = -((v171 - 2) >> 1);
  v175 = v174;
  do
  {
    if (v175 >= 0)
    {
      v176 = v175;
    }

    else
    {
      v176 = -v175;
    }

    v177 = v172;
    v178 = -(v172 >> 1);
    do
    {
      if (v178 >= 0)
      {
        v179 = v178;
      }

      else
      {
        v179 = -v178;
      }

      if (v176 > v179)
      {
        LOBYTE(v179) = v176;
      }

      (*(v159 + 2))(v159, v175, v178, (v179 & 1) == 0, v162, v163, v164, v165);
      v178 = (v178 + 1);
      --v177;
    }

    while (v177);
    v213 = v175 == v173;
    v175 = (v175 + 1);
  }

  while (!v213);
  v180 = ~v173;
  v181 = v173 | 1;
  (*(v159 + 2))(v159, v180, v181, 1);
  (*(v159 + 2))(v159, v174, v181, 1);
  (*(v159 + 2))(v159, v180, v173, 1);
  (*(v159 + 2))(v159, v173, v181, 0);
  (*(v159 + 2))(v159, v181, v181, 1);
  (*(v159 + 2))(v159, v181, v173, 1);
  (*(v159 + 2))(v159, v181, v174, 1);
  (*(v159 + 2))(v159, v181, v180, 0);
  (*(v159 + 2))(v159, v173, v180, 0);
  (*(v159 + 2))(v159, v174, v180, 0);
  (*(v159 + 2))(v159, v180, v180, 0);
  (*(v159 + 2))(v159, v180, v174, 0);
  v259 = v63;
  if (!v63)
  {
    v182 = v158 + 31;
    if (v158 >= 0)
    {
      v182 = v158;
    }

    if (v158 >= -31)
    {
      v183 = v182 >> 5;
      v184 = -(v182 >> 5);
      v185 = v158 / 2;
      if (v183 >= 0)
      {
        v186 = v183;
      }

      else
      {
        v186 = -v183;
      }

      v248 = v158 / -2;
      if (v158 / 2 <= v158 / -2)
      {
        v185 = v158 / -2;
      }

      v187 = v185 + 1;
      v188 = v184;
      do
      {
        if (v158 >= -1)
        {
          v189 = v248;
          do
          {
            (*(v159 + 2))(v159, (16 * v188), v189, (v189 & 1) == 0);
            v189 = (v189 + 1);
          }

          while (v187 != v189);
        }

        v213 = v188++ == v186;
      }

      while (!v213);
      v182 = v158 / 2;
      if (v158 / 2 <= v248)
      {
        v182 = v158 / -2;
      }

      v190 = v182 + 1;
      do
      {
        if (v158 >= -1)
        {
          v191 = v248;
          do
          {
            (*(v159 + 2))(v159, v191, (16 * v184), (v191 & 1) == 0);
            v191 = (v191 + 1);
          }

          while (v190 != v191);
        }

        v213 = v184++ == v186;
      }

      while (!v213);
    }
  }

  v192 = 0;
  v193 = 0;
  do
  {
    v194 = 0;
    v195 = &dword_14F94[2 * v192];
    do
    {
      if (v194 >= 2 && v194 <= v242 - 3 && (v259 || v180 && v181))
      {
        (*(v159 + 2))(v159, v180, v181, (*(&v265 + v193 / 4) >> ((v182 & 0xFC) - v193 + 3)) & 1);
        ++v193;
      }

      v180 = (*v195 + v180);
      v181 = (v195[1] + v181);
      ++v194;
    }

    while (v242 - 1 != v194);
    ++v192;
  }

  while (v192 != 4);
  v196 = v259;
  if (v245 >= 1)
  {
    v197 = 0;
    v239 = (v245 + 1);
    v198 = 1;
    do
    {
      v199 = 0;
      LODWORD(v200) = 0;
      LODWORD(v201) = 0;
      v202 = &unk_14F10;
      if (v196)
      {
        v202 = &unk_14EFC;
      }

      v243 = v198;
      v203 = v202[v198];
      v204 = (v203 / 2);
      v205 = 1 - v204;
      if (!v196 && ((1 - v204) & 0xF) == 0)
      {
        v205 = 2 - v204;
      }

      if (v196 || ((v205 + 1) & 0xF) != 0)
      {
        v206 = (v205 + 1);
      }

      else
      {
        v206 = (v205 + 2);
      }

      v207 = v203 - (v206 + v203 / 2);
      v246 = v207;
      do
      {
        v249 = v199 + 1;
        v208 = &dword_14F94[2 * ((v199 + 1) & 3)];
        if (v207 >= 1)
        {
          v209 = &dword_14F94[2 * v199];
          while (!v259)
          {
            if ((v206 & 0xF) != 0 && (v204 & 0xF) != 0)
            {
              v210 = v208[1];
              v211 = *v208 + v206;
              v212 = v210 + v204;
              v213 = (v211 & 0xF) == 0 || ((v210 + v204) & 0xF) == 0;
              v214 = v212 + v210;
              if (v213)
              {
                v201 = v211 + *v208;
              }

              else
              {
                v201 = v211;
              }

              if (v213)
              {
                v200 = v214;
              }

              else
              {
                v200 = v212;
              }

              goto LABEL_304;
            }

LABEL_308:
            v206 = (*v209 + v206);
            v204 = (v209[1] + v204);
            if (!--v207)
            {
              goto LABEL_309;
            }
          }

          v201 = (*v208 + v206);
          v200 = (v208[1] + v204);
LABEL_304:
          if (~(v197 / v256) + v254 < 0)
          {
            v218 = 0;
            v217 = 0;
          }

          else
          {
            v215 = v252[(~(v197 / v256) + v254)];
            v216 = v197 + 1;
            v217 = (v215 >> (v197 % v256)) & 1;
            v197 += 2;
            v218 = (v215 >> (v216 % v256)) & 1;
          }

          (*(v159 + 2))(v159, v201, v200, v217);
          (*(v159 + 2))(v159, v206, v204, v218);
          goto LABEL_308;
        }

LABEL_309:
        v219 = v208[1];
        v206 = (*v208 + v201);
        v204 = (v219 + v200);
        v196 = v259;
        if (!v259)
        {
          v220 = ((*v208 + v201) & 0xF) == 0 || ((v219 + v200) & 0xF) == 0;
          v221 = v204 + v219;
          if (v220)
          {
            v206 = (v206 + *v208);
          }

          else
          {
            v206 = v206;
          }

          if (v220)
          {
            v204 = v221;
          }

          else
          {
            v204 = v204;
          }
        }

        v207 = v246;
        v199 = v249;
      }

      while (v249 != 4);
      v198 = v243 + 1;
    }

    while (v243 + 1 != v239);
  }

  v222 = [[NSData alloc] initWithBytesNoCopy:v235 length:v231 freeWhenDone:1];
  v223 = CGDataProviderCreateWithCFData(v222);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v225 = CGImageCreate(v232, v232, 8uLL, 0x20uLL, v233, DeviceRGB, 0x2002u, v223, 0, 0, kCGRenderingIntentDefault);
  CFRelease(DeviceRGB);
  CFRelease(v223);

  return v225;
}

void sub_6A7C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2 == 1)
  {
    v12 = objc_begin_catch(a1);
    if (a12)
    {
      v12 = v12;
      *a12 = v12;
    }

    objc_end_catch();
    JUMPOUT(0x69BCLL);
  }

  _Unwind_Resume(a1);
}

void sub_6B00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = [[NSString alloc] initWithFormat:a1 arguments:&a9];
  v13[0] = NSLocalizedDescriptionKey;
  v10 = [@"Unable to create barcode. " stringByAppendingString:v9];
  v13[1] = NSLocalizedFailureReasonErrorKey;
  v14[0] = v10;
  v14[1] = v9;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];

  v12 = [NSError errorWithDomain:@"com.apple.aztec" code:0 userInfo:v11];
  objc_exception_throw(v12);
}

const __CFString *sub_6BD8(unsigned int a1)
{
  if (a1 > 6)
  {
    return @"<unknown state>";
  }

  else
  {
    return *(&off_1C678 + a1);
  }
}

uint64_t sub_6C00(uint64_t result)
{
  v1 = *result;
  if (*result <= 2)
  {
    switch(v1)
    {
      case 0:
        p_vtable = (&OBJC_METACLASS___CIQRCodeGenerator + 24);
        v3 = sub_6DF0;
        goto LABEL_18;
      case 1:
        p_vtable = &OBJC_METACLASS___CIQRCodeGenerator.vtable;
        v3 = sub_6E10;
        goto LABEL_18;
      case 2:
        p_vtable = (&OBJC_METACLASS___CIQRCodeGenerator + 24);
        v3 = sub_6E30;
        goto LABEL_18;
    }

    return (off_211E0)(*(result + 4));
  }

  if (v1 <= 4)
  {
    if (v1 == 3)
    {
      p_vtable = (&OBJC_METACLASS___CIQRCodeGenerator + 24);
      v3 = sub_6E4C;
      goto LABEL_18;
    }

    if (v1 == 4)
    {
      p_vtable = (&OBJC_METACLASS___CIQRCodeGenerator + 24);
      v3 = sub_6E68;
LABEL_18:
      p_vtable[60] = v3;
      return v3(*(result + 4));
    }

    return (off_211E0)(*(result + 4));
  }

  if (v1 == 5)
  {
    p_vtable = (&OBJC_METACLASS___CIQRCodeGenerator + 24);
    v3 = sub_6EA4;
    goto LABEL_18;
  }

  if (v1 != 6)
  {
    return (off_211E0)(*(result + 4));
  }

  return result;
}

uint64_t sub_6CF0(unsigned int *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = qword_14A50[6 * *a1 + v3];
  v5 = dword_14B70[6 * *a1 + v3];
  if (v3 == 5)
  {
    v6 = -5;
  }

  else
  {
    v6 = 0;
  }

  return sub_6EB8(a2, v4, v6 + v5);
}

uint64_t sub_6D84(unsigned __int16 *a1, uint64_t a2)
{
  v3 = *a1;
  if (v3 > 0x1F)
  {
    sub_6EB8(a2, 0, 5);
    v3 = *a1 - 31;
    v4 = a2;
    v5 = 11;
  }

  else
  {
    v4 = a2;
    v5 = 5;
  }

  return sub_6EB8(v4, v3, v5);
}

uint64_t sub_6DF0(unsigned int a1, uint64_t a2)
{
  if (a1 == 32)
  {
    v3 = 1;
  }

  else
  {
    v3 = a1 - 63;
  }

  return sub_6EB8(a2, v3, 5);
}

uint64_t sub_6E10(unsigned int a1, uint64_t a2)
{
  if (a1 == 32)
  {
    v3 = 1;
  }

  else
  {
    v3 = a1 - 95;
  }

  return sub_6EB8(a2, v3, 5);
}

uint64_t sub_6E68(unsigned int a1, uint64_t a2)
{
  v3 = 13;
  v4 = a1 - 46;
  if (a1 == 44)
  {
    v4 = 12;
  }

  if (a1 != 46)
  {
    v3 = v4;
  }

  if (a1 == 32)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3;
  }

  return sub_6EB8(a2, v5, 4);
}

uint64_t sub_6EB8(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(result + 24);
  if (v3 >= 8)
  {
    v4 = *(result + 8);
    do
    {
      if (!v4)
      {
        break;
      }

      v5 = v3 - 8;
      *(result + 24) = v5;
      v6 = *(result + 16) >> v5;
      v7 = (*result)++;
      *v7 = v6;
      v4 = *(result + 8) - 1;
      *(result + 8) = v4;
      v3 = *(result + 24);
    }

    while (v3 > 7);
  }

  *(result + 16) = (*(result + 16) << a3) | a2;
  *(result + 24) = v3 + a3;
  return result;
}

uint64_t sub_6F20(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 24);
  if (v2 >= a2)
  {
    v3 = *(a1 + 16);
  }

  else
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8) - 1;
    do
    {
      v3 <<= 8;
      *(a1 + 8) = v4;
      *(a1 + 16) = v3;
      if (v4 != -1)
      {
        v5 = (*a1)++;
        v3 |= *v5;
        *(a1 + 16) = v3;
      }

      v2 += 8;
      *(a1 + 24) = v2;
      --v4;
    }

    while (v2 < a2);
  }

  v6 = v2 - a2;
  *(a1 + 24) = v6;
  v7 = v3 >> v6;
  if (a2 <= 0x1F)
  {
    v8 = ~(-1 << a2);
  }

  else
  {
    v8 = -1;
  }

  return v8 & v7;
}

void sub_6F9C(id a1)
{
  v1 = 0;
  qword_211E8 = 0;
  unk_211F0 = 0;
  dword_21200 = 0;
  qword_211F8 = 0;
  do
  {
    *(&qword_211E8 + byte_14DB0[v1]) = v1;
    ++v1;
  }

  while (v1 != 28);
  v2 = 0;
  qword_21269 = 0;
  unk_21271 = 0;
  *(&qword_21279 + 6) = 0;
  qword_21279 = 0;
  do
  {
    byte_21268[byte_14DCC[v2]] = v2;
    ++v2;
  }

  while (v2 != 31);
  byte_21268[0] = 0;
}

unint64_t sub_7018(void *a1, void *a2, int *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v5 objectForKey:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 intValue];
    v17 = v9;
    if (v9 < *a3)
    {
      v20 = *a3;
      sub_6B00(@"Specified %@, %d, is less than the minimum, %d.", v10, v11, v12, v13, v14, v15, v16, v6);
    }

    if (v9 > a3[1])
    {
      v19 = a3[1];
      sub_6B00(@"Specified %@, %d, is greater than the maximum, %d.", v10, v11, v12, v13, v14, v15, v16, v6);
    }
  }

  else
  {
    v17 = a3[2];
  }

  return v17;
}

void *sub_70DC(size_t a1)
{
  v2 = malloc_type_malloc(0x20uLL, 0x1020040D9E1CEDCuLL);
  if (!a1)
  {
    sub_F174();
  }

  v3 = v2;
  *v2 = malloc_type_calloc(a1, 0x18uLL, 0x10200405AF6BDC9uLL);
  v3[1] = a1;
  v3[2] = 0;
  v3[3] = 0;
  return v3;
}

size_t sub_7148(void *a1)
{
  v1 = a1;
  v2 = a1[1];
  for (i = a1[2]; i >= v2; v1 = a1)
  {
    a1 = v1[3];
    if (!a1)
    {
      a1 = sub_70DC(v2);
      v1[3] = a1;
    }

    v2 = a1[1];
    i = a1[2];
  }

  v4 = *a1;
  a1[2] = i + 1;
  return v4 + 24 * i;
}

void sub_7254(uint64_t a1, int a2, int a3, size_t size, int a5)
{
  v6 = size;
  v9 = size;
  v10 = malloc_type_calloc(4uLL, size, 0xC74AA48uLL);
  v11 = malloc_type_calloc(4uLL, v9, 0x559B1DC6uLL);
  *v10 = 1 - v6;
  *v11 = 1;
  if (v6 > 1)
  {
    v12 = 0;
    do
    {
      v13 = &v11[v12];
      if ((2 * *v13) >= v9)
      {
        v14 = a5;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14 ^ (2 * *v13);
      v13[1] = v15;
      v10[v15] = ++v12;
    }

    while (v9 - 1 != v12);
  }

  v48 = a2;
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_76BC;
  v56[3] = &unk_1C570;
  v40 = v11;
  v56[4] = v11;
  v56[5] = v10;
  v39 = v10;
  v57 = v6;
  v16 = objc_retainBlock(v56);
  v17 = malloc_type_calloc(4uLL, a3 + 1, 0xCA9865EBuLL);
  v18 = v17;
  v41 = a3;
  v45 = v17;
  if (a3 < 1)
  {
    *v17 = 1;
  }

  else
  {
    v19 = a3;
    bzero(v17 + 1, 4 * a3);
    v20 = 0;
    v21 = 1;
    *v18 = 1;
    v22 = v18 - 1;
    v23 = 1;
    do
    {
      v18[v23] = v22[v23];
      v24 = v40[v23];
      v25 = v20;
      if (v23 >= 2)
      {
        do
        {
          v26 = &v18[v25];
          v27 = *(v26 - 1);
          v28 = (v16[2])(v16, *v26, v24) ^ v27;
          v18 = v45;
          *v26 = v28;
        }

        while (v25-- > 1);
        v21 = *v45;
      }

      v21 = (v16[2])(v16, v21, v24);
      *v18 = v21;
      ++v23;
      ++v20;
    }

    while (v20 != v19);
  }

  v42 = v16;
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_76F4;
  v53[3] = &unk_1C590;
  v53[4] = a1;
  v30 = v41;
  v54 = v41;
  v55 = v48;
  v43 = objc_retainBlock(v53);
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_7724;
  v51[3] = &unk_1C5B0;
  v52 = v41;
  v51[4] = a1 + 4 * v48;
  v31 = objc_retainBlock(v51);
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_7744;
  v50[3] = &unk_1C5D0;
  v50[4] = a1 + 4 * v48;
  v32 = objc_retainBlock(v50);
  bzero((a1 + 4 * v48), 4 * v41);
  if (v48 >= 1)
  {
    v33 = (v48 + v41 - 1);
    do
    {
      v49 = (v31[2])(v31, 0);
      v44 = v33;
      v47 = (v43[2])(v43, v33);
      if (v30 >= 1)
      {
        v34 = 0;
        v35 = &v45[v41 - 1];
        do
        {
          v36 = (v31[2])(v31, v34 + 1);
          v37 = *v35--;
          v38 = v42[2](v42, v47 ^ v49, v37) ^ v36;
          (v32[2])(v32, v38, v34++);
        }

        while (v41 != v34);
      }

      v33 = (v33 - 1);
      v30 = v41;
    }

    while (v44 > v41);
  }

  free(v45);
  free(v40);
  free(v39);
}

uint64_t sub_76BC(uint64_t a1, int a2, int a3)
{
  v3 = 0;
  if (a2 && a3)
  {
    return *(*(a1 + 32) + 4 * ((*(*(a1 + 40) + 4 * a3) + *(*(a1 + 40) + 4 * a2)) % (*(a1 + 48) - 1)));
  }

  return v3;
}

uint64_t sub_76F4(uint64_t a1, int a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    return *(*(a1 + 32) + 4 * (v2 + ~a2 + *(a1 + 44)));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_7724(uint64_t a1, int a2)
{
  if (*(a1 + 40) <= a2)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 32) + 4 * a2);
  }
}

uint64_t sub_7750(uint64_t result, int a2, int a3, int a4)
{
  v4 = *(result + 40);
  v5 = v4 - a3;
  v6 = v4 + a2;
  v7 = *(result + 32) + *(result + 44) * v5;
  if (a4)
  {
    v8 = -16777216;
  }

  else
  {
    v8 = -1;
  }

  *(v7 + 4 * v6) = v8;
  return result;
}

uint64_t sub_8824(uint64_t a1)
{
  v2 = sub_B32C(a1, 1);
  v3 = sub_B32C(a1, 0) + v2;
  if (a1)
  {
    v4 = *a1;
    v5 = *(a1 + 12);
    if (v5 > 1)
    {
      v6 = 0;
      v7 = 0;
      v8 = *(a1 + 8);
      v9 = v4 + 1;
      do
      {
        if (v8 <= 1)
        {
          v10 = v6 + 1;
        }

        else
        {
          v10 = v6 + 1;
          v11 = &v9[(v6 + 1) * v8];
          v12 = &v9[v6 * v8];
          v13 = (v8 - 1);
          do
          {
            v14 = *(v12 - 1);
            if (v14 == *v12 && v14 == *(v11 - 1) && v14 == *v11)
            {
              v7 += 3;
            }

            ++v12;
            ++v11;
            --v13;
          }

          while (v13);
        }

        v6 = v10;
      }

      while (v10 != v5 - 1);
      v3 += v7;
    }

    v15 = *(a1 + 8);
    v16 = v15;
    if (v5 < 1)
    {
      v26 = 0.0;
    }

    else
    {
      v17 = 0;
      v29 = 0;
      do
      {
        if (v15 <= 0)
        {
          v19 = v17 + 1;
        }

        else
        {
          v18 = 0;
          v19 = v17 + 1;
          v20 = &v4[v17 * v15];
          do
          {
            if (v18 < v15 - 6 && v20[v18] == 1 && !v20[v18 + 1] && v20[v18 + 2] == 1 && v20[v18 + 3] == 1 && v20[v18 + 4] == 1 && !v20[v18 + 5] && v20[v18 + 6] == 1 && (v18 < v15 - 10 && !v20[v18 + 7] && !v20[v18 + 8] && !v20[v18 + 9] && !v20[v18 + 10] || v18 >= 4 && !v20[v18 - 1] && !v20[v18 - 2] && !v20[v18 - 3] && !v20[v18 - 4]))
            {
              v29 += 40;
            }

            if ((v17 + 6) < v5 && v20[v18] == 1 && !v4[(v17 + 1) * v15 + v18] && v4[(v17 + 2) * v15 + v18] == 1 && v4[(v17 + 3) * v15 + v18] == 1 && v4[(v17 + 4) * v15 + v18] == 1 && !v4[(v17 + 5) * v15 + v18] && v4[(v17 + 6) * v15 + v18] == 1 && ((v17 + 10) < v5 && !v4[(v17 + 7) * v15 + v18] && !v4[(v17 + 8) * v15 + v18] && !v4[(v17 + 9) * v15 + v18] && !v4[(v17 + 10) * v15 + v18] || v17 >= 4 && !v4[(v17 - 1) * v15 + v18] && !v4[(v17 - 2) * v15 + v18] && !v4[(v17 - 3) * v15 + v18] && !v4[(v17 - 4) * v15 + v18]))
            {
              v29 += 40;
            }

            ++v18;
          }

          while (v15 != v18);
        }

        v17 = v19;
      }

      while (v19 != v5);
      v21 = 0;
      v22 = 0;
      v3 += v29;
      do
      {
        v23 = v4;
        v24 = v16;
        if (v16 >= 1)
        {
          do
          {
            v25 = *v23++;
            if (v25 == 1)
            {
              ++v22;
            }

            --v24;
          }

          while (v24);
        }

        ++v21;
        v4 += v16;
      }

      while (v21 != v5);
      v26 = v22;
    }

    v27 = (fabs(v26 / (v5 * v16) * 100.0 + -50.0) / 5.0 * 10.0);
  }

  else
  {
    v27 = 0;
  }

  return (v27 + v3);
}

CGImageRef sub_8BF0(void *a1, void *a2, void *a3, int a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v51 = 0;
  v52 = 0;
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  v46 = 0;
  v10 = v9;
  v11 = [v8 isEqualToString:@"L"];
  v12 = [v8 isEqualToString:@"Q"];
  v13 = [v8 isEqualToString:@"H"];
  v14 = v11 ^ 1;
  if (v12)
  {
    v14 = 2;
  }

  if (v13)
  {
    v15 = 3;
  }

  else
  {
    v15 = v14;
  }

  if (v7)
  {
    LODWORD(v47) = 4;
    *(&v47 + 1) = 0;
    *&v48 = -1;
    *(&v48 + 1) = -1;
    *&v49 = -1;
    DWORD2(v49) = -1;
    v50 = 0;
    if (sub_924C(&v45, v15))
    {
      if (v9)
      {
        v16 = v10;
      }

      else
      {
        v16 = @"ISO-8859-1";
      }

      if (([(__CFString *)v16 isEqualToString:?]& 1) != 0)
      {
LABEL_21:
        v21 = v7;
        v17 = v16;
        v22 = 10 * [v21 length];
        if (v22 > 0x114FE)
        {
          v23 = sub_D58();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_F340(v23, v24, v25, v26, v27, v28, v29, v30);
          }

LABEL_25:
          goto LABEL_26;
        }

        v32 = v22 / 3 + 12;
        v33 = -1;
        v34 = &dword_153D4;
        do
        {
          if (v33 == 2)
          {
            goto LABEL_25;
          }

          v35 = *v34++;
          ++v33;
        }

        while (v32 >= dword_15150[4 * v35 - 4 + v15]);
        v36 = &dword_15150[v15];
        while (1)
        {
          v51 = 0;
          v52 = 0;
          if (a4)
          {
            if (sub_B3EC(v21, &v51, v33, v17))
            {
              goto LABEL_36;
            }
          }

          else
          {
            v37 = sub_9AD0(v21, v17);
            if (sub_B94C(v21, &v51, v37, v33, v17))
            {
LABEL_36:
              v38 = (&unk_153D0 + 4 * v33);
              v40 = *v38;
              v39 = v38[1];
              if (v40 > v39)
              {
                v39 = v40;
              }

              v41 = 1 - v40;
              v42 = &v36[16 * v40];
              v43 = v39 - v40;
              while (v43)
              {
                v44 = *v42;
                v42 += 4;
                --v41;
                ++v40;
                --v43;
                if (v44 >= v51)
                {

                  if (-v41 < -1 || !sub_9318(v40, &v45, &v47) || !sub_945C(v49, &v51))
                  {
                    goto LABEL_26;
                  }

                  v20 = sub_9600(&v47, &v51);
                  if (v52)
                  {
                    free(v52);
                  }

                  goto LABEL_27;
                }
              }
            }
          }

          if (++v33 == 3)
          {
            goto LABEL_25;
          }
        }
      }

      v17 = v16;
      if (([(__CFString *)v17 isEqualToString:@"Cp437"]& 1) != 0)
      {
        v18 = 0;
        v19 = @"Cp437";
        goto LABEL_20;
      }

      if (([(__CFString *)v17 isEqualToString:@"ISO8859_1"]& 1) != 0)
      {
        v19 = @"ISO8859_1";
      }

      else
      {
        if (([(__CFString *)v17 isEqualToString:@"ISO-8859-1"]& 1) == 0)
        {
          if (([(__CFString *)v17 isEqualToString:@"Cp437"]& 1) != 0)
          {
            v19 = @"Cp437";
            v18 = 2;
          }

          else if (([(__CFString *)v17 isEqualToString:@"ISO8859_1"]& 1) != 0 || ([(__CFString *)v17 isEqualToString:@"ISO-8859_1"]& 1) != 0)
          {
            v19 = @"ISO8859_1";
            v18 = 3;
          }

          else if (([(__CFString *)v17 isEqualToString:@"ISO8859_2"]& 1) != 0)
          {
            v19 = @"ISO8859_2";
            v18 = 4;
          }

          else if (([(__CFString *)v17 isEqualToString:@"ISO8859_3"]& 1) != 0)
          {
            v19 = @"ISO8859_3";
            v18 = 5;
          }

          else if (([(__CFString *)v17 isEqualToString:@"ISO8859_4"]& 1) != 0)
          {
            v19 = @"ISO8859_4";
            v18 = 6;
          }

          else if (([(__CFString *)v17 isEqualToString:@"ISO8859_5"]& 1) != 0)
          {
            v19 = @"ISO8859_5";
            v18 = 7;
          }

          else if (([(__CFString *)v17 isEqualToString:@"ISO8859_6"]& 1) != 0)
          {
            v19 = @"ISO8859_6";
            v18 = 8;
          }

          else if (([(__CFString *)v17 isEqualToString:@"ISO8859_7"]& 1) != 0)
          {
            v19 = @"ISO8859_7";
            v18 = 9;
          }

          else if (([(__CFString *)v17 isEqualToString:@"ISO8859_8"]& 1) != 0)
          {
            v19 = @"ISO8859_8";
            v18 = 10;
          }

          else if (([(__CFString *)v17 isEqualToString:@"ISO8859_9"]& 1) != 0)
          {
            v19 = @"ISO8859_9";
            v18 = 11;
          }

          else if (([(__CFString *)v17 isEqualToString:@"ISO8859_10"]& 1) != 0)
          {
            v19 = @"ISO8859_10";
            v18 = 12;
          }

          else if (([(__CFString *)v17 isEqualToString:@"ISO8859_11"]& 1) != 0)
          {
            v19 = @"ISO8859_11";
            v18 = 13;
          }

          else if (([(__CFString *)v17 isEqualToString:@"ISO8859_13"]& 1) != 0)
          {
            v19 = @"ISO8859_13";
            v18 = 15;
          }

          else if (([(__CFString *)v17 isEqualToString:@"ISO8859_14"]& 1) != 0)
          {
            v19 = @"ISO8859_14";
            v18 = 16;
          }

          else if (([(__CFString *)v17 isEqualToString:@"ISO8859_15"]& 1) != 0)
          {
            v19 = @"ISO8859_15";
            v18 = 17;
          }

          else if (([(__CFString *)v17 isEqualToString:@"ISO8859_16"]& 1) != 0)
          {
            v19 = @"ISO8859_16";
            v18 = 18;
          }

          else if (([(__CFString *)v17 isEqualToString:@"SJIS"]& 1) != 0)
          {
            v19 = @"SJIS";
            v18 = 20;
          }

          else
          {
            v19 = @"Shift_JIS";
            if ([(__CFString *)v17 isEqualToString:@"Shift_JIS"])
            {
              v18 = 20;
            }

            else
            {
              v19 = &stru_1D760;
              v18 = 0;
            }
          }

LABEL_20:

          if (!sub_92A0(v18, v19, &v51))
          {
LABEL_26:
            v20 = 0;
            goto LABEL_27;
          }

          goto LABEL_21;
        }

        v19 = @"ISO8859-1";
      }

      v18 = 1;
      goto LABEL_20;
    }
  }

  v20 = 0;
  v17 = v10;
LABEL_27:

  return v20;
}

BOOL sub_924C(uint64_t a1, int a2)
{
  if (a1)
  {
    v3 = dword_15A40[a2];
    v4 = off_1C6C8[a2];
    *a1 = a2;
    *(a1 + 4) = v3;
    v5 = *(a1 + 8);
    *(a1 + 8) = v4;
  }

  return a1 != 0;
}

void *sub_92A0(int a1, void *a2, void *a3)
{
  if (sub_BFF4(a3, 7, 4u))
  {
    v6 = sub_BFF4(a3, a1, 8u);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_9318(int a1, int *a2, uint64_t a3)
{
  v3 = (a1 - 1) >= 0x28 || a3 == 0;
  v4 = !v3;
  if (!v3)
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    sub_415C(a1, &v19);
    v17 = 0uLL;
    v18 = 0;
    v13 = v23;
    v14 = v24;
    v15 = v25;
    v16 = v26;
    v9 = v19;
    v10 = v20;
    v11 = v21;
    v12 = v22;
    sub_4108(&v9, a2, &v17);
    *(a3 + 8) = a2;
    *(a3 + 16) = a1;
    *(a3 + 28) = v26;
    v9 = v17;
    LODWORD(v10) = v18;
    *(a3 + 36) = sub_4148(&v9);
    v9 = v17;
    LODWORD(v10) = v18;
    *(a3 + 40) = sub_4138(&v9);
    v13 = v23;
    v14 = v24;
    v15 = v25;
    v16 = v26;
    v9 = v19;
    v10 = v20;
    v11 = v21;
    v12 = v22;
    *(a3 + 20) = sub_4128(&v9);
    *(a3 + 32) = *(a3 + 28) - *(a3 + 36);
  }

  return v4;
}

void *sub_945C(int a1, unsigned int *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = 8 * a1;
  if (sub_BE5C(a2) <= 8 * a1)
  {
    v14 = 4;
    do
    {
      if (sub_BE5C(a2) >= v4)
      {
        break;
      }

      if ((sub_BE7C(a2, 0) & 1) == 0)
      {
        return 0;
      }

      --v14;
    }

    while (v14);
    v15 = sub_BE5C(a2);
    if (v15 <= 0)
    {
      v16 = -(-v15 & 7);
    }

    else
    {
      v16 = v15 & 7;
    }

    if (v16 >= 1)
    {
      v17 = v16 - 8;
      while ((sub_BE7C(a2, 0) & 1) != 0)
      {
        if (__CFADD__(v17++, 1))
        {
          goto LABEL_18;
        }
      }

      return 0;
    }

LABEL_18:
    if ((sub_BE5C(a2) & 7) != 0)
    {
      v5 = sub_D58();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_F3B8(v5, v19, v20, v21, v22, v23, v24, v25);
      }
    }

    else
    {
      v26 = a1 - sub_BE68(a2);
      if (v26 >= 1)
      {
        for (i = 0; i != v26; ++i)
        {
          if (i)
          {
            result = sub_BFF4(a2, 17, 8u);
            if (!result)
            {
              return result;
            }
          }

          else if ((sub_BFF4(a2, 236, 8u) & 1) == 0)
          {
            return 0;
          }
        }
      }

      if (sub_BE5C(a2) == v4)
      {
        return (&dword_0 + 1);
      }

      v5 = sub_D58();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_F430(v5, v28, v29, v30, v31, v32, v33, v34);
      }
    }
  }

  else
  {
    v5 = sub_D58();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_F4A8(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  return 0;
}

CGImageRef sub_9600(uint64_t a1, uint64_t a2)
{
  v46 = 0;
  v47 = 0;
  v3 = 0;
  if (sub_A72C(a2, *(a1 + 28), *(a1 + 32), *(a1 + 40), &v46))
  {
    v44 = 0;
    v45 = 0;
    v3 = 0;
    if (sub_C344(&v44, *(a1 + 20), *(a1 + 20)))
    {
      v4 = *(a1 + 24);
      v5 = *(a1 + 8);
      v6 = *(a1 + 16);
      if (v4 >= 8)
      {
        v7 = sub_9C64(&v46, v5, v6, &v44);
        *(a1 + 24) = v7;
      }

      else
      {
        sub_9D74(&v46, v5, v6, v4, &v44);
        v7 = *(a1 + 24);
      }

      v8 = *(a1 + 16);
      v9.i64[0] = v8;
      v9.i32[2] = v7;
      v9.i32[3] = *(a1 + 28);
      v10.i64[0] = -1;
      v10.i64[1] = -1;
      if ((vmaxv_u16(vmovn_s32(vceqq_s32(v9, v10))) & 1) != 0 || (v11 = *(a1 + 32), v11 == -1) || !*(a1 + 8) || (v12 = *(a1 + 36), v12 == -1) || v7 > 7 || *(a1 + 40) == -1 || *(a1 + 28) != v12 + v11 || (v13 = HIDWORD(v8), HIDWORD(v8) != v45) || HIDWORD(v8) != HIDWORD(v45))
      {
        v15 = sub_D58();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_F520(v15, v16, v17, v18, v19, v20, v21, v22);
        }

        v3 = 0;
      }

      else
      {
        if (v47)
        {
          free(v47);
          v14 = v45;
          v13 = HIDWORD(v45);
        }

        else
        {
          v14 = HIDWORD(v8);
        }

        v39 = v14 + 2;
        v40 = v13 + 2;
        v38 = 4 * (v14 + 2);
        v23 = (v38 * (v13 + 2));
        v15 = [NSMutableData dataWithLength:v23];
        if (v23 >= 1)
        {
          for (i = 0; i != v23; ++i)
          {
            *([v15 mutableBytes]+ i) = -1;
          }
        }

        if (v13 >= 1)
        {
          v25 = 0;
          v26 = 4 * v14;
          v41 = 4 * v14 + 8;
          v42 = (v13 + 1);
          v27 = 4 * (v14 + 1);
          v28 = 1;
          v43 = v14;
          do
          {
            if (v14 >= 1)
            {
              v29 = 0;
              v30 = 4;
              do
              {
                v31 = *(v44 + v45 * v25 + v29) - 1;
                v32 = v26 + v30;
                *([v15 mutableBytes]+ (v26 + v30 + 8)) = v31;
                v33 = *(v44 + v45 * v25 + v29) - 1;
                *([v15 mutableBytes]+ (v32 + 9)) = v33;
                v34 = *(v44 + v45 * v25 + v29) - 1;
                *([v15 mutableBytes]+ (v32 + 10)) = v34;
                *([v15 mutableBytes]+ (v32 + 11)) = -1;
                v30 += 4;
                ++v29;
              }

              while (v27 != v30);
            }

            ++v28;
            v26 += v41;
            ++v25;
            v14 = v43;
          }

          while (v28 != v42);
        }

        if (v44)
        {
          free(v44);
        }

        v35 = CGDataProviderCreateWithCFData(v15);
        DeviceRGB = CGColorSpaceCreateDeviceRGB();
        v3 = CGImageCreate(v39, v40, 8uLL, 0x20uLL, v38, DeviceRGB, 0x2002u, v35, 0, 0, kCGRenderingIntentDefault);
        CFRelease(DeviceRGB);
        CFRelease(v35);
      }
    }
  }

  return v3;
}

CGImageRef sub_9954(void *a1, void *a2, int a3, int a4)
{
  v7 = a1;
  v8 = a2;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  v22 = 0;
  v9 = [v8 isEqualToString:@"L"];
  v10 = [v8 isEqualToString:@"Q"];
  v11 = [v8 isEqualToString:@"H"];
  LODWORD(v23) = 4;
  v12 = v9 ^ 1;
  if (v10)
  {
    v12 = 2;
  }

  *(&v23 + 1) = 0;
  *&v24 = -1;
  if (v11)
  {
    v13 = 3;
  }

  else
  {
    v13 = v12;
  }

  *(&v24 + 1) = -1;
  *&v25 = -1;
  DWORD2(v25) = -1;
  v26 = 0;
  if (sub_924C(&v21, v13) && ((v14 = sub_9318(a4, &v21, &v23), v24 == a4) ? (v15 = v14) : (v15 = 0), v15 == 1 && (v16 = v25, [v7 length] >= v16)))
  {
    DWORD2(v24) = a3;
    v20 = [v7 bytes];
    v19[0] = 8 * v25;
    v19[1] = v25;
    v17 = sub_9600(&v23, v19);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

uint64_t sub_9AD0(void *a1, void *a2)
{
  v3 = a1;
  if ([a2 isEqualToString:@"Shift_JIS"])
  {
    v4 = !sub_9BCC(v3);
    v5 = 4;
    v6 = 8;
  }

  else
  {
    if (![v3 length])
    {
LABEL_18:
      v11 = 4;
      goto LABEL_19;
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *([v3 bytes] + v9);
      if (v10 - 48 >= 0xA)
      {
        if (v10 > 0x5F || dword_14FD0[v10] == -1)
        {
          goto LABEL_18;
        }

        v7 = 1;
      }

      else
      {
        v8 = 1;
      }

      ++v9;
    }

    while (v9 < [v3 length]);
    if (v8)
    {
      v5 = 1;
    }

    else
    {
      v5 = 4;
    }

    v4 = (v7 & 1) == 0;
    v6 = 2;
  }

  if (v4)
  {
    v11 = v5;
  }

  else
  {
    v11 = v6;
  }

LABEL_19:

  return v11;
}

BOOL sub_9BCC(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_16;
  }

  v3 = [v1 length];
  v4 = v3;
  if (v3)
  {
    v10 = 0;
    goto LABEL_18;
  }

  if (v3 >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *([v2 bytes] + v5);
      v7 = v6 - 129;
      v8 = v6 - 224;
      v10 = v7 < 0x1F || v8 < 0xC;
      v5 += 2;
    }

    while (v10 && v5 < v4);
  }

  else
  {
LABEL_16:
    v10 = 1;
  }

LABEL_18:

  return v10;
}

uint64_t sub_9C64(unsigned int *a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = 0xFFFFFFFFLL;
  if (a1)
  {
    if (a2)
    {
      if (a4)
      {
        v9 = malloc_type_malloc(*(a4 + 12) * *(a4 + 8), 0x100004077774924uLL);
        if (v9)
        {
          v10 = v9;
          v11 = 0;
          v12 = 0x7FFFFFFF;
          while (sub_9D74(a1, a2, a3, v11, a4))
          {
            v13 = sub_8824(a4);
            if (v13 < v12)
            {
              if (*(a4 + 12) * *(a4 + 8) >= 1)
              {
                v14 = 0;
                do
                {
                  v10[v14] = *(*a4 + v14);
                  ++v14;
                }

                while (v14 < *(a4 + 12) * *(a4 + 8));
              }

              v4 = v11;
              v12 = v13;
            }

            v11 = (v11 + 1);
            if (v11 == 8)
            {
              free(*a4);
              *a4 = v10;
              return v4;
            }
          }

          free(v10);
        }
      }
    }
  }

  return v4;
}

BOOL sub_9D74(unsigned int *a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v10 = sub_C41C(a5, -1);
  result = 0;
  if (a5)
  {
    if (v10)
    {
      result = sub_BA44(0, 0, a5);
      if (result)
      {
        result = sub_BA44(*(a5 + 8) - 7, 0, a5);
        if (result)
        {
          result = sub_BA44(0, *(a5 + 8) - 7, a5);
          if (result)
          {
            result = sub_BB2C(0, 7, a5);
            if (result)
            {
              result = sub_BB2C(*(a5 + 8) - 8, 7, a5);
              if (result)
              {
                result = sub_BB2C(0, *(a5 + 8) - 8, a5);
                if (result)
                {
                  result = sub_BBE4(7, 0, a5);
                  if (result)
                  {
                    result = sub_BBE4(*(a5 + 12) - 8, 0, a5);
                    if (result)
                    {
                      result = sub_BBE4(7, *(a5 + 12) - 7, a5);
                      if (result)
                      {
                        if (!sub_C3D8(a5, 8, *(a5 + 12) - 8))
                        {
                          v34 = sub_D58();
                          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                          {
                            sub_F894(v34, v35, v36, v37, v38, v39, v40, v41);
                          }

                          goto LABEL_79;
                        }

                        result = sub_C3FC(a5, 8, *(a5 + 12) - 8, 1);
                        if (result)
                        {
                          if (a3 < 2)
                          {
                            goto LABEL_15;
                          }

                          v42 = 0;
                          v43 = &unk_154E0 + 28 * (a3 - 1);
                          do
                          {
                            v44 = 0;
                            v74 = v42;
                            v77 = *&v43[4 * v42];
                            do
                            {
                              v45 = *&v43[4 * v44];
                              if (v45 != -1 && v77 != -1)
                              {
                                v47 = sub_C3D8(a5, *&v43[4 * v44], v77);
                                v48 = v77 - 2;
                                if (v47 == -1)
                                {
                                  v49 = 0;
                                  v76 = 0;
                                  v50 = v45 - 2;
                                  v79 = &unk_15940;
                                  v75 = v50;
LABEL_90:
                                  v51 = 0;
                                  while (1)
                                  {
                                    v52 = v48;
                                    if (sub_C3D8(a5, v50, v48 + v49) != -1)
                                    {
                                      break;
                                    }

                                    if (!sub_C3FC(a5, v50, v52 + v49, v79[v51]))
                                    {
                                      v43 = &unk_154E0 + 28 * (a3 - 1);
                                      goto LABEL_100;
                                    }

                                    v51 += 4;
                                    ++v50;
                                    v48 = v77 - 2;
                                    if (v51 == 20)
                                    {
                                      v76 = v49 > 3;
                                      v79 += 20;
                                      ++v49;
                                      v43 = &unk_154E0 + 28 * (a3 - 1);
                                      v50 = v75;
                                      if (v49 == 5)
                                      {
                                        goto LABEL_101;
                                      }

                                      goto LABEL_90;
                                    }
                                  }

                                  v53 = sub_D58();
                                  v43 = &unk_154E0 + 28 * (a3 - 1);
                                  if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                                  {
                                    sub_F598(buf, &v85, v53);
                                  }

LABEL_100:
                                  if (v76)
                                  {
                                    goto LABEL_101;
                                  }

                                  return 0;
                                }
                              }

LABEL_101:
                              ++v44;
                            }

                            while (v44 != 7);
                            v42 = v74 + 1;
                          }

                          while (v74 != 6);
LABEL_15:
                          if (*(a5 + 8) >= 17)
                          {
                            v12 = 8;
                            while (1)
                            {
                              if (sub_C3D8(a5, v12, 6) + 1 >= 3)
                              {
                                v34 = sub_D58();
                                if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                                {
                                  goto LABEL_79;
                                }

                                goto LABEL_107;
                              }

                              v13 = v12 + 1;
                              if (sub_C3D8(a5, v12, 6) == -1)
                              {
                                result = sub_C3FC(a5, v12, 6, v13 & 1);
                                if (!result)
                                {
                                  return result;
                                }
                              }

                              if (sub_C3D8(a5, 6, v12) + 1 >= 3)
                              {
                                break;
                              }

                              if (sub_C3D8(a5, 6, v12) == -1)
                              {
                                result = sub_C3FC(a5, 6, v12, v13 & 1);
                                if (!result)
                                {
                                  return result;
                                }
                              }

                              ++v12;
                              if (v13 >= *(a5 + 8) - 8)
                              {
                                goto LABEL_24;
                              }
                            }

                            v34 = sub_D58();
                            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                            {
LABEL_107:
                              sub_F5E8(v34, v61, v62, v63, v64, v65, v66, v67);
                            }

LABEL_79:

                            return 0;
                          }

LABEL_24:
                          v80 = 0;
                          v81 = 0;
                          if (!a2)
                          {
                            return 0;
                          }

                          v82 = 0;
                          v83 = 0;
                          if (a4 >= 8)
                          {
                            v34 = sub_D58();
                            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                            {
                              sub_F660(v34, v54, v55, v56, v57, v58, v59, v60);
                            }

                            goto LABEL_79;
                          }

                          v14 = a4 | (8 * *(a2 + 4));
                          if (!sub_BFF4(&v80, v14, 5u))
                          {
                            return 0;
                          }

                          v15 = sub_BC9C(v14, 1335);
                          if (!sub_BFF4(&v80, v15, 0xAu) || !sub_BFF4(&v82, 21522, 0xFu) || !sub_C0BC(&v80, &v82))
                          {
                            return 0;
                          }

                          if (sub_BE5C(&v80) != 15)
                          {
                            v34 = sub_D58();
                            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                            {
                              sub_F6D8(&v80);
                            }

                            goto LABEL_79;
                          }

                          if (v83)
                          {
                            free(v83);
                          }

                          if (sub_BE5C(&v80) >= 1)
                          {
                            v16 = 0;
                            v17 = &unk_159A8;
                            v18 = -1;
                            do
                            {
                              v19 = sub_BE5C(&v80);
                              v20 = sub_BDD4(&v80, v19 + v18);
                              if (!sub_C3FC(a5, *(v17 - 1), *v17, v20))
                              {
                                return 0;
                              }

                              if (v16 > 7)
                              {
                                if (!sub_C3FC(a5, 8, v16 + *(a5 + 12) - 15, v20))
                                {
                                  return 0;
                                }
                              }

                              else if (!sub_C3FC(a5, v18 + *(a5 + 8), 8, v20))
                              {
                                return 0;
                              }

                              v17 += 2;
                              ++v16;
                              --v18;
                            }

                            while (v16 < sub_BE5C(&v80));
                          }

                          if (v81)
                          {
                            free(v81);
                          }

                          v82 = 0;
                          v83 = 0;
                          if (a3 >= 7)
                          {
                            if (!sub_BFF4(&v82, a3, 6u))
                            {
                              return 0;
                            }

                            v68 = sub_BC9C(a3, 7973);
                            if (!sub_BFF4(&v82, v68, 0xCu))
                            {
                              return 0;
                            }

                            if (sub_BE5C(&v82) != 18)
                            {
                              v34 = sub_D58();
                              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                              {
                                sub_F768(&v82);
                              }

                              goto LABEL_79;
                            }

                            v69 = 0;
                            v70 = 17;
                            do
                            {
                              for (i = -11; i != -8; ++i)
                              {
                                v72 = sub_BDD4(&v82, v70);
                                if (!sub_C3FC(a5, v69, i + *(a5 + 12), v72) || !sub_C3FC(a5, i + *(a5 + 12), v69, v72))
                                {
                                  return 0;
                                }

                                --v70;
                              }

                              ++v69;
                            }

                            while (v69 != 6);
                            if (v83)
                            {
                              free(v83);
                            }
                          }

                          v21 = *(a5 + 8);
                          if (v21 >= 2)
                          {
                            v22 = 0;
                            v23 = v21 - 1;
                            v24 = *(a5 + 12) - 1;
                            v78 = -1;
                            while (1)
                            {
                              v25 = v23 == 6 ? 5 : v23;
                              if ((v24 & 0x80000000) == 0)
                              {
                                break;
                              }

LABEL_75:
                              v24 -= v78;
                              v78 = -v78;
                              v23 = v25 - 2;
                              if (v25 <= 2)
                              {
                                goto LABEL_124;
                              }
                            }

LABEL_50:
                            if (v24 >= *(a5 + 12))
                            {
                              goto LABEL_75;
                            }

                            v26 = 0;
                            v27 = 1;
                            while (1)
                            {
                              v28 = v27;
                              v29 = v26 + v25;
                              if (sub_C3D8(a5, v26 + v25, v24) == -1)
                              {
                                break;
                              }

LABEL_73:
                              v27 = 0;
                              v26 = -1;
                              if ((v28 & 1) == 0)
                              {
                                v24 += v78;
                                if (v24 < 0)
                                {
                                  goto LABEL_75;
                                }

                                goto LABEL_50;
                              }
                            }

                            if (v22 >= sub_BE5C(a1))
                            {
                              v30 = 0;
                            }

                            else
                            {
                              v30 = sub_BDD4(a1, v22++);
                            }

                            if (a4 > 3)
                            {
                              if (a4 > 5)
                              {
                                v32 = v29 * v24;
                                if (a4 == 6)
                                {
                                  v33 = v32 - v32 / 3;
                                }

                                else
                                {
                                  v32 -= v32 / 3;
                                  LOBYTE(v33) = v29 + v24;
                                }

                                LOBYTE(v32) = v33 + v32;
                              }

                              else
                              {
                                if (a4 != 4)
                                {
                                  v31 = ((v29 * v24) & 1) + v29 * v24 % 3;
                                  goto LABEL_72;
                                }

                                v32 = v29 / 3 + (v24 >> 1);
                              }
                            }

                            else
                            {
                              if (a4 > 1)
                              {
                                if (a4 == 2)
                                {
                                  v31 = v29 % 3;
                                }

                                else
                                {
                                  v31 = (v29 + v24) % 3;
                                }

LABEL_72:
                                result = sub_C3FC(a5, v29, v24, v30 ^ (v31 == 0));
                                if (!result)
                                {
                                  return result;
                                }

                                goto LABEL_73;
                              }

                              v31 = v24 & 1;
                              if (a4)
                              {
                                goto LABEL_72;
                              }

                              LOBYTE(v32) = v29 + v24;
                            }

                            v31 = v32 & 1;
                            goto LABEL_72;
                          }

                          v22 = 0;
LABEL_124:
                          if (v22 != sub_BE5C(a1))
                          {
                            v73 = sub_D58();
                            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
                            {
                              sub_F7F8(a1);
                            }

                            return 0;
                          }

                          return 1;
                        }
                      }
                    }
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

uint64_t sub_A66C(int a1, int a2, int a3, int a4, int *a5, _DWORD *a6)
{
  v6 = 0;
  if (!a5 || !a6)
  {
    return v6;
  }

  if (a4 >= a3)
  {
    v11 = sub_D58();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_F90C(v11, v12, v13, v14, v15, v16, v17, v18);
    }

    goto LABEL_13;
  }

  v7 = a1 / a3;
  v8 = a3 - a1 % a3;
  if (a1 % a3 + a1 % a3 * v7 + v7 * v8 != a1)
  {
    v11 = sub_D58();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_F984(v11, v19, v20, v21, v22, v23, v24, v25);
    }

LABEL_13:

    return 0;
  }

  v9 = a2 / a3;
  if (v8 > a4)
  {
    v10 = a2 / a3;
  }

  else
  {
    v10 = v9 + 1;
  }

  *a5 = v10;
  *a6 = v7 - v9;
  return 1;
}

uint64_t sub_A72C(uint64_t a1, uint64_t a2, int a3, int a4, _DWORD *a5)
{
  result = 0;
  if (a1 && a5)
  {
    if (sub_BE68(a1) == a3)
    {
      v11 = malloc_type_calloc(a4, 0x10uLL, 0x20040A4A59CD2uLL);
      if (v11)
      {
        v12 = v11;
        v13 = a4;
        v69 = v11;
        if (a4 >= 1)
        {
          v66 = a4;
          v67 = a5;
          v68 = a4;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = v11 + 1;
          do
          {
            v70 = 0;
            v19 = a2;
            if (!sub_A66C(a2, a3, v13, v14, &v70 + 1, &v70) || (v20 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040FDD9F14CuLL)) == 0 || (v21 = v20, !sub_C278(v20, *(a1 + 8), v15, SHIDWORD(v70))) || (v22 = sub_AAE0(v21, v70)) == 0)
            {
              a4 = v68;
              goto LABEL_46;
            }

            v16 = fmax(v16, *(v21 + 8));
            v17 = fmax(v17, v22[2]);
            *(v18 - 1) = v21;
            *v18 = v22;
            v15 += HIDWORD(v70);
            ++v14;
            v18 += 2;
            a2 = v19;
          }

          while (v13 != v14);
          v23 = v15 == a3;
          a4 = v68;
          if (!v23)
          {
            goto LABEL_39;
          }

          if (v16 >= 1)
          {
            v24 = 0;
LABEL_16:
            v25 = v69;
            v26 = v66;
            while (1)
            {
              if (v24 < *(*v25 + 2))
              {
                v27 = sub_C1BC(*v25, v24);
                if (!sub_BFF4(v67, v27, 8u))
                {
                  goto LABEL_46;
                }
              }

              v25 += 2;
              if (!--v26)
              {
                if (++v24 != v16)
                {
                  goto LABEL_16;
                }

                break;
              }
            }
          }

          if (v17 >= 1)
          {
            v28 = 0;
LABEL_23:
            v29 = v69 + 1;
            v30 = v66;
            while (1)
            {
              if (v28 < *(*v29 + 2))
              {
                v31 = sub_C1BC(*v29, v28);
                if (!sub_BFF4(v67, v31, 8u))
                {
                  goto LABEL_46;
                }
              }

              v29 += 2;
              if (!--v30)
              {
                if (++v28 != v17)
                {
                  goto LABEL_23;
                }

                break;
              }
            }
          }

          v12 = v69;
          if (sub_BE68(v67) != v19)
          {
            goto LABEL_43;
          }

          v32 = (v69 + 1);
          do
          {
            free(**(v32 - 1));
            free(**v32);
            free(*(v32 - 1));
            v33 = *v32;
            v32 += 2;
            free(v33);
            --v13;
          }

          while (v13);
LABEL_42:
          free(v12);
          return 1;
        }

        if (a3)
        {
LABEL_39:
          v49 = sub_D58();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            sub_FA74(v49, v50, v51, v52, v53, v54, v55, v56);
          }
        }

        else
        {
          if (sub_BE68(a5) == a2)
          {
            goto LABEL_42;
          }

LABEL_43:
          v49 = sub_D58();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            sub_FAEC(v49, v57, v58, v59, v60, v61, v62, v63);
          }
        }

LABEL_46:
        if (a4 >= 1)
        {
          v64 = (v69 + 1);
          do
          {
            v65 = *(v64 - 1);
            if (v65)
            {
              free(*v65);
              free(*(v64 - 1));
            }

            if (*v64)
            {
              free(**v64);
              free(*v64);
            }

            v64 += 2;
            --v13;
          }

          while (v13);
        }

        free(v69);
        return 0;
      }

      v34 = sub_D58();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_FB64(v34, v42, v43, v44, v45, v46, v47, v48);
      }
    }

    else
    {
      v34 = sub_D58();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_F9FC(v34, v35, v36, v37, v38, v39, v40, v41);
      }
    }

    return 0;
  }

  return result;
}

_DWORD *sub_AAE0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = v4 + a2;
  v6 = malloc_type_calloc(v5, 4uLL, 0x100004052888210uLL);
  if (v5 >= 1)
  {
    v7 = 0;
    do
    {
      if (v7 >= v4)
      {
        v8 = 0;
      }

      else
      {
        v8 = sub_C1BC(a1, v7);
      }

      v6[v7++] = v8;
    }

    while (v5 != v7);
  }

  v9 = [[CIReedSolomon alloc] initReedSolomon];
  if ([v9 encode:v6 length:v5 bytes:a2])
  {
    v10 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040FDD9F14CuLL);
    sub_C164(v10, a2);
    if (a2 >= 1)
    {
      v11 = 0;
      v12 = &v6[v4];
      do
      {
        sub_C218(v10, v11, *&v12[4 * v11]);
        ++v11;
      }

      while (a2 != v11);
    }
  }

  else
  {
    v10 = 0;
  }

  free(v6);

  return v10;
}

void *sub_AC24(int a1, int a2, int a3, void *a4)
{
  v5 = a3 - 1;
  if (a3 - 1) <= 7 && ((0x8Bu >> v5))
  {
    v6 = *(*(&off_1C6E8 + v5) + a2);
    if (v6 >= 0)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  if (v7 >= a1)
  {

    return sub_BFF4(a4, a1, v6);
  }

  else
  {
    v8 = sub_D58();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 136446722;
      v11 = "appendLengthInfo";
      v12 = 1024;
      v13 = a1;
      v14 = 1024;
      v15 = v7;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%{public}s %d is bigger than %d", &v10, 0x18u);
    }

    return 0;
  }
}

uint64_t sub_AD80(void *a1, int a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v9 = 0;
  if (v7 && a3)
  {
    if (a2 > 3)
    {
      if (a2 != 4)
      {
        if (a2 != 8)
        {
          goto LABEL_12;
        }

        if ((sub_B1C8(v7, a3) & 1) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      }

      if (sub_B118(v7, a3))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (a2 != 1)
      {
        if (a2 == 2)
        {
          if ((sub_AFC8(v7, a3) & 1) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_16;
        }

LABEL_12:
        v10 = sub_D58();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_FBDC(v10, v11, v12, v13, v14, v15, v16, v17);
        }

        goto LABEL_18;
      }

      if (sub_AE88(v7, a3))
      {
LABEL_16:
        v9 = 1;
        goto LABEL_19;
      }
    }

LABEL_18:
    v9 = 0;
  }

LABEL_19:

  return v9;
}

uint64_t sub_AE88(void *a1, void *a2)
{
  v3 = a1;
  v4 = [v3 length];
  if (v4 >= 1)
  {
    LODWORD(v5) = 0;
    do
    {
      v6 = *([v3 bytes] + v5);
      v7 = v5;
      v8 = v6 - 48;
      v5 = v5 + 2;
      if (v5 >= v4)
      {
        v9 = v7 + 1;
        if (v9 >= v4)
        {
          LODWORD(v5) = v9;
          if (!sub_BFF4(a2, v6 - 48, 4u))
          {
LABEL_12:
            v10 = 0;
            goto LABEL_13;
          }
        }

        else if ((sub_BFF4(a2, *([v3 bytes] + v9) + 10 * v8 - 48, 7u) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        if ((sub_BFF4(a2, 10 * *([v3 bytes] + v7 + 1) + 100 * v8 + *(objc_msgSend(v3, "bytes") + v5) - 528, 0xAu) & 1) == 0)
        {
          goto LABEL_12;
        }

        LODWORD(v5) = v7 + 3;
      }
    }

    while (v5 < v4);
  }

  v10 = 1;
LABEL_13:

  return v10;
}

uint64_t sub_AFC8(void *a1, void *a2)
{
  v3 = a1;
  v4 = [v3 length];
  if (v4 < 1)
  {
LABEL_12:
    v11 = 1;
    goto LABEL_19;
  }

  LODWORD(v5) = 0;
  while (1)
  {
    v6 = *([v3 bytes] + v5);
    if (v6 > 0x5F || (v7 = dword_14FD0[v6], v7 == -1))
    {
      v12 = sub_D58();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v8 = v5;
    v5 = v5 + 1;
    if (v5 < v4)
    {
      break;
    }

    if (!sub_BFF4(a2, dword_14FD0[v6], 6u))
    {
      goto LABEL_18;
    }

LABEL_11:
    if (v5 >= v4)
    {
      goto LABEL_12;
    }
  }

  v9 = *([v3 bytes] + v5);
  if (v9 <= 0x5F)
  {
    v10 = dword_14FD0[v9];
    if (v10 != -1)
    {
      if ((sub_BFF4(a2, v10 + 45 * v7, 0xBu) & 1) == 0)
      {
        goto LABEL_18;
      }

      LODWORD(v5) = v8 + 2;
      goto LABEL_11;
    }
  }

  v12 = sub_D58();
  if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_17;
  }

LABEL_16:
  sub_FC54(v12, v13, v14, v15, v16, v17, v18, v19);
LABEL_17:

LABEL_18:
  v11 = 0;
LABEL_19:

  return v11;
}

BOOL sub_B118(void *a1, void *a2)
{
  v3 = a1;
  v4 = [v3 length];
  if (v4)
  {
    v5 = v4;
    if (sub_BFF4(a2, *[v3 bytes], 8u))
    {
      v6 = 1;
      do
      {
        v7 = v6;
        if (v5 == v6)
        {
          break;
        }

        v8 = sub_BFF4(a2, *([v3 bytes] + v6), 8u);
        v6 = v7 + 1;
      }

      while ((v8 & 1) != 0);
      v9 = v7 >= v5;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

uint64_t sub_B1C8(void *a1, void *a2)
{
  v3 = a1;
  v4 = [v3 length];
  if (v4 < 1)
  {
    v12 = 1;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = *([v3 bytes] + v5);
      v7 = *([v3 bytes] + v5 + 1) | (v6 << 8);
      v8 = v7 - 33088;
      if ((v7 - 33088) >= 0x1EBD)
      {
        if ((v7 - 60352) > 0xFFFFF47F)
        {
          v8 = v7 - 49472;
        }

        else
        {
          v9 = sub_D58();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            sub_FCCC(v14, &v15, v9);
          }

          v8 = -1;
        }
      }

      v10 = sub_BFF4(a2, 192 * (v8 >> 8) + v8, 0xDu);
      v5 += 2;
      if (v10)
      {
        v11 = v5 < v4;
      }

      else
      {
        v11 = 0;
      }
    }

    while (v11);
    v12 = v10;
  }

  return v12;
}

uint64_t sub_B32C(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a2 ? 12 : 8;
  v3 = *(a1 + v2);
  v4 = a2 ? 8 : 12;
  if (v3 < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = *(a1 + v4);
  v8 = -1;
  do
  {
    if (v7 >= 1)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        if (a2)
        {
          v11 = v9 + v5 * *(a1 + 8);
        }

        else
        {
          v11 = v5 + *(a1 + 12) * v9;
        }

        v12 = *(*a1 + v11);
        v13 = v10 + 1;
        if (v10 <= 4)
        {
          v14 = v6;
        }

        else
        {
          v14 = v6 + 1;
        }

        if (v10 == 4)
        {
          v10 = 5;
        }

        else
        {
          ++v10;
        }

        if (v13 == 5)
        {
          v15 = v6 + 3;
        }

        else
        {
          v15 = v14;
        }

        if (v8 == v12)
        {
          v6 = v15;
        }

        else
        {
          v8 = v12;
          v10 = 1;
          v6 = v6;
        }

        ++v9;
      }

      while (v7 != v9);
    }

    ++v5;
  }

  while (v5 != v3);
  return v6;
}

uint64_t sub_B3EC(void *a1, void *a2, int a3, void *a4)
{
  v62 = a2;
  v6 = a1;
  v59 = a4;
  v7 = dword_153F8[a3] + 4;
  LODWORD(v72) = dword_153EC[a3] + 4;
  HIDWORD(v72) = v7;
  v61 = a3;
  v73 = dword_15404[a3] + 4;
  v71 = 3;
  v70 = 0x300000004;
  v69 = 0x500000006;
  v65 = 8;
  v68[0] = &v70;
  v68[1] = &v69;
  v68[2] = &v65;
  v8 = [v6 bytes];
  v58 = v6;
  v9 = [v6 length];
  v57 = &v57;
  v63 = (v9 + 1);
  v10 = __chkstk_darwin(v9);
  v12 = &v57 - v11;
  v67 = 0;
  v66 = 0;
  *v12 = v72;
  v64 = &v57 - v11;
  *(v12 + 2) = v73;
  v60 = v10;
  if (v10 >= 1)
  {
    v13 = v60 & 0x7FFFFFFF;
    v14 = v64 + 12;
    do
    {
      memset_pattern16(v14, &unk_15A30, 0xCuLL);
      v14 += 12;
      --v13;
    }

    while (v13);
    v15 = 1;
    v16 = v64;
    do
    {
      v17 = 0;
      v18 = &v64[12 * v15];
      do
      {
        if ((off_1C6B0[v17])(v8[v15 - 1]))
        {
          v19 = 0;
          v20 = v68[v17];
          v21 = *(&v66 + v17);
          v22 = 23649;
          do
          {
            if (v17 != v19 && *&v16[4 * v19] < v22)
            {
              v22 = *&v16[4 * v19];
            }

            ++v19;
          }

          while (v19 != 3);
          v23 = v20[v21 % dword_15410[v17]] + *&v18[4 * v17 - 12];
          v24 = *(&v72 + v17) + v22 + *v20;
          if (v23 <= v24)
          {
            *&v18[4 * v17] = v23;
            v25 = v21 + 1;
          }

          else
          {
            *&v18[4 * v17] = v24;
            v25 = 1;
          }

          *(&v66 + v17) = v25;
        }

        ++v17;
      }

      while (v17 != 3);
      ++v15;
      v16 += 12;
    }

    while (v15 != v63);
  }

  v26 = 0;
  v27 = v60;
  LODWORD(v28) = -1;
  v29 = 23649;
  do
  {
    v30 = *&v64[12 * v60 + 4 * v26];
    if (v30 >= v29)
    {
      v28 = v28;
    }

    else
    {
      v28 = v26;
    }

    if (v30 < v29)
    {
      v29 = *&v64[12 * v60 + 4 * v26];
    }

    ++v26;
  }

  while (v26 != 3);
  if (v28 == -1)
  {
    v52 = 0;
    v46 = v58;
  }

  else
  {
    v31 = +[NSMutableArray array];
    v32 = +[NSMutableArray array];
    if (v27 >= 1)
    {
      v33 = v27 & 0x7FFFFFFF;
      v34 = &v64[12 * v33 - 12];
      do
      {
        v35 = v33;
        v36 = v28;
        v37 = *&v64[12 * v33-- + 4 * v28] - (*(&v72 + v28) + *v68[v28]);
        v28 = 0;
        while (v36 == v28 || *(v34 + 4 * v28) != v37)
        {
          if (++v28 == 3)
          {
            v28 = v36;
            goto LABEL_34;
          }
        }

        v38 = [NSNumber numberWithInt:?];
        [v31 addObject:v38];

        v39 = [NSNumber numberWithInt:v33];
        [v32 addObject:v39];

LABEL_34:
        v34 -= 12;
      }

      while (v35 > 1);
    }

    v40 = [NSNumber numberWithInt:v28];
    [v31 addObject:v40];

    v41 = [NSNumber numberWithInt:0];
    [v32 addObject:v41];

    v42 = v62;
    *v62 = 0;
    v42[1] = 0;
    v43 = 0;
    v44 = [v31 count] - 2;
    v46 = v58;
    v45 = v59;
    while ((v44 + 1) >= 1)
    {
      v47 = [v31 objectAtIndex:?];
      v48 = dword_153E0[[v47 intValue]];

      v49 = [v32 objectAtIndex:v44];
      v50 = [v49 intValue];

      v51 = [v46 subdataWithRange:{v43, (v50 - v43)}];
      LOBYTE(v48) = sub_B94C(v51, v62, v48, v61, v45);

      --v44;
      v43 = v50;
      if ((v48 & 1) == 0)
      {
        v52 = 0;
        goto LABEL_41;
      }
    }

    v53 = [v31 objectAtIndex:0];
    v54 = dword_153E0[[v53 intValue]];

    v55 = [v46 subdataWithRange:{v43, v60 - v43}];
    v52 = sub_B94C(v55, v62, v54, v61, v45);

LABEL_41:
  }

  return v52;
}

uint64_t sub_B94C(void *a1, void *a2, int a3, int a4, void *a5)
{
  v9 = a1;
  v10 = a5;
  if (!sub_BFF4(a2, a3, 4u))
  {
    goto LABEL_6;
  }

  v11 = [v9 length];
  if (a3 == 8)
  {
    v11 /= 2;
  }

  if (sub_AC24(v11, a4, a3, a2))
  {
    v12 = sub_AD80(v9, a3, a2, v10);
  }

  else
  {
LABEL_6:
    v12 = 0;
  }

  return v12;
}

BOOL sub_BA44(int a1, int a2, uint64_t a3)
{
  v6 = 0;
  v7 = 0;
  v8 = &unk_1541C;
  while (2)
  {
    v9 = 0;
    v10 = a1;
    do
    {
      if (sub_C3D8(a3, v10, v6 + a2) != -1)
      {
        v11 = sub_D58();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_FD1C(v11, v12, v13, v14, v15, v16, v17, v18);
        }

        return v7;
      }

      if (!sub_C3FC(a3, v10, v6 + a2, v8[v9]))
      {
        return v7;
      }

      ++v10;
      v9 += 4;
    }

    while (v9 != 28);
    v7 = v6 > 5;
    v8 += 28;
    if (++v6 != 7)
    {
      continue;
    }

    break;
  }

  return 1;
}

BOOL sub_BB2C(int a1, int a2, uint64_t a3)
{
  v6 = 0;
  v7 = 0;
  while (sub_C3D8(a3, a1 + v7, a2) == -1)
  {
    if (sub_C3FC(a3, a1 + v7, a2, 0))
    {
      v6 = v7++ > 6;
      if (v7 != 8)
      {
        continue;
      }
    }

    return v6;
  }

  v8 = sub_D58();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_FD94(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  return v6;
}

BOOL sub_BBE4(int a1, int a2, uint64_t a3)
{
  v6 = 0;
  v7 = 0;
  while (sub_C3D8(a3, a1, a2 + v7) == -1)
  {
    if (sub_C3FC(a3, a1, a2 + v7, 0))
    {
      v6 = v7++ > 5;
      if (v7 != 7)
      {
        continue;
      }
    }

    return v6;
  }

  v8 = sub_D58();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_FE0C(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  return v6;
}

uint64_t sub_BC9C(int a1, int a2)
{
  v4 = 0;
  if (a2)
  {
    v5 = a2;
    do
    {
      if (v5 < 0)
      {
        NSLog(@"Error: number should not be negative!");
      }

      ++v4;
      v6 = v5 > 1;
      v5 >>= 1;
    }

    while (v6);
  }

  v7 = (a1 << (v4 - 1));
  if (!v7)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v8 = 0;
    v9 = v7;
    do
    {
      if (v9 < 0)
      {
        NSLog(@"Error: number should not be negative!");
      }

      ++v8;
      v6 = v9 > 1;
      v9 >>= 1;
    }

    while (v6);
    if (v8 < v4)
    {
      break;
    }

    v10 = 0;
    v11 = v7;
    do
    {
      if (v11 < 0)
      {
        NSLog(@"Error: number should not be negative!");
      }

      ++v10;
      v6 = v11 > 1;
      v11 >>= 1;
    }

    while (v6);
    while (1)
    {
      v7 = (a2 << (v10 - v4)) ^ v7;
      if (v7)
      {
        break;
      }

LABEL_17:
      if (v4 > 0)
      {
        return v7;
      }

      v10 = 0;
    }
  }

  return v7;
}

void sub_BD98(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_BDD4(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    if ((a2 & 0x80000000) == 0 && *a1 >= a2)
    {
      v2 = *(a1 + 8);
      if (v2)
      {
        return (*(v2 + (a2 >> 3)) >> (~a2 & 7)) & 1;
      }
    }
  }

  v4 = sub_D58();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_FE84();
  }

  return 0xFFFFFFFFLL;
}

unsigned int *sub_BE5C(unsigned int *result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

_DWORD *sub_BE68(_DWORD *result)
{
  if (result)
  {
    return ((*result + 7) >> 3);
  }

  return result;
}

void *sub_BE7C(void *a1, unsigned int a2)
{
  if (a2 >= 2)
  {
    v7 = sub_D58();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_FEB8();
    }

    return 0;
  }

  if (!a1)
  {
    return 0;
  }

  v3 = a2;
  v4 = *a1;
  v5 = *a1 & 7;
  if ((*a1 & 7) == 0)
  {
    result = sub_BF38(a1, 0);
    if (!result)
    {
      return result;
    }

    v4 = *a1 - 8;
    *a1 = v4;
  }

  *(a1[1] + (v4 >> 3)) |= v3 << (v5 ^ 7);
  ++*a1;
  return (&dword_0 + 1);
}

void *sub_BF38(void *result, char a2)
{
  if (result)
  {
    v3 = result;
    result = result[1];
    if (result || (*v3 = 0x2000000000, result = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL), (v3[1] = result) != 0))
    {
      v4 = *v3 >> 3;
      if (v4 == *(v3 + 1))
      {
        result = malloc_type_realloc(result, 2 * v4, 0x100004077774924uLL);
        v3[1] = result;
        if (!result)
        {
          return result;
        }

        v5 = *v3;
        *(v3 + 1) *= 2;
        v4 = v5 >> 3;
      }

      *(result + v4) = a2;
      *v3 += 8;
      return (&dword_0 + 1);
    }
  }

  return result;
}

void *sub_BFF4(void *a1, int a2, unsigned int a3)
{
  if (a3 >= 0x21)
  {
    v3 = sub_D58();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_FEEC();
    }

    return 0;
  }

  if (!a1)
  {
    return 0;
  }

  v5 = a3;
  if (a3)
  {
    do
    {
      v7 = v5 - 8;
      if (v5 < 8 || (*a1 & 7) != 0)
      {
        result = sub_BE7C(a1, (a2 >> --v5) & 1);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v5 -= 8;
        if ((sub_BF38(a1, a2 >> v7) & 1) == 0)
        {
          return 0;
        }
      }
    }

    while (v5 > 0);
  }

  return (&dword_0 + 1);
}

uint64_t sub_C0BC(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    if (*a1 == *a2)
    {
      v3 = ((*a1 + 7) >> 3);
      if (v3 >= 1)
      {
        for (i = 0; i != v3; ++i)
        {
          *(*(a1 + 8) + i) ^= *(*(a2 + 8) + i);
        }
      }

      return 1;
    }

    else
    {
      v5 = sub_D58();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_FF20();
      }

      return 0;
    }
  }

  return v2;
}

_DWORD *sub_C164(_DWORD *result, int a2)
{
  if (result)
  {
    v3 = result;
    result = malloc_type_calloc(a2, 1uLL, 0x100004077774924uLL);
    *v3 = result;
    if (result)
    {
      v3[2] = a2;
      v3[3] = a2;
      return &dword_0 + 1;
    }
  }

  return result;
}

uint64_t sub_C1BC(void *a1, int a2)
{
  if (a1)
  {
    return *(*a1 + a2);
  }

  v3 = sub_D58();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_FF54();
  }

  return 0xFFFFFFFFLL;
}

BOOL sub_C218(void *a1, int a2, char a3)
{
  if (a1)
  {
    *(*a1 + a2) = a3;
  }

  else
  {
    v4 = sub_D58();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_FF88();
    }
  }

  return a1 != 0;
}

void *sub_C278(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a1)
  {
    v8 = *a1;
    if (v8)
    {
      free(v8);
    }

    result = malloc_type_calloc(a4, 1uLL, 0x100004077774924uLL);
    *a1 = result;
    if (result)
    {
      *(a1 + 8) = a4;
      *(a1 + 12) = a4;
      if (a4 >= 1)
      {
        v10 = 0;
        do
        {
          *(*a1 + v10) = *(a2 + a3 + v10);
          ++v10;
        }

        while (a4 != v10);
      }

      return &dword_0 + 1;
    }
  }

  else
  {
    v11 = sub_D58();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_FFBC();
    }

    return 0;
  }

  return result;
}

void *sub_C344(uint64_t a1, int a2, int a3)
{
  if (a1)
  {
    result = malloc_type_calloc(a3 * a2, 1uLL, 0x100004077774924uLL);
    *a1 = result;
    if (result)
    {
      *(a1 + 8) = a2;
      *(a1 + 12) = a3;
      return &dword_0 + 1;
    }
  }

  else
  {
    v7 = sub_D58();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_FFF0();
    }

    return 0;
  }

  return result;
}

uint64_t sub_C3D8(uint64_t a1, int a2, int a3)
{
  if (a1)
  {
    return *(*a1 + a2 + *(a1 + 8) * a3);
  }

  else
  {
    return 0;
  }
}

BOOL sub_C3FC(uint64_t a1, int a2, int a3, char a4)
{
  if (a1)
  {
    *(*a1 + a2 + *(a1 + 8) * a3) = a4;
  }

  return a1 != 0;
}

BOOL sub_C41C(uint64_t a1, char a2)
{
  if (a1 && *(a1 + 12) * *(a1 + 8) >= 1)
  {
    v2 = 0;
    do
    {
      *(*a1 + v2++) = a2;
    }

    while (v2 < *(a1 + 12) * *(a1 + 8));
  }

  return a1 != 0;
}

CGImageRef sub_C45C(void *a1, void *a2)
{
  v3 = a1;
  v172 = a2;
  if (!v3)
  {
    sub_10024();
  }

  v171 = v3;
  if (![v3 length])
  {
    sub_D494(@"The message must contain at least one character.", v4, v5, v6, v7, v8, v9, v10, decode);
  }

  if (sub_D5AC(v172, @"PDF417OptionMessageDataIsCodeWordData", qword_196A0))
  {
    v11 = sub_D5AC(v172, @"PDF417OptionDataColumns", qword_15A88);
    v19 = sub_D5AC(v172, @"PDF417OptionRows", qword_15AA0);
    v20 = @"When supplying a raw message payload, the data columns and rows must also be specified";
    if (v19 != -1 && v11 != -1)
    {
      if ([v3 length] < 2)
      {
        v20 = @"Message codeword payload must contain a symbol length descriptor codeword";
      }

      else
      {
        v21 = [v3 bytes];
        v22 = *v21;
        if (v22 > [v3 length] >> 1)
        {
          v20 = @"Message codeword payload is too small for symbol length descriptor codeword.";
        }

        else
        {
          v23 = (v19 * v11 - v22);
          if (v23 < 2)
          {
            v20 = @"Symbol matrix is too small for specified parameters with supplied message codeword payload";
          }

          else
          {
            v24 = 8;
            while (sub_D56C(v24) != v23)
            {
              if (--v24 == -1)
              {
                LODWORD(v24) = -1;
                break;
              }
            }

            if (v19 * v11 <= 929)
            {
              v28 = malloc_type_malloc(2 * v11 * v19, 0x1000040BDFB0063uLL);
              memcpy(v28, v21, 2 * v22);
              v29 = &v28[v22];
              v178 = v24;
              v30 = v24;
              goto LABEL_154;
            }

            v20 = @"Specified PDF417 symbol matrix is too large";
          }
        }
      }
    }

    sub_D494(v20, v12, v13, v14, v15, v16, v17, v18, decode);
  }

  __len = v3;
  __n = v172;
  if (qword_212F8 != -1)
  {
    sub_100BC();
  }

  v185 = +[NSMutableData data];
  v25 = [__len length];
  v26 = sub_D5AC(__n, @"PDF417OptionAlwaysSpecifyCompaction", qword_196A0);
  v27 = sub_D5AC(__n, @"PDF417OptionCompactionMode", qword_15AE0);
  switch(v27)
  {
    case 1:
      [v185 appendBytes:&unk_15ABA length:2];
      sub_DD2C(__len, 0, v25, v185);
      break;
    case 2:
      if (v26)
      {
        [v185 appendBytes:&unk_15AB8 length:{2, v185}];
      }

      sub_D670(__len, 0, v25, v185, 0);
      break;
    case 3:
      sub_DB54(__len, 0, v25, 1, v185);
      break;
    default:
      if (v25 >= 1)
      {
        v31 = 0;
        v32 = 0;
        if (v26)
        {
          v33 = -1;
        }

        else
        {
          v33 = 0;
        }

        do
        {
          v34 = __len;
          v35 = [v34 bytes];
          v36 = [v34 length];
          v37 = v36 - v31;
          if (v36 <= v31 || v35[v31] - 48 > 9)
          {

            v42 = 0;
          }

          else
          {
            v38 = &v35[v31 + 1];
            v39 = ~v31 + v36;
            v40 = -1;
            while (v39)
            {
              v41 = *v38++;
              --v39;
              ++v40;
              if ((v41 - 48) >= 0xA)
              {
                v37 = v40 + 1;
                goto LABEL_89;
              }
            }

            v40 = v36 + ~v31;
LABEL_89:

            if (v40 >= 0xC)
            {
              [v185 appendBytes:&unk_15ABA length:2];
              sub_DD2C(v34, v31, v37, v185);
              v32 = 0;
              v33 = 2;
              goto LABEL_100;
            }

            v42 = v37;
          }

          v43 = v34;
          v44 = [v43 bytes];
          v45 = [v43 length];
          LODWORD(v46) = v31;
          if (v31 < v45)
          {
            v46 = v31;
            do
            {
              v47 = 0;
              v48 = v46;
              v49 = v44[v46];
              v50 = v46 << 32;
              v51 = &v44[v46 + 1];
              while (v48 + v47 < v45 && (v49 - 48) <= 9)
              {
                if (v48 + v47 + 1 < v45)
                {
                  v49 = *(v51 + v47);
                }

                v50 += 0x100000000;
                if (++v47 == 13)
                {
                  LODWORD(v46) = v48;
                  goto LABEL_59;
                }
              }

              if (v47)
              {
                v46 = v47 + v48;
              }

              else
              {
                v53 = v44[v50 >> 32];
                if (v53 > 0xD || ((1 << v53) & 0x2600) == 0)
                {
                  if (v53 - 32 > 0x5E)
                  {
                    LODWORD(v46) = v48;
                    break;
                  }

                  v46 = v47 + v48 + 1;
                }

                else
                {
                  v46 = (v48 + 1);
                }
              }
            }

            while (v46 < v45);
          }

LABEL_59:
          v37 = v46 - v31;

          if (v37 > 4 || v42 == v25)
          {
            if (v33)
            {
              [v185 appendBytes:&unk_15AB8 length:2];
              v32 = 0;
            }

            v32 = sub_D670(v43, v31, v37, v185, v32);
          }

          else
          {
            v55 = v43;
            v56 = [v55 bytes];
            v57 = [v55 length];
            v58 = v31;
            if (v31 <= v57)
            {
              v59 = v57;
            }

            else
            {
              v59 = v31;
            }

            v60 = &v56[v31];
LABEL_65:
            if (v58 == v59)
            {
              v62 = v59;
            }

            else
            {
              v61 = v56[v58];
              v62 = v58;
              v63 = (v61 - 48) <= 9 && v58 + 1 < v57;
              v64 = v56[v58];
              if (!v63)
              {
                goto LABEL_77;
              }

              v65 = 1;
              while (1)
              {
                v66 = v65 - 1;
                v64 = v60[v65];
                if ((v65 - 1) > 0xB || (v64 - 48) >= 0xA)
                {
                  break;
                }

                ++v65;
                if (v58 + v65 >= v57)
                {
                  v66 = v65 - 1;
                  break;
                }
              }

              if (v66 <= 0xB)
              {
LABEL_77:
                v67 = 0;
                ++v58;
                while (v67 != 5)
                {
                  if (v64 <= 0xDu && ((1 << v64) & 0x2600) != 0 || (v64 - 32) <= 0x5E)
                  {
                    ++v67;
                    v64 = v61;
                    if (v62 + v67 < v57)
                    {
                      continue;
                    }
                  }

                  ++v60;
                  if (v67 < 5)
                  {
                    goto LABEL_65;
                  }

                  break;
                }
              }
            }

            v37 = v62 - v31;

            v68 = v37 > 1;
            if (v37 <= 1)
            {
              v37 = 1;
            }

            if (v33 || v68)
            {
              sub_DB54(v55, v31, v37, v33, v185);
              v32 = 0;
              v33 = 1;
              goto LABEL_100;
            }

            sub_DB54(v55, v31, 1, 0, v185);
          }

          v33 = 0;
LABEL_100:
          v31 = (v37 + v31);
        }

        while (v31 < v25);
      }

      break;
  }

  v69 = [v185 length] >> 1;
  v77 = sub_D5AC(__n, @"PDF417OptionErrorCorrectionLevel", qword_15B00);
  if (v77 == -1)
  {
    if (v69 >= 41)
    {
      if (v69 >= 0xA1)
      {
        if (v69 >= 0x141)
        {
          if (v69 >= 0x360)
          {
            v167 = @"It is not possible to encode a message this long with the recommended level of error correction";
LABEL_222:
            sub_D494(v167, v70, v71, v72, v73, v74, v75, v76, decode);
          }

          v77 = 5;
        }

        else
        {
          v77 = 4;
        }
      }

      else
      {
        v77 = 3;
      }
    }

    else
    {
      v77 = 2;
    }
  }

  v178 = v77;
  v30 = v77;
  v78 = sub_D56C(v77);
  v79 = v78;
  if (v78 + v69 >= 929)
  {
    v167 = @"Message is longer than is supportable by barcode format.";
    goto LABEL_222;
  }

  LODWORD(v23) = v78;
  v80 = __n;
  __lena = sub_D5AC(v80, @"PDF417OptionUseCompactStyle", qword_196A0);
  v81 = sub_D5AC(v80, @"PDF417OptionDataColumns", qword_15A88);
  LODWORD(v82) = v81;
  if (v81 == -1)
  {
    v83 = v80;
    v84 = sub_D5AC(v83, @"PDF417OptionUseCompactStyle", qword_196A0);
    v85 = 39;
    if (!v84)
    {
      v85 = 73;
    }

    v187 = vaddq_s64(vdupq_n_s64(v85), xmmword_15A60);
    v188 = v187.i64[0];
    v86 = sub_D5AC(v83, @"PDF417OptionMinWidth", v187.i64);

    if (__lena)
    {
      v87 = -39;
    }

    else
    {
      v87 = -73;
    }

    if (__lena)
    {
      v88 = -23;
    }

    else
    {
      v88 = -57;
    }

    v89 = v83;
    v90 = sub_D5AC(v89, @"PDF417OptionUseCompactStyle", qword_196A0);
    v91 = 39;
    if (!v90)
    {
      v91 = 73;
    }

    v187.i64[0] = v91 + 17;
    v187.i64[1] = v91 + 510;
    v188 = v91 + 510;
    v92 = sub_D5AC(v89, @"PDF417OptionMaxWidth", v187.i64);
    v82 = (v86 + v88) / 17;

    v81 = (v92 + v87) / 17;
  }

  v93 = sub_D5AC(v80, @"PDF417OptionRows", qword_15AA0);
  v94 = v93;
  if (v93 == -1)
  {
    v187 = xmmword_15A70;
    v188 = 13;
    v95 = sub_D5AC(v80, @"PDF417OptionMinHeight", v187.i64);
    v187 = xmmword_15A70;
    v188 = 274;
    v94 = (v95 - 2) / 3;
    v93 = (sub_D5AC(v80, @"PDF417OptionMaxHeight", v187.i64) - 4) / 3;
  }

  v96 = [v80 objectForKey:@"PDF417OptionPreferredAspectRatio"];
  [v96 floatValue];
  v98 = v97;

  v99 = 3.0;
  if (v98 > 0.0)
  {
    v99 = v98;
  }

  if (v81 < v82)
  {
    goto LABEL_215;
  }

  if (__lena)
  {
    v100 = 39;
  }

  else
  {
    v100 = 73;
  }

  if (v82 < 1)
  {
    __assert_rtn("CalculateNumberOfRows", "PDF417.m", 1653, "dataCodeWordsWide>0");
  }

  v11 = 0;
  v101 = v82;
  v102 = v82 & 0x7FFFFFFF;
  v103 = v81 <= v102 ? v82 & 0x7FFFFFFF : v81;
  v19 = 0;
  v104 = v103 + 1;
  v105 = v100 + 17 * v102;
  v106 = 3.4028e38;
  do
  {
    v107 = (v79 + v69 + v102) / v102;
    if (v94 > v107)
    {
      LODWORD(v107) = v94;
    }

    if (v107 <= v93)
    {
      v108 = v105 / (3 * v107 + 4);
      if (!(v11 | v19))
      {
        goto LABEL_147;
      }

      v109 = v108 - v99;
      if ((v108 - v99) < 0.0)
      {
        v109 = -(v108 - v99);
      }

      v110 = v106 - v99;
      if ((v106 - v99) < 0.0)
      {
        v110 = -(v106 - v99);
      }

      if (v109 <= v110)
      {
LABEL_147:
        v11 = v101;
        v19 = v107;
        v106 = v105 / (3 * v107 + 4);
      }
    }

    ++v102;
    v105 += 17;
    v101 = v102;
  }

  while (v104 != v102);
  if (!(v11 | v19))
  {
LABEL_215:
    v167 = @"Unable to fit message into space available!";
    goto LABEL_222;
  }

  v111 = v19 * v11 - v79;
  v112 = v69 + 1;
  if (v111 <= v69 + 1)
  {
    v113 = 0;
  }

  else
  {
    v113 = v111 + ~v69;
  }

  v114 = v112 + v113;
  v28 = malloc_type_malloc(2 * (v79 + (v112 + v113)), 0x1000040BDFB0063uLL);
  v22 = v114;
  *v28 = v114;
  memcpy(v28 + 1, [v185 bytes], objc_msgSend(v185, "length"));
  v115 = [v185 length] + (v28 + 1);
  memset_pattern4(v115, &unk_196B8, 2 * v113);
  v29 = &v115[2 * v113];

LABEL_154:
  bzero(v29, 2 * v23);
  v116 = sub_D56C(v30);
  if (v22)
  {
    v117 = 0;
    v118 = *(&off_1C7F8 + v30);
    v119 = *v118;
    v120 = v116 - 1;
    v121 = &v118[v116 - 1];
    do
    {
      v122 = *v29 + v28[v117];
      v123 = v122 - 929 * ((4623216 * v122) >> 32);
      v124 = v121;
      v125 = v29 + 1;
      v126 = v116 + 1;
      if (v116 >= 2)
      {
        do
        {
          v127 = *v124--;
          *(v125 + 2 * v120 - 2 * v116) = (*v125 + 929 * (v127 * v123 / 929) - v127 * v123 + 929) % 0x3A1;
          --v126;
          ++v125;
        }

        while (v126 > 2);
      }

      v128 = v123 * v119 % 929;
      if ((929 - v128) >= 0x3A1)
      {
        v128 = -v128;
      }

      else
      {
        LOWORD(v128) = 929 - v128;
      }

      v29[v120] = v128;
      ++v117;
    }

    while (v117 != v22);
  }

  if (v116 >= 1)
  {
    v129 = v116;
    do
    {
      if (*v29)
      {
        *v29 = 929 - *v29;
      }

      ++v29;
      --v129;
    }

    while (v129);
  }

  v130 = sub_D5AC(v172, @"PDF417OptionUseCompactStyle", qword_196A0);
  v131 = 17 * v11;
  if (v130)
  {
    v132 = 39;
  }

  else
  {
    v132 = 73;
  }

  v133 = v132 + v131;
  __na = 4 * (v132 + v131);
  height = 3 * v19 + 4;
  v134 = malloc_type_malloc(__na * height, 0xC4BDCE74uLL);
  __lenb = 8 * v133;
  memset_pattern4(v134, &unk_16B10, 8 * v133);
  v135 = &v134[8 * v133];
  v170 = v133;
  if (v19 >= 1)
  {
    v136 = v19;
    v137 = 0;
    v186 = 0;
    v138 = 3 * v178;
    v179 = v136;
    LODWORD(v136) = v136 - 1;
    v176 = v136 / 3;
    v175 = v138 + v136 % 3;
    v174 = v11 - 1;
    v173 = 12 * v133;
    v139 = &v134[136 * v11 + 8 + 8 * v132];
    v177 = v11;
    do
    {
      *v135 = -1;
      v140 = 16;
      v141 = v139;
      do
      {
        if (((1 << v140) & 0x1FEA8) != 0)
        {
          v142 = -16777216;
        }

        else
        {
          v142 = -1;
        }

        *v141++ = v142;
        --v140;
      }

      while (v140 != -1);
      v143 = v137 % 3;
      v144 = 30 * (v137 / 3);
      v145 = v175;
      if (v137 % 3 == 1)
      {
        v146 = v175;
      }

      else
      {
        v146 = v174;
      }

      v147 = v176;
      if (v143 == 1)
      {
        v145 = v176;
      }

      if (v143)
      {
        v147 = v146;
        v148 = v145;
      }

      else
      {
        v148 = v174;
      }

      v149 = dword_16B14[929 * v143 + v144 + v147];
      for (i = 16; i != -1; --i)
      {
        if ((v149 >> i))
        {
          v151 = -16777216;
        }

        else
        {
          v151 = -1;
        }

        *v141++ = v151;
      }

      if (v11 >= 1)
      {
        v152 = 0;
        v153 = v186;
        do
        {
          v154 = dword_16B14[929 * v143 + v28[v153]];
          for (j = 16; j != -1; --j)
          {
            if ((v154 >> j))
            {
              v156 = -16777216;
            }

            else
            {
              v156 = -1;
            }

            *v141++ = v156;
          }

          ++v153;
          ++v152;
        }

        while (v152 != v11);
        v186 = v153;
      }

      if (v130)
      {
        *v141++ = -16777216;
      }

      else
      {
        v157 = dword_16B14[929 * v143 + v144 + v148];
        for (k = 16; k != -1; --k)
        {
          if ((v157 >> k))
          {
            v159 = -16777216;
          }

          else
          {
            v159 = -1;
          }

          *v141++ = v159;
        }

        for (m = 17; m != -1; --m)
        {
          if (((1 << m) & 0x3FA29) != 0)
          {
            v161 = -16777216;
          }

          else
          {
            v161 = -1;
          }

          *v141++ = v161;
        }
      }

      *v141 = -1;
      memcpy(&v135[__na], v135, __na);
      memcpy(&v135[__lenb], v135, __na);
      v135 += v173;
      ++v137;
      v139 += v173;
      v11 = v177;
    }

    while (v137 != v179);
  }

  memset_pattern4(v135, &unk_16B10, __lenb);
  v162 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v134, __na * height, kCFAllocatorMalloc);
  v163 = CGDataProviderCreateWithCFData(v162);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v165 = CGImageCreate(v170, height, 8uLL, 0x20uLL, __na, DeviceRGB, 0x2002u, v163, 0, 0, kCGRenderingIntentDefault);
  CFRelease(DeviceRGB);
  CFRelease(v163);
  CFRelease(v162);
  free(v28);

  return v165;
}

void sub_D448(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2 == 1)
  {
    v12 = objc_begin_catch(a1);
    if (a12)
    {
      *a12 = v12;
    }

    objc_end_catch();
    JUMPOUT(0xD370);
  }

  _Unwind_Resume(a1);
}

void sub_D494(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = [[NSString alloc] initWithFormat:a1 arguments:&a9];
  v13[0] = NSLocalizedDescriptionKey;
  v10 = [@"Unable to create barcode. " stringByAppendingString:v9];
  v13[1] = NSLocalizedFailureReasonErrorKey;
  v14[0] = v10;
  v14[1] = v9;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];

  v12 = [NSError errorWithDomain:@"com.apple.pdf417" code:0 userInfo:v11];
  objc_exception_throw(v12);
}

uint64_t sub_D56C(unint64_t a1)
{
  v1 = a1;
  if (a1 >= 9)
  {
    sub_100D0();
  }

  return 1 << (v1 + 1);
}

uint64_t sub_D5AC(void *a1, void *a2, uint64_t *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v5 objectForKey:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 integerValue];
    v17 = v9;
    if (v9 < *a3)
    {
      v20 = *a3;
      sub_D494(@"Specified %@, %ld, is less than the minimum, %ld.", v10, v11, v12, v13, v14, v15, v16, v6);
    }

    if (v9 > a3[1])
    {
      v19 = a3[1];
      sub_D494(@"Specified %@, %ld, is greater than the maximum, %ld.", v10, v11, v12, v13, v14, v15, v16, v6);
    }
  }

  else
  {
    v17 = a3[2];
  }

  return v17;
}

uint64_t sub_D670(void *a1, int a2, int a3, void *a4, uint64_t a5)
{
  v9 = a1;
  v58[0] = 0;
  v58[1] = v58;
  v58[2] = 0x2020000000;
  v58[3] = &v59;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_DFD0;
  v50[3] = &unk_1C7B0;
  v52 = &v54;
  v39 = a4;
  v51 = v39;
  v53 = v58;
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_E044;
  v46[3] = &unk_1C7D8;
  v48 = &v54;
  v10 = objc_retainBlock(v50);
  v47 = v10;
  v49 = v58;
  v11 = objc_retainBlock(v46);
  v12 = v9;
  v41 = v9;
  v42 = v10;
  v13 = [v9 bytes];
  v40 = &v38;
  v21 = 0;
  v45 = a2 + 1;
  v22 = &v13[a2];
  v43 = v22;
  v44 = v13;
LABEL_2:
  v23 = &v22[v21];
  do
  {
    v25 = *v23++;
    v24 = v25;
    v26 = v25;
    switch(a5)
    {
      case 0:
        if (v26 != 32 && (v24 - 65) > 0x19)
        {
          if ((v24 - 97) < 0x1A)
          {
LABEL_55:
            a5 = 1;
            (v11[2])(v11, 27, 0);
            v22 = v43;
            goto LABEL_2;
          }

          if (v26 < 0)
          {
            goto LABEL_62;
          }

          if (*(&xmmword_21300 + v24) != 255)
          {
LABEL_56:
            a5 = 2;
            (v11[2])(v11, 28, 0);
            v22 = v43;
            goto LABEL_2;
          }

          if (*(&xmmword_21380 + v24) == 255)
          {
            goto LABEL_62;
          }

LABEL_51:
          (v11[2])(v11, 29, 0);
          v27 = 0;
          LOBYTE(v26) = *(&xmmword_21380 + v24);
          goto LABEL_52;
        }

        v29 = v26 == 32;
        if (v26 == 32)
        {
          LOBYTE(v26) = 26;
        }

        v30 = -65;
        goto LABEL_23;
      case 1:
        if (v26 != 32 && (v24 - 97) > 0x19)
        {
          if ((v24 - 65) <= 0x19)
          {
            (v11[2])(v11, 27, 0);
            v27 = 4294967231;
            goto LABEL_52;
          }

          if (v26 < 0)
          {
            goto LABEL_62;
          }

          if (*(&xmmword_21300 + v24) != 255)
          {
            goto LABEL_56;
          }

          if (*(&xmmword_21380 + v24) == 255)
          {
            goto LABEL_62;
          }

          goto LABEL_51;
        }

        v29 = v26 == 32;
        if (v26 == 32)
        {
          LOBYTE(v26) = 26;
        }

        v30 = -97;
LABEL_23:
        if (v29)
        {
          v27 = 0;
        }

        else
        {
          v27 = v30;
        }

        goto LABEL_52;
      case 2:
        if ((v26 & 0x80000000) == 0 && *(&xmmword_21300 + v24) != 255)
        {
          v27 = 0;
          LOBYTE(v26) = *(&xmmword_21300 + v24);
          goto LABEL_52;
        }

        if (v26 == 32 || (v24 - 65) < 0x1A)
        {
          v34 = 28;
LABEL_57:
          (v11[2])(v11, v34, 0);
          a5 = 0;
          v22 = v43;
          goto LABEL_2;
        }

        if ((v24 - 97) <= 0x19)
        {
          goto LABEL_55;
        }

        if (v26 < 0 || *(&xmmword_21380 + v24) == 255)
        {
LABEL_62:
          sub_D494(@"Message cannot be encoded with PDF417CompactionModeText because it contains character '%d'", v14, v15, v16, v17, v18, v19, v20, v24);
        }

        if (v45 + v21 < a3)
        {
          v33 = v44[v45 + v21];
          if ((v33 & 0x8000000000000000) == 0 && *(&xmmword_21380 + v33) != 255)
          {
            a5 = 3;
            (v11[2])(v11, 25, 0);
            v22 = v43;
            goto LABEL_2;
          }
        }

        goto LABEL_51;
    }

    if (v26 < 0 || (v26 = *(&xmmword_21380 + v24), v26 == 255))
    {
      v34 = 29;
      goto LABEL_57;
    }

    v27 = 0;
LABEL_52:
    (v11[2])(v11, v26, v27);
    ++v21;
  }

  while (v21 < a3);
  v35 = v42;
  if (v55[3])
  {
    (v11[2])(v11, 29, 0);
  }

  v35[2](v35);

  v36 = v41;
  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(v58, 8);

  return a5;
}

void sub_DB14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

void sub_DB54(void *a1, int a2, int a3, int a4, void *a5)
{
  v9 = a5;
  v10 = [a1 bytes];
  v11 = v10;
  if (a3 != 1 || a4)
  {
    HIDWORD(v12) = -1431655765 * a3 + 715827882;
    LODWORD(v12) = HIDWORD(v12);
    if ((v12 >> 1) >= 0x2AAAAAAB)
    {
      v13 = &unk_15AFA;
    }

    else
    {
      v13 = &unk_15AF8;
    }

    [v9 appendBytes:v13 length:2];
    if (a3 <= 5)
    {
      v14 = a3 + a2;
    }

    else
    {
      v14 = a3 + a2;
      v15 = a2;
      v16 = &v11[a2];
      do
      {
        v17 = 0;
        v18 = 0;
        do
        {
          v18 = v16[v17++] | (v18 << 8);
        }

        while (v17 != 6);
        for (i = 4; i != -1; --i)
        {
          v26[i] = v18 % 900;
          v18 /= 900;
        }

        [v9 appendBytes:v26 length:10];
        v20 = v15 + 6;
        v21 = v14 - v15;
        v16 += 6;
        v15 += 6;
      }

      while (v21 > 11);
      a2 = v20;
    }

    v22 = __OFSUB__(v14, a2);
    v23 = v14 - a2;
    if (!((v23 < 0) ^ v22 | (v23 == 0)))
    {
      v24 = &v11[a2];
      do
      {
        v25 = *v24++;
        v26[0] = v25;
        [v9 appendBytes:v26 length:2];
        --v23;
      }

      while (v23);
    }
  }

  else
  {
    v26[0] = 913;
    v26[1] = v10[a2];
    [v9 appendBytes:v26 length:4];
  }
}

void sub_DD2C(void *a1, int a2, int a3, void *a4)
{
  v7 = a1;
  v33 = a4;
  v31 = v7;
  v8 = [v7 bytes];
  v30[1] = v30;
  if (a3 >= 1)
  {
    v9 = 0;
    v32 = &v8[a2];
    do
    {
      if (a3 - v9 >= 44)
      {
        v10 = 44;
      }

      else
      {
        v10 = a3 - v9;
      }

      v35 = 49;
      __memcpy_chk();
      v36[v10] = 0;
      if (a3 - v9 > 0)
      {
        if (v10 <= 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = v10;
        }

        v19 = &v35;
        do
        {
          v21 = *v19++;
          v20 = v21;
          if ((v21 - 58) <= 0xF5u)
          {
            sub_D494(@"Message cannot be encoded with PDF417CompactionModeNumeric because it contains character '%d'", v11, v12, v13, v14, v15, v16, v17, v20);
          }

          --v18;
        }

        while (v18);
      }

      v22 = 0;
      v23 = 15;
      while (1)
      {
        v24 = v35;
        if (!v35)
        {
          break;
        }

        v25 = 0;
        v26 = 1;
        v27 = v36;
        do
        {
          v25 = 10 * v25 + v24 - 48;
          if (v25 >= 900)
          {
            v26 = 0;
            v28 = v25 / 0x384uLL + 48;
            v25 %= 0x384uLL;
          }

          else
          {
            v28 = 48;
          }

          *(v27 - 1) = v28;
          v29 = *v27++;
          v24 = v29;
        }

        while (v29);
        v34[14 - v22++] = v25;
        --v23;
        if (v26)
        {
          goto LABEL_23;
        }
      }

      *(v34 + ((0xE00000000 - (v22 << 32)) >> 31)) = 0;
      LODWORD(v22) = v22 + 1;
      --v23;
LABEL_23:
      [v33 appendBytes:&v34[v23] length:2 * (v22 & 0x7FFFFFFF)];
      v9 += v10;
    }

    while (v9 < a3);
  }
}

void sub_DF48(id a1)
{
  v1 = 0;
  *&v2 = -1;
  *(&v2 + 1) = -1;
  xmmword_21360 = v2;
  unk_21370 = v2;
  xmmword_21340 = v2;
  unk_21350 = v2;
  xmmword_21320 = v2;
  unk_21330 = v2;
  xmmword_21300 = v2;
  *algn_21310 = v2;
  do
  {
    if (((0x3A000000uLL >> v1) & 1) == 0)
    {
      *(&xmmword_21300 + a0123456789[v1]) = v1;
    }

    ++v1;
  }

  while (v1 != 30);
  v3 = 0;
  *&v4 = -1;
  *(&v4 + 1) = -1;
  xmmword_213E0 = v4;
  unk_213F0 = v4;
  xmmword_213C0 = v4;
  unk_213D0 = v4;
  xmmword_213A0 = v4;
  unk_213B0 = v4;
  xmmword_21380 = v4;
  *algn_21390 = v4;
  do
  {
    *(&xmmword_21380 + asc_13729[v3]) = v3;
    ++v3;
  }

  while (v3 != 29);
}

id sub_DFD0(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = a1 + 40;
  v4 = *(*(v3 + 8) + 24);
  if (v4)
  {
    sub_1015C(v2, &v6);
    v4 = v6;
  }

  result = [*(a1 + 32) appendBytes:*(*(*(a1 + 48) + 8) + 24) length:2 * (v4 / 2)];
  *(*(*(a1 + 40) + 8) + 24) = 0;
  return result;
}

uint64_t sub_E044(uint64_t result, __int16 a2, __int16 a3)
{
  v5 = result;
  v6 = *(*(*(result + 40) + 8) + 24);
  if (v6 < 128)
  {
    v8 = v6 / 2;
  }

  else
  {
    v7 = *(result + 32);
    result = (*(v5[4] + 16))();
    v8 = 0;
    v6 = *(*(v5[5] + 8) + 24);
  }

  v9 = a2 + a3;
  if (v6)
  {
    v10 = *(*(v5[6] + 8) + 24);
    *(v10 + 2 * v8) += v9;
  }

  else
  {
    *(*(*(v5[6] + 8) + 24) + 2 * v8) = 30 * v9;
  }

  ++*(*(v5[5] + 8) + 24);
  return result;
}

CGImageRef sub_E104(void *a1, unint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (![v5 length])
  {
    v47 = @"The message must contain at least one character.";
    goto LABEL_21;
  }

  if ([v5 length] > 0x1000)
  {
    v47 = @"The message is too long for a Code128 barcode.";
LABEL_21:
    sub_E3DC(v47, v6, v7, v8, v9, v10, v11, v12, decode);
  }

  v13 = [v5 bytes];
  v14 = [v5 length];
  v22 = v14;
  if (v14)
  {
    v23 = v13;
    v24 = v14;
    do
    {
      v25 = *v23++;
      if (v25 < 0)
      {
        sub_E3DC(@"The message contains non-7bit ascii characters.", v15, v16, v17, v18, v19, v20, v21, decode);
      }

      --v24;
    }

    while (v24);
  }

  v26 = sub_E4B4(v13, v14, a2, 0);
  v27 = a3 + 2 * a2;
  v28 = 4 * v26;
  Mutable = CFDataCreateMutable(0, v28 * v27);
  CFDataSetLength(Mutable, v28 * v27);
  if (!Mutable)
  {
    sub_E3DC(@"Could not allocate memory for image.", v30, v31, v32, v33, v34, v35, v36, decode);
  }

  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_ECE4;
  v49[3] = &unk_1C840;
  v49[4] = MutableBytePtr;
  sub_E4B4(v13, v22, a2, v49);
  if (v27 >= 2)
  {
    v38 = a3 + 2 * a2 - 1;
    v39 = 4 * v26;
    do
    {
      memcpy(&MutableBytePtr[v39], MutableBytePtr, v28);
      v39 += v28;
      --v38;
    }

    while (v38);
  }

  if (a2)
  {
    v40 = MutableBytePtr;
    v41 = a2;
    do
    {
      memset(v40, 255, v28);
      v40 += v28;
      --v41;
    }

    while (v41);
  }

  if (v27 >= a2)
  {
    v42 = &MutableBytePtr[4 * (v27 - a2) * v26];
    do
    {
      memset(v42, 255, v28);
      v42 += v28;
      --a2;
    }

    while (a2);
  }

  v43 = CGDataProviderCreateWithCFData(Mutable);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v45 = CGImageCreate(v26, v27, 8uLL, 0x20uLL, v28, DeviceRGB, 1u, v43, 0, 0, kCGRenderingIntentDefault);
  CGColorSpaceRelease(DeviceRGB);
  CGDataProviderRelease(v43);
  CFRelease(Mutable);

  return v45;
}

void sub_E388(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(a1);
    if (a11)
    {
      *a11 = v11;
    }

    objc_end_catch();
    JUMPOUT(0xE324);
  }

  _Unwind_Resume(a1);
}

void sub_E3DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = [[NSString alloc] initWithFormat:a1 arguments:&a9];
  v13[0] = NSLocalizedDescriptionKey;
  v10 = [@"Unable to create barcode. " stringByAppendingString:v9];
  v13[1] = NSLocalizedFailureReasonErrorKey;
  v14[0] = v10;
  v14[1] = v9;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];

  v12 = [NSError errorWithDomain:@"com.apple.code128" code:0 userInfo:v11];
  objc_exception_throw(v12);
}

uint64_t sub_E4B4(char *a1, unint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &stru_1C880;
  }

  v87 = 0;
  v86 = 0;
  if (a3)
  {
    v9 = 0;
    do
    {
      v8->invoke(v8, v9++, 0, 0);
    }

    while (a3 != v9);
    v87 = v9;
  }

  v10 = 10000000000;
  if (!a2)
  {
    v71 = 0;
    goto LABEL_110;
  }

  do
  {
    do
    {
      while (1)
      {
        v11 = 0;
        while (a1[v11] <= 0x5Fu)
        {
          if (a2 == ++v11)
          {
            v11 = a2;
            break;
          }
        }

        v12 = 0;
        while (a1[v12] >= 32)
        {
          if (a2 == ++v12)
          {
            v12 = a2;
            break;
          }
        }

        v13 = 0;
        while (a1[v13] - 48 <= 9)
        {
          if (a2 == ++v13)
          {
            v13 = a2;
            break;
          }
        }

        if (v86 != 66)
        {
          break;
        }

        if (v13 >= 6 && (v13 & 1) == 0)
        {
          v17 = v87;
          BYTE1(v86) = (SBYTE1(v86) + 99 * HIDWORD(v86)++) % 103;
          v26 = 0x25AA9C926;
          v27 = 10000000000;
          v28 = "Code C";
          do
          {
            v29 = v26 >= v27;
            if (v26 < v27)
            {
              v30 = 0;
            }

            else
            {
              v30 = v27;
            }

            v26 -= v30;
            v8->invoke(v8, v17, v29, v28);
            v28 = 0;
            v17 = (v17 + 1);
            v20 = v27 > 9;
            v27 /= 0xAuLL;
          }

          while (v20);
          goto LABEL_46;
        }

        if (!v12)
        {
          v33 = v87;
          BYTE1(v86) = (SBYTE1(v86) + 101 * HIDWORD(v86)++) % 103;
          v45 = 0x295ABFCA6;
          v46 = 10000000000;
          v47 = "Code A";
          do
          {
            v48 = v45 >= v46;
            if (v45 < v46)
            {
              v49 = 0;
            }

            else
            {
              v49 = v46;
            }

            v45 -= v49;
            v8->invoke(v8, v33, v48, v47);
            v47 = 0;
            v33 = (v33 + 1);
            v20 = v46 > 9;
            v46 /= 0xAuLL;
          }

          while (v20);
          goto LABEL_85;
        }

LABEL_104:
        v84 = *a1;
        v69 = *a1++;
        v70 = v69 - 32;
        if (v69 <= 31)
        {
          v58 = -1;
        }

        else
        {
          v58 = v70;
        }

LABEL_107:
        sub_ED24(v58, &v86, v8);
        if (!--a2)
        {
          goto LABEL_108;
        }
      }

      if (v86 == 65)
      {
        if (v13 >= 6 && (v13 & 1) == 0)
        {
          v17 = v87;
          BYTE1(v86) = (SBYTE1(v86) + 99 * HIDWORD(v86)++) % 103;
          v21 = 0x25AA9C926;
          v22 = 10000000000;
          v23 = "Code C";
          do
          {
            v24 = v21 >= v22;
            if (v21 < v22)
            {
              v25 = 0;
            }

            else
            {
              v25 = v22;
            }

            v21 -= v25;
            v8->invoke(v8, v17, v24, v23);
            v23 = 0;
            v17 = (v17 + 1);
            v20 = v22 > 9;
            v22 /= 0xAuLL;
          }

          while (v20);
          goto LABEL_46;
        }

        if (v11)
        {
          goto LABEL_86;
        }

        v39 = v87;
        BYTE1(v86) = (SBYTE1(v86) + 100 * HIDWORD(v86)++) % 103;
        v40 = 0x25AAB28B6;
        v41 = 10000000000;
        v42 = "Code B";
        do
        {
          v43 = v40 >= v41;
          if (v40 < v41)
          {
            v44 = 0;
          }

          else
          {
            v44 = v41;
          }

          v40 -= v44;
          v8->invoke(v8, v39, v43, v42);
          v42 = 0;
          v39 = (v39 + 1);
          v20 = v41 > 9;
          v41 /= 0xAuLL;
        }

        while (v20);
LABEL_103:
        v87 = v39;
        LOBYTE(v86) = 66;
        goto LABEL_104;
      }

      if (!v86)
      {
        if (v13 >= 2)
        {
          BYTE1(v86) = 105;
          HIDWORD(v86) = 1;
          v14 = 0x2903F6FDCLL;
          v15 = 10000000000;
          v16 = "StartC";
          v17 = v87;
          do
          {
            v18 = v14 >= v15;
            if (v14 < v15)
            {
              v19 = 0;
            }

            else
            {
              v19 = v15;
            }

            v14 -= v19;
            v8->invoke(v8, v17, v18, v16);
            v16 = 0;
            v17 = (v17 + 1);
            v20 = v15 > 9;
            v15 /= 0xAuLL;
          }

          while (v20);
LABEL_46:
          v87 = v17;
          LOBYTE(v86) = 67;
          break;
        }

        if (v11 > v12)
        {
          BYTE1(v86) = 103;
          HIDWORD(v86) = 1;
          v50 = 0x2903F44E4;
          v51 = 10000000000;
          v52 = "StartA";
          v33 = v87;
          do
          {
            v53 = v50 >= v51;
            if (v50 < v51)
            {
              v54 = 0;
            }

            else
            {
              v54 = v51;
            }

            v50 -= v54;
            v8->invoke(v8, v33, v53, v52);
            v52 = 0;
            v33 = (v33 + 1);
            v20 = v51 > 9;
            v51 /= 0xAuLL;
          }

          while (v20);
LABEL_85:
          v87 = v33;
          LOBYTE(v86) = 65;
LABEL_86:
          v83 = *a1;
          v55 = *a1++;
          v56 = v55 - 32;
          v57 = v55 | 0x40;
          if (v55 >= 0x32)
          {
            v58 = -1;
          }

          else
          {
            v58 = v57;
          }

          if ((v56 & 0xC0) == 0)
          {
            v58 = v56;
          }

          goto LABEL_107;
        }

        BYTE1(v86) = 104;
        HIDWORD(v86) = 1;
        v59 = 11010010000;
        v60 = 10000000000;
        v61 = "StartB";
        v39 = v87;
        do
        {
          v62 = v59 >= v60;
          if (v59 < v60)
          {
            v63 = 0;
          }

          else
          {
            v63 = v60;
          }

          v59 -= v63;
          v8->invoke(v8, v39, v62, v61);
          v61 = 0;
          v39 = (v39 + 1);
          v20 = v60 > 9;
          v60 /= 0xAuLL;
        }

        while (v20);
        goto LABEL_103;
      }

      if (v13 <= 1 && v86 == 67)
      {
        if (v11 > v12)
        {
          BYTE1(v86) = (SBYTE1(v86) + 101 * HIDWORD(v86)++) % 103;
          v33 = v87;
          v34 = 0x295ABFCA6;
          v35 = 10000000000;
          v36 = "Code A";
          do
          {
            v37 = v34 >= v35;
            if (v34 < v35)
            {
              v38 = 0;
            }

            else
            {
              v38 = v35;
            }

            v34 -= v38;
            v8->invoke(v8, v33, v37, v36);
            v36 = 0;
            v33 = (v33 + 1);
            v20 = v35 > 9;
            v35 /= 0xAuLL;
          }

          while (v20);
          goto LABEL_85;
        }

        BYTE1(v86) = (SBYTE1(v86) + 100 * HIDWORD(v86)++) % 103;
        v39 = v87;
        v64 = 0x25AAB28B6;
        v65 = 10000000000;
        v66 = "Code B";
        do
        {
          v67 = v64 >= v65;
          if (v64 < v65)
          {
            v68 = 0;
          }

          else
          {
            v68 = v65;
          }

          v64 -= v68;
          v8->invoke(v8, v39, v67, v66);
          v66 = 0;
          v39 = (v39 + 1);
          v20 = v65 > 9;
          v65 /= 0xAuLL;
        }

        while (v20);
        goto LABEL_103;
      }
    }

    while (v86 != 67);
    v82 = *a1;
    v85 = a1[1];
    v31 = v85 + 10 * *a1 - 16;
    if ((v85 - 58) < 0xF6u || (*a1 - 58) < 0xF6u)
    {
      v31 = -1;
    }

    sub_ED24(v31, &v86, v8);
    a1 += 2;
    a2 -= 2;
  }

  while (a2);
LABEL_108:
  v71 = BYTE1(v86);
LABEL_110:
  sub_ED24(v71, &v86, v8);
  p_invoke = &v8->invoke;
  v73 = 0x28FA85FA2;
  v74 = v87;
  v75 = "Stop";
  do
  {
    v76 = v73 >= v10;
    if (v73 < v10)
    {
      v77 = 0;
    }

    else
    {
      v77 = v10;
    }

    v73 -= v77;
    v8->invoke(v8, v74, v76, v75);
    v75 = 0;
    v74 = (v74 + 1);
    v20 = v10 > 9;
    v10 /= 0xAuLL;
  }

  while (v20);
  v87 = v74;
  invoke = v8->invoke;
  v79 = v8;
  invoke();
  v8->invoke(v79, (v74 + 1), 1, 0);

  v80 = (v74 + 2);
  v87 = v74 + 2;
  if (a3)
  {
    do
    {
      (*p_invoke)(v79, v80, 0, 0);
      v80 = (v80 + 1);
      --a3;
    }

    while (a3);
    v87 = v80;
  }

  return v80;
}

uint64_t sub_ECE4(uint64_t result, int a2, char a3)
{
  v3 = 4 * a2;
  *(*(result + 32) + v3 + 2) = a3 - 1;
  *(*(result + 32) + v3 + 1) = a3 - 1;
  *(*(result + 32) + v3) = a3 - 1;
  *(*(result + 32) + v3 + 3) = -1;
  return result;
}

uint64_t sub_ED24(int a1, uint64_t a2, uint64_t a3)
{
  v5 = qword_196C0[a1];
  if ((a1 - 103) > 2)
  {
    v7 = *(a2 + 4);
    *(a2 + 1) = (*(a2 + 1) + v7 * a1) % 103;
    v6 = v7 + 1;
  }

  else
  {
    *(a2 + 1) = a1;
    v6 = 1;
  }

  *(a2 + 4) = v6;
  v8 = *(a2 + 8);
  v9 = 10000000000;
  do
  {
    v10 = v5 >= v9;
    if (v5 < v9)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9;
    }

    v5 -= v11;
    result = (*(a3 + 16))(a3, v8, v10);
    v8 = (*(a2 + 8) + 1);
    *(a2 + 8) = v8;
    v13 = v9 >= 0xA;
    v9 /= 0xAuLL;
  }

  while (v13);
  return result;
}

void sub_EE9C(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_40AC();
  sub_40C0(&dword_0, v2, v3, "%{public}s %{public}@", v4, v5, v6, v7, 2u);
}

void sub_EF2C(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_40AC();
  sub_40C0(&dword_0, v2, v3, "%{public}s %{public}@", v4, v5, v6, v7, 2u);
}

void sub_EFF0(uint64_t *a1)
{
  v1 = *a1;
  objc_opt_class();
  sub_40AC();
  v3 = v2;
  sub_40C0(&dword_0, v4, v5, "%{public}s Unsupported value for key inputBarcodeDescriptor of class %{public}@", v6, v7, v8, v9, 2u);
}

void sub_F0C8()
{
  v1 = +[NSAssertionHandler currentHandler];
  v0 = [NSString stringWithUTF8String:"CGImageRef AztecCreateBarcodeImage(NSData *__strong, NSDictionary *__strong, NSError *__autoreleasing *)"];
  [v1 handleFailureInFunction:v0 file:@"Aztec.m" lineNumber:1526 description:{@"Invalid parameter not satisfying: %@", @"msgData != nil"}];
}

void sub_F598(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136446210;
  *a2 = "embedPositionAdjustmentPattern";
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}s the matrix element should be empty", buf, 0xCu);
}

void sub_F6D8(unsigned int *a1)
{
  sub_BE5C(a1);
  sub_BDC4();
  sub_BDB4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_F768(unsigned int *a1)
{
  sub_BE5C(a1);
  sub_BDC4();
  sub_BDB4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_F7F8(unsigned int *a1)
{
  sub_BE5C(a1);
  sub_BDC4();
  sub_BDB4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
}

void sub_FCCC(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136446210;
  *a2 = "appendKanjiBytes";
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}s invalid byte sequence", buf, 0xCu);
}

void sub_10024()
{
  v1 = +[NSAssertionHandler currentHandler];
  v0 = [NSString stringWithUTF8String:"CGImageRef PDF417CreateBarcodeImage(NSData *__strong, NSDictionary *__strong, NSError *__autoreleasing *)"];
  [v1 handleFailureInFunction:v0 file:@"PDF417.m" lineNumber:1751 description:{@"Invalid parameter not satisfying: %@", @"message != nil"}];
}

void sub_100D0()
{
  v1 = +[NSAssertionHandler currentHandler];
  v0 = [NSString stringWithUTF8String:"NSInteger ErrorCorrectionCodeWordCountForLevel(NSInteger)"];
  [v1 handleFailureInFunction:v0 file:@"PDF417.m" lineNumber:953 description:@"Error correction level must be between 0 and 8!"];
}

void sub_1015C(uint64_t a1, _DWORD *a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = [NSString stringWithUTF8String:"int EmitCodeWordsWithTextCompactionMode(NSData *__strong, int, int, NSMutableData *__strong, int)_block_invoke"];
  [v4 handleFailureInFunction:v5 file:@"PDF417.m" lineNumber:336 description:@"cannot flush an odd number of half code words"];

  *a2 = *(*(*a1 + 8) + 24);
}