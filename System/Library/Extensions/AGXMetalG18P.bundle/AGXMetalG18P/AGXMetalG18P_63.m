void AGXIotoInstruction_LDDEV_0::AGXIotoInstruction_LDDEV_0(AGXIotoInstruction_LDDEV_0 *this, const unsigned __int8 *a2)
{
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 20) = 0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 13) = 3;
  *(this + 14) = 0x100000001;
  *(this + 31) = 8;
  *(this + 15) = 8;
  *(this + 7) = 104;
  *(this + 52) = 15;
  *(this + 50) = (*(a2 + 3) >> 5);
  *(this + 24) = 0x4020100804020100uLL >> ((*(a2 + 2) >> 10) & 0x38);
  *(this + 24) = dword_29D2F2750[(*(a2 + 3) >> 13) & 3];
  v2 = (*(a2 + 2) >> 9) & 4 | (*(a2 + 2) >> 5) & 3;
  if (v2 > 3)
  {
    if (v2 > 5)
    {
      *(this + 36) = 2;
      if (v2 == 6)
      {
        v3 = 7;
      }

      else
      {
        v3 = 15;
      }
    }

    else
    {
      *(this + 36) = 2;
      if (v2 == 4)
      {
        v3 = 9;
      }

      else
      {
        v3 = 3;
      }
    }
  }

  else if (v2 > 1)
  {
    *(this + 36) = 2;
    if (v2 == 2)
    {
      v3 = 4;
    }

    else
    {
      v3 = 8;
    }
  }

  else if (v2)
  {
    v3 = 2;
    *(this + 36) = 2;
  }

  else
  {
    *(this + 36) = 2;
    v3 = 1;
  }

  *(this + 36) = v3;
  *(this + 68) = (*(a2 + 1) >> 1) & 0x60 | (*a2 >> 3) & 0xFE | (*(a2 + 2) >> 2) & 1 | (*(a2 + 2) >> 5) & 0x80;
  *(this + 152) = (a2[2] & 0x20) != 0;
  v4 = *(a2 + 2);
  v5 = (*(a2 + 3) >> 2) & 4 | (v4 >> 3) & 3;
  if (v5 > 3)
  {
    if (v5 > 5)
    {
      if (v5 != 6)
      {
        v5 = 7;
      }
    }

    else if (v5 != 4)
    {
      v5 = 5;
    }
  }

  else if (v5 > 1)
  {
    if (v5 != 2)
    {
      v5 = 3;
    }
  }

  else
  {
    v5 = v5 != 0;
  }

  *(this + 39) = v5;
  if ((*a2 & 8) != 0)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  *(this + 37) = v6;
  v7 = (v4 >> 7) & 3;
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      *(this + 64) = 0;
      *(this + 12) = 1;
      *(this + 56) = 0;
      v8 = a2[1] | (((*(a2 + 1) >> 3) & 1) << 9);
      goto LABEL_34;
    }

    *(this + 64) = 1;
  }

  else
  {
    if (!v7)
    {
      *(this + 64) = 0;
      *(this + 12) = 3;
      *(this + 56) = 0;
      LOWORD(v8) = a2[1];
LABEL_34:
      *(this + 20) = v8;
      goto LABEL_38;
    }

    *(this + 64) = 0;
  }

  *(this + 12) = 2;
  *(this + 20) = a2[1];
  *(this + 56) = (a2[2] & 8) != 0;
LABEL_38:
  v9 = (*(a2 + 2) >> 9) & 3;
  if (v9 <= 1)
  {
    if (v9)
    {
      *(this + 92) = 0;
      v10 = 2;
      *(this + 19) = 2;
      *(this + 22) = 8;
      *(this + 34) = a2[3] & 0xFE | *(a2 + 3) & 1;
      *(this + 84) = (a2[2] & 0x10) != 0;
      if ((a2[3] & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    else
    {
      *(this + 92) = 0;
      *(this + 19) = 3;
      *(this + 84) = 0;
      *(this + 22) = 8;
      *(this + 34) = a2[3] & 0xFE | *(a2 + 3) & 1;
      if ((a2[3] & 1) == 0)
      {
        v10 = 2;
LABEL_48:
        *(this + 20) = v10;
        goto LABEL_49;
      }
    }

    v10 = 1;
    goto LABEL_48;
  }

  if (v9 == 2)
  {
    *(this + 92) = 0;
    *(this + 76) = 0x100000001;
    *(this + 84) = 0;
    *(this + 22) = 8;
    *(this + 34) = (32 * *(a2 + 1)) & 0x200 | HIBYTE(*(a2 + 1)) & 0xFE | *(a2 + 3) & 1;
  }

  else
  {
    v10 = 1;
    *(this + 92) = 1;
    *(this + 19) = 2;
    *(this + 22) = 8;
    *(this + 34) = a2[3] & 0xFE | *(a2 + 3) & 1;
    *(this + 84) = (a2[2] & 0x10) != 0;
    if (a2[3])
    {
      goto LABEL_48;
    }

    *(this + 20) = 2;
  }

LABEL_49:
  *(this + 41) = (*(a2 + 3) >> 3) & 1;
}

uint64_t operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  if (v2 != *(a2 + 48))
  {
    v3 = 0;
    goto LABEL_22;
  }

  v3 = 0;
  if (v2 > 3)
  {
    if (v2 <= 5)
    {
      if (v2 == 4)
      {
        v4 = *(a1 + 40);
        v5 = *(a2 + 40);
        goto LABEL_18;
      }

      goto LABEL_10;
    }

    if (v2 != 6)
    {
      if (v2 != 7)
      {
        goto LABEL_22;
      }

      v6 = ((*(a2 + 44) ^ *(a1 + 44)) & 7) == 0 && *(a1 + 40) == *(a2 + 40);
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (v2 <= 1)
  {
    if (v2)
    {
      if (v2 != 1)
      {
        goto LABEL_22;
      }

      goto LABEL_10;
    }

LABEL_16:
    v4 = *(a1 + 40);
    v5 = *(a2 + 40);
    goto LABEL_18;
  }

LABEL_10:
  v4 = *(a1 + 40);
  v5 = *(a2 + 40);
LABEL_18:
  v6 = v4 == v5;
LABEL_19:
  v3 = v6;
LABEL_22:
  v33 = v3;
  v7 = *(a1 + 76);
  if (v7 != *(a2 + 76))
  {
    v8 = 0;
    goto LABEL_43;
  }

  v8 = 0;
  if (v7 > 3)
  {
    if (v7 <= 5)
    {
      if (v7 == 4)
      {
        v9 = *(a1 + 68);
        v10 = *(a2 + 68);
        goto LABEL_39;
      }

      goto LABEL_31;
    }

    if (v7 != 6)
    {
      if (v7 != 7)
      {
        goto LABEL_43;
      }

      v11 = ((*(a2 + 72) ^ *(a1 + 72)) & 7) == 0 && *(a1 + 68) == *(a2 + 68);
      goto LABEL_40;
    }

    goto LABEL_37;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 != 1)
      {
        goto LABEL_43;
      }

      goto LABEL_31;
    }

LABEL_37:
    v9 = *(a1 + 68);
    v10 = *(a2 + 68);
    goto LABEL_39;
  }

LABEL_31:
  v9 = *(a1 + 68);
  v10 = *(a2 + 68);
LABEL_39:
  v11 = v9 == v10;
LABEL_40:
  v8 = v11;
LABEL_43:
  v32 = v8;
  v12 = *(a1 + 112);
  if (v12 != *(a2 + 112))
  {
    v13 = 0;
    goto LABEL_64;
  }

  v13 = 0;
  if (v12 > 3)
  {
    if (v12 <= 5)
    {
      if (v12 == 4)
      {
        v14 = *(a1 + 104);
        v15 = *(a2 + 104);
        goto LABEL_60;
      }

      goto LABEL_52;
    }

    if (v12 != 6)
    {
      if (v12 != 7)
      {
        goto LABEL_64;
      }

      v16 = ((*(a2 + 108) ^ *(a1 + 108)) & 7) == 0 && *(a1 + 104) == *(a2 + 104);
      goto LABEL_61;
    }

    goto LABEL_58;
  }

  if (v12 <= 1)
  {
    if (v12)
    {
      if (v12 != 1)
      {
        goto LABEL_64;
      }

      goto LABEL_52;
    }

LABEL_58:
    v14 = *(a1 + 104);
    v15 = *(a2 + 104);
    goto LABEL_60;
  }

LABEL_52:
  v14 = *(a1 + 104);
  v15 = *(a2 + 104);
LABEL_60:
  v16 = v14 == v15;
LABEL_61:
  v13 = v16;
LABEL_64:
  v17 = *(a1 + 144);
  if (v17 != *(a2 + 144))
  {
    v18 = 0;
    goto LABEL_85;
  }

  v18 = 0;
  if (v17 > 3)
  {
    if (v17 <= 5)
    {
      if (v17 == 4)
      {
        v19 = *(a1 + 136);
        v20 = *(a2 + 136);
        goto LABEL_81;
      }

      goto LABEL_73;
    }

    if (v17 != 6)
    {
      if (v17 != 7)
      {
        goto LABEL_85;
      }

      v21 = ((*(a2 + 140) ^ *(a1 + 140)) & 7) == 0 && *(a1 + 136) == *(a2 + 136);
      goto LABEL_82;
    }

    goto LABEL_79;
  }

  if (v17 <= 1)
  {
    if (v17)
    {
      if (v17 != 1)
      {
        goto LABEL_85;
      }

      goto LABEL_73;
    }

LABEL_79:
    v19 = *(a1 + 136);
    v20 = *(a2 + 136);
    goto LABEL_81;
  }

LABEL_73:
  v19 = *(a1 + 136);
  v20 = *(a2 + 136);
LABEL_81:
  v21 = v19 == v20;
LABEL_82:
  v18 = v21;
LABEL_85:
  v22.i32[0] = *(a1 + 80);
  v22.i32[1] = *(a1 + 88);
  v22.i64[1] = __PAIR64__(*(a1 + 116), *(a1 + 96));
  v23.i32[0] = *(a1 + 124);
  v24.i32[0] = *(a2 + 124);
  v25.i32[0] = *(a2 + 80);
  v25.i32[1] = *(a2 + 88);
  v25.i64[1] = __PAIR64__(*(a2 + 116), *(a2 + 96));
  v26.i64[1] = __PAIR64__(*(a1 + 60), *(a1 + 52));
  v23.i32[1] = *(a1 + 148);
  v23.i64[1] = *(a1 + 156);
  v27.i64[1] = __PAIR64__(*(a2 + 60), *(a2 + 52));
  v24.i32[1] = *(a2 + 148);
  v24.i64[1] = *(a2 + 156);
  v26.i64[0] = *(a1 + 28);
  v27.i64[0] = *(a2 + 28);
  v28 = vminvq_u8(vuzp1q_s8(vuzp1q_s16(vceqq_s32(*(a1 + 8), *(a2 + 8)), vceqq_s32(v26, v27)), vuzp1q_s16(vceqq_s32(v22, v25), vceqq_s32(v23, v24)))) & (*(a1 + 4) == *(a2 + 4));
  if (*(a1 + 164) != *(a2 + 164))
  {
    v28 = 0;
  }

  if ((*a2 ^ *a1))
  {
    v28 = 0;
  }

  if (*(a2 + 24) != *(a1 + 24) || ((*(a2 + 36) ^ *(a1 + 36)) & 0xF | (*(a2 + 56) ^ *(a1 + 56)) & 1) != 0)
  {
    v28 = 0;
  }

  if ((*(a2 + 64) ^ *(a1 + 64)))
  {
    v28 = 0;
  }

  if (((*(a2 + 84) ^ *(a1 + 84) | *(a2 + 120) ^ *(a1 + 120) | *(a2 + 128) ^ *(a1 + 128)) | (*(a2 + 132) ^ *(a1 + 132) | *(a2 + 152) ^ *(a1 + 152))) & 1 | (*(a2 + 92) ^ *(a1 + 92)) & 3)
  {
    v30 = 0;
  }

  else
  {
    v30 = *(a1 + 100) == *(a2 + 100);
  }

  if (!v30)
  {
    v28 = 0;
  }

  return v28 & v18 & v13 & v32 & v33;
}

void AGXIotoInstruction_LDDEV_3::AGXIotoInstruction_LDDEV_3(AGXIotoInstruction_LDDEV_3 *this, const unsigned __int8 *a2)
{
  *(this + 20) = 0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 13) = 3;
  *(this + 29) = 1;
  *(this + 31) = 8;
  *(this + 15) = 8;
  *(this + 7) = 104;
  *(this + 50) = (*(a2 + 4) >> 5);
  *(this + 132) = (a2[4] & 8) != 0;
  *(this + 24) = 0x4020100804020100uLL >> ((*(a2 + 3) >> 10) & 0x38);
  *(this + 24) = dword_29D2F2750[(*(a2 + 4) >> 13) & 3];
  *(this + 36) = 0xF07030908040201uLL >> (8 * ((*(a2 + 3) >> 9) & 4 | (*(a2 + 3) >> 5) & 3u));
  *(this + 68) = (*(a2 + 1) >> 1) & 0x60 | (*a2 >> 3) & 0xFE | (((*(a2 + 2) >> 2) & 1) << 8) | (*(a2 + 3) >> 2) & 1 | (*(a2 + 3) >> 5) & 0x80;
  *(this + 152) = (a2[2] & 0x20) != 0;
  *(this + 156) = (*(a2 + 4) >> 2) & 4 | (*(a2 + 3) >> 3) & 3u;
  if ((*a2 & 8) != 0)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  *(this + 36) = 2;
  *(this + 37) = v2;
  v3 = *(a2 + 2);
  if ((v3 & 0x20) != 0)
  {
    *(this + 28) = 2;
    *(this + 52) = (2 * v3) & 0x80 | (((v3 >> 4) & 1) << 8) | (v3 >> 8) & 0x7F;
    *(this + 120) = *(a2 + 2) >> 15;
    *(this + 128) = a2[4] >> 7;
  }

  else if ((v3 & 0x40) != 0)
  {
    *(this + 28) = 3;
    *(this + 128) = 0;
    *(this + 52) = (16 * *(a2 + 2)) & 0x100 | *(a2 + 2) & 0x80 | HIBYTE(*(a2 + 2)) & 0x7F;
    *(this + 120) = *(a2 + 2) >> 15;
  }

  else
  {
    *(this + 28) = 1;
    *(this + 120) = 0;
    *(this + 128) = 0;
    switch(a2[5] & 0xF)
    {
      case 1:
        v4 = 1;
        goto LABEL_24;
      case 2:
        v4 = 2;
        goto LABEL_24;
      case 3:
        v4 = 3;
        goto LABEL_24;
      case 4:
        v4 = 4;
        goto LABEL_24;
      case 5:
        v4 = 5;
        goto LABEL_24;
      case 6:
        v4 = 6;
        goto LABEL_24;
      case 7:
        v4 = 7;
        goto LABEL_24;
      case 8:
        v4 = 8;
        goto LABEL_24;
      case 9:
        v4 = 9;
        goto LABEL_24;
      case 0xA:
        v4 = 10;
        goto LABEL_24;
      case 0xB:
        v4 = 11;
        goto LABEL_24;
      case 0xC:
        v4 = 12;
        goto LABEL_24;
      case 0xD:
        v4 = 13;
        goto LABEL_24;
      case 0xE:
        v4 = 14;
        goto LABEL_24;
      case 0xF:
        break;
      default:
        v4 = 15;
LABEL_24:
        *(this + 52) = v4;
        break;
    }
  }

  v5 = (*(a2 + 3) >> 7) & 3;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      *(this + 64) = 0;
      *(this + 12) = 1;
      *(this + 56) = 0;
      v6 = a2[1] | (((*(a2 + 1) >> 3) & 1) << 9);
      goto LABEL_30;
    }

    *(this + 64) = 1;
  }

  else
  {
    if (!v5)
    {
      *(this + 64) = 0;
      *(this + 12) = 3;
      *(this + 56) = 0;
      LOWORD(v6) = a2[1];
LABEL_30:
      *(this + 20) = v6;
      goto LABEL_34;
    }

    *(this + 64) = 0;
  }

  *(this + 12) = 2;
  *(this + 20) = a2[1];
  *(this + 56) = (a2[2] & 8) != 0;
