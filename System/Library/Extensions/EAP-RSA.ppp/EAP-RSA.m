uint64_t Init(uint64_t a1)
{
  qword_8000 = *(a1 + 48);
  qword_8008 = *(a1 + 16);
  v2 = CFRetain(qword_8008);
  nullsub_1(v2);
  if (!*(a1 + 2))
  {
    operator new();
  }

  return 1;
}

uint64_t Dispose(uint64_t a1)
{
  if (a1)
  {
    a1 = (*(*a1 + 8))(a1);
  }

  nullsub_1(a1);
  if (byte_8010 == 1)
  {
    sub_1AC0();
  }

  return 0;
}

uint64_t InteractiveUI(int *a1, int a2, void *a3, _DWORD *a4)
{
  a1[48] = 0;
  if (byte_8010 != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = 0;
  v5 = *a1;
  if (*a1 <= 4)
  {
    if (v5 == 2)
    {
      sub_1AFC(a1, a2, a3, a4);
      return 0;
    }

    if (v5 == 4)
    {
      sub_1BA8(a1, a2, a3, a4);
      return 0;
    }
  }

  else
  {
    switch(v5)
    {
      case 5:
        sub_1F60(a1, a2, a3, a4);
        return 0;
      case 6:
        sub_223C(a1, a2, a3, a4);
        return 0;
      case 7:
        sub_22C8(a1, a2, a3, a4);
        return 0;
    }
  }

  return v4;
}

double sub_830(uint64_t a1)
{
  *(a1 + 16) = 0;
  *a1 = off_41A0;
  *(a1 + 8) = 0;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 92) = 0u;
  return result;
}

uint64_t sub_86C(uint64_t a1)
{
  *a1 = off_41A0;
  v2 = *(a1 + 24);
  if (v2)
  {
    CCCryptorRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    CCCryptorRelease(v3);
  }

  if (*(a1 + 40))
  {
    SecDHDestroy();
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    bzero(v4, *(a1 + 16));
    free(*(a1 + 8));
  }

  return a1;
}

void sub_8EC(uint64_t a1)
{
  sub_86C(a1);

  operator delete();
}

void *sub_938(uint64_t a1, void *__dst, _DWORD *a3)
{
  v3 = *(a1 + 56);
  *a3 = v3;
  return memcpy(__dst, *(a1 + 48), v3);
}

void *sub_954(uint64_t a1, const void *a2, unsigned int *a3)
{
  v5 = *a3;
  *(a1 + 72) = v5;
  v6 = malloc_type_malloc(v5, 0x100004077774924uLL);
  *(a1 + 64) = v6;
  v7 = *(a1 + 72);

  return memcpy(v6, a2, v7);
}

uint64_t sub_9B0(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    v3 = SecDHGetMaxKeyLength();
    *(a1 + 56) = v3;
    v5 = v3;
    *(a1 + 48) = malloc_type_malloc(v3, 0x100004077774924uLL);
    v4 = *(a1 + 40);
    result = SecDHGenerateKeypair();
    *(a1 + 56) = v5;
  }

  return result;
}

uint64_t sub_A20(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    v6 = SecDHGetMaxKeyLength();
    *(a1 + 16) = v6;
    *(a1 + 8) = malloc_type_malloc(v6, 0x100004077774924uLL);
    v3 = *(a1 + 40);
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
    result = SecDHComputeKey();
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_A98(uint64_t a1)
{
  CCCryptorCreate(1u, 4u, 0, *(a1 + 8), *(a1 + 16), 0, (a1 + 24));
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);

  return CCCryptorCreate(0, 4u, 0, v2, v3, 0, (a1 + 32));
}

_CCCryptor *sub_B04(uint64_t a1, void *dataOut, _DWORD *a3)
{
  dataOutMoved = 0;
  result = *(a1 + 32);
  if (result)
  {
    result = CCCryptorUpdate(result, dataOut, *a3, dataOut, *a3, &dataOutMoved);
    v5 = dataOutMoved;
  }

  else
  {
    v5 = 0;
  }

  *a3 = v5;
  return result;
}

