uint64_t gleSetEnable_BLEND(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = 255;
  }

  else
  {
    v3 = 0;
  }

  if (v3 != *(result + 15120))
  {
    *(result + 15120) = v3;
    *(result + 1520) |= 2u;
    *(result + 28652) = 0;
    *(result + 1548) |= 0x40000u;
  }

  return result;
}

uint64_t glBlendFunc_Exec(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 28652);
  v4 = *(result + 29812);
  v5 = v4 & 0xFFFFFF00;
  if (a2 < 2)
  {
    goto LABEL_2;
  }

  if (a2 <= 0x8000)
  {
    if (a2 - 770 < 7)
    {
      goto LABEL_2;
    }

    if (a2 - 768 >= 2)
    {
      goto LABEL_35;
    }

    goto LABEL_32;
  }

  if (a2 - 32769 < 4)
  {
LABEL_32:
    if (*(result + 32501) == 2)
    {
      goto LABEL_35;
    }

    goto LABEL_2;
  }

  if (a2 - 35065 >= 3 && a2 != 34185)
  {
    goto LABEL_35;
  }

  v5 = v4 | 0xFF;
LABEL_2:
  if (a3 < 2)
  {
LABEL_3:
    if (v4 != v5)
    {
      *(result + 29812) = v5;
      *v3 = 0;
      *(result + 1548) |= 0x80000u;
    }

    v6 = 0;
    v7 = (a2 << 32) | (a3 << 48) | (a3 << 16) | a2;
    v8 = (result + 15008);
    do
    {
      v10 = *v8;
      v8 = (v8 + 12);
      v9 = v10;
    }

    while (v10 == v7 && v6++ < 7);
    if (v9 != v7)
    {
      for (i = 0; i != 96; i += 12)
      {
        *(result + 15008 + i) = v7;
      }

      *(result + 15121) &= ~1u;
      *(result + 1520) |= 2u;
      *v3 = 0;
      *(result + 1548) |= 0x40000u;
    }

    return result;
  }

  if (a3 <= 0x8000)
  {
    if (a3 - 768 > 8)
    {
      goto LABEL_35;
    }

    if (((1 << a3) & 0x13F) != 0)
    {
      goto LABEL_3;
    }

    goto LABEL_34;
  }

  if (a3 - 32769 < 4)
  {
LABEL_34:
    if (*(result + 32501) != 2)
    {
      goto LABEL_3;
    }

    goto LABEL_35;
  }

  if (a3 - 35065 < 3 || a3 == 34185)
  {
    v5 |= 0xFFu;
    goto LABEL_3;
  }

LABEL_35:
  if (!*(result + 29832))
  {
    *(result + 29832) = 1280;
  }

  return result;
}

uint64_t glGetError_Exec(uint64_t a1)
{
  v2 = a1 + 28672;
  result = *(a1 + 29832);
  *(v2 + 1160) = 0;
  if (!result)
  {
    v4 = (a1 + 32512);
    v5 = -1;
    while (++v5 < *(v2 + 3824))
    {
      v6 = v4 + 209;
      result = (*(v4[206] + 1240))(*v4);
      v4 = v6;
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t glDisable_Exec(uint64_t result, int a2)
{
  v2 = *(result + 19304) + 32 * ((a2 + 7) ^ BYTE1(a2));
  do
  {
    if (*v2 == a2)
    {
      return (*(v2 + 8))();
    }

    v2 = *(v2 + 16);
  }

  while (v2);
  if (!*(result + 29832))
  {
    *(result + 29832) = 1280;
  }

  return result;
}

unint64_t glClear_Exec(unint64_t result, uint64_t a2, double a3, double a4, double a5)
{
  v5 = result + 29732;
  if ((a2 & 0xFFFFB8FF) != 0)
  {
    if (!*(result + 29832))
    {
      *(result + 29832) = 1281;
    }
  }

  else
  {
    v6 = a2;
    v7 = result;
    v8 = result + 15342;
    if ((a2 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    if (*(*(result + 29480) + 52) && !*(result + 17984) && !*(result + 28968) && !*(result + 28960))
    {
      result = gleAccumFast(result, 5376, 0.0);
    }

    v6 &= 0x4500u;
    if (v6)
    {
LABEL_9:
      if ((*(v7 + 1540) & 4) != 0)
      {
        result = gleGenerateMatrixIdentifier(v7, v7 + 9488, a3, a4, a5);
        *(v8 + 3810) = *(v8 + 3810) & 0xFFFFFEFF | ((result != -1074791426) << 8);
        *v5 = result;
      }

      if ((*(v5 + 68) & 0x743C0478) != 0)
      {
        result = gleUpdateDrawFramebufferState(v7, a3, a4, a5);
        if (result)
        {
          if (result != 16711680 && !*(v5 + 100))
          {
            *(v5 + 100) = result;
          }

          return result;
        }
      }

      if (*(v5 + 98) != 7168 || *(v8 + 2642))
      {
        return result;
      }

      if (*(*(v7 + 29480) + 110))
      {
        v9 = *v8 & 0xFBFF;
        if (v6 < 0x4000)
        {
          v9 = *v8 & 0xFB00;
        }

        if ((v6 & 0x100) == 0)
        {
          v9 &= 0xFEFFu;
        }

        if ((v6 & 0x400) != 0)
        {
          if ((v9 & 0x200) != 0)
          {
LABEL_45:
            result = (*(*(v7 + 29496) + 208))(*(v7 + 29464));
LABEL_46:
            v10 = *(*(v7 + 19296) + 316);
            if (*(v5 + 84) != v10)
            {
              if (*(v7 + 28960))
              {
                result = gleInvalidateCurrentDrawFramebufferTextures(v7);
                v10 = *(*(v7 + 19296) + 316);
              }

              *(v5 + 84) = v10;
            }

            return result;
          }
        }

        else
        {
          v9 &= ~0x200u;
        }

        if (!v9)
        {
          return result;
        }

        goto LABEL_45;
      }

      if (v6 >= 0x4000)
      {
        if (*v8)
        {
          v6 = v6;
        }

        else
        {
          v6 &= 0x700u;
        }

        if ((v6 & 0x100) == 0)
        {
LABEL_24:
          if ((v6 & 0x400) == 0)
          {
            goto LABEL_43;
          }

LABEL_41:
          if ((*v8 & 0x200) != 0)
          {
LABEL_44:
            result = (**(v7 + 29488))(*(v7 + 29464), v6);
            goto LABEL_46;
          }

          v6 = v6 & 0xFFFFFBFF;
LABEL_43:
          if (!v6)
          {
            return result;
          }

          goto LABEL_44;
        }
      }

      else if ((v6 & 0x100) == 0)
      {
        goto LABEL_24;
      }

      if ((*v8 & 0x100) != 0)
      {
        v6 = v6;
      }

      else
      {
        v6 = v6 & 0xFFFFFEFF;
      }

      if ((v6 & 0x400) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    }
  }

  return result;
}

uint64_t glPushMatrix_Exec(uint64_t result)
{
  v1 = *(result + 20484);
  if (v1 < 24)
  {
    v3 = *(result + 20000 + 4 * v1);
    v4 = (*(result + 19992) + 4 * v1);
    if (v3 >= v4[1] - *v4)
    {
      if (!*(result + 29832))
      {
        v2 = 1283;
        goto LABEL_12;
      }
    }

    else
    {
      v5 = *v4 + v3;
      v6 = (result + (v1 << 6));
      v7 = (*(result + 19288) + ((2 * v5) << 6));
      *v7 = v6[585];
      v7[1] = v6[586];
      v7[2] = v6[587];
      v7[3] = v6[588];
      if ((*(result + 1544) & (1 << v1)) != 0)
      {
        *(*(result + 19288) + ((2 * v5) << 6) + 64) = 2143289344;
      }

      else
      {
        v8 = (*(result + 19288) + (v5 << 7));
        v8[4] = v6[681];
        v8[5] = v6[682];
        v8[6] = v6[683];
        v8[7] = v6[684];
        v9 = 1 << v5;
        v10 = *(result + 29520);
        v11 = v5 >> 5;
        if ((*(result + 12520) & (1 << v1)) != 0)
        {
          v12 = *(v10 + 4 * v11) | v9;
        }

        else
        {
          v12 = *(v10 + 4 * v11) & ~v9;
        }

        *(v10 + 4 * v11) = v12;
      }

      *(result + 20000 + 4 * v1) = v3 + 1;
    }
  }

  else if (!*(result + 29832))
  {
    v2 = 1282;
LABEL_12:
    *(result + 29832) = v2;
  }

  return result;
}

uint64_t gleModelMatInvert(uint64_t a1)
{
  v2 = (a1 + 28652);
  *(a1 + 1544) &= ~0x10u;
  gleInvertMatrix(a1, 4);
  if (*(a1 + 12517))
  {
    v6 = 0;
    v7 = a1 + 11152;
    *&v3 = 1.0 / sqrtf(((*(a1 + 11160) * *(a1 + 11160)) + (*(a1 + 11176) * *(a1 + 11176))) + (*(a1 + 11192) * *(a1 + 11192)));
    do
    {
      v4 = vmulq_n_f32(*(v7 + v6), *&v3);
      *(v7 + v6) = v4;
      v6 += 16;
    }

    while (v6 != 64);
    *(a1 + 12512) = LODWORD(v3);
    v8 = *(a1 + 19248);
    if (v8)
    {
      v9 = *(v8 + 3794);
      if (v9 <= 0x3FF)
      {
        *(a1 + ((v9 >> 3) & 0x1FFC) + 1552) |= 1 << v9;
        *v2 = 0;
        *(a1 + 1532) |= 0x800000u;
      }
    }

    v10 = *(a1 + 19272);
    if (v10)
    {
      v11 = *(v10 + 3794);
      if (v11 <= 0x3FF)
      {
        *(a1 + ((v11 >> 3) & 0x1FFC) + 1936) |= 1 << v11;
        *v2 = 0;
        *(a1 + 1532) |= 0x4000000u;
      }
    }

    v12 = *(a1 + 19280);
    if (v12)
    {
      v13 = *(v12 + 3794);
      if (v13 <= 0x3FF)
      {
        *(a1 + ((v13 >> 3) & 0x1FFC) + 2064) |= 1 << v13;
        *v2 = 0;
        *(a1 + 1532) |= 0x8000000u;
      }
    }
  }

  else
  {
    LODWORD(v3) = *(a1 + 12512);
    v4.i32[0] = 1.0;
    if (*&v3 != 1.0)
    {
      v14 = *(a1 + 19248);
      if (v14)
      {
        v15 = *(v14 + 3794);
        if (v15 <= 0x3FF)
        {
          *(a1 + ((v15 >> 3) & 0x1FFC) + 1552) |= 1 << v15;
          *v2 = 0;
          *(a1 + 1532) |= 0x800000u;
        }
      }

      v16 = *(a1 + 19272);
      if (v16)
      {
        v17 = *(v16 + 3794);
        if (v17 <= 0x3FF)
        {
          *(a1 + ((v17 >> 3) & 0x1FFC) + 1936) |= 1 << v17;
          *v2 = 0;
          *(a1 + 1532) |= 0x4000000u;
        }
      }

      v18 = *(a1 + 19280);
      if (v18)
      {
        v19 = *(v18 + 3794);
        if (v19 <= 0x3FF)
        {
          *(a1 + ((v19 >> 3) & 0x1FFC) + 2064) |= 1 << v19;
          *v2 = 0;
          *(a1 + 1532) |= 0x8000000u;
        }
      }

      *(a1 + 12512) = 1065353216;
    }
  }

  result = gleGenerateMatrixIdentifier(a1, a1 + 11152, v3, *v4.i64, v5);
  v21 = v2[269];
  v22 = v21 & 0x3FCFF3FC;
  v23 = (v21 & 0x3FCFF3FC) == 1070593020;
  v24 = (result == -1074791426) ^ (v21 == -1074791426);
  if (v22 != 1070593020)
  {
    v24 = 1;
  }

  if ((~result & 0x3FCFF3FC) != 0)
  {
    v24 = v23;
  }

  if (v24 == 1)
  {
    *v2 = 0;
    *(a1 + 1548) |= 0x10010u;
  }

  v2[269] = result;
  return result;
}

uint64_t glPixelZoom_Exec(uint64_t result, float a2, float a3)
{
  *(result + 18440) = a2;
  *(result + 18444) = a3;
  *(result + 19160) = *(result + 19160) & 0xFFFF3FFF | ((a2 != 1.0) << 14) | ((a3 != 1.0) << 15);
  return result;
}

int8x8_t glLoadMatrixf_Exec(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 28652);
  v3 = a1 + 20484;
  if (*(a1 + 20484) < 24)
  {
    v5 = (a1 + 1540);
    gleLoadMatrixf(a2, *(a1 + 19976));
    v6 = *(v3 + 4);
    *(a1 + 1528) |= v6;
    *v2 = 0;
    result = vorr_s8(*v5, vdup_n_s32(v6));
    *v5 = result;
  }

  else if (!*(a1 + 29832))
  {
    *(a1 + 29832) = 1282;
  }

  return result;
}

float gleLoadMatrixf(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 4) = *(a1 + 4);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 20) = *(a1 + 20);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 28) = *(a1 + 28);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 36) = *(a1 + 36);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 44) = *(a1 + 44);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 52) = *(a1 + 52);
  *(a2 + 56) = *(a1 + 56);
  result = *(a1 + 60);
  *(a2 + 60) = result;
  return result;
}

uint64_t glPopMatrix_Exec(uint64_t result, double a2, double a3, double a4)
{
  v4 = (result + 28652);
  v5 = *(result + 20484);
  if (v5 >= 24)
  {
    if (*(result + 29832))
    {
      return result;
    }

    v6 = 1282;
LABEL_11:
    *(result + 29832) = v6;
    return result;
  }

  v7 = result;
  v8 = *(result + 20000 + 4 * v5);
  if (v8 <= 0)
  {
    if (*(result + 29832))
    {
      return result;
    }

    v6 = 1284;
    goto LABEL_11;
  }

  v9 = *(*(result + 19992) + 4 * v5);
  v10 = v8 - 1;
  *(result + 20000 + 4 * v5) = v10;
  v11 = v9 + v10;
  v12 = (*(result + 19288) + ((2 * (v9 + v10)) << 6));
  v13 = (result + (v5 << 6));
  v13[585] = *v12;
  v13[586] = v12[1];
  v13[587] = v12[2];
  v13[588] = v12[3];
  v14 = *(result + 20488);
  *(result + 1528) |= v14;
  *v4 = 0;
  *(result + 1540) |= v14;
  if ((v14 & 0xFFFFFC & *(result + 2216)) != 0)
  {
    v15 = *(result + 19288) + (v11 << 7);
    v17 = *(v15 + 64);
    v16 = (v15 + 64);
    if (v17 != 2143289344)
    {
      v13[681] = *v16;
      v13[682] = v16[1];
      v13[683] = v16[2];
      v18 = v16[3];
      v13[684] = v18;
      v19 = 1 << v5;
      if ((*(*(result + 29520) + 4 * (v11 >> 5)) >> v11))
      {
        v20 = *(result + 12520) | v19;
      }

      else
      {
        v20 = *(result + 12520) & ~v19;
      }

      *(result + 12520) = v20;
      if (v5 == 4)
      {
        result = gleGenerateMatrixIdentifier(result, result + 11152, *&v18, a3, a4);
        v21 = v4[269];
        v22 = v21 & 0x3FCFF3FC;
        v23 = (v21 & 0x3FCFF3FC) == 1070593020;
        v24 = (result == -1074791426) ^ (v21 == -1074791426);
        if (v22 != 1070593020)
        {
          v24 = 1;
        }

        if ((~result & 0x3FCFF3FC) != 0)
        {
          v24 = v23;
        }

        if (v24 == 1)
        {
          *(v7 + 1548) |= 0x10010u;
        }

        v4[269] = result;
      }

      *(v7 + 1544) &= ~(v14 & 0xFFFFFC);
      v14 &= 0xFF000003;
    }
  }

  *v4 = 0;
  *(v7 + 1544) |= v14;
  return result;
}

uint64_t gleTexLevelStorage(uint64_t result, unsigned int a2, unsigned int a3, __int16 *a4, _WORD *a5)
{
  v5 = a3 & 0xFFFFFFFE;
  if (a2 == 34233 && v5 == 34234)
  {
    v6 = -31303;
LABEL_7:
    *a4 = v6;
LABEL_22:
    *a5 = a3;
    return result;
  }

  if (a2 == 35359 && v5 == 34234)
  {
    v6 = -30177;
    goto LABEL_7;
  }

  v8 = a2 == 37883 || a2 - 35429 < 2;
  if (a3 == 5121 && v8)
  {
    goto LABEL_16;
  }

  if (a2 == 37902 && a3 == 5121)
  {
    v9 = -27634;
LABEL_20:
    *a4 = v9;
    goto LABEL_21;
  }

  v11 = a2 - 35431 < 0xE || a2 >> 1 == 18942;
  if (a3 == 5121 && v11 || a2 - 37875 <= 5 && a3 == 5121 || a2 - 37903 <= 1 && a3 == 5121)
  {
    goto LABEL_16;
  }

  if (result > 36193)
  {
    if (result > 37495)
    {
      switch(result)
      {
        case 37793:
          v9 = -32543;
          goto LABEL_20;
        case 37794:
        case 37795:
        case 37796:
        case 37797:
        case 37798:
        case 37799:
        case 37800:
        case 37801:
        case 37802:
        case 37803:
        case 37804:
        case 37805:
        case 37806:
        case 37807:
        case 37822:
        case 37823:
        case 37824:
        case 37825:
        case 37826:
        case 37827:
        case 37828:
        case 37829:
        case 37830:
        case 37831:
        case 37832:
        case 37833:
        case 37834:
        case 37835:
        case 37836:
        case 37837:
        case 37838:
        case 37839:
        case 37854:
        case 37855:
        case 37856:
        case 37857:
        case 37858:
        case 37859:
        case 37860:
        case 37861:
        case 37862:
        case 37863:
        case 37864:
        case 37865:
        case 37866:
        case 37867:
        case 37868:
        case 37869:
        case 37870:
        case 37871:
        case 37872:
        case 37873:
        case 37882:
          return result;
        case 37808:
        case 37809:
        case 37810:
        case 37811:
        case 37812:
        case 37813:
        case 37814:
        case 37815:
        case 37816:
        case 37817:
        case 37818:
        case 37819:
        case 37820:
        case 37821:
        case 37886:
        case 37887:
        case 37888:
        case 37889:
        case 37890:
        case 37891:
        case 37892:
        case 37893:
        case 37894:
        case 37895:
        case 37896:
        case 37897:
        case 37898:
        case 37899:
        case 37900:
        case 37901:
          goto LABEL_45;
        case 37840:
          LOWORD(a3) = 0;
          v6 = -27728;
          goto LABEL_7;
        case 37841:
          LOWORD(a3) = 0;
          v6 = -27727;
          goto LABEL_7;
        case 37842:
          LOWORD(a3) = 0;
          v6 = -27726;
          goto LABEL_7;
        case 37843:
          LOWORD(a3) = 0;
          v6 = -27725;
          goto LABEL_7;
        case 37844:
          LOWORD(a3) = 0;
          v6 = -27724;
          goto LABEL_7;
        case 37845:
          LOWORD(a3) = 0;
          v6 = -27723;
          goto LABEL_7;
        case 37846:
          LOWORD(a3) = 0;
          v6 = -27722;
          goto LABEL_7;
        case 37847:
          LOWORD(a3) = 0;
          v6 = -27721;
          goto LABEL_7;
        case 37848:
          LOWORD(a3) = 0;
          v6 = -27720;
          goto LABEL_7;
        case 37849:
          LOWORD(a3) = 0;
          v6 = -27719;
          goto LABEL_7;
        case 37850:
          LOWORD(a3) = 0;
          v6 = -27718;
          goto LABEL_7;
        case 37851:
          LOWORD(a3) = 0;
          v6 = -27717;
          goto LABEL_7;
        case 37852:
          LOWORD(a3) = 0;
          v6 = -27716;
          goto LABEL_7;
        case 37853:
          LOWORD(a3) = 0;
          v6 = -27715;
          goto LABEL_7;
        case 37874:
          *a4 = a2;
          LOWORD(a3) = -31896;
          goto LABEL_22;
        case 37875:
        case 37876:
        case 37877:
        case 37878:
        case 37879:
        case 37880:
        case 37883:
        case 37884:
        case 37885:
        case 37902:
        case 37903:
        case 37904:
          goto LABEL_16;
        case 37881:
          *a4 = a2;
          LOWORD(a3) = -27654;
          goto LABEL_22;
        default:
          if (result == 37496)
          {
            goto LABEL_45;
          }

          if (result != 37497)
          {
            return result;
          }

          LOWORD(a3) = 0;
          v6 = -28040;
          break;
      }

      goto LABEL_7;
    }

    if (result <= 36756)
    {
      switch(result)
      {
        case 36194:
LABEL_254:
          *a4 = 6407;
          LOWORD(a3) = -31901;
          goto LABEL_22;
        case 36195:
        case 36196:
        case 36197:
        case 36198:
        case 36199:
        case 36200:
        case 36201:
        case 36202:
        case 36203:
        case 36204:
        case 36205:
        case 36206:
        case 36207:
        case 36244:
        case 36245:
        case 36246:
        case 36247:
        case 36248:
        case 36249:
        case 36250:
        case 36251:
        case 36252:
        case 36253:
        case 36254:
        case 36255:
        case 36256:
        case 36257:
        case 36258:
        case 36259:
        case 36260:
        case 36261:
        case 36262:
        case 36263:
        case 36264:
        case 36265:
        case 36266:
        case 36267:
        case 36268:
        case 36269:
        case 36270:
        case 36271:
        case 36272:
        case 36273:
        case 36274:
        case 36275:
        case 36276:
        case 36277:
        case 36278:
        case 36279:
        case 36280:
        case 36281:
        case 36282:
          return result;
        case 36208:
          v33 = a2 == 32993;
          v12 = 6408;
          v34 = -32543;
          goto LABEL_226;
        case 36209:
          v33 = a2 == 32992;
          v12 = 6407;
          v34 = -32544;
LABEL_226:
          if (v33)
          {
            v12 = v34;
          }

          goto LABEL_231;
        case 36210:
          v12 = 6406;
          goto LABEL_231;
        case 36211:
        case 36212:
          v12 = 6409;
          goto LABEL_231;
        case 36213:
          v12 = 6410;
          goto LABEL_231;
        case 36214:
LABEL_121:
          v28 = a2 == 32993;
          v21 = 6408;
          v29 = -32543;
          goto LABEL_125;
        case 36215:
LABEL_124:
          v28 = a2 == 32992;
          v21 = 6407;
          v29 = -32544;
LABEL_125:
          if (v28)
          {
            v21 = v29;
          }

          goto LABEL_156;
        case 36216:
LABEL_123:
          v21 = 6406;
          goto LABEL_156;
        case 36217:
        case 36218:
LABEL_93:
          v21 = 6409;
          goto LABEL_156;
        case 36219:
LABEL_113:
          v21 = 6410;
LABEL_156:
          *a4 = v21;
          goto LABEL_157;
        case 36220:
LABEL_263:
          v35 = a2 == 32993;
          v9 = 6408;
          v36 = -32543;
          goto LABEL_264;
        case 36221:
LABEL_260:
          v35 = a2 == 32992;
          v9 = 6407;
          v36 = -32544;
LABEL_264:
          if (v35)
          {
            v9 = v36;
          }

          goto LABEL_20;
        case 36222:
LABEL_122:
          v9 = 6406;
          goto LABEL_20;
        case 36223:
        case 36224:
          goto LABEL_106;
        case 36225:
          goto LABEL_109;
        case 36226:
          v31 = a2 == 32993;
          v30 = 6408;
          v32 = -32543;
          goto LABEL_221;
        case 36227:
          v31 = a2 == 32992;
          v30 = 6407;
          v32 = -32544;
LABEL_221:
          if (v31)
          {
            v30 = v32;
          }

          goto LABEL_223;
        case 36228:
          v30 = 6406;
          goto LABEL_223;
        case 36229:
        case 36230:
          v30 = 6409;
          goto LABEL_223;
        case 36231:
          v30 = 6410;
LABEL_223:
          *a4 = v30;
          LOWORD(a3) = 5124;
          goto LABEL_22;
        case 36232:
          goto LABEL_149;
        case 36233:
          goto LABEL_112;
        case 36234:
          v26 = 6406;
          goto LABEL_233;
        case 36235:
        case 36236:
          v26 = 6409;
          goto LABEL_233;
        case 36237:
          v26 = 6410;
          goto LABEL_233;
        case 36238:
          goto LABEL_145;
        case 36239:
          goto LABEL_74;
        case 36240:
          v15 = 6406;
          goto LABEL_218;
        case 36241:
        case 36242:
          v15 = 6409;
          goto LABEL_218;
        case 36243:
          v15 = 6410;
          goto LABEL_218;
        case 36283:
        case 36284:
        case 36285:
        case 36286:
          goto LABEL_45;
        default:
          if (result != 36756)
          {
            return result;
          }

LABEL_182:
          v15 = 6403;
          break;
      }

      goto LABEL_218;
    }

    if (result > 37487)
    {
      if (result >= 37493)
      {
        if (result == 37493)
        {
          LOWORD(a3) = 0;
          v6 = -28044;
          goto LABEL_7;
        }

        if (result != 37494)
        {
          LOWORD(a3) = 0;
          v6 = -28042;
          goto LABEL_7;
        }
      }

      goto LABEL_45;
    }

    if (result <= 36760)
    {
      if (result <= 36758)
      {
        if (result == 36757)
        {
LABEL_140:
          v15 = -32217;
LABEL_218:
          *a4 = v15;
          LOWORD(a3) = 5120;
          goto LABEL_22;
        }

LABEL_74:
        v14 = a2 == 32992;
        v15 = 6407;
        v16 = -32544;
LABEL_146:
        if (v14)
        {
          v15 = v16;
        }

        goto LABEL_218;
      }

      if (result == 36759)
      {
LABEL_145:
        v14 = a2 == 32993;
        v15 = 6408;
        v16 = -32543;
        goto LABEL_146;
      }

LABEL_132:
      v26 = 6403;
LABEL_233:
      *a4 = v26;
      LOWORD(a3) = 5122;
      goto LABEL_22;
    }

    if (result > 36762)
    {
      if (result != 36763)
      {
        if (result == 36975)
        {
LABEL_135:
          if (a3 != 33640 && a3 != 32822)
          {
            *a4 = 6408;
            LOWORD(a3) = -32714;
            goto LABEL_22;
          }

LABEL_272:
          *a4 = a2;
          goto LABEL_22;
        }

        return result;
      }

LABEL_149:
      v25 = a2 == 32993;
      v26 = 6408;
      v27 = -32543;
    }

    else
    {
      if (result == 36761)
      {
LABEL_141:
        v26 = -32217;
        goto LABEL_233;
      }

LABEL_112:
      v25 = a2 == 32992;
      v26 = 6407;
      v27 = -32544;
    }

    if (v25)
    {
      v26 = v27;
    }

    goto LABEL_233;
  }

  if (result > 34837)
  {
    if (result > 35428)
    {
      if (result > 35839)
      {
        if (result <= 35915)
        {
          if (result > 35900)
          {
            if (result <= 35906)
            {
              if (result == 35901)
              {
                *a4 = 6407;
                LOWORD(a3) = -29634;
                goto LABEL_22;
              }

              if (result == 35905)
              {
                v9 = 6407;
                goto LABEL_20;
              }
            }

            else
            {
              switch(result)
              {
                case 0x8C43:
                  v9 = 6408;
                  goto LABEL_20;
                case 0x8C45:
LABEL_109:
                  v9 = 6410;
                  goto LABEL_20;
                case 0x8C47:
LABEL_106:
                  v9 = 6409;
                  goto LABEL_20;
              }
            }

            return result;
          }

          if ((result - 35840) >= 4)
          {
            if (result == 35898)
            {
              *a4 = 6407;
              LOWORD(a3) = -29637;
              goto LABEL_22;
            }

            return result;
          }

LABEL_45:
          LOWORD(a3) = 0;
          *a4 = result;
          goto LABEL_22;
        }

        if (result <= 36011)
        {
          if (result <= 35917)
          {
            LOWORD(a3) = 0;
            if (result == 35916)
            {
              v6 = -31760;
            }

            else
            {
              v6 = -31759;
            }

            goto LABEL_7;
          }

          if (result == 35918)
          {
            LOWORD(a3) = 0;
            v6 = -31758;
            goto LABEL_7;
          }

          if (result == 35919)
          {
            LOWORD(a3) = 0;
            v6 = -31757;
            goto LABEL_7;
          }

          return result;
        }

        if ((result - 36166) < 4)
        {
          v9 = 6401;
          goto LABEL_20;
        }

        if (result != 36012)
        {
          if (result == 36013)
          {
            *a4 = -31495;
            LOWORD(a3) = -29267;
            goto LABEL_22;
          }

          return result;
        }

        v19 = 6402;
LABEL_274:
        *a4 = v19;
        LOWORD(a3) = 5126;
        goto LABEL_22;
      }

      v13 = result - 101;
      if ((result - 35429) > 0x12)
      {
        return result;
      }

      if (((1 << v13) & 0xFFFC) == 0 && ((1 << v13) & 3) == 0)
      {
        if (((1 << v13) & 0x60000) != 0)
        {
          *a4 = a2;
LABEL_157:
          LOWORD(a3) = 5123;
          goto LABEL_22;
        }

        return result;
      }

LABEL_16:
      *a4 = a2;
LABEL_21:
      LOWORD(a3) = 5121;
      goto LABEL_22;
    }

    if (result > 35055)
    {
      if (result <= 35414)
      {
        if (result > 35411)
        {
          if (result == 35412)
          {
            LOWORD(a3) = 0;
            v6 = -29695;
          }

          else
          {
            LOWORD(a3) = 0;
            if (result == 35413)
            {
              v6 = -29696;
            }

            else
            {
              v6 = -29693;
            }
          }

          goto LABEL_7;
        }

        switch(result)
        {
          case 0x88F0:
            *a4 = -31495;
            LOWORD(a3) = -31494;
            goto LABEL_22;
          case 0x8A50:
            v17 = -31303;
            break;
          case 0x8A51:
            v17 = -30177;
            break;
          default:
            return result;
        }

        *a4 = v17;
        if (a3 == 34235)
        {
          LOWORD(a3) = -31301;
        }

        else
        {
          LOWORD(a3) = -31302;
        }

        goto LABEL_22;
      }

      if (result > 35421)
      {
        if (result == 35422)
        {
          LOWORD(a3) = 0;
          v6 = -30116;
          goto LABEL_7;
        }

        if (result == 35423)
        {
          LOWORD(a3) = 0;
          v6 = -30115;
          goto LABEL_7;
        }

        return result;
      }

      if ((result - 35420) >= 2)
      {
        if (result == 35415)
        {
          LOWORD(a3) = 0;
          v6 = -29694;
          goto LABEL_7;
        }

        return result;
      }

      goto LABEL_45;
    }

    if (result > 34842)
    {
      if (result > 34845)
      {
        if (result != 34846)
        {
          if (result != 34847)
          {
            v6 = -30665;
            if (result == 34871)
            {
              LOWORD(a3) = 0;
              goto LABEL_7;
            }

            return result;
          }

          v23 = 6410;
LABEL_210:
          *a4 = v23;
          LOWORD(a3) = 5131;
          goto LABEL_22;
        }

LABEL_171:
        v23 = 6409;
        goto LABEL_210;
      }

      if (result != 34843)
      {
        if (result == 34844)
        {
          v23 = 6406;
          goto LABEL_210;
        }

        goto LABEL_171;
      }

      v22 = a2 == 32992;
      v23 = 6407;
      v24 = -32544;
LABEL_208:
      if (v22)
      {
        v23 = v24;
      }

      goto LABEL_210;
    }

    if (result <= 34839)
    {
      if (result == 34838)
      {
        v19 = 6406;
        goto LABEL_274;
      }
    }

    else if (result != 34840)
    {
      if (result == 34841)
      {
        v19 = 6410;
        goto LABEL_274;
      }

      v22 = a2 == 32993;
      v23 = 6408;
      v24 = -32543;
      goto LABEL_208;
    }

    v19 = 6409;
    goto LABEL_274;
  }

  if (result <= 33189)
  {
    switch(result)
    {
      case 32827:
      case 32828:
        goto LABEL_122;
      case 32829:
      case 32830:
        goto LABEL_123;
      case 32831:
      case 32832:
      case 32842:
      case 32843:
        goto LABEL_106;
      case 32833:
      case 32834:
      case 32844:
      case 32845:
        goto LABEL_93;
      case 32835:
      case 32836:
      case 32837:
        goto LABEL_109;
      case 32838:
      case 32839:
      case 32840:
        goto LABEL_113;
      case 32841:
      case 32846:
        return result;
      case 32847:
        if (a3 - 33635 < 4 || a3 - 32819 <= 1)
        {
          goto LABEL_272;
        }

        goto LABEL_42;
      case 32848:
        if ((a3 - 33635 > 3 || a3 == 33637) && a3 != 32820)
        {
          goto LABEL_254;
        }

        goto LABEL_272;
      case 32849:
        if (a3 - 33639 >= 2 && a3 - 32821 > 1)
        {
          goto LABEL_260;
        }

        goto LABEL_272;
      case 32850:
      case 32857:
        goto LABEL_135;
      case 32851:
      case 32852:
        goto LABEL_124;
      case 32853:
      case 32854:
        if (a3 == 33637 || a3 == 32819)
        {
          goto LABEL_272;
        }

LABEL_42:
        *a4 = 6408;
        LOWORD(a3) = -32717;
        goto LABEL_22;
      case 32855:
        if (a3 == 33638 || a3 == 32820)
        {
          goto LABEL_272;
        }

        *a4 = 6408;
        LOWORD(a3) = -32716;
        goto LABEL_22;
      case 32856:
        if (a3 != 33639 && a3 != 32821)
        {
          goto LABEL_263;
        }

        goto LABEL_272;
      case 32858:
      case 32859:
        goto LABEL_121;
      default:
        if (result != 10768)
        {
          if (result != 33189)
          {
            return result;
          }

          *a4 = 6402;
          if (a3 >> 2 == 1280)
          {
            LOWORD(a3) = 5123;
          }

          else
          {
            LOWORD(a3) = 5125;
          }

          goto LABEL_22;
        }

        if (a3 != 33634 && a3 != 32818)
        {
          *a4 = 6407;
          LOWORD(a3) = -32718;
          goto LABEL_22;
        }

        break;
    }

    goto LABEL_272;
  }

  if (result <= 33775)
  {
    switch(result)
    {
      case 33321:
      case 33330:
        v9 = 6403;
        goto LABEL_20;
      case 33322:
      case 33332:
        v21 = 6403;
        goto LABEL_156;
      case 33323:
      case 33336:
        v9 = -32217;
        goto LABEL_20;
      case 33324:
      case 33338:
        v21 = -32217;
        goto LABEL_156;
      case 33325:
        v23 = 6403;
        goto LABEL_210;
      case 33326:
        v19 = 6403;
        goto LABEL_274;
      case 33327:
        v23 = -32217;
        goto LABEL_210;
      case 33328:
        v19 = -32217;
        goto LABEL_274;
      case 33329:
        goto LABEL_182;
      case 33331:
        goto LABEL_132;
      case 33333:
        v30 = 6403;
        goto LABEL_223;
      case 33334:
        v12 = 6403;
        break;
      case 33335:
        goto LABEL_140;
      case 33337:
        goto LABEL_141;
      case 33339:
        v30 = -32217;
        goto LABEL_223;
      case 33340:
        v12 = -32217;
        break;
      default:
        if ((result - 33190) >= 2)
        {
          return result;
        }

        v12 = 6402;
        break;
    }

LABEL_231:
    *a4 = v12;
    LOWORD(a3) = 5125;
    goto LABEL_22;
  }

  if ((result - 33776) < 4)
  {
    goto LABEL_45;
  }

  if (result == 34836)
  {
    v18 = a2 == 32993;
    v19 = 6408;
    v20 = -32543;
LABEL_188:
    if (v18)
    {
      v19 = v20;
    }

    goto LABEL_274;
  }

  if (result == 34837)
  {
    v18 = a2 == 32992;
    v19 = 6407;
    v20 = -32544;
    goto LABEL_188;
  }

  return result;
}