LABEL_34:
  v7 = (*(a2 + 3) >> 9) & 3;
  if (v7 <= 1)
  {
    if (v7)
    {
      *(this + 92) = 0;
      v8 = 2;
      *(this + 19) = 2;
      *(this + 22) = 8;
      *(this + 34) = a2[3] & 0xFE | *(a2 + 4) & 1;
      *(this + 84) = (a2[2] & 0x10) != 0;
      if ((a2[3] & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    else
    {
      *(this + 92) = 0;
      *(this + 19) = 3;
      *(this + 84) = 0;
      *(this + 22) = 8;
      *(this + 34) = a2[3] & 0xFE | *(a2 + 4) & 1;
      if ((a2[3] & 1) == 0)
      {
        v8 = 2;
LABEL_44:
        *(this + 20) = v8;
        goto LABEL_45;
      }
    }

    v8 = 1;
    goto LABEL_44;
  }

  if (v7 == 2)
  {
    *(this + 92) = 0;
    *(this + 76) = 0x100000001;
    *(this + 84) = 0;
    *(this + 22) = 8;
    *(this + 34) = (32 * *(a2 + 1)) & 0x200 | HIBYTE(*(a2 + 1)) & 0xFE | *(a2 + 4) & 1;
  }

  else
  {
    v8 = 1;
    *(this + 92) = 1;
    *(this + 19) = 2;
    *(this + 22) = 8;
    *(this + 34) = a2[3] & 0xFE | *(a2 + 4) & 1;
    *(this + 84) = (a2[2] & 0x10) != 0;
    if (a2[3])
    {
      goto LABEL_44;
    }

    *(this + 20) = 2;
  }

LABEL_45:
  *(this + 41) = (*(a2 + 4) >> 3) & 1;
}

uint64_t AGXIotoInstruction_LDDEV_5::try_encode(AGXIotoInstruction_LDDEV_5 *this, AGXIotoInstruction_LDDEV_5 *a2)
{
  v107 = *MEMORY[0x29EDCA608];
  result = AGXIotoInstruction_LDDEV_5::emit(a2, &v106);
  if (BYTE6(v106) & 3 | (4 * ((WORD4(v106) >> 1) & 1)) || ((WORD4(v106) & 0x8004) == 0x8000 ? (v5 = (BYTE10(v106) & 1) == 0) : (v5 = 1), v5 || (~WORD1(v106) & 7) != 0 || (~v106 & 7) != 0))
  {
LABEL_399:
    v97 = 0;
    *this = 0;
  }

  else
  {
    v100 = 0u;
    v102 = 0u;
    v103 = 0u;
    memset(v98, 0, sizeof(v98));
    DWORD1(v103) = 1;
    HIDWORD(v103) = 8;
    DWORD1(v100) = 3;
    HIDWORD(v100) = 8;
    HIDWORD(v98[1]) = 104;
    WORD2(v102) = (HIBYTE(v106) << 8) | (WORD4(v106) >> 5);
    LOBYTE(v98[0]) = BYTE12(v106) & 1;
    v104 = 0u;
    memset(v105, 0, sizeof(v105));
    BYTE4(v104) = (BYTE4(v106) & 8) != 0;
    memset(v101, 0, sizeof(v101));
    v99 = 0u;
    BYTE12(v101[1]) = (WORD5(v106) >> 10) & 2;
    switch((WORD5(v106) >> 5) & 0x1B | (WORD6(v106) >> 5) & 4 | (WORD6(v106) >> 4) & 0x80 | (WORD6(v106) >> 7) & 0x60)
    {
      case 0:
        memset(v98 + 4, 0, 20);
        break;
      case 1:
        *(&v98[0] + 1) = 0;
        *&v98[1] = 0;
        goto LABEL_250;
      case 2:
        goto LABEL_216;
      case 3:
        goto LABEL_255;
      case 4:
        *(&v98[0] + 1) = 0;
        *&v98[1] = 0;
        goto LABEL_151;
      case 5:
        goto LABEL_259;
      case 6:
        goto LABEL_264;
      case 7:
        goto LABEL_314;
      case 8:
        goto LABEL_292;
      case 9:
        *(v98 + 12) = 1;
        break;
      case 0xA:
        v7 = 1;
        goto LABEL_150;
      case 0xB:
        v6 = 1;
        goto LABEL_249;
      case 0xC:
        goto LABEL_266;
      case 0xD:
        v8 = xmmword_29D2F1A90;
        goto LABEL_319;
      case 0xE:
        v8 = xmmword_29D2F1A80;
        goto LABEL_319;
      case 0xF:
        goto LABEL_288;
      case 0x10:
        v8 = xmmword_29D2F1A60;
        goto LABEL_319;
      case 0x11:
        v8 = xmmword_29D2F1A50;
        goto LABEL_319;
      case 0x12:
        *(v98 + 12) = 2;
        break;
      case 0x13:
        v7 = 2;
        goto LABEL_150;
      case 0x14:
        v6 = 2;
        goto LABEL_249;
      case 0x15:
        goto LABEL_305;
      case 0x16:
        v8 = xmmword_29D2F1A00;
        goto LABEL_319;
      case 0x17:
        v8 = xmmword_29D2F19F0;
        goto LABEL_319;
      case 0x18:
        goto LABEL_309;
      case 0x19:
        v8 = xmmword_29D2F19D0;
        goto LABEL_319;
      case 0x1A:
        v8 = xmmword_29D2F19C0;
        goto LABEL_319;
      case 0x1B:
        LODWORD(v98[1]) = 1;
        break;
      case 0x1C:
        v72 = 1;
        goto LABEL_298;
      case 0x1D:
        v18 = 1;
        goto LABEL_301;
      case 0x1E:
        v27 = 1;
        goto LABEL_295;
      case 0x1F:
        LODWORD(v98[1]) = 1;
        goto LABEL_259;
      case 0x20:
        LODWORD(v98[1]) = 1;
        goto LABEL_216;
      case 0x21:
        v9 = 1;
        v10 = 2;
        goto LABEL_131;
      case 0x22:
        v14 = 1;
        goto LABEL_313;
      case 0x23:
        LODWORD(v98[1]) = 1;
        goto LABEL_292;
      case 0x24:
        goto LABEL_142;
      case 0x25:
        v7 = 0x100000001;
        goto LABEL_150;
      case 0x26:
        v6 = 0x100000001;
        goto LABEL_249;
      case 0x27:
        v11 = 1;
        goto LABEL_107;
      case 0x28:
        *&v8 = 0x100000001;
        *(&v8 + 1) = 0x100000001;
        goto LABEL_319;
      case 0x29:
        goto LABEL_212;
      case 0x2A:
        v74 = 1;
        goto LABEL_287;
      case 0x2B:
        goto LABEL_209;
      case 0x2C:
        goto LABEL_111;
      case 0x2D:
        goto LABEL_226;
      case 0x2E:
        goto LABEL_96;
      case 0x2F:
        goto LABEL_70;
      case 0x30:
        LODWORD(v98[1]) = 1;
        goto LABEL_305;
      case 0x31:
        goto LABEL_206;
      case 0x32:
        goto LABEL_234;
      case 0x33:
        v12 = 1;
        goto LABEL_308;
      case 0x34:
        goto LABEL_222;
      case 0x35:
        goto LABEL_94;
      case 0x36:
        LODWORD(v98[1]) = 2;
        break;
      case 0x37:
        v72 = 2;
LABEL_298:
        LODWORD(v98[1]) = v72;
        goto LABEL_299;
      case 0x38:
        v18 = 2;
LABEL_301:
        LODWORD(v98[1]) = v18;
        goto LABEL_302;
      case 0x39:
        v9 = 2;
        v10 = 1;
LABEL_131:
        LODWORD(v98[1]) = v9;
        DWORD2(v98[0]) = v10;
        break;
      case 0x3A:
        LODWORD(v98[1]) = 2;
        goto LABEL_259;
      case 0x3B:
        LODWORD(v98[1]) = 2;
        goto LABEL_216;
      case 0x3C:
        v27 = 2;
LABEL_295:
        LODWORD(v98[1]) = v27;
        DWORD2(v98[0]) = v27;
        break;
      case 0x3D:
        v14 = 2;
LABEL_313:
        LODWORD(v98[1]) = v14;
        goto LABEL_314;
      case 0x3E:
        LODWORD(v98[1]) = 2;
        goto LABEL_292;
      case 0x3F:
        goto LABEL_163;
      case 0x40:
        goto LABEL_100;
      case 0x41:
        goto LABEL_53;
      case 0x42:
        v11 = 2;
LABEL_107:
        LODWORD(v98[1]) = v11;
        goto LABEL_266;
      case 0x43:
        goto LABEL_178;
      case 0x44:
        goto LABEL_129;
      case 0x45:
        v74 = 2;
LABEL_287:
        LODWORD(v98[1]) = v74;
        goto LABEL_288;
      case 0x46:
        goto LABEL_184;
      case 0x47:
        goto LABEL_275;
      case 0x48:
        goto LABEL_278;
      case 0x49:
        v7 = 0x200000002;
        goto LABEL_150;
      case 0x4A:
        v6 = 0x200000002;
        goto LABEL_249;
      case 0x4B:
        LODWORD(v98[1]) = 2;
        goto LABEL_305;
      case 0x4C:
        goto LABEL_198;
      case 0x4D:
        goto LABEL_147;
      case 0x4E:
        v12 = 2;
LABEL_308:
        LODWORD(v98[1]) = v12;
        goto LABEL_309;
      case 0x4F:
        goto LABEL_154;
      case 0x50:
        goto LABEL_157;
      case 0x51:
        v36 = 1;
        goto LABEL_77;
      case 0x52:
        v21 = 1;
        goto LABEL_261;
      case 0x53:
        v25 = 1;
        v26 = 2;
        goto LABEL_50;
      case 0x54:
        v31 = 1;
        goto LABEL_311;
      case 0x55:
        DWORD1(v98[1]) = 1;
        goto LABEL_259;
      case 0x56:
        DWORD1(v98[1]) = 1;
        goto LABEL_216;
      case 0x57:
        v30 = 1;
        goto LABEL_252;
      case 0x58:
        DWORD1(v98[1]) = 1;
        goto LABEL_314;
      case 0x59:
        DWORD1(v98[1]) = 1;
        goto LABEL_292;
      case 0x5A:
        v32 = 1;
        goto LABEL_173;
      case 0x5B:
        v29 = 1;
        DWORD1(v98[1]) = 1;
        goto LABEL_280;
      case 0x5C:
        v63 = 1;
        DWORD1(v98[1]) = 1;
        v64 = 2;
        goto LABEL_169;
      case 0x5D:
        DWORD1(v98[1]) = 1;
        goto LABEL_266;
      case 0x5E:
        v46 = 1;
        goto LABEL_114;
      case 0x5F:
        v15 = 1;
        goto LABEL_215;
      case 0x60:
        v68 = 1;
        goto LABEL_282;
      case 0x61:
        v77 = 1;
        goto LABEL_239;
      case 0x62:
        v75 = 1;
        goto LABEL_230;
      case 0x63:
        v37 = 1;
        v38 = 2;
        goto LABEL_79;
      case 0x64:
        v47 = 1;
        DWORD1(v98[1]) = 1;
        v48 = 2;
        goto LABEL_247;
      case 0x65:
        DWORD1(v98[1]) = 1;
        v29 = 2;
        goto LABEL_280;
      case 0x66:
        v76 = 1;
        goto LABEL_304;
      case 0x67:
        v44 = 1;
        v45 = 2;
        goto LABEL_102;
      case 0x68:
        v16 = 1;
        v17 = 2;
        goto LABEL_75;
      case 0x69:
        v23 = 1;
        goto LABEL_85;
      case 0x6A:
        v59 = 1;
        v60 = 2;
        goto LABEL_236;
      case 0x6B:
        v49 = 1;
        v50 = 2;
        goto LABEL_144;
      case 0x6C:
        *&v98[1] = 0x100000001;
        break;
      case 0x6D:
        *&v98[1] = 0x100000001;
        goto LABEL_299;
      case 0x6E:
        *&v98[1] = 0x100000001;
        goto LABEL_302;
      case 0x6F:
        v13 = 0x100000001;
        goto LABEL_254;
      case 0x70:
        v35 = 0x100000001;
        goto LABEL_244;
      case 0x71:
        v52 = 0x100000001;
        goto LABEL_175;
      case 0x72:
        v41 = 0x100000001;
        goto LABEL_263;
      case 0x73:
        v58 = 0x100000001;
        goto LABEL_270;
      case 0x74:
        v73 = 0x100000001;
        goto LABEL_291;
      case 0x75:
        v51 = 1;
        goto LABEL_141;
      case 0x76:
        v34 = 1;
        goto LABEL_241;
      case 0x77:
        DWORD1(v98[1]) = 1;
        v6 = 0x100000001;
        goto LABEL_249;
      case 0x78:
        *&v19 = 0x100000001;
        *(&v19 + 1) = 0x100000001;
        *(v98 + 8) = v19;
        break;
      case 0x79:
        v54 = 1;
        goto LABEL_123;
      case 0x7A:
        v28 = 1;
        goto LABEL_211;
      case 0x7B:
        *(v98 + 8) = xmmword_29D2F1C40;
        break;
      case 0x7C:
        v40 = 1;
        goto LABEL_208;
      case 0x7D:
        v43 = 1;
        goto LABEL_110;
      case 0x7E:
        v42 = 1;
        goto LABEL_225;
      case 0x7F:
        v34 = 1;
        goto LABEL_202;
      case 0x80:
        DWORD1(v98[1]) = 1;
LABEL_70:
        v6 = 0x100000002;
        goto LABEL_249;
      case 0x81:
        *(v98 + 8) = xmmword_29D2F1C30;
        break;
      case 0x82:
        v66 = 1;
        goto LABEL_205;
      case 0x83:
        v71 = 1;
        goto LABEL_233;
      case 0x84:
        *(v98 + 8) = xmmword_29D2F1C20;
        break;
      case 0x85:
        v22 = 1;
        goto LABEL_221;
      case 0x86:
        v39 = 1;
        goto LABEL_93;
      case 0x87:
        *&v98[1] = 0x100000002;
        break;
      case 0x88:
        *&v98[1] = 0x100000002;
        goto LABEL_299;
      case 0x89:
        *&v98[1] = 0x100000002;
        goto LABEL_302;
      case 0x8A:
        v13 = 0x100000002;
        goto LABEL_254;
      case 0x8B:
        v56 = 0x100000002;
        goto LABEL_258;
      case 0x8C:
        v35 = 0x100000002;
        goto LABEL_244;
      case 0x8D:
        v41 = 0x100000002;
        goto LABEL_263;
      case 0x8E:
        v58 = 0x100000002;
        goto LABEL_270;
      case 0x8F:
        v73 = 0x100000002;
        goto LABEL_291;
      case 0x90:
        v65 = 1;
        goto LABEL_162;
      case 0x91:
        v34 = 1;
        goto LABEL_284;
      case 0x92:
        DWORD1(v98[1]) = 1;
LABEL_53:
        v6 = 0x200000001;
        goto LABEL_249;
      case 0x93:
        *(v98 + 8) = xmmword_29D2F1C10;
        break;
      case 0x94:
        v67 = 1;
        goto LABEL_177;
      case 0x95:
        v33 = 1;
        goto LABEL_128;
      case 0x96:
        *(v98 + 8) = xmmword_29D2F1C00;
        break;
      case 0x97:
        v24 = 1;
        goto LABEL_183;
      case 0x98:
        v61 = 1;
        goto LABEL_274;
      case 0x99:
        v70 = 1;
        goto LABEL_277;
      case 0x9A:
        v34 = 1;
        goto LABEL_180;
      case 0x9B:
        DWORD1(v98[1]) = 1;
        v6 = 0x200000002;
LABEL_249:
        *(v98 + 12) = v6;
LABEL_250:
        DWORD1(v98[0]) = 2;
        break;
      case 0x9C:
        *(v98 + 8) = xmmword_29D2F1BF0;
        break;
      case 0x9D:
        v57 = 1;
        goto LABEL_197;
      case 0x9E:
        v20 = 1;
        goto LABEL_146;
      case 0x9F:
        *(v98 + 8) = xmmword_29D2F1BE0;
        break;
      case 0xA0:
        v53 = 1;
        goto LABEL_153;
      case 0xA1:
        v55 = 1;
        goto LABEL_156;
      case 0xA2:
        v36 = 2;
LABEL_77:
        DWORD1(v98[1]) = v36;
        *(v98 + 12) = 0;
        *(v98 + 4) = 0;
        break;
      case 0xA3:
        v25 = 2;
        v26 = 1;
LABEL_50:
        DWORD1(v98[1]) = v25;
        DWORD1(v98[0]) = v26;
        break;
      case 0xA4:
        v21 = 2;
LABEL_261:
        DWORD1(v98[1]) = v21;
        DWORD1(v98[0]) = v21;
        break;
      case 0xA5:
        v31 = 2;
LABEL_311:
        DWORD1(v98[1]) = v31;
        *(&v98[0] + 1) = 1;
        break;
      case 0xA6:
        DWORD1(v98[1]) = 2;
        goto LABEL_259;
      case 0xA7:
        DWORD1(v98[1]) = 2;
        goto LABEL_216;
      case 0xA8:
        v30 = 2;
LABEL_252:
        DWORD1(v98[1]) = v30;
        *(&v98[0] + 1) = 2;
        break;
      case 0xA9:
        DWORD1(v98[1]) = 2;
        goto LABEL_314;
      case 0xAA:
        DWORD1(v98[1]) = 2;
        goto LABEL_292;
      case 0xAB:
        v37 = 2;
        v38 = 1;
LABEL_79:
        DWORD1(v98[1]) = v37;
        HIDWORD(v98[0]) = v38;
        break;
      case 0xAC:
        DWORD1(v98[1]) = 2;
        v29 = 1;
        goto LABEL_280;
      case 0xAD:
        v47 = 2;
        DWORD1(v98[1]) = 2;
        v48 = 1;
LABEL_247:
        HIDWORD(v98[0]) = v48;
        DWORD1(v98[0]) = v47;
        break;
      case 0xAE:
        DWORD1(v98[1]) = 2;
LABEL_266:
        *(&v98[0] + 1) = 0x100000001;
        break;
      case 0xAF:
        v44 = 2;
        v45 = 1;
LABEL_102:
        DWORD1(v98[1]) = v44;
        HIDWORD(v98[0]) = v45;
        goto LABEL_259;
      case 0xB0:
        v16 = 2;
        v17 = 1;
LABEL_75:
        DWORD1(v98[1]) = v16;
        HIDWORD(v98[0]) = v17;
        goto LABEL_216;
      case 0xB1:
        v68 = 2;
LABEL_282:
        DWORD1(v98[1]) = v68;
LABEL_288:
        *(&v98[0] + 1) = 0x100000002;
        break;
      case 0xB2:
        v59 = 2;
        v60 = 1;
LABEL_236:
        DWORD1(v98[1]) = v59;
        HIDWORD(v98[0]) = v60;
        goto LABEL_314;
      case 0xB3:
        v49 = 2;
        v50 = 1;
LABEL_144:
        DWORD1(v98[1]) = v49;
        HIDWORD(v98[0]) = v50;
        goto LABEL_292;
      case 0xB4:
        v32 = 2;
LABEL_173:
        DWORD1(v98[1]) = v32;
        HIDWORD(v98[0]) = v32;
        break;
      case 0xB5:
        v63 = 2;
        DWORD1(v98[1]) = 2;
        v64 = 1;
LABEL_169:
        HIDWORD(v98[0]) = v63;
        DWORD1(v98[0]) = v64;
        break;
      case 0xB6:
        v29 = 2;
        DWORD1(v98[1]) = 2;
LABEL_280:
        HIDWORD(v98[0]) = v29;
        DWORD1(v98[0]) = v29;
        break;
      case 0xB7:
        v76 = 2;
LABEL_304:
        DWORD1(v98[1]) = v76;
LABEL_305:
        *(&v98[0] + 1) = 0x200000001;
        break;
      case 0xB8:
        v46 = 2;
LABEL_114:
        DWORD1(v98[1]) = v46;
        HIDWORD(v98[0]) = v46;
        goto LABEL_259;
      case 0xB9:
        v15 = 2;
LABEL_215:
        DWORD1(v98[1]) = v15;
        HIDWORD(v98[0]) = v15;
        goto LABEL_216;
      case 0xBA:
        v23 = 2;
LABEL_85:
        DWORD1(v98[1]) = v23;
LABEL_309:
        *(&v98[0] + 1) = 0x200000002;
        break;
      case 0xBB:
        v77 = 2;
LABEL_239:
        DWORD1(v98[1]) = v77;
        HIDWORD(v98[0]) = v77;
        goto LABEL_314;
      case 0xBC:
        v75 = 2;
LABEL_230:
        DWORD1(v98[1]) = v75;
        HIDWORD(v98[0]) = v75;
        goto LABEL_292;
      case 0xBD:
        *&v98[1] = 0x200000001;
        break;
      case 0xBE:
        *&v98[1] = 0x200000001;
        goto LABEL_299;
      case 0xBF:
        *&v98[1] = 0x200000001;
        goto LABEL_302;
      case 0xC0:
        v13 = 0x200000001;
        goto LABEL_254;
      case 0xC1:
        v56 = 0x200000001;
        goto LABEL_258;
      case 0xC2:
        v52 = 0x200000001;
        goto LABEL_175;
      case 0xC3:
        v41 = 0x200000001;
        goto LABEL_263;
      case 0xC4:
        v35 = 0x200000001;
        goto LABEL_244;
      case 0xC5:
        v73 = 0x200000001;
LABEL_291:
        *&v98[1] = v73;
LABEL_292:
        *(v98 + 4) = 0x200000002;
        break;
      case 0xC6:
        v51 = 2;
LABEL_141:
        DWORD1(v98[1]) = v51;
LABEL_142:
        *(v98 + 12) = 0x100000001;
        break;
      case 0xC7:
        DWORD1(v98[1]) = 2;
        v7 = 0x100000001;
        goto LABEL_150;
      case 0xC8:
        v34 = 2;
LABEL_241:
        DWORD1(v98[1]) = v34;
        v69 = 0x100000001;
        goto LABEL_285;
      case 0xC9:
        *(v98 + 8) = xmmword_29D2F1BD0;
        break;
      case 0xCA:
        v54 = 2;
LABEL_123:
        DWORD1(v98[1]) = v54;
        *&v8 = 0x100000001;
        *(&v8 + 1) = 0x100000001;
        goto LABEL_319;
      case 0xCB:
        v28 = 2;
LABEL_211:
        DWORD1(v98[1]) = v28;
LABEL_212:
        v8 = xmmword_29D2F1C40;
        goto LABEL_319;
      case 0xCC:
        *(v98 + 8) = xmmword_29D2F1BC0;
        break;
      case 0xCD:
        v40 = 2;
LABEL_208:
        DWORD1(v98[1]) = v40;
LABEL_209:
        v8 = xmmword_29D2F1C30;
        goto LABEL_319;
      case 0xCE:
        v43 = 2;
LABEL_110:
        DWORD1(v98[1]) = v43;
LABEL_111:
        v8 = xmmword_29D2F1C20;
        goto LABEL_319;
      case 0xCF:
        v42 = 2;
LABEL_225:
        DWORD1(v98[1]) = v42;
LABEL_226:
        *(v98 + 12) = 0x100000002;
        break;
      case 0xD0:
        DWORD1(v98[1]) = 2;
LABEL_96:
        v7 = 0x100000002;
        goto LABEL_150;
      case 0xD1:
        v34 = 2;
LABEL_202:
        DWORD1(v98[1]) = v34;
        v69 = 0x100000002;
        goto LABEL_285;
      case 0xD2:
        *(v98 + 8) = xmmword_29D2F1BB0;
        break;
      case 0xD3:
        v66 = 2;
LABEL_205:
        DWORD1(v98[1]) = v66;
LABEL_206:
        v8 = xmmword_29D2F1C10;
        goto LABEL_319;
      case 0xD4:
        v71 = 2;
LABEL_233:
        DWORD1(v98[1]) = v71;
LABEL_234:
        v8 = xmmword_29D2F1C00;
        goto LABEL_319;
      case 0xD5:
        *(v98 + 8) = xmmword_29D2F1BA0;
        break;
      case 0xD6:
        v22 = 2;
LABEL_221:
        DWORD1(v98[1]) = v22;
LABEL_222:
        v8 = xmmword_29D2F1BF0;
        goto LABEL_319;
      case 0xD7:
        v39 = 2;
LABEL_93:
        DWORD1(v98[1]) = v39;
LABEL_94:
        v8 = xmmword_29D2F1BE0;
        goto LABEL_319;
      case 0xD8:
        *&v98[1] = 0x200000002;
        break;
      case 0xD9:
        *&v98[1] = 0x200000002;
LABEL_299:
        *(v98 + 4) = 1;
        break;
      case 0xDA:
        *&v98[1] = 0x200000002;
LABEL_302:
        *(v98 + 4) = 2;
        break;
      case 0xDB:
        v13 = 0x200000002;
LABEL_254:
        *&v98[1] = v13;
LABEL_255:
        DWORD2(v98[0]) = 1;
        break;
      case 0xDC:
        v56 = 0x200000002;
LABEL_258:
        *&v98[1] = v56;
LABEL_259:
        *(v98 + 4) = 0x100000001;
        break;
      case 0xDD:
        v52 = 0x200000002;
LABEL_175:
        *&v98[1] = v52;
LABEL_216:
        *(v98 + 4) = 0x100000002;
        break;
      case 0xDE:
        v41 = 0x200000002;
LABEL_263:
        *&v98[1] = v41;
LABEL_264:
        DWORD2(v98[0]) = 2;
        break;
      case 0xDF:
        v58 = 0x200000002;
LABEL_270:
        *&v98[1] = v58;
LABEL_314:
        *(v98 + 4) = 0x200000001;
        break;
      case 0xE0:
        v35 = 0x200000002;
LABEL_244:
        *&v98[1] = v35;
        *(v98 + 4) = v35;
        break;
      case 0xE1:
        v65 = 2;
LABEL_162:
        DWORD1(v98[1]) = v65;
LABEL_163:
        *(v98 + 12) = 0x200000001;
        break;
      case 0xE2:
        DWORD1(v98[1]) = 2;
LABEL_100:
        v7 = 0x200000001;
        goto LABEL_150;
      case 0xE3:
        v34 = 2;
LABEL_284:
        DWORD1(v98[1]) = v34;
        v69 = 0x200000001;
        goto LABEL_285;
      case 0xE4:
        *(v98 + 8) = xmmword_29D2F1B90;
        break;
      case 0xE5:
        v67 = 2;
LABEL_177:
        DWORD1(v98[1]) = v67;
LABEL_178:
        v8 = xmmword_29D2F1BD0;
        goto LABEL_319;
      case 0xE6:
        v33 = 2;
LABEL_128:
        DWORD1(v98[1]) = v33;
LABEL_129:
        v8 = xmmword_29D2F1BC0;
        goto LABEL_319;
      case 0xE7:
        *(v98 + 8) = xmmword_29D2F1B80;
        break;
      case 0xE8:
        v24 = 2;
LABEL_183:
        DWORD1(v98[1]) = v24;
LABEL_184:
        v8 = xmmword_29D2F1BB0;
        goto LABEL_319;
      case 0xE9:
        v61 = 2;
LABEL_274:
        DWORD1(v98[1]) = v61;
LABEL_275:
        v8 = xmmword_29D2F1BA0;
        goto LABEL_319;
      case 0xEA:
        v70 = 2;
LABEL_277:
        DWORD1(v98[1]) = v70;
LABEL_278:
        *(v98 + 12) = 0x200000002;
        break;
      case 0xEB:
        DWORD1(v98[1]) = 2;
        v7 = 0x200000002;
LABEL_150:
        *(v98 + 12) = v7;
LABEL_151:
        DWORD1(v98[0]) = 1;
        break;
      case 0xEC:
        v34 = 2;
LABEL_180:
        DWORD1(v98[1]) = v34;
        v69 = 0x200000002;
LABEL_285:
        *(v98 + 12) = v69;
        DWORD1(v98[0]) = v34;
        break;
      case 0xED:
        *(v98 + 8) = xmmword_29D2F1B70;
        break;
      case 0xEE:
        v57 = 2;
LABEL_197:
        DWORD1(v98[1]) = v57;
LABEL_198:
        v8 = xmmword_29D2F1B90;
        goto LABEL_319;
      case 0xEF:
        v20 = 2;
LABEL_146:
        DWORD1(v98[1]) = v20;
LABEL_147:
        v8 = xmmword_29D2F1B80;
        goto LABEL_319;
      case 0xF0:
        *&v62 = 0x200000002;
        *(&v62 + 1) = 0x200000002;
        *(v98 + 8) = v62;
        break;
      case 0xF1:
        v53 = 2;
LABEL_153:
        DWORD1(v98[1]) = v53;
LABEL_154:
        v8 = xmmword_29D2F1B70;
        goto LABEL_319;
      case 0xF2:
        v55 = 2;
LABEL_156:
        DWORD1(v98[1]) = v55;
LABEL_157:
        *&v8 = 0x200000002;
        *(&v8 + 1) = 0x200000002;
LABEL_319:
        *(v98 + 4) = v8;
        break;
      default:
        break;
    }

    v78 = WORD5(v106) >> 10;
    BYTE8(v98[1]) = byte_29D2F48C8[(v78 & 0x38 | (WORD3(v106) >> 13) | HIBYTE(WORD6(v106)) & 0xC0u) ^ 0x80];
    v79 = (WORD5(v106) >> 5) & 4 | (WORD4(v106) >> 13) & 3;
    if (v79 <= 4)
    {
      LODWORD(v102) = dword_29D2F49E4[v79];
    }

    v80 = WORD3(v106) >> 5;
    switch((4 * WORD5(v106)) & 8 | (WORD3(v106) >> 9) & 4 | v80 & 3)
    {
      case 1:
        *v105 = 2;
        *&v105[16] = 0;
        v81 = BYTE4(v99) & 0xF0 | 2;
        goto LABEL_340;
      case 2:
        *v105 = 2;
        *&v105[16] = 0;
        v81 = BYTE4(v99) & 0xF0 | 4;
        goto LABEL_340;
      case 3:
        *v105 = 2;
        *&v105[16] = 0;
        v81 = BYTE4(v99) & 0xF0 | 8;
        goto LABEL_340;
      case 4:
        *v105 = 2;
        *&v105[16] = 0;
        v82 = BYTE4(v99) & 0xF0;
        v83 = 9;
        goto LABEL_339;
      case 5:
        *v105 = 2;
        *&v105[16] = 0;
        v81 = BYTE4(v99) & 0xF0 | 3;
        goto LABEL_340;
      case 6:
        *v105 = 2;
        *&v105[16] = 0;
        v81 = BYTE4(v99) & 0xF0 | 7;
        goto LABEL_340;
      case 7:
        *v105 = 2;
        *&v105[16] = 0;
        v81 = BYTE4(v99) | 0xF;
        goto LABEL_340;
      case 8:
        *v105 = 2;
        *&v105[16] = 0;
        v82 = BYTE4(v99) & 0xF0;
        v83 = 5;
        goto LABEL_339;
      case 9:
        *v105 = 2;
        *&v105[16] = 0;
        v81 = BYTE4(v99) & 0xF0 | 6;
        goto LABEL_340;
      case 0xA:
        *v105 = 2;
        *&v105[16] = 0;
        v82 = BYTE4(v99) & 0xF0;
        v83 = 10;
        goto LABEL_339;
      case 0xB:
        *v105 = 2;
        *&v105[16] = 0;
        v81 = BYTE4(v99) & 0xF0 | 0xC;
        goto LABEL_340;
      case 0xC:
        *v105 = 2;
        *&v105[16] = 0;
        v82 = BYTE4(v99) & 0xF0;
        v83 = 13;
        goto LABEL_339;
      case 0xD:
        *v105 = 2;
        *&v105[16] = 0;
        v82 = BYTE4(v99) & 0xF0;
        v83 = 11;
LABEL_339:
        v81 = v82 | v83;
        goto LABEL_340;
      case 0xE:
        *v105 = 2;
        *&v105[16] = 0;
        v81 = BYTE4(v99) & 0xF0 | 0xE;
        goto LABEL_340;
      case 0xF:
        v105[8] &= ~1u;
        *v105 = 0;
        *&v105[12] = 8;
        BYTE4(v99) &= 0xF0u;
        v84 = v106;
        v85 = WORD2(v106);
        v86 = v106 >> 3;
        goto LABEL_353;
      default:
        *v105 = 2;
        *&v105[16] = 0;
        v81 = BYTE4(v99) & 0xF0 | 1;
LABEL_340:
        BYTE4(v99) = v81;
        v84 = v106;
        v86 = v106 >> 3;
        v85 = WORD2(v106);
        WORD4(v104) |= (WORD1(v106) >> 1) & 0x60 | v86 & 0x1E | (((WORD2(v106) >> 2) & 1) << 8) | (WORD3(v106) >> 2) & 1 | v80 & 0x80;
        v105[8] |= (BYTE2(v106) & 0x20) != 0;
        v87 = (WORD4(v106) >> 2) & 4 | (WORD3(v106) >> 3) & 3;
        if (v87 > 3)
        {
          if (v87 > 5)
          {
            if (v87 != 6)
            {
              v87 = 7;
            }
          }

          else if (v87 != 4)
          {
            v87 = 5;
          }
        }

        else if (v87 > 1)
        {
          if (v87 != 2)
          {
            v87 = 3;
          }
        }

        else
        {
          if (!v87)
          {
            *&v105[12] = 0;
            goto LABEL_353;
          }

          v87 = 1;
        }

        *&v105[12] = v87;
LABEL_353:
        *&v105[4] = dword_29D2F27C0[v86 & 1 | (2 * ((WORD5(v106) >> 10) & 1))];
        if ((v85 & 0x20) != 0)
        {
          LODWORD(v103) = 2;
          WORD4(v102) |= (2 * v85) & 0x80 | (((v85 >> 4) & 1) << 8) | (v85 >> 8) & 0x7F;
          BYTE8(v103) |= v85 >> 15;
          LOBYTE(v104) = v104 | ((v85 & 0x80) >> 7);
        }

        else if ((v85 & 0x40) != 0)
        {
          LODWORD(v103) = 3;
          LOBYTE(v104) = v104 & 0xFE;
          WORD4(v102) |= v85 & 0x80 | (16 * v85) & 0x100 | (v85 >> 8) & 0x7F;
          BYTE8(v103) |= v85 >> 15;
        }

        else
        {
          LODWORD(v103) = 1;
          BYTE8(v103) &= ~1u;
          LOBYTE(v104) = v104 & 0xFE;
          switch((v85 >> 8) & 0xF)
          {
            case 1u:
              v88 = WORD4(v102) | 1;
              goto LABEL_373;
            case 2u:
              v88 = WORD4(v102) | 2;
              goto LABEL_373;
            case 3u:
              v88 = WORD4(v102) | 3;
              goto LABEL_373;
            case 4u:
              v88 = WORD4(v102) | 4;
              goto LABEL_373;
            case 5u:
              v88 = WORD4(v102) | 5;
              goto LABEL_373;
            case 6u:
              v88 = WORD4(v102) | 6;
              goto LABEL_373;
            case 7u:
              v88 = WORD4(v102) | 7;
              goto LABEL_373;
            case 8u:
              v88 = WORD4(v102) | 8;
              goto LABEL_373;
            case 9u:
              v88 = WORD4(v102) | 9;
              goto LABEL_373;
            case 0xAu:
              v88 = WORD4(v102) | 0xA;
              goto LABEL_373;
            case 0xBu:
              v88 = WORD4(v102) | 0xB;
              goto LABEL_373;
            case 0xCu:
              v88 = WORD4(v102) | 0xC;
              goto LABEL_373;
            case 0xDu:
              v88 = WORD4(v102) | 0xD;
              goto LABEL_373;
            case 0xEu:
              v88 = WORD4(v102) | 0xE;
              goto LABEL_373;
            case 0xFu:
              break;
            default:
              v88 = WORD4(v102) | 0xF;
LABEL_373:
              WORD4(v102) = v88;
              break;
          }
        }

        v89 = (WORD3(v106) >> 7) & 3;
        if (v89 > 1)
        {
          if (v89 == 2)
          {
            LOBYTE(v101[0]) &= ~1u;
            LODWORD(v100) = 1;
            BYTE8(v100) &= ~1u;
            v90 = (WORD5(v106) << 6) & 0x100;
            v91 = (v84 >> 8) & 0xFFFFFDFF | (((WORD1(v106) >> 3) & 1) << 9) | WORD4(v99);
            goto LABEL_379;
          }

          v92 = LOBYTE(v101[0]) | 1;
        }

        else
        {
          if (!v89)
          {
            LOBYTE(v101[0]) &= ~1u;
            LODWORD(v100) = 3;
            BYTE8(v100) &= ~1u;
            v90 = (WORD5(v106) << 6) & 0x100;
            v91 = WORD4(v99) | (v84 >> 8);
LABEL_379:
            WORD4(v99) = v91 | v90;
            goto LABEL_383;
          }

          v92 = v101[0] & 0xFE;
        }

        LOBYTE(v101[0]) = v92;
        LODWORD(v100) = 2;
        WORD4(v99) |= (v84 >> 8) | (WORD5(v106) << 6) & 0x100;
        BYTE8(v100) |= (BYTE2(v106) & 8) != 0;
LABEL_383:
        v93 = (WORD3(v106) >> 9) & 3;
        if (v93 > 1)
        {
          if (v93 == 2)
          {
            BYTE12(v101[1]) &= ~1u;
            BYTE4(v101[1]) &= ~1u;
            *(v101 + 12) = 0x100000001;
            DWORD2(v101[1]) = 8;
            WORD2(v101[0]) |= (32 * WORD1(v106)) & 0x200 | BYTE3(v106) & 0xFE | BYTE8(v106) & 1 | (((WORD5(v106) >> 4) & 1) << 8) | (WORD6(v106) << 9) & 0xFC00;
            goto LABEL_394;
          }

          v95 = BYTE12(v101[1]) | 1;
        }

        else
        {
          if (!v93)
          {
            BYTE12(v101[1]) &= ~1u;
            HIDWORD(v101[0]) = 3;
            BYTE4(v101[1]) &= ~1u;
            DWORD2(v101[1]) = 8;
            WORD2(v101[0]) |= BYTE8(v106) & 1 | (2 * (WORD1(v106) >> 9)) | (16 * WORD5(v106)) & 0x100;
            if ((WORD1(v106) & 0x100) == 0)
            {
              v94 = 2;
              goto LABEL_393;
            }

            goto LABEL_392;
          }

          v95 = BYTE12(v101[1]) & 0xFE;
        }

        BYTE12(v101[1]) = v95;
        v94 = 2;
        HIDWORD(v101[0]) = 2;
        DWORD2(v101[1]) = 8;
        WORD2(v101[0]) |= BYTE8(v106) & 1 | (2 * (WORD1(v106) >> 9)) | (16 * WORD5(v106)) & 0x100;
        BYTE4(v101[1]) |= (BYTE2(v106) & 0x10) != 0;
        if ((WORD1(v106) & 0x100) == 0)
        {
          goto LABEL_393;
        }

LABEL_392:
        v94 = 1;
LABEL_393:
        LODWORD(v101[1]) = v94;
LABEL_394:
        v96 = (WORD5(v106) >> 2) & 2 | (WORD4(v106) >> 3) & 1 | v78 & 4;
        if (v96 != 7 && ((0x5Fu >> v96) & 1) != 0)
        {
          *&v105[20] = dword_29D2F49C8[v96];
        }

        result = operator==(v98, a2);
        if (!result)
        {
          goto LABEL_399;
        }

        *this = v106;
        v97 = 1;
        break;
    }
  }

  *(this + 16) = v97;
  return result;
}

BOOL std::__tuple_less<2ul>::operator()[abi:nn200100]<std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>,std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>>(unsigned __int16 *a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  v4 = *(a1 + 1);
  v5 = v4 - 2;
  if ((v4 - 2) > 7)
  {
    v6 = 3;
  }

  else
  {
    v6 = dword_29D2F49F8[v5];
  }

  v7 = *(a3 + 1);
  v8 = v7 - 2;
  if ((v7 - 2) > 7)
  {
    v9 = 3;
  }

  else
  {
    v9 = dword_29D2F49F8[v8];
  }

  v10 = v4 - 1;
  if (v10 > 8)
  {
    v11 = 1;
  }

  else
  {
    v11 = dword_29D2F4A18[v10];
  }

  v12 = v7 - 1;
  if (v12 <= 8)
  {
    v13 = dword_29D2F4A18[v12];
    if (v6 >= v9)
    {
      goto LABEL_12;
    }

    return 1;
  }

  v13 = 1;
  if (v6 < v9)
  {
    return 1;
  }

LABEL_12:
  if (v9 >= v6)
  {
    v19 = *a1;
    v20 = *a3;
    if (v19 < v20)
    {
      return 1;
    }

    if (v20 >= v19)
    {
      if (v11 < v13)
      {
        return 1;
      }

      if (v13 >= v11 && *(a1 + 2) < *(a3 + 2))
      {
        return 1;
      }
    }
  }

  if (v8 > 7)
  {
    v14 = 3;
    if (v5 > 7)
    {
LABEL_15:
      v15 = 3;
      if (v12 > 8)
      {
        goto LABEL_16;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v14 = dword_29D2F49F8[v8];
    if (v5 > 7)
    {
      goto LABEL_15;
    }
  }

  v15 = dword_29D2F49F8[v5];
  if (v12 > 8)
  {
LABEL_16:
    v16 = 1;
    if (v10 > 8)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

LABEL_25:
  v16 = dword_29D2F4A18[v12];
  if (v10 > 8)
  {
LABEL_17:
    v17 = 1;
    if (v14 < v15)
    {
      return 0;
    }

    goto LABEL_27;
  }

LABEL_26:
  v17 = dword_29D2F4A18[v10];
  if (v14 < v15)
  {
    return 0;
  }

LABEL_27:
  if (v15 >= v14)
  {
    v23 = *a3;
    v24 = *a1;
    if (v23 < v24 || v24 >= v23 && (v16 < v17 || v17 >= v16 && *(a3 + 2) < *(a1 + 2)))
    {
      return 0;
    }
  }

  v21 = *(a2 + 1);
  if ((v21 - 2) > 7)
  {
    v22 = 3;
  }

  else
  {
    v22 = dword_29D2F49F8[v21 - 2];
  }

  v25 = *(a4 + 1);
  if ((v25 - 2) > 7)
  {
    v26 = 3;
  }

  else
  {
    v26 = dword_29D2F49F8[v25 - 2];
  }

  v27 = v21 - 1;
  if (v27 > 8)
  {
    v28 = 1;
  }

  else
  {
    v28 = dword_29D2F4A18[v27];
  }

  v29 = v25 - 1;
  if (v29 <= 8)
  {
    v30 = dword_29D2F4A18[v29];
    if (v22 >= v26)
    {
      goto LABEL_48;
    }

    return 1;
  }

  v30 = 1;
  if (v22 < v26)
  {
    return 1;
  }

LABEL_48:
  if (v26 < v22)
  {
    return 0;
  }

  v31 = *a2;
  v32 = *a4;
  if (v31 < v32)
  {
    return 1;
  }

  if (v32 < v31)
  {
    return 0;
  }

  if (v28 < v30)
  {
    return 1;
  }

  return v30 >= v28 && *(a2 + 2) < *(a4 + 2);
}

BOOL _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZN3AGX23ESLStateLoadEncoderGen2INS2_6HAL3007ClassesENS4_8EncodersEE10EslBuilder11finishRoundEvEUlRT_RT0_E_NS_16__deque_iteratorINS8_12InflightLoadEPSG_RSG_PSH_lLl64EEELi0EEEbT1_SL_SL_SB_(uint64_t a1, unsigned __int16 *a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5, unsigned __int16 *a6)
{
  v9 = std::__tuple_less<2ul>::operator()[abi:nn200100]<std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>,std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>>(a4 + 8, a2, a2 + 8, a4);
  result = std::__tuple_less<2ul>::operator()[abi:nn200100]<std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>,std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>>(a6 + 8, a4, a4 + 8, a6);
  if (v9)
  {
    if (result)
    {
      v12 = *(a2 + 2);
      v11 = *(a2 + 3);
      v14 = *a2;
      v13 = *(a2 + 1);
      v15 = *(a6 + 3);
      v17 = *a6;
      v16 = *(a6 + 1);
      *(a2 + 2) = *(a6 + 2);
      *(a2 + 3) = v15;
      *a2 = v17;
      *(a2 + 1) = v16;
    }

    else
    {
      v33 = *(a2 + 2);
      v32 = *(a2 + 3);
      v35 = *a2;
      v34 = *(a2 + 1);
      v36 = *(a4 + 3);
      v38 = *a4;
      v37 = *(a4 + 1);
      *(a2 + 2) = *(a4 + 2);
      *(a2 + 3) = v36;
      *a2 = v38;
      *(a2 + 1) = v37;
      *a4 = v35;
      *(a4 + 1) = v34;
      *(a4 + 2) = v33;
      *(a4 + 3) = v32;
      result = std::__tuple_less<2ul>::operator()[abi:nn200100]<std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>,std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>>(a6 + 8, a4, a4 + 8, a6);
      if (!result)
      {
        return result;
      }

      v12 = *(a4 + 2);
      v11 = *(a4 + 3);
      v14 = *a4;
      v13 = *(a4 + 1);
      v39 = *(a6 + 3);
      v41 = *a6;
      v40 = *(a6 + 1);
      *(a4 + 2) = *(a6 + 2);
      *(a4 + 3) = v39;
      *a4 = v41;
      *(a4 + 1) = v40;
    }

    *a6 = v14;
    *(a6 + 1) = v13;
    *(a6 + 2) = v12;
    *(a6 + 3) = v11;
  }

  else if (result)
  {
    v19 = *(a4 + 2);
    v18 = *(a4 + 3);
    v21 = *a4;
    v20 = *(a4 + 1);
    v22 = *(a6 + 3);
    v24 = *a6;
    v23 = *(a6 + 1);
    *(a4 + 2) = *(a6 + 2);
    *(a4 + 3) = v22;
    *a4 = v24;
    *(a4 + 1) = v23;
    *a6 = v21;
    *(a6 + 1) = v20;
    *(a6 + 2) = v19;
    *(a6 + 3) = v18;
    result = std::__tuple_less<2ul>::operator()[abi:nn200100]<std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>,std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>>(a4 + 8, a2, a2 + 8, a4);
    if (result)
    {
      v26 = *(a2 + 2);
      v25 = *(a2 + 3);
      v28 = *a2;
      v27 = *(a2 + 1);
      v29 = *(a4 + 3);
      v31 = *a4;
      v30 = *(a4 + 1);
      *(a2 + 2) = *(a4 + 2);
      *(a2 + 3) = v29;
      *a2 = v31;
      *(a2 + 1) = v30;
      *a4 = v28;
      *(a4 + 1) = v27;
      *(a4 + 2) = v26;
      *(a4 + 3) = v25;
    }
  }

  return result;
}

__n128 _ZNSt3__17__sort5B8nn200100INS_17_ClassicAlgPolicyERZN3AGX23ESLStateLoadEncoderGen2INS2_6HAL3007ClassesENS4_8EncodersEE10EslBuilder11finishRoundEvEUlRT_RT0_E_NS_16__deque_iteratorINS8_12InflightLoadEPSG_RSG_PSH_lLl64EEELi0EEEvT1_SL_SL_SL_SL_SB_(uint64_t a1, unsigned __int16 *a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5, unsigned __int16 *a6, uint64_t a7, unsigned __int16 *a8, uint64_t a9, unsigned __int16 *a10)
{
  _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZN3AGX23ESLStateLoadEncoderGen2INS2_6HAL3007ClassesENS4_8EncodersEE10EslBuilder11finishRoundEvEUlRT_RT0_E_NS_16__deque_iteratorINS8_12InflightLoadEPSG_RSG_PSH_lLl64EEELi0EEEbT1_SL_SL_SB_(a1, a2, a3, a4, a5, a6);
  if (std::__tuple_less<2ul>::operator()[abi:nn200100]<std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>,std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>>(a8 + 8, a6, a6 + 8, a8))
  {
    v15 = *(a6 + 2);
    v14 = *(a6 + 3);
    v17 = *a6;
    v16 = *(a6 + 1);
    v18 = *(a8 + 3);
    v20 = *a8;
    v19 = *(a8 + 1);
    *(a6 + 2) = *(a8 + 2);
    *(a6 + 3) = v18;
    *a6 = v20;
    *(a6 + 1) = v19;
    *a8 = v17;
    *(a8 + 1) = v16;
    *(a8 + 2) = v15;
    *(a8 + 3) = v14;
    if (std::__tuple_less<2ul>::operator()[abi:nn200100]<std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>,std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>>(a6 + 8, a4, a4 + 8, a6))
    {
      v22 = *(a4 + 2);
      v21 = *(a4 + 3);
      v24 = *a4;
      v23 = *(a4 + 1);
      v25 = *(a6 + 3);
      v27 = *a6;
      v26 = *(a6 + 1);
      *(a4 + 2) = *(a6 + 2);
      *(a4 + 3) = v25;
      *a4 = v27;
      *(a4 + 1) = v26;
      *a6 = v24;
      *(a6 + 1) = v23;
      *(a6 + 2) = v22;
      *(a6 + 3) = v21;
      if (std::__tuple_less<2ul>::operator()[abi:nn200100]<std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>,std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>>(a4 + 8, a2, a2 + 8, a4))
      {
        v29 = *(a2 + 2);
        v28 = *(a2 + 3);
        v31 = *a2;
        v30 = *(a2 + 1);
        v32 = *(a4 + 3);
        v34 = *a4;
        v33 = *(a4 + 1);
        *(a2 + 2) = *(a4 + 2);
        *(a2 + 3) = v32;
        *a2 = v34;
        *(a2 + 1) = v33;
        *a4 = v31;
        *(a4 + 1) = v30;
        *(a4 + 2) = v29;
        *(a4 + 3) = v28;
      }
    }
  }

  if (std::__tuple_less<2ul>::operator()[abi:nn200100]<std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>,std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>>(a10 + 8, a8, a8 + 8, a10))
  {
    v37 = *(a8 + 2);
    v36 = *(a8 + 3);
    v39 = *a8;
    v38 = *(a8 + 1);
    v40 = *(a10 + 3);
    v42 = *a10;
    v41 = *(a10 + 1);
    *(a8 + 2) = *(a10 + 2);
    *(a8 + 3) = v40;
    *a8 = v42;
    *(a8 + 1) = v41;
    *a10 = v39;
    *(a10 + 1) = v38;
    *(a10 + 2) = v37;
    *(a10 + 3) = v36;
    if (std::__tuple_less<2ul>::operator()[abi:nn200100]<std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>,std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>>(a8 + 8, a6, a6 + 8, a8))
    {
      v44 = *(a6 + 2);
      v43 = *(a6 + 3);
      v46 = *a6;
      v45 = *(a6 + 1);
      v47 = *(a8 + 3);
      v49 = *a8;
      v48 = *(a8 + 1);
      *(a6 + 2) = *(a8 + 2);
      *(a6 + 3) = v47;
      *a6 = v49;
      *(a6 + 1) = v48;
      *a8 = v46;
      *(a8 + 1) = v45;
      *(a8 + 2) = v44;
      *(a8 + 3) = v43;
      if (std::__tuple_less<2ul>::operator()[abi:nn200100]<std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>,std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>>(a6 + 8, a4, a4 + 8, a6))
      {
        v51 = *(a4 + 2);
        v50 = *(a4 + 3);
        v53 = *a4;
        v52 = *(a4 + 1);
        v54 = *(a6 + 3);
        v56 = *a6;
        v55 = *(a6 + 1);
        *(a4 + 2) = *(a6 + 2);
        *(a4 + 3) = v54;
        *a4 = v56;
        *(a4 + 1) = v55;
        *a6 = v53;
        *(a6 + 1) = v52;
        *(a6 + 2) = v51;
        *(a6 + 3) = v50;
        if (std::__tuple_less<2ul>::operator()[abi:nn200100]<std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>,std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>>(a4 + 8, a2, a2 + 8, a4))
        {
          v57 = *(a2 + 2);
          result = *(a2 + 3);
          v59 = *a2;
          v58 = *(a2 + 1);
          v60 = *(a4 + 3);
          v62 = *a4;
          v61 = *(a4 + 1);
          *(a2 + 2) = *(a4 + 2);
          *(a2 + 3) = v60;
          *a2 = v62;
          *(a2 + 1) = v61;
          *a4 = v59;
          *(a4 + 1) = v58;
          *(a4 + 2) = v57;
          *(a4 + 3) = result;
        }
      }
    }
  }

  return result;
}

BOOL _ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZN3AGX23ESLStateLoadEncoderGen2INS2_6HAL3007ClassesENS4_8EncodersEE10EslBuilder11finishRoundEvEUlRT_RT0_E_NS_16__deque_iteratorINS8_12InflightLoadEPSG_RSG_PSH_lLl64EEEEEbT1_SL_SB_(char *a1, __int128 *a2, char *a3, uint64_t a4)
{
  if (a4 == a2)
  {
    return 1;
  }

  v98 = v4;
  v99 = v5;
  v7 = a4;
  v9 = *a3;
  v10 = a2 - *a1;
  v11 = v10 >> 6;
  v12 = ((a4 - *a3) >> 6) + 8 * (a3 - a1) - (v10 >> 6);
  if (v12 > 2)
  {
    if (v12 == 3)
    {
      if (v11 < 0)
      {
        v35 = 62 - v11;
        LOBYTE(v11) = ~(62 - v11);
        v25 = &a1[-8 * (v35 >> 6)];
      }

      else
      {
        v25 = &a1[8 * (++v11 >> 6)];
      }

      if (v9 == a4)
      {
        v36 = (a3 - 8);
        v7 = *(a3 - 1) + 4096;
      }

      else
      {
        v36 = a3;
      }

      _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZN3AGX23ESLStateLoadEncoderGen2INS2_6HAL3007ClassesENS4_8EncodersEE10EslBuilder11finishRoundEvEUlRT_RT0_E_NS_16__deque_iteratorINS8_12InflightLoadEPSG_RSG_PSH_lLl64EEELi0EEEbT1_SL_SL_SB_(a1, a2, v25, (*v25 + ((v11 & 0x3F) << 6)), v36, (v7 - 64));
      return 1;
    }

    if (v12 != 4)
    {
      if (v12 != 5)
      {
        goto LABEL_17;
      }

      v21 = a3;
      if (v11 < 0)
      {
        v22 = &a1[-8 * ((62 - v11) >> 6)];
        v23 = (*v22 + ((~(62 - v11) & 0x3F) << 6));
        if (v10 != -64)
        {
          v37 = &a1[-8 * ((61 - v11) >> 6)];
          v38 = (*v37 + ((~(61 - v11) & 0x3F) << 6));
          if (v11 < 0xFFFFFFFFFFFFFFFELL)
          {
            v93 = 60 - v11;
            v40 = &a1[-8 * (v93 >> 6)];
            v41 = (*v40 + ((~v93 & 0x3F) << 6));
            if (v9 != v7)
            {
              goto LABEL_34;
            }

            goto LABEL_33;
          }

          v39 = 1;
LABEL_32:
          v40 = &a1[8 * (v39 >> 6)];
          v41 = (*v40 + ((v39 & 0x3F) << 6));
          if (v9 != v7)
          {
LABEL_34:
            _ZNSt3__17__sort5B8nn200100INS_17_ClassicAlgPolicyERZN3AGX23ESLStateLoadEncoderGen2INS2_6HAL3007ClassesENS4_8EncodersEE10EslBuilder11finishRoundEvEUlRT_RT0_E_NS_16__deque_iteratorINS8_12InflightLoadEPSG_RSG_PSH_lLl64EEELi0EEEvT1_SL_SL_SL_SL_SB_(a1, a2, v22, v23, v37, v38, v40, v41, v21, (v7 - 64));
            return 1;
          }

LABEL_33:
          v42 = *(v21 - 8);
          v21 -= 8;
          v7 = v42 + 4096;
          goto LABEL_34;
        }

        v24 = 1;
      }

      else
      {
        v22 = &a1[8 * ((v11 + 1) >> 6)];
        v23 = (*v22 + (((v11 + 1) & 0x3F) << 6));
        v24 = v11 + 2;
      }

      v37 = &a1[8 * (v24 >> 6)];
      v38 = (*v37 + ((v24 & 0x3F) << 6));
      v39 = v11 + 3;
      goto LABEL_32;
    }

    if (v11 < 0)
    {
      v30 = &a1[-8 * ((62 - v11) >> 6)];
      v31 = *v30 + ((~(62 - v11) & 0x3F) << 6);
      if (v10 != -64)
      {
        v92 = 61 - v11;
        v43 = &a1[-8 * (v92 >> 6)];
        v44 = *v43 + ((~v92 & 0x3F) << 6);
        if (v9 != a4)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }

      v32 = 1;
    }

    else
    {
      v30 = &a1[8 * ((v11 + 1) >> 6)];
      v31 = *v30 + (((v11 + 1) & 0x3F) << 6);
      v32 = v11 + 2;
    }

    v43 = &a1[8 * (v32 >> 6)];
    v44 = *v43 + ((v32 & 0x3F) << 6);
    if (v9 != a4)
    {
LABEL_39:
      v45 = (v7 - 64);
      _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZN3AGX23ESLStateLoadEncoderGen2INS2_6HAL3007ClassesENS4_8EncodersEE10EslBuilder11finishRoundEvEUlRT_RT0_E_NS_16__deque_iteratorINS8_12InflightLoadEPSG_RSG_PSH_lLl64EEELi0EEEbT1_SL_SL_SB_(a1, a2, v30, v31, v43, v44);
      if (std::__tuple_less<2ul>::operator()[abi:nn200100]<std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>,std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>>((v7 - 48), v44, (v44 + 16), (v7 - 64)))
      {
        v47 = *(v44 + 32);
        v46 = *(v44 + 48);
        v49 = *v44;
        v48 = *(v44 + 16);
        v50 = *(v7 - 16);
        v52 = *v45;
        v51 = *(v7 - 48);
        *(v44 + 32) = *(v7 - 32);
        *(v44 + 48) = v50;
        *v44 = v52;
        *(v44 + 16) = v51;
        *v45 = v49;
        *(v7 - 48) = v48;
        *(v7 - 32) = v47;
        *(v7 - 16) = v46;
        if (std::__tuple_less<2ul>::operator()[abi:nn200100]<std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>,std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>>((v44 + 16), v31, (v31 + 16), v44))
        {
          v53 = *v31;
          v54 = *(v31 + 16);
          v55 = *(v31 + 48);
          v96 = *(v31 + 32);
          v97 = v55;
          v94 = v53;
          v95 = v54;
          v56 = *v44;
          v57 = *(v44 + 16);
          v58 = *(v44 + 48);
          *(v31 + 32) = *(v44 + 32);
          *(v31 + 48) = v58;
          *v31 = v56;
          *(v31 + 16) = v57;
          v59 = v95;
          *v44 = v94;
          *(v44 + 16) = v59;
          v60 = v97;
          *(v44 + 32) = v96;
          *(v44 + 48) = v60;
          if (std::__tuple_less<2ul>::operator()[abi:nn200100]<std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>,std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>>((v31 + 16), a2, a2 + 8, v31))
          {
            v62 = a2[1];
            v94 = *a2;
            v61 = v94;
            v95 = v62;
            v64 = a2[3];
            v96 = a2[2];
            v63 = v96;
            v97 = v64;
            v66 = *(v31 + 32);
            v65 = *(v31 + 48);
            v67 = *(v31 + 16);
            *a2 = *v31;
            a2[1] = v67;
            a2[2] = v66;
            a2[3] = v65;
            *(v31 + 32) = v63;
            *(v31 + 48) = v64;
            *v31 = v61;
            *(v31 + 16) = v62;
          }
        }
      }

      return 1;
    }

LABEL_38:
    v7 = *(a3 - 1) + 4096;
    goto LABEL_39;
  }

  if (v12 < 2)
  {
    return 1;
  }

  if (v12 == 2)
  {
    if (v9 == a4)
    {
      v7 = *(a3 - 1) + 4096;
    }

    v13 = (v7 - 64);
    if (std::__tuple_less<2ul>::operator()[abi:nn200100]<std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>,std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>>((v7 - 48), a2, a2 + 8, (v7 - 64)))
    {
      v15 = a2[2];
      v14 = a2[3];
      v17 = *a2;
      v16 = a2[1];
      v18 = *(v7 - 16);
      v20 = *v13;
      v19 = *(v7 - 48);
      a2[2] = *(v7 - 32);
      a2[3] = v18;
      *a2 = v20;
      a2[1] = v19;
      *v13 = v17;
      *(v7 - 48) = v16;
      result = 1;
      *(v7 - 32) = v15;
      *(v7 - 16) = v14;
      return result;
    }

    return 1;
  }

LABEL_17:
  if (v11 <= -2)
  {
    v26 = &a1[-8 * ((61 - v11) >> 6)];
    v27 = *v26 + ((~(61 - v11) & 0x3F) << 6);
    v29 = 62 - v11;
    goto LABEL_23;
  }

  v26 = &a1[8 * ((v11 + 2) >> 6)];
  v27 = *v26 + (((v11 + 2) & 0x3F) << 6);
  v28 = v11 + 1;
  if (v11 == -1)
  {
    v29 = 63;
LABEL_23:
    v33 = &a1[-8 * (v29 >> 6)];
    v34 = (*v33 + ((~v29 & 0x3F) << 6));
    goto LABEL_44;
  }

  v33 = &a1[8 * (v28 >> 6)];
  v34 = (*v33 + ((v28 & 0x3F) << 6));
LABEL_44:
  _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZN3AGX23ESLStateLoadEncoderGen2INS2_6HAL3007ClassesENS4_8EncodersEE10EslBuilder11finishRoundEvEUlRT_RT0_E_NS_16__deque_iteratorINS8_12InflightLoadEPSG_RSG_PSH_lLl64EEELi0EEEbT1_SL_SL_SB_(a1, a2, v33, v34, v26, v27);
  v68 = (v27 - *v26) >> 6;
  if (v68 < 0)
  {
    v71 = 62 - v68;
    v69 = ~v71;
    v70 = &v26[-8 * (v71 >> 6)];
  }

  else
  {
    v69 = v68 + 1;
    v70 = &v26[8 * ((v68 + 1) >> 6)];
  }

  v72 = *v70;
  v73 = &(*v70)[32 * (v69 & 0x3F)];
  if (v73 == v7)
  {
    return 1;
  }

  v74 = 0;
  while (1)
  {
    v75 = v73;
    v76 = v70;
    if (std::__tuple_less<2ul>::operator()[abi:nn200100]<std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>,std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>>(v73 + 8, v27, (v27 + 16), v73))
    {
      break;
    }

LABEL_59:
    v73 = v75 + 32;
    v70 = v76;
    if ((v75 + 32) - v72 == 4096)
    {
      v70 = v76 + 1;
      v72 = v76[1];
      v73 = v72;
    }

    result = 1;
    v26 = v76;
    v27 = v75;
    if (v73 == v7)
    {
      return result;
    }
  }

  v77 = *v75;
  v78 = *(v75 + 1);
  v79 = *(v75 + 3);
  v96 = *(v75 + 2);
  v97 = v79;
  v94 = v77;
  v95 = v78;
  v80 = v75;
  do
  {
    v84 = v27;
    v85 = *v27;
    v86 = *(v27 + 16);
    v87 = *(v27 + 48);
    *(v80 + 2) = *(v27 + 32);
    *(v80 + 3) = v87;
    *v80 = v85;
    *(v80 + 1) = v86;
    if (v27 == a2)
    {
      break;
    }

    if (v27 == *v26)
    {
      v81 = *(v26 - 1);
      v26 -= 8;
      v82 = v81 + 4096;
    }

    else
    {
      v82 = v27;
    }

    v27 = v82 - 64;
    v83 = std::__tuple_less<2ul>::operator()[abi:nn200100]<std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>,std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>>(&v95, (v82 - 64), (v82 - 48), &v94);
    v80 = v84;
  }

  while (v83);
  v88 = v94;
  v89 = v95;
  v90 = v97;
  *(v84 + 2) = v96;
  *(v84 + 3) = v90;
  *v84 = v88;
  *(v84 + 1) = v89;
  if (++v74 != 8)
  {
    v72 = *v76;
    goto LABEL_59;
  }

  v91 = v75 + 32;
  if ((v75 + 32) - *v76 == 4096)
  {
    v91 = v76[1];
  }

  return v91 == v7;
}

void AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::loadImmediate(uint64_t a1, int a2, int a3, unint64_t a4, double a5, double a6, double a7, int8x16_t a8)
{
  v24 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v9 = a3;
    v11 = 2 * a2;
    do
    {
      v12 = *(a1 + 48);
      memset(v16, 0, sizeof(v16));
      v17 = 0;
      v18 = 0x300000069;
      *&v19[24] = 0;
      *&v19[28] = a4;
      *&v19[32] = -1;
      *v19 = xmmword_29D2F1D30;
      *&v19[16] = 0x800000000;
      *__src = 0u;
      v23 = 0u;
      v13 = AGXIotoInstruction_LDIMM::emit(v16, __src, 0.0, 0.0, a7, a8);
      std::vector<unsigned char>::__insert_with_size[abi:nn200100]<unsigned char const*,unsigned char const*>(v12, *(v12 + 8), __src, v13, v13 - __src);
      v14 = *(a1 + 48);
      v17 = 0;
      memset(v16, 0, sizeof(v16));
      *v19 = v11 & 0xFFFE;
      *&v19[4] = xmmword_29D2F1F20;
      *&v19[20] = xmmword_29D2F1F30;
      v20 = xmmword_29D2F1B60;
      v21 = 0xFFFFFFFF00000000;
      v18 = 0x100000023;
      *__src = 0u;
      v23 = 0u;
      v15 = AGXIotoInstruction_COPY::emit(v16, __src);
      std::vector<unsigned char>::__insert_with_size[abi:nn200100]<unsigned char const*,unsigned char const*>(v14, *(v14 + 8), __src, v15, v15 - __src);
      a4 >>= 32;
      v11 += 2;
      --v9;
    }

    while (v9);
  }
}

void AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::loadAbsolute(uint64_t a1, __int16 a2, unsigned int a3, unint64_t a4, char a5, __int16 a6, double a7, double a8, double a9, int8x16_t a10)
{
  v11 = a3;
  v60 = *MEMORY[0x29EDCA608];
  if (a3 <= 2)
  {
    v13 = 2;
  }

  else
  {
    v13 = a3;
  }

  v14 = *(a1 + 56);
  if (v13 + v14 >= 0x7F)
  {
    do
    {
      AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::finishRound(a1);
      v14 = *(a1 + 56);
    }

    while (v13 + v14 > 0x7E);
  }

  v15 = 2 * v14;
  v16 = *(a1 + 32);
  *(a1 + 56) = v14 + v13;
  v17 = (a1 + 32);
  if (v16)
  {
    v17 = (a1 + 32);
    do
    {
      v18 = v16[4];
      v19 = v18 >= a4;
      v20 = v18 < a4;
      if (v19)
      {
        v17 = v16;
      }

      v16 = v16[v20];
    }

    while (v16);
    if (v17 != (a1 + 32))
    {
      v21 = v17[4];
      if (a4 - v21 == (a4 - v21))
      {
        goto LABEL_20;
      }
    }
  }

  if (v17 == *(a1 + 24))
  {
    goto LABEL_21;
  }

  v22 = *v17;
  if (*v17)
  {
    do
    {
      v23 = v22;
      v22 = v22[1];
    }

    while (v22);
  }

  else
  {
    do
    {
      v23 = v17[2];
      v24 = *v23 == v17;
      v17 = v23;
    }

    while (v24);
  }

  v21 = v23[4];
  v17 = v23;
  if ((a4 - v21 + 0x8000) >> 16)
  {
LABEL_21:
    v30 = *(a1 + 48);
    v48 = 0;
    v50 = 0;
    v49 = 0u;
    v51 = 0x300000069;
    v55 = 0;
    v56 = a4;
    v57 = -1;
    v52 = v15;
    v53 = xmmword_29D2F19E0;
    v54 = 8;
    *__src = 0u;
    v59 = 0u;
    v31 = AGXIotoInstruction_LDIMM::emit(&v48, __src, 0.0, a8, a9, a10);
    std::vector<unsigned char>::__insert_with_size[abi:nn200100]<unsigned char const*,unsigned char const*>(v30, *(v30 + 8), __src, v31, v31 - __src);
    v32 = *(a1 + 48);
    v48 = 0;
    v49 = 0u;
    v50 = 0;
    v51 = 0x300000069;
    v55 = 0;
    v56 = HIDWORD(a4);
    v57 = -1;
    v52 = v15 + 2;
    v53 = xmmword_29D2F19E0;
    v54 = 8;
    *__src = 0u;
    v59 = 0u;
    v36 = AGXIotoInstruction_LDIMM::emit(&v48, __src, 0.0, v33, v34, v35);
    std::vector<unsigned char>::__insert_with_size[abi:nn200100]<unsigned char const*,unsigned char const*>(v32, *(v32 + 8), __src, v36, v36 - __src);
    v37 = *(a1 + 32);
    if (!v37)
    {
LABEL_27:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v38 = v37;
        v39 = v37[4];
        if (v39 <= a4)
        {
          break;
        }

        v37 = *v38;
        if (!*v38)
        {
          goto LABEL_27;
        }
      }

      if (v39 >= a4)
      {
        break;
      }

      v37 = v38[1];
      if (!v37)
      {
        goto LABEL_27;
      }
    }

    v26 = v38;
    LOWORD(v27) = 0;
    v25 = 0;
    v29 = 0;
    v26[5] = v15 | 0x400000000;
    *(v26 + 52) = 0;
    *(v26 + 12) = 8;
    v28 = 0x800000004;
    LOWORD(v26) = v15;
  }

  else
  {
LABEL_20:
    v25 = a4 - v21;
    LODWORD(v26) = *(v17 + 10);
    v27 = v26 >> 16;
    v28 = *(v17 + 44);
    v29 = *(v17 + 52);
  }

  v40 = *(a1 + 80);
  v41 = *(a1 + 72);
  v42 = 8 * (v40 - v41) - 1;
  if (v40 == v41)
  {
    v42 = 0;
  }

  v43 = *(a1 + 104) + *(a1 + 96);
  if (v42 == v43)
  {
    std::deque<AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad,std::allocator<AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad>>::__add_back_capacity((a1 + 64));
    v41 = *(a1 + 72);
    v43 = *(a1 + 104) + *(a1 + 96);
  }

  v44 = *(v41 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((v43 & 0x3F) << 6);
  *v44 = v15;
  *(v44 + 2) = 0;
  *(v44 + 4) = 0x100000003;
  *(v44 + 12) = 0;
  *(v44 + 16) = v26;
  *(v44 + 18) = v27;
  *(v44 + 20) = v28;
  *(v44 + 28) = v29;
  *(v44 + 32) = v25;
  *(v44 + 34) = 0;
  *(v44 + 35) = v11;
  *(v44 + 36) = 2 * a2;
  *(v44 + 40) = 0x800000001;
  *(v44 + 48) = 0;
  *(v44 + 52) = 0;
  *(v44 + 60) = a5;
  *(v44 + 62) = a6;
  ++*(a1 + 104);
}

double AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::loadFromGatherBuffer(uint64_t a1, __int16 a2, unsigned int a3, __int16 a4, char a5, __int16 a6)
{
  v9 = a3;
  if (a3 <= 2)
  {
    v12 = 2;
  }

  else
  {
    v12 = a3;
  }

  v13 = *(a1 + 56);
  if (v12 + v13 >= 0x7F)
  {
    do
    {
      AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::finishRound(a1);
      v13 = *(a1 + 56);
    }

    while (v12 + v13 > 0x7E);
  }

  *(a1 + 56) = v13 + v12;
  if ((*(a1 + 112) & 1) == 0)
  {
    v14 = *(a1 + 48);
    *(v14 + 272) = 1;
    *(v14 + 276) = *(v14 + 8) - *v14;
    v23 = 0;
    v22 = 0;
    v21 = 0u;
    v24 = xmmword_29D2F1F40;
    v25 = xmmword_29D2F1B60;
    v26 = 0;
    AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::appendInstruction<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::LoadImmediate32>(v14, &v21);
    v23 = 0;
    v22 = 0;
    v21 = 0u;
    v24 = xmmword_29D2F1F50;
    v25 = xmmword_29D2F1B60;
    v26 = 0;
    AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::appendInstruction<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::LoadImmediate32>(v14, &v21);
    *(a1 + 112) = 1;
  }

  v15 = *(a1 + 80);
  v16 = *(a1 + 72);
  v17 = 8 * (v15 - v16) - 1;
  if (v15 == v16)
  {
    v17 = 0;
  }

  v18 = *(a1 + 104) + *(a1 + 96);
  if (v17 == v18)
  {
    std::deque<AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad,std::allocator<AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad>>::__add_back_capacity((a1 + 64));
    v16 = *(a1 + 72);
    v18 = *(a1 + 104) + *(a1 + 96);
  }

  v19 = *(v16 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((v18 & 0x3F) << 6);
  *v19 = (2 * v13) | 0x300000000;
  *(v19 + 12) = 0;
  *(v19 + 8) = 1;
  *(v19 + 16) = 4;
  *(v19 + 20) = 0x800000004;
  *(v19 + 28) = 0;
  *(v19 + 32) = a4;
  *(v19 + 34) = 0;
  *(v19 + 35) = v9;
  *(v19 + 36) = 2 * a2;
  *&result = 0x800000001;
  *(v19 + 40) = 0x800000001;
  *(v19 + 48) = 0;
  *(v19 + 52) = 0;
  *(v19 + 60) = a5;
  *(v19 + 62) = a6;
  ++*(a1 + 104);
  return result;
}

double AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::loadFromUserBuffer(uint64_t a1, __int16 a2, unsigned int a3, unsigned int a4, unsigned int a5, char a6, __int16 a7)
{
  v9 = a3;
  if (a3 <= 2)
  {
    v12 = 2;
  }

  else
  {
    v12 = a3;
  }

  v13 = *(a1 + 56);
  if ((v12 + v13) >= 0x7F)
  {
    v14 = a4;
    v15 = a5;
    do
    {
      AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::finishRound(a1);
      v13 = *(a1 + 56);
    }

    while ((v12 + v13) > 0x7E);
    a5 = v15;
    a4 = v14;
  }

  *(a1 + 56) = v13 + v12;
  v28 = (2 * v13) | 0x400000000;
  v30 = 0;
  v29 = 8;
  AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::loadBufferPointer(v31, a1, &v28, a4, a5);
  v16 = *(a1 + 80);
  v17 = *(a1 + 72);
  v18 = 8 * (v16 - v17) - 1;
  v19 = 2 * v13;
  v20 = v31[0];
  v21 = v31[1];
  v22 = v32;
  v23 = v33;
  v24 = v34;
  if (v16 == v17)
  {
    v18 = 0;
  }

  v25 = *(a1 + 104) + *(a1 + 96);
  if (v18 == v25)
  {
    std::deque<AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad,std::allocator<AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad>>::__add_back_capacity((a1 + 64));
    v17 = *(a1 + 72);
    v25 = *(a1 + 104) + *(a1 + 96);
  }

  v26 = *(v17 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((v25 & 0x3F) << 6);
  *v26 = v19;
  *(v26 + 2) = 0;
  *(v26 + 4) = 0x100000003;
  *(v26 + 12) = 0;
  *(v26 + 16) = v20;
  *(v26 + 18) = v21;
  *(v26 + 20) = v22;
  *(v26 + 28) = v23;
  *(v26 + 32) = v24;
  *(v26 + 34) = 0;
  *(v26 + 35) = v9;
  *(v26 + 36) = 2 * a2;
  *&result = 0x800000001;
  *(v26 + 40) = 0x800000001;
  *(v26 + 48) = 0;
  *(v26 + 52) = 0;
  *(v26 + 60) = a6;
  *(v26 + 62) = a7;
  ++*(a1 + 104);
  return result;
}

__n128 AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::loadBufferPointer(uint64_t a1, uint64_t a2, unint64_t *a3, unsigned int a4, unsigned int a5)
{
  v6 = a3;
  if (HIWORD(a4))
  {
    AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::addBufferPointerLoad(*(a2 + 48), *a3, a3[1], a4, a5);
    v9 = 0;
  }

  else
  {
    v9 = a4 ^ 0x8000;
    v10 = *(a2 + 8);
    if (!v10)
    {
      goto LABEL_10;
    }

    v11 = a2 + 8;
    do
    {
      v12 = *(v10 + 28);
      v13 = v12 >= a5;
      v14 = v12 < a5;
      if (v13)
      {
        v11 = v10;
      }

      v10 = *(v10 + 8 * v14);
    }

    while (v10);
    if (v11 != a2 + 8 && *(v11 + 28) <= a5)
    {
      v6 = (v11 + 32);
    }

    else
    {
LABEL_10:
      AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::addBufferPointerLoad(*(a2 + 48), *a3, a3[1], 0x8000u, a5);
      v15 = *(a2 + 8);
      if (!v15)
      {
LABEL_16:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v16 = v15;
          v17 = *(v15 + 28);
          if (v17 <= a5)
          {
            break;
          }

          v15 = *v16;
          if (!*v16)
          {
            goto LABEL_16;
          }
        }

        if (v17 >= a5)
        {
          break;
        }

        v15 = v16[1];
        if (!v15)
        {
          goto LABEL_16;
        }
      }

      v18 = *v6;
      *(v16 + 37) = *(v6 + 5);
      v16[4] = v18;
    }
  }

  result = *v6;
  *a1 = *v6;
  *(a1 + 16) = v9;
  return result;
}

double AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::loadFromABIBuffer(uint64_t a1, __int16 a2, unsigned int a3, __int16 a4, int a5, char a6, __int16 a7)
{
  v11 = a3;
  if (a3 <= 2)
  {
    v14 = 2;
  }

  else
  {
    v14 = a3;
  }

  v15 = *(a1 + 56);
  if (v14 + v15 >= 0x7F)
  {
    do
    {
      AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::finishRound(a1);
      v15 = *(a1 + 56);
    }

    while (v14 + v15 > 0x7E);
  }

  *(a1 + 56) = v15 + v14;
  v16 = 0x400000004;
  if (a5 > 11)
  {
    switch(a5)
    {
      case 12:
        v16 = 0x400000018;
        break;
      case 14:
        v16 = 0x40000001CLL;
        break;
      case 16:
        v16 = 0x400000020;
        break;
    }
  }

  else
  {
    switch(a5)
    {
      case 4:
        v16 = 0x400000008;
        *(a1 + 113) = 0;
        break;
      case 6:
        v16 = 0x40000000CLL;
        break;
      case 8:
        v16 = 0x400000010;
        break;
    }
  }

  v17 = *(a1 + 80);
  v18 = *(a1 + 72);
  v19 = 8 * (v17 - v18) - 1;
  if (v17 == v18)
  {
    v19 = 0;
  }

  v20 = *(a1 + 104) + *(a1 + 96);
  if (v19 == v20)
  {
    std::deque<AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad,std::allocator<AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad>>::__add_back_capacity((a1 + 64));
    v18 = *(a1 + 72);
    v20 = *(a1 + 104) + *(a1 + 96);
  }

  v21 = *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((v20 & 0x3F) << 6);
  *v21 = (2 * v15) | 0x300000000;
  *(v21 + 12) = 0;
  *(v21 + 8) = 1;
  *(v21 + 16) = v16;
  *(v21 + 28) = 0;
  *(v21 + 24) = 8;
  *(v21 + 32) = a4;
  *(v21 + 34) = 0;
  *(v21 + 35) = v11;
  *(v21 + 36) = 2 * a2;
  *&result = 0x800000001;
  *(v21 + 40) = 0x800000001;
  *(v21 + 48) = 0;
  *(v21 + 52) = 0;
  *(v21 + 60) = a6;
  *(v21 + 62) = a7;
  ++*(a1 + 104);
  return result;
}

double AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::loadFromIndirectBuffer(uint64_t a1, __int16 a2, unsigned int a3, __int16 a4, int a5, int a6, char a7, __int16 a8)
{
  v12 = a3;
  if (a3 <= 2)
  {
    v15 = 2;
  }

  else
  {
    v15 = a3;
  }

  v16 = *(a1 + 56);
  if (v15 + v16 >= 0x7F)
  {
    do
    {
      AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::finishRound(a1);
      v16 = *(a1 + 56);
    }

    while (v15 + v16 > 0x7E);
  }

  v17 = 0;
  *(a1 + 56) = v16 + v15;
  HIDWORD(v19) = a6 - 2;
  LODWORD(v19) = a6 - 2;
  v18 = v19 >> 1;
  v20 = 3;
  if (v18 <= 1)
  {
    if (v18)
    {
      if (v18 == 1)
      {
        *(a1 + 113) = 0;
        v20 = 4;
        v17 = 8;
      }
    }

    else
    {
      v17 = 4;
      v20 = 4;
    }
  }

  else
  {
    switch(v18)
    {
      case 2:
        v20 = 4;
        v17 = 12;
        break;
      case 3:
        v20 = 4;
        v17 = 16;
        break;
      case 7:
        v20 = 4;
        v17 = 32;
        break;
    }
  }

  v21 = *(a1 + 80);
  v22 = *(a1 + 72);
  v23 = 8 * (v21 - v22) - 1;
  if (v21 == v22)
  {
    v23 = 0;
  }

  v24 = *(a1 + 104) + *(a1 + 96);
  if (v23 == v24)
  {
    std::deque<AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad,std::allocator<AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad>>::__add_back_capacity((a1 + 64));
    v22 = *(a1 + 72);
    v24 = *(a1 + 104) + *(a1 + 96);
  }

  v25 = *(v22 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((v24 & 0x3F) << 6);
  *v25 = (2 * v16) | 0x300000000;
  *(v25 + 12) = 0;
  *(v25 + 8) = 1;
  *(v25 + 16) = v17;
  *(v25 + 18) = 0;
  *(v25 + 20) = v20;
  *(v25 + 24) = 8;
  *(v25 + 28) = 0;
  *(v25 + 32) = a4;
  *(v25 + 34) = 0;
  *(v25 + 35) = v12;
  *(v25 + 36) = 2 * a2;
  *&result = 0x800000001;
  *(v25 + 40) = 0x800000001;
  *(v25 + 48) = 0;
  *(v25 + 52) = 1;
  *(v25 + 56) = a5;
  *(v25 + 60) = a7;
  *(v25 + 62) = a8;
  ++*(a1 + 104);
  return result;
}

double AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::loadFromIndirectUserBuffer(uint64_t a1, __int16 a2, unsigned int a3, unsigned int a4, int a5, unsigned int a6, char a7, __int16 a8)
{
  v11 = a3;
  if (a3 <= 2)
  {
    v14 = 2;
  }

  else
  {
    v14 = a3;
  }

  v15 = *(a1 + 56);
  if ((v14 + v15) >= 0x7F)
  {
    v16 = a4;
    do
    {
      AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::finishRound(a1);
      v15 = *(a1 + 56);
    }

    while ((v14 + v15) > 0x7E);
    a4 = v16;
  }

  *(a1 + 56) = v15 + v14;
  v30 = (2 * v15) | 0x400000000;
  v32 = 0;
  v31 = 8;
  AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::loadBufferPointer(v33, a1, &v30, a4, a6);
  v17 = *(a1 + 80);
  v18 = *(a1 + 72);
  v19 = 8 * (v17 - v18) - 1;
  v20 = 2 * v15;
  v21 = v33[0];
  v22 = v33[1];
  v23 = v34;
  v24 = v35;
  v25 = v36;
  if (v17 == v18)
  {
    v19 = 0;
  }

  v26 = *(a1 + 104) + *(a1 + 96);
  if (v19 == v26)
  {
    std::deque<AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad,std::allocator<AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad>>::__add_back_capacity((a1 + 64));
    v18 = *(a1 + 72);
    v26 = *(a1 + 104) + *(a1 + 96);
  }

  v27 = *(v18 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((v26 & 0x3F) << 6);
  *v27 = v20;
  *(v27 + 2) = 0;
  *(v27 + 4) = 0x100000003;
  *(v27 + 12) = 0;
  *(v27 + 16) = v21;
  *(v27 + 18) = v22;
  *(v27 + 20) = v23;
  *(v27 + 28) = v24;
  *(v27 + 32) = v25;
  *(v27 + 34) = 0;
  *(v27 + 35) = v11;
  *(v27 + 36) = 2 * a2;
  *&result = 0x800000001;
  *(v27 + 40) = 0x800000001;
  *(v27 + 48) = 0;
  *(v27 + 52) = 1;
  *(v27 + 56) = a5;
  *(v27 + 60) = a7;
  *(v27 + 62) = a8;
  ++*(a1 + 104);
  return result;
}

double AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::loadFromSCS(uint64_t a1, __int16 a2, unsigned int a3, __int16 a4, char a5, __int16 a6)
{
  v9 = a3;
  v37 = *MEMORY[0x29EDCA608];
  if (a3 <= 2)
  {
    v12 = 2;
  }

  else
  {
    v12 = a3;
  }

  v13 = *(a1 + 56);
  if (v12 + v13 >= 0x7F)
  {
    do
    {
      AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::finishRound(a1);
      v13 = *(a1 + 56);
    }

    while (v12 + v13 > 0x7E);
  }

  *(a1 + 56) = v13 + v12;
  if ((*(a1 + 113) & 1) == 0)
  {
    v26 = 0x1000000;
    SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(&v26, 1);
    v15 = *(a1 + 48);
    v27 = 0u;
    v26 = 0;
    v28 = 0;
    v29 = 0x300000069;
    v32 = 0;
    v33 = SectionEnd;
    v34 = -1;
    v30 = xmmword_29D2F18E0;
    v31 = 0x800000000;
    *__src = 0u;
    v36 = 0u;
    v19 = AGXIotoInstruction_LDIMM::emit(&v26, __src, 0.0, v16, v17, v18);
    std::vector<unsigned char>::__insert_with_size[abi:nn200100]<unsigned char const*,unsigned char const*>(v15, *(v15 + 8), __src, v19, v19 - __src);
    *(a1 + 113) = 1;
  }

  v20 = *(a1 + 80);
  v21 = *(a1 + 72);
  v22 = 8 * (v20 - v21) - 1;
  if (v20 == v21)
  {
    v22 = 0;
  }

  v23 = *(a1 + 104) + *(a1 + 96);
  if (v22 == v23)
  {
    std::deque<AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad,std::allocator<AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad>>::__add_back_capacity((a1 + 64));
    v21 = *(a1 + 72);
    v23 = *(a1 + 104) + *(a1 + 96);
  }

  v24 = *(v21 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((v23 & 0x3F) << 6);
  *v24 = (2 * v13) | 0x300000000;
  *(v24 + 12) = 0;
  *(v24 + 8) = 1;
  *(v24 + 16) = 8;
  *(v24 + 20) = 0x800000003;
  *(v24 + 28) = 0;
  *(v24 + 32) = a4;
  *(v24 + 34) = 1;
  *(v24 + 35) = v9;
  *(v24 + 36) = 2 * a2;
  *&result = 0x800000001;
  *(v24 + 40) = 0x800000001;
  *(v24 + 48) = 0;
  *(v24 + 52) = 0;
  *(v24 + 60) = a5;
  *(v24 + 62) = a6;
  ++*(a1 + 104);
  return result;
}

double AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::loadFromIndirectSCS(uint64_t a1, __int16 a2, unsigned int a3, __int16 a4, int a5, char a6, __int16 a7)
{
  v11 = a3;
  v39 = *MEMORY[0x29EDCA608];
  if (a3 <= 2)
  {
    v14 = 2;
  }

  else
  {
    v14 = a3;
  }

  v15 = *(a1 + 56);
  if (v14 + v15 >= 0x7F)
  {
    do
    {
      AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::finishRound(a1);
      v15 = *(a1 + 56);
    }

    while (v14 + v15 > 0x7E);
  }

  *(a1 + 56) = v15 + v14;
  if ((*(a1 + 113) & 1) == 0)
  {
    v28 = 0x1000000;
    SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(&v28, 1);
    v17 = *(a1 + 48);
    v29 = 0u;
    v28 = 0;
    v30 = 0;
    v31 = 0x300000069;
    v34 = 0;
    v35 = SectionEnd;
    v36 = -1;
    v32 = xmmword_29D2F18E0;
    v33 = 0x800000000;
    *__src = 0u;
    v38 = 0u;
    v21 = AGXIotoInstruction_LDIMM::emit(&v28, __src, 0.0, v18, v19, v20);
    std::vector<unsigned char>::__insert_with_size[abi:nn200100]<unsigned char const*,unsigned char const*>(v17, *(v17 + 8), __src, v21, v21 - __src);
    *(a1 + 113) = 1;
  }

  v22 = *(a1 + 80);
  v23 = *(a1 + 72);
  v24 = 8 * (v22 - v23) - 1;
  if (v22 == v23)
  {
    v24 = 0;
  }

  v25 = *(a1 + 104) + *(a1 + 96);
  if (v24 == v25)
  {
    std::deque<AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad,std::allocator<AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad>>::__add_back_capacity((a1 + 64));
    v23 = *(a1 + 72);
    v25 = *(a1 + 104) + *(a1 + 96);
  }

  v26 = *(v23 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((v25 & 0x3F) << 6);
  *v26 = (2 * v15) | 0x300000000;
  *(v26 + 12) = 0;
  *(v26 + 8) = 1;
  *(v26 + 16) = 8;
  *(v26 + 20) = 0x800000003;
  *(v26 + 28) = 0;
  *(v26 + 32) = a4;
  *(v26 + 34) = 1;
  *(v26 + 35) = v11;
  *(v26 + 36) = 2 * a2;
  *&result = 0x800000001;
  *(v26 + 40) = 0x800000001;
  *(v26 + 48) = 0;
  *(v26 + 52) = 1;
  *(v26 + 56) = a5;
  *(v26 + 60) = a6;
  *(v26 + 62) = a7;
  ++*(a1 + 104);
  return result;
}

void AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::loadABIBufferBase(uint64_t a1, __int16 a2, int a3)
{
  v19 = *MEMORY[0x29EDCA608];
  v4 = 2 * a2;
  v5 = (2 * (a2 & 0x7FFF)) | 0x100000000;
  v6 = v4 + 2;
  v7 = 4;
  if (a3 > 11)
  {
    if (a3 == 16)
    {
      v7 = 32;
    }

    if (a3 == 14)
    {
      v7 = 28;
    }

    if (a3 == 12)
    {
      v8 = 24;
    }

    else
    {
      v8 = v7;
    }
  }

  else if (a3 == 4)
  {
    *(a1 + 113) = 0;
    v8 = 8;
  }

  else
  {
    if (a3 == 8)
    {
      v7 = 16;
    }

    if (a3 == 6)
    {
      v8 = 12;
    }

    else
    {
      v8 = v7;
    }
  }

  v9 = v6 & 0xFFFE;
  v10 = *(a1 + 48);
  AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Copy::Copy(v14, v5, 8, v8 | 0x300000000, 8);
  if ((v16 - 3) <= 1)
  {
    v15 = 1;
  }

  __src = 0u;
  v18 = 0u;
  v11 = AGXIotoInstruction_COPY::emit(v14, &__src);
  std::vector<unsigned char>::__insert_with_size[abi:nn200100]<unsigned char const*,unsigned char const*>(v10, *(v10 + 8), &__src, v11, v11 - &__src);
  v12 = *(a1 + 48);
  AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Copy::Copy(v14, v9 | 0x100000000, 8, v8 | 0x300000002, 8);
  if ((v16 - 3) <= 1)
  {
    v15 = 1;
  }

  __src = 0u;
  v18 = 0u;
  v13 = AGXIotoInstruction_COPY::emit(v14, &__src);
  std::vector<unsigned char>::__insert_with_size[abi:nn200100]<unsigned char const*,unsigned char const*>(v12, *(v12 + 8), &__src, v13, v13 - &__src);
}

uint64_t AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Copy::Copy(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  *(result + 92) = -1;
  *result = 0;
  *(result + 24) = 0;
  *(result + 8) = 0u;
  *(result + 28) = 35;
  if ((HIDWORD(a2) - 2) > 7)
  {
    v6 = HIDWORD(a2) - 1;
    v5 = 3;
    if ((HIDWORD(a2) - 1) > 8)
    {
      v7 = 1;
      if (HIDWORD(a2) > 9)
      {
        goto LABEL_10;
      }

LABEL_7:
      if (((1 << SBYTE4(a2)) & 0x1C) != 0 || ((1 << SBYTE4(a2)) & 0xE0) != 0 || ((1 << SBYTE4(a2)) & 0x300) != 0)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v5 = dword_29D2F49F8[HIDWORD(a2) - 2];
    v6 = HIDWORD(a2) - 1;
  }

  v7 = dword_29D2F4A18[v6];
  if (HIDWORD(a2) <= 9)
  {
    goto LABEL_7;
  }

LABEL_10:
  if (HIDWORD(a2) >= 2)
  {
    LOWORD(a2) = 0;
  }

LABEL_12:
  *(result + 36) = a2;
  *(result + 40) = 0;
  *(result + 44) = v5;
  *(result + 48) = v7;
  *(result + 52) = 0;
  *(result + 56) = a3;
  *(result + 60) = 0;
  if ((HIDWORD(a4) - 2) > 7)
  {
    v9 = HIDWORD(a4) - 1;
    v8 = 3;
    if ((HIDWORD(a4) - 1) > 8)
    {
      v10 = 1;
      if (HIDWORD(a4) > 9)
      {
        goto LABEL_21;
      }

LABEL_18:
      if (((1 << SBYTE4(a4)) & 0x1C) != 0 || ((1 << SBYTE4(a4)) & 0xE0) != 0 || ((1 << SBYTE4(a4)) & 0x300) != 0)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v8 = dword_29D2F49F8[HIDWORD(a4) - 2];
    v9 = HIDWORD(a4) - 1;
  }

  v10 = dword_29D2F4A18[v9];
  if (HIDWORD(a4) <= 9)
  {
    goto LABEL_18;
  }

LABEL_21:
  if (HIDWORD(a4) >= 2)
  {
    LOWORD(a4) = 0;
  }

LABEL_23:
  *(result + 64) = a4;
  *(result + 72) = v8;
  *(result + 76) = v10;
  *(result + 80) = 0x800000000;
  *(result + 88) = BYTE4(a5);
  *(result + 89) = 0;
  *(result + 91) = 0;
  v11 = 0x201008040201uLL >> (8 * a5);
  if (a5 >= 6)
  {
    LOBYTE(v11) = 0;
  }

  *(result + 24) = v11;
  return result;
}

void AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::finish(uint64_t a1)
{
  v52 = *MEMORY[0x29EDCA608];
  *(a1 + 222) = 1;
  if (*(a1 + 216) == 20)
  {
    return;
  }

  v2 = *(a1 + 8) - *a1 + 16;
  if (*(a1 + 16) - *a1 < v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_53;
  }

  AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::LoadShader::emit((a1 + 48), *(a1 + 312), *a1 + *(a1 + 316));
  if (*(a1 + 216) == 1 || *(a1 + 220))
  {
    v6 = *(a1 + 8);
    v7 = v6 - *a1;
    v8 = v7 + 6;
    if (v7 > 0xFFFFFFFFFFFFFFF9)
    {
      v10 = *a1 + v8;
    }

    else
    {
      v9 = *(a1 + 16);
      if ((v9 - v6) < 6)
      {
        if ((v8 & 0x8000000000000000) == 0)
        {
          operator new();
        }

LABEL_53:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v10 = v6 + 6;
      *(v6 + 4) = 0;
      *v6 = 0;
    }

    *(a1 + 8) = v10;
    v11 = *a1;
    v12 = *(a1 + 220);
    memset(v45, 0, 32);
    *&v45[28] = 0x100000079;
    LODWORD(v46) = v12 & 0x3FF;
    AGXIotoInstruction_PIXREL_0::emit(v45, &v11[v7]);
    if (*(a1 + 216) == 1)
    {
      *(a1 + 318) = v7;
    }
  }

  v14 = *(a1 + 24);
  v13 = *(a1 + 32);
  v15 = v13 - v14;
  if (v13 == v14)
  {
    if (*(a1 + 288) == 0xFFFFFFFFLL)
    {
      memset(&v45[4], 0, 28);
      *v45 = 14;
      std::vector<unsigned char>::__insert_with_size[abi:nn200100]<unsigned char const*,unsigned char const*>(a1, *(a1 + 8), v45, &v45[4], 4);
    }

    else
    {
      v49 = -1;
      memset(v45, 0, 28);
      *&v45[28] = 0x300000069;
      v48 = 0x1000000000;
      v46 = xmmword_29D2F1D30;
      v47 = 0x800000000;
      *__src = 0u;
      v51 = 0u;
      v23 = AGXIotoInstruction_LDIMM::emit(v45, __src, 0.0, v3, v4, v5);
      std::vector<unsigned char>::__insert_with_size[abi:nn200100]<unsigned char const*,unsigned char const*>(a1, *(a1 + 8), __src, v23, v23 - __src);
      v24 = *(a1 + 8);
      *(a1 + 308) = v24 - *a1;
      v25 = *(a1 + 288);
      memset(v45, 0, 32);
      *(&v46 + 4) = v25 & 0xFFFFFFFFFFFFLL;
      *&v45[28] = 0x300000008;
      LODWORD(v46) = 1;
      *__src = 0u;
      v51 = 0u;
      v26 = AGXIotoInstruction_B_1::emit(v45, __src);
      std::vector<unsigned char>::__insert_with_size[abi:nn200100]<unsigned char const*,unsigned char const*>(a1, v24, __src, v26, v26 - __src);
    }

    return;
  }

  v17 = *a1;
  v16 = *(a1 + 8);
  v18 = &v16[-*a1];
  *(a1 + 304) = v18;
  if (v15 >= 1)
  {
    v19 = *(a1 + 16);
    if (v19 - v16 < v15)
    {
      v20 = &v18[v15];
      if (&v18[v15] < 0)
      {
        goto LABEL_53;
      }

      v21 = v19 - v17;
      if (2 * v21 > v20)
      {
        v20 = 2 * v21;
      }

      if (v21 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v22 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        operator new();
      }

      v27 = &v18[v15];
      if (v15 < 8)
      {
        v28 = v18;
        goto LABEL_45;
      }

      v28 = v18;
      if ((v16 - &v14[v17]) >= 0x20)
      {
        if (v15 < 0x20)
        {
          v29 = 0;
          goto LABEL_40;
        }

        v29 = v15 & 0x7FFFFFFFFFFFFFE0;
        v30 = (v14 + 16);
        v31 = v18 + 16;
        v32 = v15 & 0x7FFFFFFFFFFFFFE0;
        do
        {
          v33 = *v30;
          *(v31 - 1) = *(v30 - 1);
          *v31 = v33;
          v30 += 2;
          v31 += 2;
          v32 -= 32;
        }

        while (v32);
        if (v29 == v15)
        {
          goto LABEL_46;
        }

        if ((v15 & 0x18) != 0)
        {
LABEL_40:
          v34 = v15 & 0x7FFFFFFFFFFFFFF8;
          v28 = &v18[v15 & 0x7FFFFFFFFFFFFFF8];
          v35 = v29 - (v15 & 0x7FFFFFFFFFFFFFF8);
          v36 = &v14[v29];
          v37 = (&v16[v29] - v17);
          do
          {
            v38 = *v36++;
            *v37 = v38;
            v37 += 8;
            v35 += 8;
          }

          while (v35);
          if (v34 != v15)
          {
            v14 += v34;
            goto LABEL_45;
          }

LABEL_46:
          v40 = *(a1 + 8) - v16;
          memcpy(&v18[v15], v16, v40);
          v41 = &v27[v40];
          *(a1 + 8) = v16;
          v42 = *a1;
          v43 = &v18[*a1 - v16];
          memcpy(v43, *a1, &v16[-*a1]);
          *a1 = v43;
          *(a1 + 8) = v41;
          *(a1 + 16) = 0;
          if (v42)
          {
            operator delete(v42);
          }

          goto LABEL_48;
        }

        v14 += v29;
        v28 = &v18[v29];
      }

      do
      {
LABEL_45:
        v39 = *v14++;
        *v28++ = v39;
      }

      while (v28 != v27);
      goto LABEL_46;
    }

    memmove(v16, v14, v15);
    *(a1 + 8) = &v16[v15];
  }

LABEL_48:
  v44 = *(a1 + 24);
  *(a1 + 32) = v44;
  if (*(a1 + 40) != v44)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    if (v44)
    {

      operator delete(v44);
    }
  }
}

unsigned __int8 *AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::LoadShader::emit(unsigned __int8 *result, int a2, uint64_t a3)
{
  v659 = result;
  if (a2 == 1)
  {
    goto LABEL_472;
  }

  if (a2)
  {
    return result;
  }

  v3 = *(result + 38);
  v4 = *(result + 39);
  v5 = v3 == 0;
  v472 = *(result + 19) == 0;
  v6 = v4 == 10 && v3 == 0;
  v475 = v6;
  v7 = v3 == 1;
  v8 = v4 == 9 && v3 == 0;
  v599 = v8;
  v9 = v4 == 9 && v3 == 1;
  v569 = v9;
  v10 = v3 == 2;
  v11 = v4 == 8 && v3 == 0;
  v602 = v11;
  v12 = v4 == 8 && v3 == 1;
  v572 = v12;
  v13 = v4 == 8 && v3 == 2;
  v489 = v13;
  v14 = v3 == 3;
  v15 = v4 == 7 && v3 == 0;
  v605 = v15;
  v16 = v4 == 7 && v3 == 1;
  v575 = v16;
  v17 = v4 == 7 && v3 == 2;
  v487 = v17;
  v18 = v4 == 7 && v3 == 3;
  v506 = v18;
  v19 = v3 == 4;
  v20 = v4 == 6 && v3 == 0;
  v608 = v20;
  v21 = v4 == 6 && v3 == 1;
  v578 = v21;
  v22 = v4 == 6 && v3 == 2;
  v484 = v22;
  v23 = v4 == 6 && v3 == 3;
  v495 = v23;
  v24 = v4 == 6 && v3 == 4;
  v527 = v24;
  v25 = v3 == 5;
  v26 = v4 == 5 && v3 == 0;
  v611 = v26;
  v27 = v4 == 5 && v3 == 1;
  v581 = v27;
  v28 = v4 == 5 && v3 == 2;
  v481 = v28;
  v29 = v4 == 5 && v3 == 3;
  v491 = v29;
  v30 = v4 == 5 && v3 == 4;
  v515 = v30;
  v31 = v4 == 5 && v3 == 5;
  v545 = v31;
  v32 = v3 == 6;
  v33 = v4 == 4 && v3 == 0;
  v614 = v33;
  v34 = v4 == 4 && v3 == 1;
  v584 = v34;
  v35 = v4 == 4 && v3 == 2;
  v478 = v35;
  v36 = v4 == 4 && v3 == 3;
  v486 = v36;
  v37 = v4 == 4 && v3 == 4;
  v500 = v37;
  v38 = v4 == 4 && v3 == 5;
  v530 = v38;
  v39 = v4 == 4 && v3 == 6;
  v554 = v39;
  v40 = v3 == 7;
  v41 = v4 == 3 && v3 == 0;
  v617 = v41;
  v42 = v4 == 3 && v3 == 1;
  v587 = v42;
  v43 = v4 == 3 && v3 == 2;
  v476 = v43;
  v44 = v4 == 3 && v3 == 3;
  v483 = v44;
  v45 = v4 == 3 && v3 == 4;
  v492 = v45;
  v46 = v4 == 3 && v3 == 5;
  v512 = v46;
  v47 = v4 == 3 && v3 == 6;
  v536 = v47;
  v48 = v4 == 3 && v3 == 7;
  v560 = v48;
  v49 = v3 == 8;
  v50 = v4 == 2 && v3 == 0;
  v620 = v50;
  v51 = v4 == 2 && v3 == 1;
  v590 = v51;
  v52 = v4 == 2 && v3 == 2;
  v473 = v52;
  v53 = v4 == 2 && v3 == 3;
  v480 = v53;
  v54 = v4 == 2 && v3 == 4;
  v488 = v54;
  v55 = v4 == 2 && v3 == 5;
  v497 = v55;
  v56 = v4 == 2 && v3 == 6;
  v518 = v56;
  v57 = v4 == 2 && v3 == 7;
  v542 = v57;
  v58 = v4 == 2 && v3 == 8;
  v557 = v58;
  v59 = v3 == 9;
  if (v4 != 1)
  {
    v5 = 0;
  }

  v648 = v5;
  v60 = v4 == 1 && v3 == 1;
  v593 = v60;
  v61 = v4 == 1 && v3 == 2;
  v566 = v61;
  v62 = v4 == 1 && v3 == 3;
  v477 = v62;
  v63 = v4 == 1 && v3 == 4;
  v482 = v63;
  v64 = v4 == 1 && v3 == 5;
  v490 = v64;
  v65 = v4 == 1 && v3 == 6;
  v503 = v65;
  v66 = v4 == 1 && v3 == 7;
  v524 = v66;
  v67 = v4 == 1 && v3 == 8;
  v539 = v67;
  v68 = v4 == 1 && v3 == 9;
  v551 = v68;
  v69 = v3 == 10;
  if (v4)
  {
    v70 = 0;
  }

  else
  {
    v70 = v7;
  }

  v596 = v70;
  if (v4)
  {
    v71 = 0;
  }

  else
  {
    v71 = v10;
  }

  v563 = v71;
  if (v4)
  {
    v72 = 0;
  }

  else
  {
    v72 = v14;
  }

  v474 = v72;
  if (v4)
  {
    v73 = 0;
  }

  else
  {
    v73 = v19;
  }

  v479 = v73;
  if (v4)
  {
    v25 = 0;
  }

  v485 = v25;
  if (v4)
  {
    v74 = 0;
  }

  else
  {
    v74 = v32;
  }

  v493 = v74;
  if (v4)
  {
    v40 = 0;
  }

  v509 = v40;
  if (v4)
  {
    v75 = 0;
  }

  else
  {
    v75 = v49;
  }

  v521 = v75;
  if (v4)
  {
    v76 = 0;
  }

  else
  {
    v76 = v59;
  }

  v533 = v76;
  if (v4)
  {
    v77 = 0;
  }

  else
  {
    v77 = v69;
  }

  v548 = v77;
  v79 = *(result + 31);
  v78 = *(result + 32);
  v80 = v78 != 0;
  v81 = *(result + 28);
  v82 = *(result + 29);
  v83 = *(result + 30);
  v84 = v82 == 0;
  v85 = v78 | v79 | v83;
  v86 = v82 | v81;
  v87 = (v78 | v79) != 0;
  v471 = (v85 | v82 | v81) == 0;
  v88 = v82 == 1;
  v89 = v82 == 2;
  if (v81)
  {
    v90 = 0;
  }

  else
  {
    v90 = v88;
  }

  if (v81)
  {
    v91 = 0;
  }

  else
  {
    v91 = v89;
  }

  v92 = v81 == 1 && v84;
  v93 = v81 == 1 && v88;
  v94 = v81 == 1 && v89;
  v95 = v81 == 2;
  v96 = v81 == 2 && v84;
  if (!v95)
  {
    v88 = 0;
    v89 = 0;
  }

  v97 = v85 == 0;
  v460 = v90;
  v461 = v96;
  if (v85)
  {
    v98 = 0;
  }

  else
  {
    v98 = v96;
  }

  v470 = v98;
  v458 = v88;
  v459 = v93;
  v99 = v97 && v88;
  v469 = v99;
  v100 = v97 && v90;
  v101 = v97 && v92;
  v467 = v101;
  v468 = v100;
  v102 = v97 && v93;
  v456 = v94;
  v457 = v91;
  if (!v97)
  {
    v91 = 0;
  }

  v465 = v91;
  v466 = v102;
  v103 = v97 && v94;
  v464 = v103;
  v455 = v89;
  v104 = v97 && v89;
  v462 = v92;
  v463 = v104;
  v105 = v78 != 1;
  v106 = v78 != 2;
  if (v79)
  {
    v107 = 1;
  }

  else
  {
    v107 = v105;
  }

  if (v79)
  {
    v108 = 1;
  }

  else
  {
    v108 = v106;
  }

  v109 = v79 != 1 || v80;
  v110 = v79 != 1 || v105;
  v111 = v79 != 1 || v106;
  v112 = v79 != 2 || v80;
  if (v79 != 2)
  {
    v105 = 1;
    v106 = 1;
  }

  if (v83)
  {
    v113 = 1;
  }

  else
  {
    v113 = v109;
  }

  if (v83)
  {
    v114 = 1;
  }

  else
  {
    v114 = v112;
  }

  if (v83)
  {
    v115 = 1;
  }

  else
  {
    v115 = v107;
  }

  if (v83)
  {
    v116 = 1;
  }

  else
  {
    v116 = v110;
  }

  if (v83)
  {
    v117 = 1;
  }

  else
  {
    v117 = v105;
  }

  if (v83)
  {
    v118 = 1;
  }

  else
  {
    v118 = v108;
  }

  v634 = v118;
  if (v83)
  {
    v119 = 1;
  }

  else
  {
    v119 = v111;
  }

  v643 = v119;
  if (v83)
  {
    v120 = 1;
  }

  else
  {
    v120 = v106;
  }

  v653 = v120;
  v121 = v83 != 1 || v87;
  if (v83 == 1)
  {
    v122 = v109;
  }

  else
  {
    v122 = 1;
  }

  if (v83 == 1)
  {
    v123 = v112;
  }

  else
  {
    v123 = 1;
  }

  if (v83 == 1)
  {
    v124 = v107;
  }

  else
  {
    v124 = 1;
  }

  if (v83 == 1)
  {
    v125 = v110;
  }

  else
  {
    v125 = 1;
  }

  v126 = v83 != 1 || v105;
  if (v83 == 1)
  {
    v127 = v108;
  }

  else
  {
    v127 = 1;
  }

  v626 = v127;
  if (v83 == 1)
  {
    v128 = v111;
  }

  else
  {
    v128 = 1;
  }

  v630 = v128;
  v129 = v83 != 1 || v106;
  v637 = v129;
  v130 = v83 == 2;
  v131 = v83 != 2 || v87;
  if (v130)
  {
    v132 = v109;
  }

  else
  {
    v132 = 1;
  }

  if (v130)
  {
    v133 = v105;
  }

  else
  {
    v112 = 1;
    v107 = 1;
    v110 = 1;
    v133 = 1;
  }

  if (v130)
  {
    v134 = v111;
  }

  else
  {
    v108 = 1;
    v134 = 1;
  }

  if (!v130)
  {
    v106 = 1;
  }

  v135 = v86 == 0;
  v136 = v121 ^ 1;
  v137 = v131 ^ 1;
  v138 = v113 ^ 1;
  result = v659;
  v139 = v122 ^ 1;
  v140 = v132 ^ 1;
  v141 = v114 ^ 1;
  v142 = v123 ^ 1;
  v143 = v112 ^ 1;
  v144 = v115 ^ 1;
  v145 = v124 ^ 1;
  v146 = v107 ^ 1;
  v147 = v116 ^ 1;
  v148 = v125 ^ 1;
  v149 = v110 ^ 1;
  v150 = v117 ^ 1;
  v151 = v126 ^ 1;
  v152 = v133 ^ 1;
  v153 = v634 ^ 1;
  v154 = v626 ^ 1;
  v155 = v108 ^ 1;
  v156 = v643 ^ 1;
  v157 = v630 ^ 1;
  v158 = v134 ^ 1;
  v159 = v653 ^ 1;
  v160 = v637 ^ 1;
  v161 = !v106;
  v638 = v136;
  if (v135)
  {
    v162 = v136;
  }

  else
  {
    v162 = 0;
  }

  v644 = v162;
  v635 = v137;
  if (v135)
  {
    v163 = v137;
  }

  else
  {
    v163 = 0;
  }

  v631 = v163;
  v434 = v138;
  if (v135)
  {
    v164 = v138;
  }

  else
  {
    v164 = 0;
  }

  v165 = v139;
  if (v135)
  {
    v166 = v139;
  }

  else
  {
    v166 = 0;
  }

  v167 = v140;
  if (v135)
  {
    v168 = v140;
  }

  else
  {
    v168 = 0;
  }

  v435 = v168;
  v169 = v141;
  if (v135)
  {
    v170 = v141;
  }

  else
  {
    v170 = 0;
  }

  v437 = v148;
  v438 = v170;
  v171 = v142;
  if (v135)
  {
    v172 = v142;
  }

  else
  {
    v172 = 0;
  }

  v440 = v172;
  v173 = v143;
  if (v135)
  {
    v174 = v143;
  }

  else
  {
    v174 = 0;
  }

  v442 = v174;
  v175 = v144;
  if (v135)
  {
    v176 = v144;
  }

  else
  {
    v176 = 0;
  }

  v444 = v176;
  v177 = v145;
  if (v135)
  {
    v178 = v145;
  }

  else
  {
    v178 = 0;
  }

  v446 = v178;
  v179 = v146;
  if (v135)
  {
    v180 = v146;
  }

  else
  {
    v180 = 0;
  }

  v447 = v180;
  v181 = v147;
  if (v135)
  {
    v182 = v147;
  }

  else
  {
    v182 = 0;
  }

  v449 = v182;
  if (v135)
  {
    v183 = v148;
  }

  else
  {
    v183 = 0;
  }

  v450 = v183;
  v184 = v149;
  if (v135)
  {
    v185 = v149;
  }

  else
  {
    v185 = 0;
  }

  v452 = v185;
  if (v135)
  {
    v186 = v150;
  }

  else
  {
    v186 = 0;
  }

  v454 = v186;
  v436 = v151;
  if (v135)
  {
    v187 = v152;
  }

  else
  {
    v151 = 0;
    v187 = 0;
  }

  v439 = v153;
  if (v135)
  {
    v188 = v626 ^ 1;
  }

  else
  {
    v153 = 0;
    v188 = 0;
  }

  v443 = v188;
  if (v135)
  {
    v189 = v155;
  }

  else
  {
    v189 = 0;
  }

  v445 = v189;
  if (v135)
  {
    v190 = v156;
  }

  else
  {
    v190 = 0;
  }

  v448 = v190;
  if (v135)
  {
    v191 = v157;
  }

  else
  {
    v191 = 0;
  }

  v451 = v191;
  if (v135)
  {
    v192 = v158;
  }

  else
  {
    v192 = 0;
  }

  v453 = v192;
  if (v135)
  {
    v193 = v653 ^ 1;
  }

  else
  {
    v193 = 0;
  }

  v441 = v193;
  if (v135)
  {
    v194 = v160;
  }

  else
  {
    v194 = 0;
  }

  v627 = v194;
  v195 = v135 && !v106;
  LOWORD(v654) = 7;
  v196 = 3072;
  if (*(v659 + 35) == 3 && *(v659 + 34) == 165)
  {
    v432 = v151;
    v433 = v195;
    v197 = 0;
    v198 = 0;
    if (v472 || v648 || v620 || v617 || v614 || v611 || v608 || v605 || v602 || v599 || v475 || v596 || v593 || v590 || v587 || v584 || v581 || v578 || v575 || v572 || v569 || v563 || v566 || v473 || v476 || v478 || v481 || v484 || v487 || v489 || v474 || v477 || v480 || v483 || v486 || v491 || v495 || v506 || v479 || v482 || v488 || v492 || v500 || v515 || v527 || v485 || v490 || v497 || v512 || v530 || v545 || v493 || v503 || v518 || v536 || v554 || v509 || v524 || v542 || v560 || v521 || v539 || v557 || v533 || v551 || v548)
    {
      v431 = v187;
      v623 = v150;
      v199 = *(v659 + 18);
      v200 = ((v199 >> 16) >> 8) & 0xF8;
      v196 = v200 | 0xC00;
      v654 = (8 * (v199 & 1)) | (32 * (v199 >> 16)) | (v199 >> 28) & 0x10 | 7;
      v201 = v659[132];
      v197 = (v659[164] << 8) | ((*(v659 + 80) & 3) << 6) | v659[108] & 1 | (v201 >> 5) & 6;
      if (v472)
      {
        goto LABEL_430;
      }

      if (v648)
      {
        v196 = v200 | 0x1C00;
        goto LABEL_430;
      }

      if (v620)
      {
        v196 = v200 | 0x2C00;
        goto LABEL_430;
      }

      if (v617)
      {
        v196 = v200 | 0x3C00;
        goto LABEL_430;
      }

      if (v614)
      {
        v196 = v200 | 0x4C00;
        goto LABEL_430;
      }

      if (v611)
      {
        v196 = v200 | 0x5C00;
        goto LABEL_430;
      }

      if (v608)
      {
        v196 = v200 | 0x6C00;
        goto LABEL_430;
      }

      if (v605)
      {
        v196 = v200 | 0x7C00;
        goto LABEL_430;
      }

      if (v602)
      {
        v196 = v200 | 0x8C00;
        goto LABEL_430;
      }

      if (v599)
      {
        v196 = v200 | 0x9C00;
        goto LABEL_430;
      }

      if (v475)
      {
        v196 = v200 | 0xAC00;
        goto LABEL_430;
      }

      if (v596)
      {
        v196 = v200 | 0xBC00;
        goto LABEL_430;
      }

      if (v593)
      {
        v202 = -13312;
      }

      else if (v590)
      {
        v202 = -9216;
      }

      else
      {
        if (!v587)
        {
          if (v584)
          {
            v196 = v200 | 0xFC00;
            goto LABEL_429;
          }

          if (!v581)
          {
            if (v578)
            {
              v196 = v200 | 0x1C00;
            }

            else if (v575)
            {
              v196 = v200 | 0x2C00;
            }

            else if (v572)
            {
              v196 = v200 | 0x3C00;
            }

            else if (v569)
            {
              v196 = v200 | 0x4C00;
            }

            else if (v563)
            {
              v196 = v200 | 0x5C00;
            }

            else if (v566)
            {
              v196 = v200 | 0x6C00;
            }

            else if (v473)
            {
              v196 = v200 | 0x7C00;
            }

            else if (v476)
            {
              v196 = v200 | 0x8C00;
            }

            else if (v478)
            {
              v196 = v200 | 0x9C00;
            }

            else if (v481)
            {
              v196 = v200 | 0xAC00;
            }

            else if (v484)
            {
              v196 = v200 | 0xBC00;
            }

            else if (v487)
            {
              v196 = v200 | 0xCC00;
            }

            else if (v489)
            {
              v196 = v200 | 0xDC00;
            }

            else if (v474)
            {
              v196 = v200 | 0xEC00;
            }

            else
            {
              if (!v477)
              {
                if (!v480)
                {
                  if (v483)
                  {
                    v196 = v200 | 0x1C00;
                  }

                  else if (v486)
                  {
                    v196 = v200 | 0x2C00;
                  }

                  else if (v491)
                  {
                    v196 = v200 | 0x3C00;
                  }

                  else if (v495)
                  {
                    v196 = v200 | 0x4C00;
                  }

                  else if (v506)
                  {
                    v196 = v200 | 0x5C00;
                  }

                  else if (v479)
                  {
                    v196 = v200 | 0x6C00;
                  }

                  else if (v482)
                  {
                    v196 = v200 | 0x7C00;
                  }

                  else if (v488)
                  {
                    v196 = v200 | 0x8C00;
                  }

                  else if (v492)
                  {
                    v196 = v200 | 0x9C00;
                  }

                  else if (v500)
                  {
                    v196 = v200 | 0xAC00;
                  }

                  else if (v515)
                  {
                    v196 = v200 | 0xBC00;
                  }

                  else if (v527)
                  {
                    v196 = v200 | 0xCC00;
                  }

                  else if (v485)
                  {
                    v196 = v200 | 0xDC00;
                  }

                  else if (v490)
                  {
                    v196 = v200 | 0xEC00;
                  }

                  else
                  {
                    if (!v497)
                    {
                      if (!v512)
                      {
                        if (v530)
                        {
                          v196 = v200 | 0x1C00;
                        }

                        else if (v545)
                        {
                          v196 = v200 | 0x2C00;
                        }

                        else if (v493)
                        {
                          v196 = v200 | 0x3C00;
                        }

                        else if (v503)
                        {
                          v196 = v200 | 0x4C00;
                        }

                        else if (v518)
                        {
                          v196 = v200 | 0x5C00;
                        }

                        else if (v536)
                        {
                          v196 = v200 | 0x6C00;
                        }

                        else if (v554)
                        {
                          v196 = v200 | 0x7C00;
                        }

                        else if (v509)
                        {
                          v196 = v200 | 0x8C00;
                        }

                        else if (v524)
                        {
                          v196 = v200 | 0x9C00;
                        }

                        else if (v542)
                        {
                          v196 = v200 | 0xAC00;
                        }

                        else if (v560)
                        {
                          v196 = v200 | 0xBC00;
                        }

                        else if (v521)
                        {
                          v196 = v200 | 0xCC00;
                        }

                        else if (v539)
                        {
                          v196 = v200 | 0xDC00;
                        }

                        else if (v557)
                        {
                          v196 = v200 | 0xEC00;
                        }

                        else
                        {
                          if (!v533)
                          {
                            if (!v551)
                            {
                              result = v659;
                              if (v548)
                              {
                                v196 = v200 | 0x1C00;
                                v197 = v197 | 0x20;
                              }

LABEL_430:
                              v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10);
                              if (v471)
                              {
                                v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10);
                                goto LABEL_471;
                              }

                              if (v470)
                              {
                                v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 4;
                                goto LABEL_471;
                              }

                              if (v469)
                              {
                                v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 8;
                                goto LABEL_471;
                              }

                              if (v468)
                              {
                                v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0xC;
                                goto LABEL_471;
                              }

                              if (v467)
                              {
                                v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x10;
                                goto LABEL_471;
                              }

                              if (v466)
                              {
                                v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x14;
                                goto LABEL_471;
                              }

                              if (v465)
                              {
                                v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x18;
                                goto LABEL_471;
                              }

                              if (v464)
                              {
                                v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x1C;
                                goto LABEL_471;
                              }

                              if (v463)
                              {
                                v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x20;
                                goto LABEL_471;
                              }

                              if (v644)
                              {
                                v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x24;
                                goto LABEL_471;
                              }

                              if ((v638 & v462) != 0)
                              {
                                v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x28;
                                goto LABEL_471;
                              }

                              if ((v638 & v461) != 0)
                              {
                                v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x2C;
                                goto LABEL_471;
                              }

                              if ((v638 & v460) != 0)
                              {
                                v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x30;
                              }

                              else
                              {
                                if ((v638 & v459) != 0)
                                {
                                  v203 = 13;
                                }

                                else
                                {
                                  if ((v638 & v458) != 0)
                                  {
                                    v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x38;
                                    goto LABEL_470;
                                  }

                                  if ((v638 & v457) != 0)
                                  {
                                    v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x3C;
                                    goto LABEL_470;
                                  }

                                  if ((v638 & v456) != 0)
                                  {
                                    v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x40;
                                    goto LABEL_470;
                                  }

                                  if ((v638 & v455) != 0)
                                  {
                                    v203 = 17;
                                  }

                                  else if (v631)
                                  {
                                    v203 = 18;
                                  }

                                  else if ((v635 & v462) != 0)
                                  {
                                    v203 = 19;
                                  }

                                  else if ((v635 & v461) != 0)
                                  {
                                    v203 = 20;
                                  }

                                  else if ((v635 & v460) != 0)
                                  {
                                    v203 = 21;
                                  }

                                  else if ((v635 & v459) != 0)
                                  {
                                    v203 = 22;
                                  }

                                  else if ((v635 & v458) != 0)
                                  {
                                    v203 = 23;
                                  }

                                  else
                                  {
                                    if ((v635 & v457) != 0)
                                    {
                                      v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x60;
                                      goto LABEL_470;
                                    }

                                    if ((v635 & v456) != 0)
                                    {
                                      v203 = 25;
                                    }

                                    else if ((v635 & v455) != 0)
                                    {
                                      v203 = 26;
                                    }

                                    else if (v164)
                                    {
                                      v203 = 27;
                                    }

                                    else
                                    {
                                      if ((v434 & v462) != 0)
                                      {
                                        v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x70;
                                        goto LABEL_470;
                                      }

                                      if ((v434 & v461) != 0)
                                      {
                                        v203 = 29;
                                      }

                                      else
                                      {
                                        if ((v434 & v460) != 0)
                                        {
                                          v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x78;
                                          goto LABEL_470;
                                        }

                                        if ((v434 & v459) != 0)
                                        {
                                          v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x7C;
                                          goto LABEL_470;
                                        }

                                        if ((v434 & v458) != 0)
                                        {
                                          v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x80;
                                          goto LABEL_470;
                                        }

                                        if ((v434 & v457) != 0)
                                        {
                                          v203 = 33;
                                        }

                                        else if ((v434 & v456) != 0)
                                        {
                                          v203 = 34;
                                        }

                                        else if ((v434 & v455) != 0)
                                        {
                                          v203 = 35;
                                        }

                                        else if (v166)
                                        {
                                          v203 = 36;
                                        }

                                        else if ((v165 & v462) != 0)
                                        {
                                          v203 = 37;
                                        }

                                        else if ((v165 & v461) != 0)
                                        {
                                          v203 = 38;
                                        }

                                        else if ((v165 & v460) != 0)
                                        {
                                          v203 = 39;
                                        }

                                        else if ((v165 & v459) != 0)
                                        {
                                          v203 = 40;
                                        }

                                        else if ((v165 & v458) != 0)
                                        {
                                          v203 = 41;
                                        }

                                        else if ((v165 & v457) != 0)
                                        {
                                          v203 = 42;
                                        }

                                        else if ((v165 & v456) != 0)
                                        {
                                          v203 = 43;
                                        }

                                        else if ((v165 & v455) != 0)
                                        {
                                          v203 = 44;
                                        }

                                        else if (v435)
                                        {
                                          v203 = 45;
                                        }

                                        else if ((v167 & v462) != 0)
                                        {
                                          v203 = 46;
                                        }

                                        else if ((v167 & v461) != 0)
                                        {
                                          v203 = 47;
                                        }

                                        else
                                        {
                                          if ((v167 & v460) != 0)
                                          {
                                            v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0xC0;
                                            goto LABEL_470;
                                          }

                                          if ((v167 & v459) != 0)
                                          {
                                            v203 = 49;
                                          }

                                          else if ((v167 & v458) != 0)
                                          {
                                            v203 = 50;
                                          }

                                          else if ((v167 & v457) != 0)
                                          {
                                            v203 = 51;
                                          }

                                          else if ((v167 & v456) != 0)
                                          {
                                            v203 = 52;
                                          }

                                          else if ((v167 & v455) != 0)
                                          {
                                            v203 = 53;
                                          }

                                          else if (v438)
                                          {
                                            v203 = 54;
                                          }

                                          else if ((v169 & v462) != 0)
                                          {
                                            v203 = 55;
                                          }

                                          else
                                          {
                                            if ((v169 & v461) != 0)
                                            {
                                              v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0xE0;
                                              goto LABEL_470;
                                            }

                                            if ((v169 & v460) != 0)
                                            {
                                              v203 = 57;
                                            }

                                            else if ((v169 & v459) != 0)
                                            {
                                              v203 = 58;
                                            }

                                            else if ((v169 & v458) != 0)
                                            {
                                              v203 = 59;
                                            }

                                            else
                                            {
                                              if ((v169 & v457) != 0)
                                              {
                                                v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0xF0;
                                                goto LABEL_470;
                                              }

                                              if ((v169 & v456) != 0)
                                              {
                                                v203 = 61;
                                              }

                                              else
                                              {
                                                if ((v169 & v455) != 0)
                                                {
                                                  v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0xF8;
                                                  goto LABEL_470;
                                                }

                                                if (v440)
                                                {
                                                  v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0xFC;
                                                  goto LABEL_470;
                                                }

                                                if ((v171 & v462) != 0)
                                                {
                                                  v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x100;
                                                  goto LABEL_470;
                                                }

                                                if ((v171 & v461) != 0)
                                                {
                                                  v203 = 65;
                                                }

                                                else if ((v171 & v460) != 0)
                                                {
                                                  v203 = 66;
                                                }

                                                else if ((v171 & v459) != 0)
                                                {
                                                  v203 = 67;
                                                }

                                                else if ((v171 & v458) != 0)
                                                {
                                                  v203 = 68;
                                                }

                                                else if ((v171 & v457) != 0)
                                                {
                                                  v203 = 69;
                                                }

                                                else if ((v171 & v456) != 0)
                                                {
                                                  v203 = 70;
                                                }

                                                else if ((v171 & v455) != 0)
                                                {
                                                  v203 = 71;
                                                }

                                                else if (v442)
                                                {
                                                  v203 = 72;
                                                }

                                                else if ((v173 & v462) != 0)
                                                {
                                                  v203 = 73;
                                                }

                                                else if ((v173 & v461) != 0)
                                                {
                                                  v203 = 74;
                                                }

                                                else if ((v173 & v460) != 0)
                                                {
                                                  v203 = 75;
                                                }

                                                else if ((v173 & v459) != 0)
                                                {
                                                  v203 = 76;
                                                }

                                                else if ((v173 & v458) != 0)
                                                {
                                                  v203 = 77;
                                                }

                                                else if ((v173 & v457) != 0)
                                                {
                                                  v203 = 78;
                                                }

                                                else if ((v173 & v456) != 0)
                                                {
                                                  v203 = 79;
                                                }

                                                else if ((v173 & v455) != 0)
                                                {
                                                  v203 = 80;
                                                }

                                                else if (v444)
                                                {
                                                  v203 = 81;
                                                }

                                                else if ((v175 & v462) != 0)
                                                {
                                                  v203 = 82;
                                                }

                                                else if ((v175 & v461) != 0)
                                                {
                                                  v203 = 83;
                                                }

                                                else if ((v175 & v460) != 0)
                                                {
                                                  v203 = 84;
                                                }

                                                else if ((v175 & v459) != 0)
                                                {
                                                  v203 = 85;
                                                }

                                                else if ((v175 & v458) != 0)
                                                {
                                                  v203 = 86;
                                                }

                                                else if ((v175 & v457) != 0)
                                                {
                                                  v203 = 87;
                                                }

                                                else if ((v175 & v456) != 0)
                                                {
                                                  v203 = 88;
                                                }

                                                else if ((v175 & v455) != 0)
                                                {
                                                  v203 = 89;
                                                }

                                                else if (v446)
                                                {
                                                  v203 = 90;
                                                }

                                                else if ((v177 & v462) != 0)
                                                {
                                                  v203 = 91;
                                                }

                                                else if ((v177 & v461) != 0)
                                                {
                                                  v203 = 92;
                                                }

                                                else if ((v177 & v460) != 0)
                                                {
                                                  v203 = 93;
                                                }

                                                else if ((v177 & v459) != 0)
                                                {
                                                  v203 = 94;
                                                }

                                                else if ((v177 & v458) != 0)
                                                {
                                                  v203 = 95;
                                                }

                                                else
                                                {
                                                  if ((v177 & v457) != 0)
                                                  {
                                                    v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x180;
                                                    goto LABEL_470;
                                                  }

                                                  if ((v177 & v456) != 0)
                                                  {
                                                    v203 = 97;
                                                  }

                                                  else if ((v177 & v455) != 0)
                                                  {
                                                    v203 = 98;
                                                  }

                                                  else if (v447)
                                                  {
                                                    v203 = 99;
                                                  }

                                                  else if ((v179 & v462) != 0)
                                                  {
                                                    v203 = 100;
                                                  }

                                                  else if ((v179 & v461) != 0)
                                                  {
                                                    v203 = 101;
                                                  }

                                                  else if ((v179 & v460) != 0)
                                                  {
                                                    v203 = 102;
                                                  }

                                                  else if ((v179 & v459) != 0)
                                                  {
                                                    v203 = 103;
                                                  }

                                                  else if ((v179 & v458) != 0)
                                                  {
                                                    v203 = 104;
                                                  }

                                                  else if ((v179 & v457) != 0)
                                                  {
                                                    v203 = 105;
                                                  }

                                                  else if ((v179 & v456) != 0)
                                                  {
                                                    v203 = 106;
                                                  }

                                                  else if ((v179 & v455) != 0)
                                                  {
                                                    v203 = 107;
                                                  }

                                                  else if (v449)
                                                  {
                                                    v203 = 108;
                                                  }

                                                  else if ((v181 & v462) != 0)
                                                  {
                                                    v203 = 109;
                                                  }

                                                  else if ((v181 & v461) != 0)
                                                  {
                                                    v203 = 110;
                                                  }

                                                  else if ((v181 & v460) != 0)
                                                  {
                                                    v203 = 111;
                                                  }

                                                  else
                                                  {
                                                    if ((v181 & v459) != 0)
                                                    {
                                                      v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x1C0;
                                                      goto LABEL_470;
                                                    }

                                                    if ((v181 & v458) != 0)
                                                    {
                                                      v203 = 113;
                                                    }

                                                    else if ((v181 & v457) != 0)
                                                    {
                                                      v203 = 114;
                                                    }

                                                    else if ((v181 & v456) != 0)
                                                    {
                                                      v203 = 115;
                                                    }

                                                    else if ((v181 & v455) != 0)
                                                    {
                                                      v203 = 116;
                                                    }

                                                    else if (v450)
                                                    {
                                                      v203 = 117;
                                                    }

                                                    else if ((v437 & v462) != 0)
                                                    {
                                                      v203 = 118;
                                                    }

                                                    else if ((v437 & v461) != 0)
                                                    {
                                                      v203 = 119;
                                                    }

                                                    else
                                                    {
                                                      if ((v437 & v460) != 0)
                                                      {
                                                        v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x1E0;
                                                        goto LABEL_470;
                                                      }

                                                      if ((v437 & v459) != 0)
                                                      {
                                                        v203 = 121;
                                                      }

                                                      else if ((v437 & v458) != 0)
                                                      {
                                                        v203 = 122;
                                                      }

                                                      else if ((v437 & v457) != 0)
                                                      {
                                                        v203 = 123;
                                                      }

                                                      else
                                                      {
                                                        if ((v437 & v456) != 0)
                                                        {
                                                          v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x1F0;
                                                          goto LABEL_470;
                                                        }

                                                        if ((v437 & v455) != 0)
                                                        {
                                                          v203 = 125;
                                                        }

                                                        else
                                                        {
                                                          if (v452)
                                                          {
                                                            v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x1F8;
                                                            goto LABEL_470;
                                                          }

                                                          if ((v184 & v462) != 0)
                                                          {
                                                            v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x1FC;
                                                            goto LABEL_470;
                                                          }

                                                          if ((v184 & v461) != 0)
                                                          {
                                                            v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x200;
                                                            goto LABEL_470;
                                                          }

                                                          if ((v184 & v460) != 0)
                                                          {
                                                            v203 = -127;
                                                          }

                                                          else if ((v184 & v459) != 0)
                                                          {
                                                            v203 = -126;
                                                          }

                                                          else if ((v184 & v458) != 0)
                                                          {
                                                            v203 = -125;
                                                          }

                                                          else if ((v184 & v457) != 0)
                                                          {
                                                            v203 = -124;
                                                          }

                                                          else if ((v184 & v456) != 0)
                                                          {
                                                            v203 = -123;
                                                          }

                                                          else if ((v184 & v455) != 0)
                                                          {
                                                            v203 = -122;
                                                          }

                                                          else if (v454)
                                                          {
                                                            v203 = -121;
                                                          }

                                                          else if ((v623 & v462) != 0)
                                                          {
                                                            v203 = -120;
                                                          }

                                                          else if ((v623 & v461) != 0)
                                                          {
                                                            v203 = -119;
                                                          }

                                                          else if ((v623 & v460) != 0)
                                                          {
                                                            v203 = -118;
                                                          }

                                                          else if ((v623 & v459) != 0)
                                                          {
                                                            v203 = -117;
                                                          }

                                                          else if ((v623 & v458) != 0)
                                                          {
                                                            v203 = -116;
                                                          }

                                                          else if ((v623 & v457) != 0)
                                                          {
                                                            v203 = -115;
                                                          }

                                                          else if ((v623 & v456) != 0)
                                                          {
                                                            v203 = -114;
                                                          }

                                                          else if ((v623 & v455) != 0)
                                                          {
                                                            v203 = -113;
                                                          }

                                                          else if (v432)
                                                          {
                                                            v203 = -112;
                                                          }

                                                          else if ((v436 & v462) != 0)
                                                          {
                                                            v203 = -111;
                                                          }

                                                          else if ((v436 & v461) != 0)
                                                          {
                                                            v203 = -110;
                                                          }

                                                          else if ((v436 & v460) != 0)
                                                          {
                                                            v203 = -109;
                                                          }

                                                          else if ((v436 & v459) != 0)
                                                          {
                                                            v203 = -108;
                                                          }

                                                          else if ((v436 & v458) != 0)
                                                          {
                                                            v203 = -107;
                                                          }

                                                          else if ((v436 & v457) != 0)
                                                          {
                                                            v203 = -106;
                                                          }

                                                          else if ((v436 & v456) != 0)
                                                          {
                                                            v203 = -105;
                                                          }

                                                          else if ((v436 & v455) != 0)
                                                          {
                                                            v203 = -104;
                                                          }

                                                          else if (v431)
                                                          {
                                                            v203 = -103;
                                                          }

                                                          else if ((v152 & v462) != 0)
                                                          {
                                                            v203 = -102;
                                                          }

                                                          else if ((v152 & v461) != 0)
                                                          {
                                                            v203 = -101;
                                                          }

                                                          else if ((v152 & v460) != 0)
                                                          {
                                                            v203 = -100;
                                                          }

                                                          else if ((v152 & v459) != 0)
                                                          {
                                                            v203 = -99;
                                                          }

                                                          else if ((v152 & v458) != 0)
                                                          {
                                                            v203 = -98;
                                                          }

                                                          else if ((v152 & v457) != 0)
                                                          {
                                                            v203 = -97;
                                                          }

                                                          else if ((v152 & v456) != 0)
                                                          {
                                                            v203 = -96;
                                                          }

                                                          else if ((v152 & v455) != 0)
                                                          {
                                                            v203 = -95;
                                                          }

                                                          else if (v153)
                                                          {
                                                            v203 = -94;
                                                          }

                                                          else if ((v439 & v462) != 0)
                                                          {
                                                            v203 = -93;
                                                          }

                                                          else if ((v439 & v461) != 0)
                                                          {
                                                            v203 = -92;
                                                          }

                                                          else if ((v439 & v460) != 0)
                                                          {
                                                            v203 = -91;
                                                          }

                                                          else if ((v439 & v459) != 0)
                                                          {
                                                            v203 = -90;
                                                          }

                                                          else if ((v439 & v458) != 0)
                                                          {
                                                            v203 = -89;
                                                          }

                                                          else if ((v439 & v457) != 0)
                                                          {
                                                            v203 = -88;
                                                          }

                                                          else if ((v439 & v456) != 0)
                                                          {
                                                            v203 = -87;
                                                          }

                                                          else if ((v439 & v455) != 0)
                                                          {
                                                            v203 = -86;
                                                          }

                                                          else if (v443)
                                                          {
                                                            v203 = -85;
                                                          }

                                                          else if ((v154 & v462) != 0)
                                                          {
                                                            v203 = -84;
                                                          }

                                                          else if ((v154 & v461) != 0)
                                                          {
                                                            v203 = -83;
                                                          }

                                                          else if ((v154 & v460) != 0)
                                                          {
                                                            v203 = -82;
                                                          }

                                                          else if ((v154 & v459) != 0)
                                                          {
                                                            v203 = -81;
                                                          }

                                                          else if ((v154 & v458) != 0)
                                                          {
                                                            v203 = -80;
                                                          }

                                                          else if ((v154 & v457) != 0)
                                                          {
                                                            v203 = -79;
                                                          }

                                                          else if ((v154 & v456) != 0)
                                                          {
                                                            v203 = -78;
                                                          }

                                                          else if ((v154 & v455) != 0)
                                                          {
                                                            v203 = -77;
                                                          }

                                                          else if (v445)
                                                          {
                                                            v203 = -76;
                                                          }

                                                          else if ((v155 & v462) != 0)
                                                          {
                                                            v203 = -75;
                                                          }

                                                          else if ((v155 & v461) != 0)
                                                          {
                                                            v203 = -74;
                                                          }

                                                          else if ((v155 & v460) != 0)
                                                          {
                                                            v203 = -73;
                                                          }

                                                          else if ((v155 & v459) != 0)
                                                          {
                                                            v203 = -72;
                                                          }

                                                          else if ((v155 & v458) != 0)
                                                          {
                                                            v203 = -71;
                                                          }

                                                          else if ((v155 & v457) != 0)
                                                          {
                                                            v203 = -70;
                                                          }

                                                          else if ((v155 & v456) != 0)
                                                          {
                                                            v203 = -69;
                                                          }

                                                          else if ((v155 & v455) != 0)
                                                          {
                                                            v203 = -68;
                                                          }

                                                          else if (v448)
                                                          {
                                                            v203 = -67;
                                                          }

                                                          else if ((v156 & v462) != 0)
                                                          {
                                                            v203 = -66;
                                                          }

                                                          else if ((v156 & v461) != 0)
                                                          {
                                                            v203 = -65;
                                                          }

                                                          else
                                                          {
                                                            if ((v156 & v460) != 0)
                                                            {
                                                              v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x300;
                                                              goto LABEL_470;
                                                            }

                                                            if ((v156 & v459) != 0)
                                                            {
                                                              v203 = -63;
                                                            }

                                                            else if ((v156 & v458) != 0)
                                                            {
                                                              v203 = -62;
                                                            }

                                                            else if ((v156 & v457) != 0)
                                                            {
                                                              v203 = -61;
                                                            }

                                                            else if ((v156 & v456) != 0)
                                                            {
                                                              v203 = -60;
                                                            }

                                                            else if ((v156 & v455) != 0)
                                                            {
                                                              v203 = -59;
                                                            }

                                                            else if (v451)
                                                            {
                                                              v203 = -58;
                                                            }

                                                            else if ((v157 & v462) != 0)
                                                            {
                                                              v203 = -57;
                                                            }

                                                            else if ((v157 & v461) != 0)
                                                            {
                                                              v203 = -56;
                                                            }

                                                            else if ((v157 & v460) != 0)
                                                            {
                                                              v203 = -55;
                                                            }

                                                            else if ((v157 & v459) != 0)
                                                            {
                                                              v203 = -54;
                                                            }

                                                            else if ((v157 & v458) != 0)
                                                            {
                                                              v203 = -53;
                                                            }

                                                            else if ((v157 & v457) != 0)
                                                            {
                                                              v203 = -52;
                                                            }

                                                            else if ((v157 & v456) != 0)
                                                            {
                                                              v203 = -51;
                                                            }

                                                            else if ((v157 & v455) != 0)
                                                            {
                                                              v203 = -50;
                                                            }

                                                            else if (v453)
                                                            {
                                                              v203 = -49;
                                                            }

                                                            else if ((v158 & v462) != 0)
                                                            {
                                                              v203 = -48;
                                                            }

                                                            else if ((v158 & v461) != 0)
                                                            {
                                                              v203 = -47;
                                                            }

                                                            else if ((v158 & v460) != 0)
                                                            {
                                                              v203 = -46;
                                                            }

                                                            else if ((v158 & v459) != 0)
                                                            {
                                                              v203 = -45;
                                                            }

                                                            else if ((v158 & v458) != 0)
                                                            {
                                                              v203 = -44;
                                                            }

                                                            else if ((v158 & v457) != 0)
                                                            {
                                                              v203 = -43;
                                                            }

                                                            else if ((v158 & v456) != 0)
                                                            {
                                                              v203 = -42;
                                                            }

                                                            else if ((v158 & v455) != 0)
                                                            {
                                                              v203 = -41;
                                                            }

                                                            else if (v441)
                                                            {
                                                              v203 = -40;
                                                            }

                                                            else if ((v159 & v462) != 0)
                                                            {
                                                              v203 = -39;
                                                            }

                                                            else if ((v159 & v461) != 0)
                                                            {
                                                              v203 = -38;
                                                            }

                                                            else if ((v159 & v460) != 0)
                                                            {
                                                              v203 = -37;
                                                            }

                                                            else if ((v159 & v459) != 0)
                                                            {
                                                              v203 = -36;
                                                            }

                                                            else if ((v159 & v458) != 0)
                                                            {
                                                              v203 = -35;
                                                            }

                                                            else if ((v159 & v457) != 0)
                                                            {
                                                              v203 = -34;
                                                            }

                                                            else if ((v159 & v456) != 0)
                                                            {
                                                              v203 = -33;
                                                            }

                                                            else
                                                            {
                                                              if ((v159 & v455) != 0)
                                                              {
                                                                v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x380;
                                                                goto LABEL_470;
                                                              }

                                                              if (v627)
                                                              {
                                                                v203 = -31;
                                                              }

                                                              else if ((v160 & v462) != 0)
                                                              {
                                                                v203 = -30;
                                                              }

                                                              else if ((v160 & v461) != 0)
                                                              {
                                                                v203 = -29;
                                                              }

                                                              else if ((v160 & v460) != 0)
                                                              {
                                                                v203 = -28;
                                                              }

                                                              else if ((v160 & v459) != 0)
                                                              {
                                                                v203 = -27;
                                                              }

                                                              else if ((v160 & v458) != 0)
                                                              {
                                                                v203 = -26;
                                                              }

                                                              else if ((v160 & v457) != 0)
                                                              {
                                                                v203 = -25;
                                                              }

                                                              else if ((v160 & v456) != 0)
                                                              {
                                                                v203 = -24;
                                                              }

                                                              else if ((v160 & v455) != 0)
                                                              {
                                                                v203 = -23;
                                                              }

                                                              else if (v433)
                                                              {
                                                                v203 = -22;
                                                              }

                                                              else if ((v161 & v462) != 0)
                                                              {
                                                                v203 = -21;
                                                              }

                                                              else if ((v161 & v461) != 0)
                                                              {
                                                                v203 = -20;
                                                              }

                                                              else if ((v161 & v460) != 0)
                                                              {
                                                                v203 = -19;
                                                              }

                                                              else if ((v161 & v459) != 0)
                                                              {
                                                                v203 = -18;
                                                              }

                                                              else if ((v161 & v458) != 0)
                                                              {
                                                                v203 = -17;
                                                              }

                                                              else
                                                              {
                                                                if ((v161 & v457) != 0)
                                                                {
                                                                  v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | 0x3C0;
                                                                  goto LABEL_470;
                                                                }

                                                                if ((v161 & v456) != 0)
                                                                {
                                                                  v203 = -15;
                                                                }

                                                                else
                                                                {
                                                                  if ((v161 & v455) == 0)
                                                                  {
                                                                    goto LABEL_470;
                                                                  }

                                                                  v203 = -14;
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
                                        }
                                      }
                                    }
                                  }
                                }

                                v198 = ((v201 >> 5) << 15) | (((v201 >> 4) & 1) << 14) | (((v201 >> 3) & 1) << 13) | (((v201 >> 2) & 1) << 12) | (((v201 >> 1) & 1) << 11) | ((v201 & 1) << 10) | (4 * v203);
                              }

LABEL_470:
                              result = v659;
                              goto LABEL_471;
                            }

                            v197 = v197 | 0x20;
LABEL_429:
                            result = v659;
                            goto LABEL_430;
                          }

                          v196 = v200 | 0xFC00;
                        }
                      }

                      v197 = v197 | 0x18;
                      goto LABEL_429;
                    }

                    v196 = v200 | 0xFC00;
                  }
                }

                v197 = v197 | 0x10;
                goto LABEL_429;
              }

              v196 = v200 | 0xFC00;
            }
          }

          v197 = v197 | 8;
          goto LABEL_429;
        }

        v202 = -5120;
      }

      v196 = v200 | v202;
      goto LABEL_429;
    }
  }

  else
  {
    v197 = 0;
    v198 = 0;
  }

LABEL_471:
  *a3 = (v197 << 48) | (v198 << 32) | (v196 << 16) | v654;
  a3 += 8;
LABEL_472:
  v205 = *(result + 4);
  v204 = *(result + 5);
  v207 = *(result + 2);
  v206 = *(result + 3);
  v208 = v204 != 0;
  v209 = *(result + 1);
  v210 = (v204 | v205) != 0;
  v211 = v207 == 1;
  v212 = v204 | v205 | v206;
  if (v209)
  {
    v213 = 0;
  }

  else
  {
    v213 = v207 == 1;
  }

  if (v209)
  {
    v214 = 0;
  }

  else
  {
    v214 = v207 == 2;
  }

  v215 = v209 == 1 && v207 == 0;
  v216 = v209 == 1 && v207 == 1;
  v217 = v209 == 1 && v207 == 2;
  v218 = v209 == 2 && v207 == 0;
  if (v209 == 2)
  {
    v219 = v207 == 2;
  }

  else
  {
    v211 = 0;
    v219 = 0;
  }

  v220 = v212 == 0;
  v632 = v212 == 0;
  v600 = v218;
  if (v212)
  {
    v221 = 0;
  }

  else
  {
    v221 = v218;
  }

  v628 = v221;
  v591 = v211;
  v222 = v220 && v211;
  v624 = v222;
  v597 = v213;
  v223 = v220 && v213;
  v621 = v223;
  v603 = v215;
  v224 = v220 && v215;
  v618 = v224;
  v594 = v216;
  v225 = v220 && v216;
  v615 = v225;
  v588 = v214;
  v226 = v220 && v214;
  v612 = v226;
  v585 = v217;
  v227 = v220 && v217;
  v609 = v227;
  v582 = v219;
  v228 = v220 && v219;
  v606 = v228;
  v229 = v204 != 1;
  v230 = v204 != 2;
  if (v205)
  {
    v231 = 1;
  }

  else
  {
    v231 = v229;
  }

  if (v205)
  {
    v232 = 1;
  }

  else
  {
    v232 = v230;
  }

  v233 = v205 != 1 || v208;
  v234 = v205 != 1 || v229;
  v235 = v205 != 1 || v230;
  if (v205 != 2)
  {
    v208 = 1;
    v229 = 1;
    v230 = 1;
  }

  v236 = v207 | v209;
  if (v206)
  {
    v237 = 1;
  }

  else
  {
    v237 = v233;
  }

  if (v206)
  {
    v238 = 1;
  }

  else
  {
    v238 = v208;
  }

  if (v206)
  {
    v239 = 1;
  }

  else
  {
    v239 = v231;
  }

  if (v206)
  {
    v240 = 1;
  }

  else
  {
    v240 = v234;
  }

  if (v206)
  {
    v241 = 1;
  }

  else
  {
    v241 = v229;
  }

  if (v206)
  {
    v242 = 1;
  }

  else
  {
    v242 = v232;
  }

  v639 = v242;
  if (v206)
  {
    v243 = 1;
  }

  else
  {
    v243 = v235;
  }

  v649 = v243;
  if (v206)
  {
    v244 = 1;
  }

  else
  {
    v244 = v230;
  }

  v655 = v244;
  v245 = v206 != 1 || v210;
  if (v206 == 1)
  {
    v246 = v233;
  }

  else
  {
    v246 = 1;
  }

  v247 = v206 != 1 || v208;
  if (v206 == 1)
  {
    v248 = v231;
  }

  else
  {
    v248 = 1;
  }

  if (v206 == 1)
  {
    v249 = v234;
  }

  else
  {
    v249 = 1;
  }

  v250 = v206 != 1 || v229;
  if (v206 == 1)
  {
    v251 = v232;
  }

  else
  {
    v251 = 1;
  }

  if (v206 == 1)
  {
    v252 = v235;
  }

  else
  {
    v252 = 1;
  }

  v253 = v206 != 1 || v230;
  v645 = v253;
  v254 = v206 == 2;
  v255 = v206 != 2 || v210;
  if (v254)
  {
    v256 = v233;
  }

  else
  {
    v256 = 1;
  }

  if (v254)
  {
    v257 = v231;
  }

  else
  {
    v208 = 1;
    v257 = 1;
  }

  if (v254)
  {
    v258 = v230;
  }

  else
  {
    v234 = 1;
    v229 = 1;
    v232 = 1;
    v235 = 1;
    v258 = 1;
  }

  v259 = v236 == 0;
  v260 = v245 ^ 1;
  v261 = v255 ^ 1;
  v262 = v246 ^ 1;
  v263 = v256 ^ 1;
  v264 = v238 ^ 1;
  v265 = v247 ^ 1;
  v266 = !v208;
  v267 = v239 ^ 1;
  v268 = v248 ^ 1;
  v269 = v257 ^ 1;
  v270 = v240 ^ 1;
  v271 = v234 ^ 1;
  v272 = v241 ^ 1;
  v273 = v250 ^ 1;
  v274 = !v229;
  v275 = v639 ^ 1;
  v276 = v251 ^ 1;
  v277 = v659;
  v278 = v232 ^ 1;
  v279 = v649 ^ 1;
  v280 = v252 ^ 1;
  v281 = v235 ^ 1;
  v282 = v655 ^ 1;
  v283 = v645 ^ 1;
  v284 = v259;
  v646 = v260;
  if (!v259)
  {
    v260 = 0;
  }

  v650 = v260;
  v579 = v261;
  if (!v259)
  {
    v261 = 0;
  }

  v507 = v237 ^ 1;
  if (v259)
  {
    v285 = v237 ^ 1;
  }

  else
  {
    v285 = 0;
  }

  v510 = v262;
  if (!v259)
  {
    v262 = 0;
  }

  v501 = v262;
  v513 = v263;
  if (v259)
  {
    v286 = v263;
  }

  else
  {
    v286 = 0;
  }

  v504 = v286;
  v516 = v264;
  if (v259)
  {
    v287 = v264;
  }

  else
  {
    v287 = 0;
  }

  v519 = v265;
  if (v259)
  {
    v288 = v265;
  }

  else
  {
    v288 = 0;
  }

  v522 = v266;
  if (v259)
  {
    v289 = v266;
  }

  else
  {
    v289 = 0;
  }

  v525 = v267;
  if (v259)
  {
    v290 = v267;
  }

  else
  {
    v290 = 0;
  }

  v528 = v268;
  if (v259)
  {
    v291 = v268;
  }

  else
  {
    v291 = 0;
  }

  v531 = v269;
  if (v259)
  {
    v292 = v269;
  }

  else
  {
    v292 = 0;
  }

  v534 = v270;
  if (v259)
  {
    v293 = v270;
  }

  else
  {
    v293 = 0;
  }

  v537 = v249 ^ 1;
  if (v259)
  {
    v294 = v249 ^ 1;
  }

  else
  {
    v294 = 0;
  }

  v540 = v271;
  if (v259)
  {
    v295 = v271;
  }

  else
  {
    v295 = 0;
  }

  v543 = v272;
  if (v259)
  {
    v296 = v272;
  }

  else
  {
    v296 = 0;
  }

  v546 = v273;
  if (v259)
  {
    v297 = v273;
  }

  else
  {
    v297 = 0;
  }

  v549 = v274;
  if (v259)
  {
    v298 = v274;
  }

  else
  {
    v298 = 0;
  }

  v552 = v639 ^ 1;
  if (!v259)
  {
    v275 = 0;
  }

  v558 = v276;
  if (v259)
  {
    v299 = v276;
  }

  else
  {
    v299 = 0;
  }

  v564 = v278;
  if (v259)
  {
    v300 = v278;
  }

  else
  {
    v300 = 0;
  }

  v570 = v279;
  if (v259)
  {
    v301 = v279;
  }

  else
  {
    v301 = 0;
  }

  v561 = v301;
  v576 = v280;
  if (v259)
  {
    v302 = v280;
  }

  else
  {
    v302 = 0;
  }

  v567 = v302;
  if (v259)
  {
    v303 = v281;
  }

  else
  {
    v303 = 0;
  }

  v573 = v303;
  if (v259)
  {
    v304 = v655 ^ 1;
  }

  else
  {
    v304 = 0;
  }

  if (v259)
  {
    v305 = v283;
  }

  else
  {
    v305 = 0;
  }

  v555 = v258 ^ 1;
  if (v259)
  {
    v306 = v258 ^ 1;
  }

  else
  {
    v306 = 0;
  }

  v307 = 7;
  if (*(v659 + 8) != 3)
  {
    LOWORD(v656) = 3584;
    goto LABEL_682;
  }

  LOWORD(v656) = 3584;
  if (*(v659 + 7) != 107)
  {
LABEL_682:
    LOWORD(v281) = 0;
    v310 = 0;
    v311 = 0;
    goto LABEL_683;
  }

  v308 = v288;
  v494 = v304;
  v496 = v281;
  v498 = v305;
  v309 = *(v659 + 5);
  LOWORD(v281) = 0;
  v310 = 0;
  v311 = 0;
  if ((v309 & 0x3F) != 0)
  {
    goto LABEL_683;
  }

  v312 = v285;
  v640 = v309 | 7;
  v636 = v309 >> 16;
  v313 = HIDWORD(v309);
  v314 = v659[24];
  v281 = (v314 << 10) & 0x38000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10);
  v656 = ((*(v659 + 24) & 1) << 6) | (8 * (*(v659 + 18) & 3)) | ((*(v659 + 26) & 1) << 12) & 0x9FFF | (*v659 << 15) | (((v314 >> 7) & 1) << 14) | (((v314 >> 6) & 1) << 13) | 0xE00;
  if ((v632 & v284) == 1)
  {
    LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10);
    v307 = v640;
    v310 = v636;
    v311 = v313;
    goto LABEL_683;
  }

  v307 = v640;
  v310 = v636;
  if (v628)
  {
    LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 4;
    v311 = v313;
    goto LABEL_683;
  }

  if (v624)
  {
    LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 8;
    v311 = v313;
    goto LABEL_683;
  }

  if (v621)
  {
    LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0xC;
    v311 = v313;
    goto LABEL_683;
  }

  if (v618)
  {
    LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x10;
    v311 = v313;
    goto LABEL_683;
  }

  if (v615)
  {
    v427 = 5;
LABEL_912:
    LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | (4 * v427);
    v311 = v313;
    goto LABEL_683;
  }

  if (v612)
  {
    LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x18;
    v311 = v313;
    goto LABEL_683;
  }

  if (v609)
  {
    LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x1C;
    v311 = v313;
    goto LABEL_683;
  }

  if (v606)
  {
    LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x20;
    v311 = v313;
    goto LABEL_683;
  }

  if (v650)
  {
    v427 = 9;
    goto LABEL_912;
  }

  if ((v646 & v603) != 0)
  {
    v427 = 10;
    goto LABEL_912;
  }

  if ((v646 & v600) == 0)
  {
    if ((v646 & v597) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x30;
      goto LABEL_2410;
    }

    if ((v646 & v594) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x34;
    }

    else if ((v646 & v591) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x38;
    }

    else if ((v646 & v588) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x3C;
    }

    else if ((v646 & v585) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x40;
    }

    else if ((v646 & v582) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x44;
    }

    else if (v261)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x48;
    }

    else if ((v579 & v603) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x4C;
    }

    else if ((v579 & v600) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x50;
    }

    else if ((v579 & v597) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x54;
    }

    else if ((v579 & v594) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x58;
    }

    else if ((v579 & v591) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x5C;
    }

    else if ((v579 & v588) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x60;
    }

    else if ((v579 & v585) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x64;
    }

    else if ((v579 & v582) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x68;
    }

    else if (v312)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x6C;
    }

    else if ((v507 & v603) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x70;
    }

    else if ((v507 & v600) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x74;
    }

    else if ((v507 & v597) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x78;
    }

    else if ((v507 & v594) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x7C;
    }

    else if ((v507 & v591) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x80;
    }

    else if ((v507 & v588) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x84;
    }

    else if ((v507 & v585) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x88;
    }

    else if ((v507 & v582) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x8C;
    }

    else if (v501)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x90;
    }

    else if ((v510 & v603) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x94;
    }

    else if ((v510 & v600) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x98;
    }

    else if ((v510 & v597) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x9C;
    }

    else if ((v510 & v594) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0xA0;
    }

    else if ((v510 & v591) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0xA4;
    }

    else if ((v510 & v588) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0xA8;
    }

    else if ((v510 & v585) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0xAC;
    }

    else if ((v510 & v582) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0xB0;
    }

    else if (v504)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0xB4;
    }

    else if ((v513 & v603) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0xB8;
    }

    else if ((v513 & v600) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0xBC;
    }

    else if ((v513 & v597) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0xC0;
    }

    else if ((v513 & v594) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0xC4;
    }

    else if ((v513 & v591) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0xC8;
    }

    else if ((v513 & v588) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0xCC;
    }

    else if ((v513 & v585) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0xD0;
    }

    else if ((v513 & v582) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0xD4;
    }

    else if (v287)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0xD8;
    }

    else if ((v516 & v603) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0xDC;
    }

    else if ((v516 & v600) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0xE0;
    }

    else if ((v516 & v597) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0xE4;
    }

    else if ((v516 & v594) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0xE8;
    }

    else if ((v516 & v591) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0xEC;
    }

    else if ((v516 & v588) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0xF0;
    }

    else if ((v516 & v585) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0xF4;
    }

    else if ((v516 & v582) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0xF8;
    }

    else if (v308)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0xFC;
    }

    else if ((v519 & v603) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x100;
    }

    else if ((v519 & v600) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x104;
    }

    else if ((v519 & v597) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x108;
    }

    else if ((v519 & v594) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x10C;
    }

    else if ((v519 & v591) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x110;
    }

    else if ((v519 & v588) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x114;
    }

    else if ((v519 & v585) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x118;
    }

    else if ((v519 & v582) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x11C;
    }

    else if (v289)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x120;
    }

    else if ((v522 & v603) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x124;
    }

    else if ((v522 & v600) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x128;
    }

    else if ((v522 & v597) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x12C;
    }

    else if ((v522 & v594) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x130;
    }

    else if ((v522 & v591) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x134;
    }

    else if ((v522 & v588) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x138;
    }

    else if ((v522 & v585) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x13C;
    }

    else if ((v522 & v582) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x140;
    }

    else if (v290)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x144;
    }

    else if ((v525 & v603) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x148;
    }

    else if ((v525 & v600) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x14C;
    }

    else if ((v525 & v597) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x150;
    }

    else if ((v525 & v594) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x154;
    }

    else if ((v525 & v591) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x158;
    }

    else if ((v525 & v588) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x15C;
    }

    else if ((v525 & v585) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x160;
    }

    else if ((v525 & v582) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x164;
    }

    else if (v291)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x168;
    }

    else if ((v528 & v603) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x16C;
    }

    else if ((v528 & v600) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x170;
    }

    else if ((v528 & v597) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x174;
    }

    else if ((v528 & v594) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x178;
    }

    else if ((v528 & v591) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x17C;
    }

    else if ((v528 & v588) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x180;
    }

    else if ((v528 & v585) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x184;
    }

    else if ((v528 & v582) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x188;
    }

    else if (v292)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x18C;
    }

    else if ((v531 & v603) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x190;
    }

    else if ((v531 & v600) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x194;
    }

    else if ((v531 & v597) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x198;
    }

    else if ((v531 & v594) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x19C;
    }

    else if ((v531 & v591) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x1A0;
    }

    else if ((v531 & v588) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x1A4;
    }

    else if ((v531 & v585) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x1A8;
    }

    else if ((v531 & v582) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x1AC;
    }

    else if (v293)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x1B0;
    }

    else if ((v534 & v603) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x1B4;
    }

    else if ((v534 & v600) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x1B8;
    }

    else if ((v534 & v597) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x1BC;
    }

    else if ((v534 & v594) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x1C0;
    }

    else if ((v534 & v591) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x1C4;
    }

    else if ((v534 & v588) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x1C8;
    }

    else if ((v534 & v585) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x1CC;
    }

    else if ((v534 & v582) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x1D0;
    }

    else if (v294)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x1D4;
    }

    else if ((v537 & v603) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x1D8;
    }

    else if ((v537 & v600) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x1DC;
    }

    else if ((v537 & v597) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x1E0;
    }

    else if ((v537 & v594) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x1E4;
    }

    else if ((v537 & v591) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x1E8;
    }

    else if ((v537 & v588) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x1EC;
    }

    else if ((v537 & v585) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x1F0;
    }

    else if ((v537 & v582) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x1F4;
    }

    else if (v295)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x1F8;
    }

    else if ((v540 & v603) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x1FC;
    }

    else if ((v540 & v600) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x200;
    }

    else if ((v540 & v597) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x204;
    }

    else if ((v540 & v594) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x208;
    }

    else if ((v540 & v591) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x20C;
    }

    else if ((v540 & v588) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x210;
    }

    else if ((v540 & v585) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x214;
    }

    else if ((v540 & v582) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x218;
    }

    else if (v296)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x21C;
    }

    else if ((v543 & v603) != 0)
    {
      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x220;
    }

    else
    {
      if ((v543 & v600) == 0)
      {
        if ((v543 & v597) != 0)
        {
          v429 = -118;
        }

        else if ((v543 & v594) != 0)
        {
          v429 = -117;
        }

        else if ((v543 & v591) != 0)
        {
          v429 = -116;
        }

        else if ((v543 & v588) != 0)
        {
          v429 = -115;
        }

        else if ((v543 & v585) != 0)
        {
          v429 = -114;
        }

        else if ((v543 & v582) != 0)
        {
          v429 = -113;
        }

        else if (v297)
        {
          v429 = -112;
        }

        else if ((v546 & v603) != 0)
        {
          v429 = -111;
        }

        else if ((v546 & v600) != 0)
        {
          v429 = -110;
        }

        else if ((v546 & v597) != 0)
        {
          v429 = -109;
        }

        else if ((v546 & v594) != 0)
        {
          v429 = -108;
        }

        else if ((v546 & v591) != 0)
        {
          v429 = -107;
        }

        else if ((v546 & v588) != 0)
        {
          v429 = -106;
        }

        else if ((v546 & v585) != 0)
        {
          v429 = -105;
        }

        else if ((v546 & v582) != 0)
        {
          v429 = -104;
        }

        else if (v298)
        {
          v429 = -103;
        }

        else if ((v549 & v603) != 0)
        {
          v429 = -102;
        }

        else if ((v549 & v600) != 0)
        {
          v429 = -101;
        }

        else if ((v549 & v597) != 0)
        {
          v429 = -100;
        }

        else if ((v549 & v594) != 0)
        {
          v429 = -99;
        }

        else if ((v549 & v591) != 0)
        {
          v429 = -98;
        }

        else if ((v549 & v588) != 0)
        {
          v429 = -97;
        }

        else if ((v549 & v585) != 0)
        {
          v429 = -96;
        }

        else if ((v549 & v582) != 0)
        {
          v429 = -95;
        }

        else if (v275)
        {
          v429 = -94;
        }

        else if ((v552 & v603) != 0)
        {
          v429 = -93;
        }

        else if ((v552 & v600) != 0)
        {
          v429 = -92;
        }

        else if ((v552 & v597) != 0)
        {
          v429 = -91;
        }

        else if ((v552 & v594) != 0)
        {
          v429 = -90;
        }

        else if ((v552 & v591) != 0)
        {
          v429 = -89;
        }

        else if ((v552 & v588) != 0)
        {
          v429 = -88;
        }

        else if ((v552 & v585) != 0)
        {
          v429 = -87;
        }

        else if ((v552 & v582) != 0)
        {
          v429 = -86;
        }

        else if (v299)
        {
          v429 = -85;
        }

        else if ((v558 & v603) != 0)
        {
          v429 = -84;
        }

        else if ((v558 & v600) != 0)
        {
          v429 = -83;
        }

        else if ((v558 & v597) != 0)
        {
          v429 = -82;
        }

        else if ((v558 & v594) != 0)
        {
          v429 = -81;
        }

        else if ((v558 & v591) != 0)
        {
          v429 = -80;
        }

        else if ((v558 & v588) != 0)
        {
          v429 = -79;
        }

        else if ((v558 & v585) != 0)
        {
          v429 = -78;
        }

        else if ((v558 & v582) != 0)
        {
          v429 = -77;
        }

        else if (v300)
        {
          v429 = -76;
        }

        else if ((v564 & v603) != 0)
        {
          v429 = -75;
        }

        else if ((v564 & v600) != 0)
        {
          v429 = -74;
        }

        else if ((v564 & v597) != 0)
        {
          v429 = -73;
        }

        else if ((v564 & v594) != 0)
        {
          v429 = -72;
        }

        else if ((v564 & v591) != 0)
        {
          v429 = -71;
        }

        else if ((v564 & v588) != 0)
        {
          v429 = -70;
        }

        else if ((v564 & v585) != 0)
        {
          v429 = -69;
        }

        else if ((v564 & v582) != 0)
        {
          v429 = -68;
        }

        else if (v561)
        {
          v429 = -67;
        }

        else if ((v570 & v603) != 0)
        {
          v429 = -66;
        }

        else if ((v570 & v600) != 0)
        {
          v429 = -65;
        }

        else
        {
          if ((v570 & v597) != 0)
          {
            LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x300;
            goto LABEL_2409;
          }

          if ((v570 & v594) != 0)
          {
            v429 = -63;
          }

          else if ((v570 & v591) != 0)
          {
            v429 = -62;
          }

          else if ((v570 & v588) != 0)
          {
            v429 = -61;
          }

          else if ((v570 & v585) != 0)
          {
            v429 = -60;
          }

          else if ((v570 & v582) != 0)
          {
            v429 = -59;
          }

          else if (v567)
          {
            v429 = -58;
          }

          else if ((v576 & v603) != 0)
          {
            v429 = -57;
          }

          else if ((v576 & v600) != 0)
          {
            v429 = -56;
          }

          else if ((v576 & v597) != 0)
          {
            v429 = -55;
          }

          else if ((v576 & v594) != 0)
          {
            v429 = -54;
          }

          else if ((v576 & v591) != 0)
          {
            v429 = -53;
          }

          else if ((v576 & v588) != 0)
          {
            v429 = -52;
          }

          else if ((v576 & v585) != 0)
          {
            v429 = -51;
          }

          else if ((v576 & v582) != 0)
          {
            v429 = -50;
          }

          else if (v573)
          {
            v429 = -49;
          }

          else if ((v496 & v603) != 0)
          {
            v429 = -48;
          }

          else if ((v496 & v600) != 0)
          {
            v429 = -47;
          }

          else if ((v496 & v597) != 0)
          {
            v429 = -46;
          }

          else if ((v496 & v594) != 0)
          {
            v429 = -45;
          }

          else if ((v496 & v591) != 0)
          {
            v429 = -44;
          }

          else if ((v496 & v588) != 0)
          {
            v429 = -43;
          }

          else if ((v496 & v585) != 0)
          {
            v429 = -42;
          }

          else if ((v496 & v582) != 0)
          {
            v429 = -41;
          }

          else if (v494)
          {
            v429 = -40;
          }

          else if ((v282 & v603) != 0)
          {
            v429 = -39;
          }

          else if ((v282 & v600) != 0)
          {
            v429 = -38;
          }

          else if ((v282 & v597) != 0)
          {
            v429 = -37;
          }

          else if ((v282 & v594) != 0)
          {
            v429 = -36;
          }

          else if ((v282 & v591) != 0)
          {
            v429 = -35;
          }

          else if ((v282 & v588) != 0)
          {
            v429 = -34;
          }

          else if ((v282 & v585) != 0)
          {
            v429 = -33;
          }

          else
          {
            if ((v282 & v582) != 0)
            {
              LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x380;
              goto LABEL_2409;
            }

            if (v498)
            {
              v429 = -31;
            }

            else if ((v283 & v603) != 0)
            {
              v429 = -30;
            }

            else if ((v283 & v600) != 0)
            {
              v429 = -29;
            }

            else if ((v283 & v597) != 0)
            {
              v429 = -28;
            }

            else if ((v283 & v594) != 0)
            {
              v429 = -27;
            }

            else if ((v283 & v591) != 0)
            {
              v429 = -26;
            }

            else if ((v283 & v588) != 0)
            {
              v429 = -25;
            }

            else if ((v283 & v585) != 0)
            {
              v429 = -24;
            }

            else if ((v283 & v582) != 0)
            {
              v429 = -23;
            }

            else if (v306)
            {
              v429 = -22;
            }

            else if ((v555 & v603) != 0)
            {
              v429 = -21;
            }

            else if ((v555 & v600) != 0)
            {
              v429 = -20;
            }

            else if ((v555 & v597) != 0)
            {
              v429 = -19;
            }

            else if ((v555 & v594) != 0)
            {
              v429 = -18;
            }

            else if ((v555 & v591) != 0)
            {
              v429 = -17;
            }

            else
            {
              if ((v555 & v588) != 0)
              {
                LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x3C0;
                goto LABEL_2409;
              }

              if ((v555 & v585) != 0)
              {
                v429 = -15;
              }

              else
              {
                if ((v555 & v582) == 0)
                {
                  goto LABEL_2409;
                }

                v429 = -14;
              }
            }
          }
        }

        LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | (4 * v429);
        goto LABEL_2409;
      }

      LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x224;
    }

LABEL_2409:
    v277 = v659;
    v307 = v640;
    v310 = v636;
    goto LABEL_2410;
  }

  LOWORD(v281) = (v314 << 10) & 0x8000 | (((v314 >> 4) & 1) << 14) | (((v314 >> 3) & 1) << 13) | (((v314 >> 2) & 1) << 12) | (((v314 >> 1) & 1) << 11) | ((v314 & 1) << 10) | 0x2C;
LABEL_2410:
  v311 = v313;
LABEL_683:
  *a3 = v307;
  *(a3 + 2) = v656;
  *(a3 + 4) = v281;
  *(a3 + 6) = v310;
  *(a3 + 8) = v311;
  v316 = v277[18];
  v315 = v277[19];
  v318 = v277[16];
  v317 = v277[17];
  v319 = v315 != 0;
  v320 = v277[15];
  v321 = *(v277 + 9) != 0;
  v322 = v318 == 1;
  v323 = v315 | v316 | v317;
  if (v320)
  {
    v324 = 0;
  }

  else
  {
    v324 = v318 == 1;
  }

  if (v320)
  {
    v325 = 0;
  }

  else
  {
    v325 = v318 == 2;
  }

  v326 = v320 == 1 && v318 == 0;
  v327 = v320 == 1 && v318 == 1;
  v328 = v320 == 1 && v318 == 2;
  v329 = v320 == 2 && v318 == 0;
  if (v320 == 2)
  {
    v330 = v318 == 2;
  }

  else
  {
    v322 = 0;
    v330 = 0;
  }

  v331 = v323 == 0;
  v633 = v323 == 0;
  v598 = v329;
  if (v323)
  {
    v332 = 0;
  }

  else
  {
    v332 = v329;
  }

  v629 = v332;
  v589 = v322;
  v333 = v331 && v322;
  v625 = v333;
  v595 = v324;
  v334 = v331 && v324;
  v622 = v334;
  v601 = v326;
  v335 = v331 && v326;
  v619 = v335;
  v592 = v327;
  v336 = v331 && v327;
  v616 = v336;
  v586 = v325;
  v337 = v331 && v325;
  v613 = v337;
  v583 = v328;
  v338 = v331 && v328;
  v610 = v338;
  v580 = v330;
  v339 = v331 && v330;
  v607 = v339;
  v340 = v315 != 1;
  v341 = v315 != 2;
  if (v316)
  {
    v342 = 1;
  }

  else
  {
    v342 = v340;
  }

  if (v316)
  {
    v343 = 1;
  }

  else
  {
    v343 = v341;
  }

  v344 = v316 != 1 || v319;
  v345 = v316 != 1 || v340;
  v346 = v316 != 1 || v341;
  if (v316 != 2)
  {
    v319 = 1;
    v340 = 1;
    v341 = 1;
  }

  v347 = v318 | v320;
  if (v317)
  {
    v348 = 1;
  }

  else
  {
    v348 = v344;
  }

  if (v317)
  {
    v349 = 1;
  }

  else
  {
    v349 = v319;
  }

  if (v317)
  {
    v350 = 1;
  }

  else
  {
    v350 = v342;
  }

  if (v317)
  {
    v351 = 1;
  }

  else
  {
    v351 = v345;
  }

  if (v317)
  {
    v352 = 1;
  }

  else
  {
    v352 = v340;
  }

  if (v317)
  {
    v353 = 1;
  }

  else
  {
    v353 = v343;
  }

  v641 = v353;
  if (v317)
  {
    v354 = 1;
  }

  else
  {
    v354 = v346;
  }

  v651 = v354;
  if (v317)
  {
    v355 = 1;
  }

  else
  {
    v355 = v341;
  }

  v657 = v355;
  v356 = v317 != 1 || v321;
  if (v317 == 1)
  {
    v357 = v344;
  }

  else
  {
    v357 = 1;
  }

  v358 = v317 != 1 || v319;
  if (v317 == 1)
  {
    v359 = v342;
  }

  else
  {
    v359 = 1;
  }

  if (v317 == 1)
  {
    v360 = v345;
  }

  else
  {
    v360 = 1;
  }

  v361 = v317 != 1 || v340;
  if (v317 == 1)
  {
    v362 = v343;
  }

  else
  {
    v362 = 1;
  }

  if (v317 == 1)
  {
    v363 = v346;
  }

  else
  {
    v363 = 1;
  }

  v364 = v317 != 1 || v341;
  v365 = v317 == 2;
  v366 = v317 != 2 || v321;
  if (v365)
  {
    v367 = v344;
  }

  else
  {
    v367 = 1;
  }

  if (v365)
  {
    v368 = v345;
  }

  else
  {
    v319 = 1;
    v342 = 1;
    v368 = 1;
  }

  v369 = !v365 || v340;
  if (v365)
  {
    v370 = v341;
  }

  else
  {
    v343 = 1;
    v346 = 1;
    v370 = 1;
  }

  v371 = v347 == 0;
  v372 = v356 ^ 1;
  v373 = v366 ^ 1;
  v374 = v348 ^ 1;
  v375 = v367 ^ 1;
  v376 = v349 ^ 1;
  v377 = v358 ^ 1;
  v378 = !v319;
  v379 = v350 ^ 1;
  v380 = v359 ^ 1;
  v381 = v342 ^ 1;
  v382 = v360 ^ 1;
  v383 = v368 ^ 1;
  v384 = v352 ^ 1;
  v385 = v361 ^ 1;
  v386 = v369 ^ 1;
  v387 = v641 ^ 1;
  v388 = v343 ^ 1;
  v389 = v651 ^ 1;
  v390 = v363 ^ 1;
  v391 = v346 ^ 1;
  v392 = v657 ^ 1;
  v393 = v364 ^ 1;
  v394 = v370 ^ 1;
  v395 = v371;
  v647 = v395;
  v604 = v372;
  if (!v371)
  {
    v372 = 0;
  }

  v642 = v372;
  v577 = v373;
  if (!v371)
  {
    v373 = 0;
  }

  v574 = v373;
  v508 = v374;
  if (v371)
  {
    result = v374;
  }

  else
  {
    result = 0;
  }

  v511 = v357 ^ 1;
  if (v371)
  {
    v396 = v357 ^ 1;
  }

  else
  {
    v396 = 0;
  }

  v514 = v375;
  if (v371)
  {
    v397 = v375;
  }

  else
  {
    v397 = 0;
  }

  v517 = v376;
  if (v371)
  {
    v398 = v376;
  }

  else
  {
    v398 = 0;
  }

  v520 = v377;
  if (v371)
  {
    v399 = v377;
  }

  else
  {
    v399 = 0;
  }

  v523 = v378;
  if (v371)
  {
    v400 = v378;
  }

  else
  {
    v400 = 0;
  }

  v526 = v379;
  if (v371)
  {
    v401 = v379;
  }

  else
  {
    v401 = 0;
  }

  v529 = v380;
  if (v371)
  {
    v402 = v380;
  }

  else
  {
    v402 = 0;
  }

  v532 = v381;
  if (v371)
  {
    v403 = v381;
  }

  else
  {
    v403 = 0;
  }

  v535 = v351 ^ 1;
  if (v371)
  {
    v404 = v351 ^ 1;
  }

  else
  {
    v404 = 0;
  }

  v538 = v382;
  if (v371)
  {
    v405 = v382;
  }

  else
  {
    v405 = 0;
  }

  v541 = v383;
  if (v371)
  {
    v406 = v383;
  }

  else
  {
    v406 = 0;
  }

  v544 = v384;
  if (v371)
  {
    v407 = v384;
  }

  else
  {
    v407 = 0;
  }

  v547 = v385;
  if (v371)
  {
    v408 = v385;
  }

  else
  {
    v408 = 0;
  }

  v550 = v386;
  if (v371)
  {
    v409 = v386;
  }

  else
  {
    v409 = 0;
  }

  v553 = v387;
  if (v371)
  {
    v410 = v387;
  }

  else
  {
    v410 = 0;
  }

  v556 = v362 ^ 1;
  if (v371)
  {
    v411 = v362 ^ 1;
  }

  else
  {
    v411 = 0;
  }

  v562 = v388;
  if (v371)
  {
    v412 = v388;
  }

  else
  {
    v412 = 0;
  }

  v568 = v651 ^ 1;
  if (!v371)
  {
    v389 = 0;
  }

  v559 = v389;
  if (v371)
  {
    v413 = v390;
  }

  else
  {
    v413 = 0;
  }

  v565 = v413;
  if (v371)
  {
    v414 = v391;
  }

  else
  {
    v414 = 0;
  }

  v571 = v414;
  if (v371)
  {
    v415 = v657 ^ 1;
  }

  else
  {
    v415 = 0;
  }

  if (v371)
  {
    v416 = v393;
  }

  else
  {
    v416 = 0;
  }

  if (v371)
  {
    v417 = v370 ^ 1;
  }

  else
  {
    v417 = 0;
  }

  if (*(v659 + 22) != 3)
  {
    LOWORD(v652) = 3328;
    LOWORD(v658) = 7;
    goto LABEL_897;
  }

  v418 = v398;
  LOWORD(v652) = 3328;
  LOWORD(v658) = 7;
  if (*(v659 + 21) != 166)
  {
LABEL_897:
    LOWORD(v390) = 0;
    v421 = 0;
    LOWORD(v422) = 0;
    goto LABEL_2415;
  }

  v419 = v399;
  v502 = v390;
  v505 = v415;
  v420 = *(v659 + 92);
  LOWORD(v390) = 0;
  v421 = 0;
  LOWORD(v422) = 0;
  if ((v420 & 0x100000000) == 0)
  {
    v423 = v397;
    v499 = v393;
    v424 = v659[100];
    v658 = (v420 >> 28) & 0xFFFFFFE0 | (8 * (v424 & 3)) | 7;
    v425 = ((2 * v424) | (*(v659 + 52) << 12)) & 0x10F8 | (v659[56] << 15);
    v426 = v659[80];
    v652 = v425 & 0xFFFF9FFF | (((v426 >> 7) & 1) << 14) | (((v426 >> 6) & 1) << 13) | 0xD00;
    v390 = (v426 << 10) & 0x38000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10);
    if ((v633 & v647) == 1)
    {
      LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10);
    }

    else if (v629)
    {
      LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 4;
    }

    else if (v625)
    {
      LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 8;
    }

    else if (v622)
    {
      LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0xC;
    }

    else if (v619)
    {
      LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x10;
    }

    else if (v616)
    {
      LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x14;
    }

    else if (v613)
    {
      LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x18;
    }

    else if (v610)
    {
      LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x1C;
    }

    else if (v607)
    {
      LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x20;
    }

    else if (v642)
    {
      LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x24;
    }

    else if ((v604 & v601) != 0)
    {
      LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x28;
    }

    else if ((v604 & v598) != 0)
    {
      LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x2C;
    }

    else if ((v604 & v595) != 0)
    {
      LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x30;
    }

    else if ((v604 & v592) != 0)
    {
      LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x34;
    }

    else
    {
      v428 = result;
      result = v401;
      if ((v604 & v589) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x38;
      }

      else if ((v604 & v586) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x3C;
      }

      else if ((v604 & v583) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x40;
      }

      else if ((v604 & v580) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x44;
      }

      else if (v574)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x48;
      }

      else if ((v577 & v601) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x4C;
      }

      else if ((v577 & v598) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x50;
      }

      else if ((v577 & v595) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x54;
      }

      else if ((v577 & v592) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x58;
      }

      else if ((v577 & v589) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x5C;
      }

      else if ((v577 & v586) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x60;
      }

      else if ((v577 & v583) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x64;
      }

      else if ((v577 & v580) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x68;
      }

      else if (v428)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x6C;
      }

      else if ((v508 & v601) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x70;
      }

      else if ((v508 & v598) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x74;
      }

      else if ((v508 & v595) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x78;
      }

      else if ((v508 & v592) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x7C;
      }

      else if ((v508 & v589) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x80;
      }

      else if ((v508 & v586) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x84;
      }

      else if ((v508 & v583) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x88;
      }

      else if ((v508 & v580) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x8C;
      }

      else if (v396)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x90;
      }

      else if ((v511 & v601) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x94;
      }

      else if ((v511 & v598) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x98;
      }

      else if ((v511 & v595) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x9C;
      }

      else if ((v511 & v592) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0xA0;
      }

      else if ((v511 & v589) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0xA4;
      }

      else if ((v511 & v586) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0xA8;
      }

      else if ((v511 & v583) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0xAC;
      }

      else if ((v511 & v580) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0xB0;
      }

      else if (v423)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0xB4;
      }

      else if ((v514 & v601) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0xB8;
      }

      else if ((v514 & v598) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0xBC;
      }

      else if ((v514 & v595) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0xC0;
      }

      else if ((v514 & v592) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0xC4;
      }

      else if ((v514 & v589) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0xC8;
      }

      else if ((v514 & v586) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0xCC;
      }

      else if ((v514 & v583) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0xD0;
      }

      else if ((v514 & v580) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0xD4;
      }

      else if (v418)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0xD8;
      }

      else if ((v517 & v601) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0xDC;
      }

      else if ((v517 & v598) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0xE0;
      }

      else if ((v517 & v595) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0xE4;
      }

      else if ((v517 & v592) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0xE8;
      }

      else if ((v517 & v589) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0xEC;
      }

      else if ((v517 & v586) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0xF0;
      }

      else if ((v517 & v583) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0xF4;
      }

      else if ((v517 & v580) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0xF8;
      }

      else if (v419)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0xFC;
      }

      else if ((v520 & v601) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x100;
      }

      else if ((v520 & v598) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x104;
      }

      else if ((v520 & v595) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x108;
      }

      else if ((v520 & v592) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x10C;
      }

      else if ((v520 & v589) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x110;
      }

      else if ((v520 & v586) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x114;
      }

      else if ((v520 & v583) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x118;
      }

      else if ((v520 & v580) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x11C;
      }

      else if (v400)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x120;
      }

      else if ((v523 & v601) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x124;
      }

      else if ((v523 & v598) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x128;
      }

      else if ((v523 & v595) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x12C;
      }

      else if ((v523 & v592) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x130;
      }

      else if ((v523 & v589) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x134;
      }

      else if ((v523 & v586) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x138;
      }

      else if ((v523 & v583) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x13C;
      }

      else if ((v523 & v580) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x140;
      }

      else if (v401)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x144;
      }

      else if ((v526 & v601) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x148;
      }

      else if ((v526 & v598) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x14C;
      }

      else if ((v526 & v595) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x150;
      }

      else if ((v526 & v592) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x154;
      }

      else if ((v526 & v589) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x158;
      }

      else if ((v526 & v586) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x15C;
      }

      else if ((v526 & v583) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x160;
      }

      else if ((v526 & v580) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x164;
      }

      else if (v402)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x168;
      }

      else if ((v529 & v601) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x16C;
      }

      else if ((v529 & v598) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x170;
      }

      else if ((v529 & v595) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x174;
      }

      else if ((v529 & v592) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x178;
      }

      else if ((v529 & v589) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x17C;
      }

      else if ((v529 & v586) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x180;
      }

      else if ((v529 & v583) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x184;
      }

      else if ((v529 & v580) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x188;
      }

      else if (v403)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x18C;
      }

      else if ((v532 & v601) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x190;
      }

      else if ((v532 & v598) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x194;
      }

      else if ((v532 & v595) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x198;
      }

      else if ((v532 & v592) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x19C;
      }

      else if ((v532 & v589) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x1A0;
      }

      else if ((v532 & v586) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x1A4;
      }

      else if ((v532 & v583) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x1A8;
      }

      else if ((v532 & v580) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x1AC;
      }

      else if (v404)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x1B0;
      }

      else if ((v535 & v601) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x1B4;
      }

      else if ((v535 & v598) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x1B8;
      }

      else if ((v535 & v595) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x1BC;
      }

      else if ((v535 & v592) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x1C0;
      }

      else if ((v535 & v589) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x1C4;
      }

      else if ((v535 & v586) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x1C8;
      }

      else if ((v535 & v583) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x1CC;
      }

      else if ((v535 & v580) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x1D0;
      }

      else if (v405)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x1D4;
      }

      else if ((v538 & v601) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x1D8;
      }

      else if ((v538 & v598) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x1DC;
      }

      else if ((v538 & v595) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x1E0;
      }

      else if ((v538 & v592) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x1E4;
      }

      else if ((v538 & v589) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x1E8;
      }

      else if ((v538 & v586) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x1EC;
      }

      else if ((v538 & v583) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x1F0;
      }

      else if ((v538 & v580) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x1F4;
      }

      else if (v406)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x1F8;
      }

      else if ((v541 & v601) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x1FC;
      }

      else if ((v541 & v598) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x200;
      }

      else if ((v541 & v595) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x204;
      }

      else if ((v541 & v592) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x208;
      }

      else if ((v541 & v589) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x20C;
      }

      else if ((v541 & v586) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x210;
      }

      else if ((v541 & v583) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x214;
      }

      else if ((v541 & v580) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x218;
      }

      else if (v407)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x21C;
      }

      else if ((v544 & v601) != 0)
      {
        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x220;
      }

      else
      {
        if ((v544 & v598) == 0)
        {
          if ((v544 & v595) != 0)
          {
            v430 = -118;
          }

          else if ((v544 & v592) != 0)
          {
            v430 = -117;
          }

          else if ((v544 & v589) != 0)
          {
            v430 = -116;
          }

          else if ((v544 & v586) != 0)
          {
            v430 = -115;
          }

          else if ((v544 & v583) != 0)
          {
            v430 = -114;
          }

          else if ((v544 & v580) != 0)
          {
            v430 = -113;
          }

          else if (v408)
          {
            v430 = -112;
          }

          else if ((v547 & v601) != 0)
          {
            v430 = -111;
          }

          else if ((v547 & v598) != 0)
          {
            v430 = -110;
          }

          else if ((v547 & v595) != 0)
          {
            v430 = -109;
          }

          else if ((v547 & v592) != 0)
          {
            v430 = -108;
          }

          else if ((v547 & v589) != 0)
          {
            v430 = -107;
          }

          else if ((v547 & v586) != 0)
          {
            v430 = -106;
          }

          else if ((v547 & v583) != 0)
          {
            v430 = -105;
          }

          else if ((v547 & v580) != 0)
          {
            v430 = -104;
          }

          else if (v409)
          {
            v430 = -103;
          }

          else if ((v550 & v601) != 0)
          {
            v430 = -102;
          }

          else if ((v550 & v598) != 0)
          {
            v430 = -101;
          }

          else if ((v550 & v595) != 0)
          {
            v430 = -100;
          }

          else if ((v550 & v592) != 0)
          {
            v430 = -99;
          }

          else if ((v550 & v589) != 0)
          {
            v430 = -98;
          }

          else if ((v550 & v586) != 0)
          {
            v430 = -97;
          }

          else if ((v550 & v583) != 0)
          {
            v430 = -96;
          }

          else if ((v550 & v580) != 0)
          {
            v430 = -95;
          }

          else if (v410)
          {
            v430 = -94;
          }

          else if ((v553 & v601) != 0)
          {
            v430 = -93;
          }

          else if ((v553 & v598) != 0)
          {
            v430 = -92;
          }

          else if ((v553 & v595) != 0)
          {
            v430 = -91;
          }

          else if ((v553 & v592) != 0)
          {
            v430 = -90;
          }

          else if ((v553 & v589) != 0)
          {
            v430 = -89;
          }

          else if ((v553 & v586) != 0)
          {
            v430 = -88;
          }

          else if ((v553 & v583) != 0)
          {
            v430 = -87;
          }

          else if ((v553 & v580) != 0)
          {
            v430 = -86;
          }

          else if (v411)
          {
            v430 = -85;
          }

          else if ((v556 & v601) != 0)
          {
            v430 = -84;
          }

          else if ((v556 & v598) != 0)
          {
            v430 = -83;
          }

          else if ((v556 & v595) != 0)
          {
            v430 = -82;
          }

          else if ((v556 & v592) != 0)
          {
            v430 = -81;
          }

          else if ((v556 & v589) != 0)
          {
            v430 = -80;
          }

          else if ((v556 & v586) != 0)
          {
            v430 = -79;
          }

          else if ((v556 & v583) != 0)
          {
            v430 = -78;
          }

          else if ((v556 & v580) != 0)
          {
            v430 = -77;
          }

          else if (v412)
          {
            v430 = -76;
          }

          else if ((v562 & v601) != 0)
          {
            v430 = -75;
          }

          else if ((v562 & v598) != 0)
          {
            v430 = -74;
          }

          else if ((v562 & v595) != 0)
          {
            v430 = -73;
          }

          else if ((v562 & v592) != 0)
          {
            v430 = -72;
          }

          else if ((v562 & v589) != 0)
          {
            v430 = -71;
          }

          else if ((v562 & v586) != 0)
          {
            v430 = -70;
          }

          else if ((v562 & v583) != 0)
          {
            v430 = -69;
          }

          else if ((v562 & v580) != 0)
          {
            v430 = -68;
          }

          else if (v559)
          {
            v430 = -67;
          }

          else if ((v568 & v601) != 0)
          {
            v430 = -66;
          }

          else if ((v568 & v598) != 0)
          {
            v430 = -65;
          }

          else
          {
            if ((v568 & v595) != 0)
            {
              LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x300;
              goto LABEL_2414;
            }

            if ((v568 & v592) != 0)
            {
              v430 = -63;
            }

            else if ((v568 & v589) != 0)
            {
              v430 = -62;
            }

            else if ((v568 & v586) != 0)
            {
              v430 = -61;
            }

            else if ((v568 & v583) != 0)
            {
              v430 = -60;
            }

            else if ((v568 & v580) != 0)
            {
              v430 = -59;
            }

            else if (v565)
            {
              v430 = -58;
            }

            else if ((v502 & v601) != 0)
            {
              v430 = -57;
            }

            else if ((v502 & v598) != 0)
            {
              v430 = -56;
            }

            else if ((v502 & v595) != 0)
            {
              v430 = -55;
            }

            else if ((v502 & v592) != 0)
            {
              v430 = -54;
            }

            else if ((v502 & v589) != 0)
            {
              v430 = -53;
            }

            else if ((v502 & v586) != 0)
            {
              v430 = -52;
            }

            else if ((v502 & v583) != 0)
            {
              v430 = -51;
            }

            else if ((v502 & v580) != 0)
            {
              v430 = -50;
            }

            else if (v571)
            {
              v430 = -49;
            }

            else if ((v391 & v601) != 0)
            {
              v430 = -48;
            }

            else if ((v391 & v598) != 0)
            {
              v430 = -47;
            }

            else if ((v391 & v595) != 0)
            {
              v430 = -46;
            }

            else if ((v391 & v592) != 0)
            {
              v430 = -45;
            }

            else if ((v391 & v589) != 0)
            {
              v430 = -44;
            }

            else if ((v391 & v586) != 0)
            {
              v430 = -43;
            }

            else if ((v391 & v583) != 0)
            {
              v430 = -42;
            }

            else if ((v391 & v580) != 0)
            {
              v430 = -41;
            }

            else if (v505)
            {
              v430 = -40;
            }

            else if ((v392 & v601) != 0)
            {
              v430 = -39;
            }

            else if ((v392 & v598) != 0)
            {
              v430 = -38;
            }

            else if ((v392 & v595) != 0)
            {
              v430 = -37;
            }

            else if ((v392 & v592) != 0)
            {
              v430 = -36;
            }

            else if ((v392 & v589) != 0)
            {
              v430 = -35;
            }

            else if ((v392 & v586) != 0)
            {
              v430 = -34;
            }

            else if ((v392 & v583) != 0)
            {
              v430 = -33;
            }

            else
            {
              if ((v392 & v580) != 0)
              {
                LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x380;
                goto LABEL_2414;
              }

              if (v416)
              {
                v430 = -31;
              }

              else if ((v499 & v601) != 0)
              {
                v430 = -30;
              }

              else if ((v499 & v598) != 0)
              {
                v430 = -29;
              }

              else if ((v499 & v595) != 0)
              {
                v430 = -28;
              }

              else if ((v499 & v592) != 0)
              {
                v430 = -27;
              }

              else if ((v499 & v589) != 0)
              {
                v430 = -26;
              }

              else if ((v499 & v586) != 0)
              {
                v430 = -25;
              }

              else if ((v499 & v583) != 0)
              {
                v430 = -24;
              }

              else if ((v499 & v580) != 0)
              {
                v430 = -23;
              }

              else if (v417)
              {
                v430 = -22;
              }

              else if ((v394 & v601) != 0)
              {
                v430 = -21;
              }

              else if ((v394 & v598) != 0)
              {
                v430 = -20;
              }

              else if ((v394 & v595) != 0)
              {
                v430 = -19;
              }

              else if ((v394 & v592) != 0)
              {
                v430 = -18;
              }

              else if ((v394 & v589) != 0)
              {
                v430 = -17;
              }

              else
              {
                if ((v394 & v586) != 0)
                {
                  LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x3C0;
                  goto LABEL_2414;
                }

                if ((v394 & v583) != 0)
                {
                  v430 = -15;
                }

                else
                {
                  if ((v394 & v580) == 0)
                  {
                    goto LABEL_2414;
                  }

                  v430 = -14;
                }
              }
            }
          }

          LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | (4 * v430);
          goto LABEL_2414;
        }

        LOWORD(v390) = (v426 << 10) & 0x8000 | (((v426 >> 4) & 1) << 14) | (((v426 >> 3) & 1) << 13) | (((v426 >> 2) & 1) << 12) | (((v426 >> 1) & 1) << 11) | ((v426 & 1) << 10) | 0x224;
      }
    }

LABEL_2414:
    v422 = v420 >> 16;
    v421 = *(v659 + 92);
  }

LABEL_2415:
  *(a3 + 10) = v658;
  *(a3 + 12) = v652;
  *(a3 + 14) = v390;
  *(a3 + 16) = v421;
  *(a3 + 18) = v422;
  return result;
}