_CCCryptor *sub_B5C(uint64_t a1, void *dataOut, _DWORD *a3)
{
  dataOutMoved = 0;
  result = *(a1 + 24);
  if (result)
  {
    result = CCCryptorUpdate(result, dataOut, *a3, dataOut, *a3, &dataOutMoved);
    v5 = dataOutMoved;
  }

  else
  {
    v5 = 0;
  }

  *a3 = v5;
  return result;
}

uint64_t sub_BB4(uint64_t result, void *a2, _WORD *a3)
{
  *a2 = result + 76;
  *a3 = 32 * (*(result + 76) != 0);
  return result;
}

uint64_t sub_BD4(uint64_t result, void *a2, _WORD *a3)
{
  *a2 = result + 108;
  *a3 = 32 * (*(result + 108) != 0);
  return result;
}

uint64_t sub_BF4(uint64_t a1, const char *a2, const char *a3, int a4)
{
  v8 = malloc_type_calloc(1uLL, 0xA0uLL, 0x1000040F887743AuLL);
  if (v8)
  {
    v9 = v8;
    CC_MD5_Init(v8);
    CC_MD5_Final(&v9[1].data[2], v9);
    CC_MD5_Init(v9);
    HIBYTE(v9[1].data[5]) |= 1u;
    *&v9[1].C = 0;
    *&v9[1].A = 0;
    *&v9[1].data[7] = 0;
    LOBYTE(v9[1].data[9]) = 0;
    CC_MD5_Update(v9, *(a1 + 8), *(a1 + 16));
    LOBYTE(v9[1].data[9]) = 1;
    v10 = strlen(a3);
    CC_MD5_Update(v9, a3, v10);
    LOBYTE(v9[1].data[9]) = 1;
    v11 = strlen(a2);
    CC_MD5_Update(v9, a2, v11);
    LOBYTE(v9[1].data[9]) = 1;
    if (a4)
    {
      v12 = (a1 + 76);
    }

    else
    {
      v12 = (a1 + 108);
    }

    if (a4)
    {
      v13 = (a1 + 108);
    }

    else
    {
      v13 = (a1 + 76);
    }

    sub_D0C(v9, v12);
    sub_D0C(v9, v13);
    free(v9);
  }

  return 0;
}

void *sub_D0C(CC_MD5_CTX *c, char *a2)
{
  if (LOBYTE(c[1].data[9]) == 1)
  {
    CC_MD5_Final(&c[1], c);
    CC_MD5_Init(c);
    v4 = 0;
    LOBYTE(c[1].data[9]) = 0;
    *&c[1].data[7] = 0;
  }

  else
  {
    v4 = *&c[1].data[7];
    if (v4 > 31)
    {
      v6 = 32;
      goto LABEL_11;
    }
  }

  v5 = v4;
  v6 = 32;
  v4 = 16;
  do
  {
    memcpy(a2, &c[1].data[2] - v5, v5);
    a2 += v5;
    CC_MD5_Update(c, &c[1], 0x10u);
    CC_MD5_Final(&c[1].Nl, c);
    CC_MD5_Init(c);
    v7 = 0;
    v8 = -16;
    v9 = &c[1].D + 3;
    do
    {
      v7 = *v9 + (v7 >> 8) + v9[32];
      *v9-- = v7;
    }

    while (!__CFADD__(v8++, 1));
    v6 -= v5;
    v5 = 16;
  }

  while (v6 >= 17);
LABEL_11:
  result = memcpy(a2, &c[1].data[2] - v4, v6);
  *&c[1].data[7] = v4 - v6;
  return result;
}