uint64_t glGetTexLevelParameteriv_Exec(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v10 = a1 + 28672;
  result = gleLookUpTexture(a1, a2);
  if (!result)
  {
    goto LABEL_103;
  }

  if (a3 >= 0xF || (v14 = result, v15 = *(result + 768), v16 = v15 & 0xF, a3) && (v16 <= 9 ? (v17 = ((1 << v16) & 0x384) == 0) : (v17 = 1), !v17))
  {
    if (!*(v10 + 1160))
    {
      v18 = 1281;
LABEL_105:
      *(v10 + 1160) = v18;
      return result;
    }

    return result;
  }

  v19 = 0;
  if ((a2 - 34069) >= 6)
  {
    v20 = 0;
  }

  else
  {
    v20 = a2 - 34069;
  }

  v34 = v20;
  v35 = 0;
  v21 = result + 480 * v20 + 32 * a3;
  LODWORD(v22) = 1;
  if (a4 <= 34464)
  {
    if (a4 > 32860)
    {
      if (a4 <= 32862)
      {
        if (a4 == 32861)
        {
          if (v16 == 7)
          {
            v30 = *(result + 528);
            if (v30 && *(v30 + 152))
            {
              result = gleInternalFormatFromSizedEnum(*(result + 960));
              v23 = 0;
              v19 = (result >> 14) & ((4 * result) >> 31) & 0x3F;
              v35 = v19;
            }

            else
            {
              v19 = 0;
              v23 = 0;
              v35 = 0;
            }

            a4 = 32861;
            goto LABEL_145;
          }
        }

        else if (v16 == 7)
        {
          v27 = *(result + 528);
          if (v27 && *(v27 + 152))
          {
            result = gleInternalFormatFromSizedEnum(*(result + 960));
            v23 = 0;
            v19 = (((result >> 14) & 0x3F) + ((16 * result) >> 31)) & ((2 * result) >> 31);
            v35 = v19;
          }

          else
          {
            v19 = 0;
            v23 = 0;
            v35 = 0;
          }

          a4 = 32862;
          goto LABEL_145;
        }
      }

      else
      {
        if (a4 != 32863)
        {
          if (a4 == 32881)
          {
            v23 = (v15 >> 8) & 1;
            if (v16 == 7)
            {
              v28 = *(result + 528);
              if (v28)
              {
                v19 = *(v28 + 152) != 0;
              }

              else
              {
                v19 = 0;
              }
            }

            else
            {
              v19 = *(v21 + 1040);
            }

            v35 = v19;
            a4 = 32881;
            goto LABEL_145;
          }

          v23 = 0;
          if (a4 == 34464)
          {
            if ((v15 & 0x100) != 0 || !*(v21 + 1036) || !*(v21 + 1038) || !*(v21 + 1040) || !*(result + 555))
            {
              if (!*(v10 + 1160))
              {
                v18 = 1282;
                goto LABEL_105;
              }

              return result;
            }

            glgConvertType();
            v36 = 0;
            glgConvertType();
            result = glgGetCompressedImageBytes();
            v19 = result;
            v23 = 0;
            v35 = result;
            a4 = 34464;
            goto LABEL_145;
          }

          goto LABEL_85;
        }

        if (v16 == 7)
        {
          v29 = *(result + 528);
          if (v29 && *(v29 + 152))
          {
            result = gleInternalFormatFromSizedEnum(*(result + 960));
            v23 = 0;
            v19 = (result >> 20) & 0x3F;
            v35 = v19;
          }

          else
          {
            v19 = 0;
            v23 = 0;
            v35 = 0;
          }

          a4 = 32863;
          goto LABEL_145;
        }
      }

LABEL_78:
      v35 = 0;
      LODWORD(v22) = *(v21 + 1036);
      if (*(v21 + 1036))
      {
        LODWORD(v22) = *(v21 + 1038);
        if (*(v21 + 1038))
        {
          LODWORD(v22) = *(v21 + 1040);
          if (*(v21 + 1040))
          {
            LODWORD(v22) = *(result + 555);
            if (!*(result + 555))
            {
              v19 = 0;
              v23 = 1;
              goto LABEL_85;
            }

            goto LABEL_82;
          }
        }
      }

LABEL_84:
      v19 = 0;
      v23 = 0;
      goto LABEL_85;
    }

    if (a4 <= 4098)
    {
      if (a4 != 4096)
      {
        v23 = 0;
        if (a4 == 4097)
        {
          v23 = (v15 >> 8) & 1;
          if (v16 == 7)
          {
            v24 = *(result + 528);
            if (v24)
            {
              v19 = *(v24 + 152) != 0;
            }

            else
            {
              v19 = 0;
            }
          }

          else
          {
            v19 = *(v21 + 1038);
          }

          v35 = v19;
          a4 = 4097;
          goto LABEL_145;
        }

        goto LABEL_85;
      }

      v23 = (v15 >> 8) & 1;
      if (v16 == 7)
      {
        if (!*(result + 528))
        {
          v19 = 0;
          v35 = 0;
          goto LABEL_123;
        }

        result = gleInternalFormatFromSizedEnum(*(result + 960));
        v19 = *(*(v14 + 528) + 152) / ((((result >> 14) & 0x3F & ((4 * result) >> 31)) + ((result >> 20) & 0x3F) + ((((result >> 14) & 0x3F) + ((32 * result) >> 31)) & ((8 * result) >> 31)) + ((((result >> 14) & 0x3F) + ((16 * result) >> 31)) & ((2 * result) >> 31))) >> 3);
      }

      else
      {
        v19 = *(v21 + 1036);
      }

      v35 = v19;
LABEL_123:
      a4 = 4096;
      goto LABEL_145;
    }

    if (a4 != 4099)
    {
      if (a4 == 32860)
      {
        if (v16 == 7)
        {
          v26 = *(result + 528);
          if (v26 && *(v26 + 152))
          {
            result = gleInternalFormatFromSizedEnum(*(result + 960));
            v23 = 0;
            v19 = (((result >> 14) & 0x3F) + ((32 * result) >> 31)) & ((8 * result) >> 31);
            v35 = v19;
          }

          else
          {
            v19 = 0;
            v23 = 0;
            v35 = 0;
          }

          a4 = 32860;
          goto LABEL_145;
        }

        goto LABEL_78;
      }

      goto LABEL_43;
    }

    v23 = *(v21 + 1036) && *(v21 + 1038) && *(v21 + 1040) && *(result + 555) == 0;
    if (v16 == 7)
    {
      v31 = *(result + 528);
      if (!v31 || !*(v31 + 152))
      {
        v19 = 32832;
LABEL_140:
        v35 = v19;
        a4 = 4099;
        goto LABEL_145;
      }
    }

    else if (!*(result + 962))
    {
      v19 = 1;
      goto LABEL_140;
    }

    v19 = *(result + 960);
    goto LABEL_140;
  }

  if (a4 <= 35855)
  {
    if (a4 == 34465)
    {
      v23 = 0;
      v19 = *(result + 555);
      v35 = v19;
      a4 = 34465;
      goto LABEL_145;
    }

    if (a4 == 34890)
    {
      goto LABEL_78;
    }

    v25 = 35057;
    goto LABEL_42;
  }

  if ((a4 - 35856) >= 4)
  {
    if (a4 == 35862)
    {
      v35 = 0;
      if (*(v21 + 1036) && *(v21 + 1038))
      {
        a4 = 35862;
        v19 = 0;
        if (*(v21 + 1040))
        {
          v23 = 2 * (*(result + 555) == 0);
          if (*(result + 555))
          {
            a4 = 35862;
          }

          else
          {
            a4 = 34890;
          }
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
        v19 = 0;
        v23 = 0;
        a4 = 35862;
      }

      goto LABEL_145;
    }

    v25 = 35903;
LABEL_42:
    if (a4 == v25)
    {
      goto LABEL_78;
    }

LABEL_43:
    v23 = 0;
    goto LABEL_85;
  }

  v35 = 0;
  if (v16 == 7)
  {
    v22 = *(result + 528);
    if (v22)
    {
      v22 = *(v22 + 152);
      if (v22)
      {
        result = gleGetInternalFormatType(*(result + 960));
LABEL_83:
        v19 = result;
        v23 = 0;
        LODWORD(v22) = 0;
        v35 = result;
        goto LABEL_85;
      }
    }

    goto LABEL_84;
  }

  LODWORD(v22) = *(v21 + 1036);
  if (!*(v21 + 1036))
  {
    goto LABEL_84;
  }

  LODWORD(v22) = *(v21 + 1038);
  if (!*(v21 + 1038))
  {
    goto LABEL_84;
  }

  LODWORD(v22) = *(v21 + 1040);
  if (!*(v21 + 1040))
  {
    goto LABEL_84;
  }

  LODWORD(v22) = *(result + 555);
  if (*(result + 555))
  {
LABEL_82:
    result = gleGetCompressedTextureLevelInfo(*(result + 960), a4);
    goto LABEL_83;
  }

  v19 = 0;
  a4 = (a4 - 2996);
  v23 = 2;
LABEL_85:
  if ((a4 - 32864) < 2)
  {
    v35 = 0;
    if (*(v21 + 1036) && *(v21 + 1038) && *(v21 + 1040))
    {
      if (!*(v14 + 555))
      {
        v19 = 0;
        v23 = 1;
        goto LABEL_145;
      }

LABEL_96:
      result = gleGetCompressedTextureLevelInfo(*(v14 + 960), a4);
      v19 = result;
      v35 = result;
      goto LABEL_145;
    }

LABEL_97:
    v19 = 0;
    goto LABEL_145;
  }

  if ((a4 - 35860) < 2)
  {
    v35 = 0;
    if (*(v21 + 1036) && *(v21 + 1038) && *(v21 + 1040))
    {
      if (!*(v14 + 555))
      {
        v19 = 0;
        a4 = (a4 - 2996);
        v23 = 2;
        goto LABEL_145;
      }

      goto LABEL_96;
    }

    goto LABEL_97;
  }

  if (a4 == 4101)
  {
    if ((v15 & 0x100) != 0)
    {
      v23 = 1;
    }

    v19 = *(v21 + 1042);
    v35 = v19;
    a4 = 4101;
    goto LABEL_145;
  }

  if (!v22)
  {
LABEL_145:
    if ((*(v14 + 768) & 0x100) != 0)
    {
      v32 = *(a1 + 2216);
      v12.n128_u64[0] = vand_s8(*&v32, *(a1 + 1544));
      if (v12.n128_u32[0] | *(a1 + 2212) & *(a1 + 1540) | v12.n128_u32[1])
      {
        v33 = *(v10 + 3829);
        if ((v33 - 3) >= 2)
        {
          if (v33 == 1)
          {
            result = gleUpdateDeferredStateGL3(a1, 0, 0, 0, 0);
          }

          else
          {
            result = gleUpdateDeferredState(a1, 0, 0, 0, 0, v12, v32, v13);
          }
        }

        else
        {
          result = gleUpdateDeferredStateES2(a1, 0, 0, 0, 0);
        }
      }
    }

    if (v23)
    {
      result = (*(*(a1 + 29448) + 376))(*(a1 + 29016), *(v14 + 8 * *(v10 + 3827)), v34, a3, a4, &v35);
      v19 = v35;
      if (v23 == 2)
      {
        if (v35)
        {
          (*(*(a1 + 29448) + 376))(*(a1 + 29016), *(v14 + 8 * *(v10 + 3827)), v34, a3, 4099, &v35);
          result = gleGetInternalFormatType(v35);
          v19 = result;
        }
      }
    }

    *a5 = v19;
    return result;
  }

LABEL_103:
  if (!*(v10 + 1160))
  {
    v18 = 1280;
    goto LABEL_105;
  }

  return result;
}

uint64_t gleLookUpTexture(uint64_t a1, int a2)
{
  result = 0;
  v4 = a1 + 20776;
  if (a2 <= 34068)
  {
    if (a2 == 3553)
    {
      v5 = (v4 + 88 * *(a1 + 23768) + 24);
      return *v5 + 40;
    }

    if (a2 == 32879)
    {
      if ((*(a1 + 32501) & 0xFE) == 2)
      {
        return 0;
      }

      v5 = (v4 + 88 * *(a1 + 23768) + 8);
      return *v5 + 40;
    }
  }

  else
  {
    if ((a2 - 34069) < 6)
    {
      if (*(a1 + 32501) == 2)
      {
        return 0;
      }

      v5 = (v4 + 88 * *(a1 + 23768));
      return *v5 + 40;
    }

    if (a2 == 35866)
    {
      if ((*(a1 + 32501) & 0xFE) == 2)
      {
        return 0;
      }

      v5 = (v4 + 88 * *(a1 + 23768) + 40);
      return *v5 + 40;
    }
  }

  return result;
}

uint64_t gleSetEnable_DEPTH_TEST(uint64_t result, uint64_t a2, int a3)
{
  if (*(result + 15204) != a3)
  {
    *(result + 15204) = a3;
    *(result + 1520) |= 0x200u;
    *(result + 28652) = 0;
    *(result + 1548) |= 0x40000u;
  }

  return result;
}

uint64_t glAlphaFunc_Exec(uint64_t result, int a2, double a3, double a4, double a5)
{
  v5 = result + 28652;
  if ((a2 - 520) <= 0xFFFFFFF7)
  {
    if (!*(result + 29832))
    {
      *(result + 29832) = 1280;
    }
  }

  else
  {
    v6 = *&a3;
    v7 = a2;
    v8 = result;
    LODWORD(a3) = *(result + 29704);
    if (*&a3 != v6 || *(result + 15004) != a2)
    {
      if ((*(result + 29803) & 0x10) != 0)
      {
        result = gleUpdateAnyDrawBuffersFloat(result, a3, a4, a5);
      }

      *(v5 + 1052) = v6;
      if (!*(v5 + 3836) && (*(*(v8 + 29032) + 561) & 0x40) == 0)
      {
        v6 = fminf(fmaxf(v6, *(v8 + 288)), *(v8 + 292));
      }

      *(v8 + 15000) = v6;
      *(v8 + 15004) = v7;
      *(v8 + 1520) |= 1u;
      *v5 = 0;
      *(v8 + 1548) |= 0x40000u;
    }
  }

  return result;
}

uint64_t gleSetEnable_ALPHA_TEST(uint64_t result, uint64_t a2, int a3)
{
  if (*(result + 15006) != a3)
  {
    *(result + 15006) = a3;
    *(result + 1520) |= 1u;
    *(result + 28652) = 0;
    *(result + 1548) |= 0x40000u;
  }

  return result;
}

uint64_t glShadeModel_Exec(uint64_t result, int a2)
{
  if ((a2 - 7426) <= 0xFFFFFFFD)
  {
    if (!*(result + 29832))
    {
      *(result + 29832) = 1280;
    }
  }

  else if (*(result + 15592) != a2)
  {
    *(result + 15592) = a2;
    *(result + 1520) |= 0x8000000u;
    *(result + 28652) = 0;
    v2 = *(result + 1548);
    *(result + 1548) = v2 | 0x8400;
    v3 = *(result + 29032);
    if ((*(v3 + 27) & 0x10) != 0 || (*(v3 + 25) & 0x7F) != 0)
    {
      *(result + 1548) = v2 | 0x70038400;
    }
  }

  return result;
}

uint64_t gleSetEnable_LIGHTING(uint64_t result, uint64_t a2, int a3)
{
  if (*(result + 14890) != a3)
  {
    *(result + 14890) = a3;
    v3 = *(result + 24756);
    v4 = *(result + 24864);
    if (!*(result + 24756) && (v4 & 1) == 0)
    {
      v5 = a3 ? *(result + 14888) == 33274 : *(result + 32506);
      if (v5 != *(result + 15283))
      {
        *(result + 15283) = v5;
        *(result + 1548) |= 0x20000u;
      }
    }

    *(result + 28652) = 0;
    v6 = *(result + 1548);
    *(result + 1548) = v6 | 0x18402;
    if (v3 || (v4 & 9) != 0)
    {
      v7 = *(result + 24751);
    }

    else if (a3)
    {
      v7 = *(result + 14892) != 0;
    }

    else
    {
      v7 = 0;
    }

    if (v7 != *(result + 17701))
    {
      *(result + 17701) = v7;
      *(result + 1532) |= 0x40000000u;
      *(result + 1548) = v6 | 0x10018402;
      if ((*(*(result + 29032) + 25) & 0x7F) != 0)
      {
        *(result + 1548) = v6 | 0x10038402;
      }
    }

    return gleUpdateInverseNeeds(result);
  }

  return result;
}

uint64_t gleSetEnable_CULL_FACE(uint64_t result, uint64_t a2, int a3)
{
  if (*(result + 15534) != a3)
  {
    *(result + 15534) = a3;
    *(result + 1520) |= 0x800000u;
    *(result + 28652) = 0;
    *(result + 1548) |= 0x8000u;
  }

  return result;
}

uint64_t gleSetClientEnableFlag(uint64_t result, int a2, int a3)
{
  v5 = result;
  v6 = result + 28652;
  v7 = (result + 23770);
  v8 = *(result + 26384);
  if (a2 <= 32887)
  {
    switch(a2)
    {
      case 32884:
        v10 = 0;
        v9 = 0x10000;
        goto LABEL_20;
      case 32885:
        v9 = 0x20000;
        v10 = 1;
        goto LABEL_20;
      case 32886:
        v9 = 0x40000;
        v10 = 2;
        goto LABEL_20;
    }

LABEL_17:
    if (!*(result + 29832))
    {
      *(result + 29832) = 1280;
    }

    return result;
  }

  if (a2 > 34883)
  {
    if (a2 == 34884)
    {
      if (*(result + 32501) == 2)
      {
        v9 = 0x800000;
        v10 = 7;
        goto LABEL_20;
      }
    }

    else if (a2 == 35740)
    {
      v9 = 0x400000;
      v10 = 6;
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (a2 == 32888)
  {
    v11 = *v7;
    v9 = 0x1000000 << v11;
    v10 = v11 + 8;
    goto LABEL_20;
  }

  if (a2 != 34477)
  {
    goto LABEL_17;
  }

  v9 = 0x100000;
  v10 = 4;
LABEL_20:
  v12 = *(v8 + 904);
  if (a3)
  {
    if ((v12 & v9) != 0)
    {
      return result;
    }

    v13 = v12 | v9;
    *(v8 + 904) = v12 | v9;
    v14 = *(v8 + 912);
    if ((v13 & ~v14) == v9)
    {
      result = gleUpdateDrawArraysFuncs(result);
    }

    else if ((v14 & v9) != 0 && *(*(v8 + 8 * v10 + 1240) + 192))
    {
      *(v8 + 1216) = 0;
    }

    v15 = v9 | *(v8 + 944) | 0x10;
  }

  else
  {
    if (!(v12 | v9))
    {
      return result;
    }

    *(v8 + 904) = v12 & ~v9;
    if ((v12 & ~*(v8 + 912)) == v9)
    {
      result = gleUpdateDrawArraysFuncs(result);
    }

    v15 = *(v8 + 944) | v9;
  }

  *(v8 + 944) = v15;
  *(v8 + 952) |= v9;
  if (a2 == 35740 && *(v6 + 3849) == 2)
  {
    *(v5 + 15379) = a3;
    if ((v7[1094] & 9) != 0 || v7[986])
    {
      v16 = v7[980];
    }

    else if (a3)
    {
      v16 = 1;
    }

    else
    {
      v16 = *(v5 + 15378) != 0;
    }

    if (v16 == *(v5 + 17700))
    {
      v17 = *(v5 + 1548);
    }

    else
    {
      *(v5 + 17700) = v16;
      *(v5 + 1532) |= 0x40000000u;
      *v6 = 0;
      v17 = *(v5 + 1548) | 0x10000000;
    }

    *(v5 + 1548) = v17 | 0x1800A;
  }

  *(v5 + 26184) = gleSetVertexArrayFunc;
  *(v5 + 26192) = gleSetVertexArrayFunc;
  *(v5 + 26200) = gleSetVertexElemFunc;
  *(v5 + 26208) = gleSetVertexElemFunc;
  if ((v9 & 0xFF000000) != 0)
  {
    *(v5 + 1548) |= 0x4000u;
  }

  *v6 = 0;
  *(v5 + 1532) |= 0x1000u;
  return result;
}

uint64_t glClearColor_Exec(uint64_t result, double a2, double a3, double a4, float a5)
{
  v5 = result;
  v6 = result + 28652;
  *(result + 29672) = LODWORD(a2);
  *(result + 29676) = LODWORD(a3);
  *(result + 29680) = LODWORD(a4);
  *(result + 29684) = a5;
  if ((*(result + 29803) & 0x10) != 0)
  {
    result = gleUpdateAnyDrawBuffersFloat(result, a2, a3, a4);
  }

  v7 = (v6 + 1020);
  if (*(v6 + 3836) || (*(v5[1814].i64[1] + 561) & 0x40) != 0)
  {
    v12 = *v7;
  }

  else
  {
    f32 = v5[18].f32;
    v9 = &v5[18].f32[1];
    v10 = vld1q_dup_f32(f32);
    v11 = vld1q_dup_f32(v9);
    v12 = vminnmq_f32(vmaxnmq_f32(*v7, v10), v11);
  }

  v5[947] = v12;
  if (!*(v5[1842].i64[1] + 110))
  {
    *v6 = 0;
    *(v6 + 1148) |= 8u;
  }

  return result;
}

uint64_t glFlush_Exec(uint64_t a1, double a2, double a3, double a4)
{
  v5 = a1 + 28672;
  if (*(a1 + 32472))
  {
    if (!*(a1 + 32471) && (*(a1 + 32493) & 0x400) != 0)
    {
      result = (*(*(a1 + 29496) + 240))(*(a1 + 29464));
    }

    else if ((*(a1 + 29800) & 0x743C0478) == 0 || (result = gleUpdateDrawFramebufferState(a1, a2, a3, a4), !result))
    {
      result = (*(*(a1 + 29496) + 232))(*(a1 + 29464), 0);
    }

    *(v5 + 3800) = *(v5 + 3799);
  }

  else
  {
    v7 = *(*(a1 + 29496) + 240);
    v8 = *(a1 + 29464);

    return v7(v8);
  }

  return result;
}

void glColorPointer_Exec(uint64_t a1, int a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v5 = a1 + 28652;
  if (a2 < 3 || (v6 = a5, v10 = *(a1 + 26384), (a2 - 3) >= 2) && a2 != 32993 || (a3 != 5121 ? (v11 = a2 == 32993) : (v11 = 0), v11 || (a4 & 0x80000000) != 0 || a2 == 3))
  {
    if (*(a1 + 29832))
    {
      return;
    }

    v15 = 1281;
    goto LABEL_25;
  }

  v12 = *(a1 + 19312);
  if (!v12 && v10 != *(a1 + 26392) && a5 && !*(a1 + 32502))
  {
    if (*(a1 + 29832))
    {
      return;
    }

    v15 = 1282;
LABEL_25:
    *(a1 + 29832) = v15;
    return;
  }

  if (a3 == 5121)
  {
    v14 = 1;
    v13 = 0x340100000000;
  }

  else
  {
    if (a3 != 5126 && (a3 != 5132 || *(a1 + 32501) != 2))
    {
      if (*(a1 + 29832))
      {
        return;
      }

      v15 = 1280;
      goto LABEL_25;
    }

    v13 = a3 << 32;
    v14 = 4;
  }

  if (a2 == 32993)
  {
    v16 = 4;
  }

  else
  {
    v16 = a2;
  }

  *(v10 + 944) |= 0x40000uLL;
  *(v10 + 184) = a5;
  v17 = *(v10 + 1256);
  if (v12 != v17)
  {
    if (v17 && (v18 = *(v17 + 20) - 1, (*(v17 + 20) = v18) == 0))
    {
      v41 = v16;
      v26 = v14;
      v27 = v13;
      gleUnbindAndFreeBufferObject(a1, v17);
      v13 = v27;
      v14 = v26;
      v16 = v41;
      if (v12)
      {
        goto LABEL_34;
      }
    }

    else if (v12)
    {
LABEL_34:
      ++*(v12 + 20);
      v19 = *(v10 + 912);
      if ((v19 & 0x40000) == 0)
      {
        *(v10 + 912) = v19 | 0x40000;
        if ((*(v10 + 906) & 4) != 0)
        {
          v40 = v16;
          v20 = v14;
          v21 = v13;
          gleUpdateDrawArraysFuncs(a1);
          v13 = v21;
          v14 = v20;
          v16 = v40;
        }
      }

      v22 = *(v5 + 3844);
      if (*(v5 + 3844))
      {
        v23 = (v12 + 40);
        v24 = (v10 + 1512);
        do
        {
          v25 = *v23++;
          *v24 = v25;
          v24 += 35;
          --v22;
        }

        while (v22);
      }

      if (v17)
      {
        goto LABEL_54;
      }

      goto LABEL_53;
    }

    v28 = *(v10 + 912);
    if ((v28 & 0x40000) != 0)
    {
      *(v10 + 912) = v28 & 0xFFFFFFFFFFFBFFFFLL;
      if ((*(v10 + 906) & 4) != 0)
      {
        v29 = v13;
        gleUpdateDrawArraysFuncs(a1);
        v13 = v29;
      }
    }

    v30 = *(v5 + 3844);
    if (*(v5 + 3844))
    {
      v31 = (v30 + 1) & 0x1FE;
      v32 = vdupq_n_s64(v30 - 1);
      v33 = xmmword_23A102AE0;
      v34 = (v10 + 1512);
      v35 = vdupq_n_s64(2uLL);
      do
      {
        v36 = vmovn_s64(vcgeq_u64(v32, v33));
        if (v36.i8[0])
        {
          *v34 = 0;
        }

        if (v36.i8[4])
        {
          v34[35] = 0;
        }

        v33 = vaddq_s64(v33, v35);
        v34 += 70;
        v31 -= 2;
      }

      while (v31);
    }

LABEL_53:
    *(v10 + 952) |= 0x40000uLL;
LABEL_54:
    *v5 = 0;
    *(a1 + 1532) |= 0x1000u;
    *(v10 + 944) |= 0x40010uLL;
    *(v10 + 1256) = v12;
  }

  if (v12)
  {
    v6 += *(v12 + 136);
    if (*(v12 + 192))
    {
      if ((*(v10 + 906) & 4) != 0)
      {
        *(v10 + 1216) = 0;
      }
    }
  }

  *(v10 + 976) = v6;
  LODWORD(v37) = v14 * v16;
  if (a4)
  {
    v37 = a4;
  }

  else
  {
    v37 = v37;
  }

  if (a2 == 32993)
  {
    v38 = 5;
  }

  else
  {
    v38 = a2;
  }

  v39 = v13 | v37 | (v38 << 48) | ((((v37 | v6) & 0xF) == 0) << 57);
  if (*(v10 + 200) != v39)
  {
    *(v10 + 952) |= 0x40000uLL;
    *(v10 + 200) = v39;
    *(a1 + 26184) = gleSetVertexArrayFunc;
    *(a1 + 26192) = gleSetVertexArrayFunc;
    *(a1 + 26200) = gleSetVertexElemFunc;
    *(a1 + 26208) = gleSetVertexElemFunc;
    *v5 = 0;
    *(a1 + 1532) |= 0x1000u;
  }
}

void glVertexPointer_Exec(uint64_t a1, uint64_t a2, int a3, unsigned int a4, uint64_t a5)
{
  v5 = a1 + 28652;
  if ((a2 - 5) < 0xFFFFFFFD || (a4 & 0x80000000) != 0)
  {
    if (!*(a1 + 29832))
    {
      v16 = 1281;
      goto LABEL_33;
    }

    return;
  }

  v7 = a5;
  v8 = a3;
  v11 = *(a1 + 26384);
  v12 = *(a1 + 19312);
  if (!v12 && v11 != *(a1 + 26392) && a5 && !*(a1 + 32502))
  {
    if (!*(a1 + 29832))
    {
      v16 = 1282;
LABEL_33:
      *(a1 + 29832) = v16;
      return;
    }

    return;
  }

  HIDWORD(v14) = a3 - 5120;
  LODWORD(v14) = a3 - 5120;
  v13 = v14 >> 1;
  if (v13 > 2)
  {
    if (v13 != 3 && (v13 != 6 || *(a1 + 32501) != 2))
    {
      goto LABEL_31;
    }

    v15 = 4;
LABEL_19:
    *(v11 + 944) |= 0x10000uLL;
    *(v11 + 136) = a5;
    v17 = *(v11 + 1240);
    if (v12 == v17)
    {
      goto LABEL_47;
    }

    if (v17 && (v18 = *(v17 + 20) - 1, (*(v17 + 20) = v18) == 0))
    {
      gleUnbindAndFreeBufferObject(a1, v17);
      if (v12)
      {
        goto LABEL_23;
      }
    }

    else if (v12)
    {
LABEL_23:
      ++*(v12 + 20);
      v19 = *(v11 + 912);
      if ((v19 & 0x10000) == 0)
      {
        *(v11 + 912) = v19 | 0x10000;
        if (*(v11 + 906))
        {
          gleUpdateDrawArraysFuncs(a1);
        }
      }

      v20 = *(v5 + 3844);
      if (*(v5 + 3844))
      {
        v21 = (v12 + 40);
        v22 = (v11 + 1496);
        do
        {
          v23 = *v21++;
          *v22 = v23;
          v22 += 35;
          --v20;
        }

        while (v20);
      }

      if (v17)
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }

    v24 = *(v11 + 912);
    if ((v24 & 0x10000) != 0)
    {
      *(v11 + 912) = v24 & 0xFFFFFFFFFFFEFFFFLL;
      if (*(v11 + 906))
      {
        gleUpdateDrawArraysFuncs(a1);
      }
    }

    v25 = *(v5 + 3844);
    if (*(v5 + 3844))
    {
      v26 = (v11 + 1496);
      v27 = (v25 + 1) & 0x1FE;
      v28 = xmmword_23A102AE0;
      v29 = vdupq_n_s64(v25 - 1);
      v30 = vdupq_n_s64(2uLL);
      do
      {
        v31 = vmovn_s64(vcgeq_u64(v29, v28));
        if (v31.i8[0])
        {
          *v26 = 0;
        }

        if (v31.i8[4])
        {
          v26[35] = 0;
        }

        v28 = vaddq_s64(v28, v30);
        v26 += 70;
        v27 -= 2;
      }

      while (v27);
    }

LABEL_45:
    *(v11 + 952) |= 0x10000uLL;
LABEL_46:
    *v5 = 0;
    *(a1 + 1532) |= 0x1000u;
    *(v11 + 944) |= 0x10010uLL;
    *(v11 + 1240) = v12;
LABEL_47:
    if (v12)
    {
      v7 += *(v12 + 136);
      if (*(v12 + 192))
      {
        if (*(v11 + 906))
        {
          *(v11 + 1216) = 0;
        }
      }
    }

    *(v11 + 960) = v7;
    LODWORD(v32) = v15 * a2;
    if (a4)
    {
      v32 = a4;
    }

    else
    {
      v32 = v32;
    }

    v33 = ((((v32 | v7) & 0xF) == 0) << 57) | (a2 << 48) | (v8 << 32) | v32;
    if (*(v11 + 152) != v33)
    {
      *(v11 + 952) |= 0x10000uLL;
      *(v11 + 152) = v33;
      *(a1 + 26184) = gleSetVertexArrayFunc;
      *(a1 + 26192) = gleSetVertexArrayFunc;
      *(a1 + 26200) = gleSetVertexElemFunc;
      *(a1 + 26208) = gleSetVertexElemFunc;
      *v5 = 0;
      *(a1 + 1532) |= 0x1000u;
    }

    return;
  }

  if (!v13)
  {
    if (*(a1 + 32501) != 2)
    {
      goto LABEL_31;
    }

    v15 = 1;
    goto LABEL_19;
  }

  if (v13 == 1)
  {
    v15 = 2;
    goto LABEL_19;
  }

LABEL_31:
  if (!*(a1 + 29832))
  {
    v16 = 1280;
    goto LABEL_33;
  }
}

void glTexCoordPointer_Exec(uint64_t a1, uint64_t a2, int a3, unsigned int a4, uint64_t a5)
{
  v5 = a1 + 28652;
  v6 = *(a1 + 23770);
  if (v6 >= 9)
  {
    if (!*(a1 + 29832))
    {
      *(a1 + 29832) = 1281;
    }

    return;
  }

  if ((a2 - 5) < 0xFFFFFFFC || (a4 & 0x80000000) != 0 || (v9 = a5, v11 = *(a1 + 26384), v12 = *(a1 + 32501), a2 == 1) && v12 == 2)
  {
    if (!*(a1 + 29832))
    {
      v17 = 1281;
      goto LABEL_36;
    }

    return;
  }

  v13 = *(a1 + 19312);
  if (!v13 && v11 != *(a1 + 26392) && a5 && !*(a1 + 32502))
  {
    if (!*(a1 + 29832))
    {
      v17 = 1282;
LABEL_36:
      *(a1 + 29832) = v17;
      return;
    }

    return;
  }

  HIDWORD(v15) = a3 - 5120;
  LODWORD(v15) = a3 - 5120;
  v14 = v15 >> 1;
  if (v14 > 2)
  {
    if (v14 != 3 && (v14 != 6 || v12 != 2))
    {
      goto LABEL_34;
    }

    v16 = 4;
LABEL_22:
    v18 = v6 + 8;
    v19 = v11 + 24 * (v6 + 8);
    *(v19 + 136) = a5;
    v20 = v19 + 136;
    v21 = (0x1000000 << v6);
    *(v11 + 944) |= v21;
    v22 = v11 + 1240;
    v23 = *(v11 + 1240 + 8 * (v6 + 8));
    v24 = v11 + 8 * (v6 + 8);
    if (v13 == v23)
    {
      goto LABEL_50;
    }

    if (v23 && (v25 = *(v23 + 20) - 1, (*(v23 + 20) = v25) == 0))
    {
      v59 = a1 + 28652;
      v46 = v6;
      v53 = v16;
      v56 = a3;
      v50 = v11 + 8 * (v6 + 8);
      gleUnbindAndFreeBufferObject(a1, v23);
      v22 = v11 + 1240;
      v24 = v50;
      v16 = v53;
      LOWORD(a3) = v56;
      LOBYTE(v6) = v46;
      v5 = v59;
      if (v13)
      {
        goto LABEL_26;
      }
    }

    else if (v13)
    {
LABEL_26:
      ++*(v13 + 20);
      v26 = *(v11 + 912);
      if ((v26 & v21) == 0)
      {
        *(v11 + 912) = v26 | v21;
        if ((*(v11 + 904) & v21) != 0)
        {
          v58 = v5;
          v45 = v6;
          v47 = v22;
          v52 = v16;
          v55 = a3;
          v49 = v24;
          gleUpdateDrawArraysFuncs(a1);
          v22 = v47;
          v24 = v49;
          v16 = v52;
          LOWORD(a3) = v55;
          LOBYTE(v6) = v45;
          v5 = v58;
        }
      }

      v27 = *(v5 + 3844);
      if (*(v5 + 3844))
      {
        v28 = (v13 + 40);
        v29 = (v24 + 1496);
        do
        {
          v30 = *v28++;
          *v29 = v30;
          v29 += 35;
          --v27;
        }

        while (v27);
      }

      if (v23)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    v31 = *(v11 + 912);
    if ((v31 & v21) != 0)
    {
      *(v11 + 912) = v31 & ~v21;
      if ((*(v11 + 904) & v21) != 0)
      {
        v60 = v5;
        v32 = v6;
        v54 = v16;
        v57 = a3;
        v48 = v22;
        v51 = v24;
        gleUpdateDrawArraysFuncs(a1);
        v22 = v48;
        v24 = v51;
        v16 = v54;
        LOWORD(a3) = v57;
        LOBYTE(v6) = v32;
        v5 = v60;
      }
    }

    v33 = *(v5 + 3844);
    if (*(v5 + 3844))
    {
      v34 = (v24 + 1496);
      v35 = (v33 + 1) & 0x1FE;
      v36 = xmmword_23A102AE0;
      v37 = vdupq_n_s64(v33 - 1);
      v38 = vdupq_n_s64(2uLL);
      do
      {
        v39 = vmovn_s64(vcgeq_u64(v37, v36));
        if (v39.i8[0])
        {
          *v34 = 0;
        }

        if (v39.i8[4])
        {
          v34[35] = 0;
        }

        v36 = vaddq_s64(v36, v38);
        v34 += 70;
        v35 -= 2;
      }

      while (v35);
    }

LABEL_48:
    *(v11 + 952) |= v21;
LABEL_49:
    *v5 = 0;
    *(a1 + 1532) |= 0x1000u;
    *(v11 + 944) |= v21 | 0x10;
    *(v22 + 8 * v18) = v13;
LABEL_50:
    if (v13)
    {
      v9 += *(v13 + 136);
      if (*(v13 + 192))
      {
        if ((*(v11 + 904) & v21) != 0)
        {
          *(v11 + 1216) = 0;
        }
      }
    }

    *(v24 + 960) = v9;
    LODWORD(v40) = v16 * a2;
    if (a4)
    {
      v40 = a4;
    }

    else
    {
      v40 = v40;
    }

    v41 = *(v20 + 16);
    v42 = ((((v40 | v9) & 0xF) == 0) << 57) | (a2 << 48) | (a3 << 32) | v40;
    if (v41 != v42)
    {
      if ((a2 == 4) == ((v41 & 0xFF000000000000) != 0x4000000000000))
      {
        v43 = *(v11 + 1220);
        v44 = v43 & ~(1 << v6);
        if (a2 != 4)
        {
          LOBYTE(v44) = v43 | (1 << v6);
        }

        *(v11 + 1220) = v44;
        *(a1 + 1548) |= 0x4000u;
      }

      *(v11 + 952) |= v21;
      *(v20 + 16) = v42;
      *(a1 + 26184) = gleSetVertexArrayFunc;
      *(a1 + 26192) = gleSetVertexArrayFunc;
      *(a1 + 26200) = gleSetVertexElemFunc;
      *(a1 + 26208) = gleSetVertexElemFunc;
      *v5 = 0;
      *(a1 + 1532) |= 0x1000u;
    }

    return;
  }

  if (!v14)
  {
    if (v12 != 2)
    {
      goto LABEL_34;
    }

    v16 = 1;
    goto LABEL_22;
  }

  if (v14 == 1)
  {
    v16 = 2;
    goto LABEL_22;
  }

LABEL_34:
  if (!*(a1 + 29832))
  {
    v17 = 1280;
    goto LABEL_36;
  }
}

void glDrawArrays_Exec(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5, double a6, double a7)
{
  v7 = (a1 + 26336);
  if (a2 >= 7)
  {
    if (*(a1 + 29832))
    {
      return;
    }

    v22 = 1280;
    goto LABEL_34;
  }

  v9 = *(a1 + 26384);
  if ((~*(v9 + 904) & 0x900000) != 0 && *(a1 + 17699) != 0 || (*(v9 + 904) & 0x100010000) == 0)
  {
    return;
  }

  if (a4 <= 0)
  {
    if ((a4 & 0x80000000) == 0 || *(a1 + 29832))
    {
      return;
    }

    v22 = 1281;
LABEL_34:
    *(a1 + 29832) = v22;
    return;
  }

  v15 = *(a1 + 26432);
  if (*(v15 + 42) == -1 || *(v15 + 41) || (glDrawArrays_Exec_cold_1(v15, a2, a4, a1) & 1) == 0)
  {
    if (*v7 != 5375)
    {
      *(a1 + 26312) = 0;
      *v7 = 5375;
    }

    v16 = gleDrawArraysOrElements_Entries_Body(a1, 2, a2, 1u, v9 + 40, a5, a6, a7);
    if (v16 != 2)
    {
      v20 = v16;
      if (!v16 || !(*(a1 + 29232))(*(a1 + 29016), 0, a2, a3, a4, *v7, *(a1 + 26312), 1, 0))
      {
        if ((*(v7 + 579) & (1 << a2)) == 0 || (*(v7 + 2345) & 1) == 0 || (*(v7 + 2347) & 2) == 0)
        {
          if (!gleDoDrawDispatchCore(a1, 1 << a2, 1u, 2u, v17, v18, v19))
          {
            goto LABEL_21;
          }

LABEL_27:
          if (v20 && *(v9 + 912) && !*(v9 + 1216))
          {
            gleSynchronizeBuffersInArray(a1, v9 + 40);
          }

          gleDrawArraysOrElements_ExecCore(a1, a2, a3, a4, 0, v9 + 40, 1);
          goto LABEL_21;
        }

        if (!*(a1 + 32482))
        {
          goto LABEL_27;
        }
      }

LABEL_21:
      v21 = *(*(a1 + 19296) + 316);
      if (*(v7 + 870) != v21)
      {
        if (*(a1 + 28960))
        {
          gleInvalidateCurrentDrawFramebufferTextures(a1);
          v21 = *(*(a1 + 19296) + 316);
        }

        *(v7 + 870) = v21;
      }
    }
  }
}

uint64_t gleFlushAtomicFunc(uint64_t a1)
{
  result = (*(a1 + 28144))();
  *(a1 + 28668) = 1;
  *(a1 + 26008) = *(a1 + 26000);
  return result;
}

uint64_t glGetBooleanv_Exec(uint64_t a1, int a2, BOOL *a3, double a4, double a5, double a6)
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v16 = 0;
  memset(v18, 0, sizeof(v18));
  result = gleGetState(a1, a2, v18, &v16, &v17, 0.0, a5, a6);
  if (result == -2)
  {
    if (*(a1 + 29832))
    {
      return result;
    }

    v9 = 1282;
    goto LABEL_7;
  }

  if (result == -1)
  {
    if (*(a1 + 29832))
    {
      return result;
    }

    v9 = 1280;
LABEL_7:
    *(a1 + 29832) = v9;
    return result;
  }

  if (v16 == 5124)
  {
    if (result >= 1)
    {
      v10 = result;
      v11 = v18;
      do
      {
        v12 = *v11++;
        *a3++ = v12 != 0;
        --v10;
      }

      while (v10);
    }
  }

  else if (result >= 1)
  {
    v13 = result;
    v14 = v18;
    do
    {
      v15 = *v14++;
      *a3++ = v15 != 0.0;
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t gleGetEnabled(uint64_t a1, int a2)
{
  if (a2 < 12288)
  {
    if (a2 > 3023)
    {
      switch(a2)
      {
        case 3024:
          return *(a1 + 15224);
        case 3042:
          LOBYTE(v3) = *(a1 + 15120);
          return v3 & 1;
        case 3089:
          return *(a1 + 15556);
      }
    }

    else
    {
      switch(a2)
      {
        case 2884:
          return *(a1 + 15534);
        case 2929:
          return *(a1 + 15204);
        case 2960:
          LOBYTE(v3) = *(a1 + 15644);
          return v3 & 1;
      }
    }
  }

  else if (a2 > 32822)
  {
    switch(a2)
    {
      case 32823:
        return *(a1 + 15537);
      case 32926:
        return *(a1 + 17681);
      case 32928:
        return *(a1 + 17683);
    }
  }

  else if ((a2 - 12288) < 6)
  {
LABEL_4:
    v2 = *(a1 + 17572);
LABEL_5:
    v3 = v2 >> a2;
    return v3 & 1;
  }

  v5 = (a1 + 29832);
  v6 = *(a1 + 32501);
  if (v6 != 2)
  {
    if (a2 == 35977 && v6 == 4)
    {
      return *(a1 + 17984);
    }

    if (a2 == 36201 && v6 == 4)
    {
      return *(a1 + 17716);
    }

    if (a2 >> 1 == 6147 && (v6 - 3) <= 1)
    {
      goto LABEL_4;
    }

    goto LABEL_50;
  }

  if (a2 > 32825)
  {
    if (a2 > 32926)
    {
      if (a2 > 34883)
      {
        switch(a2)
        {
          case 34884:
            return (*(*(a1 + 26384) + 904) >> 23) & 1;
          case 34913:
            return *(a1 + 15377);
          case 35740:
            return (*(*(a1 + 26384) + 904) >> 22) & 1;
          default:
            goto LABEL_50;
        }
      }

      else
      {
        switch(a2)
        {
          case 32927:
            return *(a1 + 17682);
          case 34477:
            return (*(*(a1 + 26384) + 904) >> 20) & 1;
          case 34880:
            return *(a1 + 17699);
          default:
            goto LABEL_50;
        }
      }
    }

    else if (a2 > 32885)
    {
      switch(a2)
      {
        case 32886:
          return (*(*(a1 + 26384) + 904) >> 18) & 1;
        case 32888:
          return (*(*(a1 + 26384) + 904) >> *(a1 + 23770) >> 24) & 1;
        case 32925:
          return *(a1 + 17680);
        default:
          goto LABEL_50;
      }
    }

    else
    {
      if (a2 != 32826)
      {
        if (a2 == 32884)
        {
          LOBYTE(v3) = *(*(a1 + 26384) + 906);
          return v3 & 1;
        }

        if (a2 == 32885)
        {
          return (*(*(a1 + 26384) + 904) >> 17) & 1;
        }

        goto LABEL_50;
      }

      return *(a1 + 12517);
    }
  }

  else if (a2 > 3057)
  {
    if ((a2 - 0x4000) < 8)
    {
      v2 = *(a1 + 14880);
      goto LABEL_5;
    }

    if (a2 != 3058)
    {
      if (a2 == 3553)
      {
        if (*(a1 + 23768) < 8uLL)
        {
          return (*(a1 + 76 * *(a1 + 23768) + 15684) >> 3) & 1;
        }

        if (*v5)
        {
          return 0;
        }

        result = 0;
        v7 = 1282;
        goto LABEL_77;
      }

LABEL_50:
      if (*v5)
      {
        return 0;
      }

      result = 0;
      v7 = 1280;
LABEL_77:
      *v5 = v7;
      return result;
    }

    return *(a1 + 15319);
  }

  else if (a2 <= 2902)
  {
    switch(a2)
    {
      case 2832:
        return *(a1 + 32507) & 0x7F;
      case 2848:
        return *(a1 + 15315);
      case 2896:
        return *(a1 + 14890);
      default:
        goto LABEL_50;
    }
  }

  else if (a2 > 2976)
  {
    if (a2 != 2977)
    {
      if (a2 == 3008)
      {
        return *(a1 + 15006);
      }

      goto LABEL_50;
    }

    return *(a1 + 12516);
  }

  else
  {
    if (a2 != 2903)
    {
      if (a2 == 2912)
      {
        return *(a1 + 15282);
      }

      goto LABEL_50;
    }

    return *(a1 + 14891);
  }
}

uint64_t gleSetEnable_SCISSOR_TEST(uint64_t result, uint64_t a2, int a3)
{
  v3 = a3 != 0;
  if (*(result + 15576) != v3)
  {
    v4 = (result + 28652);
    *(result + 15576) = v3;
    result = gleUpdateViewScissorData(result);
    *v4 = 0;
    v4[287] |= 0x4000000u;
  }

  return result;
}

uint64_t gleSetEnable_DITHER(uint64_t result, uint64_t a2, int a3)
{
  if (*(result + 15224) != a3)
  {
    *(result + 15224) = a3;
    *(result + 29800) |= 0x400u;
    *(result + 28652) = 0;
    *(result + 1548) |= 0x40000u;
  }

  return result;
}

uint64_t glColorMask_Exec(uint64_t result, int a2, int a3, int a4, int a5)
{
  v5 = (result + 15336);
  if (a2)
  {
    v6 = 255;
  }

  else
  {
    v6 = 0;
  }

  if (a2)
  {
    v7 = -1;
  }

  else
  {
    v7 = 0;
  }

  if (a3)
  {
    v8 = -1;
  }

  else
  {
    v8 = 0;
  }

  if (a4)
  {
    v9 = -1;
  }

  else
  {
    v9 = 0;
  }

  if (a5)
  {
    v10 = -1;
  }

  else
  {
    v10 = 0;
  }

  if (*v5 != v6 || *(result + 15337) != v8 || *(result + 15338) != v9 || *(result + 15339) != v10)
  {
    *v5 = v7;
    *(result + 15337) = v8;
    *(result + 15338) = v9;
    *(result + 15339) = v10;
    v11 = *(result + 29804) & 0xFFFFFF00 | (v8 | v7 | v9 | v10);
    *(result + 29804) = v11;
    v12 = *(result + 28960);
    if (v12)
    {
      v13 = (v12 + 552);
    }

    else
    {
      v13 = (result + 29808);
    }

    *(result + 15342) = *v13 & v11;
    *(result + 29800) |= 0x40000u;
    *(result + 28652) = 0;
    *(result + 1548) |= 0x40000u;
  }

  return result;
}

uint64_t glDepthMask_Exec(uint64_t result, int a2)
{
  v2 = a2 != 0;
  if (*(result + 15340) != v2)
  {
    *(result + 15340) = v2;
    v3 = *(result + 29804) & 0xFFFFFEFF | ((a2 != 0) << 8);
    *(result + 29804) = v3;
    v4 = *(result + 28960);
    if (v4)
    {
      v5 = (v4 + 552);
    }

    else
    {
      v5 = (result + 29808);
    }

    *(result + 15342) = *v5 & v3;
    *(result + 29800) |= 0x80000u;
    *(result + 28652) = 0;
    *(result + 1548) |= 0x40000u;
  }

  return result;
}

uint64_t glStencilMask_Exec(uint64_t result, int a2)
{
  v2 = (result + 28652);
  if (*(result + 29776) == 1028)
  {
    if (*(result + 15324) == a2 && *(result + 15332) == a2)
    {
      return result;
    }

    *(result + 15324) = a2;
    *(result + 15332) = a2;
    v3 = *(result + 15644);
    if (v3 == 65)
    {
      LOBYTE(v4) = 1;
      *(result + 15644) = 1;
      *v2 = 0;
      *(result + 1548) |= 0x8000u;
    }

    else
    {
      LOBYTE(v4) = v3 & 0xBF;
      *(result + 15644) = v3 & 0xFFFFFFBF;
    }
  }

  else
  {
    if (*(result + 15328) == a2)
    {
      return result;
    }

    *(result + 15328) = a2;
    v4 = *(result + 15644);
    a2 = *(result + 15324);
  }

  v5 = (v4 & 4) == 0;
  v6 = 4;
  if (v5)
  {
    v6 = 8;
  }

  v7 = result + v6;
  v8 = *(result + 29804) & 0xFFFFF9FF | 0x200;
  if (!a2)
  {
    v8 = *(result + 29804) & 0xFFFFF9FF;
  }

  *(result + 29804) = v8;
  if (*(v7 + 15324))
  {
    v8 |= 0x400u;
    *(result + 29804) = v8;
  }

  v9 = *(result + 28960);
  if (v9)
  {
    v10 = (v9 + 552);
  }

  else
  {
    v10 = (result + 29808);
  }

  *(result + 15342) = *v10 & v8;
  *(result + 29800) |= 0x100000u;
  *v2 = 0;
  *(result + 1548) |= 0x40000u;
  return result;
}

uint64_t glHint_Exec(uint64_t result, int a2, int a3)
{
  if ((a3 - 4355) <= 0xFFFFFFFC)
  {
    goto LABEL_2;
  }

  v3 = *(result + 32501);
  if (a2 == 3154 && v3 == 2)
  {
    *(result + 15288) = a3;
LABEL_13:
    *(result + 28652) = 0;
    *(result + 1524) |= 0x8000000u;
    return result;
  }

  if (a2 == 35723 && (v3 - 3) <= 1)
  {
    *(result + 15300) = a3;
    goto LABEL_13;
  }

  if (a2 == 33170)
  {
    *(result + 15296) = a3;
    goto LABEL_13;
  }

  if (v3 == 2)
  {
    switch(a2)
    {
      case 3156:
        *(result + 15292) = a3;
        return gleUpdateFogData(result);
      case 3153:
        *(result + 15286) = a3;
        goto LABEL_13;
      case 3152:
        *(result + 15284) = a3;
        *(result + 1548) |= 0x30400u;
        goto LABEL_13;
    }
  }

LABEL_2:
  if (!*(result + 29832))
  {
    *(result + 29832) = 1280;
  }

  return result;
}

void glePPUpdateProgram(uint64_t a1, int16x4_t *a2)
{
  if ((a2[53].i8[2] & 0xFB) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = 67109888;
  }

  __pattern4 = v4;
  v5 = a2 + 71;
  memset_pattern4(&a2[71], &__pattern4, 0xED8uLL);
  a2[17].i32[1] = 0;
  v6 = a2[54];
  if (v6)
  {
    v13 = v5;
    if (a2[52].i8[1])
    {
      v7 = (*(*(a1 + 19296) + 346) & 1) == 0;
    }

    else
    {
      v7 = 0;
    }

    a2[52].i8[2] = glePPSetParamRemap(0xFFFFFFFF, *&v6 + 8 * *(*&v6 + 60), *(*&v6 + 56), v7, &v13, &a2[18], &a2[34], &a2[17] + 1);
    PPStreamTokenConvertParamBindings();
  }

  if (a2[55])
  {
    v8 = a2[13];
    if (v8)
    {
      v11 = *v8;
      v9 = (v8 + 4);
      v10 = v11;
      v13 = v5;
      if (a2[52].i8[1])
      {
        v12 = (*(*(a1 + 19296) + 346) & 1) == 0;
      }

      else
      {
        v12 = 0;
      }

      a2[52].i8[2] = glePPSetParamRemap(0xFFFFFFFF, v9, v10, v12, &v13, &a2[18], &a2[34], &a2[17] + 1);
      PPStreamTokenConvertParamBindingsToGeneric();
    }
  }
}

uint64_t gleVPEnable(uint64_t a1)
{
  *(*(a1 + 1424) + 496) |= 0x1Eu;
  *(*(a1 + 1432) + 496) |= 0x1Eu;
  v2 = *(a1 + 24864);
  if ((v2 & 8) != 0)
  {
    v5 = *(a1 + 24768);
    if (!v5)
    {
      v5 = *(*(a1 + 24776) + 64);
    }

    if (*(v5 + 2326))
    {
      v4 = 0;
    }

    else
    {
      v4 = *(a1 + 29714);
    }

    if (!*(v5 + 2327))
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (v2)
  {
    v6 = *(a1 + 24768);
    if (!v6)
    {
      v6 = *(*(a1 + 24776) + 40);
    }

    if (*(v6 + 214))
    {
      v4 = 0;
    }

    else
    {
      v4 = *(a1 + 29714);
    }

    if (!*(v6 + 215))
    {
LABEL_17:
      v3 = *(a1 + 29714);
      goto LABEL_18;
    }

LABEL_14:
    v3 = 0;
    goto LABEL_18;
  }

  v3 = *(a1 + 29714);
  v4 = v3;
LABEL_18:
  if (v4 != *(a1 + 17702) || v3 != *(a1 + 17703))
  {
    *(a1 + 17702) = v4;
    *(a1 + 17703) = v3;
    *(a1 + 1524) |= 0x400000u;
    *(a1 + 28652) = 0;
    *(a1 + 1548) |= 0x400u;
  }

  v7 = v2 & 9;
  if (v7 || *(a1 + 24756))
  {
    v8 = *(a1 + 24750);
  }

  else if (*(a1 + 15379))
  {
    v8 = 1;
  }

  else
  {
    v8 = *(a1 + 15378) != 0;
  }

  if (v8 != *(a1 + 17700))
  {
    *(a1 + 17700) = v8;
    *(a1 + 1532) |= 0x40000000u;
    *(a1 + 28652) = 0;
    *(a1 + 1548) |= 0x10000000u;
  }

  if (v7 || *(a1 + 24756))
  {
    v9 = *(a1 + 24751);
  }

  else if (*(a1 + 14890))
  {
    v9 = *(a1 + 14892) != 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9 != *(a1 + 17701))
  {
    *(a1 + 17701) = v9;
    *(a1 + 1532) |= 0x40000000u;
    *(a1 + 28652) = 0;
    v10 = *(a1 + 1548);
    *(a1 + 1548) = v10 | 0x10008400;
    if ((*(*(a1 + 29032) + 25) & 0x7F) != 0)
    {
      *(a1 + 1548) = v10 | 0x10038400;
    }
  }

  gleVPChangedCore(a1);

  return gleSetColorMaterialEnable(a1);
}

uint64_t gleVPChanged(uint64_t a1)
{
  v1 = *(a1 + 24864);
  if ((v1 & 8) != 0)
  {
    v4 = *(a1 + 24768);
    if (!v4)
    {
      v4 = *(*(a1 + 24776) + 64);
    }

    if (*(v4 + 2326))
    {
      v3 = 0;
    }

    else
    {
      v3 = *(a1 + 29714);
    }

    if (!*(v4 + 2327))
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (v1)
  {
    v5 = *(a1 + 24768);
    if (!v5)
    {
      v5 = *(*(a1 + 24776) + 40);
    }

    if (*(v5 + 214))
    {
      v3 = 0;
    }

    else
    {
      v3 = *(a1 + 29714);
    }

    if (!*(v5 + 215))
    {
LABEL_17:
      v2 = *(a1 + 29714);
      goto LABEL_18;
    }

LABEL_14:
    v2 = 0;
    goto LABEL_18;
  }

  v2 = *(a1 + 29714);
  v3 = v2;
LABEL_18:
  if (v3 != *(a1 + 17702) || v2 != *(a1 + 17703))
  {
    *(a1 + 17702) = v3;
    *(a1 + 17703) = v2;
    *(a1 + 1524) |= 0x400000u;
    *(a1 + 28652) = 0;
    *(a1 + 1548) |= 0x400u;
  }

  v6 = v1 & 9;
  if (v6 || *(a1 + 24756))
  {
    v7 = *(a1 + 24750);
  }

  else if (*(a1 + 15379))
  {
    v7 = 1;
  }

  else
  {
    v7 = *(a1 + 15378) != 0;
  }

  if (v7 != *(a1 + 17700))
  {
    *(a1 + 17700) = v7;
    *(a1 + 1532) |= 0x40000000u;
    *(a1 + 28652) = 0;
    *(a1 + 1548) |= 0x10000000u;
  }

  if (v6 || *(a1 + 24756))
  {
    v8 = *(a1 + 24751);
  }

  else if (*(a1 + 14890))
  {
    v8 = *(a1 + 14892) != 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8 != *(a1 + 17701))
  {
    *(a1 + 17701) = v8;
    *(a1 + 1532) |= 0x40000000u;
    *(a1 + 28652) = 0;
    v9 = *(a1 + 1548);
    *(a1 + 1548) = v9 | 0x10008400;
    if ((*(*(a1 + 29032) + 25) & 0x7F) != 0)
    {
      *(a1 + 1548) = v9 | 0x10038400;
    }
  }

  return gleVPChangedCore(a1);
}

uint64_t gleGPEnable(uint64_t a1)
{
  *(*(a1 + 1424) + 496) |= 0x1Eu;
  *(*(a1 + 1432) + 496) |= 0x1Eu;
  return gleGPChanged(a1);
}

uint64_t gleGPChanged(uint64_t a1)
{
  v2 = (a1 + 24750);
  v3 = (a1 + 14888);
  v4 = *(a1 + 24864);
  if ((v4 & 9) != 0 || *(a1 + 24756))
  {
    v5 = *(a1 + 24751);
  }

  else if (*(a1 + 14890))
  {
    v5 = *(a1 + 14892) != 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5 != *(a1 + 17701))
  {
    *(a1 + 17701) = v5;
    *(a1 + 1532) |= 0x40000000u;
    *(a1 + 28652) = 0;
    v6 = *(a1 + 1548);
    *(a1 + 1548) = v6 | 0x10008400;
    if ((*(*(a1 + 29032) + 25) & 0x7F) != 0)
    {
      *(a1 + 1548) = v6 | 0x10038400;
    }
  }

  if ((v4 & 9) != 0 || *(a1 + 24756))
  {
    v7 = *v2;
  }

  else if (*(a1 + 15379))
  {
    v7 = 1;
  }

  else
  {
    v7 = *(a1 + 15378) != 0;
  }

  v8 = (a1 + 29714);
  if (v7 != *(a1 + 17700))
  {
    *(a1 + 17700) = v7;
    *(a1 + 1532) |= 0x40000000u;
    *(a1 + 28652) = 0;
    *(a1 + 1548) |= 0x10000000u;
  }

  if ((v4 & 8) != 0)
  {
    v11 = *(a1 + 24768);
    if (!v11)
    {
      v11 = *(*(a1 + 24776) + 64);
    }

    if (*(v11 + 2326))
    {
      v10 = 0;
    }

    else
    {
      v10 = *v8;
    }

    if (!*(v11 + 2327))
    {
      goto LABEL_32;
    }

    goto LABEL_25;
  }

  if (v4)
  {
    v12 = *(a1 + 24768);
    if (!v12)
    {
      v12 = *(*(a1 + 24776) + 40);
    }

    if (*(v12 + 214))
    {
      v10 = 0;
    }

    else
    {
      v10 = *v8;
    }

    if (!*(v12 + 215))
    {
LABEL_32:
      v9 = *v8;
      goto LABEL_33;
    }

LABEL_25:
    v9 = 0;
    goto LABEL_33;
  }

  v9 = *v8;
  v10 = v9;
LABEL_33:
  if (v10 != *(a1 + 17702) || v9 != *(a1 + 17703))
  {
    *(a1 + 17702) = v10;
    *(a1 + 17703) = v9;
    *(a1 + 1524) |= 0x400000u;
    *(a1 + 28652) = 0;
    *(a1 + 1548) |= 0x400u;
  }

  if ((v4 & 8) != 0)
  {
    v14 = *(a1 + 24768);
    if (!v14)
    {
      v14 = *(*(a1 + 24776) + 64);
    }

    v13 = *(v14 + 2280);
    if (*(v14 + 2325))
    {
      v15 = 0;
      v16 = v14 + 2340;
      do
      {
        *(a1 + 1936 + v15) = *(v16 + v15);
        v15 += 4;
      }

      while (v15 != 128);
      v17 = 69271552;
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2016) = 0u;
  *(a1 + 2000) = 0u;
  *(a1 + 1984) = 0u;
  *(a1 + 1968) = 0u;
  *(a1 + 1952) = 0u;
  v17 = 2162688;
  *(a1 + 1936) = 0u;
LABEL_45:
  *(a1 + 24352) = gleSetGPTransformFuncAll;
  *(a1 + 24360) = gleSetGPTransformFuncAll;
  gleUpdateInverseNeeds(a1);
  if (*(v3 + 2))
  {
    v18 = (v4 & 8) != 0 ? v8[2792] : (*v3 == 33274);
    if (v18 != *(v3 + 395))
    {
      *(v3 + 395) = v18;
      *(v2 + 3902) = 0;
      *(a1 + 1548) |= 0x20000u;
    }
  }

  result = gleUpdateInvalidPrimitives(a1);
  if (*(a1 + 19272) == v13)
  {
    v17 = 2162688;
  }

  else
  {
    *(a1 + 19272) = v13;
  }

  *(a1 + 1532) |= v17;
  *(v2 + 3902) = 0;
  *(a1 + 1548) |= 0x808202u;
  return result;
}

uint64_t gleFPChanged(uint64_t a1)
{
  v2 = a1 + 24760;
  if ((*(a1 + 24864) & 0x10) != 0)
  {
    v6 = *(a1 + 24768);
    if (!v6)
    {
      v6 = *(*(a1 + 24776) + 72);
    }

    v7 = (v6 + 3044);
    v8 = *(v6 + 2984);
    v9 = *(v6 + 3029);
  }

  else
  {
    v3 = (a1 + 32496);
    if (*v2)
    {
      v4 = *(a1 + 24432);
      v5 = (v4 + 40);
      if (!*(v4 + 472))
      {
        *(a1 + 28652) = 0;
        *(a1 + 1540) |= 0x20000000u;
      }
    }

    else
    {
      v5 = *(a1 + 24512);
    }

    v7 = v5 + 34;
    v8 = v5 + 71;
    v9 = *(v5 + 418);
    v10 = *v3;
    if (*v3)
    {
      v11 = (a1 + 33464);
      do
      {
        v12 = *v5++;
        *v11 = v12;
        v11 += 209;
        --v10;
      }

      while (v10);
    }
  }

  v13 = (a1 + 2064);
  if (v9)
  {
    for (i = 0; i != 128; i += 4)
    {
      *(v13 + i) = *(v7 + i);
    }
  }

  else
  {
    *(a1 + 2160) = 0u;
    *(a1 + 2176) = 0u;
    *(a1 + 2128) = 0u;
    *(a1 + 2144) = 0u;
    *(a1 + 2096) = 0u;
    *(a1 + 2112) = 0u;
    *v13 = 0u;
    *(a1 + 2080) = 0u;
  }

  gleUpdateFogData(a1);
  result = gleUpdateInverseNeeds(a1);
  v16 = 4325376;
  if (*(a1 + 19280) != v8)
  {
    *(a1 + 19280) = v8;
    if (v9)
    {
      v16 = 138543104;
    }

    else
    {
      v16 = 4325376;
    }
  }

  *(a1 + 1532) |= v16;
  *(v2 + 3892) = 0;
  *(a1 + 1548) |= 0x71018402u;
  return result;
}

uint64_t gleModifyPluginPipelineProgram(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(result + 32496);
  if (*(result + 32496))
  {
    v6 = result;
    v7 = 0;
    v8 = a3 & 5;
    v9 = (result + 32520);
    do
    {
      *(a2 + 4 * v7 + 520) |= a3;
      if (v8)
      {
        result = (*(v9[205] + 1640))(*v9, *(a2 + 8 * v7), v8);
        v3 = *(v6 + 32496);
      }

      ++v7;
      v9 += 209;
    }

    while (v7 < v3);
  }

  return result;
}

float32x2_t *gleUpdateLightRGBASums(float32x2_t *result, float32x2_t *a2, int a3)
{
  v3 = a2[62].i8[0];
  v4 = a2[64];
  if (v4)
  {
    v5 = (a2[62].u8[1] | *(*&v4 + 496)) ^ 0xFF;
  }

  else
  {
    v5 = 0;
  }

  if ((a2[62].i8[0] & 0xF) != 0)
  {
    if ((~v5 & 0xF) != 0)
    {
      a2[58] = vmla_f32(a2[6], *a2, result[1566]);
      a2[59].f32[0] = a2[7].f32[0] + (result[1567].f32[0] * a2[1].f32[0]);
      a2[59].i32[1] = a2[3].i32[1];
      v7 = result[2406];
      if (v7)
      {
        v8 = *(*&v7 + 12 * a3 + 2826);
        if (v8 <= 0x3FF)
        {
          *(result[194].i32 + ((v8 >> 3) & 0x1FFC)) |= 1 << v8;
          result[3581].i32[1] = 0;
          result[191].i32[1] |= 0x800000u;
        }
      }

      v6 = a2 + 58;
      v9 = result[2409];
      if (v9)
      {
        v10 = *(*&v9 + 12 * a3 + 2826);
        if (v10 <= 0x3FF)
        {
          *(result[242].i32 + ((v10 >> 3) & 0x1FFC)) |= 1 << v10;
          result[3581].i32[1] = 0;
          result[191].i32[1] |= 0x4000000u;
        }
      }

      v11 = result[2410];
      if (v11)
      {
        v12 = *(*&v11 + 12 * a3 + 2826);
        if (v12 <= 0x3FF)
        {
          *(result[258].i32 + ((v12 >> 3) & 0x1FFC)) |= 1 << v12;
          result[3581].i32[1] = 0;
          result[191].i32[1] |= 0x8000000u;
        }
      }
    }

    else
    {
      *a2[58].f32 = *(*&v4 + 464);
      v6 = (*&v4 + 480);
    }

    *a2[60].f32 = *v6->f32;
  }

  v13 = result[1860].u32[0];
  if (v13)
  {
    v14 = a2 + 10;
    v15 = result + 194;
    v16 = result + 242;
    v17 = result + 258;
    v19 = (~v5 & 0xF) == 0 || (v3 & 0xF) == 0;
    v20 = 6 * a3;
    v21 = (*&v4 + 112);
    v22 = &result[1573];
    do
    {
      if (v13)
      {
        if ((v3 & 4) != 0)
        {
          if ((v5 & 4) != 0)
          {
            *v14->f32 = *(v21 - 2);
          }

          else
          {
            *v14 = vmul_f32(*(v22 - 10), *a2);
            v23 = a2[1].i32[1];
            v14[1].f32[0] = *(v22 - 8) * a2[1].f32[0];
            v14[1].i32[1] = v23;
            v24 = result[2406];
            if (v24)
            {
              v25 = *(*&v24 + v20 + 2720);
              if (v25 <= 0x3FF)
              {
                *(v15->i32 + ((v25 >> 3) & 0x1FFC)) |= 1 << v25;
                result[3581].i32[1] = 0;
                result[191].i32[1] |= 0x800000u;
              }
            }

            v26 = result[2409];
            if (v26)
            {
              v27 = *(*&v26 + v20 + 2720);
              if (v27 <= 0x3FF)
              {
                *(v16->i32 + ((v27 >> 3) & 0x1FFC)) |= 1 << v27;
                result[3581].i32[1] = 0;
                result[191].i32[1] |= 0x4000000u;
              }
            }

            v28 = result[2410];
            if (v28)
            {
              v29 = *(*&v28 + v20 + 2720);
              if (v29 <= 0x3FF)
              {
                *(v17->i32 + ((v29 >> 3) & 0x1FFC)) |= 1 << v29;
                result[3581].i32[1] = 0;
                result[191].i32[1] |= 0x8000000u;
              }
            }
          }
        }

        if (!v19)
        {
          a2[60] = vadd_f32(*v14, a2[60]);
          a2[61].f32[0] = v14[1].f32[0] + a2[61].f32[0];
        }

        if ((v3 & 8) != 0)
        {
          if ((v5 & 8) != 0)
          {
            *v14[2].f32 = *(v21 - 1);
          }

          else
          {
            v14[2] = vmul_f32(*(v22 - 6), a2[2]);
            v30 = a2[3].i32[1];
            v14[3].f32[0] = *(v22 - 4) * a2[3].f32[0];
            v14[3].i32[1] = v30;
            v31 = result[2406];
            if (v31)
            {
              v32 = *(*&v31 + v20 + 2722);
              if (v32 <= 0x3FF)
              {
                *(v15->i32 + ((v32 >> 3) & 0x1FFC)) |= 1 << v32;
                result[3581].i32[1] = 0;
                result[191].i32[1] |= 0x800000u;
              }
            }

            v33 = result[2409];
            if (v33)
            {
              v34 = *(*&v33 + v20 + 2722);
              if (v34 <= 0x3FF)
              {
                *(v16->i32 + ((v34 >> 3) & 0x1FFC)) |= 1 << v34;
                result[3581].i32[1] = 0;
                result[191].i32[1] |= 0x4000000u;
              }
            }

            v35 = result[2410];
            if (v35)
            {
              v36 = *(*&v35 + v20 + 2722);
              if (v36 <= 0x3FF)
              {
                *(v17->i32 + ((v36 >> 3) & 0x1FFC)) |= 1 << v36;
                result[3581].i32[1] = 0;
                result[191].i32[1] |= 0x8000000u;
              }
            }
          }
        }

        if ((v3 & 0x10) != 0)
        {
          if ((v5 & 0x10) != 0)
          {
            *v14[4].f32 = *v21;
          }

          else
          {
            v14[4] = vmul_f32(*(v22 - 2), a2[4]);
            v37 = a2[5].i32[1];
            v14[5].f32[0] = *v22 * a2[5].f32[0];
            v14[5].i32[1] = v37;
            v38 = result[2406];
            if (v38)
            {
              v39 = *(*&v38 + v20 + 2724);
              if (v39 <= 0x3FF)
              {
                *(v15->i32 + ((v39 >> 3) & 0x1FFC)) |= 1 << v39;
                result[3581].i32[1] = 0;
                result[191].i32[1] |= 0x800000u;
              }
            }

            v40 = result[2409];
            if (v40)
            {
              v41 = *(*&v40 + v20 + 2724);
              if (v41 <= 0x3FF)
              {
                *(v16->i32 + ((v41 >> 3) & 0x1FFC)) |= 1 << v41;
                result[3581].i32[1] = 0;
                result[191].i32[1] |= 0x4000000u;
              }
            }

            v42 = result[2410];
            if (v42)
            {
              v43 = *(*&v42 + v20 + 2724);
              if (v43 <= 0x3FF)
              {
                *(v17->i32 + ((v43 >> 3) & 0x1FFC)) |= 1 << v43;
                result[3581].i32[1] = 0;
                result[191].i32[1] |= 0x8000000u;
              }
            }
          }
        }
      }

      v20 += 12;
      v21 += 3;
      v14 += 6;
      v22 += 40;
      v44 = v13 > 1;
      v13 >>= 1;
    }

    while (v44);
  }

  a2[62].i8[0] = 0;
  return result;
}

uint64_t gleVPDisable(uint64_t a1)
{
  v2 = (a1 + 29714);
  v3 = (a1 + 24750);
  v4 = *(a1 + 24864);
  if ((v4 & 8) != 0)
  {
    v7 = *(a1 + 24768);
    if (!v7)
    {
      v7 = *(*(a1 + 24776) + 64);
    }

    if (*(v7 + 2326))
    {
      v6 = 0;
    }

    else
    {
      v6 = *v2;
    }

    if (!*(v7 + 2327))
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (v4)
  {
    v8 = *(a1 + 24768);
    if (!v8)
    {
      v8 = *(*(a1 + 24776) + 40);
    }

    if (*(v8 + 214))
    {
      v6 = 0;
    }

    else
    {
      v6 = *v2;
    }

    if (!*(v8 + 215))
    {
LABEL_17:
      v5 = *v2;
      goto LABEL_18;
    }

LABEL_14:
    v5 = 0;
    goto LABEL_18;
  }

  v5 = *v2;
  v6 = v5;
LABEL_18:
  if (v6 != *(a1 + 17702) || v5 != *(a1 + 17703))
  {
    *(a1 + 17702) = v6;
    *(a1 + 17703) = v5;
    *(a1 + 1524) |= 0x400000u;
    *(a1 + 28652) = 0;
    *(a1 + 1548) |= 0x400u;
  }

  v9 = v4 & 9;
  if (v9 || *(a1 + 24756))
  {
    v10 = *v3;
  }

  else if (*(a1 + 15379))
  {
    v10 = 1;
  }

  else
  {
    v10 = *(a1 + 15378) != 0;
  }

  if (v10 != *(a1 + 17700))
  {
    *(a1 + 17700) = v10;
    *(a1 + 1532) |= 0x40000000u;
    *(a1 + 28652) = 0;
    *(a1 + 1548) |= 0x10000000u;
  }

  if (v9 || *(a1 + 24756))
  {
    v11 = *(a1 + 24751);
  }

  else if (*(a1 + 14890))
  {
    v11 = *(a1 + 14892) != 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11 != *(a1 + 17701))
  {
    *(a1 + 17701) = v11;
    *(a1 + 1532) |= 0x40000000u;
    *(a1 + 28652) = 0;
    v12 = *(a1 + 1548);
    *(a1 + 1548) = v12 | 0x10008400;
    if ((*(*(a1 + 29032) + 25) & 0x7F) != 0)
    {
      *(a1 + 1548) = v12 | 0x10038400;
    }
  }

  if (*(a1 + 14890))
  {
    v13 = *(a1 + 14888) == 33274;
    if (*(a1 + 15283) != v13)
    {
      *(a1 + 15283) = v13;
      *(a1 + 28652) = 0;
      *(a1 + 1548) |= 0x20000u;
    }
  }

  *(a1 + 19248) = *(a1 + 24440) + 608;
  *(a1 + 24200) = gleSetVPTransformFuncAll;
  *(a1 + 24208) = gleSetVPTransformFuncAll;
  gleUpdateInverseNeeds(a1);
  result = gleSetColorMaterialEnable(a1);
  v15 = v2[2782];
  if (v2[2782])
  {
    v16 = (v15 + 1) & 0x1FE;
    v17 = vdupq_n_s64(v15 - 1);
    v18 = xmmword_23A102AE0;
    v19 = v2 + 3718;
    v20 = vdupq_n_s64(2uLL);
    do
    {
      v21 = vmovn_s64(vcgeq_u64(v17, v18));
      if (v21.i8[0])
      {
        *v19 = 0;
      }

      if (v21.i8[4])
      {
        v19[209] = 0;
      }

      v18 = vaddq_s64(v18, v20);
      v19 += 418;
      v16 -= 2;
    }

    while (v16);
  }

  *(a1 + 1532) |= 0x40000u;
  *(v3 + 3902) = 0;
  *(a1 + 1548) |= 0x108202u;
  return result;
}

uint64_t gleGPDisable(uint64_t a1)
{
  v2 = (a1 + 24750);
  v3 = (a1 + 14888);
  if (*(a1 + 14890))
  {
    v4 = *v3 == 33274;
    if (*(a1 + 15283) != v4)
    {
      *(a1 + 15283) = v4;
      *(a1 + 28652) = 0;
      *(a1 + 1548) |= 0x20000u;
    }
  }

  *(a1 + 19272) = 0;
  *(a1 + 24352) = gleSetGPTransformFuncAll;
  *(a1 + 24360) = gleSetGPTransformFuncAll;
  gleUpdateInverseNeeds(a1);
  result = gleUpdateInvalidPrimitives(a1);
  v6 = *(v2 + 114);
  if ((v6 & 9) != 0 || v2[6])
  {
    v7 = v2[1];
  }

  else if (v3[2])
  {
    v7 = v3[4] != 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7 != v3[2813])
  {
    v3[2813] = v7;
    *(a1 + 1532) |= 0x40000000u;
    *(v2 + 3902) = 0;
    v8 = *(a1 + 1548);
    *(a1 + 1548) = v8 | 0x10008400;
    if ((*(*(a1 + 29032) + 25) & 0x7F) != 0)
    {
      *(a1 + 1548) = v8 | 0x10038400;
    }
  }

  if ((v6 & 9) != 0 || v2[6])
  {
    v9 = *v2;
  }

  else if (v3[491])
  {
    v9 = 1;
  }

  else
  {
    v9 = v3[490] != 0;
  }

  if (v9 != v3[2812])
  {
    v3[2812] = v9;
    *(a1 + 1532) |= 0x40000000u;
    *(v2 + 3902) = 0;
    *(a1 + 1548) |= 0x10000000u;
  }

  if ((v6 & 8) != 0)
  {
    v12 = *(a1 + 24768);
    if (!v12)
    {
      v12 = *(*(a1 + 24776) + 64);
    }

    if (*(v12 + 2326))
    {
      v11 = 0;
    }

    else
    {
      v11 = *(a1 + 29714);
    }

    if (!*(v12 + 2327))
    {
      goto LABEL_35;
    }

    goto LABEL_28;
  }

  if (v6)
  {
    v13 = *(a1 + 24768);
    if (!v13)
    {
      v13 = *(*(a1 + 24776) + 40);
    }

    if (*(v13 + 214))
    {
      v11 = 0;
    }

    else
    {
      v11 = *(a1 + 29714);
    }

    if (!*(v13 + 215))
    {
LABEL_35:
      v10 = *(a1 + 29714);
      goto LABEL_36;
    }

LABEL_28:
    v10 = 0;
    goto LABEL_36;
  }

  v10 = *(a1 + 29714);
  v11 = v10;
LABEL_36:
  if (v11 == v3[2814] && v10 == v3[2815])
  {
    v14 = *(a1 + 1548);
  }

  else
  {
    v3[2814] = v11;
    v3[2815] = v10;
    *(a1 + 1524) |= 0x400000u;
    v14 = *(a1 + 1548) | 0x400;
  }

  *(a1 + 1532) |= 0x200000u;
  *(v2 + 3902) = 0;
  *(a1 + 1548) = v14 | 0x808202;
  return result;
}

uint64_t gleCreateSurfaceLevel(uint64_t a1, uint64_t a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6)
{
  *(a2 + 24) = 0;
  *(a2 + 4) = a3;
  *(a2 + 6) = a4;
  *(a2 + 8) = 838860801;
  *(a2 + 16) = a5;
  *(a2 + 18) = a6;
  return 0;
}

uint64_t gleDeleteHashNameAndObject(uint64_t a1, void (**a2)(uint64_t, uint64_t), unsigned int a3)
{
  result = gleRemoveHashName(a2, a3);
  if (result)
  {
    result = gleRemoveHashObject(a2, a3);
    if (result)
    {
      v7 = *(result + 20) - 1;
      *(result + 20) = v7;
      if (!v7)
      {
        (*a2)(a1, result);
      }

      return 1;
    }
  }

  return result;
}

void glTexParameterF_Exec(uint64_t a1, int a2)
{
  v7 = OUTLINED_FUNCTION_16(a1, a2);
  if (!v7)
  {
    goto LABEL_81;
  }

  v8 = v7;
  if (!v6 & v5)
  {
    if (v3 == 32870)
    {
      goto LABEL_81;
    }

    if (v3 == 32882)
    {
      OUTLINED_FUNCTION_1_3();
      if (!v15)
      {
        OUTLINED_FUNCTION_5_2();
        OUTLINED_FUNCTION_11_1();
        if (v6 || (v16 - 34626) < 2)
        {
          goto LABEL_40;
        }

        OUTLINED_FUNCTION_15();
        if (v6)
        {
          goto LABEL_123;
        }

        OUTLINED_FUNCTION_14_0();
        if (v6)
        {
          goto LABEL_40;
        }

        OUTLINED_FUNCTION_13_0();
        if (v6)
        {
LABEL_123:
          v19 = *(v8 + 557) & 0xBF;
          goto LABEL_42;
        }

        OUTLINED_FUNCTION_12_1();
        if (v6)
        {
LABEL_40:
          OUTLINED_FUNCTION_6_2();
          if (!v6)
          {
            v19 = *(v8 + 557) | 0x40;
LABEL_42:
            *(v8 + 557) = v19;
            if (*(v8 + 924) == v18)
            {
              return;
            }

            *(v8 + 924) = v18;
            goto LABEL_85;
          }

          goto LABEL_81;
        }
      }

      goto LABEL_81;
    }

    if (v3 != 32959)
    {
      switch(v3)
      {
        case 33169:
          v35 = v2->f32[0];
          if (*(v4 + 3849) - 3 >= 2 && v35 < 2)
          {
            if ((*(v7 + 898) & 1) == v35)
            {
              return;
            }

            if (v35)
            {
              OUTLINED_FUNCTION_26();
            }

            OUTLINED_FUNCTION_24();
            v37 = OUTLINED_FUNCTION_7_1();
            gleEvaluateTextureParameterChange(v37, v38, v39, v40, v41, v42);
            v43 = OUTLINED_FUNCTION_0_7();
            v45 = 0;
            goto LABEL_91;
          }

          goto LABEL_81;
        case 35741:
          OUTLINED_FUNCTION_10_1();
          if (v20)
          {
            v21 = v2->f32[0];
            if (*(v8 + 740) == v21)
            {
              v22 = v2->f32[1];
              if (*(v8 + 744) == v22 && *(v8 + 748) == v2[1].f32[0] && *(v8 + 752) == v2[1].f32[1])
              {
                return;
              }
            }

            else
            {
              v22 = v2->f32[1];
            }

            *(v8 + 740) = v21;
            *(v8 + 744) = v22;
            *(v8 + 748) = vcvt_s32_f32(v2[1]);
            return;
          }

          goto LABEL_81;
        case 34230:
          if ((v2->f32[0] != 0.0) != ((*(v7 + 898) & 2) == 0))
          {
            return;
          }

          OUTLINED_FUNCTION_24();
          v46 = OUTLINED_FUNCTION_7_1();
          gleEvaluateTextureParameterChange(v46, v47, v48, v49, v50, v51);
          LODWORD(v2) = 0;
          goto LABEL_90;
        case 34236:
          OUTLINED_FUNCTION_5_2();
          OUTLINED_FUNCTION_22();
          if (!v26)
          {
            if (*(v8 + 552) == v27)
            {
              return;
            }

            LODWORD(v2) = 0;
            *(v8 + 552) = v27;
            goto LABEL_89;
          }

          goto LABEL_81;
      }

      if (v3 != 34891)
      {
        if (v3 == 34892)
        {
          OUTLINED_FUNCTION_10_1();
          if (!v32)
          {
            OUTLINED_FUNCTION_27();
            if ((v33 & 0x10) != 0)
            {
              OUTLINED_FUNCTION_5_2();
              if (!v34 || v34 == 34894)
              {
                if (*(v8 + 918) == v34)
                {
                  return;
                }

                *(v8 + 918) = v34;
                goto LABEL_85;
              }
            }
          }

          goto LABEL_81;
        }

        if (v3 == 34893)
        {
          OUTLINED_FUNCTION_10_1();
          if (v12)
          {
            goto LABEL_81;
          }

          OUTLINED_FUNCTION_27();
          if ((v13 & 0x10) == 0)
          {
            goto LABEL_81;
          }

          OUTLINED_FUNCTION_5_2();
          if ((v14 & 0xFFFFFFF8) != 0x200)
          {
            goto LABEL_81;
          }

          if (*(v8 + 916) == v14)
          {
            return;
          }

          *(v8 + 916) = v14;
LABEL_85:
          if (*(v4 + 3844))
          {
            do
            {
              OUTLINED_FUNCTION_20();
            }

            while (!v6);
          }

          LODWORD(v2) = 1;
          goto LABEL_89;
        }

        if (v3 != 35400)
        {
          if (v3 == 35455)
          {
            OUTLINED_FUNCTION_5_2();
            if (v23 < 2)
            {
              if (((*(v8 + 898) >> 2) & 1) == v23)
              {
                return;
              }

              OUTLINED_FUNCTION_29(v23);
              goto LABEL_89;
            }

            goto LABEL_81;
          }

          if (v3 == 34046)
          {
            v9 = v2->f32[0];
            if (v2->f32[0] < 1.0)
            {
              if (*(v4 + 1180))
              {
                return;
              }

              v52 = 1281;
LABEL_83:
              *(v4 + 1180) = v52;
              return;
            }

            if (*(v7 + 928) == v9)
            {
              return;
            }

            *(v7 + 928) = v9;
            goto LABEL_85;
          }
        }
      }
    }

LABEL_81:
    if (*(v4 + 1180))
    {
      return;
    }

    v52 = 1280;
    goto LABEL_83;
  }

  switch(v3)
  {
    case 36418:
      OUTLINED_FUNCTION_1_3();
      if (v6)
      {
        goto LABEL_81;
      }

      OUTLINED_FUNCTION_3_3();
      v10 = 0;
      switch(v11)
      {
        case 0:
          break;
        case 1:
          v10 = 1;
          break;
        case 2:
          v10 = 2;
          break;
        case 3:
          v10 = 3;
          break;
        default:
          v10 = 4;
          break;
      }

      v57 = *(v8 + 896);
      if ((v57 & 7) == v10)
      {
        return;
      }

      LODWORD(v2) = 0;
      v54 = v57 & 0xFFF8 | v10;
      break;
    case 36419:
      OUTLINED_FUNCTION_1_3();
      if (v6)
      {
        goto LABEL_81;
      }

      OUTLINED_FUNCTION_3_3();
      v28 = 0;
      switch(v29)
      {
        case 0:
          break;
        case 1:
          v28 = 1;
          break;
        case 2:
          v28 = 2;
          break;
        case 3:
          v28 = 3;
          break;
        default:
          v28 = 4;
          break;
      }

      v55 = *(v8 + 896);
      if (((v55 >> 3) & 7) == v28)
      {
        return;
      }

      LODWORD(v2) = 0;
      v54 = v55 & 0xFFC7 | (8 * v28);
      break;
    case 36420:
      OUTLINED_FUNCTION_1_3();
      if (v6)
      {
        goto LABEL_81;
      }

      OUTLINED_FUNCTION_3_3();
      v30 = 0;
      switch(v31)
      {
        case 0:
          break;
        case 1:
          v30 = 1;
          break;
        case 2:
          v30 = 2;
          break;
        case 3:
          v30 = 3;
          break;
        default:
          v30 = 4;
          break;
      }

      v56 = *(v8 + 896);
      if (((v56 >> 6) & 7) == v30)
      {
        return;
      }

      LODWORD(v2) = 0;
      v54 = v56 & 0xFE3F | (v30 << 6);
      break;
    case 36421:
      OUTLINED_FUNCTION_1_3();
      if (v6)
      {
        goto LABEL_81;
      }

      OUTLINED_FUNCTION_3_3();
      v24 = 0;
      switch(v25)
      {
        case 0:
          break;
        case 1:
          v24 = 1;
          break;
        case 2:
          v24 = 2;
          break;
        case 3:
          v24 = 3;
          break;
        default:
          v24 = 4;
          break;
      }

      v53 = *(v8 + 896);
      if (((v53 >> 9) & 7) == v24)
      {
        return;
      }

      LODWORD(v2) = 0;
      v54 = v53 & 0xF1FF | (v24 << 9);
      break;
    case 36422:
      goto LABEL_81;
    default:
      JUMPOUT(0);
  }

  *(v8 + 896) = v54;
LABEL_89:
  OUTLINED_FUNCTION_8_1();
LABEL_90:
  v43 = OUTLINED_FUNCTION_0_7();
  v45 = v2;
LABEL_91:

  gleDirtyTextureObjectCurrentBindPointsData(v43, v44, v45);
}

_DWORD *gleSetEnable_STENCIL_TEST(_DWORD *result, uint64_t a2, int a3)
{
  v3 = result[3911];
  v4 = v3 & 0xFFFFFFFE | a3;
  if (v3 != v4)
  {
    result[3911] = v4;
    if (v3 & 4 | a3 & 4)
    {
      v5 = 1;
    }

    else
    {
      v5 = (v3 & 0x70 | a3 & 0x70) == 0;
    }

    v6 = result[387];
    if (!v5)
    {
      v6 |= 0x8000u;
    }

    result[380] |= 0x10000000u;
    result[7163] = 0;
    result[387] = v6 | 0x40000;
  }

  return result;
}

uint64_t glDepthFunc_Exec(uint64_t result, int a2)
{
  if ((a2 - 520) <= 0xFFFFFFF7)
  {
    if (!*(result + 29832))
    {
      *(result + 29832) = 1280;
    }
  }

  else if (*(result + 15200) != a2)
  {
    *(result + 15200) = a2;
    *(result + 1520) |= 0x200u;
    *(result + 28652) = 0;
    *(result + 1548) |= 0x40000u;
  }

  return result;
}

uint64_t glCullFace_Exec(uint64_t result, int a2)
{
  if ((a2 - 1028) <= 4 && ((1 << (a2 - 4)) & 0x13) != 0)
  {
    if (*(result + 15530) != a2)
    {
      *(result + 15530) = a2;
      *(result + 1520) |= 0x800000u;
      *(result + 28652) = 0;
      *(result + 1548) |= 0x8000u;
    }
  }

  else if (!*(result + 29832))
  {
    *(result + 29832) = 1280;
  }

  return result;
}

uint64_t glClientActiveTexture_Exec(uint64_t result, int a2)
{
  if ((a2 - 33984) < 8)
  {
    *(result + 23770) = a2 + 31552;
  }

  else if (!*(result + 29832))
  {
    *(result + 29832) = 1280;
  }

  return result;
}

uint64_t glTexEnvi_Exec(uint64_t result, int a2, int a3, int a4, double a5)
{
  v5 = (result + 28652);
  v6 = *(result + 23768);
  if (a2 == 8960)
  {
    if (v6 >= 8)
    {
      goto LABEL_13;
    }

    if (a3 > 34183)
    {
      if (a3 <= 34192)
      {
        if (a3 > 34185)
        {
          if (a3 == 34186)
          {
            if ((a4 - 34166) >= 3 && a4 != 5890)
            {
              goto LABEL_113;
            }

            v10 = result + 76 * *(result + 23768);
            v11 = 15706;
          }

          else
          {
            if (a3 != 34192 || (a4 & 0xFFFFFFFC) != 0x300)
            {
              goto LABEL_113;
            }

            v10 = result + 76 * *(result + 23768);
            v11 = 15708;
          }
        }

        else if (a3 == 34184)
        {
          if ((a4 - 34166) >= 3 && a4 != 5890)
          {
            goto LABEL_113;
          }

          v10 = result + 76 * *(result + 23768);
          v11 = 15702;
        }

        else
        {
          if ((a4 - 34166) >= 3 && a4 != 5890)
          {
            goto LABEL_113;
          }

          v10 = result + 76 * *(result + 23768);
          v11 = 15704;
        }
      }

      else if (a3 <= 34199)
      {
        if (a3 == 34193)
        {
          if ((a4 & 0xFFFFFFFC) != 0x300)
          {
            goto LABEL_113;
          }

          v10 = result + 76 * *(result + 23768);
          v11 = 15710;
        }

        else
        {
          if (a3 != 34194 || (a4 & 0xFFFFFFFC) != 0x300)
          {
            goto LABEL_113;
          }

          v10 = result + 76 * *(result + 23768);
          v11 = 15712;
        }
      }

      else if (a3 == 34200)
      {
        if ((a4 & 0xFFFFFFFE) != 0x302)
        {
          goto LABEL_113;
        }

        v10 = result + 76 * *(result + 23768);
        v11 = 15714;
      }

      else if (a3 == 34201)
      {
        if ((a4 & 0xFFFFFFFE) != 0x302)
        {
          goto LABEL_113;
        }

        v10 = result + 76 * *(result + 23768);
        v11 = 15716;
      }

      else
      {
        if (a3 != 34202 || (a4 & 0xFFFFFFFE) != 0x302)
        {
          goto LABEL_113;
        }

        v10 = result + 76 * *(result + 23768);
        v11 = 15718;
      }

      goto LABEL_111;
    }

    if (a3 > 34162)
    {
      if (a3 > 34176)
      {
        if (a3 == 34177)
        {
          if ((a4 - 34166) >= 3 && a4 != 5890)
          {
            goto LABEL_113;
          }

          v10 = result + 76 * *(result + 23768);
          v11 = 15698;
        }

        else
        {
          if (a3 != 34178 || (a4 - 34166) >= 3 && a4 != 5890)
          {
            goto LABEL_113;
          }

          v10 = result + 76 * *(result + 23768);
          v11 = 15700;
        }

        goto LABEL_111;
      }

      if (a3 != 34163)
      {
        if (a3 != 34176 || (a4 - 34166) >= 3 && a4 != 5890)
        {
          goto LABEL_113;
        }

        v10 = result + 76 * *(result + 23768);
        v11 = 15696;
        goto LABEL_111;
      }

      if (a4 <= 4 && ((1 << a4) & 0x16) != 0)
      {
        *(result + 76 * *(result + 23768) + 15720) = a4;
        goto LABEL_112;
      }

LABEL_101:
      if (!*(result + 29832))
      {
        *(result + 29832) = 1281;
      }

      goto LABEL_112;
    }

    if (a3 <= 34160)
    {
      if (a3 != 3356)
      {
        if (a3 != 8704)
        {
          goto LABEL_113;
        }

        if (a4 > 8447)
        {
          if ((a4 - 8448) >= 2)
          {
            v18 = 34160;
LABEL_105:
            if (a4 != v18)
            {
              goto LABEL_113;
            }
          }
        }

        else if (a4 != 260 && a4 != 3042)
        {
          v18 = 7681;
          goto LABEL_105;
        }

        v10 = result + 76 * *(result + 23768);
        v11 = 15688;
        goto LABEL_111;
      }

      if (a4 <= 4 && ((1 << a4) & 0x16) != 0)
      {
        *(result + 76 * *(result + 23768) + 15724) = a4;
LABEL_112:
        *v5 = 0;
        *(result + 1548) |= 0x20000u;
        return result;
      }

      goto LABEL_101;
    }

    if (a3 != 34161)
    {
      if (a4 > 34022)
      {
        if ((a4 - 34164) >= 2)
        {
          v19 = 34023;
LABEL_109:
          if (a4 != v19)
          {
            goto LABEL_113;
          }
        }
      }

      else if (a4 != 260 && a4 != 7681)
      {
        v19 = 8448;
        goto LABEL_109;
      }

      v10 = result + 76 * *(result + 23768);
      v11 = 15694;
      goto LABEL_111;
    }

    if (a4 > 34022)
    {
      if ((a4 - 34164) >= 2 && (a4 - 34478) >= 2)
      {
        v20 = 34023;
LABEL_99:
        if (a4 != v20)
        {
          goto LABEL_113;
        }
      }
    }

    else if (a4 != 260 && a4 != 7681)
    {
      v20 = 8448;
      goto LABEL_99;
    }

    v10 = result + 76 * *(result + 23768);
    v11 = 15692;
LABEL_111:
    *(v10 + v11) = a4;
    goto LABEL_112;
  }

  if (a2 != 34048)
  {
    if (a2 == 34913 && a3 == 34914)
    {
      if (v6 < 8)
      {
        if (a4 < 2)
        {
          v7 = 1 << v6;
          if (a4 == 1)
          {
            v8 = *(result + 15384) | v7;
          }

          else
          {
            v8 = *(result + 15384) & ~v7;
          }

          *(result + 15384) = v8;
          *v5 = 0;
          *(result + 1520) |= 0x400000u;
          return result;
        }

        goto LABEL_113;
      }

LABEL_13:
      if (*(result + 29832))
      {
        return result;
      }

      v9 = 1282;
      goto LABEL_116;
    }

LABEL_113:
    if (*(result + 29832))
    {
      return result;
    }

    v9 = 1280;
LABEL_116:
    *(result + 29832) = v9;
    return result;
  }

  if (a3 != 34049)
  {
    goto LABEL_113;
  }

  *&a5 = a4;
  *(result + 4 * v6 + 16260) = a4;
  *(result + 76 * v6 + 15668) = vdupq_lane_s32(*&a5, 0);
  if ((*(*(result + 29032) + 26) & 0x2000) != 0)
  {
    v12 = *(result + 19248);
    if (v12)
    {
      v13 = *(v12 + 2 * v6 + 3752);
      if (v13 <= 0x3FF)
      {
        *(result + ((v13 >> 3) & 0x1FFC) + 1552) |= 1 << v13;
        *v5 = 0;
        *(result + 1532) |= 0x800000u;
      }
    }

    v14 = *(result + 19272);
    if (v14)
    {
      v15 = *(v14 + 2 * v6 + 3752);
      if (v15 <= 0x3FF)
      {
        *(result + ((v15 >> 3) & 0x1FFC) + 1936) |= 1 << v15;
        *v5 = 0;
        *(result + 1532) |= 0x4000000u;
      }
    }

    v16 = *(result + 19280);
    if (v16)
    {
      v17 = *(v16 + 2 * v6 + 3752);
      if (v17 <= 0x3FF)
      {
        *(result + ((v17 >> 3) & 0x1FFC) + 2064) |= 1 << v17;
        *v5 = 0;
        *(result + 1532) |= 0x8000000u;
      }
    }
  }

  else
  {
    *v5 = 0;
    *(result + 1536) |= 0x10000 << (v6 & 7);
  }

  return result;
}

void glStencilFunc_Exec(uint64_t a1, int a2, int a3, int a4)
{
  v4 = (a1 + 28652);
  if ((a2 - 520) <= 0xFFFFFFF7)
  {
    if (!*(a1 + 29832))
    {
      OUTLINED_FUNCTION_1_2(v4);
    }
  }

  else
  {
    v5 = (a1 + 15604);
    v6 = a3 & ~(a3 >> 31);
    if (*(a1 + 29776) == 1028)
    {
      if (*v5 != a2 || *(a1 + 15600) != v6 || *(a1 + 15596) != a4 || *(a1 + 15636) != a2 || *(a1 + 15632) != v6 || *(a1 + 15628) != a4)
      {
        *v5 = a2;
        *(a1 + 15600) = v6;
        *(a1 + 15596) = a4;
        *(a1 + 15636) = a2;
        *(a1 + 15632) = v6;
        *(a1 + 15628) = a4;
        v7 = *(a1 + 15644);
        if (v7 == 17)
        {
          *(a1 + 15644) = 1;
          *(a1 + 1548) |= 0x8000u;
        }

        else
        {
          *(a1 + 15644) = v7 & 0xFFFFFFEF;
        }

        goto LABEL_16;
      }
    }

    else if (*(a1 + 15620) != a2 || *(a1 + 15616) != v6 || *(a1 + 15612) != a4)
    {
      *(a1 + 15620) = a2;
      *(a1 + 15616) = v6;
      *(a1 + 15612) = a4;
LABEL_16:
      OUTLINED_FUNCTION_3_2(a1, v4);
    }
  }
}

void glDrawElements_Exec(unint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, __n128 a6, double a7, double a8)
{
  v8 = (a1 + 26336);
  if (a2 >= 7)
  {
    goto LABEL_47;
  }

  v10 = *(a1 + 26384);
  if ((~*(v10 + 904) & 0x900000) != 0 && *(a1 + 17699) != 0 || (*(v10 + 904) & 0x100010000) == 0)
  {
    return;
  }

  if (a4 != 5123 && a4 != 5121 && a4 != 5125)
  {
LABEL_47:
    if (!*(a1 + 29832))
    {
      v26 = 1280;
LABEL_40:
      *(a1 + 29832) = v26;
      return;
    }

    return;
  }

  if (a3 > 0)
  {
    v17 = *(a1 + 26432);
    if (*(v17 + 42) != -1 && !*(v17 + 41) && (glDrawElements_Exec_cold_1(v17, a2, a3, a1) & 1) != 0)
    {
      return;
    }

    v18 = *(v10 + 1232);
    if (v18)
    {
      a5 += *(v18 + 136);
    }

    *(a1 + 26312) = a5;
    *v8 = a4;
    if ((a4 - 5121) > 4)
    {
      LOBYTE(v19) = 1;
    }

    else
    {
      v19 = dword_23A1034D8[a4 - 5121];
    }

    v20 = gleDrawArraysOrElements_Entries_Body(a1, 2, a2, v19, v10 + 40, a6, a7, a8);
    if (v20 == 2)
    {
      return;
    }

    v24 = v20;
    if (!v20 || !(*(a1 + 29232))(*(a1 + 29016), 1, a2, 0, a3, *v8, *(a1 + 26312), 1, 0))
    {
      if ((*(v8 + 579) & (1 << a2)) == 0 || (*(v8 + 2345) & 1) == 0 || (*(v8 + 2347) & 2) == 0)
      {
        if (!gleDoDrawDispatchCore(a1, 1 << a2, 1u, 2u, v21, v22, v23))
        {
          goto LABEL_25;
        }

LABEL_31:
        if (v24 && *(v10 + 912) && !*(v10 + 1216))
        {
          gleSynchronizeBuffersInArray(a1, v10 + 40);
        }

        gleDrawArraysOrElements_ExecCore(a1, a2, 0, a3, 1, v10 + 40, 1);
        goto LABEL_25;
      }

      if (!*(a1 + 32482))
      {
        goto LABEL_31;
      }
    }

LABEL_25:
    v25 = *(*(a1 + 19296) + 316);
    if (*(v8 + 870) != v25)
    {
      if (*(a1 + 28960))
      {
        gleInvalidateCurrentDrawFramebufferTextures(a1);
        v25 = *(*(a1 + 19296) + 316);
      }

      *(v8 + 870) = v25;
    }

    return;
  }

  if ((a3 & 0x80000000) != 0 && !*(a1 + 29832))
  {
    v26 = 1281;
    goto LABEL_40;
  }
}

uint64_t glClearStencil_Exec(uint64_t result, unsigned __int8 a2)
{
  if (!*(*(result + 29480) + 110))
  {
    *(result + 28652) = 0;
    *(result + 29800) |= 0x20u;
  }

  *(result + 15172) = a2;
  return result;
}

uint64_t glPolygonOffset_Exec(uint64_t result, float a2, float a3)
{
  *(result + 15516) = a2;
  *(result + 15520) = a3;
  *(result + 28652) = 0;
  *(result + 1520) |= 0x800000u;
  return result;
}

uint64_t glEnableVertexAttribArrayARB_Exec(uint64_t result, unsigned int a2)
{
  v2 = (result + 28652);
  v3 = *(result + 26384);
  if (!v3)
  {
    if (*(result + 29832))
    {
      return result;
    }

    v4 = 1282;
    goto LABEL_7;
  }

  if (a2 >= 0x10)
  {
    if (*(result + 29832))
    {
      return result;
    }

    v4 = 1281;
LABEL_7:
    *(result + 29832) = v4;
    return result;
  }

  v5 = 0x100000000 << a2;
  v6 = *(v3 + 904);
  if ((v6 & (0x100000000 << a2)) == 0)
  {
    v7 = result;
    v8 = v6 | v5;
    *(v3 + 904) = v6 | v5;
    v9 = *(v3 + 912);
    if ((v8 & ~v9) == v5)
    {
      result = gleUpdateDrawArraysFuncs(result);
    }

    else if ((v9 & v5) != 0)
    {
      if (*(*(v3 + 8 * (a2 | 0x10) + 1240) + 192))
      {
        *(v3 + 1216) = 0;
      }
    }

    *(v3 + 944) |= v5 | 0x10;
    *(v3 + 952) |= v5;
    *(v7 + 26184) = gleSetVertexArrayFunc;
    *(v7 + 26192) = gleSetVertexArrayFunc;
    *(v7 + 26200) = gleSetVertexElemFunc;
    *(v7 + 26208) = gleSetVertexElemFunc;
    *v2 = 0;
    *(v7 + 1532) |= 0x1000u;
  }

  return result;
}

void glVertexAttribPointerARB_Exec(uint64_t a1, unsigned int a2, uint64_t a3, int a4, int a5, unsigned int a6, uint64_t a7)
{
  v7 = a1 + 28652;
  if ((a3 - 5) >= 0xFFFFFFFC && (a6 & 0x80000000) == 0 && a2 < 0x10)
  {
    v8 = a7;
    v10 = *(a1 + 26384);
    if (!v10)
    {
      if (!a7)
      {
        return;
      }

      goto LABEL_20;
    }

    v11 = a4;
    v12 = *(a1 + 19312);
    if (v12 || !a7 || v10 == *(a1 + 26392))
    {
      if (a4 <= 5125)
      {
        if ((a4 - 5120) >= 2)
        {
          if ((a4 - 5122) < 2)
          {
            v13 = 2;
            goto LABEL_30;
          }

          if ((a4 - 5124) < 2 && (*(a1 + 32501) & 0xFE) != 2)
          {
            v13 = 4;
LABEL_30:
            v14 = a5;
            goto LABEL_31;
          }

          goto LABEL_26;
        }

LABEL_22:
        v13 = 1;
        goto LABEL_30;
      }

      v14 = 0;
      v13 = 4;
      if (a4 <= 5131)
      {
        if (a4 == 5126)
        {
          goto LABEL_31;
        }

        if (a4 == 5131 && (*(a1 + 32501) & 0xFE) != 2)
        {
          v14 = 0;
          v13 = 2;
LABEL_31:
          v16 = a2 + 16;
          v17 = v10 + 24 * v16;
          *(v17 + 136) = a7;
          v18 = v17 + 136;
          v19 = (1 << a2) << 32;
          *(v10 + 944) |= v19;
          v20 = *(v10 + 1240 + 8 * v16);
          v21 = v10 + 8 * v16;
          if (v12 == v20)
          {
            goto LABEL_56;
          }

          if (v20 && (v22 = *(v20 + 20) - 1, (*(v20 + 20) = v22) == 0))
          {
            v54 = a1 + 28652;
            v41 = a3;
            v48 = v13;
            v51 = a6;
            v45 = v14;
            gleUnbindAndFreeBufferObject(a1, v20);
            a3 = v41;
            v21 = v10 + 8 * v16;
            v14 = v45;
            v13 = v48;
            a6 = v51;
            v7 = v54;
            if (v12)
            {
              goto LABEL_35;
            }
          }

          else if (v12)
          {
LABEL_35:
            ++*(v12 + 20);
            v23 = *(v10 + 912);
            if ((v23 & v19) == 0)
            {
              *(v10 + 912) = v23 | v19;
              if ((*(v10 + 904) & v19) != 0)
              {
                v53 = v7;
                v40 = a3;
                v42 = v21;
                v47 = v13;
                v50 = a6;
                v44 = v14;
                gleUpdateDrawArraysFuncs(a1);
                a3 = v40;
                v21 = v42;
                v14 = v44;
                v13 = v47;
                a6 = v50;
                v7 = v53;
              }
            }

            v24 = *(v7 + 3844);
            if (*(v7 + 3844))
            {
              v25 = (v12 + 40);
              v26 = (v21 + 1496);
              do
              {
                v27 = *v25++;
                *v26 = v27;
                v26 += 35;
                --v24;
              }

              while (v24);
            }

            if (v20)
            {
              goto LABEL_55;
            }

            goto LABEL_54;
          }

          v28 = *(v10 + 912);
          if ((v28 & v19) != 0)
          {
            *(v10 + 912) = v28 & ~v19;
            if ((*(v10 + 904) & v19) != 0)
            {
              v55 = v7;
              v29 = a3;
              v49 = v13;
              v52 = a6;
              v46 = v14;
              v43 = v21;
              gleUpdateDrawArraysFuncs(a1);
              v21 = v43;
              v14 = v46;
              v13 = v49;
              a6 = v52;
              a3 = v29;
              v7 = v55;
            }
          }

          v30 = *(v7 + 3844);
          if (*(v7 + 3844))
          {
            v31 = (v21 + 1496);
            v32 = (v30 + 1) & 0x1FE;
            v33 = xmmword_23A102AE0;
            v34 = vdupq_n_s64(v30 - 1);
            v35 = vdupq_n_s64(2uLL);
            do
            {
              v36 = vmovn_s64(vcgeq_u64(v34, v33));
              if (v36.i8[0])
              {
                *v31 = 0;
              }

              if (v36.i8[4])
              {
                v31[35] = 0;
              }

              v33 = vaddq_s64(v33, v35);
              v31 += 70;
              v32 -= 2;
            }

            while (v32);
          }

LABEL_54:
          *(v10 + 952) |= v19;
LABEL_55:
          *v7 = 0;
          *(a1 + 1532) |= 0x1000u;
          *(v10 + 944) |= v19 | 0x10;
          *(v10 + 1240 + 8 * v16) = v12;
LABEL_56:
          if (v12)
          {
            v8 += *(v12 + 136);
            if (*(v12 + 192))
            {
              if ((*(v10 + 904) & v19) != 0)
              {
                *(v10 + 1216) = 0;
              }
            }
          }

          *(v21 + 960) = v8;
          LODWORD(v37) = v13 * a3;
          if (a6)
          {
            v37 = a6;
          }

          else
          {
            v37 = v37;
          }

          v38 = v11 | 0x2000;
          if (!v14)
          {
            v38 = v11;
          }

          v39 = ((((v37 | v8) & 0xF) == 0) << 57) | (a3 << 48) | (v38 << 32) | v37;
          if (*(v18 + 16) != v39)
          {
            *(v10 + 952) |= v19;
            *(v18 + 16) = v39;
            *(a1 + 26184) = gleSetVertexArrayFunc;
            *(a1 + 26192) = gleSetVertexArrayFunc;
            *(a1 + 26200) = gleSetVertexElemFunc;
            *(a1 + 26208) = gleSetVertexElemFunc;
            *v7 = 0;
            *(a1 + 1532) |= 0x1000u;
          }

          return;
        }
      }

      else
      {
        if (a4 == 5132)
        {
          goto LABEL_31;
        }

        if ((a4 == 33640 || a4 == 36255) && (*(a1 + 32501) & 0xFE) != 2)
        {
          if (a3 > 3)
          {
            goto LABEL_22;
          }

          goto LABEL_20;
        }
      }

LABEL_26:
      if (*(a1 + 29832))
      {
        return;
      }

      v15 = 1280;
LABEL_28:
      *(a1 + 29832) = v15;
      return;
    }

LABEL_20:
    if (*(a1 + 29832))
    {
      return;
    }

    v15 = 1282;
    goto LABEL_28;
  }

  if (!*(a1 + 29832))
  {
    *(a1 + 29832) = 1281;
  }
}

int8x16_t glDisableVertexAttribArrayARB_Exec(uint64_t a1, unsigned int a2)
{
  v2 = (a1 + 28652);
  v3 = *(a1 + 26384);
  if (!v3)
  {
    if (*(a1 + 29832))
    {
      return result;
    }

    v4 = 1282;
    goto LABEL_7;
  }

  if (a2 >= 0x10)
  {
    if (*(a1 + 29832))
    {
      return result;
    }

    v4 = 1281;
LABEL_7:
    *(a1 + 29832) = v4;
    return result;
  }

  v6 = 0x100000000 << a2;
  v7 = v3[56].i64[1];
  v3[56].i64[1] = v7 & ~(0x100000000 << a2);
  if ((v7 & ~v3[57].i64[0]) == 0x100000000 << a2)
  {
    gleUpdateDrawArraysFuncs(a1);
  }

  result = vorrq_s8(v3[59], vdupq_n_s64(v6));
  v3[59] = result;
  *(a1 + 26184) = gleSetVertexArrayFunc;
  *(a1 + 26192) = gleSetVertexArrayFunc;
  *(a1 + 26200) = gleSetVertexElemFunc;
  *(a1 + 26208) = gleSetVertexElemFunc;
  *v2 = 0;
  *(a1 + 1532) |= 0x1000u;
  return result;
}

uint64_t gleSetEnable_POLYGON_OFFSET_FILL(uint64_t result, uint64_t a2, int a3)
{
  if (*(result + 15537) != a3)
  {
    *(result + 15537) = a3;
    *(result + 28652) = 0;
    *(result + 1520) |= 0x800000u;
  }

  return result;
}

uint64_t glTexEnvfv_Exec(uint64_t result, int a2, int a3, uint64_t a4)
{
  v4 = (result + 28652);
  v5 = *(result + 23768);
  if (a2 != 8960)
  {
    if (a2 != 34048)
    {
      if (a2 == 34913 && a3 == 34914)
      {
        if (v5 < 8)
        {
          v6 = *a4;
          if (v6 < 2)
          {
            v7 = 1 << v5;
            if (v6 == 1)
            {
              v8 = *(result + 15384) | v7;
            }

            else
            {
              v8 = *(result + 15384) & ~v7;
            }

            *(result + 15384) = v8;
            *v4 = 0;
            *(result + 1520) |= 0x400000u;
            return result;
          }

          goto LABEL_159;
        }

LABEL_13:
        if (*(result + 29832))
        {
          return result;
        }

        v12 = 1282;
        goto LABEL_162;
      }

LABEL_159:
      if (*(result + 29832))
      {
        return result;
      }

      v12 = 1280;
LABEL_162:
      *(result + 29832) = v12;
      return result;
    }

    if (a3 != 34049)
    {
      goto LABEL_159;
    }

    v9 = *a4;
    *(result + 4 * v5 + 16260) = *a4;
    v10 = (result + 76 * v5);
    v10[3917] = v9;
    v11 = *a4;
    v10[3918] = *a4;
    v10[3919] = v11;
    v10[3920] = *a4;
    if ((*(*(result + 29032) + 26) & 0x2000) == 0)
    {
      *v4 = 0;
      *(result + 1536) |= 0x10000 << (v5 & 7);
      return result;
    }

    v17 = *(result + 19248);
    if (v17)
    {
      v18 = *(v17 + 2 * v5 + 3752);
      if (v18 <= 0x3FF)
      {
        *(result + ((v18 >> 3) & 0x1FFC) + 1552) |= 1 << v18;
        *v4 = 0;
        *(result + 1532) |= 0x800000u;
      }
    }

    v19 = *(result + 19272);
    if (v19)
    {
      v20 = *(v19 + 2 * v5 + 3752);
      if (v20 <= 0x3FF)
      {
        *(result + ((v20 >> 3) & 0x1FFC) + 1936) |= 1 << v20;
        *v4 = 0;
        *(result + 1532) |= 0x4000000u;
      }
    }

    v21 = *(result + 19280);
    if (v21)
    {
      v22 = *(v21 + 2 * v5 + 3752);
      goto LABEL_35;
    }

    return result;
  }

  if (v5 >= 8)
  {
    goto LABEL_13;
  }

  if (a3 > 34183)
  {
    if (a3 <= 34192)
    {
      if (a3 > 34185)
      {
        if (a3 == 34186)
        {
          v13 = *a4;
          if ((v13 - 34166) >= 3 && v13 != 5890)
          {
            goto LABEL_159;
          }

          v15 = result + 76 * *(result + 23768);
          v16 = 15706;
        }

        else
        {
          if (a3 != 34192)
          {
            goto LABEL_159;
          }

          v13 = *a4;
          if ((v13 & 0xFFFFFFFC) != 0x300)
          {
            goto LABEL_159;
          }

          v15 = result + 76 * *(result + 23768);
          v16 = 15708;
        }
      }

      else if (a3 == 34184)
      {
        v13 = *a4;
        if ((v13 - 34166) >= 3 && v13 != 5890)
        {
          goto LABEL_159;
        }

        v15 = result + 76 * *(result + 23768);
        v16 = 15702;
      }

      else
      {
        v13 = *a4;
        if ((v13 - 34166) >= 3 && v13 != 5890)
        {
          goto LABEL_159;
        }

        v15 = result + 76 * *(result + 23768);
        v16 = 15704;
      }
    }

    else if (a3 <= 34199)
    {
      if (a3 == 34193)
      {
        v13 = *a4;
        if ((v13 & 0xFFFFFFFC) != 0x300)
        {
          goto LABEL_159;
        }

        v15 = result + 76 * *(result + 23768);
        v16 = 15710;
      }

      else
      {
        if (a3 != 34194)
        {
          goto LABEL_159;
        }

        v13 = *a4;
        if ((v13 & 0xFFFFFFFC) != 0x300)
        {
          goto LABEL_159;
        }

        v15 = result + 76 * *(result + 23768);
        v16 = 15712;
      }
    }

    else
    {
      switch(a3)
      {
        case 34200:
          v13 = *a4;
          if ((v13 & 0xFFFFFFFE) != 0x302)
          {
            goto LABEL_159;
          }

          v15 = result + 76 * *(result + 23768);
          v16 = 15714;
          break;
        case 34201:
          v13 = *a4;
          if ((v13 & 0xFFFFFFFE) != 0x302)
          {
            goto LABEL_159;
          }

          v15 = result + 76 * *(result + 23768);
          v16 = 15716;
          break;
        case 34202:
          v13 = *a4;
          if ((v13 & 0xFFFFFFFE) != 0x302)
          {
            goto LABEL_159;
          }

          v15 = result + 76 * *(result + 23768);
          v16 = 15718;
          break;
        default:
          goto LABEL_159;
      }
    }

    goto LABEL_157;
  }

  if (a3 > 34161)
  {
    if (a3 > 34175)
    {
      switch(a3)
      {
        case 34176:
          v13 = *a4;
          if ((v13 - 34166) >= 3 && v13 != 5890)
          {
            goto LABEL_159;
          }

          v15 = result + 76 * *(result + 23768);
          v16 = 15696;
          break;
        case 34177:
          v13 = *a4;
          if ((v13 - 34166) >= 3 && v13 != 5890)
          {
            goto LABEL_159;
          }

          v15 = result + 76 * *(result + 23768);
          v16 = 15698;
          break;
        case 34178:
          v13 = *a4;
          if ((v13 - 34166) >= 3 && v13 != 5890)
          {
            goto LABEL_159;
          }

          v15 = result + 76 * *(result + 23768);
          v16 = 15700;
          break;
        default:
          goto LABEL_159;
      }

      goto LABEL_157;
    }

    if (a3 == 34162)
    {
      v13 = *a4;
      if (v13 > 34022)
      {
        if ((v13 - 34164) >= 2 && v13 != 34023)
        {
          goto LABEL_159;
        }
      }

      else if (v13 != 260 && v13 != 7681 && v13 != 8448)
      {
        goto LABEL_159;
      }

      v15 = result + 76 * *(result + 23768);
      v16 = 15694;
LABEL_157:
      *(v15 + v16) = v13;
      goto LABEL_158;
    }

    if (a3 != 34163)
    {
      goto LABEL_159;
    }

    v27 = *a4;
    if (*a4 == 4.0 || v27 == 1.0 || v27 == 2.0)
    {
      *(result + 76 * *(result + 23768) + 15720) = v27;
LABEL_158:
      *v4 = 0;
      *(result + 1548) |= 0x20000u;
      return result;
    }

    goto LABEL_92;
  }

  if (a3 <= 8704)
  {
    if (a3 != 3356)
    {
      if (a3 != 8704)
      {
        goto LABEL_159;
      }

      v13 = *a4;
      if (v13 > 8447)
      {
        if ((v13 - 8448) >= 2 && v13 != 34160)
        {
          goto LABEL_159;
        }
      }

      else if (v13 != 260 && v13 != 3042 && v13 != 7681)
      {
        goto LABEL_159;
      }

      v15 = result + 76 * *(result + 23768);
      v16 = 15688;
      goto LABEL_157;
    }

    v28 = *a4;
    if (*a4 == 4.0 || v28 == 1.0 || v28 == 2.0)
    {
      *(result + 76 * *(result + 23768) + 15724) = v28;
      goto LABEL_158;
    }

LABEL_92:
    if (!*(result + 29832))
    {
      *(result + 29832) = 1281;
    }

    goto LABEL_158;
  }

  if (a3 != 8705)
  {
    if (a3 != 34161)
    {
      goto LABEL_159;
    }

    v13 = *a4;
    if (v13 > 34022)
    {
      if ((v13 - 34164) >= 2 && (v13 - 34478) >= 2 && v13 != 34023)
      {
        goto LABEL_159;
      }
    }

    else if (v13 != 260 && v13 != 7681 && v13 != 8448)
    {
      goto LABEL_159;
    }

    v15 = result + 76 * *(result + 23768);
    v16 = 15692;
    goto LABEL_157;
  }

  v30 = (result + 16 * v5 + 23808);
  v31.i32[0] = *a4;
  v30->i32[0] = *a4;
  v32 = *(a4 + 4);
  v30->i32[1] = v32;
  v33 = *(a4 + 8);
  v30->i32[2] = v33;
  v34 = *(a4 + 12);
  v30->i32[3] = v34;
  if (*(result + 15178))
  {
    v35 = (result + 288);
    v36 = (result + 292);
    v31.i32[1] = v32;
    v31.i64[1] = __PAIR64__(v34, v33);
    v37 = vld1q_dup_f32(v35);
    v38 = vmaxnmq_f32(v31, v37);
    v39 = vld1q_dup_f32(v36);
    v40 = vminnmq_f32(v38, v39);
  }

  else
  {
    v40 = *v30;
  }

  *(result + 76 * v5 + 15652) = v40;
  if (*(result + 23772) <= v5)
  {
    *(result + 23772) = v5 + 1;
  }

  v50 = *(result + 19248);
  if (v50)
  {
    v51 = *(v50 + 2 * v5 + 3736);
    if (v51 <= 0x3FF)
    {
      *(result + ((v51 >> 3) & 0x1FFC) + 1552) |= 1 << v51;
      *v4 = 0;
      *(result + 1532) |= 0x800000u;
    }
  }

  v52 = *(result + 19272);
  if (v52)
  {
    v53 = *(v52 + 2 * v5 + 3736);
    if (v53 <= 0x3FF)
    {
      *(result + ((v53 >> 3) & 0x1FFC) + 1936) |= 1 << v53;
      *v4 = 0;
      *(result + 1532) |= 0x4000000u;
    }
  }

  v54 = *(result + 19280);
  if (v54)
  {
    v22 = *(v54 + 2 * v5 + 3736);
LABEL_35:
    if (v22 <= 0x3FF)
    {
      *(result + ((v22 >> 3) & 0x1FFC) + 2064) |= 1 << v22;
      *v4 = 0;
      *(result + 1532) |= 0x8000000u;
    }
  }

  return result;
}

uint64_t glReadBuffer_Exec(uint64_t result, unsigned int a2)
{
  v2 = *(result + 28968);
  if (v2)
  {
    if (!a2)
    {
      if (!*(v2 + 544))
      {
        return result;
      }

      v4 = 0;
      v5 = (v2 + 40);
      *(v2 + 516) = 0;
      v6 = *(result + 29480);
LABEL_27:
      LOWORD(a2) = 0;
LABEL_28:
      *(v2 + 472) = a2;
      *(v2 + 544) = v4;
      if ((*(v6 + 561) & 0x40) != 0)
      {
        v7 = (v5[127] | v5[126] | 0xFFFFFF00) & v5[125];
      }

      else
      {
        v7 = v5[125];
      }

      v5[114] = v7;
      return gleSetUnknownFramebufferCompleteness(result, v5);
    }

    if (a2 >> 5 >= 0x467)
    {
      v6 = *(result + 29480);
      if (*(v6 + 22) + 36064 > a2)
      {
        v4 = 1 << a2;
        if (*(v2 + 544) == 1 << a2)
        {
          return result;
        }

        v5 = (v2 + 40);
        *(v2 + 516) = a2;
        if ((*(v2 + 540) & v4) != 0)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }
    }

    if (a2 - 1024 > 0xC)
    {
      goto LABEL_7;
    }

    if (((1 << a2) & 0x1EDF) != 0)
    {
      if (*(result + 32501) == 4)
      {
LABEL_7:
        if (*(result + 29832))
        {
          return result;
        }

        LOWORD(v2) = 1280;
        goto LABEL_38;
      }
    }

    else if (a2 != 1029)
    {
      goto LABEL_7;
    }

    if (*(result + 29832))
    {
      return result;
    }

    LOWORD(v2) = 1282;
LABEL_38:
    *(result + 29832) = v2;
    return result;
  }

  if (a2)
  {
    if (a2 != 1029)
    {
      LOWORD(v2) = 1280;
      if (a2 >> 5 >= 0x467)
      {
        if (*(*(result + 29480) + 22) + 36064 <= a2)
        {
          LOWORD(v2) = 1280;
        }

        else
        {
          LOWORD(v2) = 1282;
        }
      }
    }
  }

  if (a2 && a2 != 1029)
  {
    if (*(result + 29832))
    {
      return result;
    }

    goto LABEL_38;
  }

  *(result + 29844) = a2;
  if (a2 == 1029)
  {
    v3 = 1026;
  }

  else
  {
    v3 = a2;
  }

  if (v3 != *(result + 15176))
  {
    *(result + 15176) = v3;
    *(result + 29800) |= 0x80000000;
  }

  return result;
}

uint64_t glCopyTexSubImage2D_Exec(uint64_t result, int a2, uint64_t a3, int a4, int a5, unsigned int a6, unsigned int a7, int a8, double a9, double a10, double a11, int a12)
{
  v19 = result;
  v20 = result + 29632;
  if ((*(result + 1540) & 4) != 0)
  {
    result = gleGenerateMatrixIdentifier(result, result + 9488, a9, a10, a11);
    *(v19 + 19152) = *(v19 + 19152) & 0xFFFFFEFF | ((result != -1074791426) << 8);
    *(v20 + 100) = result;
  }

  if ((*(v20 + 171) & 0x8A) != 0)
  {
    result = gleUpdateReadFramebufferState(v19);
    if (result)
    {
      if (result != 16711680 && !*(v20 + 200))
      {
        *(v20 + 200) = result;
      }

      return result;
    }
  }

  if (!a8)
  {
    return result;
  }

  if (!a12)
  {
    return result;
  }

  result = gleCheckCopyTexSubImage2DArgs(v19, a2, a3, a4, a5, a8, a12);
  if (!result)
  {
    return result;
  }

  v21 = result;
  if (*(result + 770))
  {
    return result;
  }

  if (*(v20 + 2871))
  {
    v42 = mach_absolute_time();
  }

  else
  {
    v42 = 0;
  }

  if ((a2 - 34069) >= 6)
  {
    v22 = 0;
  }

  else
  {
    v22 = (a2 - 34069);
  }

  v43 = v22;
  v23 = v21 + 480 * v22 + 32 * a3;
  if (!*(v21 + 536) && (*(v21 + 768) & 0x800) == 0)
  {
    gfxWaitTextureOnDevices();
  }

  v24 = v23 + 1032;
  if (*(v21 + 976) <= a3)
  {
    v25 = 1;
    if (*(v21 + 978) >= a3 && ((1 << a3) & *(v21 + 2 * v43 + 984)) != 0)
    {
      v44 = 0;
      if ((*(v21 + 898) & 1) != 0 && *(v21 + 884) == a3 && (*(v21 + 768) & 0xF) != 2)
      {
        gleGenerateEmptyMipmaps(v19, v21, v43, a3, *(v21 + 975), 0, 0);
        if (*(*(v19 + 28968) + 480))
        {
          result = gleUpdateReadFramebufferStateInline(v19, v26, v27, v28);
          if (!result)
          {
            return result;
          }
        }

        v25 = 0;
      }

      v29 = *(v19 + 28968);
      v40 = v25;
      if (v29)
      {
        v30 = *(v29 + 474);
        v31 = *(v29 + 476);
      }

      else
      {
        v30 = *v20;
        v31 = *(v20 + 4);
      }

      v48 = a6;
      v46 = a8;
      v47 = a7;
      v45 = a12;
      gleClipReadableRange(v19, v30, v31, &v48, &v47, &v46, &v45, &v44 + 1, &v44);
      v32 = *(v19 + 8 * *(v19 + 23768) + 23936);
      if (v32)
      {
        v33 = (v32 + 198);
      }

      else
      {
        v33 = (v21 + 926);
      }

      v34 = *v33;
      *(v21 + 968) = 65540;
      if (v46 >= 1 && v45 >= 1)
      {
        LODWORD(v39) = v45;
        HIDWORD(v39) = (v34 & 1) == 0;
        result = (*(*(v19 + 29448) + 360))(*(v19 + 29016), *(v21 + 8 * *(v20 + 2867)), v43, a3, (HIDWORD(v44) + a4), (v44 + a5), 0, v48, __PAIR64__(v46, v47), v39);
        if (result)
        {
          if ((*(v21 + 768) & 0x800) == 0)
          {
            *(v21 + 536) = *(v19 + 29024);
            v35 = *(v24 + 11);
            if ((v35 & 0x10) != 0)
            {
              if ((*(v24 + 11) & 9) == 0)
              {
                result = gfxFreeTextureLevel();
                v35 = *(v24 + 11);
              }

              v35 &= ~0x10u;
              *(v21 + 2 * v43 + 996) &= ~(1 << a3);
            }

            *(v24 + 11) = v35 | 0x40;
            if ((v40 & 1) == 0)
            {
              v36 = *(v21 + 975);
              if (v36 > a3)
              {
                v37 = (32 * a3 + 480 * v43 + v21 + 1075);
                do
                {
                  *v37 |= 0x40u;
                  v37 += 32;
                  LODWORD(a3) = a3 + 1;
                }

                while (a3 < v36);
              }
            }
          }

          goto LABEL_66;
        }
      }

      v25 = v40;
    }
  }

  else
  {
    v25 = 1;
  }

  v38 = *(v24 + 11);
  v41 = v25;
  if ((v38 & 0x40) != 0)
  {
    gleSynchronizeTextureLevelOnCurrentDevices(v19, v21);
  }

  else if ((*(v24 + 11) & 0x10) == 0)
  {
    if (!*(v24 + 24))
    {
      if (!gfxAllocateTextureLevel())
      {
        if (!*(v20 + 200))
        {
          *(v20 + 200) = 1285;
        }

        goto LABEL_58;
      }

      v38 = *(v24 + 11);
    }

    *(v24 + 11) = v38 | 0x10;
  }

LABEL_58:
  gfxModifyPluginTextureLevel();
  if ((*(v21 + 768) & 0x800) == 0)
  {
    (*(*(v19 + 29496) + 280))(*(v19 + 29464), 1, 0, *(v21 + 8 * *(v20 + 2868)));
  }

  if ((*(v24 + 11) & 0x10) != 0)
  {
    gleTextureSubImageCopy(v19, v21, v24, a4, a5, 0, a6, a7, a8, a12);
  }

  if ((*(v21 + 898) & 1) == 0 || *(v21 + 884) != a3 || (result = gleGenMipmaps(v19, v21, v43, a3, 1, v41), !result))
  {
    result = gleDirtyTextureLevelCurrentBindPointsData(v19, v21, v24);
  }

LABEL_66:
  if (*(v20 + 2871))
  {
    result = mach_absolute_time();
    *(v19 + 19168) += result - v42;
  }

  return result;
}

uint64_t gleCheckCopyTexSubImage2DArgs(uint64_t a1, int a2, signed int a3, int a4, int a5, int a6, int a7)
{
  v14 = gleLookUpNonProxyTexture2D(a1, a2);
  if (!v14)
  {
    if (!*(a1 + 29832))
    {
      v15 = 0;
      v20 = 1280;
      goto LABEL_30;
    }

    return 0;
  }

  v15 = v14;
  v16 = *(v14 + 960);
  v18 = v16 == 36975 || v16 - 33329 < 0xC;
  v19 = v16 - 36208 < 0x24 || v18;
  if (!gleCheckCopyTexSubImageArgs(a1, a3, *(v14 + 772), v16, v19, 0))
  {
    return 0;
  }

  if (a2 == 34037 && a3 >= 1)
  {
LABEL_14:
    if (!*(a1 + 29832))
    {
      v15 = 0;
      v20 = 1281;
LABEL_30:
      *(a1 + 29832) = v20;
      return v15;
    }

    return 0;
  }

  v21 = a2 - 34069;
  if ((a2 - 34069) >= 6)
  {
    v21 = 0;
  }

  v22 = v15 + 480 * v21 + 32 * a3;
  if ((*(v22 + 1043) & 0x20) == 0)
  {
LABEL_21:
    if (!*(a1 + 29832))
    {
      v15 = 0;
      v20 = 1282;
      goto LABEL_30;
    }

    return 0;
  }

  if (!*(v22 + 1050))
  {
    if ((a6 & 3) != 0 && a5 | a4 && a6 + a4 != *(v22 + 1036))
    {
      goto LABEL_21;
    }

    if ((a7 & 3) != 0)
    {
      if (a5 | a4)
      {
        v27 = a7 + a5 == *(v22 + 1038);
      }

      else
      {
        v27 = 1;
      }

      v28 = v27;
      if ((a4 & 3) != 0 || (v28 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else if ((a4 & 3) != 0)
    {
      goto LABEL_21;
    }

    if ((a5 & 3) != 0)
    {
      goto LABEL_21;
    }
  }

  v23 = *(a1 + 19152);
  if ((v23 & 6) != 0)
  {
    if ((v23 & 2) != 0)
    {
      if (*(a1 + 18856) == 32790)
      {
        v24 = 18876;
        v25 = 18872;
        goto LABEL_47;
      }
    }

    else if ((v23 & 4) != 0 && *(a1 + 18928) == 32790)
    {
      v24 = 18948;
      v25 = 18944;
LABEL_47:
      a6 = a6 - *(a1 + v25) + 1;
      a7 = a7 - *(a1 + v24) + 1;
    }
  }

  if (a6 < 0)
  {
    goto LABEL_14;
  }

  v29 = *(v22 + 1042);
  if (-v29 > a4 || a6 + a4 > *(v22 + 1036) + v29)
  {
    goto LABEL_14;
  }

  if (a2 == 35864)
  {
    if ((a7 | a5) < 0 || a7 + a5 > *(v22 + 1038))
    {
      goto LABEL_14;
    }
  }

  else if (a7 < 0 || -v29 > a5 || a7 + a5 > *(v22 + 1038) + v29)
  {
    goto LABEL_14;
  }

  return v15;
}

void glNormalPointer_Exec(uint64_t a1, int a2, unsigned int a3, uint64_t a4)
{
  v4 = a1 + 28652;
  if ((a3 & 0x80000000) != 0)
  {
    if (!*(a1 + 29832))
    {
      v14 = 1281;
      goto LABEL_18;
    }

    return;
  }

  v5 = a4;
  v8 = *(a1 + 26384);
  v9 = *(a1 + 19312);
  if (!v9 && v8 != *(a1 + 26392) && a4 && !*(a1 + 32502))
  {
    if (!*(a1 + 29832))
    {
      v14 = 1282;
LABEL_18:
      *(a1 + 29832) = v14;
      return;
    }

    return;
  }

  HIDWORD(v11) = a2 - 5120;
  LODWORD(v11) = a2 - 5120;
  v10 = v11 >> 1;
  if (v10 > 2)
  {
    if (v10 != 3 && (v10 != 6 || *(a1 + 32501) != 2))
    {
      goto LABEL_16;
    }

    v12 = a2 << 32;
    v13 = 12;
LABEL_20:
    *(v8 + 944) |= 0x20000uLL;
    *(v8 + 160) = a4;
    v15 = *(v8 + 1248);
    if (v9 == v15)
    {
      goto LABEL_45;
    }

    if (v15 && (v16 = *(v15 + 20) - 1, (*(v15 + 20) = v16) == 0))
    {
      gleUnbindAndFreeBufferObject(a1, v15);
      if (v9)
      {
        goto LABEL_24;
      }
    }

    else if (v9)
    {
LABEL_24:
      ++*(v9 + 20);
      v17 = *(v8 + 912);
      if ((v17 & 0x20000) == 0)
      {
        *(v8 + 912) = v17 | 0x20000;
        if ((*(v8 + 906) & 2) != 0)
        {
          gleUpdateDrawArraysFuncs(a1);
        }
      }

      v18 = *(v4 + 3844);
      if (*(v4 + 3844))
      {
        v19 = (v9 + 40);
        v20 = (v8 + 1504);
        do
        {
          v21 = *v19++;
          *v20 = v21;
          v20 += 35;
          --v18;
        }

        while (v18);
      }

      if (v15)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    v22 = *(v8 + 912);
    if ((v22 & 0x20000) != 0)
    {
      *(v8 + 912) = v22 & 0xFFFFFFFFFFFDFFFFLL;
      if ((*(v8 + 906) & 2) != 0)
      {
        gleUpdateDrawArraysFuncs(a1);
      }
    }

    v23 = *(v4 + 3844);
    if (*(v4 + 3844))
    {
      v24 = (v23 + 1) & 0x1FE;
      v25 = vdupq_n_s64(v23 - 1);
      v26 = xmmword_23A102AE0;
      v27 = (v8 + 1504);
      v28 = vdupq_n_s64(2uLL);
      do
      {
        v29 = vmovn_s64(vcgeq_u64(v25, v26));
        if (v29.i8[0])
        {
          *v27 = 0;
        }

        if (v29.i8[4])
        {
          v27[35] = 0;
        }

        v26 = vaddq_s64(v26, v28);
        v27 += 70;
        v24 -= 2;
      }

      while (v24);
    }

LABEL_43:
    *(v8 + 952) |= 0x20000uLL;
LABEL_44:
    *v4 = 0;
    *(a1 + 1532) |= 0x1000u;
    *(v8 + 944) |= 0x20010uLL;
    *(v8 + 1248) = v9;
LABEL_45:
    if (v9)
    {
      v5 += *(v9 + 136);
      if (*(v9 + 192))
      {
        if ((*(v8 + 906) & 2) != 0)
        {
          *(v8 + 1216) = 0;
        }
      }
    }

    *(v8 + 968) = v5;
    if (a3)
    {
      v30 = a3;
    }

    else
    {
      v30 = v13;
    }

    v31 = 0x3000000000000;
    if (((v30 | v5) & 0xF) == 0)
    {
      v31 = 0x203000000000000;
    }

    v32 = v12 | v30 | v31;
    if (*(v8 + 176) != v32)
    {
      *(v8 + 952) |= 0x20000uLL;
      *(v8 + 176) = v32;
      *(a1 + 26184) = gleSetVertexArrayFunc;
      *(a1 + 26192) = gleSetVertexArrayFunc;
      *(a1 + 26200) = gleSetVertexElemFunc;
      *(a1 + 26208) = gleSetVertexElemFunc;
      *v4 = 0;
      *(a1 + 1532) |= 0x1000u;
    }

    return;
  }

  if (!v10)
  {
    v12 = 0x340000000000;
    v13 = 3;
    goto LABEL_20;
  }

  if (v10 == 1)
  {
    v12 = 0x340200000000;
    v13 = 6;
    goto LABEL_20;
  }

LABEL_16:
  if (!*(a1 + 29832))
  {
    v14 = 1280;
    goto LABEL_18;
  }
}

uint64_t glCopyTexImage2D_Exec(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7, unsigned int a8, double a9, double a10, double a11, int a12)
{
  v20 = a1 + 28652;
  v21 = (a1 + 18856);
  if ((*(a1 + 1540) & 4) != 0)
  {
    MatrixIdentifier = gleGenerateMatrixIdentifier(a1, a1 + 9488, a9, a10, a11);
    *(v21 + 74) = *(v21 + 74) & 0xFFFFFEFF | ((MatrixIdentifier != -1074791426) << 8);
    *(v20 + 1080) = MatrixIdentifier;
  }

  if ((*(v20 + 1151) & 0x8A) != 0)
  {
    result = gleUpdateReadFramebufferState(a1);
    if (result)
    {
      if (result != 16711680 && !*(v20 + 1180))
      {
        *(v20 + 1180) = result;
      }

      return result;
    }
  }

  v63 = a6;
  v64 = a5;
  result = gleCheckCopyTexImage2DArgs(a1, a2, a3, a4, a7, a8, a12);
  if (!result)
  {
    return result;
  }

  v24 = result;
  if (*(result + 770))
  {
    return result;
  }

  if (*(v20 + 3851))
  {
    result = mach_absolute_time();
  }

  else
  {
    result = 0;
  }

  v25 = *(v24 + 768);
  if ((v25 & 0x1C00) == 0x1000)
  {
    goto LABEL_19;
  }

  if ((*(v24 + 768) & 0x1C00) == 0)
  {
    *(v24 + 768) = v25 | 0x1000;
    goto LABEL_19;
  }

  if ((*(v24 + 768) & 0xC00) == 0)
  {
LABEL_19:
    v26 = *(v21 + 74);
    v61 = result;
    if ((v26 & 2) != 0)
    {
      v27 = a8;
      v28 = a7;
      if (*v21 != 32790)
      {
        goto LABEL_26;
      }

      v29 = 18876;
      v30 = 18872;
    }

    else
    {
      v27 = a8;
      v28 = a7;
      if ((v26 & 4) == 0)
      {
        goto LABEL_26;
      }

      v27 = a8;
      v28 = a7;
      if (v21[36] != 32790)
      {
        goto LABEL_26;
      }

      v29 = 18948;
      v30 = 18944;
    }

    v28 = a7 - *(a1 + v30) + 1;
    v27 = a8 - *(a1 + v29) + 1;
LABEL_26:
    v59 = a7;
    v60 = a8;
    if (v27)
    {
      v31 = v28;
    }

    else
    {
      v31 = 0;
    }

    if (v27)
    {
      v32 = a12;
    }

    else
    {
      v32 = 0;
    }

    if ((a2 - 34069) >= 6)
    {
      v33 = 0;
    }

    else
    {
      v33 = (a2 - 34069);
    }

    v34 = v27;
    Framebuffer = gleTypeFromReadFramebuffer(a1, a4);
    LOWORD(v56) = 256;
    v54 = v32;
    v36 = v24 + 480 * v33 + 32 * a3 + 1032;
    v62 = v33;
    v37 = v34;
    v38 = gleEvaluateTextureImageChange(a1, v24, v36, v33, a3, v31, v34, 1, v54, a4, 0x1908u, Framebuffer, v56, 0);
    v39 = v38;
    if (!v31)
    {
      result = 0;
      goto LABEL_56;
    }

    v58 = v38;
    if (*(v24 + 976) <= a3)
    {
      v40 = v64;
      v41 = v60;
      if (*(v24 + 978) >= a3 && ((*(v24 + 2 * v62 + 984) >> a3) & 1) != 0)
      {
        v65 = 0;
        if ((*(v24 + 898) & 1) != 0 && *(v24 + 884) == a3 && (*(v24 + 768) & 0xF) != 2)
        {
          gleGenerateEmptyMipmaps(a1, v24, v62, a3, *(v24 + 975), 0, 0);
          v57 = 0;
        }

        else
        {
          v57 = 1;
        }

        v42 = *(a1 + 28968);
        if (v42)
        {
          v43 = *(v42 + 474);
          v44 = *(v42 + 476);
        }

        else
        {
          v43 = *(v20 + 980);
          v44 = *(v20 + 984);
        }

        v69 = v64;
        v67 = v31;
        v68 = v63;
        v66 = v37;
        gleClipReadableRange(a1, v43, v44, &v69, &v68, &v67, &v66, &v65 + 1, &v65);
        v48 = *(a1 + 8 * *(a1 + 23768) + 23936);
        if (v48)
        {
          v49 = (v48 + 198);
        }

        else
        {
          v49 = (v24 + 926);
        }

        v50 = *(v24 + 982);
        if (v50 < 0)
        {
          --HIDWORD(v65);
          if ((v50 & 0x2000) == 0)
          {
            LODWORD(v65) = v65 - 1;
          }
        }

        v51 = *v49;
        *(v24 + 968) = 65540;
        v45 = v59;
        if (v67 >= 1 && v66 >= 1)
        {
          LODWORD(v55) = v66;
          HIDWORD(v55) = (v51 & 1) == 0;
          result = (*(*(a1 + 29448) + 360))(*(a1 + 29016), *(v24 + 8 * *(v20 + 3847)), v62, a3, HIDWORD(v65), v65, 0, v69, __PAIR64__(v67, v68), v55);
          if (result)
          {
            *(v24 + 536) = *(a1 + 29024);
            *(v36 + 11) |= 0x40u;
            if ((v57 & 1) == 0)
            {
              v52 = *(v24 + 975);
              if (v52 > a3)
              {
                v53 = (32 * a3 + 480 * v62 + v24 + 1075);
                do
                {
                  *v53 |= 0x40u;
                  v53 += 32;
                  LODWORD(a3) = a3 + 1;
                }

                while (a3 < v52);
              }
            }

            goto LABEL_55;
          }
        }

LABEL_49:
        if (gfxAllocateTextureLevel())
        {
          gleTextureImageCopy(a1, v24, v36, a4, v40, v63, v45, v41);
          *(v24 + 968) = *(v36 + 16);
          *(v36 + 11) |= 0x10u;
          *(v24 + 2 * v62 + 996) |= *(v24 + 2 * v62 + 984) & (1 << a3);
          v46 = v24 + 24 * *(v20 + 3847);
          *(v46 + 116) |= 4u;
          *(v46 + 2 * v62 + 104) |= 1 << a3;
          if ((*(v24 + 898) & 1) != 0 && *(v24 + 884) == a3)
          {
            result = gleGenMipmaps(a1, v24, v62, a3, 1, v57);
LABEL_55:
            v39 = v58;
LABEL_56:
            if ((v39 & 0xC0000001) != 0)
            {
              if (v39 < 0)
              {
                v47 = 134356992;
              }

              else
              {
                v47 = 139264;
              }

              *v20 = 0;
              *(a1 + 1548) |= v47;
            }

            else if (result == 1)
            {
              goto LABEL_63;
            }

            result = gleDirtyTextureLevelCurrentBindPointsGeom(a1, v24, v36);
LABEL_63:
            if (*(v20 + 3851))
            {
              result = mach_absolute_time();
              *(a1 + 19168) += result - v61;
            }

            return result;
          }
        }

        else if (!*(v20 + 1180))
        {
          result = 0;
          *(v20 + 1180) = 1285;
          goto LABEL_55;
        }

        result = 0;
        goto LABEL_55;
      }

      v57 = 1;
    }

    else
    {
      v57 = 1;
      v40 = v64;
      v41 = v60;
    }

    v45 = v59;
    goto LABEL_49;
  }

  if (!*(v20 + 1180))
  {
    *(v20 + 1180) = 1282;
  }

  return result;
}

uint64_t gleCheckCopyTexImage2DArgs(uint64_t a1, int a2, signed int a3, signed int a4, int a5, unsigned int a6, int a7)
{
  v13 = a1 + 29832;
  v14 = gleLookUpNonProxyTexture2D(a1, a2);
  if (!v14)
  {
    if (*v13)
    {
      return 0;
    }

    result = 0;
    v22 = 1280;
    goto LABEL_68;
  }

  v15 = v14;
  if (*(v14 + 559))
  {
    if (*v13)
    {
      return 0;
    }

    result = 0;
    v22 = 1282;
LABEL_68:
    *v13 = v22;
    return result;
  }

  v16 = a5 - 2 * a7;
  v17 = a6 - 2 * a7;
  v18 = *(a1 + 19152);
  if ((v18 & 6) != 0)
  {
    if ((v18 & 2) != 0)
    {
      if (*(a1 + 18856) != 32790)
      {
        goto LABEL_13;
      }

      v19 = 18876;
      v20 = 18872;
      goto LABEL_12;
    }

    if ((v18 & 4) != 0 && *(a1 + 18928) == 32790)
    {
      v19 = 18948;
      v20 = 18944;
LABEL_12:
      v16 = v16 - *(a1 + v20) + 1;
      v17 = v17 - *(a1 + v19) + 1;
    }
  }

LABEL_13:
  v23 = *(v14 + 768) & 0xF;
  v24 = 1;
  if (v23 > 2)
  {
    if (v23 != 3)
    {
      if (v23 == 6)
      {
        if ((v16 & 0x80000000) != 0 || a7 && !v16)
        {
          goto LABEL_65;
        }

        if ((v16 & (v16 - 1)) != 0)
        {
          v26 = *(v13 + 2669);
          if (v26 != 4 && (a3 || v26 != 3 && (*(*(a1 + 29032) + 578) & 0x10) == 0))
          {
            goto LABEL_65;
          }
        }

        v27 = *(a1 + 29032);
        if (v16 > *(v27 + 160) || (a6 & 0x80000000) != 0 || *(v27 + 162) < a6)
        {
          goto LABEL_65;
        }
      }

      goto LABEL_53;
    }

    goto LABEL_36;
  }

  if ((*(v14 + 768) & 0xF) == 0)
  {
    if (v16 != v17)
    {
      goto LABEL_65;
    }

    v28 = *(a1 + 29032);
    if (v16 > *(v28 + 168))
    {
      goto LABEL_65;
    }

    v24 = *(v28 + 572) >> 31;
LABEL_36:
    if ((v16 & 0x80000000) != 0 || a7 && !v16)
    {
      goto LABEL_65;
    }

    if ((v16 & (v16 - 1)) != 0)
    {
      v29 = *(v13 + 2669);
      if (v29 != 4 && (a3 || v29 != 3 && (*(*(a1 + 29032) + 578) & 0x10) == 0))
      {
        goto LABEL_65;
      }
    }

    v30 = *(a1 + 29032);
    v31 = *(v30 + 160);
    if (v16 > v31)
    {
      goto LABEL_65;
    }

    v32 = a7 && v17 == 0;
    v33 = v32;
    if ((v17 & 0x80000000) != 0)
    {
      goto LABEL_65;
    }

    if (v33)
    {
      goto LABEL_65;
    }

    if ((v17 & (v17 - 1)) != 0)
    {
      v34 = *(v13 + 2669);
      if (v34 != 4 && (a3 || v34 != 3 && (*(v30 + 578) & 0x10) == 0))
      {
        goto LABEL_65;
      }
    }

    if (v17 > v31)
    {
      goto LABEL_65;
    }

    goto LABEL_53;
  }

  if (v23 == 2)
  {
    if ((v16 & 0x80000000) != 0 || (v25 = *(*(a1 + 29032) + 166), v16 > v25) || v17 > v25 || a3 > 0 || a7)
    {
LABEL_65:
      if (*v13)
      {
        return 0;
      }

      result = 0;
      v22 = 1281;
      goto LABEL_68;
    }
  }

LABEL_53:
  if (gleCheckCopyTexImageArgs(a1, a3, a4, a7, v24))
  {
    return v15;
  }

  else
  {
    return 0;
  }
}

uint64_t gleCheckCopyTexImageArgs(uint64_t a1, unsigned int a2, signed int a3, int a4, int a5)
{
  v5 = a1 + 28672;
  if (!a4)
  {
    v11 = 0;
    if (a3 > 35055)
    {
      if (a3 <= 36193)
      {
        if (a3 <= 35897)
        {
          if (a3 > 35727)
          {
            if ((a3 - 35728) >= 0xA)
            {
              goto LABEL_74;
            }

            if (*(a1 + 32501) != 2)
            {
LABEL_51:
              v11 = 0;
              goto LABEL_52;
            }

            goto LABEL_69;
          }

          if (a3 > 35445)
          {
            if ((a3 - 35446) >= 2)
            {
              goto LABEL_74;
            }

            goto LABEL_69;
          }

          if (a3 == 35056)
          {
            goto LABEL_69;
          }

          if (a3 != 35409)
          {
            goto LABEL_74;
          }
        }

        else
        {
          v14 = a3 - 58;
          if ((a3 - 35898) > 0x15)
          {
            goto LABEL_28;
          }

          if (((1 << v14) & 0x3CC140) != 0 || ((1 << v14) & 0x33C00) != 0)
          {
            goto LABEL_74;
          }

          if (((1 << v14) & 0x289) == 0)
          {
LABEL_28:
            if (a3 == 36012)
            {
              goto LABEL_69;
            }

            v15 = 36013;
            goto LABEL_62;
          }
        }

LABEL_49:
        v18 = *(a1 + 32501) & 0xFE;
LABEL_50:
        if (v18 != 2)
        {
          goto LABEL_51;
        }

LABEL_74:
        v17 = *(a1 + 29832);
        goto LABEL_75;
      }

      if (a3 <= 36755)
      {
        switch(a3)
        {
          case 36194:
            goto LABEL_73;
          case 36208:
          case 36209:
          case 36214:
          case 36215:
          case 36220:
          case 36221:
          case 36226:
          case 36227:
          case 36232:
          case 36233:
          case 36238:
          case 36239:
            goto LABEL_32;
          default:
            goto LABEL_74;
        }
      }

      if (a3 <= 36974)
      {
        if ((a3 - 36756) < 8)
        {
          v17 = *(a1 + 29832);
          if (*(a1 + 32501) != 4)
          {
LABEL_75:
            if (v17)
            {
              return 0;
            }

            result = 0;
            v21 = 1280;
            goto LABEL_78;
          }

LABEL_70:
          if (v17)
          {
            return 0;
          }

          result = 0;
          v21 = 1282;
LABEL_78:
          *(v5 + 1160) = v21;
          return result;
        }

        goto LABEL_74;
      }

      if (a3 == 36975)
      {
        v11 = 1;
LABEL_73:
        if ((*(a1 + 32501) & 0xFE) == 2)
        {
          goto LABEL_74;
        }

        goto LABEL_52;
      }

      if (a3 == 37874)
      {
        goto LABEL_69;
      }

      v15 = 37881;
    }

    else
    {
      if (a3 <= 33318)
      {
        if (a3 > 32826)
        {
          v12 = a3 - 59;
          if ((a3 - 32827) > 0x20)
          {
            goto LABEL_11;
          }

          if (((1 << v12) & 0x7FFFF) != 0 || ((1 << v12) & 0x187B00000) != 0)
          {
            goto LABEL_74;
          }

          if (((1 << v12) & 0x78400000) == 0)
          {
LABEL_11:
            if ((a3 - 33189) >= 3)
            {
              goto LABEL_74;
            }

            goto LABEL_69;
          }

          goto LABEL_49;
        }

        if (a3 > 6405)
        {
          if ((a3 - 6406) >= 5)
          {
            goto LABEL_74;
          }

          goto LABEL_52;
        }

        if (a3 != 6402)
        {
          v20 = 6403;
          goto LABEL_66;
        }

LABEL_69:
        v17 = *(a1 + 29832);
        goto LABEL_70;
      }

      if (a3 <= 34024)
      {
        if ((a3 - 33321) <= 0x13)
        {
          v16 = 1 << (a3 - 41);
          if ((v16 & 0xFFF00) == 0)
          {
            if ((v16 & 0xF5) == 0)
            {
              goto LABEL_74;
            }

            goto LABEL_49;
          }

LABEL_32:
          if ((*(a1 + 32501) & 0xFE) == 2)
          {
            goto LABEL_74;
          }

          v11 = 1;
LABEL_52:
          v19 = gfxReqToBase();
          return gleCheckCopyTexSubImageArgs(a1, a2, v19, a3, v11, a5);
        }

        if ((a3 - 33776) < 4)
        {
          goto LABEL_74;
        }

        v20 = 33319;
LABEL_66:
        if (a3 != v20)
        {
          goto LABEL_74;
        }

        v18 = *(a1 + 32501);
        goto LABEL_50;
      }

      if (a3 > 34835)
      {
        v13 = a3 - 20;
        if ((a3 - 34836) > 0x23 || ((1 << v13) & 0x800000F3CLL) != 0 || ((1 << v13) & 0xC3) == 0)
        {
          goto LABEL_74;
        }

        goto LABEL_49;
      }

      if ((a3 - 34025) < 4 || (a3 - 34029) < 2)
      {
        goto LABEL_74;
      }

      v15 = 34041;
    }

LABEL_62:
    if (a3 != v15)
    {
      goto LABEL_74;
    }

    goto LABEL_69;
  }

  if (*(a1 + 29832))
  {
    return 0;
  }

  result = 0;
  *(v5 + 1160) = 1281;
  return result;
}

uint64_t gleIsHashName(uint64_t a1, unsigned int a2)
{
  v2 = (a1 + 16);
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    v3 = *(v2 + 2);
    if (v3 > a2)
    {
      break;
    }

    if (*(v2 + 3) + v3 > a2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t gleSetEnable_LINE_SMOOTH(uint64_t result, uint64_t a2, int a3)
{
  if (*(result + 15315) != a3)
  {
    *(result + 15315) = a3;
    *(result + 28652) = 0;
    *(result + 1520) |= 0x4000u;
  }

  return result;
}

uint64_t glFrontFace_Exec(uint64_t result, int a2)
{
  if ((a2 - 2306) <= 0xFFFFFFFD)
  {
    if (!*(result + 29832))
    {
      *(result + 29832) = 1280;
    }
  }

  else if (*(result + 15528) != a2)
  {
    *(result + 15528) = a2;
    *(result + 1520) |= 0x800000u;
    *(result + 28652) = 0;
    *(result + 1548) |= 0x8000u;
  }

  return result;
}

void glPointSize_Exec(uint64_t a1, float a2)
{
  v2 = (a1 + 28652);
  if (a2 <= 0.0)
  {
    if (!*(a1 + 29832))
    {
      *(a1 + 29832) = 1281;
    }
  }

  else if (*(a1 + 15344) != a2)
  {
    *(a1 + 15344) = a2;
    gleUpdatePointAttenuation(a1);
    v4 = *(a1 + 19248);
    if (v4 && *(v4 + 3788) <= 0x3FFu)
    {
      OUTLINED_FUNCTION_0_4();
      *(v5 + 1552) |= v6;
      *(a1 + 1532) |= 0x800000u;
    }

    v7 = *(a1 + 19272);
    if (v7 && *(v7 + 3788) <= 0x3FFu)
    {
      OUTLINED_FUNCTION_0_4();
      *(v8 + 1936) |= v9;
      *(a1 + 1532) |= 0x4000000u;
    }

    v10 = *(a1 + 19280);
    if (v10)
    {
      if (*(v10 + 3788) <= 0x3FFu)
      {
        OUTLINED_FUNCTION_0_4();
        *(v11 + 2064) |= v12;
        *(a1 + 1532) |= 0x8000000u;
      }
    }

    *v2 = 0;
    *(a1 + 1520) |= 0x400000u;
  }
}

void glLineWidth_Exec(uint64_t a1, float a2)
{
  v2 = (a1 + 28652);
  if (a2 <= 0.0)
  {
    if (!*(a1 + 29832))
    {
      OUTLINED_FUNCTION_0_1(v2);
    }
  }

  else if (*(a1 + 15304) != a2)
  {
    *(a1 + 15304) = a2;
    *v2 = 0;
    *(a1 + 1520) |= 0x4000u;
  }
}

void gleSetEnable_COLOR_MATERIAL(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 14891) != a3)
  {
    *(a1 + 14891) = a3;
    gleSetColorMaterialEnable(a1);
    if (a3)
    {
      v5 = *(a1 + 1544) | 0x2000000;
    }

    else
    {
      (*(a1 + 1456))(a1, a1 + 8464);
      v5 = *(a1 + 1544) & 0xFCFFFFFF | 0x1000000;
    }

    *(a1 + 1544) = v5;
    *(a1 + 28652) = 0;
    OUTLINED_FUNCTION_1_7(*(a1 + 1548));
  }
}

float gleGetAttrib(uint64_t a1, int a2, uint64_t a3)
{
  v3 = (a1 + 17572);
  v4 = (a1 + 12516);
  if (a2 <= 511)
  {
    if (a2 <= 15)
    {
      if (a2 > 3)
      {
        if (a2 == 4)
        {
          *(a3 + 11) = *(a1 + 15315);
          *(a3 + 10) = *(a1 + 15314);
          *(a3 + 8) = *(a1 + 15312);
          *(a3 + 4) = *(a1 + 15308);
          LODWORD(v12) = *(a1 + 15304);
          *a3 = v12;
        }

        else if (a2 == 8)
        {
          *(a3 + 18) = *(a1 + 15534);
          *(a3 + 14) = *(a1 + 15530);
          *(a3 + 12) = *(a1 + 15528);
          *(a3 + 8) = *(a1 + 15524);
          *(a3 + 10) = *(a1 + 15526);
          *(a3 + 17) = *(a1 + 15533);
          *(a3 + 16) = *(a1 + 15532);
          *(a3 + 21) = *(a1 + 15537);
          *(a3 + 20) = *(a1 + 15536);
          *(a3 + 19) = *(a1 + 15535);
          *a3 = *(a1 + 15516);
          LODWORD(v12) = *(a1 + 15520);
          *(a3 + 4) = v12;
        }
      }

      else if (a2 == 1)
      {
        v35 = *(a1 + 26000);
        *(a3 + 428) = *(a1 + 29596);
        *(a3 + 416) = *(a1 + 8448);
        *(a3 + 420) = *(a1 + 8452);
        *(a3 + 424) = *(a1 + 8456);
        *(a3 + 400) = *(a1 + 8464);
        *(a3 + 404) = *(a1 + 8468);
        *(a3 + 408) = *(a1 + 8472);
        *(a3 + 412) = *(a1 + 8476);
        *(a3 + 432) = *(a1 + 8480);
        *(a3 + 436) = *(a1 + 8484);
        *(a3 + 440) = *(a1 + 8488);
        *(a3 + 384) = *(a1 + 8496);
        *(a3 + 388) = *(a1 + 8500);
        *(a3 + 392) = *(a1 + 8504);
        *(a3 + 396) = *(a1 + 8508);
        *(a3 + 444) = *(a1 + 8512);
        *(a3 + 668) = *(a1 + 8528);
        v36 = (a1 + 8572);
        v37 = (v35 - 1056);
        v38 = 8;
        v39 = a3;
        do
        {
          *v39 = *(v36 - 3);
          v39[1] = *(v36 - 2);
          v39[2] = *(v36 - 1);
          v40 = *v36;
          v36 += 4;
          v39[3] = v40;
          v39[128] = *v37;
          v39[129] = v37[1];
          v39[130] = v37[2];
          v39[131] = v37[3];
          v39 += 4;
          v37 += 4;
          --v38;
        }

        while (v38);
        v41 = (a1 + 8700);
        v42 = (a3 + 140);
        v43 = 16;
        do
        {
          *(v42 - 3) = *(v41 - 3);
          *(v42 - 2) = *(v41 - 2);
          *(v42 - 1) = *(v41 - 1);
          v44 = *v41;
          v41 += 8;
          *v42 = v44;
          v42 += 4;
          --v43;
        }

        while (v43);
        *(a3 + 448) = *(a1 + 2256);
        *(a3 + 452) = *(a1 + 2260);
        *(a3 + 456) = *(a1 + 2264);
        *(a3 + 460) = *(v35 - 1204);
        *(a3 + 464) = *(v35 - 1184);
        *(a3 + 468) = *(v35 - 1180);
        *(a3 + 472) = *(v35 - 1176);
        *(a3 + 476) = *(v35 - 1172);
        *(a3 + 480) = *(v35 - 1200);
        *(a3 + 484) = *(v35 - 1196);
        *(a3 + 488) = *(v35 - 1192);
        *(a3 + 492) = *(v35 - 1188);
        *(a3 + 496) = *(v35 - 1168);
        *(a3 + 500) = *(v35 - 1164);
        *(a3 + 504) = *(v35 - 1160);
        *(a3 + 640) = *(v35 - 1152);
        *(a3 + 644) = *(v35 - 1148);
        *(a3 + 648) = *(v35 - 1144);
        *(a3 + 652) = *(v35 - 1140);
        *(a3 + 656) = *(v35 - 1136);
        *(a3 + 660) = *(v35 - 1132);
        LODWORD(v12) = *(v35 - 1128);
        *(a3 + 664) = v12;
        *(a3 + 508) = 1065353216;
        *(a3 + 673) = *(a1 + 32491);
      }

      else if (a2 == 2)
      {
        *a3 = *(a1 + 15344);
        *(a3 + 4) = *(a1 + 15348);
        *(a3 + 8) = *(a1 + 15352);
        *(a3 + 12) = *(a1 + 15356);
        *(a3 + 16) = *(a1 + 15360);
        *(a3 + 20) = *(a1 + 15364);
        LODWORD(v12) = *(a1 + 15368);
        *(a3 + 24) = v12;
        *(a3 + 28) = *(a1 + 32507) & 0x7F;
        *(a3 + 29) = *(a1 + 15377);
        *(a3 + 30) = *(a1 + 15378);
        *(a3 + 32) = *(a1 + 15380);
        *(a3 + 34) = *(a1 + 15382);
        *(a3 + 36) = *(a1 + 15384);
      }
    }

    else if (a2 <= 63)
    {
      if (a2 == 16)
      {
        for (i = 0; i != 128; ++i)
        {
          *(a3 + i) = *(a1 + 15388 + i);
        }
      }

      else if (a2 == 32)
      {
        *(a3 + 8) = *(a1 + 15176);
        *(a3 + 10) = *(a1 + 29844);
        *a3 = *(a1 + 18440);
        *(a3 + 4) = *(a1 + 18444);
        *(a3 + 16) = *(a1 + 18520);
        *(a3 + 20) = *(a1 + 18524);
        *(a3 + 24) = *(a1 + 18528);
        *(a3 + 28) = *(a1 + 18532);
        *(a3 + 32) = *(a1 + 18536);
        *(a3 + 36) = *(a1 + 18540);
        *(a3 + 40) = *(a1 + 18544);
        *(a3 + 44) = *(a1 + 18548);
        *(a3 + 48) = *(a1 + 18552);
        LODWORD(v12) = *(a1 + 18556);
        *(a3 + 52) = v12;
        *(a3 + 56) = *(a1 + 18560);
        *(a3 + 60) = *(a1 + 18564);
        *(a3 + 12) = *(a1 + 19160);
      }
    }

    else
    {
      switch(a2)
      {
        case 64:
          *a3 = *(a1 + 15592);
          *(a3 + 2) = *(a1 + 17704);
          *(a3 + 8) = *(a1 + 29708);
          *(a3 + 4) = *(a1 + 14884);
          *(a3 + 6) = *(a1 + 14886);
          *(a3 + 10) = *(a1 + 14888);
          *(a3 + 12) = *(a1 + 12528);
          *(a3 + 16) = *(a1 + 12532);
          *(a3 + 20) = *(a1 + 12536);
          *(a3 + 24) = *(a1 + 12540);
          *(a3 + 28) = *(a1 + 14891);
          *(a3 + 29) = *(a1 + 14893);
          *(a3 + 30) = *(a1 + 14892);
          *(a3 + 31) = *(a1 + 14894);
          *(a3 + 32) = *(a1 + 14890);
          *(a3 + 36) = *(a1 + 14880);
          v45 = (a1 + 12544);
          v46 = (a3 + 68);
          v47 = 8;
          do
          {
            v46[5] = v45[12];
            v46[6] = v45[13];
            v46[7] = v45[14];
            v46[8] = v45[15];
            *(v46 - 7) = *v45;
            *(v46 - 6) = v45[1];
            *(v46 - 5) = v45[2];
            *(v46 - 4) = v45[3];
            *(v46 - 3) = v45[4];
            *(v46 - 2) = v45[5];
            *(v46 - 1) = v45[6];
            *v46 = v45[7];
            v46[1] = v45[8];
            v46[2] = v45[9];
            v46[3] = v45[10];
            v46[4] = v45[11];
            v46[9] = v45[16];
            v46[10] = v45[17];
            v46[11] = v45[18];
            v46[12] = v45[23];
            v46[13] = v45[36];
            v46[14] = v45[19];
            v46[15] = v45[20];
            v46[16] = v45[21];
            v46[17] = v45[22];
            v45 += 40;
            v46 += 25;
            --v47;
          }

          while (v47);
          v48 = 0;
          v49 = a1 + 1424;
          v50 = 1;
          do
          {
            v51 = (a3 + 840 + 80 * v48);
            *v51 = **(v49 + 8 * v48);
            v51[1] = *(*(v49 + 8 * v48) + 4);
            v51[2] = *(*(v49 + 8 * v48) + 8);
            v51[3] = *(*(v49 + 8 * v48) + 12);
            v51[4] = *(*(v49 + 8 * v48) + 16);
            v51[5] = *(*(v49 + 8 * v48) + 20);
            v51[6] = *(*(v49 + 8 * v48) + 24);
            v51[7] = *(*(v49 + 8 * v48) + 28);
            v51[8] = *(*(v49 + 8 * v48) + 32);
            v51[9] = *(*(v49 + 8 * v48) + 36);
            v51[10] = *(*(v49 + 8 * v48) + 40);
            v51[11] = *(*(v49 + 8 * v48) + 44);
            v51[12] = *(*(v49 + 8 * v48) + 48);
            v51[13] = *(*(v49 + 8 * v48) + 52);
            v51[14] = *(*(v49 + 8 * v48) + 56);
            v51[15] = *(*(v49 + 8 * v48) + 60);
            v52 = v50;
            v51[19] = *(*(v49 + 8 * v48) + 64);
            v53 = (a1 + 29604 + 12 * v48);
            v51[16] = *v53;
            v51[17] = v53[1];
            LODWORD(v12) = v53[2];
            v51[18] = v12;
            v48 = 1;
            v50 = 0;
          }

          while ((v52 & 1) != 0);
          break;
        case 128:
          *a3 = *(a1 + 29576);
          *(a3 + 4) = *(a1 + 29580);
          *(a3 + 8) = *(a1 + 29584);
          *(a3 + 12) = *(a1 + 29588);
          *(a3 + 20) = *(a1 + 15244);
          *(a3 + 24) = *(a1 + 15248);
          *(a3 + 28) = *(a1 + 15252);
          LODWORD(v12) = *(a1 + 29600);
          *(a3 + 16) = v12;
          *(a3 + 32) = *(a1 + 15276);
          *(a3 + 34) = *(a1 + 15278);
          *(a3 + 36) = *(a1 + 15280);
          *(a3 + 38) = *(a1 + 15282);
          *(a3 + 39) = *(a1 + 32506);
          break;
        case 256:
          *(a3 + 28) = *(a1 + 15204);
          *(a3 + 24) = *(a1 + 15200);
          *a3 = *(a1 + 15128);
          *(a3 + 29) = *(a1 + 15340);
          *(a3 + 30) = *(a1 + 15206);
          *(a3 + 8) = *(a1 + 15208);
          *&v12 = *(a1 + 15216);
          *(a3 + 16) = v12;
          break;
      }
    }
  }

  else if (a2 >= 0x4000)
  {
    if (a2 < 0x40000)
    {
      if (a2 == 0x4000)
      {
        for (j = 0; j != 16; j += 2)
        {
          *(a3 + j + 20) = *(a1 + 15180 + j);
        }

        *(a3 + 92) = *(a1 + 29836);
        *(a3 + 94) = *(a1 + 29838);
        *(a3 + 96) = *(a1 + 29840);
        *(a3 + 98) = *(a1 + 29842);
        *(a3 + 76) = *(a1 + 15006);
        *(a3 + 4) = *(a1 + 15004);
        *a3 = *(a1 + 29704);
        *(a3 + 77) = *(a1 + 15120);
        *(a3 + 6) = *(a1 + 15008);
        *(a3 + 8) = *(a1 + 15010);
        *(a3 + 10) = *(a1 + 15012);
        *(a3 + 12) = *(a1 + 15014);
        *(a3 + 14) = *(a1 + 15016);
        *(a3 + 16) = *(a1 + 15018);
        *(a3 + 36) = *(a1 + 29688);
        *(a3 + 40) = *(a1 + 29692);
        *(a3 + 44) = *(a1 + 29696);
        *(a3 + 48) = *(a1 + 29700);
        *(a3 + 78) = *(a1 + 15224);
        *(a3 + 79) = *(a1 + 15319);
        *(a3 + 80) = *(a1 + 15318);
        *(a3 + 18) = *(a1 + 15316);
        *(a3 + 52) = *(a1 + 29672);
        *(a3 + 56) = *(a1 + 29676);
        *(a3 + 60) = *(a1 + 29680);
        *(a3 + 64) = *(a1 + 29684);
        *(a3 + 81) = *(a1 + 15336);
        *(a3 + 82) = *(a1 + 15337);
        *(a3 + 83) = *(a1 + 15338);
        *(a3 + 84) = *(a1 + 15339);
        *&v12 = *(a1 + 15168) * 0.00389105058;
        *(a3 + 68) = v12;
        *(a3 + 72) = *(a1 + 15320);
        *(a3 + 85) = *(a1 + 15196);
        *(a3 + 88) = *(a1 + 29710);
        *(a3 + 90) = *(a1 + 29712);
      }

      else if (a2 == 0x8000)
      {
        *a3 = *(a1 + 15284);
        *(a3 + 2) = *(a1 + 15286);
        *(a3 + 4) = *(a1 + 15288);
        *(a3 + 6) = *(a1 + 15290);
        *(a3 + 8) = *(a1 + 15292);
        *(a3 + 10) = *(a1 + 15294);
        *(a3 + 12) = *(a1 + 15296);
        *(a3 + 14) = *(a1 + 15298);
        *(a3 + 16) = *(a1 + 15300);
        *(a3 + 18) = *(a1 + 15302);
        *(a3 + 20) = *(a1 + 20384);
      }
    }

    else
    {
      switch(a2)
      {
        case 0x20000000:
          LODWORD(v12) = *(a1 + 17672);
          *a3 = v12;
          *(a3 + 4) = *(a1 + 17680);
          *(a3 + 5) = *(a1 + 17681);
          *(a3 + 6) = *(a1 + 17682);
          *(a3 + 7) = *(a1 + 17683);
          *(a3 + 8) = *(a1 + 17684);
          break;
        case 0x80000:
          v12 = *(a1 + 15560);
          *a3 = v12;
          *(a3 + 16) = *(a1 + 15576);
          break;
        case 0x40000:
          v13 = (a1 + 16535);
          v14 = -1152;
          do
          {
            v15 = a3 + v14;
            *(v15 + 1152) = *(v13 - 127);
            *(v15 + 1156) = *(v13 - 123);
            *(v15 + 1160) = *(v13 - 119);
            *(v15 + 1164) = *(v13 - 115);
            *(v15 + 1168) = *(v13 - 143);
            *(v15 + 1172) = *(v13 - 139);
            *(v15 + 1176) = *(v13 - 135);
            *(v15 + 1180) = *(v13 - 131);
            *(v15 + 1188) = *(v13 - 91);
            *(v15 + 1192) = *(v13 - 87);
            *(v15 + 1196) = *(v13 - 83);
            *(v15 + 1200) = *(v13 - 79);
            *(v15 + 1204) = *(v13 - 107);
            *(v15 + 1208) = *(v13 - 103);
            *(v15 + 1212) = *(v13 - 99);
            *(v15 + 1216) = *(v13 - 95);
            *(v15 + 1224) = *(v13 - 55);
            *(v15 + 1228) = *(v13 - 51);
            *(v15 + 1232) = *(v13 - 47);
            *(v15 + 1236) = *(v13 - 43);
            *(v15 + 1240) = *(v13 - 71);
            *(v15 + 1244) = *(v13 - 67);
            *(v15 + 1248) = *(v13 - 63);
            *(v15 + 1252) = *(v13 - 59);
            *(v15 + 1260) = *(v13 - 19);
            *(v15 + 1264) = *(v13 - 15);
            *(v15 + 1268) = *(v13 - 11);
            *(v15 + 1272) = *(v13 - 7);
            *(v15 + 1276) = *(v13 - 35);
            *(v15 + 1280) = *(v13 - 31);
            *(v15 + 1284) = *(v13 - 27);
            *(v15 + 1288) = *(v13 - 23);
            *(v15 + 1186) = *(v13 - 3);
            *(v15 + 1222) = *(v13 - 2);
            *(v15 + 1258) = *(v13 - 1);
            *(v15 + 1294) = *v13;
            *(v15 + 1184) = *(v13 - 147);
            *(v15 + 1220) = *(v13 - 111);
            *(v15 + 1256) = *(v13 - 75);
            *(v15 + 1292) = *(v13 - 39);
            v13 += 148;
            v14 += 144;
          }

          while (v14);
          v16 = 0;
          v17 = (a1 + 20776);
          v18 = a3;
          do
          {
            v19 = a1 + 15652 + 76 * v16;
            v20 = a3 + 1152 + 856 * v16;
            *(v20 + 852) = *(v19 + 32);
            v21 = -792;
            v22 = v17;
            do
            {
              v23 = *v22;
              v24 = v18 + v21;
              *(v24 + 1944) = *(*v22 + 984);
              *(v24 + 1948) = *(v23 + 988);
              *(v24 + 1952) = *(v23 + 992);
              *(v24 + 1956) = *(v23 + 996);
              *(v24 + 1996) = *(v23 + 952);
              *(v24 + 1998) = *(v23 + 954);
              *(v24 + 2000) = *(v23 + 960);
              *(v24 + 2002) = *(v23 + 962);
              *(v24 + 2004) = *(v23 + 964);
              v25 = *v22++;
              *(v24 + 1960) = *(v25 + 16);
              *(v24 + 1964) = *(v23 + 816);
              *(v24 + 1968) = *(v23 + 968);
              *(v24 + 1972) = *(v23 + 972);
              *(v24 + 1976) = *(v23 + 976);
              *(v24 + 1980) = *(v23 + 980);
              *(v24 + 1988) = *(v23 + 924);
              *(v24 + 1992) = *(v23 + 928);
              *(v24 + 2006) = *(v23 + 958);
              *(v24 + 2008) = *(v23 + 956);
              *(v24 + 1984) = *(v23 + 932);
              *(v24 + 2010) = *(v23 + 922);
              v26 = *(v18 + v21 + 2012) & 0xFE | *(v23 + 938) & 1;
              *(v24 + 2012) = v26;
              *(v24 + 2012) = (2 * (*(v23 + 966) & 1)) | v26 & 0xFD;
              *(v24 + 2013) = *(v23 + 597);
              v21 += 72;
            }

            while (v21);
            v27 = (a1 + 23808 + 16 * v16);
            *(v20 + 792) = *v27;
            *(v20 + 796) = v27[1];
            *(v20 + 800) = v27[2];
            *(v20 + 804) = v27[3];
            *(v20 + 808) = *(v19 + 36);
            *(v20 + 812) = *(v19 + 40);
            *(v20 + 814) = *(v19 + 42);
            *(v20 + 816) = *(v19 + 44);
            *(v20 + 818) = *(v19 + 46);
            *(v20 + 820) = *(v19 + 48);
            *(v20 + 822) = *(v19 + 50);
            *(v20 + 824) = *(v19 + 52);
            *(v20 + 826) = *(v19 + 54);
            *(v20 + 828) = *(v19 + 56);
            *(v20 + 830) = *(v19 + 58);
            *(v20 + 832) = *(v19 + 60);
            *(v20 + 834) = *(v19 + 62);
            *(v20 + 836) = *(v19 + 64);
            *(v20 + 838) = *(v19 + 66);
            *(v20 + 840) = *(v19 + 68);
            *(v20 + 844) = *(v19 + 72);
            ++v16;
            v18 += 856;
            v17 += 11;
          }

          while (v16 != 8);
          v28 = 0;
          *(a3 + 8130) = *(a1 + 23772);
          do
          {
            LODWORD(v12) = *(a1 + 16260 + v28);
            *(a3 + 8000 + v28) = v12;
            v28 += 4;
          }

          while (v28 != 128);
          *(a3 + 8128) = *(a1 + 23768) - 31552;
          break;
      }
    }
  }

  else if (a2 <= 2047)
  {
    if (a2 == 512)
    {
      *a3 = *(a1 + 15136);
      *(a3 + 4) = *(a1 + 15140);
      *(a3 + 8) = *(a1 + 15144);
      LODWORD(v12) = *(a1 + 15148);
      *(a3 + 12) = v12;
    }

    else if (a2 == 1024)
    {
      v29 = (a1 + 15324);
      v30 = (a1 + 15610);
      v31 = (a3 + 16);
      v32 = 3;
      do
      {
        *(v31 - 4) = *(v30 - 3);
        *(v31 - 4) = *(v30 - 5);
        *(v31 - 3) = *(v30 - 7);
        *(v31 - 3) = *(v30 - 2);
        *(v31 - 2) = *(v30 - 1);
        v33 = *v30;
        v30 += 8;
        *(v31 - 1) = v33;
        v34 = *v29++;
        *v31 = v34;
        v31 += 5;
        --v32;
      }

      while (v32);
      *(a3 + 64) = *(a1 + 15644);
      *(a3 + 60) = *(a1 + 15172);
      *(a3 + 68) = *(a1 + 29776);
    }
  }

  else
  {
    switch(a2)
    {
      case 0x800:
        *a3 = *(a1 + 9280);
        *(a3 + 8) = *(a1 + 9288);
        *(a3 + 16) = *(a1 + 9312);
        *(a3 + 20) = *(a1 + 9316);
        *(a3 + 24) = *(a1 + 9320);
        LODWORD(v12) = *(a1 + 9324);
        *(a3 + 28) = v12;
        break;
      case 0x1000:
        *a3 = *(a1 + 20484);
        *(a3 + 8) = *v4;
        *(a3 + 9) = *(a1 + 12517);
        *(a3 + 108) = *v3;
        v54 = (a1 + 17588);
        v55 = (a3 + 24);
        v56 = 6;
        do
        {
          *(v55 - 3) = *(v54 - 3);
          *(v55 - 2) = *(v54 - 2);
          *(v55 - 1) = *(v54 - 1);
          v57 = *v54;
          v54 += 4;
          LODWORD(v12) = v57;
          *v55 = v57;
          v55 += 4;
          --v56;
        }

        while (v56);
        *(a3 + 10) = *(a1 + 17697);
        *(a3 + 4) = *(a1 + 17696);
        *(a3 + 11) = *(a1 + 20494);
        *(a3 + 112) = *(a1 + 15205);
        break;
      case 0x2000:
        v5 = 0;
        *(a3 + 123) = *(a1 + 15282);
        *(a3 + 124) = *(a1 + 14890);
        *(a3 + 126) = *(a1 + 15314);
        *(a3 + 135) = *(a1 + 15532);
        *(a3 + 120) = *(a1 + 15534);
        *(a3 + 116) = *(a1 + 15006);
        *(a3 + 118) = *(a1 + 15120);
        *(a3 + 127) = *(a1 + 15319);
        *(a3 + 128) = *(a1 + 15318);
        *(a3 + 122) = *(a1 + 15224);
        *(a3 + 121) = *(a1 + 15204);
        *(a3 + 130) = *(a1 + 32507) & 0x7F;
        *(a3 + 148) = *(a1 + 15377);
        *(a3 + 125) = *(a1 + 15315);
        *(a3 + 134) = *(a1 + 15533);
        *(a3 + 76) = *(a1 + 15576);
        *(a3 + 119) = *(a1 + 14891);
        *(a3 + 129) = *v4;
        *(a3 + 140) = *(a1 + 12517);
        *(a3 + 131) = *(a1 + 15537);
        *(a3 + 132) = *(a1 + 15536);
        *(a3 + 133) = *(a1 + 15535);
        *(a3 + 141) = *(a1 + 20494);
        *(a3 + 142) = *(a1 + 17680);
        *(a3 + 136) = *(a1 + 17681);
        *(a3 + 137) = *(a1 + 17682);
        *(a3 + 138) = *(a1 + 17683);
        *(a3 + 139) = *(a1 + 17697);
        v6 = (a1 + 15684);
        do
        {
          v7 = *v6;
          v6 += 19;
          *(a3 + 32 + v5) = v7;
          v5 += 4;
        }

        while (v5 != 32);
        v8 = (a1 + 16535);
        v9 = (a3 + 83);
        v10 = 8;
        do
        {
          *(v9 - 3) = *(v8 - 3);
          *(v9 - 2) = *(v8 - 2);
          *(v9 - 1) = *(v8 - 1);
          v11 = *v8;
          v8 += 148;
          *v9 = v11;
          v9 += 4;
          --v10;
        }

        while (v10);
        *(a3 + 72) = *(a1 + 15644);
        *(a3 + 68) = *v3;
        *(a3 + 64) = *(a1 + 14880);
        *(a3 + 112) = *(a1 + 24756);
        *(a3 + 113) = *(a1 + 24760);
        *(a3 + 114) = *(a1 + 24750);
        *(a3 + 115) = *(a1 + 24751);
        *(a3 + 149) = *(a1 + 32506);
        *(a3 + 144) = *(a1 + 15206);
        *(a3 + 145) = *(a1 + 15205);
        *(a3 + 146) = *(a1 + 15196);
        *(a3 + 150) = *(a1 + 29708);
        *(a3 + 152) = *(a1 + 29710);
        *(a3 + 154) = *(a1 + 29712);
        *(a3 + 147) = *(a1 + 15379);
        break;
    }
  }

  return *&v12;
}