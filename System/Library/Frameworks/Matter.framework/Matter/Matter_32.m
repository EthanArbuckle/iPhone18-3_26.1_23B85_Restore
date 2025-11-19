uint64_t sub_239417ADC(uint64_t result, _DWORD *a2)
{
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = *(v4 + 160);
    if (v5)
    {
      result = v5(result);
      *(v3 + 8) = 0;
      *(v3 + 4) = 0;
    }
  }

  *(v3 + 16) = a2;
  *(v3 + 4) = *a2;
  return result;
}

uint64_t sub_239417B2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && (v2 = *(v1 + 136)) != 0)
  {
    return v2();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239417B48(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 16);
  if (v2 && (v3 = *(v2 + 152)) != 0)
  {
    return v3();
  }

  else
  {
    return 4294967294;
  }
}

uint64_t sub_239417B7C(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0 && (v2 = *(v1 + 120)) != 0)
  {
    return v2();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239417B9C(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0 && (v2 = *(v1 + 128)) != 0)
  {
    return v2();
  }

  else
  {
    return 0;
  }
}

BOOL sub_239417BBC(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a2;
  if (a2 > 115)
  {
    if (a2 == 116)
    {

      return sub_23941A8D0(a1, a3);
    }

    else
    {
      if (a2 != 408)
      {
        goto LABEL_12;
      }

      return sub_23941B5E8(a1, a3);
    }
  }

  else
  {
    if (a2 != 6)
    {
      if (a2 == 28)
      {

        return sub_23941A0B8(a1, a3);
      }

LABEL_12:
      sub_2394170F4(6, 0, 128, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp.c", 250);
      sub_239417270("algorithm %d", v5, v6, v7, v8, v9, v10, v11, v3);
      return 0;
    }

    return sub_23941D754(a1, a3);
  }
}

uint64_t sub_239417CCC(uint64_t a1, int a2)
{
  if (a1)
  {
    if (*(a1 + 8))
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = *(v4 + 160);
        if (v5)
        {
          v5(a1);
          *(a1 + 8) = 0;
          *(a1 + 4) = 0;
        }
      }
    }
  }

  if (a2 <= 407)
  {
    if (a2 == 6)
    {
      v6 = &dword_284BB9C20;
      if (!a1)
      {
        return 1;
      }

LABEL_21:
      v7 = *(a1 + 16);
      if (v7)
      {
        v8 = *(v7 + 160);
        if (v8)
        {
          v8(a1);
          *(a1 + 8) = 0;
        }
      }

      *(a1 + 16) = v6;
      *(a1 + 4) = *v6;
      return 1;
    }

    if (a2 == 116)
    {
      v6 = &dword_284BB9848;
      if (!a1)
      {
        return 1;
      }

      goto LABEL_21;
    }
  }

  else
  {
    switch(a2)
    {
      case 949:
        v6 = &dword_284BB9A88;
        if (!a1)
        {
          return 1;
        }

        goto LABEL_21;
      case 948:
        v6 = &dword_284BB9D40;
        if (!a1)
        {
          return 1;
        }

        goto LABEL_21;
      case 408:
        v6 = &dword_284BB9968;
        if (!a1)
        {
          return 1;
        }

        goto LABEL_21;
    }
  }

  sub_2394170F4(6, 0, 128, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp.c", 265);
  sub_239417270("algorithm %d", v10, v11, v12, v13, v14, v15, v16, a2);
  return 0;
}