uint64_t sub_E2C(uint64_t a1, uint64_t a2)
{
  *sub_18DC(a1, a2) = off_41C0;
  nullsub_1("CSdClientBuf");
  bzero((a1 + 188), 0x4BCuLL);
  *(a1 + 192) = 1;
  v3 = *(a1 + 16);
  if (!v3 || (strncpy((a1 + 216), v3, 0x22uLL), !*(a1 + 216)))
  {
    *(a1 + 194) = 1;
  }

  sub_19EC(a1, 2);
  sub_1A58(a1, 0);
  return a1;
}

void *sub_ECC(void *a1)
{
  *a1 = off_41C0;
  nullsub_1("~CSdClientBuf");

  return sub_1978(a1);
}

void sub_F28(void *a1)
{
  *a1 = off_41C0;
  nullsub_1("~CSdClientBuf");
  sub_1978(a1);

  operator delete();
}

uint64_t sub_F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  nullsub_1("CSdClientBuf::Process");
  v6 = sub_1A50(a1);
  if (v6 == 1)
  {
    if (*(a2 + 6) != 5)
    {
      result = 0;
      *(a3 + 2) = 0;
      return result;
    }

    memcpy((a1 + 188), *(a2 + 16), 0x4BCuLL);
    if (*(a1 + 380))
    {
      result = 0;
      *(a3 + 2) = 7;
      return result;
    }

    if (sub_1A60(a1) == 7)
    {
      if (*(a1 + 384))
      {
        v13 = 4;
      }

      else
      {
        sub_BF4(a1 + 32, (a1 + 216), (a1 + 250), 0);
        v13 = 3;
      }
    }

    else
    {
      sub_12B0(a1, a3);
      v13 = 1;
    }

    *(a3 + 2) = v13;
    sub_19EC(a1, 2);
    return 0;
  }

  if (v6 == 2)
  {
    v7 = *(a2 + 6);
    if (v7 == 3)
    {
      v11 = a1;
      v10 = 3;
      goto LABEL_13;
    }

    if (v7 == 4)
    {
      v8 = *(a2 + 16);
      nullsub_1("CSdClientBuf::Process rcvcode= %d", *v8);
      v9 = *v8;
      if ((v9 - 3) < 2)
      {
        if (sub_1A70(a1) == v8[1])
        {
          v10 = *v8;
          v11 = a1;
LABEL_13:
          sub_1518(v11, v10, a3);
          return 0;
        }

LABEL_26:
        *(a3 + 2) = 0;
        return 2;
      }

      if (v9 != 1)
      {
        goto LABEL_26;
      }

      sub_18D8(&v19, v8, a1 + 32);
      v14 = sub_1A60(a1);
      v15 = v19;
      if (v14 == v19)
      {
        if (sub_1A70(a1) == v8[1])
        {
          goto LABEL_32;
        }

        v15 = v19;
      }

      sub_1A58(a1, v15);
      nullsub_1("MakeMessage packetstate=%d", v19);
      v16 = v19;
      if (v19 > 7)
      {
        nullsub_1("Invalid Auth State (%d)", v19);
        return 0;
      }

      if (((1 << v19) & 0xF0) != 0)
      {
        goto LABEL_23;
      }

      if (((1 << v19) & 0xB) == 0)
      {
        sub_1410(a1, &v19);
        strncpy((a1 + 396), v22, 0x3E9uLL);
        v16 = v19;
LABEL_23:
        *(a1 + 188) = v16;
        *(a3 + 8) = a1 + 188;
        *(a3 + 4) = 1212;
        *(a1 + 380) = 0;
        v17 = v20;
        *(a1 + 208) = v21;
        *(a1 + 212) = v17;
        nullsub_1("ACM return value (%d)", *(a1 + 384));
        if (*(a1 + 188) == 5)
        {
          *(a1 + 358) = *v22;
          *(a1 + 372) = *&v22[14];
        }

        sub_1A68(a1, v8[1]);
        sub_19EC(a1, 1);
        v18 = 2;
        goto LABEL_33;
      }

      sub_1410(a1, &v19);
      sub_1A68(a1, v8[1]);
LABEL_32:
      sub_12B0(a1, a3);
      v18 = 1;
LABEL_33:
      *(a3 + 2) = v18;
    }
  }

  return 0;
}

uint64_t sub_12B0(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = &byte_8011;
  byte_8011 = 2;
  byte_8012 = sub_1A70(a1);
  v4 = sub_1A60(a1);
  v5 = 0;
  if (v4 > 3)
  {
    switch(v4)
    {
      case 4:
        v6 = sub_1618(a1, &byte_8015);
        break;
      case 5:
        v6 = sub_16D4(a1, &byte_8015);
        break;
      case 6:
        v6 = sub_1764(a1, &byte_8015);
        break;
      default:
        goto LABEL_16;
    }

LABEL_15:
    v5 = v6;
    goto LABEL_16;
  }

  switch(v4)
  {
    case 0:
      v6 = sub_1598(a1, &byte_8015);
      goto LABEL_15;
    case 1:
      nullsub_1("Make3PhaseCPacket");
      goto LABEL_13;
    case 2:
      nullsub_1("MakeInitPacket");
LABEL_13:
      byte_8015 = 15;
      byte_8016 = sub_1A60(a1);
      v5 = 4;
      break;
  }

LABEL_16:
  v7 = byte_8012;
  v8 = sub_1A60(a1);
  result = nullsub_1("MakeResponseMessage: id(%d) len(%d) state(%d)", v7, v5, v8);
  *(a2 + 4) = v5 + 4;
  unk_8013 = bswap32(v5 + 4) >> 16;
  return result;
}

uint64_t sub_1410(uint64_t a1, _DWORD *a2)
{
  nullsub_1("ProcessRequest: State(%d)", *a2);
  v4 = *a2;
  if (*a2 > 1)
  {
    if (v4 == 2)
    {
      nullsub_1("ProcessRequest: STATE_Init");
      sub_A98(a1 + 32);
      return 0;
    }

    if (v4 == 3)
    {
      nullsub_1("ProcessRequest: STATE_Password");
      return 0;
    }

LABEL_8:
    nullsub_1("ProcessRequest: Invalid Auth State");
    return 0;
  }

  if (!v4)
  {
    nullsub_1("ProcessRequest: STATE_KeyEx");
    v7 = bswap32(sub_64C(a2[2]));
    a2[2] = v7;
    sub_924(a1 + 32, (a2 + 3), v7);
    sub_9B0(a1 + 32);
    return 0;
  }

  if (v4 != 1)
  {
    goto LABEL_8;
  }

  nullsub_1("ProcessRequest: STATE_3Phase");
  v6 = a2[2];
  v5 = a2 + 2;
  *v5 = bswap32(sub_64C(v6));
  sub_954(a1 + 32, v5 + 1, v5);
  sub_A20(a1 + 32);
  return 0;
}

uint64_t sub_1518(uint64_t a1, int a2, uint64_t a3)
{
  nullsub_1("ProcessFinal");
  *(a3 + 8) = a1 + 188;
  *(a3 + 4) = 1212;
  sub_1A58(a1, 7);
  *(a1 + 188) = 7;
  *(a1 + 384) = a2 != 3;
  result = sub_19EC(a1, 1);
  *(a3 + 2) = 2;
  return result;
}

uint64_t sub_1598(uint64_t a1, uint64_t a2)
{
  nullsub_1("MakeKeyExCPacket");
  *a2 = 15;
  *(a2 + 1) = sub_1A60(a1);
  sub_938(a1 + 32, (a2 + 8), (a2 + 4));
  LODWORD(a1) = *(a2 + 4);
  v4 = bswap32(a1);
  *(a2 + 4) = v4;
  *(a2 + 4) = sub_64C(v4);
  return (a1 + 8);
}