uint64_t sub_239417E00(int a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  if (a1 == 948)
  {
    v6 = &dword_284BB9D40;
  }

  else
  {
    if (a1 != 949)
    {
      sub_2394170F4(6, 0, 128, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp.c", 290);
      return 0;
    }

    v6 = &dword_284BB9A88;
  }

  v7 = sub_2394500B0(0x18uLL);
  v8 = v7;
  if (!v7)
  {
    goto LABEL_10;
  }

  *v7 = 1;
  v9 = v7[2];
  if (v9)
  {
    v10 = *(v9 + 160);
    if (v10)
    {
      v10(v7);
      *(v8 + 8) = 0;
    }
  }

  *(v8 + 16) = v6;
  *(v8 + 4) = *v6;
  if (!(*(v6 + 8))(v8, a3, a4))
  {
LABEL_10:
    sub_239417838(v8);
    return 0;
  }

  return v8;
}

uint64_t sub_239417EDC(int a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  if (a1 == 948)
  {
    v6 = &dword_284BB9D40;
  }

  else
  {
    if (a1 != 949)
    {
      sub_2394170F4(6, 0, 128, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp.c", 324);
      return 0;
    }

    v6 = &dword_284BB9A88;
  }

  v7 = sub_2394500B0(0x18uLL);
  v8 = v7;
  if (!v7)
  {
    goto LABEL_10;
  }

  *v7 = 1;
  v9 = v7[2];
  if (v9)
  {
    v10 = *(v9 + 160);
    if (v10)
    {
      v10(v7);
      *(v8 + 8) = 0;
    }
  }

  *(v8 + 16) = v6;
  *(v8 + 4) = *v6;
  if (!(*(v6 + 9))(v8, a3, a4))
  {
LABEL_10:
    sub_239417838(v8);
    return 0;
  }

  return v8;
}

uint64_t sub_239417FB8(uint64_t a1)
{
  v2 = *(*(a1 + 16) + 80);
  if (v2)
  {

    return v2();
  }

  else
  {
    sub_2394170F4(6, 0, 125, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp.c", 348);
    return 0;
  }
}

uint64_t sub_239418008(uint64_t a1)
{
  v2 = *(*(a1 + 16) + 88);
  if (v2)
  {

    return v2();
  }

  else
  {
    sub_2394170F4(6, 0, 125, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp.c", 358);
    return 0;
  }
}

uint64_t sub_239418090(uint64_t a1)
{
  v2 = *(*(a1 + 16) + 96);
  if (v2)
  {

    return v2();
  }

  else
  {
    sub_2394170F4(6, 0, 125, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp.c", 409);
    return 0;
  }
}

uint64_t sub_2394180E0(uint64_t a1)
{
  v2 = *(*(a1 + 16) + 104);
  if (v2)
  {

    return v2();
  }

  else
  {
    sub_2394170F4(6, 0, 125, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp.c", 418);
    return 0;
  }
}

uint64_t sub_239418130(__int128 *a1)
{
  v12 = 0uLL;
  v11 = 0uLL;
  v10[0] = 0;
  v10[1] = 0;
  v9 = 0;
  if (!sub_239407F5C(a1, &v12, 536870928) || !sub_239407F5C(&v12, &v11, 536870928) || !sub_239407F5C(&v12, v10, 3) || *(&v12 + 1))
  {
    v6 = 102;
    v7 = 106;
LABEL_13:
    sub_2394170F4(6, 0, v6, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp_asn1.c", v7);
    return 0;
  }

  v1 = sub_239418294(&v11);
  if (!v1)
  {
    v6 = 128;
    v7 = 111;
    goto LABEL_13;
  }

  v2 = v1;
  if (!sub_239407860(v10, &v9) || v9)
  {
    v6 = 102;
    v7 = 118;
    goto LABEL_13;
  }

  sub_23941780C();
  v4 = v3;
  if (!v3)
  {
LABEL_19:
    sub_239417838(v4);
    return 0;
  }

  sub_239417ADC(v3, v2);
  v5 = *(*(v4 + 16) + 24);
  if (!v5)
  {
    sub_2394170F4(6, 0, 128, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp_asn1.c", 131);
    goto LABEL_19;
  }

  if (!v5(v4, &v11, v10))
  {
    goto LABEL_19;
  }

  return v4;
}

int *sub_239418294(__int128 *a1)
{
  v6 = 0;
  v7 = 0;
  if (!sub_239407F5C(a1, &v6, 6))
  {
    return 0;
  }

  v1 = 0;
  v3 = v6;
  v2 = v7;
  while (1)
  {
    v4 = off_278A77720[v1];
    if (v2 == *(v4 + 13) && (!*(v4 + 13) || !memcmp(v3, v4 + 1, v2)))
    {
      break;
    }

    if (++v1 == 5)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_239418328(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 && (v4 = *(v3 + 32)) != 0)
  {

    return v4();
  }

  else
  {
    sub_2394170F4(6, 0, 128, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp_asn1.c", 147);
    return 0;
  }
}

uint64_t sub_23941837C(__int128 *a1)
{
  v12 = 0uLL;
  v11 = 0uLL;
  v10[0] = 0;
  v10[1] = 0;
  v9 = 0;
  if (!sub_239407F5C(a1, &v12, 536870928) || !sub_239408120(&v12, &v9) || v9 || !sub_239407F5C(&v12, &v11, 536870928) || !sub_239407F5C(&v12, v10, 4))
  {
    v6 = 102;
    v7 = 163;
LABEL_12:
    sub_2394170F4(6, 0, v6, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp_asn1.c", v7);
    return 0;
  }

  v1 = sub_239418294(&v11);
  if (!v1)
  {
    v6 = 128;
    v7 = 168;
    goto LABEL_12;
  }

  v2 = v1;
  sub_23941780C();
  v4 = v3;
  if (!v3)
  {
LABEL_17:
    sub_239417838(v4);
    return 0;
  }

  sub_239417ADC(v3, v2);
  v5 = *(*(v4 + 16) + 48);
  if (!v5)
  {
    sub_2394170F4(6, 0, 128, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp_asn1.c", 183);
    goto LABEL_17;
  }

  if (!v5(v4, &v11, v10))
  {
    goto LABEL_17;
  }

  return v4;
}

uint64_t sub_2394184BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 && (v4 = *(v3 + 56)) != 0)
  {

    return v4();
  }

  else
  {
    sub_2394170F4(6, 0, 128, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp_asn1.c", 199);
    return 0;
  }
}

uint64_t sub_239418510(int a1, uint64_t *a2, void *a3, uint64_t a4)
{
  if (a4 < 0)
  {
    sub_2394170F4(6, 0, 102, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp_asn1.c", 250);
    return 0;
  }

  *&v15 = *a3;
  *(&v15 + 1) = a4;
  sub_23941780C();
  if (v8)
  {
    v9 = v8;
    switch(a1)
    {
      case 6:
        v12 = sub_239455D58(&v15);
        if (v12 && sub_23941D754(v9, v12))
        {
          goto LABEL_20;
        }

        sub_23943F100(v12);
        break;
      case 116:
        v11 = sub_2394148C8(&v15);
        if (v11 && sub_23941A8D0(v9, v11))
        {
          goto LABEL_20;
        }

        sub_239412C14(v11);
        break;
      case 408:
        v10 = sub_239414EB0(&v15, 0);
        if (v10 && sub_23941B5E8(v9, v10))
        {
          goto LABEL_20;
        }

        sub_23943603C(v10);
        break;
      default:
        sub_2394170F4(6, 0, 127, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp_asn1.c", 238);
        break;
    }

    sub_239417838(v9);
  }

  sub_239416A38();
  *&v15 = *a3;
  *(&v15 + 1) = a4;
  v13 = sub_23941837C(&v15);
  v9 = v13;
  if (!v13)
  {
    return v9;
  }

  if (*(v13 + 4) != a1)
  {
    sub_2394170F4(6, 0, 103, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp_asn1.c", 267);
    sub_239417838(v9);
    return 0;
  }

LABEL_20:
  if (a2)
  {
    sub_239417838(*a2);
    *a2 = v9;
  }

  *a3 = v15;
  return v9;
}

uint64_t sub_2394186C0(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a3 < 0)
  {
    sub_2394170F4(6, 0, 102, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp_asn1.c", 305);
    return 0;
  }

  else
  {
    *&v12 = *a2;
    *(&v12 + 1) = a3;
    v6 = sub_23941837C(&v12);
    if (v6)
    {
      v7 = v6;
      if (a1)
      {
        sub_239417838(*a1);
        *a1 = v7;
      }

      *a2 = v12;
    }

    else
    {
      sub_239416A38();
      v8 = *a2;
      v13 = 0uLL;
      *&v14 = v8;
      *(&v14 + 1) = a3;
      if (sub_239407F5C(&v14, &v13, 536870928) && *(&v13 + 1))
      {
        v9 = -1;
        while (sub_239407D5C(&v13, 0, 0, 0))
        {
          ++v9;
          if (!*(&v13 + 1))
          {
            if (v9 == 5)
            {
              v10 = 116;
            }

            else
            {
              if (v9 != 3)
              {
                break;
              }

              v10 = 408;
            }

            return sub_239418510(v10, a1, a2, a3);
          }
        }
      }

      v10 = 6;
      return sub_239418510(v10, a1, a2, a3);
    }
  }

  return v7;
}

uint64_t sub_2394187E8(uint64_t a1, void **a2)
{
  v3 = *(a1 + 4);
  switch(v3)
  {
    case 408:
      v7 = sub_23941B624(a1);

      return sub_239415E2C(v7, a2);
    case 116:
      v6 = sub_23941A90C(a1);

      return sub_239414C6C(v6, a2);
    case 6:
      v4 = sub_23941D790(a1);

      return sub_2394561A8(v4, a2);
    default:
      sub_2394170F4(6, 0, 129, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp_asn1.c", 345);
      return 0xFFFFFFFFLL;
  }
}

uint64_t sub_2394188B0(int a1, uint64_t *a2, void *a3, uint64_t a4)
{
  sub_23941780C();
  v9 = v8;
  if (!v8)
  {
    return v9;
  }

  *&v12 = *a3;
  *(&v12 + 1) = a4 & ~(a4 >> 63);
  if (a1 != 6)
  {
    sub_2394170F4(6, 0, 129, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp_asn1.c", 375);
LABEL_9:
    sub_239417838(v9);
    return 0;
  }

  v10 = sub_239455A74(&v12);
  if (!v10 || !sub_23941D754(v9, v10))
  {
    sub_23943F100(v10);
    goto LABEL_9;
  }

  *a3 = v12;
  if (a2)
  {
    sub_239417838(*a2);
    *a2 = v9;
  }

  return v9;
}

uint64_t sub_239418988(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a3 < 0)
  {
    return 0;
  }

  *&v7 = *a2;
  *(&v7 + 1) = a3;
  v5 = sub_239418130(&v7);
  if (v5)
  {
    if (a1)
    {
      sub_239417838(*a1);
      *a1 = v5;
    }

    *a2 = v7;
  }

  return v5;
}

uint64_t sub_2394189FC(uint64_t result, void **a2)
{
  if (result)
  {
    v3 = result;
    memset(v4, 0, sizeof(v4));
    if (sub_2394065F4(v4, 0x80uLL) && sub_239418328(v4, v3))
    {
      return sub_23940603C(v4, a2);
    }

    else
    {
      sub_239406688(v4);
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_239418A78(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a3 < 0)
  {
    return 0;
  }

  *&v9 = *a2;
  *(&v9 + 1) = a3;
  v5 = sub_239418130(&v9);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = sub_23941D7DC(v5);
  sub_239417838(v6);
  if (v7)
  {
    if (a1)
    {
      sub_23943F100(*a1);
      *a1 = v7;
    }

    *a2 = v9;
  }

  return v7;
}

uint64_t sub_239418B00(uint64_t a1, void **a2)
{
  if (!a1)
  {
    return 0;
  }

  sub_23941780C();
  v5 = v4;
  if (v4 && sub_23941D708(v4, a1))
  {
    v6 = sub_2394189FC(v5, a2);
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

  sub_239417838(v5);
  return v6;
}

uint64_t sub_239418B78(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a3 < 0)
  {
    return 0;
  }

  *&v9 = *a2;
  *(&v9 + 1) = a3;
  v5 = sub_239418130(&v9);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = sub_23941A958(v5);
  sub_239417838(v6);
  if (v7)
  {
    if (a1)
    {
      sub_239412C14(*a1);
      *a1 = v7;
    }

    *a2 = v9;
  }

  return v7;
}

uint64_t sub_239418C00(uint64_t a1, void **a2)
{
  if (!a1)
  {
    return 0;
  }

  sub_23941780C();
  v5 = v4;
  if (v4 && sub_23941A884(v4, a1))
  {
    v6 = sub_2394189FC(v5, a2);
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

  sub_239417838(v5);
  return v6;
}

uint64_t sub_239418C78(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a3 < 0)
  {
    return 0;
  }

  *&v9 = *a2;
  *(&v9 + 1) = a3;
  v5 = sub_239418130(&v9);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = sub_23941B670(v5);
  sub_239417838(v6);
  if (v7)
  {
    if (a1)
    {
      sub_23943603C(*a1);
      *a1 = v7;
    }

    *a2 = v9;
  }

  return v7;
}

uint64_t sub_239418D00(uint64_t a1, void **a2)
{
  if (!a1)
  {
    return 0;
  }

  sub_23941780C();
  v5 = v4;
  if (v4 && sub_23941B59C(v4, a1))
  {
    v6 = sub_2394189FC(v5, a2);
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

  sub_239417838(v5);
  return v6;
}

void *sub_239418D78(uint64_t a1, uint64_t a2)
{
  if (!a1 || (v3 = *(a1 + 16)) == 0)
  {
    sub_2394170F4(6, 0, 67, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp_ctx.c", 116);
    return 0;
  }

  v4 = *(v3 + 16);
  if (!v4)
  {
    sub_2394170F4(6, 0, 128, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp_ctx.c", 122);
    sub_239417270("algorithm %d", v6, v7, v8, v9, v10, v11, v12, **(a1 + 16));
    return 0;
  }

  return sub_239418E30(a1, a2, v4);
}

void *sub_239418E30(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2394500B0(0x30uLL);
  v7 = v6;
  if (v6)
  {
    *v6 = a3;
    v6[1] = a2;
    *(v6 + 8) = 0;
    if (a1)
    {
      sub_2394178A4(a1);
      v7[2] = a1;
    }

    v8 = *(a3 + 8);
    if (v8 && v8(v7) <= 0)
    {
      sub_239417838(v7[2]);
      sub_239450144(v7);
      return 0;
    }
  }

  return v7;
}

void *sub_239418EB8(int a1, uint64_t a2)
{
  v2 = a1;
  v3 = 0;
  while (1)
  {
    v4 = *(&off_278A77748 + v3);
    if (*v4 == a1)
    {
      break;
    }

    v3 += 8;
    if (v3 == 40)
    {
      sub_2394170F4(6, 0, 128, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp_ctx.c", 133);
      sub_239417270("algorithm %d", v5, v6, v7, v8, v9, v10, v11, v2);
      return 0;
    }
  }

  return sub_239418E30(0, a2, v4);
}

void sub_239418F5C(uint64_t *a1)
{
  if (a1)
  {
    if (*a1)
    {
      v2 = *(*a1 + 24);
      if (v2)
      {
        v2(a1);
      }
    }

    sub_239417838(a1[2]);
    sub_239417838(a1[3]);

    sub_239450144(a1);
  }
}

uint64_t *sub_239418FC0(uint64_t a1)
{
  if (!*a1 || !*(*a1 + 16))
  {
    return 0;
  }

  v2 = sub_2394500B0(0x30uLL);
  v3 = v2;
  if (v2)
  {
    *v2 = *a1;
    v2[1] = *(a1 + 8);
    *(v2 + 8) = *(a1 + 32);
    v4 = *(a1 + 16);
    if (v4)
    {
      sub_2394178A4(v4);
      v3[2] = *(a1 + 16);
    }

    v5 = *(a1 + 24);
    if (v5)
    {
      sub_2394178A4(v5);
      v3[3] = *(a1 + 24);
    }

    if ((*(*a1 + 16))(v3, a1) <= 0)
    {
      *v3 = 0;
      sub_239418F5C(v3);
      sub_2394170F4(6, 0, 6, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp_ctx.c", 180);
      return 0;
    }
  }

  return v3;
}

uint64_t sub_23941908C(uint64_t *a1, int a2, int a3)
{
  if (!a1 || (v3 = *a1) == 0 || (v4 = *(v3 + 112)) == 0)
  {
    v7 = 101;
    v8 = 192;
LABEL_12:
    sub_2394170F4(6, 0, v7, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp_ctx.c", v8);
    return 0;
  }

  if (a2 != -1 && *v3 != a2)
  {
    v7 = 125;
    v8 = 196;
    goto LABEL_12;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    v7 = 123;
    v8 = 201;
    goto LABEL_12;
  }

  if ((v5 & a3) == 0)
  {
    v7 = 114;
    v8 = 206;
    goto LABEL_12;
  }

  return v4();
}

uint64_t sub_239419170(uint64_t *a1)
{
  if (a1 && (v1 = *a1) != 0 && (*(v1 + 40) || *(v1 + 48)))
  {
    *(a1 + 8) = 8;
    return 1;
  }

  else
  {
    sub_2394170F4(6, 0, 125, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp_ctx.c", 216);
    return 0;
  }
}

uint64_t sub_2394191D4(_DWORD *a1)
{
  if (!a1 || !*a1 || (v1 = *(*a1 + 40)) == 0)
  {
    v3 = 125;
    v4 = 227;
LABEL_9:
    sub_2394170F4(6, 0, v3, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp_ctx.c", v4);
    return 0;
  }

  if (a1[8] != 8)
  {
    v3 = 126;
    v4 = 231;
    goto LABEL_9;
  }

  return v1();
}

uint64_t sub_23941925C(uint64_t *a1)
{
  if (a1 && (v1 = *a1) != 0 && (*(v1 + 56) || *(v1 + 64)))
  {
    *(a1 + 8) = 16;
    return 1;
  }

  else
  {
    sub_2394170F4(6, 0, 125, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp_ctx.c", 240);
    return 0;
  }
}

uint64_t sub_2394192C0(_DWORD *a1)
{
  if (!a1 || !*a1 || (v1 = *(*a1 + 56)) == 0)
  {
    v3 = 125;
    v4 = 250;
LABEL_9:
    sub_2394170F4(6, 0, v3, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp_ctx.c", v4);
    return 0;
  }

  if (a1[8] != 16)
  {
    v3 = 126;
    v4 = 254;
    goto LABEL_9;
  }

  return v1();
}

uint64_t sub_239419348(_DWORD *a1)
{
  if (a1 && *a1 && *(*a1 + 80))
  {
    a1[8] = 64;
    return 1;
  }

  else
  {
    sub_2394170F4(6, 0, 125, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp_ctx.c", 262);
    return 0;
  }
}

uint64_t sub_2394193A4(_DWORD *a1)
{
  if (!a1 || !*a1 || (v1 = *(*a1 + 80)) == 0)
  {
    v3 = 125;
    v4 = 272;
LABEL_9:
    sub_2394170F4(6, 0, v3, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp_ctx.c", v4);
    return 0;
  }

  if (a1[8] != 64)
  {
    v3 = 126;
    v4 = 276;
    goto LABEL_9;
  }

  return v1();
}

uint64_t sub_23941942C(_DWORD *a1)
{
  if (a1 && *a1 && *(*a1 + 88))
  {
    a1[8] = 128;
    return 1;
  }

  else
  {
    sub_2394170F4(6, 0, 125, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp_ctx.c", 284);
    return 0;
  }
}

uint64_t sub_239419488(_DWORD *a1)
{
  if (!a1 || !*a1 || (v1 = *(*a1 + 88)) == 0)
  {
    v3 = 125;
    v4 = 294;
LABEL_9:
    sub_2394170F4(6, 0, v3, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp_ctx.c", v4);
    return 0;
  }

  if (a1[8] != 128)
  {
    v3 = 126;
    v4 = 298;
    goto LABEL_9;
  }

  return v1();
}

uint64_t sub_239419510(_DWORD *a1)
{
  if (a1 && *a1 && *(*a1 + 72))
  {
    a1[8] = 32;
    return 1;
  }

  else
  {
    sub_2394170F4(6, 0, 125, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp_ctx.c", 306);
    return 0;
  }
}

uint64_t sub_23941956C(_DWORD *a1)
{
  if (!a1 || !*a1 || (v1 = *(*a1 + 72)) == 0)
  {
    v3 = 125;
    v4 = 316;
LABEL_9:
    sub_2394170F4(6, 0, v3, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp_ctx.c", v4);
    return 0;
  }

  if (a1[8] != 32)
  {
    v3 = 126;
    v4 = 320;
    goto LABEL_9;
  }

  return v1();
}

uint64_t sub_2394195F4(_DWORD *a1)
{
  if (a1 && *a1 && *(*a1 + 96))
  {
    a1[8] = 256;
    return 1;
  }

  else
  {
    sub_2394170F4(6, 0, 125, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp_ctx.c", 328);
    return 0;
  }
}

uint64_t sub_239419650(uint64_t a1, unsigned int *a2)
{
  if (!a1 || (v3 = *a1) == 0 || !v3[12] && !v3[10] && !v3[11] || (v5 = v3[14]) == 0)
  {
    v9 = 125;
    v10 = 340;
LABEL_14:
    sub_2394170F4(6, 0, v9, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp_ctx.c", v10);
    return 0;
  }

  v6 = *(a1 + 32);
  if (v6 != 64 && v6 != 128 && v6 != 256)
  {
    v9 = 126;
    v10 = 346;
    goto LABEL_14;
  }

  v7 = v5(a1, 3, 0, a2);
  if (v7 < 1)
  {
    return 0;
  }

  if (v7 == 2)
  {
    return 1;
  }

  v11 = *(a1 + 16);
  if (!v11)
  {
    v9 = 120;
    v10 = 361;
    goto LABEL_14;
  }

  if (*(v11 + 4) != a2[1])
  {
    v9 = 103;
    v10 = 366;
    goto LABEL_14;
  }

  if (!sub_239417B2C(a2) && !sub_239417B48(*(a1 + 16), a2))
  {
    v9 = 104;
    v10 = 377;
    goto LABEL_14;
  }

  sub_239417838(*(a1 + 24));
  *(a1 + 24) = a2;
  if ((*(*a1 + 112))(a1, 3, 1, a2) > 0)
  {
    sub_2394178A4(a2);
    return 1;
  }

  result = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_2394197F4(_DWORD *a1)
{
  if (!a1 || !*a1 || (v1 = *(*a1 + 96)) == 0)
  {
    v3 = 125;
    v4 = 397;
LABEL_9:
    sub_2394170F4(6, 0, v3, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp_ctx.c", v4);
    return 0;
  }

  if (a1[8] != 256)
  {
    v3 = 126;
    v4 = 401;
    goto LABEL_9;
  }

  return v1();
}

uint64_t sub_23941987C(_DWORD *a1)
{
  if (a1 && *a1 && *(*a1 + 32))
  {
    a1[8] = 4;
    return 1;
  }

  else
  {
    sub_2394170F4(6, 0, 125, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp_ctx.c", 409);
    return 0;
  }
}

uint64_t sub_2394198D8(_DWORD *a1, uint64_t *a2)
{
  if (!a1 || !*a1 || (v3 = *(*a1 + 32)) == 0)
  {
    v8 = 125;
    v9 = 418;
LABEL_12:
    sub_2394170F4(6, 0, v8, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp_ctx.c", v9);
    return 0;
  }

  if (a1[8] != 4)
  {
    v8 = 126;
    v9 = 422;
    goto LABEL_12;
  }

  if (!a2)
  {
    return 0;
  }

  v5 = *a2;
  if (*a2)
  {
    goto LABEL_9;
  }

  sub_23941780C();
  *a2 = v6;
  if (!v6)
  {
    v8 = 6;
    v9 = 433;
    goto LABEL_12;
  }

  v3 = *(*a1 + 32);
LABEL_9:
  if (v3(a1))
  {
    return 1;
  }

  sub_239417838(*a2);
  result = 0;
  *a2 = 0;
  return result;
}

uint64_t sub_2394199BC(_DWORD *a1)
{
  if (a1 && *a1 && *(*a1 + 104))
  {
    a1[8] = 512;
    return 1;
  }

  else
  {
    sub_2394170F4(6, 0, 125, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp_ctx.c", 448);
    return 0;
  }
}

uint64_t sub_239419A18(_DWORD *a1, uint64_t *a2)
{
  if (!a1 || !*a1 || (v3 = *(*a1 + 104)) == 0)
  {
    v8 = 125;
    v9 = 457;
LABEL_12:
    sub_2394170F4(6, 0, v8, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp_ctx.c", v9);
    return 0;
  }

  if (a1[8] != 512)
  {
    v8 = 126;
    v9 = 461;
    goto LABEL_12;
  }

  if (!a2)
  {
    return 0;
  }

  v5 = *a2;
  if (*a2)
  {
    goto LABEL_9;
  }

  sub_23941780C();
  *a2 = v6;
  if (!v6)
  {
    v8 = 6;
    v9 = 472;
    goto LABEL_12;
  }

  v3 = *(*a1 + 104);
LABEL_9:
  if (v3(a1))
  {
    return 1;
  }

  sub_239417838(*a2);
  result = 0;
  *a2 = 0;
  return result;
}

uint64_t sub_239419AFC(uint64_t a1)
{
  result = sub_2394500B0(4uLL);
  if (result)
  {
    *(a1 + 40) = result;
    return 1;
  }

  return result;
}

uint64_t sub_239419B30(uint64_t a1, uint64_t a2)
{
  result = sub_2394500B0(4uLL);
  if (result)
  {
    *(a1 + 40) = result;
    *result = **(a2 + 40);
    return 1;
  }

  return result;
}

uint64_t sub_239419BA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2394305DC();
  if (!v4 || !sub_23941A0B8(a2, v4))
  {
    sub_23943061C(v4);
    return 0;
  }

  v5 = *(a1 + 16);
  if (v5 && !sub_239417970(a2, v5))
  {
    return 0;
  }

  return sub_2394307BC(v4);
}

uint64_t sub_239419C2C(void *a1, char *a2, unint64_t *a3)
{
  v3 = a1[2];
  if (!v3 || (v4 = a1[3]) == 0)
  {
    v7 = 117;
    v8 = 68;
    goto LABEL_10;
  }

  v5 = *(v3 + 8);
  if (v5)
  {
    v6 = *(v4 + 8) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 117;
    v8 = 75;
LABEL_10:
    sub_2394170F4(6, 0, v7, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_dh.c", v8);
    return 0;
  }

  v12 = a1[5];
  v13 = sub_239412CE0(*(v4 + 8));
  if (!v13)
  {
    v7 = 117;
    v8 = 81;
    goto LABEL_10;
  }

  if (a2)
  {
    v14 = v13;
    v15 = *a3;
    if (v15 < sub_239430AA4(v5))
    {
      v7 = 100;
      v8 = 91;
      goto LABEL_10;
    }

    if (*v12)
    {
      v17 = sub_239430C90(a2, v14, v5);
    }

    else
    {
      v17 = sub_239430C94(a2, v14, v5);
    }

    if ((v17 & 0x80000000) != 0)
    {
      return 0;
    }

    v16 = v17;
  }

  else
  {
    v16 = sub_239430AA4(v5);
  }

  *a3 = v16;
  return 1;
}

uint64_t sub_239419D74(uint64_t a1, int a2, int a3)
{
  if (a2 == 3)
  {
    return 1;
  }

  if (a2 == 4115)
  {
    **(a1 + 40) = a3;
    return 1;
  }

  sub_2394170F4(6, 0, 101, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_dh.c", 119);
  return 0;
}

BOOL sub_239419DE8(uint64_t a1, uint64_t a2)
{
  if (sub_239419F9C(a1, a2) < 1)
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = sub_239412CE0(*(a1 + 8));
  v6 = sub_239412CE0(v4);
  return sub_2394229D8(v5, v6) == 0;
}

uint64_t sub_239419EA4(uint64_t a1, uint64_t a2)
{
  if (sub_239419E5C(a2))
  {
    sub_2394170F4(6, 0, 118, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_dh_asn1.c", 36);
  }

  else
  {
    v4 = *(a2 + 8);
    v5 = sub_239412CF0(v4);
    v6 = sub_2392CCA14(v4);
    v7 = sub_239421F2C(v6);
    if (v5)
    {
      v8 = sub_239421F2C(v5);
    }

    else
    {
      v8 = 0;
    }

    v9 = sub_2393FFBF4(v4);
    v10 = sub_239421F2C(v9);
    v11 = v10;
    if (v7)
    {
      v12 = v8 || v5 == 0;
      if (v12 && v10 && sub_239430720(*(a1 + 8), v7, v8, v10))
      {
        return 1;
      }
    }

    sub_239421EC8(v7);
    sub_239421EC8(v8);
    sub_239421EC8(v11);
  }

  return 0;
}

uint64_t sub_239419F9C(uint64_t a1, uint64_t a2)
{
  if (sub_239419E5C(a1) || sub_239419E5C(a2))
  {
    return 4294967294;
  }

  v5 = *(a1 + 8);
  v6 = *(a2 + 8);
  v7 = sub_2392CCA14(v5);
  v8 = sub_2392CCA14(v6);
  if (sub_2394229D8(v7, v8))
  {
    return 0;
  }

  v9 = sub_2393FFBF4(v5);
  v10 = sub_2393FFBF4(v6);
  return sub_2394229D8(v9, v10) == 0;
}

uint64_t sub_23941A06C(uint64_t a1, uint64_t a2)
{
  sub_239417ADC(a1, dword_284BB97A0);
  *(a1 + 8) = a2;
  if (!a2)
  {
    return 0;
  }

  sub_239430F08(a2);
  return 1;
}

BOOL sub_23941A0B8(uint64_t a1, uint64_t a2)
{
  sub_239417ADC(a1, dword_284BB97A0);
  *(a1 + 8) = a2;
  return a2 != 0;
}

uint64_t sub_23941A0F4(uint64_t a1)
{
  if (*(a1 + 4) == 28)
  {
    return *(a1 + 8);
  }

  sub_2394170F4(6, 0, 138, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_dh_asn1.c", 108);
  return 0;
}

uint64_t sub_23941A140(uint64_t a1)
{
  if (*(a1 + 4) == 28)
  {
    v1 = *(a1 + 8);
    if (v1)
    {
      sub_239430F08(*(a1 + 8));
    }
  }

  else
  {
    sub_2394170F4(6, 0, 138, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_dh_asn1.c", 108);
    return 0;
  }

  return v1;
}

uint64_t sub_23941A1A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 8))
  {
    v6 = sub_239414730(a2);
    if (!v6 || *(a2 + 8))
    {
      v7 = 81;
LABEL_10:
      sub_2394170F4(6, 0, 102, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_dsa_asn1.c", v7);
      goto LABEL_11;
    }
  }

  else
  {
    result = sub_239412BCC();
    v6 = result;
    if (!result)
    {
      return result;
    }
  }

  v9 = sub_239421E8C();
  v6[3] = v9;
  if (v9)
  {
    if (sub_239405234(a3, v9) && !*(a3 + 8))
    {
      sub_239417ADC(a1, &dword_284BB9848);
      *(a1 + 8) = v6;
      return 1;
    }

    v7 = 93;
    goto LABEL_10;
  }

LABEL_11:
  sub_239412C14(v6);
  return 0;
}

uint64_t sub_23941A26C(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *v3 && *(v3 + 8) && *(v3 + 16) != 0;
  memset(v9, 0, sizeof(v9));
  memset(v8, 0, sizeof(v8));
  memset(v7, 0, sizeof(v7));
  memset(v6, 0, sizeof(v6));
  if (sub_239406A10(a1, v9, 0x20000010u) && sub_239406A10(v9, v8, 0x20000010u) && sub_239406A10(v8, v7, 6u) && sub_239406C48(v7, &unk_284BB984C, 7uLL) && (!v4 || sub_239414818(v8, v3)) && sub_239406A10(v9, v6, 3u) && sub_239406ACC(v6, 0) && sub_2394052E0(v6, *(v3 + 24)) && sub_239406758(a1))
  {
    return 1;
  }

  sub_2394170F4(6, 0, 105, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_dsa_asn1.c", 121);
  return 0;
}

BOOL sub_23941A3BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = sub_239412CE0(*(a2 + 8));
  v4 = sub_239412CE0(v2);
  return sub_2394229D8(v3, v4) == 0;
}

uint64_t sub_23941A404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_239414730(a2);
  if (!v6 || *(a2 + 8))
  {
    v7 = 135;
LABEL_4:
    sub_2394170F4(6, 0, 102, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_dsa_asn1.c", v7);
LABEL_5:
    v8 = 0;
LABEL_6:
    sub_239422D38(v8);
    sub_239412C14(v6);
    return 0;
  }

  v10 = sub_239421E8C();
  v6[4] = v10;
  if (!v10)
  {
    goto LABEL_5;
  }

  if (!sub_239405234(a3, v10) || *(a3 + 8))
  {
    v7 = 145;
    goto LABEL_4;
  }

  if (!sub_239414180(v6))
  {
    v7 = 153;
    goto LABEL_4;
  }

  sub_239422D0C();
  v8 = v11;
  v12 = sub_239421E8C();
  v6[3] = v12;
  if (!v8 || !v12 || !sub_239426160(v12, v6[2], v6[4], *v6, v8, 0))
  {
    goto LABEL_6;
  }

  sub_239422D38(v8);
  sub_239417ADC(a1, &dword_284BB9848);
  *(a1 + 8) = v6;
  return 1;
}

uint64_t sub_23941A518(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 && v2[4])
  {
    memset(v10, 0, sizeof(v10));
    memset(v9, 0, sizeof(v9));
    memset(v8, 0, sizeof(v8));
    memset(v7, 0, sizeof(v7));
    if (sub_239406A10(a1, v10, 0x20000010u) && sub_239406FE8(v10, 0) && sub_239406A10(v10, v9, 0x20000010u) && sub_239406A10(v9, v8, 6u) && sub_239406C48(v8, &unk_284BB984C, 7uLL) && sub_239414818(v9, v2) && sub_239406A10(v10, v7, 4u) && sub_2394052E0(v7, v2[4]) && sub_239406758(a1))
    {
      return 1;
    }

    v5 = 105;
    v6 = 194;
  }

  else
  {
    v5 = 118;
    v6 = 179;
  }

  sub_2394170F4(6, 0, v5, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_dsa_asn1.c", v6);
  return 0;
}

uint64_t sub_23941A664(uint64_t a1)
{
  v1 = sub_2392CCA14(*(a1 + 8));

  return sub_239422114(v1);
}

uint64_t sub_23941A6E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (!sub_23941A9B8(v2, *v3) || !sub_23941A9B8(v2 + 1, v3[1]))
  {
    return 0;
  }

  v4 = v3[2];

  return sub_23941A9B8(v2 + 2, v4);
}

BOOL sub_23941A74C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = sub_2392CCA14(v2);
  v5 = sub_2392CCA14(v3);
  if (sub_2394229D8(v4, v5))
  {
    return 0;
  }

  v6 = sub_2393FFBF4(v2);
  v7 = sub_2393FFBF4(v3);
  if (sub_2394229D8(v6, v7))
  {
    return 0;
  }

  v9 = sub_239412CF0(v2);
  v10 = sub_239412CF0(v3);
  return sub_2394229D8(v9, v10) == 0;
}

uint64_t sub_23941A884(uint64_t a1, uint64_t a2)
{
  sub_239417ADC(a1, &dword_284BB9848);
  *(a1 + 8) = a2;
  if (!a2)
  {
    return 0;
  }

  sub_239412CB8(a2);
  return 1;
}

BOOL sub_23941A8D0(uint64_t a1, uint64_t a2)
{
  sub_239417ADC(a1, &dword_284BB9848);
  *(a1 + 8) = a2;
  return a2 != 0;
}

uint64_t sub_23941A90C(uint64_t a1)
{
  if (*(a1 + 4) == 116)
  {
    return *(a1 + 8);
  }

  sub_2394170F4(6, 0, 108, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_dsa_asn1.c", 326);
  return 0;
}

uint64_t sub_23941A958(uint64_t a1)
{
  if (*(a1 + 4) == 116)
  {
    v1 = *(a1 + 8);
    if (v1)
    {
      sub_239412CB8(*(a1 + 8));
    }
  }

  else
  {
    sub_2394170F4(6, 0, 108, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_dsa_asn1.c", 326);
    return 0;
  }

  return v1;
}

uint64_t sub_23941A9B8(void ***a1, uint64_t a2)
{
  result = sub_239421F2C(a2);
  if (result)
  {
    v4 = result;
    sub_239421EC8(*a1);
    *a1 = v4;
    return 1;
  }

  return result;
}

uint64_t sub_23941A9F8(uint64_t a1)
{
  result = sub_2394500B0(0x10uLL);
  if (result)
  {
    *(a1 + 40) = result;
    return 1;
  }

  return result;
}

uint64_t sub_23941AA2C(uint64_t a1, uint64_t a2)
{
  result = sub_2394500B0(0x10uLL);
  if (result)
  {
    *(a1 + 40) = result;
    v5 = *(a2 + 40);
    *result = *v5;
    *(result + 8) = v5[1];
    return 1;
  }

  return result;
}

void sub_23941AA78(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_239450144(v1);
  }
}

uint64_t sub_23941AA88(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 40) + 8);
  if (!v3)
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      sub_2394170F4(6, 0, 124, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_ec.c", 212);
      return 0;
    }

    v3 = sub_2392CCA14(*(v4 + 8));
  }

  v5 = sub_239435F30();
  v6 = v5;
  if (v5 && sub_23943618C(v5, v3) && sub_239436E50(v6))
  {
    sub_23941B5E8(a2, v6);
    return 1;
  }

  sub_23943603C(v6);
  return 0;
}

uint64_t sub_23941AB38(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, size_t a5)
{
  v6 = *(a1 + 16);
  v7 = *(v6 + 8);
  if (!a2)
  {
    *a3 = sub_23941623C(*(v6 + 8));
    return 1;
  }

  v11 = *a3;
  if (v11 < sub_23941623C(*(v6 + 8)))
  {
    sub_2394170F4(6, 0, 100, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_ec.c", 120);
    return 0;
  }

  v13 = 0;
  result = sub_23941611C(0, a4, a5, a2, &v13, v7);
  if (result)
  {
    *a3 = v13;
    return 1;
  }

  return result;
}

uint64_t sub_23941AC28(uint64_t a1, void *a2, unint64_t *a3)
{
  v3 = *(a1 + 16);
  if (!v3 || (v4 = *(a1 + 24)) == 0)
  {
    sub_2394170F4(6, 0, 117, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_ec.c", 141);
    return 0;
  }

  v7 = *(v3 + 8);
  if (!a2)
  {
    v12 = sub_2392CCA14(*(v3 + 8));
    v10 = (sub_2394344CC(v12) + 7) >> 3;
    goto LABEL_9;
  }

  v8 = sub_2393FFBF4(*(v4 + 8));
  v9 = sub_239415F38(a2, *a3, v8, v7, 0);
  if ((v9 & 0x80000000) != 0)
  {
    return 0;
  }

  v10 = v9;
LABEL_9:
  *a3 = v10;
  return 1;
}

uint64_t sub_23941ACD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (*(v2 + 8))
  {
    v4 = sub_239435F30();
    v5 = v4;
    if (v4 && sub_23943618C(v4, *(v2 + 8)))
    {
      sub_23941B5E8(a2, v5);
      return 1;
    }

    sub_23943603C(v5);
  }

  else
  {
    sub_2394170F4(6, 0, 124, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_ec.c", 231);
  }

  return 0;
}

uint64_t sub_23941AD68(uint64_t a1, int a2, int a3, unsigned int *a4)
{
  v4 = *(a1 + 40);
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      v9 = sub_2393FFBE4(a4);
      if ((v9 - 672) < 4 || v9 == 64)
      {
        *v4 = a4;
        return 1;
      }

      v7 = 111;
      v8 = 177;
LABEL_10:
      sub_2394170F4(6, 0, v7, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_ec.c", v8);
      return 0;
    }

    if (a2 == 2)
    {
      *a4 = *v4;
      return 1;
    }

LABEL_9:
    v7 = 101;
    v8 = 202;
    goto LABEL_10;
  }

  if (a2 == 3)
  {
    return 1;
  }

  if (a2 != 4109)
  {
    goto LABEL_9;
  }

  result = sub_239433FAC(a3);
  if (!result)
  {
    return result;
  }

  v4[1] = result;
  return 1;
}

uint64_t sub_23941AE54(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    return 1;
  }

  sub_2394170F4(6, 0, 133, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_ec.c", 270);
  return 0;
}

uint64_t sub_23941AE9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_239415988(a2);
  if (!v6 || *(a2 + 8))
  {
    sub_2394170F4(6, 0, 102, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_ec_asn1.c", 99);
    v7 = 0;
LABEL_4:
    sub_23943603C(v7);
    return 0;
  }

  v9 = v6;
  v10 = sub_239435F30();
  v7 = v10;
  if (!v10 || !sub_23943618C(v10, v9) || !sub_239436728(v7, *a3, *(a3 + 8), 0))
  {
    goto LABEL_4;
  }

  sub_239417ADC(a1, &dword_284BB9968);
  *(a1 + 8) = v7;
  return 1;
}

uint64_t sub_23941AF5C(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = sub_2392CCA14(v3);
  v5 = sub_2393FFBF4(v3);
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  memset(v8, 0, sizeof(v8));
  memset(v7, 0, sizeof(v7));
  if (sub_239406A10(a1, v10, 0x20000010u) && sub_239406A10(v10, v9, 0x20000010u) && sub_239406A10(v9, v8, 6u) && sub_239406C48(v8, &unk_284BB996C, 7uLL) && sub_239415848(v9, v4) && sub_239406A10(v10, v7, 3u) && sub_239406ACC(v7, 0) && sub_2394158E0(v7, v4, v5, 4) && sub_239406758(a1))
  {
    return 1;
  }

  sub_2394170F4(6, 0, 105, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_ec_asn1.c", 85);
  return 0;
}

uint64_t sub_23941B0A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = sub_2392CCA14(v3);
  v5 = sub_2393FFBF4(v2);
  v6 = sub_2393FFBF4(v3);
  v7 = sub_239434C7C(v4, v5, v6);
  if (v7 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = -2;
  }

  if (v7)
  {
    return v8;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_23941B11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2394151A8(a2);
  if (!v6 || *(a2 + 8))
  {
    sub_2394170F4(6, 0, 102, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_ec_asn1.c", 138);
    return 0;
  }

  v8 = sub_239414EB0(a3, v6);
  if (!v8 || *(a3 + 8))
  {
    sub_2394170F4(6, 0, 102, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_ec_asn1.c", 144);
    sub_23943603C(v8);
    return 0;
  }

  sub_239417ADC(a1, &dword_284BB9968);
  *(a1 + 8) = v8;
  return 1;
}

uint64_t sub_23941B1E0(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = sub_23942E714(v3);
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  memset(v8, 0, sizeof(v8));
  memset(v7, 0, sizeof(v7));
  if (sub_239406A10(a1, v10, 0x20000010u))
  {
    if (sub_239406FE8(v10, 0))
    {
      if (sub_239406A10(v10, v9, 0x20000010u))
      {
        if (sub_239406A10(v9, v8, 6u))
        {
          if (sub_239406C48(v8, &unk_284BB996C, 7uLL))
          {
            v5 = sub_2392CCA14(v3);
            if (sub_239415848(v9, v5))
            {
              if (sub_239406A10(v10, v7, 4u) && sub_239415624(v7, v3, v4 | 1u) && sub_239406758(a1))
              {
                return 1;
              }
            }
          }
        }
      }
    }
  }

  sub_2394170F4(6, 0, 105, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_ec_asn1.c", 173);
  return 0;
}

BOOL sub_23941B320(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {

    return sub_239436728(v4, a2, a3, 0);
  }

  else
  {
    sub_2394170F4(6, 0, 120, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_ec_asn1.c", 184);
    return 0;
  }
}

char *sub_23941B370(uint64_t a1, char **a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {

    return sub_239436AFC(v3, 4, a2);
  }

  else
  {
    sub_2394170F4(6, 0, 120, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_ec_asn1.c", 195);
    return 0;
  }
}

uint64_t sub_23941B3EC(uint64_t a1)
{
  v1 = sub_2392CCA14(*(a1 + 8));
  if (v1)
  {

    return sub_239434378(v1);
  }

  else
  {
    sub_239416A38();
    return 0;
  }
}

BOOL sub_23941B460(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (!v3)
  {
    v8 = 120;
    v9 = 225;
LABEL_10:
    sub_2394170F4(6, 0, v8, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_ec_asn1.c", v9);
    return 0;
  }

  v4 = sub_2392CCA14(v3);
  if (!v4)
  {
    v8 = 118;
    v9 = 230;
    goto LABEL_10;
  }

  v5 = v4;
  v6 = *(a1 + 8);
  if (!v6)
  {
    v6 = sub_239435F30();
    *(a1 + 8) = v6;
    if (!v6)
    {
      return 0;
    }
  }

  return sub_23943618C(v6, v5);
}

uint64_t sub_23941B504(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 4294967294;
  }

  v5 = sub_2392CCA14(v2);
  v6 = sub_2392CCA14(v3);
  if (!v5 || v6 == 0)
  {
    return 4294967294;
  }

  else
  {
    return sub_2394321AC(v5, v6) == 0;
  }
}

uint64_t sub_23941B59C(uint64_t a1, uint64_t a2)
{
  sub_239417ADC(a1, &dword_284BB9968);
  *(a1 + 8) = a2;
  if (!a2)
  {
    return 0;
  }

  sub_2394363B8(a2);
  return 1;
}

BOOL sub_23941B5E8(uint64_t a1, uint64_t a2)
{
  sub_239417ADC(a1, &dword_284BB9968);
  *(a1 + 8) = a2;
  return a2 != 0;
}

uint64_t sub_23941B624(uint64_t a1)
{
  if (*(a1 + 4) == 408)
  {
    return *(a1 + 8);
  }

  sub_2394170F4(6, 0, 106, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_ec_asn1.c", 320);
  return 0;
}

uint64_t sub_23941B670(uint64_t a1)
{
  if (*(a1 + 4) == 408)
  {
    v1 = *(a1 + 8);
    if (v1)
    {
      sub_2394363B8(*(a1 + 8));
    }
  }

  else
  {
    sub_2394170F4(6, 0, 106, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_ec_asn1.c", 320);
    return 0;
  }

  return v1;
}

uint64_t sub_23941B6D8(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = sub_23945004C(0x41uLL);
  if (v3)
  {
    v4 = v3;
    sub_239417ADC(a2, &dword_284BB9A88);
    sub_23940D26C(v8, v4);
    v5 = 1;
    *(v4 + 64) = 1;
    sub_239450144(*(a2 + 8));
    *(a2 + 8) = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_23941B780(uint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, size_t a5)
{
  v5 = *(*(a1 + 16) + 8);
  if (!*(v5 + 64))
  {
    v7 = 130;
    v8 = 49;
    goto LABEL_6;
  }

  if (!a2)
  {
    goto LABEL_8;
  }

  if (*a3 <= 0x3FuLL)
  {
    v7 = 100;
    v8 = 59;
LABEL_6:
    sub_2394170F4(6, 0, v7, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_ed25519.c", v8);
    return 0;
  }

  result = sub_23940D3B0(a2, a4, a5, v5);
  if (result)
  {
LABEL_8:
    *a3 = 64;
    return 1;
  }

  return result;
}

uint64_t sub_23941B824(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, size_t a5)
{
  if (a3 == 64 && sub_23940E074(a4, a5, a2, (*(*(a1 + 16) + 8) + 32)))
  {
    return 1;
  }

  sub_2394170F4(6, 0, 131, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_ed25519.c", 77);
  return 0;
}

uint64_t sub_23941B890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 8))
  {
    sub_2394170F4(6, 0, 102, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_ed25519_asn1.c", 119);
    return 0;
  }

  else
  {
    v5 = *a3;
    v6 = *(a3 + 8);

    return sub_23941BCBC(a1, v5, v6);
  }
}

uint64_t sub_23941B8E0(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  memset(v8, 0, sizeof(v8));
  memset(v7, 0, sizeof(v7));
  memset(v6, 0, sizeof(v6));
  memset(v5, 0, sizeof(v5));
  if (sub_239406A10(a1, v8, 0x20000010u) && sub_239406A10(v8, v7, 0x20000010u) && sub_239406A10(v7, v6, 6u) && sub_239406C48(v6, &unk_284BB9A8C, 3uLL) && sub_239406A10(v8, v5, 3u) && sub_239406ACC(v5, 0) && sub_239406C48(v5, (v3 + 32), 0x20uLL) && sub_239406758(a1))
  {
    return 1;
  }

  sub_2394170F4(6, 0, 105, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_ed25519_asn1.c", 140);
  return 0;
}

BOOL sub_23941B9F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2[4];
  v5 = v2[5];
  v6 = v3[4];
  v7 = v3[5];
  v9 = v2[6];
  v8 = v2[7];
  v11 = v3[6];
  v10 = v3[7];
  return v4 == v6 && v5 == v7 && v9 == v11 && v8 == v10;
}

uint64_t sub_23941BA20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = 0;
  if (!*(a2 + 8) && sub_239407F5C(a3, &v6, 4) && !*(a3 + 8))
  {
    return sub_23941BBF8(a1, v6, v7);
  }

  sub_2394170F4(6, 0, 102, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_ed25519_asn1.c", 163);
  return 0;
}

uint64_t sub_23941BAA4(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2[64])
  {
    memset(v11, 0, sizeof(v11));
    memset(v10, 0, sizeof(v10));
    memset(v9, 0, sizeof(v9));
    memset(v8, 0, sizeof(v8));
    memset(v7, 0, sizeof(v7));
    if (sub_239406A10(a1, v11, 0x20000010u) && sub_239406FE8(v11, 0) && sub_239406A10(v11, v10, 0x20000010u) && sub_239406A10(v10, v9, 6u) && sub_239406C48(v9, &unk_284BB9A8C, 3uLL) && sub_239406A10(v11, v8, 4u) && sub_239406A10(v8, v7, 4u) && sub_239406C48(v7, v2, 0x20uLL) && sub_239406758(a1))
    {
      return 1;
    }

    v5 = 105;
    v6 = 190;
  }

  else
  {
    v5 = 130;
    v6 = 173;
  }

  sub_2394170F4(6, 0, v5, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_ed25519_asn1.c", v6);
  return 0;
}

uint64_t sub_23941BBF8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a3 != 32)
  {
    sub_2394170F4(6, 0, 102, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_ed25519_asn1.c", 33);
    goto LABEL_5;
  }

  v5 = sub_23945004C(0x41uLL);
  if (!v5)
  {
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = v5;
  sub_23940D2E0(v10, v5, a2);
  v7 = 1;
  *(v6 + 64) = 1;
  sub_239450144(*(a1 + 8));
  *(a1 + 8) = v6;
LABEL_6:
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t sub_23941BCBC(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  if (a3 == 32)
  {
    result = sub_23945004C(0x41uLL);
    if (result)
    {
      v6 = result;
      v7 = a2[1];
      *(result + 32) = *a2;
      *(result + 48) = v7;
      *(result + 64) = 0;
      sub_239450144(*(a1 + 8));
      *(a1 + 8) = v6;
      return 1;
    }
  }

  else
  {
    sub_2394170F4(6, 0, 102, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_ed25519_asn1.c", 55);
    return 0;
  }

  return result;
}

uint64_t sub_23941BD40(uint64_t a1, _OWORD *a2, void *a3)
{
  v3 = *(a1 + 8);
  if (!*(v3 + 64))
  {
    v4 = 130;
    v5 = 76;
    goto LABEL_6;
  }

  if (a2)
  {
    if (*a3 <= 0x1FuLL)
    {
      v4 = 100;
      v5 = 86;
LABEL_6:
      sub_2394170F4(6, 0, v4, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_ed25519_asn1.c", v5);
      return 0;
    }

    v7 = *(v3 + 16);
    *a2 = *v3;
    a2[1] = v7;
  }

  *a3 = 32;
  return 1;
}

uint64_t sub_23941BDC4(uint64_t a1, _OWORD *a2, void *a3)
{
  if (a2)
  {
    if (*a3 <= 0x1FuLL)
    {
      sub_2394170F4(6, 0, 100, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_ed25519_asn1.c", 105);
      return 0;
    }

    v4 = *(a1 + 8);
    v5 = *(v4 + 48);
    *a2 = *(v4 + 32);
    a2[1] = v5;
  }

  *a3 = 32;
  return 1;
}

uint64_t sub_23941BE64(uint64_t a1)
{
  result = sub_2394500B0(0x60uLL);
  if (result)
  {
    v3 = result;
    if (sub_2394065F4(result + 48, 0))
    {
      *(a1 + 40) = v3;
      return 1;
    }

    else
    {
      sub_239450144(v3);
      return 0;
    }
  }

  return result;
}

uint64_t sub_23941BEBC(uint64_t a1, uint64_t a2)
{
  result = sub_23941BE64(a1);
  if (result)
  {
    v5 = *(a1 + 40);
    v6 = *(a2 + 40);
    *v5 = *v6;
    *(v5 + 8) = *(v6 + 8);
    v7 = *(v6 + 24);
    if (v7)
    {
      result = sub_239450350(*(v6 + 16), v7);
      *(v5 + 16) = result;
      if (!result)
      {
        return result;
      }

      *(v5 + 24) = *(v6 + 24);
    }

    v8 = *(v6 + 40);
    if (v8)
    {
      result = sub_239450350(*(v6 + 32), v8);
      *(v5 + 32) = result;
      if (!result)
      {
        return result;
      }

      *(v5 + 40) = *(v6 + 40);
    }

    v9 = sub_239406940(v6 + 48);
    v10 = sub_239406968(v6 + 48);
    return sub_239406C48(v5 + 48, v9, v10) != 0;
  }

  return result;
}

void sub_23941BF74(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_239450144(*(v1 + 16));
    sub_239450144(*(v1 + 32));
    sub_239406688(v1 + 48);
    sub_239450144(v1);
    *(a1 + 40) = 0;
  }
}

uint64_t sub_23941BFC0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 1);
  if (!v4)
  {
    v16 = 118;
    v17 = 100;
LABEL_19:
    sub_2394170F4(6, 0, v16, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_hkdf.c", v17);
    return 0;
  }

  v5 = *(v3 + 3);
  if (!v5)
  {
    v16 = 120;
    v17 = 104;
    goto LABEL_19;
  }

  v8 = *v3;
  if (a2)
  {
    switch(v8)
    {
      case 2:
        v19 = *a3;
        v20 = *(v3 + 2);
        v21 = sub_239406940((v3 + 12));
        v22 = sub_239406968((v3 + 12));

        return sub_23943A8D4(a2, v19, v4, v20, v5, v21, v22);
      case 1:
        v18 = *a3;
        if (v18 < sub_2393FFBEC(*(v3 + 1)))
        {
          v16 = 100;
          v17 = 124;
          goto LABEL_19;
        }

        v23 = *(v3 + 1);
        v24 = *(v3 + 2);
        v25 = *(v3 + 3);
        v26 = *(v3 + 4);
        v27 = *(v3 + 5);

        return sub_23943A854(a2, a3, v23, v24, v25, v26, v27);
      case 0:
        v9 = *a3;
        v10 = *(v3 + 2);
        v11 = *(v3 + 4);
        v12 = *(v3 + 5);
        v13 = sub_239406940((v3 + 12));
        v14 = sub_239406968((v3 + 12));
        return sub_23943A7B0(a2, v9, v4, v10, v5, v11, v12, v13, v14);
      default:
        v16 = 68;
        v17 = 134;
        goto LABEL_19;
    }
  }

  else
  {
    if (v8 == 1)
    {
      *a3 = sub_2393FFBEC(*(v3 + 1));
    }

    return 1;
  }
}

uint64_t sub_23941C1D8(uint64_t a1, int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(a1 + 40);
  if (a2 > 4111)
  {
    switch(a2)
    {
      case 4112:
        v6 = (v4 + 16);
        v7 = (v4 + 24);
        break;
      case 4113:
        v6 = (v4 + 32);
        v7 = (v4 + 40);
        break;
      case 4114:
        v5 = sub_239406C48(v4 + 48, *a4, *(a4 + 8));
        return v5 != 0;
      default:
        goto LABEL_15;
    }

    v5 = sub_239407740(a4, v6, v7);
    return v5 != 0;
  }

  if (a2 == 4110)
  {
    if (a3 >= 3)
    {
      v9 = 114;
      v10 = 145;
LABEL_16:
      sub_2394170F4(6, 0, v9, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_hkdf.c", v10);
      return 0;
    }

    *v4 = a3;
  }

  else
  {
    if (a2 != 4111)
    {
LABEL_15:
      v9 = 101;
      v10 = 177;
      goto LABEL_16;
    }

    *(v4 + 8) = a4;
  }

  return 1;
}

uint64_t sub_23941C3A0(uint64_t a1)
{
  result = sub_2394500B0(0x48uLL);
  if (result)
  {
    v3 = result;
    *result = 2048;
    result = 1;
    *(v3 + 16) = 1;
    *(v3 + 40) = -2;
    *(a1 + 40) = v3;
  }

  return result;
}

uint64_t sub_23941C3EC(uint64_t a1, uint64_t a2)
{
  result = sub_2394500B0(0x48uLL);
  if (result)
  {
    v5 = result;
    *result = 2048;
    *(result + 16) = 1;
    *(result + 40) = -2;
    *(a1 + 40) = result;
    v6 = *(a2 + 40);
    *result = *v6;
    v7 = *(v6 + 8);
    if (!v7 || (result = sub_239421F2C(v7), (*(v5 + 8) = result) != 0))
    {
      *(v5 + 16) = *(v6 + 16);
      *(v5 + 24) = *(v6 + 24);
      *(v5 + 32) = *(v6 + 32);
      *(v5 + 40) = *(v6 + 40);
      if (*(v6 + 56))
      {
        sub_239450144(*(v5 + 56));
        result = sub_239450350(*(v6 + 56), *(v6 + 64));
        *(v5 + 56) = result;
        if (!result)
        {
          return result;
        }

        *(v5 + 64) = *(v6 + 64);
      }

      return 1;
    }
  }

  return result;
}

void sub_23941C4B0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_239421EC8(*(v1 + 8));
    sub_239450144(*(v1 + 48));
    sub_239450144(*(v1 + 56));

    sub_239450144(v1);
  }
}

uint64_t sub_23941C50C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (*(v3 + 8) || (result = sub_239421E8C(), (*(v3 + 8) = result) != 0) && (result = sub_239421948(result, 65537), result))
  {
    result = sub_23943EB7C();
    if (result)
    {
      v5 = result;
      if (sub_2394415FC(result, *v3, *(v3 + 8), 0))
      {
        sub_23941D754(a2, v5);
        return 1;
      }

      else
      {
        sub_23943F100(v5);
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23941C59C(uint64_t a1, char *a2, size_t *a3, const void *a4, size_t a5)
{
  v9 = *(a1 + 40);
  v10 = *(a1 + 16);
  v11 = *(v10 + 8);
  v12 = sub_239417B7C(v10);
  v13 = v12;
  if (!a2)
  {
    goto LABEL_10;
  }

  v14 = *a3;
  if (*a3 < v12)
  {
    sub_2394170F4(6, 0, 100, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_rsa.c", 181);
    return 0;
  }

  v16 = *(v9 + 24);
  if (v16)
  {
    v20 = 0;
    v17 = *(v9 + 16);
    if (v17 == 6)
    {
      return sub_23943FE1C(v11, a3, a2, v14, a4, a5, v16, *(v9 + 32), *(v9 + 40));
    }

    if (v17 != 1)
    {
      return 0;
    }

    v18 = sub_2393FFBE4(v16);
    result = sub_23943FE18(v18, a4, a5, a2, &v20, v11);
    if (result)
    {
      v13 = v20;
LABEL_10:
      *a3 = v13;
      return 1;
    }
  }

  else
  {
    v19 = *(v9 + 16);

    return sub_23943F9F8(v11, a3, a2);
  }

  return result;
}

uint64_t sub_23941C6E0(uint64_t a1, unsigned __int8 *a2, unint64_t a3, char *a4, size_t a5)
{
  v10 = *(a1 + 40);
  v11 = *(a1 + 16);
  v12 = *(v11 + 8);
  v13 = *(v10 + 24);
  if (!v13)
  {
    v22 = 0;
    v17 = sub_239417B7C(v11);
    result = sub_23941D1E4(v10, a1);
    if (!result)
    {
      return result;
    }

    if (sub_239440544(v12, &v22, *(v10 + 48), v17, a2, a3, *(v10 + 16)))
    {
      v18 = v22 == a5;
    }

    else
    {
      v18 = 0;
    }

    if (v18)
    {
      return sub_23945022C(a4, *(v10 + 48), a5) == 0;
    }

    return 0;
  }

  v14 = *(v10 + 16);
  if (v14 != 6)
  {
    if (v14 == 1)
    {
      v15 = sub_2393FFBE4(*(v10 + 24));

      return sub_2394403C4(v15, a4, a5, a2, a3, v12);
    }

    return 0;
  }

  v19 = *(v10 + 32);
  v20 = *(v10 + 40);
  v21 = *(v11 + 8);

  return sub_2394403C8(v21, a4, a5, v13, v19, v20, a2, a3);
}

uint64_t sub_23941C854(uint64_t a1, void *a2, size_t *a3, unsigned __int8 *a4, unint64_t a5)
{
  v10 = *(a1 + 40);
  v11 = *(a1 + 16);
  v12 = *(v11 + 8);
  v13 = sub_239417B7C(v11);
  v14 = v13;
  if (!a2)
  {
    *a3 = v13;
    return 1;
  }

  v15 = *a3;
  if (*a3 < v13)
  {
    sub_2394170F4(6, 0, 100, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_rsa.c", 253);
    return 0;
  }

  v17 = *(v10 + 24);
  v18 = *(v10 + 16);
  if (v17)
  {
    if (v18 != 1)
    {
      return 0;
    }

    v19 = sub_2393FFBEC(v17);
    v24 = 0;
    v25 = 0;
    v23 = 0;
    result = sub_23941D1E4(v10, a1);
    if (result)
    {
      v20 = sub_2393FFBE4(*(v10 + 24));
      result = sub_23943FA78(&v25, &v24, &v23, v20, &unk_2395CA85F, v19);
      if (result)
      {
        v22 = 0;
        v21 = !sub_239440544(v12, &v22, *(v10 + 48), v14, a4, a5, 1) || v22 != v24 || sub_23945022C(*(v10 + 48), v25, v22 - v19);
        if (v23)
        {
          sub_239450144(v25);
        }

        if (v21)
        {
          return 0;
        }

        if (v19)
        {
          memcpy(a2, (*(v10 + 48) + v22 - v19), v19);
        }

        *a3 = v19;
        return 1;
      }
    }
  }

  else
  {

    return sub_239440544(v12, a3, a2, v15, a4, a5, v18);
  }

  return result;
}

uint64_t sub_23941CA38(uint64_t a1, char *a2, unint64_t *a3, void *a4, size_t a5)
{
  v10 = *(a1 + 40);
  v11 = *(a1 + 16);
  v12 = *(v11 + 8);
  v13 = sub_239417B7C(v11);
  v14 = v13;
  if (a2)
  {
    v15 = *a3;
    if (*a3 >= v13)
    {
      v17 = *(v10 + 16);
      if (v17 == 4)
      {
        result = sub_23941D1E4(v10, a1);
        if (result)
        {
          result = sub_2394563BC(*(v10 + 48), v14, a4, a5, *(v10 + 56), *(v10 + 64), *(v10 + 24), *(v10 + 32));
          if (result)
          {
            return sub_239456994(v12, a3, a2, *a3, *(v10 + 48), v14, 3) != 0;
          }
        }
      }

      else
      {

        return sub_239456994(v12, a3, a2, v15, a4, a5, v17);
      }
    }

    else
    {
      sub_2394170F4(6, 0, 100, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_rsa.c", 317);
      return 0;
    }
  }

  else
  {
    *a3 = v13;
    return 1;
  }

  return result;
}

uint64_t sub_23941CB74(uint64_t a1, void *a2, unint64_t *a3, unsigned __int8 *a4, unint64_t a5)
{
  v10 = *(a1 + 40);
  v11 = *(a1 + 16);
  v12 = *(v11 + 8);
  v13 = sub_239417B7C(v11);
  v14 = v13;
  if (a2)
  {
    if (*a3 >= v13)
    {
      v16 = *(v10 + 16);
      if (v16 == 4)
      {
        v17 = 0;
        result = sub_23941D1E4(v10, a1);
        if (result)
        {
          result = sub_239456DE8(v12, &v17, *(v10 + 48), v14, a4, a5, 3);
          if (result)
          {
            return sub_23945663C(a2, a3, v14, *(v10 + 48), v17, *(v10 + 56), *(v10 + 64), *(v10 + 24), *(v10 + 32)) != 0;
          }
        }
      }

      else
      {

        return sub_239456DE8(v12, a3, a2, v13, a4, a5, v16);
      }
    }

    else
    {
      sub_2394170F4(6, 0, 100, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_rsa.c", 349);
      return 0;
    }
  }

  else
  {
    *a3 = v13;
    return 1;
  }

  return result;
}

uint64_t sub_23941CCCC(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v5 = *(a1 + 40);
  if (a2 <= 4101)
  {
    if (a2 <= 4097)
    {
      if (a2 != 1)
      {
        if (a2 != 2)
        {
          if (a2 == 4097)
          {
            if (a3 > 6 || ((1 << a3) & 0x5A) == 0)
            {
              goto LABEL_11;
            }

            v7 = *(v5 + 24);
            if (a3 == 3 && v7)
            {
              sub_2394170F4(6, 0, 115, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_rsa.c", 375);
LABEL_11:
              v8 = 109;
              v9 = 403;
LABEL_57:
              sub_2394170F4(6, 0, v8, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_rsa.c", v9);
              return 0;
            }

            if (a3 == 4)
            {
              if ((*(a1 + 32) & 0xC0) == 0)
              {
                goto LABEL_11;
              }
            }

            else
            {
              if (a3 != 6)
              {
LABEL_65:
                *(v5 + 16) = a3;
                return 1;
              }

              if ((*(a1 + 32) & 0x18) == 0)
              {
                goto LABEL_11;
              }
            }

            if (!v7)
            {
              *(v5 + 24) = sub_2394315BC();
            }

            goto LABEL_65;
          }

LABEL_42:
          v8 = 101;
          v9 = 512;
          goto LABEL_57;
        }

        goto LABEL_30;
      }

      if (a4 && *(v5 + 16) == 3)
      {
        v8 = 115;
        v9 = 375;
        goto LABEL_57;
      }

      goto LABEL_41;
    }

    if ((a2 - 4099) < 2)
    {
      if (*(v5 + 16) != 6)
      {
        v8 = 116;
        v9 = 420;
        goto LABEL_57;
      }

      if (a2 != 4100)
      {
        if (a3 < -2)
        {
          return 0;
        }

        *(v5 + 40) = a3;
        return 1;
      }

      v12 = *(v5 + 40);
    }

    else
    {
      if (a2 != 4098)
      {
        if (a2 != 4101)
        {
          goto LABEL_42;
        }

        if (a3 <= 255)
        {
          v8 = 112;
          v9 = 435;
          goto LABEL_57;
        }

        *v5 = a3;
        return 1;
      }

      v12 = *(v5 + 16);
    }

    *a4 = v12;
    return 1;
  }

  if (a2 <= 4104)
  {
    if ((a2 - 4103) < 2)
    {
      if (*(v5 + 16) != 4)
      {
        v8 = 115;
        v9 = 452;
        goto LABEL_57;
      }

      if (a2 == 4104)
      {
LABEL_30:
        v11 = *(v5 + 24);
LABEL_31:
        *a4 = v11;
        return 1;
      }

LABEL_41:
      *(v5 + 24) = a4;
      return 1;
    }

    if (a2 != 4102)
    {
      goto LABEL_42;
    }

    if (!a4)
    {
      return 0;
    }

    sub_239421EC8(*(v5 + 8));
    *(v5 + 8) = a4;
  }

  else
  {
    if ((a2 - 4105) < 2)
    {
      if ((*(v5 + 16) | 2) != 6)
      {
        v8 = 113;
        v9 = 477;
        goto LABEL_57;
      }

      if (a2 != 4106)
      {
        *(v5 + 32) = a4;
        return 1;
      }

      v11 = *(v5 + 32);
      if (v11)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    if (a2 == 4107)
    {
      if (*(v5 + 16) != 4)
      {
        v8 = 115;
        v9 = 493;
        goto LABEL_57;
      }

      sub_239450144(*(v5 + 56));
      *(v5 + 56) = *a4;
      *(v5 + 64) = *(a4 + 8);
    }

    else
    {
      if (a2 != 4108)
      {
        goto LABEL_42;
      }

      if (*(v5 + 16) != 4)
      {
        v8 = 115;
        v9 = 505;
        goto LABEL_57;
      }

      v10 = *(v5 + 64);
      *a4 = *(v5 + 56);
      *(a4 + 8) = v10;
    }
  }

  return 1;
}

uint64_t sub_23941D164(uint64_t *a1, void *a2)
{
  if (!sub_23941908C(a1, 6, 192))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a2 = 0;
  return result;
}

BOOL sub_23941D1E4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    return 1;
  }

  v4 = sub_239417B7C(*(a2 + 16));
  v5 = sub_23945004C(v4);
  *(a1 + 48) = v5;
  return v5 != 0;
}

uint64_t sub_23941D234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  if (!sub_239407F5C(a2, &v8, 5) || v9 || *(a2 + 8))
  {
    sub_2394170F4(6, 0, 102, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_rsa_asn1.c", 97);
  }

  else
  {
    v7 = sub_239455A74(a3);
    if (v7 && !*(a3 + 8))
    {
      sub_239417ADC(a1, &dword_284BB9C20);
      *(a1 + 8) = v7;
      return 1;
    }

    sub_2394170F4(6, 0, 102, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_rsa_asn1.c", 103);
    sub_23943F100(v7);
  }

  return 0;
}

uint64_t sub_23941D310(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  memset(v9, 0, sizeof(v9));
  memset(v8, 0, sizeof(v8));
  memset(v7, 0, sizeof(v7));
  memset(v6, 0, sizeof(v6));
  memset(v5, 0, sizeof(v5));
  if (sub_239406A10(a1, v9, 0x20000010u) && sub_239406A10(v9, v8, 0x20000010u) && sub_239406A10(v8, v7, 6u) && sub_239406C48(v7, &unk_284BB9C24, 9uLL) && sub_239406A10(v8, v6, 5u) && sub_239406A10(v9, v5, 3u) && sub_239406ACC(v5, 0) && sub_239455BC4(v5, v3) && sub_239406758(a1))
  {
    return 1;
  }

  sub_2394170F4(6, 0, 105, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_rsa_asn1.c", 82);
  return 0;
}

BOOL sub_23941D43C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = sub_2393FFBF4(v3);
  v5 = sub_2393FFBF4(v2);
  if (sub_2394229D8(v4, v5))
  {
    return 0;
  }

  v7 = sub_239412CF0(v3);
  v8 = sub_239412CF0(v2);
  return sub_2394229D8(v7, v8) == 0;
}

uint64_t sub_23941D4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  if (!sub_239407F5C(a2, &v8, 5) || v9 || *(a2 + 8))
  {
    sub_2394170F4(6, 0, 102, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_rsa_asn1.c", 144);
  }

  else
  {
    v7 = sub_239455D58(a3);
    if (v7 && !*(a3 + 8))
    {
      sub_239417ADC(a1, &dword_284BB9C20);
      *(a1 + 8) = v7;
      return 1;
    }

    sub_2394170F4(6, 0, 102, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_rsa_asn1.c", 150);
    sub_23943F100(v7);
  }

  return 0;
}

uint64_t sub_23941D598(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  memset(v9, 0, sizeof(v9));
  memset(v8, 0, sizeof(v8));
  memset(v7, 0, sizeof(v7));
  memset(v6, 0, sizeof(v6));
  memset(v5, 0, sizeof(v5));
  if (sub_239406A10(a1, v9, 0x20000010u) && sub_239406FE8(v9, 0) && sub_239406A10(v9, v8, 0x20000010u) && sub_239406A10(v8, v7, 6u) && sub_239406C48(v7, &unk_284BB9C24, 9uLL) && sub_239406A10(v8, v6, 5u) && sub_239406A10(v9, v5, 4u) && sub_239455F74(v5, v3) && sub_239406758(a1))
  {
    return 1;
  }

  sub_2394170F4(6, 0, 105, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_rsa_asn1.c", 131);
  return 0;
}

uint64_t sub_23941D708(uint64_t a1, uint64_t a2)
{
  sub_239417ADC(a1, &dword_284BB9C20);
  *(a1 + 8) = a2;
  if (!a2)
  {
    return 0;
  }

  sub_23943F7C0(a2);
  return 1;
}

BOOL sub_23941D754(uint64_t a1, uint64_t a2)
{
  sub_239417ADC(a1, &dword_284BB9C20);
  *(a1 + 8) = a2;
  return a2 != 0;
}

uint64_t sub_23941D790(uint64_t a1)
{
  if (*(a1 + 4) == 6)
  {
    return *(a1 + 8);
  }

  sub_2394170F4(6, 0, 107, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_rsa_asn1.c", 229);
  return 0;
}

uint64_t sub_23941D7DC(uint64_t a1)
{
  if (*(a1 + 4) == 6)
  {
    v1 = *(a1 + 8);
    if (v1)
    {
      sub_23943F7C0(*(a1 + 8));
    }
  }

  else
  {
    sub_2394170F4(6, 0, 107, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_rsa_asn1.c", 229);
    return 0;
  }

  return v1;
}

uint64_t sub_23941D844(uint64_t a1, uint64_t a2)
{
  v3 = sub_23945004C(0x41uLL);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_239417ADC(a2, &dword_284BB9D40);
  sub_23940E83C(v4, v4 + 32);
  v5 = 1;
  v4[64] = 1;
  sub_239450144(*(a2 + 8));
  *(a2 + 8) = v4;
  return v5;
}

uint64_t sub_23941D8B8(uint64_t a1, char *a2, void *a3)
{
  v3 = *(a1 + 16);
  if (!v3 || (v4 = *(a1 + 24)) == 0)
  {
    v9 = 117;
    v10 = 46;
    goto LABEL_10;
  }

  v6 = *(v3 + 8);
  v7 = *(v4 + 8);
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 117;
    v10 = 53;
LABEL_10:
    sub_2394170F4(6, 0, v9, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_x25519.c", v10);
    return 0;
  }

  if (!*(v6 + 64))
  {
    v9 = 130;
    v10 = 58;
    goto LABEL_10;
  }

  if (a2)
  {
    if (*a3 <= 0x1FuLL)
    {
      v9 = 100;
      v10 = 64;
      goto LABEL_10;
    }

    if (!sub_23940E9D8(a2, (v6 + 32), v7))
    {
      v9 = 134;
      v10 = 68;
      goto LABEL_10;
    }
  }

  *a3 = 32;
  return 1;
}

uint64_t sub_23941D9C8(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    return 1;
  }

  sub_2394170F4(6, 0, 101, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_x25519.c", 85);
  return 0;
}

uint64_t sub_23941DA10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 8))
  {
    sub_2394170F4(6, 0, 102, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_x25519_asn1.c", 133);
    return 0;
  }

  else
  {
    v5 = *a3;
    v6 = *(a3 + 8);

    return sub_23941DE08(a1, v5, v6);
  }
}

uint64_t sub_23941DA60(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  memset(v8, 0, sizeof(v8));
  memset(v7, 0, sizeof(v7));
  memset(v6, 0, sizeof(v6));
  memset(v5, 0, sizeof(v5));
  if (sub_239406A10(a1, v8, 0x20000010u) && sub_239406A10(v8, v7, 0x20000010u) && sub_239406A10(v7, v6, 6u) && sub_239406C48(v6, &unk_284BB9D44, 3uLL) && sub_239406A10(v8, v5, 3u) && sub_239406ACC(v5, 0) && sub_239406C48(v5, v3, 0x20uLL) && sub_239406758(a1))
  {
    return 1;
  }

  sub_2394170F4(6, 0, 105, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_x25519_asn1.c", 153);
  return 0;
}

BOOL sub_23941DB70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = *v2;
  v5 = v2[1];
  v6 = *v3;
  v7 = v3[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v3[2];
  v10 = v3[3];
  return v4 == v6 && v5 == v7 && v9 == v11 && v8 == v10;
}

uint64_t sub_23941DBA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = 0;
  if (!*(a2 + 8) && sub_239407F5C(a3, &v6, 4) && !*(a3 + 8))
  {
    return sub_23941DD78(a1, v6, v7);
  }

  sub_2394170F4(6, 0, 102, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_x25519_asn1.c", 175);
  return 0;
}

uint64_t sub_23941DC24(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(v2 + 64))
  {
    memset(v11, 0, sizeof(v11));
    memset(v10, 0, sizeof(v10));
    memset(v9, 0, sizeof(v9));
    memset(v8, 0, sizeof(v8));
    memset(v7, 0, sizeof(v7));
    if (sub_239406A10(a1, v11, 0x20000010u) && sub_239406FE8(v11, 0) && sub_239406A10(v11, v10, 0x20000010u) && sub_239406A10(v10, v9, 6u) && sub_239406C48(v9, &unk_284BB9D44, 3uLL) && sub_239406A10(v11, v8, 4u) && sub_239406A10(v8, v7, 4u) && sub_239406C48(v7, (v2 + 32), 0x20uLL) && sub_239406758(a1))
    {
      return 1;
    }

    v5 = 105;
    v6 = 202;
  }

  else
  {
    v5 = 130;
    v6 = 185;
  }

  sub_2394170F4(6, 0, v5, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_x25519_asn1.c", v6);
  return 0;
}

uint64_t sub_23941DD78(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  if (a3 != 32)
  {
    sub_2394170F4(6, 0, 102, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_x25519_asn1.c", 33);
    return 0;
  }

  v5 = sub_23945004C(0x41uLL);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = a2[1];
  *(v5 + 2) = *a2;
  *(v5 + 3) = v7;
  sub_23940E8A0(v5, (v5 + 4));
  v8 = 1;
  *(v6 + 64) = 1;
  sub_239450144(*(a1 + 8));
  *(a1 + 8) = v6;
  return v8;
}

uint64_t sub_23941DE08(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  if (a3 == 32)
  {
    result = sub_23945004C(0x41uLL);
    if (result)
    {
      v6 = result;
      v7 = a2[1];
      *result = *a2;
      *(result + 16) = v7;
      *(result + 64) = 0;
      sub_239450144(*(a1 + 8));
      *(a1 + 8) = v6;
      return 1;
    }
  }

  else
  {
    sub_2394170F4(6, 0, 102, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_x25519_asn1.c", 53);
    return 0;
  }

  return result;
}

uint64_t sub_23941DE8C(uint64_t a1, _OWORD *a2, void *a3)
{
  v3 = *(a1 + 8);
  if (!*(v3 + 64))
  {
    v4 = 130;
    v5 = 74;
    goto LABEL_6;
  }

  if (a2)
  {
    if (*a3 <= 0x1FuLL)
    {
      v4 = 100;
      v5 = 84;
LABEL_6:
      sub_2394170F4(6, 0, v4, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_x25519_asn1.c", v5);
      return 0;
    }

    v7 = *(v3 + 48);
    *a2 = *(v3 + 32);
    a2[1] = v7;
  }

  *a3 = 32;
  return 1;
}

uint64_t sub_23941DF10(uint64_t a1, _OWORD *a2, void *a3)
{
  if (a2)
  {
    if (*a3 <= 0x1FuLL)
    {
      sub_2394170F4(6, 0, 100, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_x25519_asn1.c", 102);
      return 0;
    }

    v4 = *(a1 + 8);
    v5 = v4[1];
    *a2 = *v4;
    a2[1] = v5;
  }

  *a3 = 32;
  return 1;
}

uint64_t sub_23941DF78(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = sub_239450350(v2, 0x20uLL);
    *a2 = v4;
    return 32 * (v4 != 0);
  }

  else
  {
    sub_2394170F4(6, 0, 120, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/p_x25519_asn1.c", 120);
    return 0;
  }
}

BOOL sub_23941E018(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, unint64_t a7, char *a8)
{
  v29 = *MEMORY[0x277D85DE8];
  v14 = sub_2393FFBEC(a6);
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  sub_23943AB78(v26);
  if (!sub_23943AB9C(v26, a1, a2, a6))
  {
LABEL_27:
    v23 = 0;
    goto LABEL_28;
  }

  if (a7)
  {
    v15 = 1;
    do
    {
      v16 = v14 >= a7 ? a7 : v14;
      if (!sub_23943AB9C(v26, 0, 0, 0) || !sub_23943AD64(v26) || !sub_23943AD64(v26) || !sub_23943AD88(v26, __src, 0))
      {
        goto LABEL_27;
      }

      if (v14)
      {
        memcpy(a8, __src, v16);
      }

      if (a5 >= 2)
      {
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        v18 = 1;
        while (sub_23943AB9C(v26, 0, 0, 0) && sub_23943AD64(v26) && sub_23943AD88(v26, __src, 0))
        {
          if (v14)
          {
            v19 = __src;
            v20 = a8;
            v21 = v17;
            do
            {
              v22 = *v19++;
              *v20++ ^= v22;
              --v21;
            }

            while (v21);
          }

          if (++v18 == a5)
          {
            goto LABEL_25;
          }
        }

        goto LABEL_27;
      }

LABEL_25:
      a8 += v16;
      ++v15;
      a7 -= v16;
    }

    while (a7);
  }

  v23 = a5 != 0;
LABEL_28:
  sub_23943AE54(v26);
  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

BOOL sub_23941E228(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unint64_t a6, char *a7)
{
  v14 = sub_2394315BC();

  return sub_23941E018(a1, a2, a3, a4, a5, v14, a6, a7);
}

uint64_t sub_23941E2AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2393FFBEC(a2);
  v7 = off_284BB9DF0;
  v8 = 3;
  while (*(v7 - 2) != v6)
  {
    v7 += 4;
    if (!--v8)
    {
      goto LABEL_9;
    }
  }

  v9 = *v7;
  if (!*v7)
  {
LABEL_9:
    sub_239403C00(a1, a3, 0x80u);
    sub_239404AE0(a1, "%s algorithm unsupported\n", "Public Key");
    return 1;
  }

  return (v9)(a1, a2, a3);
}

uint64_t sub_23941E37C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2393FFBEC(a2);
  v7 = &off_284BB9DF8;
  v8 = 3;
  while (*(v7 - 4) != v6)
  {
    v7 += 4;
    if (!--v8)
    {
      goto LABEL_9;
    }
  }

  v9 = *v7;
  if (!*v7)
  {
LABEL_9:
    sub_239403C00(a1, a3, 0x80u);
    sub_239404AE0(a1, "%s algorithm unsupported\n", "Private Key");
    return 1;
  }

  return (v9)(a1, a2, a3);
}

uint64_t sub_23941E44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2393FFBEC(a2);
  v7 = &dword_284BB9DE8;
  v8 = 3;
  while (*v7 != v6)
  {
    v7 += 8;
    if (!--v8)
    {
      goto LABEL_9;
    }
  }

  v9 = *(v7 + 3);
  if (!v9)
  {
LABEL_9:
    sub_239403C00(a1, a3, 0x80u);
    sub_239404AE0(a1, "%s algorithm unsupported\n", "Parameters");
    return 1;
  }

  return v9(a1, a2, a3);
}

uint64_t sub_23941E51C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = sub_23941D790(a2);

  return sub_23941E77C(a1, v5, a3, 0);
}

uint64_t sub_23941E568(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = sub_23941D790(a2);

  return sub_23941E77C(a1, v5, a3, 1);
}

uint64_t sub_23941E5B4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = sub_23941A90C(a2);

  return sub_23941EBD4(a1, v5, a3, 1);
}

uint64_t sub_23941E600(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = sub_23941A90C(a2);

  return sub_23941EBD4(a1, v5, a3, 2);
}

uint64_t sub_23941E64C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = sub_23941A90C(a2);

  return sub_23941EBD4(a1, v5, a3, 0);
}

uint64_t sub_23941E698(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = sub_23941B624(a2);

  return sub_23941ED8C(a1, v5, a3, 1);
}

uint64_t sub_23941E6E4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = sub_23941B624(a2);

  return sub_23941ED8C(a1, v5, a3, 2);
}

uint64_t sub_23941E730(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = sub_23941B624(a2);

  return sub_23941ED8C(a1, v5, a3, 0);
}

uint64_t sub_23941E77C(uint64_t a1, uint64_t ***a2, unsigned int a3, int a4)
{
  v8 = a2[1];
  if (v8)
  {
    v9 = sub_239422114(v8);
  }

  else
  {
    v9 = 0;
  }

  result = sub_239403C00(a1, a3, 0x80u);
  if (!result)
  {
    return result;
  }

  if (!a4 || !a2[3])
  {
    if (sub_239404AE0(a1, "Public-Key: (%d bit)\n", v9) >= 1)
    {
      v11 = "Modulus:";
      v12 = "Exponent:";
      goto LABEL_11;
    }

    return 0;
  }

  if (sub_239404AE0(a1, "Private-Key: (%d bit)\n", v9) < 1)
  {
    return 0;
  }

  v11 = "modulus:";
  v12 = "publicExponent:";
LABEL_11:
  result = sub_23941E938(a1, v11, a2[1], a3);
  if (result)
  {
    result = sub_23941E938(a1, v12, a2[2], a3);
    if (result)
    {
      if (!a4)
      {
        return 1;
      }

      result = sub_23941E938(a1, "privateExponent:", a2[3], a3);
      if (result)
      {
        result = sub_23941E938(a1, "prime1:", a2[4], a3);
        if (result)
        {
          result = sub_23941E938(a1, "prime2:", a2[5], a3);
          if (result)
          {
            result = sub_23941E938(a1, "exponent1:", a2[6], a3);
            if (result)
            {
              result = sub_23941E938(a1, "exponent2:", a2[7], a3);
              if (result)
              {
                result = sub_23941E938(a1, "coefficient:", a2[8], a3);
                if (result)
                {
                  return 1;
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

uint64_t sub_23941E938(uint64_t a1, const char *a2, uint64_t **a3, unsigned int a4)
{
  if (!a3)
  {
    return 1;
  }

  if (!sub_239403C00(a1, a4, 0x80u))
  {
    return 0;
  }

  if (sub_239421914(a3))
  {
    v8 = sub_239404AE0(a1, "%s 0\n");
    return v8 > 0;
  }

  v21 = 0;
  v10 = sub_23942289C(a3, &v21);
  v11 = sub_23942236C(a3);
  if (v10)
  {
    v8 = sub_239404AE0(a1, "%s %s%llu (%s0x%llx)\n");
    return v8 > 0;
  }

  v12 = " (Negative)";
  if (!v11)
  {
    v12 = "";
  }

  if (sub_239404AE0(a1, "%s%s", a2, v12) < 1)
  {
    return 0;
  }

  v13 = sub_239422178(a3);
  v14 = sub_23945004C(v13 + 1);
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  *v14 = 0;
  v16 = v14 + 1;
  sub_239422704(a3, v14 + 1);
  if (v13 && *v16 < 0)
  {
    v19 = v13 + 1;
    v17 = a1;
    v18 = v15;
  }

  else
  {
    v17 = a1;
    v18 = v16;
    v19 = v13;
  }

  v9 = sub_23941EAC4(v17, v18, v19, a4);
  sub_239450144(v15);
  return v9;
}

uint64_t sub_23941EAC4(uint64_t a1, unsigned __int8 *a2, uint64_t a3, int a4)
{
  v8 = 0;
  v9 = 0;
  while (a3)
  {
    if (!(v8 - v9 / 0xF + 16 * (v9 / 0xF)))
    {
      if (sub_239403848(a1, "\n") < 1)
      {
        return 0;
      }

      result = sub_239403C00(a1, a4 + 4, 0x80u);
      if (!result)
      {
        return result;
      }
    }

    v12 = *a2++;
    v11 = v12;
    ++v9;
    if (--a3)
    {
      v13 = ":";
    }

    else
    {
      v13 = "";
    }

    --v8;
    if (sub_239404AE0(a1, "%02x%s", v11, v13) < 1)
    {
      return 0;
    }
  }

  return sub_239403738(a1, "\n", 1) > 0;
}

uint64_t sub_23941EBD4(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  if (a4 == 2)
  {
    v8 = sub_239412CE8(a2);
LABEL_4:
    v10 = sub_239412CE0(a2);
    v9 = v8;
    goto LABEL_5;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  if (a4 >= 1)
  {
    goto LABEL_4;
  }

LABEL_5:
  if (!sub_239403C00(a1, a3, 0x80u))
  {
    return 0;
  }

  v11 = "DSA-Parameters";
  if (a4 == 1)
  {
    v11 = "Public-Key";
  }

  v12 = a4 == 2 ? "Private-Key" : v11;
  v13 = sub_2392CCA14(a2);
  v14 = sub_239422114(v13);
  if (sub_239404AE0(a1, "%s: (%u bit)\n", v12, v14) < 1)
  {
    return 0;
  }

  if (!sub_23941E938(a1, "priv:", v9, a3))
  {
    return 0;
  }

  if (!sub_23941E938(a1, "pub:", v10, a3))
  {
    return 0;
  }

  v15 = sub_2392CCA14(a2);
  if (!sub_23941E938(a1, "P:", v15, a3))
  {
    return 0;
  }

  v16 = sub_2393FFBF4(a2);
  if (!sub_23941E938(a1, "Q:", v16, a3))
  {
    return 0;
  }

  v17 = sub_239412CF0(a2);

  return sub_23941E938(a1, "G:", v17, a3);
}

uint64_t sub_23941ED8C(uint64_t a1, uint64_t *a2, unsigned int a3, int a4)
{
  if (!a2 || (v8 = sub_2392CCA14(a2)) == 0)
  {
    sub_2394170F4(6, 0, 67, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/print.c", 246);
    return 0;
  }

  v9 = v8;
  v10 = "ECDSA-Parameters";
  if (a4 == 1)
  {
    v10 = "Public-Key";
  }

  if (a4 == 2)
  {
    v11 = "Private-Key";
  }

  else
  {
    v11 = v10;
  }

  result = sub_239403C00(a1, a3, 0x80u);
  if (result)
  {
    v13 = sub_2394344C4(v9);
    if (v13)
    {
      v14 = sub_2394344D4(v13);
    }

    else
    {
      v14 = "unknown curve";
    }

    if (sub_239404AE0(a1, "%s: (%s)\n", v11, v14) < 1)
    {
      return 0;
    }

    if (a4 == 2)
    {
      v15 = sub_239412CF0(a2);
      if (v15)
      {
        result = sub_23941E938(a1, "priv:", v15, a3);
        if (!result)
        {
          return result;
        }
      }
    }

    else if (a4 < 1)
    {
      return 1;
    }

    if (sub_2393FFBF4(a2))
    {
      v19 = 0;
      v16 = sub_239403A34(a2);
      result = sub_239436AFC(a2, v16, &v19);
      if (!result)
      {
        return result;
      }

      v17 = result;
      if (sub_239403C00(a1, a3, 0x80u) && sub_239403848(a1, "pub:") >= 1)
      {
        v18 = sub_23941EAC4(a1, v19, v17, a3);
        sub_239450144(v19);
        if (v18)
        {
          return 1;
        }
      }

      else
      {
        sub_239450144(v19);
      }

      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t sub_23941EF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23945004C(0x20uLL);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v8;
  *v8 = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = 0;
  sub_239457D3C(a1);
  v10 = atomic_load((a1 + 216));
  if ((*(a1 + 220) ^ 0x7FFFFFFFuLL) < v10)
  {
    sub_2394170F4(14, 0, 69, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/ex_data.c", 152);
    sub_239457D5C(a1);
    return 0xFFFFFFFFLL;
  }

  v12 = *(a1 + 208);
  if (v12)
  {
    v13 = (v12 + 24);
  }

  else
  {
    v13 = (a1 + 200);
  }

  *v13 = v9;
  *(a1 + 208) = v9;
  atomic_store(v10 + 1, (a1 + 216));
  sub_239457D5C(a1);
  return v10 + *(a1 + 220);
}

uint64_t sub_23941F020(unint64_t **a1, unsigned int a2, uint64_t a3)
{
  if ((a2 & 0x80000000) != 0)
  {
    abort();
  }

  result = *a1;
  if (result || (result = sub_2394574D8(), (*a1 = result) != 0))
  {
    v7 = sub_239431484(result);
    v8 = a2;
    if (v7 > a2)
    {
LABEL_8:
      sub_23945754C(*a1, v8, a3);
      return 1;
    }

    else
    {
      v9 = a2 - v7 + 1;
      while (1)
      {
        result = sub_2394579D0(*a1, 0);
        if (!result)
        {
          break;
        }

        if (!--v9)
        {
          goto LABEL_8;
        }
      }
    }
  }

  return result;
}

unint64_t *sub_23941F0B0(uint64_t *a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = *a1;
  if (!v3 || sub_239431484(v3) <= a2)
  {
    return 0;
  }

  v5 = *a1;

  return sub_239457528(v5, a2);
}

void sub_23941F114(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*a3)
  {
    v5 = atomic_load((a1 + 216));
    if (v5)
    {
      v7 = 0;
      v8 = (a1 + 200);
      do
      {
        v9 = *v8;
        if ((*v8)[2])
        {
          v10 = *(a1 + 220);
          v11 = sub_23941F0B0(a3, v7 + v10);
          ((*v8)[2])(a2, v11, a3, (v7 + v10), **v8, (*v8)[1]);
          v9 = *v8;
        }

        v8 = (v9 + 3);
        ++v7;
      }

      while (v5 != v7);
    }

    sub_2393FFA58(*a3);
    *a3 = 0;
  }
}

uint64_t *sub_23941F1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(v8, 0, 512);
  sub_23941F9CC(v8, a3);
  memset(v7, 0, sizeof(v7));
  sub_23941FA40(v7, a1, 1);
  sub_23941FAEC(v8, *(a3 + 240), v7);
  return sub_23941FC78(a2, 1, v7);
}

uint64_t *sub_23941F29C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(v8, 0, 512);
  sub_23941F9CC(v8, a3);
  memset(v7, 0, sizeof(v7));
  sub_23941FA40(v7, a1, 1);
  sub_23941FD60(v8, *(a3 + 240), v7);
  return sub_23941FC78(a2, 1, v7);
}

uint64_t sub_23941F360(_OWORD *a1, int a2, uint64_t a3)
{
  if (a2 == 128 || a2 == 256 || a2 == 192)
  {
    return sub_23941F384(a1, a2, a3);
  }

  else
  {
    return 4294967294;
  }
}

uint64_t sub_23941F384(_OWORD *a1, int a2, uint64_t a3)
{
  v120 = *MEMORY[0x277D85DE8];
  switch(a2)
  {
    case 256:
      *(a3 + 240) = 14;
      *v119 = *a1;
      v74 = (v119[0] ^ (v119[0] >> 4)) & 0xF000F000F000F0;
      v75 = v119[0] ^ (16 * v74);
      v76 = v75 ^ v74;
      v77 = (v75 ^ (v76 >> 8)) & 0xFF000000FF00;
      v78 = v76 ^ (v77 << 8);
      v79 = v78 ^ v77;
      v80 = ((v79 >> 16) ^ v78) & 0xFFFF0000;
      v81 = (v119[1] ^ (v119[1] >> 4)) & 0xF000F000F000F0;
      v82 = v119[1] ^ (16 * v81);
      v83 = v82 ^ v81;
      v84 = (v82 ^ (v83 >> 8)) & 0xFF000000FF00;
      v85 = v83 ^ (v84 << 8);
      v86 = v85 ^ v84;
      v87 = ((v86 >> 16) ^ v85) & 0xFFFF0000;
      v119[0] = v80 ^ v79 | ((v87 ^ v86) << 32);
      v119[1] = (v86 & 0xFFFFFFFF00000000 ^ (v87 << 16)) & 0xFFFFFFFF00000000 | ((v79 ^ (v80 << 16)) >> 32);
      *a3 = *v119;
      v118 = a1[1];
      v88 = (v118 ^ (v118 >> 4)) & 0xF000F000F000F0;
      v89 = v118 ^ (16 * v88);
      v90 = v89 ^ v88;
      v91 = (v89 ^ (v90 >> 8)) & 0xFF000000FF00;
      v92 = v90 ^ (v91 << 8);
      v93 = v92 ^ v91;
      v94 = ((v93 >> 16) ^ v92) & 0xFFFF0000;
      v95 = (*(&v118 + 1) ^ (*(&v118 + 1) >> 4)) & 0xF000F000F000F0;
      v96 = *(&v118 + 1) ^ (16 * v95);
      v97 = v96 ^ v95;
      v98 = (v96 ^ (v97 >> 8)) & 0xFF000000FF00;
      v99 = v97 ^ (v98 << 8);
      v100 = v99 ^ v98;
      v101 = ((v100 >> 16) ^ v99) & 0xFFFF0000;
      *&v118 = v94 ^ v93 | ((v101 ^ v100) << 32);
      *(&v118 + 1) = (v100 & 0xFFFFFFFF00000000 ^ (v101 << 16)) & 0xFFFFFFFF00000000 | ((v93 ^ (v94 << 16)) >> 32);
      *(a3 + 16) = v118;
      for (i = 2; ; i += 2)
      {
        v103 = &v116;
        sub_239446CAC(&v116, &v118);
        v104 = 0;
        v105 = *(&unk_2395CB097 + (i >> 1) - 1);
        v106 = v119;
        v107 = 1;
        do
        {
          v108 = v107;
          v109 = *v106 ^ (v105 >> v104) & 0xF ^ ((*v103 >> 36) & 0xF000 | (*v103 >> 52));
          *v106 = (v109 << 16) ^ (v109 << 32) ^ (v109 << 48) ^ v109;
          v104 = 4;
          v103 = &v117;
          v106 = &v119[1];
          v107 = 0;
        }

        while ((v108 & 1) != 0);
        *(a3 + 16 * i) = *v119;
        if (i == 14)
        {
          break;
        }

        v110 = &v116;
        sub_239446CAC(&v116, v119);
        v111 = &v118;
        v112 = 1;
        do
        {
          v113 = v112;
          v114 = *(v110 + 3) ^ *v111;
          *v111 = (v114 << 16) ^ (v114 << 32) ^ (v114 << 48) ^ v114;
          v110 = &v117;
          v111 = &v118 + 1;
          v112 = 0;
        }

        while ((v113 & 1) != 0);
        *(a3 + 16 * i + 16) = v118;
      }

      break;
    case 192:
      v26 = 0;
      *(a3 + 240) = 12;
      *v119 = *a1;
      v27 = (v119[0] ^ (v119[0] >> 4)) & 0xF000F000F000F0;
      v28 = v119[0] ^ (16 * v27);
      v29 = v28 ^ v27;
      v30 = (v28 ^ (v29 >> 8)) & 0xFF000000FF00;
      v31 = v29 ^ (v30 << 8);
      v32 = v31 ^ v30;
      v33 = ((v32 >> 16) ^ v31) & 0xFFFF0000;
      v34 = (v119[1] ^ (v119[1] >> 4)) & 0xF000F000F000F0;
      v35 = v119[1] ^ (16 * v34);
      v36 = v35 ^ v34;
      v37 = (v35 ^ (v36 >> 8)) & 0xFF000000FF00;
      v38 = v36 ^ (v37 << 8);
      v39 = v38 ^ v37;
      v40 = ((v39 >> 16) ^ v38) & 0xFFFF0000;
      v119[0] = v33 ^ v32 | ((v40 ^ v39) << 32);
      v119[1] = (v39 & 0xFFFFFFFF00000000 ^ (v40 << 16)) & 0xFFFFFFFF00000000 | ((v32 ^ (v33 << 16)) >> 32);
      *a3 = *v119;
      v41 = *(a1 + 2);
      v42 = (v41 ^ (v41 >> 4)) & 0xF000F000F000F0;
      v43 = v41 ^ (16 * v42);
      v44 = v43 ^ v42;
      v45 = (v43 ^ (v44 >> 8)) & 0xFF000000FF00;
      v46 = v44 ^ (v45 << 8);
      v47 = v46 ^ v45;
      v48 = ((v47 >> 16) ^ v46) & 0xFFFF0000;
      *&v118 = v48 ^ v47;
      *(&v118 + 1) = (v47 ^ (v48 << 16)) >> 32;
      v49 = &v118;
      v50 = v119;
      do
      {
        v51 = v50;
        v52 = &v116;
        sub_239446CAC(&v116, v49);
        v53 = 0;
        v54 = *(&unk_2395CB097 + 2 * v26);
        v55 = 1;
        do
        {
          v56 = v49[v53];
          v57 = v51[v53];
          v58 = v55;
          v59 = v56 | ((v57 ^ (v54 >> (4 * v53)) & 0xF) << 32);
          v49[v53] = v59;
          v60 = v59 ^ (((*v52 >> 4) & 0xFFF0000 | (((*v52 >> 16) & 0xF) << 28)) << 16);
          v61 = v60 ^ (HIDWORD(v60) << 48);
          v49[v53] = v61;
          *(&v62 + 1) = v56;
          *&v62 = v57;
          v51[v53] = (((v62 >> 32) ^ HIWORD(v61)) << 16) ^ (((v62 >> 32) ^ HIWORD(v61)) << 32) ^ (((v62 >> 32) ^ HIWORD(v61)) << 48) ^ (v62 >> 32) ^ HIWORD(v61);
          v52 = &v117;
          v53 = 1;
          v55 = 0;
        }

        while ((v58 & 1) != 0);
        v63 = (a3 + 48 * v26);
        v63[1] = *v49;
        v63[2] = *v51;
        v64 = &v116;
        sub_239446CAC(&v116, v51);
        v65 = 0;
        v66 = *(&unk_2395CB097 + 2 * v26 + 1);
        v67 = 1;
        do
        {
          v68 = v67;
          *(&v69 + 1) = v51[v65];
          *&v69 = v49[v65];
          v70 = (v69 >> 32) ^ (v66 >> (4 * v65)) & 0xF;
          v49[v65] = v70;
          v71 = ((*v64 >> 36) & 0xF000 | (*v64 >> 52)) ^ v70;
          v72 = (v71 << 16) ^ (v71 << 32) ^ (v71 << 48) ^ v71;
          v49[v65] = v72;
          v51[v65] = ((HIWORD(v72) ^ WORD6(v69)) << 16) ^ HIWORD(v72) ^ HIDWORD(*(&v69 + 1));
          v64 = &v117;
          v65 = 1;
          v67 = 0;
        }

        while ((v68 & 1) != 0);
        v63[3] = *v49;
        ++v26;
        v50 = v49;
        v49 = v51;
      }

      while (v26 != 4);
      break;
    case 128:
      *(a3 + 240) = 10;
      *v119 = *a1;
      v4 = (v119[0] ^ (v119[0] >> 4)) & 0xF000F000F000F0;
      v5 = v119[0] ^ (16 * v4);
      v6 = v5 ^ v4;
      v7 = (v5 ^ (v6 >> 8)) & 0xFF000000FF00;
      v8 = v6 ^ (v7 << 8);
      v9 = v8 ^ v7;
      v10 = ((v9 >> 16) ^ v8) & 0xFFFF0000;
      v11 = (v119[1] ^ (v119[1] >> 4)) & 0xF000F000F000F0;
      v12 = v119[1] ^ (16 * v11);
      v13 = v12 ^ v11;
      v14 = (v12 ^ (v13 >> 8)) & 0xFF000000FF00;
      v15 = v13 ^ (v14 << 8);
      v16 = v15 ^ v14;
      v17 = ((v16 >> 16) ^ v15) & 0xFFFF0000;
      v119[0] = v10 ^ v9 | ((v17 ^ v16) << 32);
      v119[1] = (v16 & 0xFFFFFFFF00000000 ^ (v17 << 16)) & 0xFFFFFFFF00000000 | ((v9 ^ (v10 << 16)) >> 32);
      *a3 = *v119;
      v18 = 1u;
      do
      {
        v19 = &v118;
        v20 = v119;
        sub_239446CAC(&v118, v119);
        v21 = 0;
        v22 = *(&unk_2395CB097 + v18 - 1);
        v23 = 1;
        do
        {
          v24 = v23;
          v25 = *v20 ^ (v22 >> v21) & 0xF ^ ((*v19 >> 36) & 0xF000 | (*v19 >> 52));
          *v20 = (v25 << 16) ^ (v25 << 32) ^ (v25 << 48) ^ v25;
          v21 = 4;
          v19 = (&v118 + 8);
          v20 = &v119[1];
          v23 = 0;
        }

        while ((v24 & 1) != 0);
        *(a3 + 16 * v18++) = *v119;
      }

      while (v18 != 11);
      break;
    default:
      result = 1;
      goto LABEL_24;
  }

  result = 0;
LABEL_24:
  v115 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *sub_23941F9CC(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = (a1 + 32);
  do
  {
    v6 = (a2 + 16 * v4);
    v7 = v5;
    v8 = 4;
    do
    {
      v9 = v6[1];
      *(v7 - 4) = *v6;
      *v7++ = v9;
      --v8;
    }

    while (v8);
    result = sub_239446D18((a1 + (v4 << 6)));
    v5 += 8;
  }

  while (v4++ < *(a2 + 240));
  return result;
}

uint64_t *sub_23941FA40(uint64_t *result, uint64_t a2, uint64_t a3)
{
  *(result + 2) = 0u;
  *(result + 3) = 0u;
  *result = 0u;
  *(result + 1) = 0u;
  if (a3)
  {
    v3 = (a2 + 8);
    v4 = result + 4;
    do
    {
      v5 = *(v3 - 1);
      v6 = (v5 ^ (v5 >> 4)) & 0xF000F000F000F0;
      v7 = v5 ^ (16 * v6);
      v8 = v7 ^ v6;
      v9 = (v7 ^ (v8 >> 8)) & 0xFF000000FF00;
      v10 = v8 ^ (v9 << 8);
      v11 = v10 ^ v9;
      v12 = ((v11 >> 16) ^ v10) & 0xFFFF0000;
      v13 = (*v3 ^ (*v3 >> 4)) & 0xF000F000F000F0;
      v14 = *v3 ^ (16 * v13);
      v15 = v14 ^ v13;
      v16 = (v14 ^ (v15 >> 8)) & 0xFF000000FF00;
      v17 = v15 ^ (v16 << 8);
      v18 = v17 ^ v16;
      v19 = ((v18 >> 16) ^ v17) & 0xFFFF0000;
      *(v4 - 4) = v12 ^ v11 | ((v19 ^ v18) << 32);
      *v4++ = (v18 & 0xFFFFFFFF00000000 ^ (v19 << 16)) & 0xFFFFFFFF00000000 | ((v11 ^ (v12 << 16)) >> 32);
      v3 += 2;
      --a3;
    }

    while (a3);
  }

  return sub_239446D18(result);
}

uint64_t *sub_23941FAEC(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  for (i = 0; i != 8; ++i)
  {
    a3[i] ^= *(a1 + i * 8);
  }

  if (a2 >= 2)
  {
    v7 = a1 + 64;
    for (j = 1; j != a2; ++j)
    {
      sub_239446DBC(a3);
      v9 = 0;
      v10.i64[0] = 0xF000F000F000FLL;
      v10.i64[1] = 0xF000F000F000FLL;
      v11.i64[0] = 0xF000F000F000F0;
      v11.i64[1] = 0xF000F000F000F0;
      v12.i64[0] = 0xF000F000F000F00;
      v12.i64[1] = 0xF000F000F000F00;
      v13.i64[0] = 0xF000F000F000F000;
      v13.i64[1] = 0xF000F000F000F000;
      do
      {
        v14 = *&a3[v9];
        v15 = vandq_s8(v14, v10);
        v16 = vandq_s8(v14, v11);
        v17 = vandq_s8(v14, v12);
        v18 = vandq_s8(v14, v13);
        *&a3[v9] = vorrq_s8(vorrq_s8(vsraq_n_u64(vshlq_n_s64(v17, 0x20uLL), v17, 0x20uLL), v15), vorrq_s8(vsraq_n_u64(vshlq_n_s64(v18, 0x10uLL), v18, 0x30uLL), vsraq_n_u64(vshlq_n_s64(v16, 0x30uLL), v16, 0x10uLL)));
        v9 += 2;
      }

      while (v9 != 8);
      sub_239446FEC(a3);
      for (k = 0; k != 8; ++k)
      {
        a3[k] ^= *(v7 + k * 8);
      }

      v7 += 64;
    }
  }

  result = sub_239446DBC(a3);
  v21 = 0;
  v22.i64[0] = 0xF000F000F000FLL;
  v22.i64[1] = 0xF000F000F000FLL;
  v23.i64[0] = 0xF000F000F000F0;
  v23.i64[1] = 0xF000F000F000F0;
  v24.i64[0] = 0xF000F000F000F00;
  v24.i64[1] = 0xF000F000F000F00;
  v25.i64[0] = 0xF000F000F000F000;
  v25.i64[1] = 0xF000F000F000F000;
  do
  {
    v26 = *&a3[v21];
    v27 = vandq_s8(v26, v22);
    v28 = vandq_s8(v26, v23);
    v29 = vandq_s8(v26, v24);
    v30 = vandq_s8(v26, v25);
    *&a3[v21] = vorrq_s8(vorrq_s8(vsraq_n_u64(vshlq_n_s64(v29, 0x20uLL), v29, 0x20uLL), v27), vorrq_s8(vsraq_n_u64(vshlq_n_s64(v30, 0x10uLL), v30, 0x30uLL), vsraq_n_u64(vshlq_n_s64(v28, 0x30uLL), v28, 0x10uLL)));
    v21 += 2;
  }

  while (v21 != 8);
  for (m = 0; m != 8; ++m)
  {
    a3[m] ^= *(a1 + (a2 << 6) + m * 8);
  }

  return result;
}

uint64_t *sub_23941FC78(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v5 = a3[1];
  v21[0] = *a3;
  v21[1] = v5;
  v6 = a3[3];
  v22[0] = a3[2];
  v22[1] = v6;
  result = sub_239446D18(v21);
  if (a2)
  {
    v8 = (a1 + 8);
    v9 = v22;
    do
    {
      v10 = *(v9 - 4);
      v11 = *v9++;
      v12 = (v10 ^ (v11 << 16)) & 0xFFFF0000;
      v13 = (v10 | (v11 << 32)) ^ (v12 << 16);
      v14 = v13 ^ v12;
      v15 = (v13 ^ (v14 >> 8)) & 0xFF000000FF00;
      v16 = v11 & 0xFFFFFFFF00000000 | HIDWORD(v10);
      v17 = ((v11 >> 16) ^ HIDWORD(v10)) & 0xFFFF0000;
      v18 = v16 ^ (v17 << 16);
      v19 = v18 ^ v17;
      v20 = (v18 ^ (v19 >> 8)) & 0xFF000000FF00;
      *(v8 - 1) = v14 ^ (v15 << 8) ^ v15 ^ (16 * ((v14 ^ (v15 << 8) ^ ((v14 ^ (v15 << 8) ^ v15) >> 4)) & 0xF000F000F000F0)) ^ (v14 ^ (v15 << 8) ^ ((v14 ^ (v15 << 8) ^ v15) >> 4)) & 0xF000F000F000F0;
      *v8 = v19 ^ (v20 << 8) ^ v20 ^ (16 * ((v19 ^ (v20 << 8) ^ ((v19 ^ (v20 << 8) ^ v20) >> 4)) & 0xF000F000F000F0)) ^ (v19 ^ (v20 << 8) ^ ((v19 ^ (v20 << 8) ^ v20) >> 4)) & 0xF000F000F000F0;
      v8 += 2;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t *sub_23941FD60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = a1 + (a2 << 6);
  do
  {
    *(a3 + v6) ^= *(v7 + v6);
    v6 += 8;
  }

  while (v6 != 64);
  v8 = 0;
  v9.i64[0] = 0xF000F000F000FLL;
  v9.i64[1] = 0xF000F000F000FLL;
  v10.i64[0] = 0xF000F000F000F0;
  v10.i64[1] = 0xF000F000F000F0;
  v11.i64[0] = 0xF000F000F000F00;
  v11.i64[1] = 0xF000F000F000F00;
  v12.i64[0] = 0xF000F000F000F000;
  v12.i64[1] = 0xF000F000F000F000;
  do
  {
    v13 = *(a3 + v8);
    v14 = vandq_s8(v13, v9);
    v15 = vandq_s8(v13, v10);
    v16 = vandq_s8(v13, v11);
    v17 = vandq_s8(v13, v12);
    *(a3 + v8) = vorrq_s8(vorrq_s8(vsraq_n_u64(vshlq_n_s64(v16, 0x20uLL), v16, 0x20uLL), v14), vorrq_s8(vsraq_n_u64(vshlq_n_s64(v17, 0x30uLL), v17, 0x10uLL), vsraq_n_u64(vshlq_n_s64(v15, 0x10uLL), v15, 0x30uLL)));
    v8 += 16;
  }

  while (v8 != 64);
  sub_239447124(a3);
  sub_239446DBC(a3);
  result = sub_239447124(a3);
  v19 = a2 - 1;
  if (v19)
  {
    v20 = v7 - 64;
    do
    {
      for (i = 0; i != 64; i += 8)
      {
        *(a3 + i) ^= *(v20 + i);
      }

      v22 = *(a3 + 16);
      v24 = *(a3 + 32);
      v23 = *(a3 + 48);
      v25 = vextq_s8(v23, v23, 8uLL);
      v26.i64[0] = 0xFF00FF00FF00FFLL;
      v26.i64[1] = 0xFF00FF00FF00FFLL;
      v27 = veorq_s8(vbslq_s8(v26, vshrq_n_u64(v25, 8uLL), vshlq_n_s64(v25, 8uLL)), v25);
      v28 = veorq_s8(veorq_s8(veorq_s8(*a3, v22), vbslq_s8(v26, vshrq_n_u64(*a3, 8uLL), vshlq_n_s64(*a3, 8uLL))), v27);
      v29 = vdupq_lane_s64(v27.i64[0], 0);
      v30 = v27.i64[0] ^ v27.i64[1] ^ *(a3 + 8);
      *a3 ^= v27.u64[1];
      *(a3 + 8) = v30;
      v29.i64[0] = v27.i64[0] ^ v27.i64[1];
      *(a3 + 16) = v28;
      *(a3 + 32) = veorq_s8(veorq_s8(veorq_s8(vbslq_s8(v26, vshrq_n_u64(v22, 8uLL), vshlq_n_s64(v22, 8uLL)), v22), v24), v29);
      *(a3 + 48) = veorq_s8(veorq_s8(v24, v23), vbslq_s8(v26, vshrq_n_u64(v24, 8uLL), vshlq_n_s64(v24, 8uLL)));
      sub_239446FEC(a3);
      v31 = 0;
      v32.i64[0] = 0xF000F000F000FLL;
      v32.i64[1] = 0xF000F000F000FLL;
      v33.i64[0] = 0xF000F000F000F0;
      v33.i64[1] = 0xF000F000F000F0;
      v34.i64[0] = 0xF000F000F000F00;
      v34.i64[1] = 0xF000F000F000F00;
      v35.i64[0] = 0xF000F000F000F000;
      v35.i64[1] = 0xF000F000F000F000;
      do
      {
        v36 = *(a3 + v31);
        v37 = vandq_s8(v36, v32);
        v38 = vandq_s8(v36, v33);
        v39 = vandq_s8(v36, v34);
        v40 = vandq_s8(v36, v35);
        *(a3 + v31) = vorrq_s8(vorrq_s8(vsraq_n_u64(vshlq_n_s64(v39, 0x20uLL), v39, 0x20uLL), v37), vorrq_s8(vsraq_n_u64(vshlq_n_s64(v40, 0x30uLL), v40, 0x10uLL), vsraq_n_u64(vshlq_n_s64(v38, 0x10uLL), v38, 0x30uLL)));
        v31 += 16;
      }

      while (v31 != 64);
      sub_239447124(a3);
      sub_239446DBC(a3);
      result = sub_239447124(a3);
      v20 -= 64;
      --v19;
    }

    while (v19);
  }

  for (j = 0; j != 64; j += 8)
  {
    *(a3 + j) ^= *(a1 + j);
  }

  return result;
}

uint64_t *sub_23941FF90(uint64_t *result, uint64_t a2, unint64_t a3, uint64_t a4, _OWORD *a5)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v7 = a3;
    v9 = result;
    memset(v22, 0, 512);
    sub_23941F9CC(v22, a4);
    for (i = 0; i != 64; i += 16)
    {
      *&v24[i] = *a5;
    }

    for (j = bswap32(v25); ; j += 4)
    {
      v12 = j;
      for (k = 12; k != 76; k += 16)
      {
        *&v24[k] = bswap32(v12++);
      }

      v14 = v7 >= 4 ? 4 : v7;
      memset(v21, 0, sizeof(v21));
      sub_23941FA40(v21, v24, v14);
      sub_23941FAEC(v22, *(a4 + 240), v21);
      result = sub_23941FC78(v23, v14, v21);
      v15 = 0;
      v16 = v14 <= 1 ? 1 : v14;
      v17 = 16 * v16;
      do
      {
        v18 = (a2 + v15);
        v19 = *&v23[v15 + 8];
        *v18 = *&v23[v15] ^ v9[v15 / 8];
        v18[1] = v19 ^ v9[v15 / 8 + 1];
        v15 += 16;
      }

      while (v17 != v15);
      v7 -= v14;
      if (!v7)
      {
        break;
      }

      v9 += 8;
      a2 += 64;
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *sub_239420158(uint64_t *result, int8x16_t *a2, unint64_t a3, uint64_t a4, int8x16_t *a5, int a6)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a3 >= 0x10)
  {
    v10 = result;
    v11 = a3 >> 4;
    memset(v20, 0, 512);
    sub_23941F9CC(v20, a4);
    v22 = *a5;
    if (a6)
    {
      do
      {
        v12 = *v10++;
        v22 = veorq_s8(v12, v22);
        memset(v21, 0, sizeof(v21));
        sub_23941FA40(v21, &v22, 1);
        sub_23941FAEC(v20, *(a4 + 240), v21);
        result = sub_23941FC78(a2, 1, v21);
        v13 = *a2++;
        v22 = v13;
        --v11;
      }

      while (v11);
    }

    else
    {
      do
      {
        if (v11 >= 4)
        {
          v14 = 4;
        }

        else
        {
          v14 = v11;
        }

        __memcpy_chk();
        memset(v19, 0, sizeof(v19));
        sub_23941FA40(v19, v10, v14);
        sub_23941FD60(v20, *(a4 + 240), v19);
        result = sub_23941FC78(a2, v14, v19);
        *a2 = veorq_s8(v22, *a2);
        if (v11 >= 2)
        {
          v15 = v21;
          v16 = 1;
          do
          {
            v17 = *v15++;
            a2[v16] = veorq_s8(v17, a2[v16]);
            ++v16;
          }

          while (v14 != v16);
        }

        v22 = v20[v14 + 59];
        v10 += 4;
        a2 += 4;
        v11 -= v14;
      }

      while (v11);
    }

    *a5 = v22;
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_239420368(uint64_t a1, uint64_t *a2, void *a3, void *__src, size_t __len)
{
  v18 = *MEMORY[0x277D85DE8];
  result = 0xFFFFFFFFLL;
  if (__len - 16 <= 0x7FFFFFE7 && (__len & 7) == 0)
  {
    if (a2)
    {
      v9 = a2;
    }

    else
    {
      v9 = &unk_2395CAC38;
    }

    memmove(a3 + 1, __src, __len);
    v10 = 0;
    v16 = *v9;
    v11 = 1;
    do
    {
      v12 = 1;
      v13 = v11;
      v14 = __len >> 3;
      do
      {
        v17 = a3[v12];
        sub_23941F1D4(&v16, &v16, a1);
        HIBYTE(v16) ^= v13;
        BYTE6(v16) ^= BYTE1(v13);
        BYTE5(v16) ^= BYTE2(v13);
        BYTE4(v16) ^= BYTE3(v13);
        a3[v12] = v17;
        ++v13;
        ++v12;
        --v14;
      }

      while (v14);
      ++v10;
      v11 += __len >> 3;
    }

    while (v10 != 6);
    *a3 = v16;
    result = (__len + 8);
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394204C0(uint64_t a1, char *a2, char *__dst, uint64_t *a4, unint64_t a5)
{
  v5 = a5;
  v10[1] = *MEMORY[0x277D85DE8];
  if (sub_239420560(a1, __dst, v10, a4, a5))
  {
    if (a2)
    {
      v7 = a2;
    }

    else
    {
      v7 = &unk_2395CAC38;
    }

    if (sub_23945022C(v10, v7, 8))
    {
      result = 0xFFFFFFFFLL;
    }

    else
    {
      result = (v5 - 8);
    }
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_239420560(uint64_t a1, char *__dst, void *a3, uint64_t *__src, unint64_t a5)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a5 - 24 <= 0x7FFFFFE7 && (a5 & 7) == 0)
  {
    v19 = *__src;
    memmove(__dst, __src + 1, a5 - 8);
    v11 = a5 >> 3;
    v12 = 6 * (a5 >> 3) - 6;
    v13 = __dst - 16;
    v14 = 5;
    v15 = 1 - (a5 >> 3);
    do
    {
      v16 = v12;
      v17 = v11;
      do
      {
        HIBYTE(v19) ^= v16;
        BYTE6(v19) ^= BYTE1(v16);
        BYTE5(v19) ^= BYTE2(v16);
        BYTE4(v19) ^= HIBYTE(v16);
        v20 = *&v13[8 * v17];
        sub_23941F29C(&v19, &v19, a1);
        *&v13[8 * v17--] = v20;
        --v16;
      }

      while (v17 != 1);
      --v14;
      LODWORD(v12) = v12 + v15;
    }

    while (v14 < 6);
    *a3 = v19;
    result = 1;
  }

  else
  {
    result = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394206C0(uint64_t a1, void *a2, uint64_t *a3, unint64_t a4, const void *a5, size_t a6)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v6 = (a6 + 7) & 0xFFFFFFFFFFFFFFF8;
  *a3 = 0;
  if (a6 - 0x100000000 < 0xFFFFFFFF00000001 || v6 + 8 > a4)
  {
LABEL_6:
    result = 0;
    goto LABEL_13;
  }

  LODWORD(v18[0]) = -1504093786;
  HIDWORD(v18[0]) = bswap32(a6);
  if (a6 <= 8)
  {
    v18[1] = 0;
    __memcpy_chk();
    sub_23941F1D4(v18, a2, a1);
    v14 = 16;
LABEL_12:
    *a3 = v14;
    result = 1;
    goto LABEL_13;
  }

  result = sub_23945004C((a6 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (result)
  {
    v15 = result;
    *(result + v6 - 8) = 0;
    memcpy(result, a5, a6);
    v16 = sub_239420368(a1, v18, a2, v15, v6);
    sub_239450144(v15);
    if ((v16 & 0x80000000) == 0)
    {
      v14 = v16;
      goto LABEL_12;
    }

    goto LABEL_6;
  }

LABEL_13:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_239420810(uint64_t a1, char *__dst, uint64_t *a3, unint64_t a4, uint64_t *__src, unint64_t a6)
{
  v23[1] = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (a6 >= 0x10 && a6 - 8 <= a4)
  {
    if (a6 == 16)
    {
      sub_23941F29C(__src, v22, a1);
      v23[0] = v22[0];
      *__dst = v22[1];
    }

    else
    {
      result = sub_239420560(a1, __dst, v23, __src, a6);
      if (!result)
      {
        goto LABEL_18;
      }
    }

    v10 = sub_23945022C(v23, byte_2395CAC40, 4);
    v11 = 0;
    v12 = bswap32(HIDWORD(v23[0]));
    v13 = (v12 - 1) ^ (a6 - 9);
    v14 = a6 - 15;
    if (HIDWORD(v23[0]))
    {
      v15 = ((v10 - 1) & ~v10) >> 63;
    }

    else
    {
      v15 = 0;
    }

    v16 = __OFSUB__(v13, 8);
    if (v13 >= 8)
    {
      v15 = 0;
    }

    v17 = &__dst[v14];
    v18 = v14 - v12;
    v19 = 14 - a6;
    do
    {
      if ((((v18 + v11) & v19 & 0x8000000000000000) != 0) != v16)
      {
        v20 = -1;
      }

      else
      {
        v20 = (v17[v11] - 1) >> 63;
      }

      v15 &= v20;
      ++v11;
      --v19;
      v16 = __OFSUB__(v11, 7);
    }

    while (v11 != 7);
    *a3 = v15 & v12;
    result = v15 & 1;
  }

  else
  {
    result = 0;
  }

LABEL_18:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23942098C(uint64_t result, _BYTE *a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6, unsigned int *a7, uint64_t (*a8)(char *, _BYTE *, unint64_t, uint64_t, uint64_t))
{
  v12 = result;
  v13 = *a7;
  if (*a7)
  {
    v14 = a3 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = a3;
  }

  else
  {
    do
    {
      v16 = *v12++;
      *a2++ = *(a6 + v13) ^ v16;
      v15 = a3 - 1;
      v13 = (v13 + 1) & 0xF;
      if (!v13)
      {
        break;
      }

      --a3;
    }

    while (a3);
  }

  v17 = bswap32(*(a5 + 12));
  if (v15 >= 0x10)
  {
    do
    {
      v18 = v15 >> 4;
      if (v15 >> 4 >= 0x10000000)
      {
        v18 = 0x10000000;
      }

      v19 = v17 + v18;
      if (v18 <= v19)
      {
        v17 += v18;
      }

      else
      {
        v17 = 0;
      }

      if (v18 <= v19)
      {
        v19 = 0;
      }

      v20 = v18 - v19;
      result = a8(v12, a2, v18 - v19, a4, a5);
      *(a5 + 12) = bswap32(v17);
      if (!v17)
      {
        v21 = 1;
        for (i = 11; i != -1; --i)
        {
          v23 = v21 + *(a5 + i);
          *(a5 + i) = v23;
          v21 = v23 >> 8;
        }
      }

      v15 -= 16 * v20;
      a2 += 16 * v20;
      v12 += 16 * v20;
    }

    while (v15 > 0xF);
  }

  if (v15)
  {
    *a6 = 0;
    a6[1] = 0;
    result = a8(a6, a6, 1uLL, a4, a5);
    *(a5 + 12) = bswap32(v17 + 1);
    if (v17 == -1)
    {
      v24 = 1;
      for (j = 11; j != -1; --j)
      {
        v26 = v24 + *(a5 + j);
        *(a5 + j) = v26;
        v24 = v26 >> 8;
      }
    }

    do
    {
      a2[v13] = *(a6 + v13) ^ v12[v13];
      ++v13;
      --v15;
    }

    while (v15);
  }

  *a7 = v13;
  return result;
}

uint64_t sub_239420B3C(uint64_t result, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6, unsigned int *a7, uint64_t (*a8)(uint64_t, void *, uint64_t))
{
  v14 = result;
  v15 = *a7;
  if (*a7)
  {
    v16 = a3 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    v17 = a3;
  }

  else
  {
    do
    {
      v18 = *v14++;
      *a2 = *(a6 + v15) ^ v18;
      a2 = (a2 + 1);
      v17 = a3 - 1;
      v15 = (v15 + 1) & 0xF;
      if (!v15)
      {
        break;
      }

      --a3;
    }

    while (a3);
  }

  if (v17 >= 0x10)
  {
    do
    {
      result = a8(a5, a6, a4);
      v19 = 1;
      for (i = 15; i != -1; --i)
      {
        v21 = v19 + *(a5 + i);
        *(a5 + i) = v21;
        v19 = v21 >> 8;
      }

      *a2 = *a6 ^ *v14;
      a2[1] = a6[1] ^ *(v14 + 1);
      v17 -= 16;
      a2 += 2;
      v14 += 16;
    }

    while (v17 > 0xF);
    v15 = 0;
  }

  if (v17)
  {
    result = a8(a5, a6, a4);
    v22 = 1;
    for (j = 15; j != -1; --j)
    {
      v24 = v22 + *(a5 + j);
      *(a5 + j) = v24;
      v22 = v24 >> 8;
    }

    do
    {
      *(a2 + v15) = *(a6 + v15) ^ v14[v15];
      ++v15;
      --v17;
    }

    while (v17);
  }

  *a7 = v15;
  return result;
}

uint64_t *sub_239420CA4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 1)
  {
    return sub_23941F1D4(a1, a2, a3);
  }

  else
  {
    return sub_23941F29C(a1, a2, a3);
  }
}

__n128 sub_239420CB8(uint64_t a1, __n128 *a2, unint64_t a3, uint64_t a4, __n128 *a5, void (*a6)(__n128 *, __n128 *, uint64_t))
{
  if (a3)
  {
    v10 = a2;
    if (a3 < 0x10)
    {
      v17 = a5;
      i = a3;
    }

    else
    {
      v12 = 0;
      v13 = a5;
      v14 = a2;
      for (i = a3; i > 0xF; i -= 16)
      {
        v16 = &v10[v12 / 0x10];
        v16->n128_u64[0] = v13->n128_u64[0] ^ *(a1 + v12);
        v16->n128_u64[1] = v13->n128_u64[1] ^ *(a1 + v12 + 8);
        a6(&v10[v12 / 0x10], &v10[v12 / 0x10], a4);
        v13 = v14++;
        v12 += 16;
      }

      v10 = (v10 + v12);
      v17 = v10 - 1;
      if (a3 == v12)
      {
        --v10;
LABEL_15:
        result = *v10;
        *a5 = *v10;
        return result;
      }

      a1 += v12;
    }

    v18 = 0;
    do
    {
      v10->n128_u8[v18] = v17->n128_u8[v18] ^ *(a1 + v18);
      ++v18;
    }

    while (i != v18);
    if ((v18 - 1) <= 0xE)
    {
      do
      {
        v10->n128_u8[i] = v17->n128_u8[i];
        ++i;
      }

      while (i != 16);
    }

    a6(v10, v10, a4);
    goto LABEL_15;
  }

  return result;
}

unint64_t sub_239420DF8(unint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void *, void *, uint64_t))
{
  v28[3] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    goto LABEL_25;
  }

  v9 = a3;
  v10 = a2;
  v11 = result;
  v13 = result > 0x1F && result - 32 >= a2;
  if (result >= a2 && !v13)
  {
    if (a3 >= 0x10)
    {
      do
      {
        result = a6(v11, v28, a4);
        v14 = v28[1];
        v15 = *v11;
        *v10 = *a5 ^ v28[0];
        *a5 = v15;
        v16 = v11[1];
        v10[1] = a5[1] ^ v14;
        a5[1] = v16;
        v9 -= 16;
        v11 += 2;
        v10 += 2;
      }

      while (v9 > 0xF);
      if (!v9)
      {
        goto LABEL_25;
      }
    }

LABEL_20:
    result = a6(v11, v28, a4);
    v21 = 0;
    v22 = 16 - 2 * v9;
    do
    {
      v23 = *(v11 + v21);
      *(v10 + v21) = *(a5 + v21) ^ *(v28 + v21);
      *(a5 + v21++) = v23;
      ++v22;
    }

    while (v9 != v21);
    if ((v21 - 1) <= 0xE)
    {
      v24 = a5 + v9;
      v25 = v11 + v9;
      do
      {
        v26 = *v25++;
        *v24++ = v26;
        --v22;
      }

      while (v22);
    }

    goto LABEL_25;
  }

  if (a3 < 0x10)
  {
    v20 = a5;
  }

  else
  {
    v17 = a5;
    do
    {
      v18 = v11;
      result = a6(v11, v10, a4);
      v19 = v10[1];
      *v10 ^= *v17;
      v9 -= 16;
      v10[1] = v17[1] ^ v19;
      v11 += 2;
      v10 += 2;
      v17 = v18;
    }

    while (v9 > 0xF);
    v20 = v11 - 2;
  }

  *a5 = *v20;
  if (v9)
  {
    goto LABEL_20;
  }

LABEL_25:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_239420FD0(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, void *a5, unsigned int *a6)
{
  v8 = *a6;
  result = sub_239421020(a1, a2, a3, a4, a5, &v8, sub_23941F1D0);
  *a6 = v8;
  return result;
}

uint64_t sub_239421020(uint64_t result, void *a2, unint64_t a3, uint64_t a4, void *a5, unsigned int *a6, uint64_t (*a7)(void *, void *, uint64_t))
{
  v12 = result;
  v13 = *a6;
  if (*a6)
  {
    v14 = a3 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = a3;
  }

  else
  {
    do
    {
      v16 = *v12++;
      *a2 = *(a5 + v13) ^ v16;
      a2 = (a2 + 1);
      v15 = a3 - 1;
      v13 = (v13 + 1) & 0xF;
      if (!v13)
      {
        break;
      }

      --a3;
    }

    while (a3);
  }

  if (v15 >= 0x10)
  {
    do
    {
      result = a7(a5, a5, a4);
      *a2 = *a5 ^ *v12;
      a2[1] = a5[1] ^ *(v12 + 1);
      v15 -= 16;
      a2 += 2;
      v12 += 16;
    }

    while (v15 > 0xF);
    v13 = 0;
  }

  if (v15)
  {
    result = a7(a5, a5, a4);
    do
    {
      *(a2 + v13) = *(a5 + v13) ^ v12[v13];
      ++v13;
      --v15;
    }

    while (v15);
  }

  *a6 = v13;
  return result;
}

uint64_t sub_239421134(uint64_t a1, _BYTE *a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6, int a7)
{
  v9 = *a6;
  result = sub_239421184(a1, a2, a3, a4, a5, &v9, a7, sub_23941F1D0);
  *a6 = v9;
  return result;
}

uint64_t sub_239421184(uint64_t result, _BYTE *a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6, int a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t))
{
  v13 = result;
  v14 = *a6;
  if (*a6)
  {
    v15 = a3 == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = !v15;
  if (a7)
  {
    if (v16)
    {
      do
      {
        v17 = *v13++;
        v18 = *(a5 + v14);
        *(a5 + v14) = v18 ^ v17;
        *a2++ = v18 ^ v17;
        v19 = a3 - 1;
        v14 = (v14 + 1) & 0xF;
        if (!v14)
        {
          break;
        }

        --a3;
      }

      while (a3);
    }

    else
    {
      v19 = a3;
    }

    if (v19 < 0x10)
    {
      v25 = v14;
      if (!v19)
      {
        goto LABEL_41;
      }
    }

    else
    {
      do
      {
        result = a8(a5, a5, a4);
        if (v14 <= 0xF)
        {
          v22 = v14;
          do
          {
            v23 = *&v13[v22] ^ *(a5 + v22);
            *(a5 + v22) = v23;
            *&a2[v22] = v23;
            v24 = v22 >= 8;
            v22 += 8;
          }

          while (!v24);
        }

        v14 = 0;
        v25 = 0;
        v19 -= 16;
        a2 += 16;
        v13 += 16;
      }

      while (v19 > 0xF);
      if (!v19)
      {
        goto LABEL_41;
      }
    }

    result = a8(a5, a5, a4);
    do
    {
      v26 = *(a5 + v25) ^ v13[v25];
      *(a5 + v25) = v26;
      a2[v25++] = v26;
      --v19;
    }

    while (v19);
    goto LABEL_41;
  }

  if (v16)
  {
    do
    {
      v20 = *v13++;
      *a2++ = v20 ^ *(a5 + v14);
      *(a5 + v14) = v20;
      v21 = a3 - 1;
      v14 = (v14 + 1) & 0xF;
      if (!v14)
      {
        break;
      }

      --a3;
    }

    while (a3);
  }

  else
  {
    v21 = a3;
  }

  if (v21 < 0x10)
  {
    v25 = v14;
    if (!v21)
    {
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  do
  {
    result = a8(a5, a5, a4);
    if (v14 <= 0xF)
    {
      v27 = v14;
      do
      {
        v28 = *&v13[v27];
        *&a2[v27] = *(a5 + v27) ^ v28;
        *(a5 + v27) = v28;
        v24 = v27 >= 8;
        v27 += 8;
      }

      while (!v24);
    }

    v14 = 0;
    v25 = 0;
    v21 -= 16;
    a2 += 16;
    v13 += 16;
  }

  while (v21 > 0xF);
  if (v21)
  {
LABEL_39:
    result = a8(a5, a5, a4);
    do
    {
      v29 = v13[v25];
      a2[v25] = v29 ^ *(a5 + v25);
      *(a5 + v25++) = v29;
      --v21;
    }

    while (v21);
  }

LABEL_41:
  *a6 = v25;
  return result;
}

uint64_t sub_2394213B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(v4) = *(a2 + 16);
  if (v4 == *(a3 + 16))
  {
    v5 = sub_2394214EC(a1, a2, a3);
  }

  else
  {
    v6 = v4 == 0;
    if (v4)
    {
      v7 = a3;
    }

    else
    {
      v7 = a2;
    }

    if (v6)
    {
      v8 = a3;
    }

    else
    {
      v8 = a2;
    }

    if ((sub_2394228F8(*v7, *(v7 + 8), *v8, *(v8 + 8)) & 0x80000000) != 0)
    {
      if (!sub_239421484(a1, v8, v7))
      {
        return 0;
      }

      LODWORD(v4) = 1;
    }

    else
    {
      v9 = sub_239421484(a1, v7, v8);
      v4 = 0;
      if (!v9)
      {
        return v4;
      }
    }

    v5 = 1;
  }

  *(a1 + 16) = v4;
  return v5;
}

uint64_t sub_239421484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_239421BFC(a1, a2, a3);
  if (result)
  {
    v5 = *(a1 + 8);
    if (v5 < 1)
    {
      if (!v5)
      {
LABEL_8:
        *(a1 + 16) = 0;
      }
    }

    else
    {
      while (!*(*a1 - 8 + 8 * v5))
      {
        v6 = __OFSUB__(v5--, 1);
        if ((v5 < 0) ^ v6 | (v5 == 0))
        {
          *(a1 + 8) = 0;
          goto LABEL_8;
        }
      }

      *(a1 + 8) = v5;
    }

    return 1;
  }

  return result;
}

uint64_t sub_2394214EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_239421554(a1, a2, a3);
  if (result)
  {
    v5 = *(a1 + 8);
    if (v5 < 1)
    {
      if (!v5)
      {
LABEL_8:
        *(a1 + 16) = 0;
      }
    }

    else
    {
      while (!*(*a1 - 8 + 8 * v5))
      {
        v6 = __OFSUB__(v5--, 1);
        if ((v5 < 0) ^ v6 | (v5 == 0))
        {
          *(a1 + 8) = 0;
          goto LABEL_8;
        }
      }

      *(a1 + 8) = v5;
    }

    return 1;
  }

  return result;
}

uint64_t sub_239421554(void **a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8);
  v5 = *(a3 + 8);
  if (v4 >= v5)
  {
    v6 = a3;
  }

  else
  {
    v6 = a2;
  }

  if (v4 >= v5)
  {
    v7 = a2;
  }

  else
  {
    v7 = a3;
  }

  v8 = *(v7 + 8);
  v9 = *(v6 + 8);
  result = sub_239421600(a1, v8 + 1);
  if (result)
  {
    *(a1 + 2) = v8 + 1;
    v11 = sub_2394216D4(*a1, *v7, *v6, v9);
    if (v9 < v8)
    {
      do
      {
        v12 = *(*v7 + 8 * v9);
        v13 = __CFADD__(v12, v11);
        v14 = v12 + v11;
        v11 = v13;
        (*a1)[v9++] = v14;
      }

      while (v8 != v9);
    }

    (*a1)[v8] = v11;
    return 1;
  }

  return result;
}

uint64_t sub_239421600(void **a1, unint64_t a2)
{
  if (*(a1 + 3) >= a2)
  {
    return 1;
  }

  v2 = a2;
  if (a2 >= 0x800000)
  {
    v3 = 102;
    v4 = 355;
LABEL_11:
    sub_2394170F4(3, 0, v3, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/bn/bn.c", v4);
    return 0;
  }

  if ((*(a1 + 20) & 2) != 0)
  {
    v3 = 106;
    v4 = 360;
    goto LABEL_11;
  }

  result = sub_2394500F0(a2, 8uLL);
  if (result)
  {
    v7 = result;
    v8 = *(a1 + 2);
    if (v8)
    {
      memcpy(result, *a1, 8 * v8);
    }

    sub_239450144(*a1);
    *a1 = v7;
    *(a1 + 3) = v2;
    return 1;
  }

  return result;
}

uint64_t sub_2394216D4(void *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  if (a4 < 4)
  {
    v4 = 0;
    do
    {
LABEL_17:
      v23 = *a2++;
      v22 = v23;
      v24 = *a3++;
      v7 = __CFADD__(v22, v24);
      v25 = v22 + v24;
      v26 = v7;
      v7 = __CFADD__(v25, v4);
      v27 = v25 + v4;
      if (v7)
      {
        v4 = 1;
      }

      else
      {
        v4 = v26;
      }

      *a1++ = v27;
      --a4;
    }

    while (a4);
    return v4;
  }

  v4 = 0;
  do
  {
    v5 = *a2 + *a3;
    v6 = __CFADD__(*a2, *a3);
    v7 = __CFADD__(v5, v4);
    v8 = v5 + v4;
    v9 = v7 || v6;
    v7 = v9 != 0;
    *a1 = v8;
    v10 = a2[1];
    v11 = a3[1];
    v13 = v7;
    v7 = __CFADD__(v7, v10);
    v12 = v13 + v10;
    v7 |= __CFADD__(v11, v12);
    a1[1] = v11 + v12;
    v14 = a2[2];
    v15 = a3[2];
    v17 = v7;
    v7 = __CFADD__(v7, v14);
    v16 = v17 + v14;
    v7 |= __CFADD__(v15, v16);
    a1[2] = v15 + v16;
    v18 = a2[3];
    v19 = a3[3];
    v21 = v7 + v18;
    v7 = __CFADD__(v7, v18) | __CFADD__(v19, v21);
    v20 = v19 + v21;
    v4 = v7;
    a1[3] = v20;
    a2 += 4;
    a3 += 4;
    a1 += 4;
    a4 -= 4;
  }

  while (a4 >= 4);
  if (a4)
  {
    goto LABEL_17;
  }

  return v4;
}

uint64_t sub_239421790(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 < 1)
  {
    if (!v1)
    {
LABEL_7:
      *(result + 16) = 0;
    }
  }

  else
  {
    while (!*(*result - 8 + 8 * v1))
    {
      v2 = __OFSUB__(v1--, 1);
      if ((v1 < 0) ^ v2 | (v1 == 0))
      {
        *(result + 8) = 0;
        goto LABEL_7;
      }
    }

    *(result + 8) = v1;
  }

  return result;
}

uint64_t sub_2394217D4(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = a2;
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = 0;
  v6 = *a1;
  do
  {
    v7 = *v6++;
    v5 |= v7;
    --v4;
  }

  while (v4);
  if (!v5)
  {
LABEL_12:
    v8 = 1;
    if (sub_239421600(a1, 1uLL))
    {
      *(a1 + 16) = 0;
      **a1 = v2;
      *(a1 + 8) = 1;
      return v8;
    }

    return 0;
  }

  if (!*(a1 + 16))
  {
    v13 = 0;
    while (1)
    {
      v14 = *(a1 + 8);
      if (v13 >= v14)
      {
        break;
      }

      v15 = *(*a1 + 8 * v13);
      v16 = __CFADD__(v15, v2);
      *(*a1 + 8 * v13++) = v15 + v2;
      v2 = 1;
      if (!v16)
      {
        return 1;
      }
    }

    if (v13 != v14)
    {
      return 1;
    }

    if (sub_239421600(a1, v14 + 1))
    {
      ++*(a1 + 8);
      *(*a1 + 8 * v14) = v2;
      return 1;
    }

    return 0;
  }

  *(a1 + 16) = 0;
  v8 = sub_2394219A4(a1, a2);
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = 0;
    v11 = *a1;
    do
    {
      v12 = *v11++;
      v10 |= v12;
      --v9;
    }

    while (v9);
    if (v10)
    {
      *(a1 + 16) = *(a1 + 16) == 0;
    }
  }

  return v8;
}

BOOL sub_239421914(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 1;
  }

  v2 = 0;
  v3 = *a1;
  do
  {
    v4 = *v3++;
    v2 |= v4;
    --v1;
  }

  while (v1);
  return v2 == 0;
}

uint64_t sub_239421948(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    result = sub_239421600(a1, 1uLL);
    if (!result)
    {
      return result;
    }

    *(a1 + 16) = 0;
    **a1 = a2;
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *(a1 + 16) = 0;
  }

  *(a1 + 8) = v5;
  return 1;
}

uint64_t sub_2394219A4(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = a2;
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = 0;
  v6 = 0;
  v7 = *a1;
  do
  {
    v6 |= v7[v5++];
  }

  while (v4 != v5);
  if (!v6)
  {
LABEL_8:
    v9 = 1;
    if (!sub_239421600(a1, 1uLL))
    {
      return 0;
    }

    *(a1 + 16) = 0;
    **a1 = v2;
    *(a1 + 8) = 1;
    *(a1 + 16) = **a1 != 0;
    return v9;
  }

  if (*(a1 + 16))
  {
    *(a1 + 16) = 0;
    result = sub_2394217D4(a1, a2);
    *(a1 + 16) = 1;
    return result;
  }

  if (v4 < 1)
  {
    goto LABEL_19;
  }

  while (!v7[v4 - 1])
  {
    v10 = __OFSUB__(v4--, 1);
    if ((v4 < 0) ^ v10 | (v4 == 0))
    {
      goto LABEL_19;
    }
  }

  if (v4 != 1 || a2 <= *v7)
  {
LABEL_19:
    v11 = *v7;
    v12 = *v7 - a2;
    if (*v7 >= a2)
    {
      v15 = 0;
      v13 = 0;
    }

    else
    {
      v13 = 0;
      v14 = 8;
      do
      {
        *v7 = v12;
        ++v13;
        v7 = (*a1 + v14);
        v11 = *v7;
        v14 += 8;
        v12 = -1;
      }

      while (!*v7);
      v7 = (*a1 + v14 - 8);
      v2 = 1;
      v15 = v13;
    }

    *v7 = v11 - v2;
    if (!*(*a1 + 8 * v13) && v15 == *(a1 + 8) - 1)
    {
      *(a1 + 8) = v15;
    }

    return 1;
  }

  *v7 = a2 - *v7;
  v9 = 1;
  *(a1 + 16) = 1;
  return v9;
}

uint64_t sub_239421B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a3 + 16);
  if (*(a2 + 16))
  {
    if (v5)
    {
      v6 = a2;
      goto LABEL_10;
    }

    v7 = 1;
LABEL_7:
    result = sub_2394214EC(a1, a2, a3);
    if (!result)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (v5)
  {
    v7 = 0;
    goto LABEL_7;
  }

  v6 = a3;
  v3 = a2;
LABEL_10:
  if ((sub_2394228F8(*v3, *(v3 + 8), *v6, *(v6 + 8)) & 0x80000000) != 0)
  {
    result = sub_239421484(a1, v6, v3);
    if (!result)
    {
      return result;
    }

    v7 = 1;
    goto LABEL_15;
  }

  v9 = sub_239421484(a1, v3, v6);
  v7 = 0;
  result = 0;
  if (v9)
  {
LABEL_15:
    *(a1 + 16) = v7;
    return 1;
  }

  return result;
}

uint64_t sub_239421BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  v7 = *(a2 + 8);
  v8 = v6;
  if (v6 > v7)
  {
    if (v6 > v7)
    {
      v9 = 0;
      v10 = v6 - v7;
      v11 = (*a3 + 8 * v7);
      do
      {
        v12 = *v11++;
        v9 |= v12;
        --v10;
      }

      while (v10);
      v8 = *(a2 + 8);
      if (v9)
      {
        v13 = 229;
LABEL_16:
        sub_2394170F4(3, 0, 100, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/bn/add.c", v13);
        return 0;
      }
    }

    else
    {
      v8 = *(a2 + 8);
    }
  }

  result = sub_239421600(a1, v7);
  if (!result)
  {
    return result;
  }

  v15 = v8;
  v16 = sub_239421D64(*a1, *a2, *a3, v8);
  LODWORD(v17) = *(a2 + 8);
  if (v8 < v17)
  {
    do
    {
      v18 = *(*a2 + 8 * v15);
      v19 = v18 >= v16;
      v20 = v18 - v16;
      v16 = !v19;
      *(*a1 + 8 * v15++) = v20;
      v17 = *(a2 + 8);
    }

    while (v15 < v17);
  }

  if (v16)
  {
    v13 = 245;
    goto LABEL_16;
  }

  *(a1 + 8) = v17;
  *(a1 + 16) = 0;
  return 1;
}

BOOL sub_239421D28(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = v2 > a2;
  v4 = v2 - a2;
  if (!v3)
  {
    return 1;
  }

  v5 = 0;
  v6 = (*a1 + 8 * a2);
  do
  {
    v7 = *v6++;
    v5 |= v7;
    --v4;
  }

  while (v4);
  return v5 == 0;
}

unint64_t sub_239421D64(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  if (a4 < 4)
  {
    v4 = 0;
    do
    {
LABEL_14:
      v20 = *a2++;
      v19 = v20;
      v21 = *a3++;
      v6 = v19 >= v21;
      v22 = v19 - v21;
      v23 = !v6;
      v6 = v22 >= v4;
      v24 = v22 - v4;
      if (v6)
      {
        v4 = v23;
      }

      else
      {
        v4 = 1;
      }

      *a1++ = v24;
      --a4;
    }

    while (a4);
    return v4;
  }

  v4 = 0;
  do
  {
    v5 = *a2 - *a3;
    v6 = v5 >= v4;
    v7 = v5 - v4;
    v8 = !v6 || *a2 < *a3;
    v6 = !v8;
    *a1 = v7;
    v9 = a2[1];
    v10 = a3[1];
    v11 = v6;
    v6 = __CFSUB__(v9, v10, v6);
    a1[1] = v9 - (v10 + !v11);
    v12 = a2[2];
    v13 = a3[2];
    v14 = v6;
    v6 = __CFSUB__(v12, v13, v6);
    a1[2] = v12 - (v13 + !v14);
    v15 = a2[3];
    v16 = a3[3];
    v18 = v6;
    v6 = __CFSUB__(v15, v16, v6);
    v17 = v15 - (v16 + !v18);
    v4 = !v6;
    a1[3] = v17;
    a2 += 4;
    a3 += 4;
    a1 += 4;
    a4 -= 4;
  }

  while (a4 >= 4);
  if (a4)
  {
    goto LABEL_14;
  }

  return v4;
}

uint64_t sub_239421E20(uint64_t result, int a2)
{
  if (!a2)
  {
    goto LABEL_7;
  }

  v2 = *(result + 8);
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = 0;
  v4 = *result;
  do
  {
    v5 = *v4++;
    v3 |= v5;
    --v2;
  }

  while (v2);
  if (v3)
  {
    v6 = 1;
  }

  else
  {
LABEL_7:
    v6 = 0;
  }

  *(result + 16) = v6;
  return result;
}

uint64_t sub_239421E5C(uint64_t a1)
{
  result = *(a1 + 8);
  if (result >= 1)
  {
    v3 = *a1 - 8;
    while (!*(v3 + 8 * result))
    {
      v4 = __OFSUB__(result, 1);
      result = (result - 1);
      if ((result < 0) ^ v4 | (result == 0))
      {
        return 0;
      }
    }
  }

  return result;
}

void *sub_239421E8C()
{
  result = sub_23945004C(0x18uLL);
  if (result)
  {
    result[1] = 0;
    result[2] = 0;
    *result = 0;
    *(result + 5) = 1;
  }

  return result;
}

void *sub_239421EBC(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void sub_239421EC8(void **a1)
{
  if (a1)
  {
    v2 = *(a1 + 5);
    if ((v2 & 2) == 0)
    {
      sub_239450144(*a1);
      v2 = *(a1 + 5);
    }

    if (v2)
    {

      sub_239450144(a1);
    }

    else
    {
      *a1 = 0;
    }
  }
}

void **sub_239421F2C(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = sub_23945004C(0x18uLL);
  v3 = v2;
  if (v2)
  {
    v2[1] = 0;
    v2[2] = 0;
    *v2 = 0;
    *(v2 + 5) = 1;
    if (!sub_239421F90(v2, a1))
    {
      sub_239421EC8(v3);
      return 0;
    }
  }

  return v3;
}

void **sub_239421F90(void **a1, uint64_t a2)
{
  v2 = a1;
  if (a2 != a1)
  {
    if (sub_239421600(a1, *(a2 + 8)))
    {
      v4 = *(a2 + 8);
      if (v4)
      {
        memcpy(*v2, *a2, 8 * v4);
        LODWORD(v4) = *(a2 + 8);
      }

      *(v2 + 2) = v4;
      *(v2 + 4) = *(a2 + 16);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void sub_239422000(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 12);
    if (v3)
    {
      bzero(v2, 8 * v3);
    }
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

double sub_239422078()
{
  qword_27DF777F0 = &unk_2395CB0A8;
  *&result = 0x100000001;
  unk_27DF777F8 = xmmword_2395CA8A0;
  return result;
}

uint64_t sub_23942209C(unint64_t a1)
{
  v1 = HIDWORD(a1);
  if (!HIDWORD(a1))
  {
    v1 = a1;
  }

  v2 = (a1 != 0) | (32 * (HIDWORD(a1) != 0)) | (16 * (v1 >> 16 != 0));
  if (v1 >> 16)
  {
    v1 >>= 16;
  }

  v3 = v2 | (8 * (v1 > 0xFF));
  if (v1 > 0xFF)
  {
    v1 >>= 8;
  }

  v4 = v3 | (4 * (v1 > 0xF));
  if (v1 > 0xF)
  {
    v1 >>= 4;
  }

  v5 = v4 | (2 * (v1 > 3));
  if (v1 > 3)
  {
    v1 >>= 2;
  }

  if (v1 <= 1)
  {
    return v5;
  }

  else
  {
    return v5 + 1;
  }
}

uint64_t sub_239422114(uint64_t *a1)
{
  v1 = *(a1 + 2);
  if (v1 >= 1)
  {
    v2 = *a1;
    while (!*(*a1 - 8 + 8 * v1))
    {
      v3 = __OFSUB__(v1--, 1);
      if ((v1 < 0) ^ v3 | (v1 == 0))
      {
        return 0;
      }
    }

    return sub_23942209C(*(v2 + 8 * (v1 - 1))) + ((v1 - 1) << 6);
  }

  if (v1)
  {
    v2 = *a1;
    return sub_23942209C(*(v2 + 8 * (v1 - 1))) + ((v1 - 1) << 6);
  }

  return 0;
}

uint64_t sub_239422198(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_2394221A4(uint64_t a1)
{
  v2 = 1;
  if (!sub_239421600(a1, 1uLL))
  {
    return 0;
  }

  *(a1 + 16) = 0;
  **a1 = 1;
  *(a1 + 8) = 1;
  return v2;
}

uint64_t sub_2394221F0(uint64_t a1, const void *a2, unint64_t a3)
{
  result = sub_239421600(a1, a3);
  if (result)
  {
    if (8 * a3)
    {
      memmove(*a1, a2, 8 * a3);
    }

    *(a1 + 8) = a3;
    *(a1 + 16) = 0;
    return 1;
  }

  return result;
}

void sub_23942224C(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 20);
  if ((v6 & 2) == 0)
  {
    sub_239450144(*a1);
    v6 = *(a1 + 20);
  }

  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0;
  *(a1 + 20) = v6 | 2;
}

uint64_t sub_2394222A0(void *__dst, unint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v3 = 109;
    v4 = 317;
LABEL_3:
    sub_2394170F4(3, 0, v3, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/bn/bn.c", v4);
    return 0;
  }

  v8 = *(a3 + 8);
  v9 = v8 - a2;
  if (v8 > a2)
  {
    v10 = 0;
    v11 = (*a3 + 8 * a2);
    do
    {
      v12 = *v11++;
      v10 |= v12;
      --v9;
    }

    while (v9);
    v8 = a2;
    if (v10)
    {
      v3 = 102;
      v4 = 324;
      goto LABEL_3;
    }
  }

  v13 = 8 * a2;
  if (v13)
  {
    bzero(__dst, v13);
  }

  if (8 * v8)
  {
    memcpy(__dst, *a3, 8 * v8);
  }

  return 1;
}

uint64_t sub_23942237C(void **a1, unint64_t a2)
{
  if (a2 < 0xFFFFFFFFFFFFFFC1)
  {
    v4 = (a2 + 63) >> 6;

    return sub_239421600(a1, v4);
  }

  else
  {
    sub_2394170F4(3, 0, 102, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/bn/bn.c", 380);
    return 0;
  }
}

uint64_t sub_2394223D0(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = v4 > a2;
  v6 = v4 - a2;
  if (v5)
  {
    v7 = 0;
    v8 = (*a1 + 8 * a2);
    do
    {
      v9 = *v8++;
      v7 |= v9;
      --v6;
    }

    while (v6);
    if (v7)
    {
      sub_2394170F4(3, 0, 102, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/bn/bn.c", 399);
      return 0;
    }

    goto LABEL_10;
  }

  result = sub_239421600(a1, a2);
  if (result)
  {
    v11 = *(a1 + 8);
    v12 = 8 * (a2 - v11);
    if (v12)
    {
      bzero((*a1 + 8 * v11), v12);
    }

LABEL_10:
    *(a1 + 8) = a2;
    return 1;
  }

  return result;
}

uint64_t *sub_239422478(uint64_t *result, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v6 = *a3++;
    v5 = v6;
    v7 = *a4++;
    *result++ = a2 & v5 | v7 & ~a2;
  }

  return result;
}

void sub_2394224A4(unint64_t *a1, uint64_t a2, unsigned __int8 *a3, unint64_t a4)
{
  if (a4 > 8 * a2)
  {
    abort();
  }

  if (a4 < 8)
  {
    v4 = a4;
    if (!a4)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  do
  {
    v4 = a4 - 8;
    *a1++ = bswap64(*&a3[a4 - 8]);
    --a2;
    a4 = v4;
  }

  while (v4 > 7);
  if (v4)
  {
LABEL_7:
    v5 = 0;
    do
    {
      v6 = *a3++;
      v5 = v6 | (v5 << 8);
      --v4;
    }

    while (v4);
    *a1++ = v5;
    --a2;
  }

LABEL_10:
  v7 = 8 * a2;
  if (v7)
  {

    bzero(a1, v7);
  }
}

void *sub_23942253C(unsigned __int8 *a1, unint64_t a2, void *a3)
{
  if (a3)
  {
    v5 = a3;
    v6 = 0;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 2) = 0;
    return v5;
  }

  v8 = sub_23945004C(0x18uLL);
  v5 = v8;
  if (!v8)
  {
    return v5;
  }

  v8[1] = 0;
  v8[2] = 0;
  *v8 = 0;
  *(v8 + 5) = 1;
  v6 = v8;
  if (!a2)
  {
    goto LABEL_7;
  }

LABEL_3:
  v7 = ((a2 - 1) >> 3) + 1;
  if (sub_239421600(v5, v7))
  {
    *(v5 + 2) = v7;
    *(v5 + 4) = 0;
    sub_2394224A4(*v5, v7, a1, a2);
  }

  else
  {
    sub_239421EC8(v6);
    return 0;
  }

  return v5;
}

void *sub_2394225FC(const void *a1, size_t a2, void *a3)
{
  if (a3)
  {
    v5 = a3;
    v6 = 0;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 2) = 0;
    *(v5 + 4) = 0;
    return v5;
  }

  v8 = sub_23945004C(0x18uLL);
  v5 = v8;
  if (!v8)
  {
    return v5;
  }

  v8[1] = 0;
  v8[2] = 0;
  *v8 = 0;
  *(v8 + 5) = 1;
  v6 = v8;
  if (!a2)
  {
    goto LABEL_7;
  }

LABEL_3:
  v7 = (a2 - 1) >> 3;
  if (sub_239421600(v5, v7 + 1))
  {
    *(v5 + 2) = v7 + 1;
    *(*v5 + 8 * v7) = 0;
    memcpy(*v5, a1, a2);
  }

  else
  {
    sub_239421EC8(v6);
    return 0;
  }

  return v5;
}

void sub_2394226C4(char *a1, unint64_t a2, char *a3, uint64_t a4)
{
  if (8 * a4 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = 8 * a4;
  }

  if (v4)
  {
    v5 = &a1[a2 - 1];
    v6 = v4;
    do
    {
      v7 = *a3++;
      *v5-- = v7;
      --v6;
    }

    while (v6);
  }

  if (8 * a4 < a2)
  {
    bzero(a1, a2 - v4);
  }
}

unint64_t sub_239422704(uint64_t a1, char *a2)
{
  v4 = (sub_239422114(a1) + 7) >> 3;
  sub_2394226C4(a2, v4, *a1, *(a1 + 8));
  return v4;
}

uint64_t sub_239422754(char *__dst, size_t a2, char **a3)
{
  v5 = *a3;
  v6 = 8 * *(a3 + 2);
  if (a2 < v6)
  {
    v7 = 0;
    v8 = a2 - v6;
    v9 = &v5[a2];
    do
    {
      v10 = *v9++;
      v7 |= v10;
    }

    while (!__CFADD__(v8++, 1));
    if (v7)
    {
      return 0;
    }
  }

  if (v6 >= a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = 8 * *(a3 + 2);
  }

  if (v13)
  {
    memcpy(__dst, v5, v13);
  }

  if (v6 < a2)
  {
    bzero(&__dst[v13], a2 - v13);
  }

  return 1;
}

uint64_t sub_2394227EC(char *a1, unint64_t a2, uint64_t a3)
{
  v4 = *a3;
  v5 = *(a3 + 8);
  if (a2 < 8 * v5)
  {
    v6 = 0;
    v7 = a2 - 8 * v5;
    v8 = &v4[a2];
    do
    {
      v9 = *v8++;
      v6 |= v9;
    }

    while (!__CFADD__(v7++, 1));
    if (v6)
    {
      return 0;
    }
  }

  sub_2394226C4(a1, a2, v4, v5);
  return 1;
}

uint64_t sub_239422848(_DWORD *a1)
{
  v1 = a1[2];
  if (v1 >= 1)
  {
    while (!*(*a1 - 8 + 8 * v1))
    {
      v2 = __OFSUB__(v1--, 1);
      if ((v1 < 0) ^ v2 | (v1 == 0))
      {
        return 0;
      }
    }
  }

  if (!v1)
  {
    return 0;
  }

  if (v1 == 1)
  {
    return **a1;
  }

  return -1;
}

uint64_t sub_23942289C(uint64_t **a1, void *a2)
{
  v2 = *(a1 + 2);
  if (v2 >= 1)
  {
    while (!(*a1)[v2 - 1])
    {
      v3 = __OFSUB__(v2--, 1);
      if ((v2 < 0) ^ v3 | (v2 == 0))
      {
        v4 = 0;
        goto LABEL_10;
      }
    }
  }

  if (!v2)
  {
    v4 = 0;
    goto LABEL_10;
  }

  if (v2 == 1)
  {
    v4 = **a1;
LABEL_10:
    *a2 = v4;
    return 1;
  }

  return 0;
}

uint64_t sub_2394228F8(uint64_t *a1, unint64_t a2, uint64_t *a3, unint64_t a4)
{
  if (a2 >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a2;
  }

  if (v5)
  {
    result = 0;
    v7 = a1;
    v8 = a3;
    do
    {
      v10 = *v7++;
      v9 = v10;
      v11 = *v8++;
      v12 = (((v11 ^ v9) - 1) & ~(v11 ^ v9)) >> 63;
      result = v12 & result | (((((v9 - v11) ^ v9 | v11 ^ v9) ^ v9) >> 63) | 1) & ~v12;
      --v5;
    }

    while (v5);
  }

  else
  {
    result = 0;
  }

  v13 = a2 - a4;
  if (a2 >= a4)
  {
    if (a4 < a2)
    {
      v18 = 0;
      v19 = &a1[a4];
      do
      {
        v20 = *v19++;
        v18 |= v20;
        --v13;
      }

      while (v13);
      return (((((v18 - 1) & ~v18) >> 63) & 1) == 0) | (((v18 - 1) & ~v18) >> 63) & result;
    }
  }

  else
  {
    v14 = 0;
    v15 = a4 - a2;
    v16 = &a3[a2];
    do
    {
      v17 = *v16++;
      v14 |= v17;
      --v15;
    }

    while (v15);
    return result | ~(((v14 - 1) & ~v14) >> 63);
  }

  return result;
}

uint64_t sub_2394229D8(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    v2 = *(a1 + 16);
    if (v2 == *(a2 + 16))
    {
      LODWORD(result) = sub_2394228F8(*a1, *(a1 + 8), *a2, *(a2 + 8));
      if (v2)
      {
        return -result;
      }

      else
      {
        return result;
      }
    }

    else if (v2)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  else if (a1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return a2 != 0;
  }
}

BOOL sub_239422A80(unsigned int *a1, uint64_t a2)
{
  v2 = a1[2];
  if (v2)
  {
    a2 ^= **a1;
    if (v2 >= 2)
    {
      v3 = (*a1 + 8);
      v4 = v2 - 1;
      do
      {
        v5 = *v3++;
        a2 |= v5;
        --v4;
      }

      while (v4);
    }
  }

  return a2 == 0;
}

uint64_t sub_239422AC0(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v6 = 0x200000000;
  v3 = &v7;
  v4 = a2 != 0;
  v5 = 1;
  return sub_2394229D8(a1, &v3);
}

BOOL sub_239422B0C(unsigned int *a1)
{
  if (a1[4])
  {
    return 0;
  }

  v2 = a1[2];
  if (v2)
  {
    v3 = **a1 ^ 1;
    if (v2 >= 2)
    {
      v4 = v2 - 1;
      v5 = (*a1 + 8);
      do
      {
        v6 = *v5++;
        v3 |= v6;
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    v3 = 1;
  }

  return v3 == 0;
}

BOOL sub_239422B64(unsigned int *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a2;
  if (v2)
  {
    v3 = **a1 ^ a2;
    if (v2 >= 2)
    {
      v4 = v2 - 1;
      v5 = (*a1 + 8);
      do
      {
        v6 = *v5++;
        v3 |= v6;
        --v4;
      }

      while (v4);
    }
  }

  if (v3)
  {
    return 0;
  }

  if (a2)
  {
    return a1[4] == 0;
  }

  return 1;
}

uint64_t sub_239422BC4(uint64_t a1)
{
  if (*(a1 + 8) < 1)
  {
    return 0;
  }

  else
  {
    return **a1 & 1;
  }
}

BOOL sub_239422BE8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    if (!v1)
    {
      return 0;
    }
  }

  else
  {
    while (!*(*a1 - 8 + 8 * v1))
    {
      v2 = __OFSUB__(v1--, 1);
      if ((v1 < 0) ^ v2 | (v1 == 0))
      {
        return 0;
      }
    }
  }

  if (*(a1 + 16))
  {
    return 0;
  }

  v4 = v1 - 1;
  if (v1 >= 2)
  {
    v5 = (v1 - 1);
    v6 = *a1;
    do
    {
      if (*v6++)
      {
        return 0;
      }
    }

    while (--v5);
  }

  v8 = *(*a1 + 8 * v4);
  return (v8 & (v8 - 1)) == 0;
}

BOOL sub_239422C60(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 >= v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = (*a2 + 8 * v2);
    v6 = v3 - v2;
    do
    {
      v7 = *v5++;
      v4 |= v7;
      --v6;
    }

    while (v6);
  }

  if (v3 < v2)
  {
    v8 = (*a1 + 8 * v3);
    v9 = v2 - v3;
    do
    {
      v10 = *v8++;
      v4 |= v10;
      --v9;
    }

    while (v9);
  }

  if (v2 >= v3)
  {
    v2 = v3;
  }

  else
  {
    v2 = v2;
  }

  if (v2 >= 1)
  {
    v11 = *a1;
    v12 = *a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      v4 |= v15 ^ v13;
      --v2;
    }

    while (v2);
  }

  return (v4 | *(a2 + 16) ^ *(a1 + 16)) == 0;
}

double sub_239422D0C()
{
  v0 = sub_23945004C(0x30uLL);
  if (v0)
  {
    result = 0.0;
    *(v0 + 26) = 0u;
    *v0 = 0u;
    v0[1] = 0u;
  }

  return result;
}

void sub_239422D38(unint64_t **a1)
{
  if (a1)
  {
    sub_239457574(*a1, sub_23944717C, sub_239421EC8);
    sub_239450144(a1[1]);

    sub_239450144(a1);
  }
}

void *sub_239422DA4(void *result)
{
  if (!*(result + 40))
  {
    v1 = result;
    v2 = result[4];
    v3 = result[2];
    if (v3 != result[3])
    {
      result = result[1];
      goto LABEL_14;
    }

    if (v3)
    {
      v4 = (3 * v3) >> 1;
    }

    else
    {
      v4 = 32;
    }

    if (v4 > v3 && v4 >> 61 == 0)
    {
      result = sub_2394501A0(result[1], 8 * v4);
      if (result)
      {
        v1[1] = result;
        v1[3] = v4;
        v3 = v1[2];
LABEL_14:
        result[v3] = v2;
        ++v1[2];
        return result;
      }
    }

    *(v1 + 20) = 257;
  }

  return result;
}

unint64_t *sub_239422E50(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if (*(a1 + 41))
    {
      sub_2394170F4(3, 0, 116, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/bn/ctx.c", 155);
      result = 0;
      *(a1 + 41) = 0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = *a1;
    if (*a1 || (result = sub_2394574D8(), (*a1 = result) != 0))
    {
      v3 = *(a1 + 32);
      if (v3 != sub_239431484(result) || (v4 = sub_23945004C(0x18uLL), (v5 = v4) != 0) && (v4[1] = 0, v4[2] = 0, *v4 = 0, *(v4 + 5) = 1, sub_2394579D0(*a1, v4)))
      {
        result = sub_239457528(*a1, *(a1 + 32));
        *(result + 4) = 0;
        *(result + 2) = 0;
        ++*(a1 + 32);
        return result;
      }

      sub_2394170F4(3, 0, 116, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/bn/ctx.c", 172);
      sub_239421EC8(v5);
      result = 0;
    }

    *(a1 + 40) = 1;
  }

  return result;
}

uint64_t sub_239422F58(uint64_t result)
{
  if (!*(result + 40))
  {
    v1 = *(result + 8);
    v2 = *(result + 16) - 1;
    *(result + 16) = v2;
    *(result + 32) = *(v1 + 8 * v2);
  }

  return result;
}

uint64_t sub_239422F7C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a3 + 8);
  if (v9 >= 1)
  {
    while (!*(*a3 - 8 + 8 * v9))
    {
      v10 = __OFSUB__(v9--, 1);
      if ((v9 < 0) ^ v10 | (v9 == 0))
      {
        v9 = 0;
        break;
      }
    }
  }

  LODWORD(v11) = *(a4 + 8);
  v12 = v11;
  if (v11 >= 1)
  {
    v12 = *(a4 + 8);
    while (!*(*a4 - 8 + 8 * v12))
    {
      v10 = __OFSUB__(v12--, 1);
      if ((v12 < 0) ^ v10 | (v12 == 0))
      {
        v12 = 0;
        break;
      }
    }
  }

  if (v9 >= 1 && !*(*a3 + 8 * v9 - 8) || v12 >= 1 && !*(*a4 + 8 * v12 - 8))
  {
    v20 = 111;
    v21 = 212;
LABEL_39:
    sub_2394170F4(3, 0, v20, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/bn/div.c", v21);
    return 0;
  }

  if (!v11)
  {
    goto LABEL_38;
  }

  v13 = 0;
  v11 = v11;
  v14 = *a4;
  do
  {
    v15 = *v14++;
    v13 |= v15;
    --v11;
  }

  while (v11);
  if (!v13)
  {
LABEL_38:
    v20 = 105;
    v21 = 217;
    goto LABEL_39;
  }

  sub_239422DA4(a5);
  v68 = sub_239422E50(a5);
  v67 = sub_239422E50(a5);
  v16 = sub_239422E50(a5);
  if (!a1)
  {
    a1 = sub_239422E50(a5);
  }

  if (!v16)
  {
    goto LABEL_92;
  }

  if (!a1)
  {
    goto LABEL_92;
  }

  v17 = sub_239422114(a4) & 0x3F;
  if (!sub_23942350C(v16, a4, 64 - v17))
  {
    goto LABEL_92;
  }

  v18 = *(v16 + 2);
  if (v18 >= 1)
  {
    while (!*(*v16 - 8 + 8 * v18))
    {
      v10 = __OFSUB__(v18--, 1);
      if ((v18 < 0) ^ v10 | (v18 == 0))
      {
        v18 = 0;
        break;
      }
    }

    *(v16 + 2) = v18;
  }

  *(v16 + 4) = 0;
  v59 = 128 - v17;
  if (!sub_23942350C(v67, a3, 128 - v17))
  {
    goto LABEL_92;
  }

  v19 = *(v67 + 2);
  if (v19 < 1)
  {
    if (!v19)
    {
LABEL_42:
      v19 = 0;
    }
  }

  else
  {
    while (!*(*v67 - 8 + 8 * v19))
    {
      v10 = __OFSUB__(v19--, 1);
      if ((v19 < 0) ^ v10 | (v19 == 0))
      {
        *(v67 + 2) = 0;
        goto LABEL_42;
      }
    }

    *(v67 + 2) = v19;
  }

  *(v67 + 4) = 0;
  v23 = *(v16 + 2);
  if (v19 <= v23 + 1)
  {
    if (sub_239421600(v67, v23 + 2))
    {
      v24 = v67;
      v26 = *(v67 + 2);
      LODWORD(v25) = *(v16 + 2) + 2;
      if (v26 < v25)
      {
        do
        {
          *(*v67 + 8 * v26++) = 0;
          v25 = *(v16 + 2) + 2;
        }

        while (v26 < v25);
      }

      goto LABEL_50;
    }

LABEL_92:
    if (!*(a5 + 40))
    {
      result = 0;
      v53 = *(a5 + 8);
      v54 = *(a5 + 16) - 1;
      *(a5 + 16) = v54;
      *(a5 + 32) = *(v53 + 8 * v54);
      return result;
    }

    return 0;
  }

  if (!sub_239421600(v67, v19 + 1))
  {
    goto LABEL_92;
  }

  v24 = v67;
  *(*v67 + 8 * *(v67 + 2)) = 0;
  LODWORD(v25) = *(v67 + 2) + 1;
LABEL_50:
  *(v24 + 2) = v25;
  v63 = *(v16 + 2);
  v27 = v25 - v63;
  v28 = *v16 + 8 * v63;
  if (v63 == 1)
  {
    v29 = 0;
  }

  else
  {
    v29 = *(v28 - 16);
  }

  v65 = *v24;
  v30 = *(v28 - 8);
  v31 = *(a3 + 16);
  *(a1 + 4) = *(a4 + 16) ^ v31;
  if (!sub_239421600(a1, v27 + 1))
  {
    goto LABEL_92;
  }

  *(a1 + 2) = v27 - 1;
  v32 = *a1;
  if (!sub_239421600(v68, v63 + 1))
  {
    goto LABEL_92;
  }

  v33 = &v32[v27 - 1];
  v58 = a1;
  v57 = v31;
  if (*(a1 + 2))
  {
    --v33;
  }

  else
  {
    *(a1 + 4) = 0;
  }

  if (v27 > 1)
  {
    v34 = 0;
    v35 = (v65 + 8 * v27);
    v36 = (v65 + 8 * v25 - 8);
    v37 = v36;
    v61 = v29;
    v62 = v16;
    v60 = v27 - 1;
    do
    {
      v66 = v37 - 1;
      if (*v37 == v30)
      {
        v38 = -1;
      }

      else
      {
        v39 = *(v36 - 1);
        v38 = __udivti3();
        v40 = v39 - v30 * v38;
        v41 = (v38 * v29) >> 64;
        for (i = v38 * v29; __PAIR128__(v40, *(v36 - 2)) < __PAIR128__(v41, i); i -= v29)
        {
          --v38;
          v43 = __CFADD__(v40, v30);
          v40 += v30;
          if (v43)
          {
            break;
          }

          v41 = (__PAIR128__(v41, i) - v29) >> 64;
        }
      }

      *(*v68 + 8 * v63) = sub_23942367C(*v68, *v16, v63, v38);
      --v35;
      if (sub_239421D64(v35, v35, *v68, v63 + 1))
      {
        --v38;
        if (sub_2394216D4(v35, v35, *v16, v63))
        {
          ++*v36;
        }
      }

      v37 = v66;
      *v33-- = v38;
      ++v34;
      v36 = v66;
      v29 = v61;
      v16 = v62;
    }

    while (v34 != v60);
  }

  v44 = *(v67 + 2);
  if (v44 < 1)
  {
    v45 = v58;
    v46 = a2;
    v47 = v57;
    if (!v44)
    {
LABEL_78:
      *(v67 + 4) = 0;
    }
  }

  else
  {
    v45 = v58;
    v46 = a2;
    v47 = v57;
    while (!*(*v67 - 8 + 8 * v44))
    {
      v10 = __OFSUB__(v44--, 1);
      if ((v44 < 0) ^ v10 | (v44 == 0))
      {
        *(v67 + 2) = 0;
        goto LABEL_78;
      }
    }

    *(v67 + 2) = v44;
  }

  if (!v46)
  {
    goto LABEL_87;
  }

  if (!sub_23942373C(v46, v67, v59))
  {
    goto LABEL_92;
  }

  v48 = *(a2 + 8);
  if (v48)
  {
    v49 = 0;
    v50 = *a2;
    do
    {
      v51 = *v50++;
      v49 |= v51;
      --v48;
    }

    while (v48);
    if (v49)
    {
      *(a2 + 16) = v47;
    }
  }

LABEL_87:
  v52 = *(v45 + 2);
  if (v52 < 1)
  {
    if (!v52)
    {
LABEL_95:
      *(v45 + 4) = 0;
    }
  }

  else
  {
    while (!*(*v45 - 8 + 8 * v52))
    {
      v10 = __OFSUB__(v52--, 1);
      if ((v52 < 0) ^ v10 | (v52 == 0))
      {
        *(v45 + 2) = 0;
        goto LABEL_95;
      }
    }

    *(v45 + 2) = v52;
  }

  if (!*(a5 + 40))
  {
    v55 = *(a5 + 8);
    v56 = *(a5 + 16) - 1;
    *(a5 + 16) = v56;
    *(a5 + 32) = *(v55 + 8 * v56);
  }

  return 1;
}

uint64_t sub_23942350C(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  if ((a3 & 0x80000000) != 0)
  {
    sub_2394170F4(3, 0, 109, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/bn/shift.c", 73);
    return 0;
  }

  else
  {
    *(a1 + 16) = *(a2 + 4);
    result = sub_239421600(a1, (*(a2 + 2) + (a3 >> 6) + 1));
    if (result)
    {
      v7 = a3 >> 6;
      v8 = *a2;
      v9 = *a1;
      *(*a1 + 8 * (*(a2 + 2) + (a3 >> 6))) = 0;
      v10 = *(a2 + 2);
      v11 = a3 & 0x3F;
      if ((a3 & 0x3F) != 0)
      {
        if (v10 >= 1)
        {
          v12 = v9[v10 + v7];
          v13 = v10;
          v14 = (v8 + 8 * v10 - 8);
          v15 = v10 + 1;
          v16 = &v9[v7 + v13];
          do
          {
            v17 = *v14--;
            *v16 = v12 | (v17 >> (64 - v11));
            v12 = v17 << v11;
            *--v16 = v17 << v11;
            --v15;
          }

          while (v15 > 1);
        }
      }

      else if (v10 >= 1)
      {
        v18 = v10 - 1;
        do
        {
          v9[v7 + v18] = *(v8 + 8 * v18);
          v19 = v18-- + 1;
        }

        while (v19 > 1);
      }

      if (a3 >= 0x40)
      {
        bzero(v9, 8 * v7);
      }

      v20 = (*(a2 + 2) + v7) < 0;
      v21 = *(a2 + 2) + v7 + 1;
      *(a1 + 8) = v21;
      if (v20)
      {
        if (!v21)
        {
LABEL_20:
          *(a1 + 16) = 0;
        }
      }

      else
      {
        while (!*(*a1 - 8 + 8 * v21))
        {
          v22 = __OFSUB__(v21--, 1);
          if ((v21 < 0) ^ v22 | (v21 == 0))
          {
            *(a1 + 8) = 0;
            goto LABEL_20;
          }
        }

        *(a1 + 8) = v21;
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_23942367C(void *a1, unint64_t *a2, unint64_t a3, unint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  if (a3 < 4)
  {
    v4 = 0;
    do
    {
LABEL_20:
      v23 = *a2++;
      v24 = (v23 * a4) >> 64;
      v25 = v23 * a4 + v4;
      if (__CFADD__(v23 * a4, v4))
      {
        v4 = v24 + 1;
      }

      else
      {
        v4 = v24;
      }

      *a1++ = v25;
      --a3;
    }

    while (a3);
    return v4;
  }

  v4 = 0;
  do
  {
    v5 = *a2 * a4;
    v6 = __CFADD__(v5, v4);
    v7 = v5 + v4;
    if (v6)
    {
      v8 = ((*a2 * a4) >> 64) + 1;
    }

    else
    {
      v8 = (*a2 * a4) >> 64;
    }

    *a1 = v7;
    v9 = a2[1];
    v10 = (v9 * a4) >> 64;
    v11 = v9 * a4;
    v6 = __CFADD__(v11, v8);
    v12 = v11 + v8;
    if (v6)
    {
      v13 = v10 + 1;
    }

    else
    {
      v13 = v10;
    }

    a1[1] = v12;
    v14 = a2[2];
    v15 = (v14 * a4) >> 64;
    v16 = v14 * a4;
    v6 = __CFADD__(v16, v13);
    v17 = v16 + v13;
    if (v6)
    {
      v18 = v15 + 1;
    }

    else
    {
      v18 = v15;
    }

    a1[2] = v17;
    v19 = a2[3];
    v20 = (v19 * a4) >> 64;
    v21 = v19 * a4;
    v6 = __CFADD__(v21, v18);
    v22 = v21 + v18;
    if (v6)
    {
      v4 = v20 + 1;
    }

    else
    {
      v4 = v20;
    }

    a1[3] = v22;
    a2 += 4;
    a1 += 4;
    a3 -= 4;
  }

  while (a3 >= 4);
  if (a3)
  {
    goto LABEL_20;
  }

  return v4;
}

uint64_t sub_23942373C(void **a1, uint64_t a2, unsigned int a3)
{
  if ((a3 & 0x80000000) != 0)
  {
    sub_2394170F4(3, 0, 109, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/bn/shift.c", 158);
    return 0;
  }

  else
  {
    result = sub_239421600(a1, *(a2 + 8));
    if (result)
    {
      sub_23942C66C(*a1, *a2, a3, *(a2 + 8));
      *(a1 + 4) = *(a2 + 16);
      v7 = *(a2 + 8);
      *(a1 + 2) = v7;
      if (v7 < 1)
      {
        if (!v7)
        {
LABEL_10:
          *(a1 + 4) = 0;
        }
      }

      else
      {
        while (!(*a1)[v7 - 1])
        {
          v8 = __OFSUB__(v7--, 1);
          if ((v7 < 0) ^ v8 | (v7 == 0))
          {
            *(a1 + 2) = 0;
            goto LABEL_10;
          }
        }

        *(a1 + 2) = v7;
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_239423800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_239422F7C(0, a1, a2, a3, a4);
  if (result)
  {
    if (*(a1 + 16))
    {
      if (*(a3 + 16))
      {
        v7 = sub_239421B30;
      }

      else
      {
        v7 = sub_2394213B4;
      }

      return v7(a1, a1, a3);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_23942389C(unint64_t *a1, unint64_t *a2, uint64_t a3, unint64_t *a4, unint64_t a5)
{
  v5 = a5;
  v6 = a2;
  v7 = a1;
  for (result = a3 - sub_239421D64(a1, a2, a4, a5); v5; --v5)
  {
    v9 = *v6++;
    *v7 = *v7 & ~result | v9 & result;
    ++v7;
  }

  return result;
}

uint64_t sub_23942390C(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t *a4, unint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v7 = a1;
  for (result = a2 - sub_239421D64(a4, a1, a3, a5); v5; --v5)
  {
    v9 = *v6++;
    *v7 = v9 & ~result | *v7 & result;
    ++v7;
  }

  return result;
}

uint64_t sub_239423980(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t *a5, unint64_t a6)
{
  v6 = a6;
  v9 = a1;
  v10 = sub_239421D64(a1, a2, a3, a6);
  for (result = sub_2394216D4(a5, v9, a4, v6); v6; --v6)
  {
    v12 = *a5++;
    *v9 = *v9 & (v10 - 1) | v12 & -v10;
    ++v9;
  }

  return result;
}

uint64_t sub_239423A08(unint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, unint64_t *a5, unint64_t a6)
{
  v10 = sub_2394216D4(a1, a2, a3, a6);

  return sub_23942390C(a1, v10, a4, a5, a6);
}

uint64_t sub_239423A68(void **a1, void **a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (*(a3 + 16) || *(a4 + 16))
  {
    v7 = 109;
    v8 = 461;
LABEL_4:
    sub_2394170F4(3, 0, v7, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/bn/div.c", v8);
    return 0;
  }

  v10 = *(a4 + 8);
  if (!v10)
  {
    goto LABEL_35;
  }

  v16 = 0;
  v17 = *a4;
  do
  {
    v18 = *v17++;
    v16 |= v18;
    --v10;
  }

  while (v10);
  if (!v16)
  {
LABEL_35:
    v7 = 105;
    v8 = 465;
    goto LABEL_4;
  }

  sub_239422DA4(a6);
  if (!a1 || a1 == a3 || (v19 = a1, a1 == a4))
  {
    v19 = sub_239422E50(a6);
  }

  if (!a2 || a2 == a3 || (v20 = a2, a2 == a4))
  {
    v20 = sub_239422E50(a6);
  }

  v21 = sub_239422E50(a6);
  result = 0;
  if (v19)
  {
    if (v20)
    {
      if (v21)
      {
        result = sub_239421600(v19, *(a3 + 8));
        if (result)
        {
          result = sub_239421600(v20, *(a4 + 8));
          if (result)
          {
            result = sub_239421600(v21, *(a4 + 8));
            if (result)
            {
              v22 = *(a3 + 8);
              if (v22)
              {
                bzero(*v19, 8 * v22);
                LODWORD(v22) = *(a3 + 8);
              }

              *(v19 + 2) = v22;
              *(v19 + 4) = 0;
              v23 = *(a4 + 8);
              if (v23)
              {
                bzero(*v20, 8 * v23);
                LODWORD(v23) = *(a4 + 8);
              }

              *(v20 + 2) = v23;
              *(v20 + 4) = 0;
              v24 = *(a3 + 8);
              if (a5)
              {
                if (((a5 - 1) >> 6) >= v24)
                {
                  v25 = *(a3 + 8);
                }

                else
                {
                  v25 = (a5 - 1) >> 6;
                }

                if (v25)
                {
                  memcpy(*v20, (*a3 + 8 * v24 - 8 * v25), 8 * v25);
                  v24 = *(a3 + 8);
                }

                v26 = ~v25;
              }

              else
              {
                v26 = -1;
              }

              v27 = (v24 + v26);
              if (v24 + v26 >= 0)
              {
                do
                {
                  for (i = 63; i != -1; --i)
                  {
                    v29 = sub_2394216D4(*v20, *v20, *v20, *(a4 + 8));
                    **v20 |= (*(*a3 + 8 * v27) >> i) & 1;
                    *(*v19 + 8 * v27) |= ((sub_23942390C(*v20, v29, *a4, *v21, *(a4 + 8)) & 1) == 0) << i;
                  }
                }

                while (v27-- > 0);
              }

              if ((!a1 || (result = sub_239421F90(a1, v19)) != 0) && (!a2 || (result = sub_239421F90(a2, v20)) != 0))
              {
                result = 1;
              }
            }
          }
        }
      }
    }
  }

  if (!*(a6 + 40))
  {
    v31 = *(a6 + 8);
    v32 = *(a6 + 16) - 1;
    *(a6 + 16) = v32;
    *(a6 + 32) = *(v31 + 8 * v32);
  }

  return result;
}

uint64_t sub_239423D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_2394213B4(a1, a2, a3);
  if (result)
  {

    return sub_239423800(a1, a1, a4, a5);
  }

  return result;
}

uint64_t sub_239423D94(unint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23945004C(0x30uLL);
  v9 = v8;
  if (v8)
  {
    *(v8 + 26) = 0u;
    *v8 = 0u;
    v8[1] = 0u;
    v10 = sub_239423E1C(a1, a2, a3, a4, v8);
  }

  else
  {
    v10 = 0;
  }

  sub_239422D38(v9);
  return v10;
}

uint64_t sub_239423E1C(unint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_239422DA4(a5);
  v10 = sub_239423F34(a2, *(a4 + 8), a5);
  v11 = sub_239423F34(a3, *(a4 + 8), a5);
  v12 = sub_239423FAC(*(a4 + 8), a5);
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13 || v12 == 0)
  {
    result = 0;
  }

  else
  {
    v15 = v12;
    result = sub_239421600(a1, *(a4 + 8));
    if (result)
    {
      v17 = *a1;
      v18 = *v10;
      v19 = *v11;
      v20 = *a4;
      v21 = *v15;
      v22 = *(a4 + 8);
      v23 = sub_2394216D4(*a1, v18, v19, v22);
      sub_23942390C(v17, v23, v20, v21, v22);
      *(a1 + 2) = *(a4 + 8);
      *(a1 + 4) = 0;
      result = 1;
    }
  }

  if (!*(a5 + 40))
  {
    v24 = *(a5 + 8);
    v25 = *(a5 + 16) - 1;
    *(a5 + 16) = v25;
    *(a5 + 32) = *(v24 + 8 * v25);
  }

  return result;
}

uint64_t sub_239423F34(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (*(a1 + 8) < a2)
  {
    v5 = sub_239423FAC(a2, a3);
    if (v5 && (v6 = v5, sub_239421F90(v5, v3)))
    {
      if (sub_2394223D0(v6, a2))
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

unint64_t *sub_239423FAC(unint64_t a1, uint64_t a2)
{
  v3 = sub_239422E50(a2);
  v4 = v3;
  if (v3)
  {
    if (sub_239421600(v3, a1))
    {
      *(v4 + 4) = 0;
      *(v4 + 2) = a1;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_239424000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_239421B30(a1, a2, a3);
  if (result)
  {

    return sub_239423800(a1, a1, a4, a5);
  }

  return result;
}

uint64_t sub_239424068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_239422DA4(a5);
  v10 = sub_239423F34(a2, *(a4 + 8), a5);
  v11 = sub_239423F34(a3, *(a4 + 8), a5);
  v12 = sub_239423FAC(*(a4 + 8), a5);
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13 || v12 == 0)
  {
    result = 0;
  }

  else
  {
    v15 = v12;
    result = sub_239421600(a1, *(a4 + 8));
    if (result)
    {
      sub_239423980(*a1, *v10, *v11, *a4, *v15, *(a4 + 8));
      *(a1 + 8) = *(a4 + 8);
      *(a1 + 16) = 0;
      result = 1;
    }
  }

  if (!*(a5 + 40))
  {
    v17 = *(a5 + 8);
    v18 = *(a5 + 16) - 1;
    *(a5 + 16) = v18;
    *(a5 + 32) = *(v17 + 8 * v18);
  }

  return result;
}

uint64_t sub_239424158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23945004C(0x30uLL);
  v9 = v8;
  if (v8)
  {
    *(v8 + 26) = 0u;
    *v8 = 0u;
    v8[1] = 0u;
    v10 = sub_239424068(a1, a2, a3, a4, v8);
  }

  else
  {
    v10 = 0;
  }

  sub_239422D38(v9);
  return v10;
}

uint64_t sub_2394241E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_239422DA4(a5);
  result = sub_239422E50(a5);
  if (!result)
  {
    goto LABEL_5;
  }

  v11 = result;
  if (a2 != a3)
  {
    result = sub_239424304(result, a2, a3, a5);
    if (!result)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  result = sub_23942429C(result, a2, a5);
  if (result)
  {
LABEL_4:
    result = sub_239423800(a1, v11, a4, a5) != 0;
  }

LABEL_5:
  if (!*(a5 + 40))
  {
    v12 = *(a5 + 8);
    v13 = *(a5 + 16) - 1;
    *(a5 + 16) = v13;
    *(a5 + 32) = *(v12 + 8 * v13);
  }

  return result;
}

uint64_t sub_23942429C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23942A6E0(a1, a2, a3);
  if (result)
  {
    v5 = *(a1 + 8);
    if (v5 < 1)
    {
      if (!v5)
      {
LABEL_8:
        *(a1 + 16) = 0;
      }
    }

    else
    {
      while (!*(*a1 - 8 + 8 * v5))
      {
        v6 = __OFSUB__(v5--, 1);
        if ((v5 < 0) ^ v6 | (v5 == 0))
        {
          *(a1 + 8) = 0;
          goto LABEL_8;
        }
      }

      *(a1 + 8) = v5;
    }

    return 1;
  }

  return result;
}

uint64_t sub_239424304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_23942A288(a1, a2, a3, a4);
  if (result)
  {
    v6 = *(a1 + 8);
    if (v6 < 1)
    {
      if (!v6)
      {
LABEL_8:
        *(a1 + 16) = 0;
      }
    }

    else
    {
      while (!*(*a1 - 8 + 8 * v6))
      {
        v7 = __OFSUB__(v6--, 1);
        if ((v6 < 0) ^ v7 | (v6 == 0))
        {
          *(a1 + 8) = 0;
          goto LABEL_8;
        }
      }

      *(a1 + 8) = v6;
    }

    return 1;
  }

  return result;
}

uint64_t sub_23942436C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_23942429C(a1, a2, a4);
  if (result)
  {

    return sub_239422F7C(0, a1, a1, a3, a4);
  }

  return result;
}

BOOL sub_2394243DC(void **a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (!sub_239423800(a1, a2, a4, a5))
  {
    return 0;
  }

  if (!*(a4 + 16))
  {
    v10 = 0;
    goto LABEL_7;
  }

  v9 = sub_239421F2C(a4);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  *(v9 + 4) = 0;
LABEL_7:
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = a4;
  }

  v13 = sub_239424480(a1, a1, a3, v12, a5);
  sub_239421EC8(v10);
  return v13;
}

BOOL sub_239424480(void **a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (!sub_239421F90(a1, a2) || !sub_2394223D0(a1, *(a4 + 8)))
  {
    return 0;
  }

  sub_239422DA4(a5);
  v9 = sub_239423FAC(*(a4 + 8), a5);
  v10 = v9 != 0;
  if (v9)
  {
    if (a3 >= 1)
    {
      v11 = v9;
      do
      {
        v12 = *a1;
        v13 = *a4;
        v14 = *v11;
        v15 = *(a4 + 8);
        v16 = sub_2394216D4(*a1, *a1, *a1, v15);
        sub_23942390C(v12, v16, v13, v14, v15);
        --a3;
      }

      while (a3);
    }

    *(a1 + 4) = 0;
  }

  if (!*(a5 + 40))
  {
    v17 = *(a5 + 8);
    v18 = *(a5 + 16) - 1;
    *(a5 + 16) = v18;
    *(a5 + 32) = *(v17 + 8 * v18);
  }

  return v10;
}

BOOL sub_239424580(void **a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23945004C(0x30uLL);
  v9 = v8;
  if (v8)
  {
    *(v8 + 26) = 0u;
    *v8 = 0u;
    v8[1] = 0u;
    v10 = sub_239424480(a1, a2, a3, a4, v8);
  }

  else
  {
    v10 = 0;
  }

  sub_239422D38(v9);
  return v10;
}

uint64_t sub_239424608(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = sub_239424670(a1, a2);
  if (result)
  {

    return sub_239423800(a1, a1, a3, a4);
  }

  return result;
}

uint64_t sub_239424670(uint64_t a1, uint64_t *a2)
{
  if (a1 == a2)
  {
    result = sub_239421600(a1, *(a2 + 2) + 1);
    if (!result)
    {
      return result;
    }

    v5 = *(a2 + 2);
  }

  else
  {
    *(a1 + 16) = *(a2 + 4);
    result = sub_239421600(a1, *(a2 + 2) + 1);
    if (!result)
    {
      return result;
    }

    v5 = *(a2 + 2);
    *(a1 + 8) = v5;
  }

  if (v5 < 1)
  {
    return 1;
  }

  v6 = 0;
  v7 = 0;
  v8 = *a1;
  v9 = *a2;
  do
  {
    v10 = *(v9 + 8 * v6);
    v8[v6] = v7 | (2 * v10);
    v7 = v10 >> 63;
    ++v6;
  }

  while (v6 < *(a2 + 2));
  if ((v10 & 0x8000000000000000) == 0)
  {
    return 1;
  }

  result = 1;
  v8[v6] = 1;
  ++*(a1 + 8);
  return result;
}