uint64_t sub_1618(uint64_t a1, uint64_t a2)
{
  nullsub_1("MakeCheckPacket");
  *a2 = 15;
  *(a2 + 1) = sub_1A60(a1);
  v4 = *(a1 + 266);
  *(a2 + 4) = *(a1 + 250);
  *(a2 + 20) = v4;
  v5 = *(a1 + 232);
  v6 = *(a1 + 216);
  *(a2 + 54) = *(a1 + 248);
  *(a2 + 22) = v6;
  *(a2 + 38) = v5;
  nullsub_1("MakeCheckPacket name %s", (a2 + 22));
  v8 = 51;
  sub_B04(a1 + 32, (a2 + 4), &v8);
  return (v8 + 4);
}

uint64_t sub_16D4(uint64_t a1, uint64_t a2)
{
  nullsub_1("MakePinPacket");
  *a2 = 15;
  *(a2 + 1) = sub_1A60(a1);
  v4 = *(a1 + 320);
  *(a2 + 4) = *(a1 + 304);
  *(a2 + 20) = v4;
  v6 = 18;
  sub_B04(a1 + 32, (a2 + 4), &v6);
  return (v6 + 4);
}

uint64_t sub_1764(uint64_t a1, uint64_t a2)
{
  nullsub_1("MakeNextPacket");
  *a2 = 15;
  *(a2 + 1) = sub_1A60(a1);
  v4 = *(a1 + 284);
  *(a2 + 4) = *(a1 + 268);
  *(a2 + 20) = v4;
  v6 = 18;
  sub_B04(a1 + 32, (a2 + 4), &v6);
  return (v6 + 4);
}

uint64_t sub_17F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a2 + 4);
  v7 = (bswap32(*(a2 + 2)) >> 16) - 4;
  v11 = 0;
  nullsub_1("CSdEapSPacket: authState = %d, packetLen = %d", *(a2 + 5), v7);
  if (*(a2 + 5) - 4 > 2)
  {
    v9 = 0;
  }

  else
  {
    v8 = (a2 + 8);
    v11 = v6 + v7 - v8;
    sub_B5C(a3, v8, &v11);
    v9 = v11;
    v7 = v8 + v11 - v6;
  }

  nullsub_1("SPacket decryptLen = %d adj packetLen = %d", v9, v7);
  memcpy((a1 + 4), v6, v7);
  *a1 = *(a1 + 5);
  return a1;
}

uint64_t sub_18DC(uint64_t a1, uint64_t a2)
{
  *a1 = off_41F0;
  sub_830(a1 + 32);
  *(a1 + 180) = 0;
  *(a1 + 184) = 0;
  v4 = *(a2 + 3);
  *(a1 + 8) = 0;
  *(a1 + 176) = v4;
  *(a1 + 177) = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v5 = *(a2 + 24);
  if (v5)
  {
    *(a1 + 8) = strdup(v5);
  }

  v6 = *(a2 + 32);
  if (v6)
  {
    *(a1 + 16) = strdup(v6);
  }

  v7 = *(a2 + 40);
  if (v7)
  {
    *(a1 + 24) = strdup(v7);
  }

  return a1;
}

void *sub_1978(void *a1)
{
  *a1 = off_41F0;
  v2 = a1[1];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    free(v4);
  }

  sub_8E8((a1 + 4));
  return a1;
}

uint64_t sub_19F4(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *a2;
  if (v2 == 2)
  {
    sub_BD4(a1 + 32, a2 + 1, a2 + 1);
    return 0;
  }

  if (v2 == 1)
  {
    sub_BB4(a1 + 32, a2 + 1, a2 + 1);
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1A78(__CFBundle *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  qword_87E8 = CFBundleCopyBundleURL(a1);
  if (!qword_87E8)
  {
    return 1;
  }

  result = 0;
  qword_87F0 = 0;
  return result;
}

void sub_1AC0()
{
  if (qword_87F0)
  {
    CFUserNotificationCancel(qword_87F0);
  }

  CFRelease(qword_87E8);
  qword_87E8 = 0;
}

uint64_t sub_1AFC(uint64_t a1, int a2, void *a3, _DWORD *a4)
{
  if (*(a1 + 208))
  {
    v8 = CFStringCreateWithCString(0, (a1 + 208), 0);
    if (v8)
    {
      v9 = v8;
      sub_1C34(qword_87E8, v8, 0, 0x78u, 0, 0, 0, 0, 0, 0, 0);
      CFRelease(v9);
    }
  }

  *(a1 + 192) = 0;
  *a3 = a1;
  *a4 = a2;
  return 0;
}

uint64_t sub_1BA8(uint64_t a1, int a2, void *a3, _DWORD *a4)
{
  *(a1 + 62) = 0;
  *(a1 + 192) = sub_1C34(qword_87E8, @"Please enter your passcode.", @"Cancel", 0x78u, &stru_4290, (a1 + 62), 0x12u, 1, 0, 0, 0);
  *a3 = a1;
  *a4 = a2;
  return 0;
}

uint64_t sub_1C34(const void *a1, const void *a2, const void *a3, unsigned int a4, const void *a5, char *a6, unsigned int a7, int a8, void *value, char *a10, CFIndex a11)
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    return 1;
  }

  v20 = Mutable;
  bufferSize = a7;
  v21 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  if (v21)
  {
    v22 = v21;
    if (a5)
    {
      CFArrayAppendValue(v21, a5);
    }

    if (value)
    {
      CFArrayAppendValue(v22, value);
    }

    CFDictionaryAddValue(v20, kCFUserNotificationTextFieldTitlesKey, v22);
    CFRelease(v22);
  }

  v23 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  if (v23)
  {
    v24 = v23;
    if (a6)
    {
      if (*a6)
      {
        v25 = CFStringCreateWithCString(0, a6, 0);
        if (v25)
        {
          v26 = v25;
          CFArrayAppendValue(v24, v25);
          CFRelease(v26);
        }
      }
    }

    if (a10)
    {
      if (*a10)
      {
        v27 = CFStringCreateWithCString(0, a10, 0);
        if (v27)
        {
          v28 = v27;
          CFArrayAppendValue(v24, v27);
          CFRelease(v28);
        }
      }
    }

    CFDictionaryAddValue(v20, kCFUserNotificationTextFieldValuesKey, v24);
    CFRelease(v24);
  }

  CFDictionaryAddValue(v20, kCFUserNotificationLocalizationURLKey, a1);
  CFDictionaryAddValue(v20, kCFUserNotificationAlertHeaderKey, @"RSA SecurID Authentication");
  CFDictionaryAddValue(v20, kCFUserNotificationAlertMessageKey, a2);
  CFDictionaryAddValue(v20, kCFUserNotificationDefaultButtonTitleKey, @"OK");
  if (a3)
  {
    CFDictionaryAddValue(v20, kCFUserNotificationAlternateButtonTitleKey, a3);
  }

  error = 0;
  responseFlags = ((a8 != 0) << 16) | ((HIDWORD(a11) != 0) << 17);
  v29 = CFUserNotificationCreate(0, a4, responseFlags, &error, v20);
  qword_87F0 = v29;
  if (v29)
  {
    CFUserNotificationReceiveResponse(v29, 0.0, &responseFlags);
    if ((responseFlags & 3) == 1)
    {
      v30 = 1;
    }

    else
    {
      if (a6)
      {
        ResponseValue = CFUserNotificationGetResponseValue(qword_87F0, kCFUserNotificationTextFieldValuesKey, 0);
        if (ResponseValue)
        {
          CFStringGetCString(ResponseValue, a6, bufferSize, 0x8000100u);
        }
      }

      if (a10)
      {
        v32 = CFUserNotificationGetResponseValue(qword_87F0, kCFUserNotificationTextFieldValuesKey, 1);
        if (v32)
        {
          CFStringGetCString(v32, a10, a11, 0x8000100u);
        }
      }

      v30 = 0;
    }

    CFRelease(qword_87F0);
    qword_87F0 = 0;
  }

  else
  {
    v30 = 1;
  }

  CFRelease(v20);
  return v30;
}

uint64_t sub_1F60(uint64_t a1, int a2, void *a3, _DWORD *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  *(a1 + 116) = 0;
  v8 = (a1 + 116);
  *(a1 + 192) = 0;
  if (*(a1 + 172) - 1 < 2)
  {
    while (1)
    {
      __s2[0] = 0;
      __s[0] = 0;
      v9 = 1;
      if (sub_1C34(qword_87E8, @"Please enter a new PIN.", @"Cancel", 0x78u, @"PIN:", __s, 0x11u, 1, @"Confirm:", __s2, 0x100000011))
      {
        break;
      }

      v10 = strlen(__s);
      if (!strcmp(__s, __s2) && v10 >= *(a1 + 170) && v10 <= *(a1 + 171))
      {
        v11 = strlen(__s);
        if (*(a1 + 173))
        {
          if (v11 < 1)
          {
            goto LABEL_21;
          }

          v12 = v11 & 0x7FFFFFFF;
          v13 = __s;
          while (1)
          {
            v15 = *v13++;
            v14 = v15;
            if (!(v15 < 0 ? __maskrune(v14, 0x500uLL) : _DefaultRuneLocale.__runetype[v14] & 0x500))
            {
              break;
            }

            if (!--v12)
            {
              goto LABEL_21;
            }
          }
        }

        else
        {
          if (v11 < 1)
          {
LABEL_21:
            strcpy(v8, __s);
            v9 = 0;
            break;
          }

          v17 = v11 & 0x7FFFFFFF;
          v18 = __s;
          while (1)
          {
            v20 = *v18++;
            v19 = v20;
            if (v20 < 0 || (_DefaultRuneLocale.__runetype[v19] & 0x400) == 0)
            {
              break;
            }

            if (!--v17)
            {
              goto LABEL_21;
            }
          }
        }
      }

      sub_1C34(qword_87E8, @"The PIN you entered is invalid.", 0, 0x78u, 0, 0, 0, 0, 0, 0, 0);
    }

    v4 = a4;
    v6 = a2;
    v5 = a3;
    goto LABEL_28;
  }

  if (*(a1 + 172))
  {
    v9 = 1;
    goto LABEL_28;
  }

  v9 = sub_1C34(qword_87E8, @"A new PIN is required! Your new PIN will be displayed for 10 seconds.", @"Cancel", 0x78u, 0, 0, 0, 0, 0, 0, 0);
  if (v9)
  {
LABEL_28:
    *(a1 + 192) = v9;
    goto LABEL_29;
  }

  v21 = CFStringCreateWithCString(0, (a1 + 174), 0);
  if (v21)
  {
    v22 = v21;
    sub_1C34(qword_87E8, v21, 0, 0xAu, 0, 0, 0, 0, 0, 0, 0);
    CFRelease(v22);
    strcpy(v8, (a1 + 174));
    goto LABEL_28;
  }

LABEL_29:
  *v5 = a1;
  *v4 = v6;
  return 0;
}

uint64_t sub_223C(uint64_t a1, int a2, void *a3, _DWORD *a4)
{
  *(a1 + 80) = 0;
  *(a1 + 192) = sub_1C34(qword_87E8, @"Please enter the next code displayed by your token.", @"Cancel", 0x78u, @"Next Tokencode:", (a1 + 80), 0x12u, 1, 0, 0, 0);
  *a3 = a1;
  *a4 = a2;
  return 0;
}

uint64_t sub_22C8(uint64_t a1, int a2, void *a3, _DWORD *a4)
{
  *(a1 + 192) = 0;
  *a3 = a1;
  *a4 = a2;
  return 0;
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}