uint64_t RGB555_image(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  memset(v50, 0, 512);
  if (*(a2 + 12))
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a3 + 8) >= 1.0;
  }

  v8 = *(*(v6 + 56) + 16 * *a2 + 8 * v7 + 4 * (*(a2 + 6) == 0));
  if (v8 > 28)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 1) < 1 || *(a2 + 2) < 1)
  {
    return 0;
  }

  if (_blt_image_initialize(a2, a3, &v33, v50) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = *a3;
  *(&v33 + 1) = __PAIR64__(*v6, *a3);
  if (v18 == 67449668)
  {
    if (!v44 && (~DWORD1(v34) & 0xC3) == 0)
    {
      v17.n128_u32[0] = *(a3 + 8);
      if (v17.n128_f32[0] >= 1.0 && !*(a3 + 24))
      {
        if ((BYTE4(v34) & 4) != 0)
        {
          v17.n128_u64[0] = *(a3 + 32);
          *(a2 + 8) = v17.n128_u64[0];
        }

        RGB555_mark(a1, v17);
        return 1;
      }
    }

    *&v33 = rgb555_sample_RGB555;
    goto LABEL_46;
  }

  v19 = SAMPLEINDEX(v18, v10, v11, v12, v13, v14, v15, v16);
  if (!v19)
  {
    return 0xFFFFFFFFLL;
  }

  if (v19 > 0xB)
  {
    goto LABEL_28;
  }

  if (v19 > 6)
  {
    switch(v19)
    {
      case 7u:
        v20 = 0;
        v21 = 32;
        break;
      case 9u:
        v20 = 0;
        v21 = 40;
        break;
      case 8u:
        v20 = 0;
        v21 = 8;
        goto LABEL_29;
      default:
        goto LABEL_28;
    }

    goto LABEL_29;
  }

  if (v19 == 2)
  {
    if (!*(a2 + 12))
    {
      v20 = 0;
      v21 = 16;
      goto LABEL_29;
    }

LABEL_28:
    v21 = 255;
    v20 = 1;
    goto LABEL_29;
  }

  if (v19 != 5)
  {
    if (v19 == 6)
    {
      v20 = 0;
      v21 = 0;
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v20 = 0;
  v21 = 24;
LABEL_29:
  *&v33 = rgb555_image_sample[v19 + 1];
  if (v33)
  {
    if (!*(a3 + 5) || (v22 = *a3, (HIWORD(*a3) & 0x3Fu) <= (*(v6 + 2) & 0x3Fu)))
    {
      DWORD2(v33) = 67449684;
      goto LABEL_45;
    }
  }

  else
  {
    v22 = *a3;
  }

  if ((HIWORD(v22) & 0x3F) > 8u)
  {
    if ((v22 & 0x3F0000) >> 16 > 0x10)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v23 = RGB8_image_sample;
    *&v33 = *&RGB8_image_sample[2 * v19 + 2];
    if (v33)
    {
      goto LABEL_43;
    }
  }

  v23 = RGB16_image_sample;
  *&v33 = *&RGB16_image_sample[2 * v19 + 2];
  if (!v33)
  {
LABEL_40:
    v23 = RGBF_image_sample;
    *&v33 = *&RGBF_image_sample[2 * v19 + 2];
    if (v33)
    {
      v24 = 16;
      goto LABEL_42;
    }

    return 0xFFFFFFFFLL;
  }

  v24 = 8;
LABEL_42:
  LODWORD(v34) = v24;
LABEL_43:
  DWORD2(v33) = *v23;
  if (*(a3 + 5))
  {
    *(&v43 + 1) = pixel_dither_noise;
  }

LABEL_45:
  if ((v20 & 1) != 0 || (v8 - 1) > 1 || (BYTE4(v34) & 7) != 3 || a2[2] != 5 && a2[2] || v19 > 0xB)
  {
    goto LABEL_46;
  }

  HIDWORD(v26) = v21;
  LODWORD(v26) = v21;
  v25 = v26 >> 3;
  if (v25 > 2)
  {
    if (v25 == 3)
    {
      DWORD2(v33) = *a3;
      v27 = RGB555_image_mark_RGB24;
      goto LABEL_74;
    }

    if (v25 == 4)
    {
      DWORD2(v33) = *a3;
      v27 = RGB555_image_mark_rgb32;
      goto LABEL_74;
    }

    if (v25 != 5)
    {
      goto LABEL_46;
    }

    DWORD2(v33) = *a3;
    v28 = RGB555_image_mark_rgb32;
LABEL_72:
    v29 = v28;
    v30 = a2;
    v31 = v8;
    v32 = 8;
LABEL_75:
    rgb555_image_mark_image(v30, &v33, v31, v32, v29);
    return 1;
  }

  switch(v25)
  {
    case 0:
      DWORD2(v33) = *a3;
      v27 = RGB555_image_mark_RGB32;
      goto LABEL_74;
    case 1:
      DWORD2(v33) = *a3;
      v28 = RGB555_image_mark_RGB32;
      goto LABEL_72;
    case 2:
      DWORD2(v33) = *a3;
      v27 = RGB555_image_mark_W8;
LABEL_74:
      v29 = v27;
      v30 = a2;
      v31 = v8;
      v32 = 0;
      goto LABEL_75;
  }

LABEL_46:
  RGB555_image_mark(a2, &v33, v8, v17);
  return 1;
}

uint64_t RGB555_mark(uint64_t a1, __n128 a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v835 = *MEMORY[0x1E69E9840];
  v5 = *v3;
  v6 = *(v3 + 96);
  v7 = *(v3 + 48);
  v8 = *(*(*v2 + 56) + 16 * *v3 + 8 * (v6 == 0) + 4 * (v7 == 0));
  if (v8 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = *(v3 + 4);
  v11 = v10 - 1;
  if (v10 < 1)
  {
    return 0;
  }

  v12 = *(v3 + 8);
  v13 = (v12 - 1);
  if (v12 < 1)
  {
    return 0;
  }

  v14 = *(v3 + 136);
  v740 = *(*(*v2 + 56) + 16 * *v3 + 8 * (v6 == 0) + 4 * (v7 == 0));
  v737 = v3;
  if ((v5 & 0xFF0000) == 0x50000 || !v14)
  {
    if ((*v3 & 0xFF00) == 0x400)
    {
      v834[0] = *(v3 + 4);
      v824[0] = v12;
      if (v6)
      {
        v16 = *v6;
      }

      else
      {
        v16 = 255;
      }

      v29 = **(v3 + 88);
      v30 = __rev16(v29);
      v31 = *(v3 + 12);
      v32 = *(v3 + 16);
      v33 = *(v3 + 28) >> 1;
      if (v7)
      {
        v815 = *(v3 + 32);
        v813 = (v7 + v815 * v32 + v31);
        v784 = 1;
      }

      else
      {
        v813 = 0;
        v815 = 0;
        v784 = 0;
      }

      v41 = ~v16;
      v42 = *(v3 + 40) + 2 * v32 * v33 + 2 * v31;
      v776 = *(v3 + 28) >> 1;
      v786 = v42;
      if (v14)
      {
        shape_enum_clip_alloc(v2, v3, v14, 1, 1, 1, *(v3 + 104), *(v3 + 108), v10, v12);
        v44 = v43;
        v45 = v813;
        __b = v815;
        if (v43)
        {
          goto LABEL_1255;
        }

        return 1;
      }

      v817 = 0;
      if (v7)
      {
        v46 = v10;
      }

      else
      {
        v46 = 0;
      }

      v45 = v813;
      __b = v815 - v46;
      v47 = v42;
      v48 = v10;
LABEL_928:
      v820 = v33 - v48;
      v768 = v10;
      switch(v8)
      {
        case 0:
          v584 = v820 + v10;
          v585 = v824[0];
          v586 = v824[0] - 1;
          v587 = &v47[2 * ((v584 * v586) & (v584 >> 63))];
          if (v584 < 0)
          {
            v584 = -v584;
          }

          v588 = v10;
          CGBlt_fillBytes(2 * v10, v824[0], 0, v587, 2 * v584);
          if (!v7)
          {
            goto LABEL_1241;
          }

          v589 = __b + v588;
          v45 += (v589 * v586) & (v589 >> 63);
          if (v589 >= 0)
          {
            v590 = __b + v588;
          }

          else
          {
            v590 = -v589;
          }

          v591 = v588;
          v592 = v585;
          v593 = 0;
          goto LABEL_1076;
        case 1:
          v644 = v10;
          v645 = v820 + v10;
          if (v645 < 0)
          {
            v47 += 2 * v645 * (v824[0] - 1);
            v645 = -v645;
          }

          v646 = 0;
          v647 = *(v737 + 88);
          if (v647)
          {
            v646 = *v647;
          }

          v648 = v824[0];
          v649 = v47;
          v650 = v10;
          CGBlt_fillBytes(2 * v10, v824[0], v646, v649, 2 * v645);
          if (v7)
          {
            v592 = v648;
            v651 = *(v737 + 96);
            if (!v651)
            {
              v651 = &PIXELALPHAPLANARCONSTANT_18034;
            }

            v45 += ((__b + v644) * (v648 - 1)) & ((__b + v644) >> 63);
            if (__b + v644 >= 0)
            {
              v590 = __b + v644;
            }

            else
            {
              v590 = -(__b + v644);
            }

            v593 = *v651;
            v591 = v650;
LABEL_1076:
            __b = v590;
            CGBlt_fillBytes(v591, v592, v593, v45, v590);
          }

          goto LABEL_1241;
        case 2:
          v625 = 4 * v784;
          if (v7)
          {
            do
            {
              v626 = v834[0];
              if (v834[0] >= 4)
              {
                v627 = (v834[0] >> 2) + 1;
                do
                {
                  v628 = PDAplusDAM(v30, v16, bswap32(*v47) >> 16, *v45, ~v16);
                  *v47 = bswap32(v628) >> 16;
                  *v45 = HIBYTE(v628);
                  v629 = PDAplusDAM(v30, v16, bswap32(*(v47 + 1)) >> 16, v45[1], ~v16);
                  *(v47 + 1) = bswap32(v629) >> 16;
                  v45[1] = HIBYTE(v629);
                  v630 = PDAplusDAM(v30, v16, bswap32(*(v47 + 2)) >> 16, v45[2], ~v16);
                  *(v47 + 2) = bswap32(v630) >> 16;
                  v45[2] = HIBYTE(v630);
                  v631 = PDAplusDAM(v30, v16, bswap32(*(v47 + 3)) >> 16, v45[3], ~v16);
                  *(v47 + 3) = bswap32(v631) >> 16;
                  v45[3] = HIBYTE(v631);
                  v47 += 8;
                  v45 += v625;
                  --v627;
                }

                while (v627 > 1);
                v626 = v834[0] & 3;
              }

              if (v626 >= 1)
              {
                v632 = v626 + 1;
                do
                {
                  v633 = PDAplusDAM(v30, v16, bswap32(*v47) >> 16, *v45, ~v16);
                  *v47 = bswap32(v633) >> 16;
                  v47 += 2;
                  *v45 = HIBYTE(v633);
                  v45 += v784;
                  --v632;
                }

                while (v632 > 1);
              }

              v47 += 2 * v820;
              v45 += __b;
              --v824[0];
            }

            while (v824[0]);
            goto LABEL_1252;
          }

          v705 = v824[0];
          v775 = v10 & 3;
          v773 = (v10 >> 2) + 1;
          do
          {
            v783 = v705;
            if (v10 < 4)
            {
              v707 = v10;
            }

            else
            {
              v706 = v773;
              do
              {
                *v47 = __rev16(PDplusDM(v30, bswap32(*v47) >> 16, ~v16));
                *(v47 + 1) = __rev16(PDplusDM(v30, bswap32(*(v47 + 1)) >> 16, ~v16));
                *(v47 + 2) = __rev16(PDplusDM(v30, bswap32(*(v47 + 2)) >> 16, ~v16));
                *(v47 + 3) = __rev16(PDplusDM(v30, bswap32(*(v47 + 3)) >> 16, ~v16));
                v47 += 8;
                v45 += v625;
                --v706;
              }

              while (v706 > 1);
              v707 = v775;
              LODWORD(v10) = v768;
            }

            if (v707 >= 1)
            {
              v708 = v707 + 1;
              do
              {
                *v47 = __rev16(PDplusDM(v30, bswap32(*v47) >> 16, ~v16));
                v47 += 2;
                --v708;
              }

              while (v708 > 1);
              v45 += v707 * v784;
              v33 = v776;
              LODWORD(v10) = v768;
            }

            v47 += 2 * v820;
            v45 += __b;
            v705 = v783 - 1;
          }

          while (v783 != 1);
          v824[0] = 0;
LABEL_1241:
          v8 = v740;
          goto LABEL_1253;
        case 3:
          v594 = v33;
          do
          {
            v638 = v834[0];
            do
            {
              v639 = *v45;
              if (v639 > 7)
              {
                if (v639 < 0xF8)
                {
                  v641 = PDAM(v30, v16, v639);
                  *v47 = bswap32(v641) >> 16;
                  v640 = HIBYTE(v641);
                }

                else
                {
                  *v47 = v29;
                  LOBYTE(v640) = v16;
                }
              }

              else
              {
                LOBYTE(v640) = 0;
                *v47 = 0;
              }

              *v45 = v640;
              v47 += 2;
              v45 += v784;
              --v638;
            }

            while (v638);
            v47 += 2 * v820;
            v45 += __b;
            --v824[0];
          }

          while (v824[0]);
          goto LABEL_1218;
        case 4:
          v594 = v33;
          do
          {
            v609 = v834[0];
            do
            {
              v610 = *v45;
              if (v610 < 0xF8)
              {
                if (v610 > 7)
                {
                  v612 = PDAM(v30, v16, ~v610);
                  *v47 = bswap32(v612) >> 16;
                  v611 = HIBYTE(v612);
                }

                else
                {
                  *v47 = v29;
                  LOBYTE(v611) = v16;
                }
              }

              else
              {
                LOBYTE(v611) = 0;
                *v47 = 0;
              }

              *v45 = v611;
              v47 += 2;
              v45 += v784;
              --v609;
            }

            while (v609);
            v47 += 2 * v820;
            v45 += __b;
            --v824[0];
          }

          while (v824[0]);
          goto LABEL_1218;
        case 5:
          v594 = v33;
          do
          {
            v660 = v834[0];
            do
            {
              v661 = PDAMplusDAM(v30, v16, *v45, bswap32(*v47) >> 16, *v45, ~v16);
              *v47 = bswap32(v661) >> 16;
              v47 += 2;
              *v45 = HIBYTE(v661);
              v45 += v784;
              --v660;
            }

            while (v660);
            v47 += 2 * v820;
            v45 += __b;
            --v824[0];
          }

          while (v824[0]);
          goto LABEL_1218;
        case 6:
          v594 = v33;
          while (1)
          {
            v670 = v834[0];
            do
            {
              v671 = *v45;
              if (v671 > 7)
              {
                if (v671 > 0xF7)
                {
                  goto LABEL_1141;
                }

                v673 = PDAplusDAM(bswap32(*v47) >> 16, v671, v30, v16, ~v671);
                *v47 = bswap32(v673) >> 16;
                v672 = HIBYTE(v673);
              }

              else
              {
                *v47 = v29;
                LOBYTE(v672) = v16;
              }

              *v45 = v672;
LABEL_1141:
              v47 += 2;
              v45 += v784;
              --v670;
            }

            while (v670);
            v47 += 2 * v820;
            v45 += __b;
            if (!--v824[0])
            {
              goto LABEL_1218;
            }
          }

        case 7:
          if (v7)
          {
            do
            {
              v642 = v834[0];
              do
              {
                v643 = PDAM(bswap32(*v47) >> 16, *v45, v16);
                *v47 = bswap32(v643) >> 16;
                v47 += 2;
                *v45 = HIBYTE(v643);
                v45 += v784;
                --v642;
              }

              while (v642);
              v47 += 2 * v820;
              v45 += __b;
              --v824[0];
            }

            while (v824[0]);
            goto LABEL_1252;
          }

          v709 = v824[0];
          v710 = v784 + v784 * (v10 - 1);
          do
          {
            v711 = v10;
            do
            {
              *v47 = __rev16(PDM(bswap32(*v47) >> 16, v16));
              v47 += 2;
              --v711;
            }

            while (v711);
            v47 += 2 * v820;
            v45 += v710 + __b;
            --v709;
            LODWORD(v10) = v768;
          }

          while (v709);
          goto LABEL_1251;
        case 8:
          if (v7)
          {
            do
            {
              v680 = v834[0];
              do
              {
                v681 = PDAM(bswap32(*v47) >> 16, *v45, v41);
                *v47 = bswap32(v681) >> 16;
                v47 += 2;
                *v45 = HIBYTE(v681);
                v45 += v784;
                --v680;
              }

              while (v680);
              v47 += 2 * v820;
              v45 += __b;
              --v824[0];
            }

            while (v824[0]);
            goto LABEL_1252;
          }

          v712 = v824[0];
          v713 = v784 + v784 * (v10 - 1);
          do
          {
            v714 = v10;
            do
            {
              *v47 = __rev16(PDM(bswap32(*v47) >> 16, v41));
              v47 += 2;
              --v714;
            }

            while (v714);
            v47 += 2 * v820;
            v45 += v713 + __b;
            --v712;
            LODWORD(v10) = v768;
          }

          while (v712);
          goto LABEL_1251;
        case 9:
          v594 = v33;
          do
          {
            v615 = v834[0];
            do
            {
              v616 = PDAMplusDAM(v30, v16, *v45 ^ 0xFFu, bswap32(*v47) >> 16, *v45, v16);
              *v47 = bswap32(v616) >> 16;
              v47 += 2;
              *v45 = HIBYTE(v616);
              v45 += v784;
              --v615;
            }

            while (v615);
            v47 += 2 * v820;
            v45 += __b;
            --v824[0];
          }

          while (v824[0]);
          goto LABEL_1218;
        case 10:
          v594 = v33;
          do
          {
            v678 = v834[0];
            do
            {
              v679 = PDAMplusDAM(v30, v16, *v45 ^ 0xFFu, bswap32(*v47) >> 16, *v45, ~v16);
              *v47 = bswap32(v679) >> 16;
              v47 += 2;
              *v45 = HIBYTE(v679);
              v45 += v784;
              --v678;
            }

            while (v678);
            v47 += 2 * v820;
            v45 += __b;
            --v824[0];
          }

          while (v824[0]);
          goto LABEL_1218;
        case 11:
          if (v7)
          {
            do
            {
              v607 = v834[0];
              do
              {
                v608 = PDAplusdDA(bswap32(*v47) >> 16, *v45, v30, v16);
                *v47 = bswap32(v608) >> 16;
                v47 += 2;
                *v45 = HIBYTE(v608);
                v45 += v784;
                --v607;
              }

              while (v607);
              v47 += 2 * v820;
              v45 += __b;
              --v824[0];
            }

            while (v824[0]);
          }

          else
          {
            v698 = v824[0];
            v699 = v784 + v784 * (v10 - 1);
            do
            {
              v700 = v10;
              do
              {
                *v47 = __rev16(PDplusdDA(bswap32(*v47) >> 16, v30, v16));
                v47 += 2;
                --v700;
              }

              while (v700);
              v47 += 2 * v820;
              v45 += v699 + __b;
              --v698;
              LODWORD(v10) = v768;
            }

            while (v698);
LABEL_1251:
            v824[0] = 0;
          }

LABEL_1252:
          v8 = v740;
          v33 = v776;
          goto LABEL_1253;
        case 12:
          if (v7)
          {
            v594 = v33;
            do
            {
              v613 = v834[0];
              do
              {
                v614 = PDApluslDA(bswap32(*v47) >> 16, *v45, v30, v16);
                *v47 = bswap32(v614) >> 16;
                v47 += 2;
                *v45 = HIBYTE(v614);
                v45 += v784;
                --v613;
              }

              while (v613);
              v47 += 2 * v820;
              v45 += __b;
              --v824[0];
            }

            while (v824[0]);
            goto LABEL_1218;
          }

          v701 = v824[0];
          do
          {
            v702 = v10;
            do
            {
              v703 = bswap32(*v47);
              v704 = (((HIWORD(v703) << 15) | HIWORD(v703)) & 0x1F07C1F) + ((v30 | (v30 << 15)) & 0x1F07C1F);
              *v47 = __rev16((((15 * ((v704 >> 5) & 0x100401)) | v704 | (30 * ((v704 >> 5) & 0x100401))) >> 15) & 0x3E0 | ((15 * ((v704 >> 5) & 0x100401)) | v704 | (30 * ((v704 >> 5) & 0x100401))) & 0x7C1F);
              v47 += 2;
              --v702;
            }

            while (v702);
            v47 += 2 * v820;
            v45 += v784 + v784 * (v10 - 1) + __b;
            --v701;
          }

          while (v701);
          v824[0] = 0;
          goto LABEL_1253;
        case 13:
          if (v16 < 8)
          {
            goto LABEL_1253;
          }

          v594 = v33;
          while (1)
          {
            v666 = v834[0];
            do
            {
              if (v7)
              {
                v667 = *v45;
                if (v667 <= 7)
                {
                  *v47 = v29;
                  LOBYTE(v668) = v16;
                  goto LABEL_1130;
                }
              }

              else
              {
                v667 = 255;
              }

              v669 = PDAmultiplyPDA(bswap32(*v47) >> 16, v667, v30, v16);
              *v47 = bswap32(v669) >> 16;
              if (!v7)
              {
                goto LABEL_1131;
              }

              v668 = HIBYTE(v669);
LABEL_1130:
              *v45 = v668;
LABEL_1131:
              v47 += 2;
              v45 += v784;
              --v666;
            }

            while (v666);
            v47 += 2 * v820;
            v45 += __b;
            if (!--v824[0])
            {
              goto LABEL_1218;
            }
          }

        case 14:
          if (v16 < 8)
          {
            goto LABEL_1253;
          }

          v594 = v33;
          while (1)
          {
            v603 = v834[0];
            do
            {
              if (v7)
              {
                v604 = *v45;
                if (v604 <= 7)
                {
                  *v47 = v29;
                  LOBYTE(v605) = v16;
                  goto LABEL_971;
                }
              }

              else
              {
                v604 = 255;
              }

              v606 = PDAscreenPDA(bswap32(*v47) >> 16, v604, v30, v16);
              *v47 = bswap32(v606) >> 16;
              if (!v7)
              {
                goto LABEL_972;
              }

              v605 = HIBYTE(v606);
LABEL_971:
              *v45 = v605;
LABEL_972:
              v47 += 2;
              v45 += v784;
              --v603;
            }

            while (v603);
            v47 += 2 * v820;
            v45 += __b;
            if (!--v824[0])
            {
              goto LABEL_1218;
            }
          }

        case 15:
          if (v16 < 8)
          {
            goto LABEL_1253;
          }

          v594 = v33;
          while (1)
          {
            v634 = v834[0];
            do
            {
              if (v7)
              {
                v635 = *v45;
                if (v635 <= 7)
                {
                  *v47 = v29;
                  LOBYTE(v636) = v16;
                  goto LABEL_1046;
                }
              }

              else
              {
                v635 = 255;
              }

              v637 = PDAoverlayPDA(bswap32(*v47) >> 16, v635, v30, v16);
              *v47 = bswap32(v637) >> 16;
              if (!v7)
              {
                goto LABEL_1047;
              }

              v636 = HIBYTE(v637);
LABEL_1046:
              *v45 = v636;
LABEL_1047:
              v47 += 2;
              v45 += v784;
              --v634;
            }

            while (v634);
            v47 += 2 * v820;
            v45 += __b;
            if (!--v824[0])
            {
              goto LABEL_1218;
            }
          }

        case 16:
          if (v16 < 8)
          {
            goto LABEL_1253;
          }

          v594 = v33;
          while (1)
          {
            v599 = v834[0];
            do
            {
              if (v7)
              {
                v600 = *v45;
                if (v600 <= 7)
                {
                  *v47 = v29;
                  LOBYTE(v601) = v16;
                  goto LABEL_958;
                }
              }

              else
              {
                v600 = 255;
              }

              v602 = PDAdarkenPDA(bswap32(*v47) >> 16, v600, v30, v16);
              *v47 = bswap32(v602) >> 16;
              if (!v7)
              {
                goto LABEL_959;
              }

              v601 = HIBYTE(v602);
LABEL_958:
              *v45 = v601;
LABEL_959:
              v47 += 2;
              v45 += v784;
              --v599;
            }

            while (v599);
            v47 += 2 * v820;
            v45 += __b;
            if (!--v824[0])
            {
              goto LABEL_1218;
            }
          }

        case 17:
          if (v16 < 8)
          {
            goto LABEL_1253;
          }

          v594 = v33;
          while (1)
          {
            v652 = v834[0];
            do
            {
              if (v7)
              {
                v653 = *v45;
                if (v653 <= 7)
                {
                  *v47 = v29;
                  LOBYTE(v654) = v16;
                  goto LABEL_1086;
                }
              }

              else
              {
                v653 = 255;
              }

              v655 = PDAlightenPDA(bswap32(*v47) >> 16, v653, v30, v16);
              *v47 = bswap32(v655) >> 16;
              if (!v7)
              {
                goto LABEL_1087;
              }

              v654 = HIBYTE(v655);
LABEL_1086:
              *v45 = v654;
LABEL_1087:
              v47 += 2;
              v45 += v784;
              --v652;
            }

            while (v652);
            v47 += 2 * v820;
            v45 += __b;
            if (!--v824[0])
            {
              goto LABEL_1218;
            }
          }

        case 18:
          if (v16 < 8)
          {
            goto LABEL_1253;
          }

          v594 = v33;
          while (1)
          {
            v674 = v834[0];
            do
            {
              if (v7)
              {
                v675 = *v45;
                if (v675 <= 7)
                {
                  *v47 = v29;
                  LOBYTE(v676) = v16;
                  goto LABEL_1153;
                }
              }

              else
              {
                v675 = 255;
              }

              v677 = PDAcolordodgePDA(bswap32(*v47) >> 16, v675, v30, v16);
              *v47 = bswap32(v677) >> 16;
              if (!v7)
              {
                goto LABEL_1154;
              }

              v676 = HIBYTE(v677);
LABEL_1153:
              *v45 = v676;
LABEL_1154:
              v47 += 2;
              v45 += v784;
              --v674;
            }

            while (v674);
            v47 += 2 * v820;
            v45 += __b;
            if (!--v824[0])
            {
              goto LABEL_1218;
            }
          }

        case 19:
          if (v16 < 8)
          {
            goto LABEL_1253;
          }

          v594 = v33;
          while (1)
          {
            v686 = v834[0];
            do
            {
              if (v7)
              {
                v687 = *v45;
                if (v687 <= 7)
                {
                  *v47 = v29;
                  LOBYTE(v688) = v16;
                  goto LABEL_1189;
                }
              }

              else
              {
                v687 = 255;
              }

              v689 = PDAcolorburnPDA(bswap32(*v47) >> 16, v687, v30, v16);
              *v47 = bswap32(v689) >> 16;
              if (!v7)
              {
                goto LABEL_1190;
              }

              v688 = HIBYTE(v689);
LABEL_1189:
              *v45 = v688;
LABEL_1190:
              v47 += 2;
              v45 += v784;
              --v686;
            }

            while (v686);
            v47 += 2 * v820;
            v45 += __b;
            if (!--v824[0])
            {
              goto LABEL_1218;
            }
          }

        case 20:
          if (v16 < 8)
          {
            goto LABEL_1253;
          }

          v594 = v33;
          while (1)
          {
            v656 = v834[0];
            do
            {
              if (v7)
              {
                v657 = *v45;
                if (v657 <= 7)
                {
                  *v47 = v29;
                  LOBYTE(v658) = v16;
                  goto LABEL_1099;
                }
              }

              else
              {
                v657 = 255;
              }

              v659 = PDAsoftlightPDA(bswap32(*v47) >> 16, v657, v30, v16);
              *v47 = bswap32(v659) >> 16;
              if (!v7)
              {
                goto LABEL_1100;
              }

              v658 = HIBYTE(v659);
LABEL_1099:
              *v45 = v658;
LABEL_1100:
              v47 += 2;
              v45 += v784;
              --v656;
            }

            while (v656);
            v47 += 2 * v820;
            v45 += __b;
            if (!--v824[0])
            {
              goto LABEL_1218;
            }
          }

        case 21:
          if (v16 < 8)
          {
            goto LABEL_1253;
          }

          v594 = v33;
          while (1)
          {
            v662 = v834[0];
            do
            {
              if (v7)
              {
                v663 = *v45;
                if (v663 <= 7)
                {
                  *v47 = v29;
                  LOBYTE(v664) = v16;
                  goto LABEL_1117;
                }
              }

              else
              {
                v663 = 255;
              }

              v665 = PDAhardlightPDA(bswap32(*v47) >> 16, v663, v30, v16);
              *v47 = bswap32(v665) >> 16;
              if (!v7)
              {
                goto LABEL_1118;
              }

              v664 = HIBYTE(v665);
LABEL_1117:
              *v45 = v664;
LABEL_1118:
              v47 += 2;
              v45 += v784;
              --v662;
            }

            while (v662);
            v47 += 2 * v820;
            v45 += __b;
            if (!--v824[0])
            {
              goto LABEL_1218;
            }
          }

        case 22:
          if (v16 < 8)
          {
            goto LABEL_1253;
          }

          v594 = v33;
          while (1)
          {
            v682 = v834[0];
            do
            {
              if (v7)
              {
                v683 = *v45;
                if (v683 <= 7)
                {
                  *v47 = v29;
                  LOBYTE(v684) = v16;
                  goto LABEL_1176;
                }
              }

              else
              {
                v683 = 255;
              }

              v685 = PDAdifferencePDA(bswap32(*v47) >> 16, v683, v30, v16);
              *v47 = bswap32(v685) >> 16;
              if (!v7)
              {
                goto LABEL_1177;
              }

              v684 = HIBYTE(v685);
LABEL_1176:
              *v45 = v684;
LABEL_1177:
              v47 += 2;
              v45 += v784;
              --v682;
            }

            while (v682);
            v47 += 2 * v820;
            v45 += __b;
            if (!--v824[0])
            {
              goto LABEL_1218;
            }
          }

        case 23:
          if (v16 < 8)
          {
            goto LABEL_1253;
          }

          v594 = v33;
          while (1)
          {
            v690 = v834[0];
            do
            {
              if (v7)
              {
                v691 = *v45;
                if (v691 <= 7)
                {
                  *v47 = v29;
                  LOBYTE(v692) = v16;
                  goto LABEL_1202;
                }
              }

              else
              {
                v691 = 255;
              }

              v693 = PDAexclusionPDA(bswap32(*v47) >> 16, v691, v30, v16);
              *v47 = bswap32(v693) >> 16;
              if (!v7)
              {
                goto LABEL_1203;
              }

              v692 = HIBYTE(v693);
LABEL_1202:
              *v45 = v692;
LABEL_1203:
              v47 += 2;
              v45 += v784;
              --v690;
            }

            while (v690);
            v47 += 2 * v820;
            v45 += __b;
            if (!--v824[0])
            {
              goto LABEL_1218;
            }
          }

        case 24:
          if (v16 < 8)
          {
            goto LABEL_1253;
          }

          v594 = v33;
          while (1)
          {
            v621 = v834[0];
            do
            {
              if (v7)
              {
                v622 = *v45;
                if (v622 <= 7)
                {
                  *v47 = v29;
                  LOBYTE(v623) = v16;
                  goto LABEL_1023;
                }
              }

              else
              {
                v622 = 255;
              }

              v624 = PDAhuePDA(bswap32(*v47) >> 16, v622, v30, v16);
              *v47 = bswap32(v624) >> 16;
              if (!v7)
              {
                goto LABEL_1024;
              }

              v623 = HIBYTE(v624);
LABEL_1023:
              *v45 = v623;
LABEL_1024:
              v47 += 2;
              v45 += v784;
              --v621;
            }

            while (v621);
            v47 += 2 * v820;
            v45 += __b;
            if (!--v824[0])
            {
              goto LABEL_1218;
            }
          }

        case 25:
          if (v16 < 8)
          {
            goto LABEL_1253;
          }

          v594 = v33;
          while (1)
          {
            v617 = v834[0];
            do
            {
              if (v7)
              {
                v618 = *v45;
                if (v618 <= 7)
                {
                  *v47 = v29;
                  LOBYTE(v619) = v16;
                  goto LABEL_1010;
                }
              }

              else
              {
                v618 = 255;
              }

              v620 = PDAsaturationPDA(bswap32(*v47) >> 16, v618, v30, v16);
              *v47 = bswap32(v620) >> 16;
              if (!v7)
              {
                goto LABEL_1011;
              }

              v619 = HIBYTE(v620);
LABEL_1010:
              *v45 = v619;
LABEL_1011:
              v47 += 2;
              v45 += v784;
              --v617;
            }

            while (v617);
            v47 += 2 * v820;
            v45 += __b;
            if (!--v824[0])
            {
              goto LABEL_1218;
            }
          }

        case 26:
          if (v16 < 8)
          {
            goto LABEL_1253;
          }

          v594 = v33;
          while (1)
          {
            v694 = v834[0];
            do
            {
              if (v7)
              {
                v695 = *v45;
                if (v695 <= 7)
                {
                  *v47 = v29;
                  LOBYTE(v696) = v16;
                  goto LABEL_1215;
                }
              }

              else
              {
                v695 = 255;
              }

              v697 = PDAluminosityPDA(v30, v16, bswap32(*v47) >> 16, v695);
              *v47 = bswap32(v697) >> 16;
              if (!v7)
              {
                goto LABEL_1216;
              }

              v696 = HIBYTE(v697);
LABEL_1215:
              *v45 = v696;
LABEL_1216:
              v47 += 2;
              v45 += v784;
              --v694;
            }

            while (v694);
            v47 += 2 * v820;
            v45 += __b;
            if (!--v824[0])
            {
LABEL_1218:
              v8 = v740;
              v33 = v594;
LABEL_1253:
              v44 = v817;
              if (!v817)
              {
                return 1;
              }

              v823 = 0;
LABEL_1255:
              if (!shape_enum_clip_next(v44, &v823 + 1, &v823, v834, v824))
              {
                goto LABEL_1261;
              }

              v817 = v44;
              v47 = (v786 + 2 * v33 * v823 + 2 * SHIDWORD(v823));
              v48 = v834[0];
              if (v7)
              {
                v45 = &v813[v815 * v823 + SHIDWORD(v823)];
              }

              v715 = __b;
              if (v7)
              {
                v715 = (v815 - v834[0]);
              }

              __b = v715;
              LODWORD(v10) = v834[0];
              goto LABEL_928;
            }
          }

        case 27:
          if (v16 < 8)
          {
            goto LABEL_1253;
          }

          v594 = v33;
          break;
        default:
          goto LABEL_1253;
      }

LABEL_938:
      v595 = v834[0];
      while (1)
      {
        if (v7)
        {
          v596 = *v45;
          if (v596 <= 7)
          {
            *v47 = v29;
            LOBYTE(v597) = v16;
LABEL_945:
            *v45 = v597;
            goto LABEL_946;
          }
        }

        else
        {
          v596 = 255;
        }

        v598 = PDAluminosityPDA(bswap32(*v47) >> 16, v596, v30, v16);
        *v47 = bswap32(v598) >> 16;
        if (v7)
        {
          v597 = HIBYTE(v598);
          goto LABEL_945;
        }

LABEL_946:
        v47 += 2;
        v45 += v784;
        if (!--v595)
        {
          v47 += 2 * v820;
          v45 += __b;
          if (!--v824[0])
          {
            goto LABEL_1218;
          }

          goto LABEL_938;
        }
      }
    }

    v834[0] = *(v3 + 4);
    v824[0] = v12;
    v17 = *(v3 + 88);
    v18 = *(v3 + 12);
    v19 = *(v3 + 16);
    v20 = *(v3 + 28) >> 1;
    if (v7)
    {
      v735 = *(v3 + 32);
      v736 = (v7 + v735 * v19 + v18);
      v21 = 0xFFFFFFFFLL;
    }

    else
    {
      v735 = 0;
      v736 = 0;
      v21 = 0;
    }

    v734 = *(v3 + 40) + 2 * v19 * v20 + 2 * v18;
    v35 = *(v3 + 104);
    v34 = *(v3 + 108);
    v36 = *(v3 + 56);
    v37 = BYTE1(v5);
    v716 = v36;
    v717 = *(v3 + 60);
    if (v37 == 3)
    {
      v49 = v10;
      v50 = v21;
      v2 = RGB555_colorlookup(3, v17, v6);
      v17 = v2;
      if (v6)
      {
        v51 = 0;
        v6 = (v2 + 512);
        LODWORD(v40) = 1;
        v52 = 16;
        v39 = 16;
        LODWORD(v743) = 16;
        LOBYTE(v21) = v50;
        v53 = 16;
      }

      else
      {
        LODWORD(v40) = 0;
        v52 = 16;
        v51 = 1;
        v39 = 16;
        LODWORD(v743) = 16;
        LOBYTE(v21) = v50;
        v53 = 0;
      }

      v10 = v49;
    }

    else
    {
      if (v37 == 1)
      {
        v38 = *(v3 + 60);
        v743 = *(v3 + 76) >> 1;
        if (v6)
        {
          v39 = *(v3 + 80);
          v6 += v39 * v38 + v36;
          LODWORD(v40) = -1;
        }

        else
        {
          v39 = 0;
          LODWORD(v40) = 0;
        }

        v17 += v38 * v743 + v36;
        if (v743 == v20)
        {
          v60 = (v734 - v17) >> 1;
          if (v60 >= 1)
          {
            if (v60 <= v10)
            {
              v734 += 2 * v11;
              v736 += v21 & v11;
              v6 += v40 & v11;
              v63 = 0xFFFFFFFFLL;
              v743 = *(v3 + 28) >> 1;
              v17 += v11;
              goto LABEL_52;
            }

            v61 = v20 * v13;
            v62 = &v17[v20 * v13];
            if (v734 <= &v62[v10 - 1])
            {
              v20 = -v20;
              v73 = &v736[v735 * v13];
              v735 = -v735;
              v736 = v73;
              v21 &= 1u;
              v6 += v39 * v13;
              v39 = -v39;
              LODWORD(v40) = v40 & 1;
              v63 = 1;
              v17 = v62;
              v743 = v20;
              v734 += 2 * v61;
              goto LABEL_52;
            }
          }
        }

        v21 &= 1u;
        LODWORD(v40) = v40 & 1;
        v63 = 1;
LABEL_52:
        if (v14)
        {
          v814 = v21;
          v816 = v40;
          v742 = v17;
          v782 = 0;
          v787 = -1;
          v772 = 0;
          v774 = v743;
          v53 = v39;
LABEL_60:
          shape_enum_clip_alloc(v2, v3, v14, v63, v20, 1, v35, v34, v10, v12);
          v44 = v66;
          v785 = v6;
          v67 = v6;
          __ba = v736;
          v769 = v735;
          if (!v66)
          {
            return 1;
          }

          while (2)
          {
            if (!shape_enum_clip_next(v44, &v823 + 1, &v823, v834, v824))
            {
LABEL_1261:
              v59 = v44;
LABEL_1262:
              free(v59);
              return 1;
            }

            v741 = v44;
            if (v772)
            {
              v819 = (v734 + 2 * v20 * v823 + 2 * SHIDWORD(v823));
              v68 = (v823 + *(v737 + 60)) % v39;
              v64 = v834[0];
              v17 = v742;
              v69 = (HIDWORD(v823) + *(v737 + 56)) % v743;
              v74 = &v742[v774 * v68];
              v75 = &v74[v69];
              v65 = &v74[v743];
              v21 = v814;
              v76 = __ba;
              if (v814)
              {
                v76 = &v736[v735 * v823 + SHIDWORD(v823)];
              }

              __ba = v76;
              v77 = v769;
              if (v814)
              {
                v77 = v735 - v834[0];
              }

              v769 = v77;
              if (v816)
              {
                LODWORD(v40) = v816;
              }

              else
              {
                LODWORD(v40) = 0;
              }

              v78 = v785;
              if (v816)
              {
                v78 = &v6[v53 * v68 + v69];
              }

              v782 = v75;
              v785 = v78;
              if (v816)
              {
                v67 = &v6[v53 * v68 + v69];
              }

              v746 = v834[0];
              v818 = v75;
LABEL_88:
              v716 = v69;
              v717 = v68;
            }

            else
            {
              v79 = SHIDWORD(v823) * v63;
              v746 = v834[0];
              v819 = (v734 + 2 * v20 * v823 + 2 * v79);
              v64 = v834[0] * v63;
              v17 = v742;
              v818 = &v742[v823 * v743 + v79];
              v774 = v743 - v834[0] * v63;
              v21 = v814;
              v80 = __ba;
              if (v814)
              {
                v80 = &v736[v735 * v823 + v79];
              }

              __ba = v80;
              v81 = v769;
              if (v814)
              {
                v81 = v735 - v834[0] * v63;
              }

              v769 = v81;
              if (v816)
              {
                LODWORD(v40) = v816;
              }

              else
              {
                LODWORD(v40) = 0;
              }

              v772 = 0;
              if (v816)
              {
                v67 = &v6[v823 * v39 + v79];
                v53 = v39 - v64;
              }

              v65 = v787;
            }

LABEL_99:
            v814 = v21;
            v816 = v40;
            v742 = v17;
            v770 = v53;
            v771 = v20 - v64;
            v744 = v63;
            v745 = v39;
            v738 = v6;
            v739 = v20;
            switch(v8)
            {
              case 0:
                v787 = v65;
                v82 = v771 - v746;
                v83 = &v819[-2 * v746 + 2];
                if (v63 >= 0)
                {
                  v83 = v819;
                  v82 = v771 + v746;
                }

                v84 = v824[0];
                v85 = v824[0] - 1;
                v86 = (v83 + 2 * ((v82 * v85) & (v82 >> 63)));
                if (v82 < 0)
                {
                  v82 = -v82;
                }

                v87 = v21;
                CGBlt_fillBytes(2 * v746, v824[0], 0, v86, 2 * v82);
                if (v87)
                {
                  v88 = v769 - v746;
                  v89 = &__ba[-v746 + 1];
                  if (v63 >= 0)
                  {
                    v89 = __ba;
                    v88 = v769 + v746;
                  }

                  v90 = (v88 * v85) & (v88 >> 63);
                  if (v88 >= 0)
                  {
                    v91 = v88;
                  }

                  else
                  {
                    v91 = -v88;
                  }

                  __ba = &v89[v90];
                  v769 = v91;
                  CGBlt_fillBytes(v746, v84, 0, &v89[v90], v91);
                }

                goto LABEL_783;
              case 1:
                v275 = *(v737 + 1);
                if ((v275 - 2) >= 2)
                {
                  if (v275 != 1)
                  {
                    goto LABEL_747;
                  }

                  v787 = v65;
                  v467 = v20;
                  v468 = v774 - v746;
                  v469 = 2 * v746 - 2;
                  v470 = (v818 - v469);
                  v471 = v771 - v746;
                  v472 = &v819[-v469];
                  if (v63 >= 0)
                  {
                    v470 = v818;
                    v472 = v819;
                    v468 = v774 + v746;
                    v471 = v771 + v746;
                  }

                  v473 = v824[0];
                  v474 = v824[0] - 1;
                  v475 = &v470[(v468 * v474) & (v468 >> 63)];
                  if (v468 >= 0)
                  {
                    v476 = v468;
                  }

                  else
                  {
                    v476 = -v468;
                  }

                  if (v471 >= 0)
                  {
                    LODWORD(v477) = v471;
                  }

                  else
                  {
                    v477 = -v471;
                  }

                  v774 = v476;
                  CGBlt_copyBytes(2 * v746, v824[0], v475, &v472[2 * ((v471 * v474) & (v471 >> 63))], 2 * v476, 2 * v477);
                  if (v814)
                  {
                    if (v816)
                    {
                      v478 = v53 - v746;
                      v479 = &v67[-v746 + 1];
                      v480 = v769 - v746;
                      v481 = &__ba[-v746 + 1];
                      if (v63 >= 0)
                      {
                        v479 = v67;
                        v481 = __ba;
                        v478 = v53 + v746;
                        v480 = v769 + v746;
                      }

                      v482 = (v478 * v474) & (v478 >> 63);
                      if (v478 >= 0)
                      {
                        v53 = v478;
                      }

                      else
                      {
                        v53 = -v478;
                      }

                      v483 = (v480 * v474) & (v480 >> 63);
                      if (v480 >= 0)
                      {
                        v484 = v480;
                      }

                      else
                      {
                        v484 = -v480;
                      }

                      v67 = &v479[v482];
                      __ba = &v481[v483];
                      v769 = v484;
                      CGBlt_copyBytes(v746, v473, &v479[v482], &v481[v483], v53, v484);
                      v20 = v467;
                      v39 = v745;
                      goto LABEL_843;
                    }

                    v580 = v769 - v746;
                    v581 = &__ba[-v746 + 1];
                    if (v63 >= 0)
                    {
                      v581 = __ba;
                      v580 = v769 + v746;
                    }

                    v582 = (v580 * v474) & (v580 >> 63);
                    if (v580 >= 0)
                    {
                      v583 = v580;
                    }

                    else
                    {
                      v583 = -v580;
                    }

                    __ba = &v581[v582];
                    v769 = v583;
                    CGBlt_fillBytes(v746, v473, -1, &v581[v582], v583);
                  }

                  v20 = v467;
LABEL_784:
                  v39 = v745;
LABEL_843:
                  v44 = v741;
                  if (!v741)
                  {
                    return 1;
                  }
                }

                else
                {
                  if (v746 < 16 || (2 * v743) > 0x40 || (v4.i32[0] = 2 * v743, v276 = vcnt_s8(v4), v276.i16[0] = vaddlv_u8(v276), v276.i32[0] > 1u))
                  {
LABEL_747:
                    if (v21)
                    {
                      v485 = 2 * v63;
                      if (v40)
                      {
                        do
                        {
                          v486 = v834[0];
                          do
                          {
                            *v819 = *v818;
                            *__ba = *v67;
                            __ba += v21;
                            v487 = &v818[v63];
                            if (v487 >= v65)
                            {
                              v488 = -v743;
                            }

                            else
                            {
                              v488 = 0;
                            }

                            v67 += v40 + v488;
                            v818 = &v487[v488];
                            v819 += v485;
                            --v486;
                          }

                          while (v486);
                          if (v772)
                          {
                            v489 = &v782[v774];
                            if (v489 >= v772)
                            {
                              v490 = -(v53 * v39);
                            }

                            else
                            {
                              v490 = 0;
                            }

                            v67 = &v785[v53 + v490];
                            if (v489 >= v772)
                            {
                              v491 = -(v774 * v39);
                            }

                            else
                            {
                              v491 = 0;
                            }

                            v65 += 2 * v491 + 2 * v774;
                            v782 = &v489[v491];
                            v785 += v53 + v490;
                            v818 = v782;
                          }

                          else
                          {
                            v818 += v774;
                            v67 += v53;
                          }

                          v819 += 2 * v771;
                          __ba += v769;
                          --v824[0];
                        }

                        while (v824[0]);
                      }

                      else
                      {
                        do
                        {
                          v574 = v834[0];
                          do
                          {
                            *v819 = *v818;
                            *__ba = -1;
                            __ba += v21;
                            v575 = &v818[v63];
                            if (v575 >= v65)
                            {
                              v576 = -v743;
                            }

                            else
                            {
                              v576 = 0;
                            }

                            v67 += v576;
                            v818 = &v575[v576];
                            v819 += v485;
                            --v574;
                          }

                          while (v574);
                          if (v772)
                          {
                            v577 = &v782[v774];
                            if (v577 >= v772)
                            {
                              v578 = -(v53 * v39);
                            }

                            else
                            {
                              v578 = 0;
                            }

                            v67 = &v785[v53 + v578];
                            if (v577 >= v772)
                            {
                              v579 = -(v774 * v39);
                            }

                            else
                            {
                              v579 = 0;
                            }

                            v65 += 2 * v579 + 2 * v774;
                            v782 = &v577[v579];
                            v785 += v53 + v578;
                            v818 = v782;
                          }

                          else
                          {
                            v818 += v774;
                            v67 += v53;
                          }

                          v819 += 2 * v771;
                          __ba += v769;
                          --v824[0];
                        }

                        while (v824[0]);
                      }

LABEL_918:
                      v787 = v65;
                    }

                    else
                    {
                      v566 = v824[0];
                      v567 = (v824[0] - 1) + 1;
                      do
                      {
                        v568 = v746;
                        do
                        {
                          *v819 = *v818;
                          v569 = &v818[v63];
                          if (v569 >= v65)
                          {
                            v570 = -v743;
                          }

                          else
                          {
                            v570 = 0;
                          }

                          v67 += v40 + v570;
                          v818 = &v569[v570];
                          v819 += 2 * v63;
                          --v568;
                        }

                        while (v568);
                        if (v772)
                        {
                          v571 = &v782[v774];
                          if (v571 >= v772)
                          {
                            v572 = -(v53 * v39);
                          }

                          else
                          {
                            v572 = 0;
                          }

                          v67 = &v785[v53 + v572];
                          if (v571 >= v772)
                          {
                            v573 = -(v774 * v39);
                          }

                          else
                          {
                            v573 = 0;
                          }

                          v65 += 2 * v573 + 2 * v774;
                          v782 = &v571[v573];
                          v785 += v53 + v572;
                          v818 = v782;
                        }

                        else
                        {
                          v818 += v774;
                          v67 += v53;
                        }

                        v819 += 2 * v771;
                        --v566;
                      }

                      while (v566);
                      v787 = v65;
                      v515 = &__ba[v769 * v567];
LABEL_902:
                      __ba = v515;
                      v824[0] = 0;
                    }

                    goto LABEL_843;
                  }

                  v787 = v65;
                  v277 = v824[0];
                  CGSFillDRAM64(v819, 2 * (v746 + v771), 2 * v746, v824[0], v17, 2 * v774, 2 * v743, v39, 2 * v716, v717);
                  if (!v814)
                  {
                    goto LABEL_843;
                  }

                  v44 = v741;
                  if (v816)
                  {
                    CGSFillDRAM64(__ba, v746 + v769, v746, v277, v6, v53, v743, v39, v716, v717);
                    if (!v741)
                    {
                      return 1;
                    }
                  }

                  else
                  {
                    CGBlt_fillBytes(v746, v277, -1, __ba, v746 + v769);
                    if (!v741)
                    {
                      return 1;
                    }
                  }
                }

                v823 = 0;
                continue;
              case 2:
                v218 = v63;
                v721 = -(v53 * v39);
                v728 = -(v774 * v39);
                v219 = 2 * v63;
                v796 = v63;
                v779 = v219;
                if (v21)
                {
                  v220 = v21;
                  v221 = v40;
                  while (1)
                  {
                    v222 = v834[0];
                    do
                    {
                      v223 = *v67;
                      if (v223 < 0xF8)
                      {
                        if (v223 < 8)
                        {
                          goto LABEL_327;
                        }

                        v225 = v65;
                        v226 = PDAplusDAM(bswap32(*v818) >> 16, v223, bswap32(*v819) >> 16, *__ba, v223 ^ 0xFF);
                        v219 = v779;
                        v218 = v796;
                        v65 = v225;
                        *v819 = bswap32(v226) >> 16;
                        v224 = HIBYTE(v226);
                      }

                      else
                      {
                        *v819 = *v818;
                        LOBYTE(v224) = *v67;
                      }

                      *__ba = v224;
LABEL_327:
                      __ba += v220;
                      v227 = &v818[v218];
                      if (v227 >= v65)
                      {
                        v228 = -v743;
                      }

                      else
                      {
                        v228 = 0;
                      }

                      v67 += v221 + v228;
                      v818 = &v227[v228];
                      v819 += v219;
                      --v222;
                    }

                    while (v222);
                    if (v772)
                    {
                      v229 = &v782[v774];
                      v53 = v770;
                      v230 = v721;
                      if (v229 < v772)
                      {
                        v230 = 0;
                      }

                      v67 = &v785[v770 + v230];
                      v231 = v728;
                      if (v229 < v772)
                      {
                        v231 = 0;
                      }

                      v65 += 2 * v231 + 2 * v774;
                      v782 = &v229[v231];
                      v785 += v770 + v230;
                      v818 = v782;
                    }

                    else
                    {
                      v818 += v774;
                      v53 = v770;
                      v67 += v770;
                    }

                    v819 += 2 * v771;
                    __ba += v769;
                    if (!--v824[0])
                    {
LABEL_840:
                      v787 = v65;
LABEL_841:
                      v20 = v739;
                      v8 = v740;
                      v6 = v738;
                      v39 = v745;
LABEL_842:
                      v63 = v744;
                      goto LABEL_843;
                    }
                  }
                }

                v516 = v40;
                v517 = v824[0];
                v719 = (v824[0] - 1) + 1;
LABEL_803:
                v518 = v746;
                while (1)
                {
                  v519 = *v67;
                  if (v519 >= 0xF8)
                  {
                    break;
                  }

                  if (v519 >= 8)
                  {
                    v521 = v65;
                    v522 = PDplusDM(bswap32(*v818) >> 16, bswap32(*v819) >> 16, v519 ^ 0xFF);
                    v219 = v779;
                    v218 = v796;
                    v65 = v521;
                    v520 = __rev16(v522);
                    goto LABEL_808;
                  }

LABEL_809:
                  v523 = &v818[v218];
                  if (v523 >= v65)
                  {
                    v524 = -v743;
                  }

                  else
                  {
                    v524 = 0;
                  }

                  v67 += v516 + v524;
                  v818 = &v523[v524];
                  v819 += v219;
                  if (!--v518)
                  {
                    if (v772)
                    {
                      v525 = &v782[v774];
                      v53 = v770;
                      v526 = v721;
                      if (v525 < v772)
                      {
                        v526 = 0;
                      }

                      v67 = &v785[v770 + v526];
                      v527 = v728;
                      if (v525 < v772)
                      {
                        v527 = 0;
                      }

                      v65 += 2 * v527 + 2 * v774;
                      v782 = &v525[v527];
                      v785 += v770 + v526;
                      v818 = v782;
                    }

                    else
                    {
                      v818 += v774;
                      v53 = v770;
                      v67 += v770;
                    }

                    v819 += 2 * v771;
                    v824[0] = --v517;
                    if (!v517)
                    {
                      v787 = v65;
                      __ba += v769 * v719;
                      goto LABEL_841;
                    }

                    goto LABEL_803;
                  }
                }

                v520 = *v818;
LABEL_808:
                *v819 = v520;
                goto LABEL_809;
              case 3:
                v63 = v63;
                v246 = v21;
                v718 = -(v53 * v39);
                v722 = -(v774 * v39);
                v247 = 2 * v63;
                v798 = v247;
                if (v40)
                {
                  v248 = v40;
                  v780 = v21;
                  do
                  {
                    v249 = v834[0];
                    do
                    {
                      v250 = *__ba;
                      if (v250 > 7)
                      {
                        v251 = *v818;
                        if (v250 < 0xF8)
                        {
                          v252 = v63;
                          v253 = v65;
                          v254 = PDAM(__rev16(v251), *v67, v250);
                          v247 = v798;
                          v65 = v253;
                          v63 = v252;
                          v246 = v780;
                          *v819 = bswap32(v254) >> 16;
                          v251 = HIBYTE(v254);
                        }

                        else
                        {
                          *v819 = v251;
                          LOBYTE(v251) = *v67;
                        }
                      }

                      else
                      {
                        LOBYTE(v251) = 0;
                        *v819 = 0;
                      }

                      *__ba = v251;
                      __ba += v246;
                      v255 = &v818[v63];
                      if (v255 >= v65)
                      {
                        v256 = -v743;
                      }

                      else
                      {
                        v256 = 0;
                      }

                      v67 += v248 + v256;
                      v818 = &v255[v256];
                      v819 += v247;
                      --v249;
                    }

                    while (v249);
                    if (v772)
                    {
                      v257 = &v782[v774];
                      v53 = v770;
                      v258 = v718;
                      if (v257 < v772)
                      {
                        v258 = 0;
                      }

                      v67 = &v785[v770 + v258];
                      v259 = -(v774 * v39);
                      if (v257 < v772)
                      {
                        v259 = 0;
                      }

                      v65 += 2 * v259 + 2 * v774;
                      v782 = &v257[v259];
                      v785 += v770 + v258;
                      v818 = v782;
                    }

                    else
                    {
                      v818 += v774;
                      v53 = v770;
                      v67 += v770;
                    }

                    v819 += 2 * v771;
                    __ba += v769;
                    --v824[0];
                  }

                  while (v824[0]);
                }

                else
                {
                  v528 = v824[0];
                  do
                  {
                    v733 = v528;
                    v529 = v746;
                    do
                    {
                      v530 = *__ba;
                      if (v530 >= 8)
                      {
                        v531 = *v818;
                        if (v530 <= 0xF7)
                        {
                          v532 = v65;
                          v533 = PDM(__rev16(v531), v530);
                          v247 = 2 * v63;
                          v65 = v532;
                          LOWORD(v531) = __rev16(v533);
                        }
                      }

                      else
                      {
                        LOWORD(v531) = 0;
                      }

                      *v819 = v531;
                      __ba += v246;
                      v534 = &v818[v63];
                      if (v534 >= v65)
                      {
                        v535 = -v743;
                      }

                      else
                      {
                        v535 = 0;
                      }

                      v67 += v535;
                      v818 = &v534[v535];
                      v819 += v247;
                      --v529;
                    }

                    while (v529);
                    if (v772)
                    {
                      v536 = &v782[v774];
                      v53 = v770;
                      v537 = v718;
                      if (v536 < v772)
                      {
                        v537 = 0;
                      }

                      v67 = &v785[v770 + v537];
                      v538 = v722;
                      if (v536 < v772)
                      {
                        v538 = 0;
                      }

                      v65 += 2 * v538 + 2 * v774;
                      v782 = &v536[v538];
                      v785 += v770 + v537;
                      v818 = v782;
                    }

                    else
                    {
                      v818 += v774;
                      v53 = v770;
                      v67 += v770;
                    }

                    v819 += 2 * v771;
                    __ba += v769;
                    v528 = v733 - 1;
                    v824[0] = v733 - 1;
                  }

                  while (v733 != 1);
                }

                goto LABEL_840;
              case 4:
                v146 = v63;
                v147 = v63;
                v148 = v21;
                v149 = v40;
                v750 = -(v53 * v39);
                v150 = 2 * v146;
                do
                {
                  v151 = v834[0];
                  v792 = v65;
                  do
                  {
                    v152 = *__ba;
                    if (v152 < 0xF8)
                    {
                      if (v152 > 7)
                      {
                        if (v40)
                        {
                          v154 = *v67;
                        }

                        else
                        {
                          v154 = -1;
                        }

                        v155 = PDAM(bswap32(*v818) >> 16, v154, ~v152);
                        *v819 = bswap32(v155) >> 16;
                        v153 = HIBYTE(v155);
                        LODWORD(v40) = v816;
                        v65 = v792;
                      }

                      else if (v40)
                      {
                        LOBYTE(v153) = *v67;
                      }

                      else
                      {
                        LOBYTE(v153) = -1;
                      }
                    }

                    else
                    {
                      LOBYTE(v153) = 0;
                      *v819 = 0;
                    }

                    *__ba = v153;
                    __ba += v148;
                    v156 = &v818[v147];
                    if (v156 >= v65)
                    {
                      v157 = -v743;
                    }

                    else
                    {
                      v157 = 0;
                    }

                    v67 += v149 + v157;
                    v818 = &v156[v157];
                    v819 += v150;
                    --v151;
                  }

                  while (v151);
                  if (v772)
                  {
                    v158 = &v782[v774];
                    v53 = v770;
                    v159 = v750;
                    if (v158 < v772)
                    {
                      v159 = 0;
                    }

                    v67 = &v785[v770 + v159];
                    v160 = -(v774 * v39);
                    if (v158 < v772)
                    {
                      v160 = 0;
                    }

                    v65 += 2 * v160 + 2 * v774;
                    v782 = &v158[v160];
                    v785 += v770 + v159;
                    v818 = v782;
                  }

                  else
                  {
                    v818 += v774;
                    v53 = v770;
                    v67 += v770;
                  }

                  v819 += 2 * v771;
                  __ba += v769;
                  --v824[0];
                }

                while (v824[0]);
                goto LABEL_840;
              case 5:
                v306 = v63;
                v307 = v63;
                v308 = v21;
                v40 = v40;
                v758 = -(v774 * v39);
                v730 = -(v53 * v39);
                v309 = 2 * v306;
                do
                {
                  v310 = v834[0];
                  do
                  {
                    v802 = v67;
                    v311 = *v67;
                    v312 = v65;
                    v313 = v307;
                    v314 = v40;
                    v315 = v309;
                    v316 = PDAMplusDAM(bswap32(*v818) >> 16, v311, *__ba, bswap32(*v819) >> 16, *__ba, v311 ^ 0xFFu);
                    v309 = v315;
                    v40 = v314;
                    v307 = v313;
                    v65 = v312;
                    *v819 = bswap32(v316) >> 16;
                    *__ba = HIBYTE(v316);
                    v317 = &__ba[v308];
                    v318 = &v818[v313];
                    if (v318 >= v312)
                    {
                      v319 = -v743;
                    }

                    else
                    {
                      v319 = 0;
                    }

                    v67 = &v802[v314 + v319];
                    v818 = &v318[v319];
                    v819 += v309;
                    __ba += v308;
                    --v310;
                  }

                  while (v310);
                  if (v772)
                  {
                    v320 = &v782[v774];
                    v321 = v730;
                    if (v320 < v772)
                    {
                      v321 = 0;
                    }

                    v67 = &v785[v770 + v321];
                    v322 = v758;
                    if (v320 < v772)
                    {
                      v322 = 0;
                    }

                    v65 = v312 + 2 * v322 + 2 * v774;
                    v782 = &v320[v322];
                    v785 += v770 + v321;
                    v818 = v782;
                  }

                  else
                  {
                    v818 += v774;
                    v67 += v770;
                  }

                  v819 += 2 * v771;
                  __ba = &v317[v769];
                  --v824[0];
                }

                while (v824[0]);
                goto LABEL_600;
              case 6:
                v351 = v63;
                v352 = v63;
                v353 = v21;
                v354 = v40;
                v761 = -(v53 * v39);
                v355 = 2 * v351;
                while (1)
                {
                  v356 = v834[0];
                  v805 = v65;
                  do
                  {
                    v357 = *__ba;
                    if (v357 > 7)
                    {
                      if (v357 > 0xF7)
                      {
                        goto LABEL_547;
                      }

                      if (v40)
                      {
                        v359 = *v67;
                      }

                      else
                      {
                        v359 = -1;
                      }

                      v360 = PDAplusDAM(bswap32(*v819) >> 16, v357, bswap32(*v818) >> 16, v359, ~v357);
                      *v819 = bswap32(v360) >> 16;
                      v358 = HIBYTE(v360);
                      LODWORD(v40) = v816;
                      v65 = v805;
                    }

                    else
                    {
                      *v819 = *v818;
                      if (v40)
                      {
                        LOBYTE(v358) = *v67;
                      }

                      else
                      {
                        LOBYTE(v358) = -1;
                      }
                    }

                    *__ba = v358;
LABEL_547:
                    __ba += v353;
                    v361 = &v818[v352];
                    if (v361 >= v65)
                    {
                      v362 = -v743;
                    }

                    else
                    {
                      v362 = 0;
                    }

                    v67 += v354 + v362;
                    v818 = &v361[v362];
                    v819 += v355;
                    --v356;
                  }

                  while (v356);
                  if (v772)
                  {
                    v363 = &v782[v774];
                    v53 = v770;
                    v364 = v761;
                    if (v363 < v772)
                    {
                      v364 = 0;
                    }

                    v67 = &v785[v770 + v364];
                    v365 = -(v774 * v39);
                    if (v363 < v772)
                    {
                      v365 = 0;
                    }

                    v65 += 2 * v365 + 2 * v774;
                    v782 = &v363[v365];
                    v785 += v770 + v364;
                    v818 = v782;
                  }

                  else
                  {
                    v818 += v774;
                    v53 = v770;
                    v67 += v770;
                  }

                  v819 += 2 * v771;
                  __ba += v769;
                  if (!--v824[0])
                  {
                    goto LABEL_840;
                  }
                }

              case 7:
                v260 = v63;
                v723 = -(v53 * v39);
                v729 = -(v774 * v39);
                v799 = v63;
                if (v21)
                {
                  v261 = v21;
                  v262 = v40;
                  v263 = 2 * v260;
                  v264 = -v743;
                  while (1)
                  {
                    v265 = v834[0];
                    do
                    {
                      v266 = *v67;
                      if (v266 > 7)
                      {
                        if (v266 > 0xF7)
                        {
                          goto LABEL_395;
                        }

                        v268 = v65;
                        v269 = PDAM(bswap32(*v819) >> 16, *__ba, v266);
                        v264 = -v743;
                        v260 = v799;
                        v65 = v268;
                        *v819 = bswap32(v269) >> 16;
                        v267 = HIBYTE(v269);
                      }

                      else
                      {
                        LOBYTE(v267) = 0;
                        *v819 = 0;
                      }

                      *__ba = v267;
LABEL_395:
                      __ba += v261;
                      v270 = &v818[v260];
                      if (v270 >= v65)
                      {
                        v271 = v264;
                      }

                      else
                      {
                        v271 = 0;
                      }

                      v67 += v262 + v271;
                      v818 = &v270[v271];
                      v819 += v263;
                      --v265;
                    }

                    while (v265);
                    if (v772)
                    {
                      v272 = &v782[v774];
                      v53 = v770;
                      v273 = v723;
                      if (v272 < v772)
                      {
                        v273 = 0;
                      }

                      v67 = &v785[v770 + v273];
                      v274 = -(v774 * v39);
                      if (v272 < v772)
                      {
                        v274 = 0;
                      }

                      v65 += 2 * v274 + 2 * v774;
                      v782 = &v272[v274];
                      v785 += v770 + v273;
                      v818 = v782;
                    }

                    else
                    {
                      v818 += v774;
                      v53 = v770;
                      v67 += v770;
                    }

                    v819 += 2 * v771;
                    __ba += v769;
                    if (!--v824[0])
                    {
                      goto LABEL_840;
                    }
                  }
                }

                v539 = v40;
                v540 = v824[0];
                v541 = (v824[0] - 1) + 1;
                v542 = 2 * v63;
LABEL_846:
                v543 = v746;
                while (1)
                {
                  v544 = *v67;
                  if (v544 < 8)
                  {
                    break;
                  }

                  if (v544 <= 0xF7)
                  {
                    v546 = v65;
                    v547 = PDM(bswap32(*v819) >> 16, v544);
                    v260 = v799;
                    v65 = v546;
                    v545 = __rev16(v547);
                    goto LABEL_851;
                  }

LABEL_852:
                  v548 = &v818[v260];
                  if (v548 >= v65)
                  {
                    v549 = -v743;
                  }

                  else
                  {
                    v549 = 0;
                  }

                  v67 += v539 + v549;
                  v818 = &v548[v549];
                  v819 += v542;
                  if (!--v543)
                  {
                    if (v772)
                    {
                      v550 = &v782[v774];
                      v551 = v723;
                      if (v550 < v772)
                      {
                        v551 = 0;
                      }

                      v67 = &v785[v53 + v551];
                      v552 = v729;
                      if (v550 < v772)
                      {
                        v552 = 0;
                      }

                      v65 += 2 * v552 + 2 * v774;
                      v782 = &v550[v552];
                      v785 += v53 + v551;
                      v818 = v782;
                    }

                    else
                    {
                      v818 += v774;
                      v67 += v53;
                    }

                    v39 = v745;
                    v819 += 2 * v771;
                    v824[0] = --v540;
                    if (!v540)
                    {
                      v787 = v65;
                      __ba += v769 * v541;
                      v8 = v740;
                      v6 = v738;
LABEL_601:
                      v53 = v770;
                      goto LABEL_842;
                    }

                    goto LABEL_846;
                  }
                }

                v545 = 0;
LABEL_851:
                *v819 = v545;
                goto LABEL_852;
              case 8:
                v397 = v63;
                v724 = -(v53 * v39);
                v732 = -(v774 * v39);
                if (v21)
                {
                  v398 = v21;
                  v399 = v40;
                  v400 = 2 * v63;
                  v808 = v397;
                  while (1)
                  {
                    v401 = v834[0];
                    do
                    {
                      v402 = *v67;
                      if (v402 < 0xF8)
                      {
                        if (v402 < 8)
                        {
                          goto LABEL_610;
                        }

                        v404 = v65;
                        v405 = PDAM(bswap32(*v819) >> 16, *__ba, ~v402);
                        v65 = v404;
                        v397 = v808;
                        *v819 = bswap32(v405) >> 16;
                        v403 = HIBYTE(v405);
                      }

                      else
                      {
                        LOBYTE(v403) = 0;
                        *v819 = 0;
                      }

                      *__ba = v403;
LABEL_610:
                      __ba += v398;
                      v406 = &v818[v397];
                      if (v406 >= v65)
                      {
                        v407 = -v743;
                      }

                      else
                      {
                        v407 = 0;
                      }

                      v67 += v399 + v407;
                      v818 = &v406[v407];
                      v819 += v400;
                      --v401;
                    }

                    while (v401);
                    if (v772)
                    {
                      v408 = &v782[v774];
                      v53 = v770;
                      v409 = v724;
                      if (v408 < v772)
                      {
                        v409 = 0;
                      }

                      v67 = &v785[v770 + v409];
                      v410 = v732;
                      if (v408 < v772)
                      {
                        v410 = 0;
                      }

                      v65 += 2 * v410 + 2 * v774;
                      v782 = &v408[v410];
                      v785 += v770 + v409;
                      v818 = v782;
                    }

                    else
                    {
                      v818 += v774;
                      v53 = v770;
                      v67 += v770;
                    }

                    v819 += 2 * v771;
                    __ba += v769;
                    if (!--v824[0])
                    {
                      goto LABEL_840;
                    }
                  }
                }

                v553 = v40;
                v554 = v824[0];
                v555 = (v824[0] - 1) + 1;
LABEL_866:
                v781 = v554;
                v556 = v746;
                while (1)
                {
                  v557 = *v67;
                  if (v557 > 0xF7)
                  {
                    break;
                  }

                  if (v557 >= 8)
                  {
                    v559 = v65;
                    v560 = PDM(bswap32(*v819) >> 16, ~v557);
                    v65 = v559;
                    v558 = __rev16(v560);
                    goto LABEL_871;
                  }

LABEL_872:
                  v561 = &v818[v63];
                  if (v561 >= v65)
                  {
                    v562 = -v743;
                  }

                  else
                  {
                    v562 = 0;
                  }

                  v67 += v553 + v562;
                  v818 = &v561[v562];
                  v819 += 2 * v63;
                  if (!--v556)
                  {
                    if (v772)
                    {
                      v563 = &v782[v774];
                      v53 = v770;
                      v564 = v724;
                      if (v563 < v772)
                      {
                        v564 = 0;
                      }

                      v67 = &v785[v770 + v564];
                      v565 = v732;
                      if (v563 < v772)
                      {
                        v565 = 0;
                      }

                      v65 += 2 * v565 + 2 * v774;
                      v782 = &v563[v565];
                      v785 += v770 + v564;
                      v818 = v782;
                    }

                    else
                    {
                      v818 += v774;
                      v53 = v770;
                      v67 += v770;
                    }

                    v819 += 2 * v771;
                    v554 = v781 - 1;
                    v824[0] = v781 - 1;
                    if (v781 == 1)
                    {
                      v787 = v65;
                      __ba += v769 * v555;
                      goto LABEL_841;
                    }

                    goto LABEL_866;
                  }
                }

                v558 = 0;
LABEL_871:
                *v819 = v558;
                goto LABEL_872;
              case 9:
                v174 = v63;
                v175 = v63;
                v176 = v21;
                v40 = v40;
                v752 = -(v774 * v39);
                v727 = -(v53 * v39);
                v177 = 2 * v174;
                do
                {
                  v178 = v834[0];
                  do
                  {
                    v179 = v65;
                    v180 = v175;
                    v181 = v40;
                    v182 = v177;
                    v183 = PDAMplusDAM(bswap32(*v818) >> 16, *v67, *__ba ^ 0xFFu, bswap32(*v819) >> 16, *__ba, *v67);
                    v177 = v182;
                    v40 = v181;
                    v175 = v180;
                    v65 = v179;
                    *v819 = bswap32(v183) >> 16;
                    *__ba = HIBYTE(v183);
                    v184 = &__ba[v176];
                    v185 = &v818[v180];
                    if (v185 >= v179)
                    {
                      v186 = -v743;
                    }

                    else
                    {
                      v186 = 0;
                    }

                    v67 += v181 + v186;
                    v818 = &v185[v186];
                    v819 += v182;
                    __ba += v176;
                    --v178;
                  }

                  while (v178);
                  if (v772)
                  {
                    v187 = &v782[v774];
                    v188 = v727;
                    if (v187 < v772)
                    {
                      v188 = 0;
                    }

                    v67 = &v785[v770 + v188];
                    v189 = v752;
                    if (v187 < v772)
                    {
                      v189 = 0;
                    }

                    v65 = v179 + 2 * v189 + 2 * v774;
                    v782 = &v187[v189];
                    v785 += v770 + v188;
                    v818 = v782;
                  }

                  else
                  {
                    v818 += v774;
                    v67 += v770;
                  }

                  v819 += 2 * v771;
                  __ba = &v184[v769];
                  --v824[0];
                }

                while (v824[0]);
                goto LABEL_600;
              case 10:
                v380 = v63;
                v381 = v63;
                v382 = v21;
                v40 = v40;
                v763 = -(v774 * v39);
                v731 = -(v53 * v39);
                v383 = 2 * v380;
                do
                {
                  v384 = v834[0];
                  do
                  {
                    v807 = v67;
                    v385 = *v67;
                    v386 = v65;
                    v387 = v381;
                    v388 = v40;
                    v389 = v383;
                    v390 = PDAMplusDAM(bswap32(*v818) >> 16, v385, *__ba ^ 0xFFu, bswap32(*v819) >> 16, *__ba, v385 ^ 0xFFu);
                    v383 = v389;
                    v40 = v388;
                    v381 = v387;
                    v65 = v386;
                    *v819 = bswap32(v390) >> 16;
                    *__ba = HIBYTE(v390);
                    v391 = &__ba[v382];
                    v392 = &v818[v387];
                    if (v392 >= v386)
                    {
                      v393 = -v743;
                    }

                    else
                    {
                      v393 = 0;
                    }

                    v67 = &v807[v388 + v393];
                    v818 = &v392[v393];
                    v819 += v383;
                    __ba += v382;
                    --v384;
                  }

                  while (v384);
                  if (v772)
                  {
                    v394 = &v782[v774];
                    v395 = v731;
                    if (v394 < v772)
                    {
                      v395 = 0;
                    }

                    v67 = &v785[v770 + v395];
                    v396 = v763;
                    if (v394 < v772)
                    {
                      v396 = 0;
                    }

                    v65 = v386 + 2 * v396 + 2 * v774;
                    v782 = &v394[v396];
                    v785 += v770 + v395;
                    v818 = v782;
                  }

                  else
                  {
                    v818 += v774;
                    v67 += v770;
                  }

                  v819 += 2 * v771;
                  __ba = &v391[v769];
                  --v824[0];
                }

                while (v824[0]);
LABEL_600:
                v787 = v65;
                v20 = v739;
                v8 = v740;
                v39 = v745;
                goto LABEL_601;
              case 11:
                v720 = -(v53 * v39);
                v725 = -(v774 * v39);
                v791 = v63;
                v777 = 2 * v63;
                if (v21)
                {
                  v134 = v21;
                  v135 = v40;
                  do
                  {
                    v136 = v834[0];
                    v137 = v65;
                    do
                    {
                      if (v40)
                      {
                        v138 = *v67;
                      }

                      else
                      {
                        v138 = 255;
                      }

                      v139 = PDAplusdDA(bswap32(*v819) >> 16, *__ba, bswap32(*v818) >> 16, v138);
                      *v819 = bswap32(v139) >> 16;
                      *__ba = HIBYTE(v139);
                      v140 = &__ba[v134];
                      v141 = &v818[v791];
                      if (v141 >= v137)
                      {
                        v142 = -v743;
                      }

                      else
                      {
                        v142 = 0;
                      }

                      v67 += v135 + v142;
                      v818 = &v141[v142];
                      v819 += v777;
                      __ba += v134;
                      --v136;
                      LODWORD(v40) = v816;
                    }

                    while (v136);
                    v65 = v137;
                    if (v772)
                    {
                      v143 = &v782[v774];
                      v53 = v770;
                      v144 = v720;
                      if (v143 < v772)
                      {
                        v144 = 0;
                      }

                      v67 = &v785[v770 + v144];
                      v145 = v725;
                      if (v143 < v772)
                      {
                        v145 = 0;
                      }

                      v65 = v137 + 2 * v145 + 2 * v774;
                      v782 = &v143[v145];
                      v785 += v770 + v144;
                      v818 = v782;
                    }

                    else
                    {
                      v818 += v774;
                      v53 = v770;
                      v67 += v770;
                    }

                    v819 += 2 * v771;
                    __ba = &v140[v769];
                    --v824[0];
                  }

                  while (v824[0]);
                  goto LABEL_840;
                }

                v492 = v40;
                v493 = v824[0];
                v494 = (v824[0] - 1) + 1;
                do
                {
                  v495 = v746;
                  v496 = v65;
                  do
                  {
                    if (v40)
                    {
                      v497 = *v67;
                    }

                    else
                    {
                      v497 = 255;
                    }

                    *v819 = __rev16(PDplusdDA(bswap32(*v819) >> 16, bswap32(*v818) >> 16, v497));
                    v498 = &v818[v791];
                    if (v498 >= v496)
                    {
                      v499 = -v743;
                    }

                    else
                    {
                      v499 = 0;
                    }

                    v67 += v492 + v499;
                    v500 = &v498[v499];
                    v818 = v500;
                    v819 += v777;
                    --v495;
                    LODWORD(v40) = v816;
                  }

                  while (v495);
                  v65 = v496;
                  if (v772)
                  {
                    v501 = &v782[v774];
                    v502 = v720;
                    if (v501 < v772)
                    {
                      v502 = 0;
                    }

                    v67 = &v785[v53 + v502];
                    v503 = v725;
                    if (v501 < v772)
                    {
                      v503 = 0;
                    }

                    v65 = v496 + 2 * v503 + 2 * v774;
                    v782 = &v501[v503];
                    v785 += v53 + v502;
                    v818 = v782;
                  }

                  else
                  {
                    v818 = &v500[v774];
                    v67 += v53;
                  }

                  v63 = v744;
                  v819 += 2 * v771;
                  v824[0] = --v493;
                }

                while (v493);
                v787 = v65;
                __ba += v769 * v494;
                v8 = v740;
                v6 = v738;
LABEL_783:
                v20 = v739;
                goto LABEL_784;
              case 12:
                if (!v21)
                {
                  v504 = v824[0];
                  v505 = (v824[0] - 1) + 1;
                  do
                  {
                    v506 = v746;
                    do
                    {
                      v507 = bswap32(*v819);
                      v508 = bswap32(*v818);
                      v509 = (((HIWORD(v508) << 15) | HIWORD(v508)) & 0x1F07C1F) + (((HIWORD(v507) << 15) | HIWORD(v507)) & 0x1F07C1F);
                      *v819 = __rev16((((15 * ((v509 >> 5) & 0x100401)) | v509 | (30 * ((v509 >> 5) & 0x100401))) >> 15) & 0x3E0 | ((15 * ((v509 >> 5) & 0x100401)) | v509 | (30 * ((v509 >> 5) & 0x100401))) & 0x7C1F);
                      v510 = &v818[v63];
                      if (v510 >= v65)
                      {
                        v511 = -v743;
                      }

                      else
                      {
                        v511 = 0;
                      }

                      v67 += v40 + v511;
                      v818 = &v510[v511];
                      v819 += 2 * v63;
                      --v506;
                    }

                    while (v506);
                    if (v772)
                    {
                      v512 = &v782[v774];
                      if (v512 >= v772)
                      {
                        v513 = -(v53 * v39);
                      }

                      else
                      {
                        v513 = 0;
                      }

                      v67 = &v785[v53 + v513];
                      if (v512 >= v772)
                      {
                        v514 = -(v774 * v39);
                      }

                      else
                      {
                        v514 = 0;
                      }

                      v65 += 2 * v514 + 2 * v774;
                      v782 = &v512[v514];
                      v785 += v53 + v513;
                      v818 = v782;
                    }

                    else
                    {
                      v818 += v774;
                      v67 += v53;
                    }

                    v819 += 2 * v771;
                    --v504;
                  }

                  while (v504);
                  v787 = v65;
                  v515 = &__ba[v769 * v505];
                  goto LABEL_902;
                }

                v793 = v63;
                v778 = v21;
                v161 = v39;
                v162 = v40;
                v751 = -(v774 * v161);
                v726 = -(v53 * v161);
                v163 = 2 * v63;
                do
                {
                  v164 = v834[0];
                  v165 = v65;
                  do
                  {
                    if (v40)
                    {
                      v166 = *v67;
                    }

                    else
                    {
                      v166 = 255;
                    }

                    v167 = PDApluslDA(bswap32(*v819) >> 16, *__ba, bswap32(*v818) >> 16, v166);
                    *v819 = bswap32(v167) >> 16;
                    *__ba = HIBYTE(v167);
                    v168 = &__ba[v778];
                    v169 = &v818[v793];
                    if (v169 >= v165)
                    {
                      v170 = -v743;
                    }

                    else
                    {
                      v170 = 0;
                    }

                    v67 += v162 + v170;
                    v818 = &v169[v170];
                    v819 += v163;
                    __ba += v778;
                    --v164;
                    LODWORD(v40) = v816;
                  }

                  while (v164);
                  v65 = v165;
                  if (v772)
                  {
                    v171 = &v782[v774];
                    v53 = v770;
                    v172 = v726;
                    if (v171 < v772)
                    {
                      v172 = 0;
                    }

                    v67 = &v785[v770 + v172];
                    v173 = v751;
                    if (v171 < v772)
                    {
                      v173 = 0;
                    }

                    v65 = v165 + 2 * v173 + 2 * v774;
                    v782 = &v171[v173];
                    v785 += v770 + v172;
                    v818 = v782;
                  }

                  else
                  {
                    v818 += v774;
                    v53 = v770;
                    v67 += v770;
                  }

                  v819 += 2 * v771;
                  __ba = &v168[v769];
                  --v824[0];
                }

                while (v824[0]);
                goto LABEL_840;
              case 13:
                v337 = v63;
                v804 = v63;
                v338 = v21;
                v339 = v40;
                v760 = -(v53 * v39);
                v340 = 2 * v337;
                while (1)
                {
                  v341 = v834[0];
                  do
                  {
                    if (!v40)
                    {
                      v342 = 255;
LABEL_515:
                      v343 = v65;
                      if (v21)
                      {
                        v344 = *__ba;
                        if (v344 <= 7)
                        {
                          *v819 = *v818;
                          LODWORD(v40) = v816;
LABEL_521:
                          *__ba = v342;
                          goto LABEL_522;
                        }
                      }

                      else
                      {
                        v344 = 255;
                      }

                      v345 = PDAmultiplyPDA(bswap32(*v819) >> 16, v344, bswap32(*v818) >> 16, v342);
                      LODWORD(v21) = v814;
                      LODWORD(v40) = v816;
                      *v819 = bswap32(v345) >> 16;
                      v65 = v343;
                      if (!v814)
                      {
                        goto LABEL_522;
                      }

                      v342 = HIBYTE(v345);
                      goto LABEL_521;
                    }

                    v342 = *v67;
                    if (v342 >= 8)
                    {
                      goto LABEL_515;
                    }

LABEL_522:
                    __ba += v338;
                    v346 = &v818[v804];
                    if (v346 >= v65)
                    {
                      v347 = -v743;
                    }

                    else
                    {
                      v347 = 0;
                    }

                    v67 += v339 + v347;
                    v818 = &v346[v347];
                    v819 += v340;
                    --v341;
                  }

                  while (v341);
                  if (v772)
                  {
                    v348 = &v782[v774];
                    v53 = v770;
                    v349 = v760;
                    if (v348 < v772)
                    {
                      v349 = 0;
                    }

                    v67 = &v785[v770 + v349];
                    v350 = -(v774 * v39);
                    if (v348 < v772)
                    {
                      v350 = 0;
                    }

                    v65 += 2 * v350 + 2 * v774;
                    v782 = &v348[v350];
                    v785 += v770 + v349;
                    v818 = v782;
                  }

                  else
                  {
                    v818 += v774;
                    v53 = v770;
                    v67 += v770;
                  }

                  v819 += 2 * v771;
                  __ba += v769;
                  if (!--v824[0])
                  {
                    goto LABEL_840;
                  }
                }

              case 14:
                v120 = v63;
                v790 = v63;
                v121 = v21;
                v122 = v40;
                v749 = -(v53 * v39);
                v123 = 2 * v120;
                while (1)
                {
                  v124 = v834[0];
                  do
                  {
                    if (!v40)
                    {
                      v125 = 255;
LABEL_169:
                      v126 = v65;
                      if (v21)
                      {
                        v127 = *__ba;
                        if (v127 <= 7)
                        {
                          *v819 = *v818;
                          LODWORD(v40) = v816;
LABEL_175:
                          *__ba = v125;
                          goto LABEL_176;
                        }
                      }

                      else
                      {
                        v127 = 255;
                      }

                      v128 = PDAscreenPDA(bswap32(*v819) >> 16, v127, bswap32(*v818) >> 16, v125);
                      LODWORD(v21) = v814;
                      LODWORD(v40) = v816;
                      *v819 = bswap32(v128) >> 16;
                      v65 = v126;
                      if (!v814)
                      {
                        goto LABEL_176;
                      }

                      v125 = HIBYTE(v128);
                      goto LABEL_175;
                    }

                    v125 = *v67;
                    if (v125 >= 8)
                    {
                      goto LABEL_169;
                    }

LABEL_176:
                    __ba += v121;
                    v129 = &v818[v790];
                    if (v129 >= v65)
                    {
                      v130 = -v743;
                    }

                    else
                    {
                      v130 = 0;
                    }

                    v67 += v122 + v130;
                    v818 = &v129[v130];
                    v819 += v123;
                    --v124;
                  }

                  while (v124);
                  if (v772)
                  {
                    v131 = &v782[v774];
                    v53 = v770;
                    v132 = v749;
                    if (v131 < v772)
                    {
                      v132 = 0;
                    }

                    v67 = &v785[v770 + v132];
                    v133 = -(v774 * v39);
                    if (v131 < v772)
                    {
                      v133 = 0;
                    }

                    v65 += 2 * v133 + 2 * v774;
                    v782 = &v131[v133];
                    v785 += v770 + v132;
                    v818 = v782;
                  }

                  else
                  {
                    v818 += v774;
                    v53 = v770;
                    v67 += v770;
                  }

                  v819 += 2 * v771;
                  __ba += v769;
                  if (!--v824[0])
                  {
                    goto LABEL_840;
                  }
                }

              case 15:
                v232 = v63;
                v797 = v63;
                v233 = v21;
                v234 = v40;
                v755 = -(v53 * v39);
                v235 = 2 * v232;
                while (1)
                {
                  v236 = v834[0];
                  do
                  {
                    if (!v40)
                    {
                      v237 = 255;
LABEL_346:
                      v238 = v65;
                      if (v21)
                      {
                        v239 = *__ba;
                        if (v239 <= 7)
                        {
                          *v819 = *v818;
                          LODWORD(v40) = v816;
LABEL_352:
                          *__ba = v237;
                          goto LABEL_353;
                        }
                      }

                      else
                      {
                        v239 = 255;
                      }

                      v240 = PDAoverlayPDA(bswap32(*v819) >> 16, v239, bswap32(*v818) >> 16, v237);
                      LODWORD(v21) = v814;
                      LODWORD(v40) = v816;
                      *v819 = bswap32(v240) >> 16;
                      v65 = v238;
                      if (!v814)
                      {
                        goto LABEL_353;
                      }

                      v237 = HIBYTE(v240);
                      goto LABEL_352;
                    }

                    v237 = *v67;
                    if (v237 >= 8)
                    {
                      goto LABEL_346;
                    }

LABEL_353:
                    __ba += v233;
                    v241 = &v818[v797];
                    if (v241 >= v65)
                    {
                      v242 = -v743;
                    }

                    else
                    {
                      v242 = 0;
                    }

                    v67 += v234 + v242;
                    v818 = &v241[v242];
                    v819 += v235;
                    --v236;
                  }

                  while (v236);
                  if (v772)
                  {
                    v243 = &v782[v774];
                    v53 = v770;
                    v244 = v755;
                    if (v243 < v772)
                    {
                      v244 = 0;
                    }

                    v67 = &v785[v770 + v244];
                    v245 = -(v774 * v39);
                    if (v243 < v772)
                    {
                      v245 = 0;
                    }

                    v65 += 2 * v245 + 2 * v774;
                    v782 = &v243[v245];
                    v785 += v770 + v244;
                    v818 = v782;
                  }

                  else
                  {
                    v818 += v774;
                    v53 = v770;
                    v67 += v770;
                  }

                  v819 += 2 * v771;
                  __ba += v769;
                  if (!--v824[0])
                  {
                    goto LABEL_840;
                  }
                }

              case 16:
                v106 = v63;
                v789 = v63;
                v107 = v21;
                v108 = v40;
                v748 = -(v53 * v39);
                v109 = 2 * v106;
                while (1)
                {
                  v110 = v834[0];
                  do
                  {
                    if (!v40)
                    {
                      v111 = 255;
LABEL_143:
                      v112 = v65;
                      if (v21)
                      {
                        v113 = *__ba;
                        if (v113 <= 7)
                        {
                          *v819 = *v818;
                          LODWORD(v40) = v816;
LABEL_149:
                          *__ba = v111;
                          goto LABEL_150;
                        }
                      }

                      else
                      {
                        v113 = 255;
                      }

                      v114 = PDAdarkenPDA(bswap32(*v819) >> 16, v113, bswap32(*v818) >> 16, v111);
                      LODWORD(v21) = v814;
                      LODWORD(v40) = v816;
                      *v819 = bswap32(v114) >> 16;
                      v65 = v112;
                      if (!v814)
                      {
                        goto LABEL_150;
                      }

                      v111 = HIBYTE(v114);
                      goto LABEL_149;
                    }

                    v111 = *v67;
                    if (v111 >= 8)
                    {
                      goto LABEL_143;
                    }

LABEL_150:
                    __ba += v107;
                    v115 = &v818[v789];
                    if (v115 >= v65)
                    {
                      v116 = -v743;
                    }

                    else
                    {
                      v116 = 0;
                    }

                    v67 += v108 + v116;
                    v818 = &v115[v116];
                    v819 += v109;
                    --v110;
                  }

                  while (v110);
                  if (v772)
                  {
                    v117 = &v782[v774];
                    v53 = v770;
                    v118 = v748;
                    if (v117 < v772)
                    {
                      v118 = 0;
                    }

                    v67 = &v785[v770 + v118];
                    v119 = -(v774 * v39);
                    if (v117 < v772)
                    {
                      v119 = 0;
                    }

                    v65 += 2 * v119 + 2 * v774;
                    v782 = &v117[v119];
                    v785 += v770 + v118;
                    v818 = v782;
                  }

                  else
                  {
                    v818 += v774;
                    v53 = v770;
                    v67 += v770;
                  }

                  v819 += 2 * v771;
                  __ba += v769;
                  if (!--v824[0])
                  {
                    goto LABEL_840;
                  }
                }

              case 17:
                v278 = v63;
                v800 = v63;
                v279 = v21;
                v280 = v40;
                v756 = -(v53 * v39);
                v281 = 2 * v278;
                while (1)
                {
                  v282 = v834[0];
                  do
                  {
                    if (!v40)
                    {
                      v283 = 255;
LABEL_422:
                      v284 = v65;
                      if (v21)
                      {
                        v285 = *__ba;
                        if (v285 <= 7)
                        {
                          *v819 = *v818;
                          LODWORD(v40) = v816;
LABEL_428:
                          *__ba = v283;
                          goto LABEL_429;
                        }
                      }

                      else
                      {
                        v285 = 255;
                      }

                      v286 = PDAlightenPDA(bswap32(*v819) >> 16, v285, bswap32(*v818) >> 16, v283);
                      LODWORD(v21) = v814;
                      LODWORD(v40) = v816;
                      *v819 = bswap32(v286) >> 16;
                      v65 = v284;
                      if (!v814)
                      {
                        goto LABEL_429;
                      }

                      v283 = HIBYTE(v286);
                      goto LABEL_428;
                    }

                    v283 = *v67;
                    if (v283 >= 8)
                    {
                      goto LABEL_422;
                    }

LABEL_429:
                    __ba += v279;
                    v287 = &v818[v800];
                    if (v287 >= v65)
                    {
                      v288 = -v743;
                    }

                    else
                    {
                      v288 = 0;
                    }

                    v67 += v280 + v288;
                    v818 = &v287[v288];
                    v819 += v281;
                    --v282;
                  }

                  while (v282);
                  if (v772)
                  {
                    v289 = &v782[v774];
                    v53 = v770;
                    v290 = v756;
                    if (v289 < v772)
                    {
                      v290 = 0;
                    }

                    v67 = &v785[v770 + v290];
                    v291 = -(v774 * v39);
                    if (v289 < v772)
                    {
                      v291 = 0;
                    }

                    v65 += 2 * v291 + 2 * v774;
                    v782 = &v289[v291];
                    v785 += v770 + v290;
                    v818 = v782;
                  }

                  else
                  {
                    v818 += v774;
                    v53 = v770;
                    v67 += v770;
                  }

                  v819 += 2 * v771;
                  __ba += v769;
                  if (!--v824[0])
                  {
                    goto LABEL_840;
                  }
                }

              case 18:
                v366 = v63;
                v806 = v63;
                v367 = v21;
                v368 = v40;
                v762 = -(v53 * v39);
                v369 = 2 * v366;
                while (1)
                {
                  v370 = v834[0];
                  do
                  {
                    if (!v40)
                    {
                      v371 = 255;
LABEL_566:
                      v372 = v65;
                      if (v21)
                      {
                        v373 = *__ba;
                        if (v373 <= 7)
                        {
                          *v819 = *v818;
                          LODWORD(v40) = v816;
LABEL_572:
                          *__ba = v371;
                          goto LABEL_573;
                        }
                      }

                      else
                      {
                        v373 = 255;
                      }

                      v374 = PDAcolordodgePDA(bswap32(*v819) >> 16, v373, bswap32(*v818) >> 16, v371);
                      LODWORD(v21) = v814;
                      LODWORD(v40) = v816;
                      *v819 = bswap32(v374) >> 16;
                      v65 = v372;
                      if (!v814)
                      {
                        goto LABEL_573;
                      }

                      v371 = HIBYTE(v374);
                      goto LABEL_572;
                    }

                    v371 = *v67;
                    if (v371 >= 8)
                    {
                      goto LABEL_566;
                    }

LABEL_573:
                    __ba += v367;
                    v375 = &v818[v806];
                    if (v375 >= v65)
                    {
                      v376 = -v743;
                    }

                    else
                    {
                      v376 = 0;
                    }

                    v67 += v368 + v376;
                    v818 = &v375[v376];
                    v819 += v369;
                    --v370;
                  }

                  while (v370);
                  if (v772)
                  {
                    v377 = &v782[v774];
                    v53 = v770;
                    v378 = v762;
                    if (v377 < v772)
                    {
                      v378 = 0;
                    }

                    v67 = &v785[v770 + v378];
                    v379 = -(v774 * v39);
                    if (v377 < v772)
                    {
                      v379 = 0;
                    }

                    v65 += 2 * v379 + 2 * v774;
                    v782 = &v377[v379];
                    v785 += v770 + v378;
                    v818 = v782;
                  }

                  else
                  {
                    v818 += v774;
                    v53 = v770;
                    v67 += v770;
                  }

                  v819 += 2 * v771;
                  __ba += v769;
                  if (!--v824[0])
                  {
                    goto LABEL_840;
                  }
                }

              case 19:
                v425 = v63;
                v810 = v63;
                v426 = v21;
                v427 = v40;
                v765 = -(v53 * v39);
                v428 = 2 * v425;
                while (1)
                {
                  v429 = v834[0];
                  do
                  {
                    if (!v40)
                    {
                      v430 = 255;
LABEL_655:
                      v431 = v65;
                      if (v21)
                      {
                        v432 = *__ba;
                        if (v432 <= 7)
                        {
                          *v819 = *v818;
                          LODWORD(v40) = v816;
LABEL_661:
                          *__ba = v430;
                          goto LABEL_662;
                        }
                      }

                      else
                      {
                        v432 = 255;
                      }

                      v433 = PDAcolorburnPDA(bswap32(*v819) >> 16, v432, bswap32(*v818) >> 16, v430);
                      LODWORD(v21) = v814;
                      LODWORD(v40) = v816;
                      *v819 = bswap32(v433) >> 16;
                      v65 = v431;
                      if (!v814)
                      {
                        goto LABEL_662;
                      }

                      v430 = HIBYTE(v433);
                      goto LABEL_661;
                    }

                    v430 = *v67;
                    if (v430 >= 8)
                    {
                      goto LABEL_655;
                    }

LABEL_662:
                    __ba += v426;
                    v434 = &v818[v810];
                    if (v434 >= v65)
                    {
                      v435 = -v743;
                    }

                    else
                    {
                      v435 = 0;
                    }

                    v67 += v427 + v435;
                    v818 = &v434[v435];
                    v819 += v428;
                    --v429;
                  }

                  while (v429);
                  if (v772)
                  {
                    v436 = &v782[v774];
                    v53 = v770;
                    v437 = v765;
                    if (v436 < v772)
                    {
                      v437 = 0;
                    }

                    v67 = &v785[v770 + v437];
                    v438 = -(v774 * v39);
                    if (v436 < v772)
                    {
                      v438 = 0;
                    }

                    v65 += 2 * v438 + 2 * v774;
                    v782 = &v436[v438];
                    v785 += v770 + v437;
                    v818 = v782;
                  }

                  else
                  {
                    v818 += v774;
                    v53 = v770;
                    v67 += v770;
                  }

                  v819 += 2 * v771;
                  __ba += v769;
                  if (!--v824[0])
                  {
                    goto LABEL_840;
                  }
                }

              case 20:
                v292 = v63;
                v801 = v63;
                v293 = v21;
                v294 = v40;
                v757 = -(v53 * v39);
                v295 = 2 * v292;
                while (1)
                {
                  v296 = v834[0];
                  do
                  {
                    if (!v40)
                    {
                      v297 = 255;
LABEL_448:
                      v298 = v65;
                      if (v21)
                      {
                        v299 = *__ba;
                        if (v299 <= 7)
                        {
                          *v819 = *v818;
                          LODWORD(v40) = v816;
LABEL_454:
                          *__ba = v297;
                          goto LABEL_455;
                        }
                      }

                      else
                      {
                        v299 = 255;
                      }

                      v300 = PDAsoftlightPDA(bswap32(*v819) >> 16, v299, bswap32(*v818) >> 16, v297);
                      LODWORD(v21) = v814;
                      LODWORD(v40) = v816;
                      *v819 = bswap32(v300) >> 16;
                      v65 = v298;
                      if (!v814)
                      {
                        goto LABEL_455;
                      }

                      v297 = HIBYTE(v300);
                      goto LABEL_454;
                    }

                    v297 = *v67;
                    if (v297 >= 8)
                    {
                      goto LABEL_448;
                    }

LABEL_455:
                    __ba += v293;
                    v301 = &v818[v801];
                    if (v301 >= v65)
                    {
                      v302 = -v743;
                    }

                    else
                    {
                      v302 = 0;
                    }

                    v67 += v294 + v302;
                    v818 = &v301[v302];
                    v819 += v295;
                    --v296;
                  }

                  while (v296);
                  if (v772)
                  {
                    v303 = &v782[v774];
                    v53 = v770;
                    v304 = v757;
                    if (v303 < v772)
                    {
                      v304 = 0;
                    }

                    v67 = &v785[v770 + v304];
                    v305 = -(v774 * v39);
                    if (v303 < v772)
                    {
                      v305 = 0;
                    }

                    v65 += 2 * v305 + 2 * v774;
                    v782 = &v303[v305];
                    v785 += v770 + v304;
                    v818 = v782;
                  }

                  else
                  {
                    v818 += v774;
                    v53 = v770;
                    v67 += v770;
                  }

                  v819 += 2 * v771;
                  __ba += v769;
                  if (!--v824[0])
                  {
                    goto LABEL_840;
                  }
                }

              case 21:
                v323 = v63;
                v803 = v63;
                v324 = v21;
                v325 = v40;
                v759 = -(v53 * v39);
                v326 = 2 * v323;
                while (1)
                {
                  v327 = v834[0];
                  do
                  {
                    if (!v40)
                    {
                      v328 = 255;
LABEL_489:
                      v329 = v65;
                      if (v21)
                      {
                        v330 = *__ba;
                        if (v330 <= 7)
                        {
                          *v819 = *v818;
                          LODWORD(v40) = v816;
LABEL_495:
                          *__ba = v328;
                          goto LABEL_496;
                        }
                      }

                      else
                      {
                        v330 = 255;
                      }

                      v331 = PDAhardlightPDA(bswap32(*v819) >> 16, v330, bswap32(*v818) >> 16, v328);
                      LODWORD(v21) = v814;
                      LODWORD(v40) = v816;
                      *v819 = bswap32(v331) >> 16;
                      v65 = v329;
                      if (!v814)
                      {
                        goto LABEL_496;
                      }

                      v328 = HIBYTE(v331);
                      goto LABEL_495;
                    }

                    v328 = *v67;
                    if (v328 >= 8)
                    {
                      goto LABEL_489;
                    }

LABEL_496:
                    __ba += v324;
                    v332 = &v818[v803];
                    if (v332 >= v65)
                    {
                      v333 = -v743;
                    }

                    else
                    {
                      v333 = 0;
                    }

                    v67 += v325 + v333;
                    v818 = &v332[v333];
                    v819 += v326;
                    --v327;
                  }

                  while (v327);
                  if (v772)
                  {
                    v334 = &v782[v774];
                    v53 = v770;
                    v335 = v759;
                    if (v334 < v772)
                    {
                      v335 = 0;
                    }

                    v67 = &v785[v770 + v335];
                    v336 = -(v774 * v39);
                    if (v334 < v772)
                    {
                      v336 = 0;
                    }

                    v65 += 2 * v336 + 2 * v774;
                    v782 = &v334[v336];
                    v785 += v770 + v335;
                    v818 = v782;
                  }

                  else
                  {
                    v818 += v774;
                    v53 = v770;
                    v67 += v770;
                  }

                  v819 += 2 * v771;
                  __ba += v769;
                  if (!--v824[0])
                  {
                    goto LABEL_840;
                  }
                }

              case 22:
                v411 = v63;
                v809 = v63;
                v412 = v21;
                v413 = v40;
                v764 = -(v53 * v39);
                v414 = 2 * v411;
                while (1)
                {
                  v415 = v834[0];
                  do
                  {
                    if (!v40)
                    {
                      v416 = 255;
LABEL_629:
                      v417 = v65;
                      if (v21)
                      {
                        v418 = *__ba;
                        if (v418 <= 7)
                        {
                          *v819 = *v818;
                          LODWORD(v40) = v816;
LABEL_635:
                          *__ba = v416;
                          goto LABEL_636;
                        }
                      }

                      else
                      {
                        v418 = 255;
                      }

                      v419 = PDAdifferencePDA(bswap32(*v819) >> 16, v418, bswap32(*v818) >> 16, v416);
                      LODWORD(v21) = v814;
                      LODWORD(v40) = v816;
                      *v819 = bswap32(v419) >> 16;
                      v65 = v417;
                      if (!v814)
                      {
                        goto LABEL_636;
                      }

                      v416 = HIBYTE(v419);
                      goto LABEL_635;
                    }

                    v416 = *v67;
                    if (v416 >= 8)
                    {
                      goto LABEL_629;
                    }

LABEL_636:
                    __ba += v412;
                    v420 = &v818[v809];
                    if (v420 >= v65)
                    {
                      v421 = -v743;
                    }

                    else
                    {
                      v421 = 0;
                    }

                    v67 += v413 + v421;
                    v818 = &v420[v421];
                    v819 += v414;
                    --v415;
                  }

                  while (v415);
                  if (v772)
                  {
                    v422 = &v782[v774];
                    v53 = v770;
                    v423 = v764;
                    if (v422 < v772)
                    {
                      v423 = 0;
                    }

                    v67 = &v785[v770 + v423];
                    v424 = -(v774 * v39);
                    if (v422 < v772)
                    {
                      v424 = 0;
                    }

                    v65 += 2 * v424 + 2 * v774;
                    v782 = &v422[v424];
                    v785 += v770 + v423;
                    v818 = v782;
                  }

                  else
                  {
                    v818 += v774;
                    v53 = v770;
                    v67 += v770;
                  }

                  v819 += 2 * v771;
                  __ba += v769;
                  if (!--v824[0])
                  {
                    goto LABEL_840;
                  }
                }

              case 23:
                v439 = v63;
                v811 = v63;
                v440 = v21;
                v441 = v40;
                v766 = -(v53 * v39);
                v442 = 2 * v439;
                while (1)
                {
                  v443 = v834[0];
                  do
                  {
                    if (!v40)
                    {
                      v444 = 255;
LABEL_681:
                      v445 = v65;
                      if (v21)
                      {
                        v446 = *__ba;
                        if (v446 <= 7)
                        {
                          *v819 = *v818;
                          LODWORD(v40) = v816;
LABEL_687:
                          *__ba = v444;
                          goto LABEL_688;
                        }
                      }

                      else
                      {
                        v446 = 255;
                      }

                      v447 = PDAexclusionPDA(bswap32(*v819) >> 16, v446, bswap32(*v818) >> 16, v444);
                      LODWORD(v21) = v814;
                      LODWORD(v40) = v816;
                      *v819 = bswap32(v447) >> 16;
                      v65 = v445;
                      if (!v814)
                      {
                        goto LABEL_688;
                      }

                      v444 = HIBYTE(v447);
                      goto LABEL_687;
                    }

                    v444 = *v67;
                    if (v444 >= 8)
                    {
                      goto LABEL_681;
                    }

LABEL_688:
                    __ba += v440;
                    v448 = &v818[v811];
                    if (v448 >= v65)
                    {
                      v449 = -v743;
                    }

                    else
                    {
                      v449 = 0;
                    }

                    v67 += v441 + v449;
                    v818 = &v448[v449];
                    v819 += v442;
                    --v443;
                  }

                  while (v443);
                  if (v772)
                  {
                    v450 = &v782[v774];
                    v53 = v770;
                    v451 = v766;
                    if (v450 < v772)
                    {
                      v451 = 0;
                    }

                    v67 = &v785[v770 + v451];
                    v452 = -(v774 * v39);
                    if (v450 < v772)
                    {
                      v452 = 0;
                    }

                    v65 += 2 * v452 + 2 * v774;
                    v782 = &v450[v452];
                    v785 += v770 + v451;
                    v818 = v782;
                  }

                  else
                  {
                    v818 += v774;
                    v53 = v770;
                    v67 += v770;
                  }

                  v819 += 2 * v771;
                  __ba += v769;
                  if (!--v824[0])
                  {
                    goto LABEL_840;
                  }
                }

              case 24:
                v204 = v63;
                v795 = v63;
                v205 = v21;
                v206 = v40;
                v754 = -(v53 * v39);
                v207 = 2 * v204;
                while (1)
                {
                  v208 = v834[0];
                  do
                  {
                    if (!v40)
                    {
                      v209 = 255;
LABEL_299:
                      v210 = v65;
                      if (v21)
                      {
                        v211 = *__ba;
                        if (v211 <= 7)
                        {
                          *v819 = *v818;
                          LODWORD(v40) = v816;
LABEL_305:
                          *__ba = v209;
                          goto LABEL_306;
                        }
                      }

                      else
                      {
                        v211 = 255;
                      }

                      v212 = PDAhuePDA(bswap32(*v819) >> 16, v211, bswap32(*v818) >> 16, v209);
                      LODWORD(v21) = v814;
                      LODWORD(v40) = v816;
                      *v819 = bswap32(v212) >> 16;
                      v65 = v210;
                      if (!v814)
                      {
                        goto LABEL_306;
                      }

                      v209 = HIBYTE(v212);
                      goto LABEL_305;
                    }

                    v209 = *v67;
                    if (v209 >= 8)
                    {
                      goto LABEL_299;
                    }

LABEL_306:
                    __ba += v205;
                    v213 = &v818[v795];
                    if (v213 >= v65)
                    {
                      v214 = -v743;
                    }

                    else
                    {
                      v214 = 0;
                    }

                    v67 += v206 + v214;
                    v818 = &v213[v214];
                    v819 += v207;
                    --v208;
                  }

                  while (v208);
                  if (v772)
                  {
                    v215 = &v782[v774];
                    v53 = v770;
                    v216 = v754;
                    if (v215 < v772)
                    {
                      v216 = 0;
                    }

                    v67 = &v785[v770 + v216];
                    v217 = -(v774 * v39);
                    if (v215 < v772)
                    {
                      v217 = 0;
                    }

                    v65 += 2 * v217 + 2 * v774;
                    v782 = &v215[v217];
                    v785 += v770 + v216;
                    v818 = v782;
                  }

                  else
                  {
                    v818 += v774;
                    v53 = v770;
                    v67 += v770;
                  }

                  v819 += 2 * v771;
                  __ba += v769;
                  if (!--v824[0])
                  {
                    goto LABEL_840;
                  }
                }

              case 25:
                v190 = v63;
                v794 = v63;
                v191 = v21;
                v192 = v40;
                v753 = -(v53 * v39);
                v193 = 2 * v190;
                while (1)
                {
                  v194 = v834[0];
                  do
                  {
                    if (!v40)
                    {
                      v195 = 255;
LABEL_273:
                      v196 = v65;
                      if (v21)
                      {
                        v197 = *__ba;
                        if (v197 <= 7)
                        {
                          *v819 = *v818;
                          LODWORD(v40) = v816;
LABEL_279:
                          *__ba = v195;
                          goto LABEL_280;
                        }
                      }

                      else
                      {
                        v197 = 255;
                      }

                      v198 = PDAsaturationPDA(bswap32(*v819) >> 16, v197, bswap32(*v818) >> 16, v195);
                      LODWORD(v21) = v814;
                      LODWORD(v40) = v816;
                      *v819 = bswap32(v198) >> 16;
                      v65 = v196;
                      if (!v814)
                      {
                        goto LABEL_280;
                      }

                      v195 = HIBYTE(v198);
                      goto LABEL_279;
                    }

                    v195 = *v67;
                    if (v195 >= 8)
                    {
                      goto LABEL_273;
                    }

LABEL_280:
                    __ba += v191;
                    v199 = &v818[v794];
                    if (v199 >= v65)
                    {
                      v200 = -v743;
                    }

                    else
                    {
                      v200 = 0;
                    }

                    v67 += v192 + v200;
                    v818 = &v199[v200];
                    v819 += v193;
                    --v194;
                  }

                  while (v194);
                  if (v772)
                  {
                    v201 = &v782[v774];
                    v53 = v770;
                    v202 = v753;
                    if (v201 < v772)
                    {
                      v202 = 0;
                    }

                    v67 = &v785[v770 + v202];
                    v203 = -(v774 * v39);
                    if (v201 < v772)
                    {
                      v203 = 0;
                    }

                    v65 += 2 * v203 + 2 * v774;
                    v782 = &v201[v203];
                    v785 += v770 + v202;
                    v818 = v782;
                  }

                  else
                  {
                    v818 += v774;
                    v53 = v770;
                    v67 += v770;
                  }

                  v819 += 2 * v771;
                  __ba += v769;
                  if (!--v824[0])
                  {
                    goto LABEL_840;
                  }
                }

              case 26:
                v453 = v63;
                v812 = v63;
                v454 = v21;
                v455 = v40;
                v767 = -(v53 * v39);
                v456 = 2 * v453;
                while (1)
                {
                  v457 = v834[0];
                  do
                  {
                    if (!v40)
                    {
                      v458 = 255;
LABEL_707:
                      v459 = v65;
                      if (v21)
                      {
                        v460 = *__ba;
                        if (v460 <= 7)
                        {
                          *v819 = *v818;
                          LODWORD(v40) = v816;
LABEL_713:
                          *__ba = v458;
                          goto LABEL_714;
                        }
                      }

                      else
                      {
                        v460 = 255;
                      }

                      v461 = PDAluminosityPDA(bswap32(*v818) >> 16, v458, bswap32(*v819) >> 16, v460);
                      LODWORD(v21) = v814;
                      LODWORD(v40) = v816;
                      *v819 = bswap32(v461) >> 16;
                      v65 = v459;
                      if (!v814)
                      {
                        goto LABEL_714;
                      }

                      v458 = HIBYTE(v461);
                      goto LABEL_713;
                    }

                    v458 = *v67;
                    if (v458 >= 8)
                    {
                      goto LABEL_707;
                    }

LABEL_714:
                    __ba += v454;
                    v462 = &v818[v812];
                    if (v462 >= v65)
                    {
                      v463 = -v743;
                    }

                    else
                    {
                      v463 = 0;
                    }

                    v67 += v455 + v463;
                    v818 = &v462[v463];
                    v819 += v456;
                    --v457;
                  }

                  while (v457);
                  if (v772)
                  {
                    v464 = &v782[v774];
                    v53 = v770;
                    v465 = v767;
                    if (v464 < v772)
                    {
                      v465 = 0;
                    }

                    v67 = &v785[v770 + v465];
                    v466 = -(v774 * v39);
                    if (v464 < v772)
                    {
                      v466 = 0;
                    }

                    v65 += 2 * v466 + 2 * v774;
                    v782 = &v464[v466];
                    v785 += v770 + v465;
                    v818 = v782;
                  }

                  else
                  {
                    v818 += v774;
                    v53 = v770;
                    v67 += v770;
                  }

                  v819 += 2 * v771;
                  __ba += v769;
                  if (!--v824[0])
                  {
                    goto LABEL_840;
                  }
                }

              case 27:
                v92 = v63;
                v788 = v63;
                v93 = v21;
                v94 = v40;
                v747 = -(v53 * v39);
                v95 = 2 * v92;
                break;
              default:
                goto LABEL_918;
            }

            break;
          }

LABEL_112:
          v96 = v834[0];
          while (1)
          {
            if (v40)
            {
              v97 = *v67;
              if (v97 < 8)
              {
                goto LABEL_124;
              }
            }

            else
            {
              v97 = 255;
            }

            v98 = v65;
            if (v21)
            {
              v99 = *__ba;
              if (v99 <= 7)
              {
                *v819 = *v818;
                LODWORD(v40) = v816;
LABEL_123:
                *__ba = v97;
                goto LABEL_124;
              }
            }

            else
            {
              v99 = 255;
            }

            v100 = PDAluminosityPDA(bswap32(*v819) >> 16, v99, bswap32(*v818) >> 16, v97);
            LODWORD(v21) = v814;
            LODWORD(v40) = v816;
            *v819 = bswap32(v100) >> 16;
            v65 = v98;
            if (v814)
            {
              v97 = HIBYTE(v100);
              goto LABEL_123;
            }

LABEL_124:
            __ba += v93;
            v101 = &v818[v788];
            if (v101 >= v65)
            {
              v102 = -v743;
            }

            else
            {
              v102 = 0;
            }

            v67 += v94 + v102;
            v818 = &v101[v102];
            v819 += v95;
            if (!--v96)
            {
              if (v772)
              {
                v103 = &v782[v774];
                v53 = v770;
                v104 = v747;
                if (v103 < v772)
                {
                  v104 = 0;
                }

                v67 = &v785[v770 + v104];
                v105 = -(v774 * v39);
                if (v103 < v772)
                {
                  v105 = 0;
                }

                v65 += 2 * v105 + 2 * v774;
                v782 = &v103[v105];
                v785 += v770 + v104;
                v818 = v782;
              }

              else
              {
                v818 += v774;
                v53 = v770;
                v67 += v770;
              }

              v819 += 2 * v771;
              __ba += v769;
              if (!--v824[0])
              {
                goto LABEL_840;
              }

              goto LABEL_112;
            }
          }
        }

        v64 = v63 * v10;
        v769 = v735 - v21 * v10;
        v65 = -1;
        v53 = v39;
        v52 = v743;
        goto LABEL_71;
      }

      v39 = *(v3 + 68);
      LODWORD(v743) = *(v3 + 64);
      v52 = *(v3 + 76) >> 1;
      if (v6)
      {
        v51 = 0;
        v53 = *(v3 + 80);
        LODWORD(v40) = 1;
      }

      else
      {
        v53 = 0;
        LODWORD(v40) = 0;
        v51 = 1;
      }
    }

    v772 = &v17[v52 * v39];
    v21 &= 1u;
    if (v14)
    {
      v774 = v52;
      v814 = v21;
      v816 = v40;
      v63 = 1;
      v782 = v17;
      v742 = v17;
      v787 = v17;
      goto LABEL_60;
    }

    v769 = v735 - (v21 * v10);
    if (v17)
    {
      v68 = v717 % v39;
      v69 = v716 % v743;
      v774 = v52;
      v70 = &v17[v52 * (v717 % v39)];
      v65 = &v70[v743];
      v741 = 0;
      v71 = (v51 & 1) == 0;
      v63 = 1;
      if (v51)
      {
        v72 = v6;
      }

      else
      {
        LODWORD(v40) = 1;
        v72 = &v6[v53 * v68 + v69];
      }

      v782 = &v70[v69];
      v785 = v72;
      if (v71)
      {
        v67 = &v6[v53 * v68 + v69];
      }

      else
      {
        v67 = v6;
      }

      __ba = v736;
      v818 = &v70[v69];
      v819 = v734;
      v746 = v10;
      v64 = v10;
      goto LABEL_88;
    }

    v65 = 0;
    v63 = 1;
    v64 = v10;
LABEL_71:
    v741 = 0;
    v782 = 0;
    v785 = v6;
    v772 = 0;
    v774 = v52 - v64;
    v746 = v10;
    v53 -= v40 * v10;
    v67 = v6;
    __ba = v736;
    v818 = v17;
    v819 = v734;
    goto LABEL_99;
  }

  v15 = *(v3 + 128);
  if ((v15 | 8) == 8)
  {
    if ((*v3 & 0xFF00) == 0x400)
    {
      RGB555_mark_constmask(v3, v8);
    }

    else
    {
      RGB555_mark_pixelmask(v3, v8);
    }

    return 1;
  }

  v22 = *(v3 + 112);
  v23 = *(v3 + 116);
  v24 = (v22 + 15) & 0xFFFFFFF0;
  v25 = v24 * v23;
  if (v25 <= 4096)
  {
    v27 = v834;
    v28 = v3;
    goto LABEL_39;
  }

  v26 = malloc_type_malloc(v25, 0x97CEE3C3uLL);
  if (v26)
  {
    v27 = v26;
    v28 = v737;
    v14 = *(v737 + 136);
    v15 = *(v737 + 128);
LABEL_39:
    CGSConvertBitsToMask(v14, *(v28 + 124), v27, v24, v22, v23, v15);
    v54 = *(v28 + 112);
    v830 = *(v28 + 96);
    v831 = v54;
    v55 = *(v28 + 144);
    v832 = *(v28 + 128);
    v833 = v55;
    v56 = *(v28 + 48);
    v826 = *(v28 + 32);
    v827 = v56;
    v57 = *(v28 + 80);
    v828 = *(v28 + 64);
    v829 = v57;
    v58 = *(v28 + 16);
    *v824 = *v28;
    v825 = v58;
    HIDWORD(v831) = (v22 + 15) & 0xFFFFFFF0;
    *(&v832 + 1) = v27;
    if (BYTE1(v824[0]) << 8 == 1024)
    {
      RGB555_mark_constmask(v824, v740);
    }

    else
    {
      RGB555_mark_pixelmask(v824, v740);
    }

    if (v27 == v834)
    {
      return 1;
    }

    v59 = v27;
    goto LABEL_1262;
  }

  return 1;
}

uint64_t RGB555_image_mark_rgb32(uint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 8);
  v141 = result;
  if (*(result + 40))
  {
    v7 = 0;
  }

  else
  {
    v7 = 255;
  }

  v146 = v7;
  v8 = *(a2 + 2);
  v9 = *(a2 + 4);
  if (v9)
  {
    v131 = *(a2 + 5) - a5;
  }

  else
  {
    v131 = 0;
  }

  v10 = a2[1];
  v130 = *a2;
  v129 = *(a2 + 3) - a5;
  v145 = v9 != 0;
  v12 = *(a2 + 19);
  v11 = *(a2 + 20);
  v13 = *(a2 + 11);
  v126 = *(a2 + 13);
  v14 = *(a2 + 9) + v126 * a4;
  v124 = *(a2 + 6);
  v133 = *(a2 + 7);
  v15 = *(result + 32);
  v16 = v15 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3);
  v17 = *(result + 168);
  v144 = v10;
  v127 = v13;
  v128 = v12;
  v125 = v17;
  if (*(result + 176))
  {
    v138 = 0;
    v18 = 0;
    v123 = *(a2 + 15);
    v121 = ~(-1 << v13);
    v122 = *(a2 + 17);
    v120 = v13 - 4;
    v119 = -v12;
    v19 = (v16 - 4);
    v142 = 32 - v10;
    v117 = v11 + 16 * a3 + 8;
    v118 = a5;
    while (1)
    {
      if (((v122 - v14) | (v14 - v123)) < 0)
      {
        v24 = 0;
        v139 = 0;
      }

      else
      {
        v20 = ((v14 & v121) >> v120) & 0xF;
        v21 = weights_21890[v20];
        v22 = (v20 - 7) >= 9;
        v23 = v119;
        if (!v22)
        {
          v23 = v12;
        }

        v139 = v23;
        v24 = v21 & 0xF;
      }

      if (v17)
      {
        v25 = v17 + 16 * v133;
        v138 = v25 + 16;
        v18 = (v25 + v124);
        v26 = (v133 + 1) & 0xF;
        if (v133 + 1 <= 0)
        {
          v26 = -(-(v133 + 1) & 0xF);
        }

        v133 = v26;
      }

      v27 = *(v141 + 32) + (v14 >> v13) * v12;
      v136 = a6;
      v134 = v14;
      if (v130 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v28 = v117;
        v29 = v118;
        while (1)
        {
          v30 = *(v28 - 1);
          v31 = *v28;
          v32 = v27 + v30;
          if (v19 >= v27 + v30)
          {
            v33 = (v27 + v30);
          }

          else
          {
            v33 = v19;
          }

          if (v33 < v15)
          {
            v33 = v15;
          }

          v34 = *v33;
          v35 = v31 & 0xF;
          if ((v31 & 0xF) != 0)
          {
            break;
          }

          if (v24)
          {
            v46 = (v32 + v139);
            if (v19 < v32 + v139)
            {
              v46 = v19;
            }

            if (v46 < v15)
            {
              v46 = v15;
            }

            v47 = BLEND8_21892[v24];
            v44 = v34 - ((v47 & v34) >> v24);
            v45 = (v47 & *v46) >> v24;
            goto LABEL_49;
          }

LABEL_50:
          v48 = (v34 << v10) | (v34 >> v142);
          v49 = v48 | v146;
          if (v18)
          {
            v50 = *v18;
            if ((v18 + 1) < v138)
            {
              ++v18;
            }

            else
            {
              v18 -= 15;
            }

            if (v6 == 255)
            {
              result = DITHERRGBA32(v49, v50);
            }

            else
            {
              result = DITHERRGBA32M(v49, v50, v6);
            }

            LOBYTE(v10) = v144;
          }

          else
          {
            v51 = (v48 >> 17) & 0x7C00 | (v48 >> 14) & 0x3E0 | (v48 >> 11) & 0xFFFFFF | ((v49 >> 3) << 27) | (v49 >> 5 << 24);
            v52 = ((v48 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v48 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
            v53 = (v49 & 0xFF00FF) * v6 + 65537 + ((((v49 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
            v54 = (v52 >> 17) & 0x7C00 | (v52 >> 11) & 0xFFFFFF | ((v53 >> 11) << 27) | ((v49 * v6 + 1 + ((v49 * v6) >> 8)) >> 13 << 24) | (32 * (v53 >> 27));
            if (v6 == 255)
            {
              result = v51;
            }

            else
            {
              result = v54;
            }

            v18 = 0;
          }

          *v8 = bswap32(result) >> 16;
          if (v9)
          {
            *v9 = BYTE3(result);
          }

          v28 += 2;
          ++v8;
          v9 += v145;
          if (!--v29)
          {
            goto LABEL_121;
          }
        }

        v36 = (v32 + (v31 >> 4));
        if (v19 < v36)
        {
          v36 = v19;
        }

        if (v36 < v15)
        {
          v36 = v15;
        }

        v37 = *v36;
        if (v24)
        {
          v38 = (v32 + v139);
          if (v19 >= v38)
          {
            v39 = v38;
          }

          else
          {
            v39 = v19;
          }

          if (v39 < v15)
          {
            v39 = v15;
          }

          v40 = *v39;
          v41 = (v38 + (v31 >> 4));
          if (v19 < v41)
          {
            v41 = v19;
          }

          if (v41 < v15)
          {
            v41 = v15;
          }

          v42 = BLEND8_21892[v24];
          v34 = v34 - ((v42 & v34) >> v24) + ((v42 & v40) >> v24);
          v37 = v37 - ((v42 & v37) >> v24) + ((v42 & *v41) >> v24);
        }

        v43 = BLEND8_21892[*v28 & 0xF];
        v44 = v34 - ((v43 & v34) >> v35);
        v45 = (v43 & v37) >> v35;
LABEL_49:
        v34 = v44 + v45;
        goto LABEL_50;
      }

LABEL_121:
      v12 = v128;
      v8 += v129;
      v9 += v131;
      LOBYTE(v13) = v127;
      v14 = v134 + v126;
      a6 = v136 - 1;
      v17 = v125;
      if (v136 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_121;
    }

    v56 = v117;
    v55 = v118;
    while (1)
    {
      v57 = *(v56 - 1);
      v58 = *v56;
      v59 = v27 + v57;
      if (v19 >= v27 + v57)
      {
        v60 = (v27 + v57);
      }

      else
      {
        v60 = v19;
      }

      if (v60 < v15)
      {
        v60 = v15;
      }

      v61 = *v60;
      v62 = v58 & 0xF;
      if ((v58 & 0xF) != 0)
      {
        v63 = (v59 + (v58 >> 4));
        if (v19 < v63)
        {
          v63 = v19;
        }

        if (v63 < v15)
        {
          v63 = v15;
        }

        v64 = *v63;
        if (v24)
        {
          v65 = (v59 + v139);
          if (v19 >= v65)
          {
            v66 = v65;
          }

          else
          {
            v66 = v19;
          }

          if (v66 < v15)
          {
            v66 = v15;
          }

          v67 = *v66;
          v68 = (v65 + (v58 >> 4));
          if (v19 < v68)
          {
            v68 = v19;
          }

          if (v68 < v15)
          {
            v68 = v15;
          }

          v69 = BLEND8_21892[v24];
          v61 = v61 - ((v69 & v61) >> v24) + ((v69 & v67) >> v24);
          v64 = v64 - ((v69 & v64) >> v24) + ((v69 & *v68) >> v24);
        }

        v70 = BLEND8_21892[*v56 & 0xF];
        v71 = v61 - ((v70 & v61) >> v62);
        v72 = (v70 & v64) >> v62;
      }

      else
      {
        if (!v24)
        {
          goto LABEL_97;
        }

        v73 = (v59 + v139);
        if (v19 < v59 + v139)
        {
          v73 = v19;
        }

        if (v73 < v15)
        {
          v73 = v15;
        }

        v74 = BLEND8_21892[v24];
        v71 = v61 - ((v74 & v61) >> v24);
        v72 = (v74 & *v73) >> v24;
      }

      v61 = v71 + v72;
LABEL_97:
      v75 = (v61 << v10) | (v61 >> v142);
      v76 = v75 | v146;
      if (v18)
      {
        v77 = *v18;
        if ((v18 + 1) < v138)
        {
          ++v18;
        }

        else
        {
          v18 -= 15;
        }

        if (v6 == 255)
        {
          result = DITHERRGBA32(v76, v77);
        }

        else
        {
          result = DITHERRGBA32M(v76, v77, v6);
        }

        LOBYTE(v10) = v144;
      }

      else
      {
        v78 = (v75 >> 17) & 0x7C00 | (v75 >> 14) & 0x3E0 | (v75 >> 11) & 0xFFFFFF | ((v76 >> 3) << 27) | (v76 >> 5 << 24);
        v79 = ((v75 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v75 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
        v80 = (v76 & 0xFF00FF) * v6 + 65537 + ((((v76 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
        v81 = (v79 >> 17) & 0x7C00 | (v79 >> 11) & 0xFFFFFF | ((v80 >> 11) << 27) | ((v76 * v6 + 1 + ((v76 * v6) >> 8)) >> 13 << 24) | (32 * (v80 >> 27));
        if (v6 == 255)
        {
          result = v78;
        }

        else
        {
          result = v81;
        }

        v18 = 0;
      }

      v82 = result >> 27;
      if (v9)
      {
        if (result >> 27 == 31)
        {
          v83 = BYTE3(result);
          *v8 = bswap32(result) >> 16;
LABEL_116:
          *v9 = v83;
          goto LABEL_120;
        }

        if (v82)
        {
          result = PDAplusDAM(result, SBYTE3(result), bswap32(*v8) >> 16, *v9, BYTE3(result) ^ 0xFF);
          LOBYTE(v10) = v144;
          *v8 = bswap32(result) >> 16;
          v83 = BYTE3(result);
          goto LABEL_116;
        }
      }

      else
      {
        if (result >> 27 == 31)
        {
          v84 = bswap32(result) >> 16;
LABEL_119:
          *v8 = v84;
          goto LABEL_120;
        }

        if (v82)
        {
          result = PDplusDM(result, bswap32(*v8) >> 16, ~result >> 24);
          LOBYTE(v10) = v144;
          LOWORD(v84) = __rev16(result);
          goto LABEL_119;
        }
      }

LABEL_120:
      v56 += 2;
      ++v8;
      v9 += v145;
      if (!--v55)
      {
        goto LABEL_121;
      }
    }
  }

  v85 = 0;
  v86 = 0;
  v143 = (v11 + 16 * a3);
  v87 = v16 - 4;
  v88 = 32 - v10;
  v140 = a5;
  do
  {
    if (v17)
    {
      v89 = v17 + 16 * v133;
      v85 = v89 + 16;
      v86 = (v89 + v124);
      v90 = (v133 + 1) & 0xF;
      if (v133 + 1 <= 0)
      {
        v90 = -(-(v133 + 1) & 0xF);
      }

      v133 = v90;
    }

    v91 = *(v141 + 32) + (v14 >> v13) * v12;
    v137 = a6;
    v135 = v14;
    if (v130 != 1)
    {
      v103 = v143;
      v104 = v140;
      if (a5 < 1)
      {
        goto LABEL_180;
      }

      while (1)
      {
        v105 = *v103;
        v103 += 2;
        v106 = (v91 + v105);
        if (v87 < v91 + v105)
        {
          v106 = v87;
        }

        if (v106 < *(v141 + 32))
        {
          v106 = *(v141 + 32);
        }

        v107 = (*v106 << v10) | (*v106 >> v88);
        v108 = v107 | v146;
        if (v86)
        {
          v109 = *v86;
          if ((v86 + 1) < v85)
          {
            ++v86;
          }

          else
          {
            v86 -= 15;
          }

          if (v6 == 255)
          {
            result = DITHERRGBA32(v108, v109);
          }

          else
          {
            result = DITHERRGBA32M(v108, v109, v6);
          }

          LOBYTE(v10) = v144;
        }

        else
        {
          v110 = (v107 >> 17) & 0x7C00 | (v107 >> 14) & 0x3E0 | (v107 >> 11) & 0xFFFFFF | ((v108 >> 3) << 27) | (v108 >> 5 << 24);
          v111 = ((v107 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v107 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v112 = (v108 & 0xFF00FF) * v6 + 65537 + ((((v108 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v113 = (v111 >> 17) & 0x7C00 | (v111 >> 11) & 0xFFFFFF | ((v112 >> 11) << 27) | ((v108 * v6 + 1 + ((v108 * v6) >> 8)) >> 13 << 24) | (32 * (v112 >> 27));
          if (v6 == 255)
          {
            result = v110;
          }

          else
          {
            result = v113;
          }

          v86 = 0;
        }

        v114 = result >> 27;
        if (v9)
        {
          if (result >> 27 == 31)
          {
            v115 = BYTE3(result);
            *v8 = bswap32(result) >> 16;
LABEL_175:
            *v9 = v115;
            goto LABEL_179;
          }

          if (v114)
          {
            result = PDAplusDAM(result, SBYTE3(result), bswap32(*v8) >> 16, *v9, BYTE3(result) ^ 0xFF);
            LOBYTE(v10) = v144;
            *v8 = bswap32(result) >> 16;
            v115 = BYTE3(result);
            goto LABEL_175;
          }
        }

        else
        {
          if (result >> 27 == 31)
          {
            v116 = bswap32(result) >> 16;
LABEL_178:
            *v8 = v116;
            goto LABEL_179;
          }

          if (v114)
          {
            result = PDplusDM(result, bswap32(*v8) >> 16, ~result >> 24);
            LOBYTE(v10) = v144;
            LOWORD(v116) = __rev16(result);
            goto LABEL_178;
          }
        }

LABEL_179:
        ++v8;
        v9 += v145;
        if (!--v104)
        {
          goto LABEL_180;
        }
      }
    }

    if (a5 >= 1)
    {
      v92 = v143;
      v93 = v140;
      do
      {
        v94 = *v92;
        v92 += 2;
        v95 = (v91 + v94);
        if (v87 < v91 + v94)
        {
          v95 = v87;
        }

        if (v95 < *(v141 + 32))
        {
          v95 = *(v141 + 32);
        }

        v96 = (*v95 << v10) | (*v95 >> v88);
        v97 = v96 | v146;
        if (v86)
        {
          v98 = *v86;
          if ((v86 + 1) < v85)
          {
            ++v86;
          }

          else
          {
            v86 -= 15;
          }

          if (v6 == 255)
          {
            result = DITHERRGBA32(v97, v98);
          }

          else
          {
            result = DITHERRGBA32M(v97, v98, v6);
          }

          LOBYTE(v10) = v144;
        }

        else
        {
          v99 = (v96 >> 17) & 0x7C00 | (v96 >> 14) & 0x3E0 | (v96 >> 11) & 0xFFFFFF | ((v97 >> 3) << 27) | (v97 >> 5 << 24);
          v100 = ((v96 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v96 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v101 = (v97 & 0xFF00FF) * v6 + 65537 + ((((v97 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v102 = (v100 >> 17) & 0x7C00 | (v100 >> 11) & 0xFFFFFF | ((v101 >> 11) << 27) | ((v97 * v6 + 1 + ((v97 * v6) >> 8)) >> 13 << 24) | (32 * (v101 >> 27));
          if (v6 == 255)
          {
            result = v99;
          }

          else
          {
            result = v102;
          }

          v86 = 0;
        }

        *v8 = bswap32(result) >> 16;
        if (v9)
        {
          *v9 = BYTE3(result);
        }

        ++v8;
        v9 += v145;
        --v93;
      }

      while (v93);
    }

LABEL_180:
    v12 = v128;
    v8 += v129;
    v9 += v131;
    LOBYTE(v13) = v127;
    v14 = v135 + v126;
    a6 = v137 - 1;
    v17 = v125;
  }

  while (v137 != 1);
  return result;
}

uint64_t RGB555_image_mark_RGB32(uint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 8);
  v143 = result;
  if (*(result + 40))
  {
    v7 = 0;
  }

  else
  {
    v7 = 255;
  }

  v148 = v7;
  v8 = *(a2 + 2);
  v9 = *(a2 + 4);
  if (v9)
  {
    v133 = *(a2 + 5) - a5;
  }

  else
  {
    v133 = 0;
  }

  v10 = a2[1];
  v132 = *a2;
  v131 = *(a2 + 3) - a5;
  v147 = v9 != 0;
  v12 = *(a2 + 19);
  v11 = *(a2 + 20);
  v13 = *(a2 + 11);
  v128 = *(a2 + 13);
  v14 = *(a2 + 9) + v128 * a4;
  v126 = *(a2 + 6);
  v135 = *(a2 + 7);
  v15 = *(result + 32);
  v16 = v15 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3);
  v17 = *(result + 168);
  v146 = v10;
  v129 = v13;
  v130 = v12;
  v127 = v17;
  if (*(result + 176))
  {
    v140 = 0;
    v18 = 0;
    v125 = *(a2 + 15);
    v123 = ~(-1 << v13);
    v124 = *(a2 + 17);
    v122 = v13 - 4;
    v121 = -v12;
    v19 = (v16 - 4);
    v144 = 32 - v10;
    v119 = v11 + 16 * a3 + 8;
    v120 = a5;
    while (1)
    {
      if (((v124 - v14) | (v14 - v125)) < 0)
      {
        v24 = 0;
        v141 = 0;
      }

      else
      {
        v20 = ((v14 & v123) >> v122) & 0xF;
        v21 = weights_21890[v20];
        v22 = (v20 - 7) >= 9;
        v23 = v121;
        if (!v22)
        {
          v23 = v12;
        }

        v141 = v23;
        v24 = v21 & 0xF;
      }

      if (v17)
      {
        v25 = v17 + 16 * v135;
        v140 = v25 + 16;
        v18 = (v25 + v126);
        v26 = (v135 + 1) & 0xF;
        if (v135 + 1 <= 0)
        {
          v26 = -(-(v135 + 1) & 0xF);
        }

        v135 = v26;
      }

      v27 = *(v143 + 32) + (v14 >> v13) * v12;
      v138 = a6;
      v136 = v14;
      if (v132 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v28 = v119;
        v29 = v120;
        while (1)
        {
          v30 = *(v28 - 1);
          v31 = *v28;
          v32 = v27 + v30;
          if (v19 >= v27 + v30)
          {
            v33 = (v27 + v30);
          }

          else
          {
            v33 = v19;
          }

          if (v33 < v15)
          {
            v33 = v15;
          }

          v34 = bswap32(*v33);
          v35 = v31 & 0xF;
          if ((v31 & 0xF) != 0)
          {
            break;
          }

          if (v24)
          {
            v46 = (v32 + v141);
            if (v19 < v32 + v141)
            {
              v46 = v19;
            }

            if (v46 < v15)
            {
              v46 = v15;
            }

            v47 = BLEND8_21892[v24];
            v44 = v34 - ((v47 & v34) >> v24);
            v45 = (bswap32(*v46) & v47) >> v24;
            goto LABEL_49;
          }

LABEL_50:
          v48 = (v34 << v10) | (v34 >> v144);
          v49 = v48 | v148;
          if (v18)
          {
            v50 = *v18;
            if ((v18 + 1) < v140)
            {
              ++v18;
            }

            else
            {
              v18 -= 15;
            }

            if (v6 == 255)
            {
              result = DITHERRGBA32(v49, v50);
            }

            else
            {
              result = DITHERRGBA32M(v49, v50, v6);
            }

            LOBYTE(v10) = v146;
          }

          else
          {
            v51 = (v48 >> 17) & 0x7C00 | (v48 >> 14) & 0x3E0 | (v48 >> 11) & 0xFFFFFF | ((v49 >> 3) << 27) | (v49 >> 5 << 24);
            v52 = ((v48 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v48 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
            v53 = (v49 & 0xFF00FF) * v6 + 65537 + ((((v49 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
            v54 = (v52 >> 17) & 0x7C00 | (v52 >> 11) & 0xFFFFFF | ((v53 >> 11) << 27) | ((v49 * v6 + 1 + ((v49 * v6) >> 8)) >> 13 << 24) | (32 * (v53 >> 27));
            if (v6 == 255)
            {
              result = v51;
            }

            else
            {
              result = v54;
            }

            v18 = 0;
          }

          *v8 = bswap32(result) >> 16;
          if (v9)
          {
            *v9 = BYTE3(result);
          }

          v28 += 2;
          ++v8;
          v9 += v147;
          if (!--v29)
          {
            goto LABEL_121;
          }
        }

        v36 = (v32 + (v31 >> 4));
        if (v19 < v36)
        {
          v36 = v19;
        }

        if (v36 < v15)
        {
          v36 = v15;
        }

        v37 = bswap32(*v36);
        if (v24)
        {
          v38 = (v32 + v141);
          if (v19 >= v38)
          {
            v39 = v38;
          }

          else
          {
            v39 = v19;
          }

          if (v39 < v15)
          {
            v39 = v15;
          }

          v40 = bswap32(*v39);
          v41 = (v38 + (v31 >> 4));
          if (v19 < v41)
          {
            v41 = v19;
          }

          if (v41 < v15)
          {
            v41 = v15;
          }

          v42 = BLEND8_21892[v24];
          v34 = v34 - ((v42 & v34) >> v24) + ((v42 & v40) >> v24);
          v37 = v37 - ((v42 & v37) >> v24) + ((bswap32(*v41) & v42) >> v24);
        }

        v43 = BLEND8_21892[*v28 & 0xF];
        v44 = v34 - ((v43 & v34) >> v35);
        v45 = (v43 & v37) >> v35;
LABEL_49:
        v34 = v44 + v45;
        goto LABEL_50;
      }

LABEL_121:
      v12 = v130;
      v8 += v131;
      v9 += v133;
      LOBYTE(v13) = v129;
      v14 = v136 + v128;
      a6 = v138 - 1;
      v17 = v127;
      if (v138 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_121;
    }

    v56 = v119;
    v55 = v120;
    while (1)
    {
      v57 = *(v56 - 1);
      v58 = *v56;
      v59 = v27 + v57;
      if (v19 >= v27 + v57)
      {
        v60 = (v27 + v57);
      }

      else
      {
        v60 = v19;
      }

      if (v60 < v15)
      {
        v60 = v15;
      }

      v61 = bswap32(*v60);
      v62 = v58 & 0xF;
      if ((v58 & 0xF) != 0)
      {
        v63 = (v59 + (v58 >> 4));
        if (v19 < v63)
        {
          v63 = v19;
        }

        if (v63 < v15)
        {
          v63 = v15;
        }

        v64 = bswap32(*v63);
        if (v24)
        {
          v65 = (v59 + v141);
          if (v19 >= v65)
          {
            v66 = v65;
          }

          else
          {
            v66 = v19;
          }

          if (v66 < v15)
          {
            v66 = v15;
          }

          v67 = bswap32(*v66);
          v68 = (v65 + (v58 >> 4));
          if (v19 < v68)
          {
            v68 = v19;
          }

          if (v68 < v15)
          {
            v68 = v15;
          }

          v69 = BLEND8_21892[v24];
          v61 = v61 - ((v69 & v61) >> v24) + ((v69 & v67) >> v24);
          v64 = v64 - ((v69 & v64) >> v24) + ((bswap32(*v68) & v69) >> v24);
        }

        v70 = BLEND8_21892[*v56 & 0xF];
        v71 = v61 - ((v70 & v61) >> v62);
        v72 = (v70 & v64) >> v62;
      }

      else
      {
        if (!v24)
        {
          goto LABEL_97;
        }

        v73 = (v59 + v141);
        if (v19 < v59 + v141)
        {
          v73 = v19;
        }

        if (v73 < v15)
        {
          v73 = v15;
        }

        v74 = BLEND8_21892[v24];
        v71 = v61 - ((v74 & v61) >> v24);
        v72 = (bswap32(*v73) & v74) >> v24;
      }

      v61 = v71 + v72;
LABEL_97:
      v75 = (v61 << v10) | (v61 >> v144);
      v76 = v75 | v148;
      if (v18)
      {
        v77 = *v18;
        if ((v18 + 1) < v140)
        {
          ++v18;
        }

        else
        {
          v18 -= 15;
        }

        if (v6 == 255)
        {
          result = DITHERRGBA32(v76, v77);
        }

        else
        {
          result = DITHERRGBA32M(v76, v77, v6);
        }

        LOBYTE(v10) = v146;
      }

      else
      {
        v78 = (v75 >> 17) & 0x7C00 | (v75 >> 14) & 0x3E0 | (v75 >> 11) & 0xFFFFFF | ((v76 >> 3) << 27) | (v76 >> 5 << 24);
        v79 = ((v75 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v75 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
        v80 = (v76 & 0xFF00FF) * v6 + 65537 + ((((v76 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
        v81 = (v79 >> 17) & 0x7C00 | (v79 >> 11) & 0xFFFFFF | ((v80 >> 11) << 27) | ((v76 * v6 + 1 + ((v76 * v6) >> 8)) >> 13 << 24) | (32 * (v80 >> 27));
        if (v6 == 255)
        {
          result = v78;
        }

        else
        {
          result = v81;
        }

        v18 = 0;
      }

      v82 = result >> 27;
      if (v9)
      {
        if (result >> 27 == 31)
        {
          v83 = BYTE3(result);
          *v8 = bswap32(result) >> 16;
LABEL_116:
          *v9 = v83;
          goto LABEL_120;
        }

        if (v82)
        {
          result = PDAplusDAM(result, SBYTE3(result), bswap32(*v8) >> 16, *v9, BYTE3(result) ^ 0xFF);
          LOBYTE(v10) = v146;
          *v8 = bswap32(result) >> 16;
          v83 = BYTE3(result);
          goto LABEL_116;
        }
      }

      else
      {
        if (result >> 27 == 31)
        {
          v84 = bswap32(result) >> 16;
LABEL_119:
          *v8 = v84;
          goto LABEL_120;
        }

        if (v82)
        {
          result = PDplusDM(result, bswap32(*v8) >> 16, ~result >> 24);
          LOBYTE(v10) = v146;
          LOWORD(v84) = __rev16(result);
          goto LABEL_119;
        }
      }

LABEL_120:
      v56 += 2;
      ++v8;
      v9 += v147;
      if (!--v55)
      {
        goto LABEL_121;
      }
    }
  }

  v85 = 0;
  v86 = 0;
  v145 = (v11 + 16 * a3);
  v87 = (v16 - 4);
  v88 = 32 - v10;
  v142 = a5;
  do
  {
    if (v17)
    {
      v89 = v17 + 16 * v135;
      v85 = v89 + 16;
      v86 = (v89 + v126);
      v90 = (v135 + 1) & 0xF;
      if (v135 + 1 <= 0)
      {
        v90 = -(-(v135 + 1) & 0xF);
      }

      v135 = v90;
    }

    v91 = *(v143 + 32) + (v14 >> v13) * v12;
    v139 = a6;
    v137 = v14;
    if (v132 != 1)
    {
      v104 = v145;
      v105 = v142;
      if (a5 < 1)
      {
        goto LABEL_180;
      }

      while (1)
      {
        v106 = *v104;
        v104 += 2;
        v107 = (v91 + v106);
        if (v87 < v91 + v106)
        {
          v107 = v87;
        }

        if (v107 < *(v143 + 32))
        {
          v107 = *(v143 + 32);
        }

        v108 = bswap32(*v107);
        v109 = (v108 << v10) | (v108 >> v88);
        v110 = v109 | v148;
        if (v86)
        {
          v111 = *v86;
          if ((v86 + 1) < v85)
          {
            ++v86;
          }

          else
          {
            v86 -= 15;
          }

          if (v6 == 255)
          {
            result = DITHERRGBA32(v110, v111);
          }

          else
          {
            result = DITHERRGBA32M(v110, v111, v6);
          }

          LOBYTE(v10) = v146;
        }

        else
        {
          v112 = (v109 >> 17) & 0x7C00 | (v109 >> 14) & 0x3E0 | (v109 >> 11) & 0xFFFFFF | ((v110 >> 3) << 27) | (v110 >> 5 << 24);
          v113 = ((v109 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v109 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v114 = (v110 & 0xFF00FF) * v6 + 65537 + ((((v110 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v115 = (v113 >> 17) & 0x7C00 | (v113 >> 11) & 0xFFFFFF | ((v114 >> 11) << 27) | ((v110 * v6 + 1 + ((v110 * v6) >> 8)) >> 13 << 24) | (32 * (v114 >> 27));
          if (v6 == 255)
          {
            result = v112;
          }

          else
          {
            result = v115;
          }

          v86 = 0;
        }

        v116 = result >> 27;
        if (v9)
        {
          if (result >> 27 == 31)
          {
            v117 = BYTE3(result);
            *v8 = bswap32(result) >> 16;
LABEL_175:
            *v9 = v117;
            goto LABEL_179;
          }

          if (v116)
          {
            result = PDAplusDAM(result, SBYTE3(result), bswap32(*v8) >> 16, *v9, BYTE3(result) ^ 0xFF);
            LOBYTE(v10) = v146;
            *v8 = bswap32(result) >> 16;
            v117 = BYTE3(result);
            goto LABEL_175;
          }
        }

        else
        {
          if (result >> 27 == 31)
          {
            v118 = bswap32(result) >> 16;
LABEL_178:
            *v8 = v118;
            goto LABEL_179;
          }

          if (v116)
          {
            result = PDplusDM(result, bswap32(*v8) >> 16, ~result >> 24);
            LOBYTE(v10) = v146;
            LOWORD(v118) = __rev16(result);
            goto LABEL_178;
          }
        }

LABEL_179:
        ++v8;
        v9 += v147;
        if (!--v105)
        {
          goto LABEL_180;
        }
      }
    }

    if (a5 >= 1)
    {
      v92 = v145;
      v93 = v142;
      do
      {
        v94 = *v92;
        v92 += 2;
        v95 = (v91 + v94);
        if (v87 < v91 + v94)
        {
          v95 = v87;
        }

        if (v95 < *(v143 + 32))
        {
          v95 = *(v143 + 32);
        }

        v96 = bswap32(*v95);
        v97 = (v96 << v10) | (v96 >> v88);
        v98 = v97 | v148;
        if (v86)
        {
          v99 = *v86;
          if ((v86 + 1) < v85)
          {
            ++v86;
          }

          else
          {
            v86 -= 15;
          }

          if (v6 == 255)
          {
            result = DITHERRGBA32(v98, v99);
          }

          else
          {
            result = DITHERRGBA32M(v98, v99, v6);
          }

          LOBYTE(v10) = v146;
        }

        else
        {
          v100 = (v97 >> 17) & 0x7C00 | (v97 >> 14) & 0x3E0 | (v97 >> 11) & 0xFFFFFF | ((v98 >> 3) << 27) | (v98 >> 5 << 24);
          v101 = ((v97 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v97 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v102 = (v98 & 0xFF00FF) * v6 + 65537 + ((((v98 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v103 = (v101 >> 17) & 0x7C00 | (v101 >> 11) & 0xFFFFFF | ((v102 >> 11) << 27) | ((v98 * v6 + 1 + ((v98 * v6) >> 8)) >> 13 << 24) | (32 * (v102 >> 27));
          if (v6 == 255)
          {
            result = v100;
          }

          else
          {
            result = v103;
          }

          v86 = 0;
        }

        *v8 = bswap32(result) >> 16;
        if (v9)
        {
          *v9 = BYTE3(result);
        }

        ++v8;
        v9 += v147;
        --v93;
      }

      while (v93);
    }

LABEL_180:
    v12 = v130;
    v8 += v131;
    v9 += v133;
    LOBYTE(v13) = v129;
    v14 = v137 + v128;
    a6 = v139 - 1;
    v17 = v127;
  }

  while (v139 != 1);
  return result;
}

uint64_t RGB555_image_mark_RGB24(uint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  v141 = result;
  v6 = *(a2 + 8);
  v7 = *(a2 + 2);
  v8 = *(a2 + 4);
  if (v8)
  {
    v132 = *(a2 + 5) - a5;
  }

  else
  {
    v132 = 0;
  }

  v131 = *a2;
  v130 = *(a2 + 3) - a5;
  v142 = v8 != 0;
  v10 = *(a2 + 19);
  v9 = *(a2 + 20);
  v11 = *(a2 + 11);
  v127 = *(a2 + 13);
  v12 = *(a2 + 9) + v127 * a4;
  v124 = *(a2 + 6);
  v135 = *(a2 + 7);
  v13 = *(result + 32);
  v14 = &v13[(*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3)];
  v15 = *(result + 168);
  v125 = a5;
  v126 = v15;
  v128 = v11;
  v129 = v10;
  if (*(result + 176))
  {
    v138 = 0;
    v16 = 0;
    v123 = *(a2 + 15);
    v121 = ~(-1 << v11);
    v122 = *(a2 + 17);
    v120 = v11 - 4;
    v17 = v14 - 3;
    v118 = v9 + 16 * a3 + 8;
    v119 = -v10;
    while ((((v122 - v12) | (v12 - v123)) & 0x8000000000000000) == 0)
    {
      v18 = ((v12 & v121) >> v120) & 0xF;
      v19 = weights_21890[v18];
      v20 = (v18 - 7) >= 9;
      v21 = v119;
      if (!v20)
      {
        v21 = v10;
      }

      v139 = v21;
      v22 = v19 & 0xF;
      if (v15)
      {
        goto LABEL_10;
      }

LABEL_13:
      v25 = *(v141 + 32) + (v12 >> v11) * v10;
      v136 = a6;
      v134 = v12;
      if (v131 != 1)
      {
        if (a5 < 1)
        {
          goto LABEL_114;
        }

        v52 = v118;
        v53 = v125;
        while (2)
        {
          v54 = *(v52 - 1);
          v55 = *v52;
          v56 = v25 + v54;
          if (v17 >= v25 + v54)
          {
            v57 = (v25 + v54);
          }

          else
          {
            v57 = v17;
          }

          if (v57 < v13)
          {
            v57 = v13;
          }

          v58 = (*v57 << 24) | (v57[1] << 16) | (v57[2] << 8);
          v59 = v55 & 0xF;
          if ((v55 & 0xF) != 0)
          {
            v60 = (v56 + (v55 >> 4));
            if (v17 < v60)
            {
              v60 = v17;
            }

            if (v60 < v13)
            {
              v60 = v13;
            }

            v61 = (*v60 << 24) | (v60[1] << 16) | (v60[2] << 8);
            if (v22)
            {
              v62 = (v56 + v139);
              if (v17 >= v62)
              {
                v63 = v62;
              }

              else
              {
                v63 = v17;
              }

              if (v63 < v13)
              {
                v63 = v13;
              }

              v64 = (*v63 << 24) | (v63[1] << 16) | (v63[2] << 8);
              v65 = &v62[v55 >> 4];
              if (v17 < v65)
              {
                v65 = v17;
              }

              if (v65 < v13)
              {
                v65 = v13;
              }

              v66 = BLEND8_21892[v22];
              v58 = v58 - ((v66 & v58) >> v22) + ((v66 & v64) >> v22);
              v61 = v61 - ((v66 & v61) >> v22) + ((((*v65 << 24) | (v65[1] << 16) | (v65[2] << 8)) & v66) >> v22);
            }

            v67 = BLEND8_21892[*v52 & 0xF];
            v68 = v58 - ((v67 & v58) >> v59);
            v69 = (v67 & v61) >> v59;
            goto LABEL_90;
          }

          if (v22)
          {
            v70 = (v56 + v139);
            if (v17 < v56 + v139)
            {
              v70 = v17;
            }

            if (v70 < v13)
            {
              v70 = v13;
            }

            v71 = BLEND8_21892[v22];
            v68 = v58 - ((v71 & v58) >> v22);
            v69 = (((*v70 << 24) | (v70[1] << 16) | (v70[2] << 8)) & v71) >> v22;
LABEL_90:
            v58 = v68 + v69;
          }

          v72 = v58 | 0xFF;
          if (v16)
          {
            v73 = *v16;
            if ((v16 + 1) < v138)
            {
              ++v16;
            }

            else
            {
              v16 -= 15;
            }

            if (v6 == 255)
            {
              result = DITHERRGBA32(v72, v73);
            }

            else
            {
              result = DITHERRGBA32M(v72, v73, v6);
            }
          }

          else
          {
            v74 = (v58 >> 17) & 0x7C00 | (v58 >> 14) & 0x3E0 | (v58 >> 11) | 0xFF000000;
            v75 = ((v58 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v58 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
            v76 = (v72 & 0xFF00FF) * v6 + 65537 + ((((v72 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
            v77 = (v75 >> 17) & 0x7C00 | (v75 >> 11) & 0xFFFFFF | ((v76 >> 11) << 27) | ((v72 * v6 + 1 + ((v72 * v6) >> 8)) >> 13 << 24) | (32 * (v76 >> 27));
            if (v6 == 255)
            {
              result = v74;
            }

            else
            {
              result = v77;
            }

            v16 = 0;
          }

          v78 = result >> 27;
          if (v8)
          {
            if (result >> 27 == 31)
            {
              v79 = BYTE3(result);
              *v7 = bswap32(result) >> 16;
              goto LABEL_109;
            }

            if (v78)
            {
              result = PDAplusDAM(result, SBYTE3(result), bswap32(*v7) >> 16, *v8, BYTE3(result) ^ 0xFF);
              *v7 = bswap32(result) >> 16;
              v79 = BYTE3(result);
LABEL_109:
              *v8 = v79;
            }
          }

          else
          {
            if (result >> 27 == 31)
            {
              v80 = bswap32(result) >> 16;
            }

            else
            {
              if (!v78)
              {
                goto LABEL_113;
              }

              result = PDplusDM(result, bswap32(*v7) >> 16, ~result >> 24);
              LOWORD(v80) = __rev16(result);
            }

            *v7 = v80;
          }

LABEL_113:
          v52 += 2;
          ++v7;
          v8 += v142;
          if (!--v53)
          {
            goto LABEL_114;
          }

          continue;
        }
      }

      if (a5 >= 1)
      {
        v26 = v118;
        v27 = v125;
        while (1)
        {
          v28 = *(v26 - 1);
          v29 = *v26;
          v30 = v25 + v28;
          if (v17 >= v25 + v28)
          {
            v31 = (v25 + v28);
          }

          else
          {
            v31 = v17;
          }

          if (v31 < v13)
          {
            v31 = v13;
          }

          v32 = (*v31 << 24) | (v31[1] << 16) | (v31[2] << 8);
          v33 = v29 & 0xF;
          if ((v29 & 0xF) != 0)
          {
            break;
          }

          if (v22)
          {
            v44 = (v30 + v139);
            if (v17 < v30 + v139)
            {
              v44 = v17;
            }

            if (v44 < v13)
            {
              v44 = v13;
            }

            v45 = BLEND8_21892[v22];
            v42 = v32 - ((v45 & v32) >> v22);
            v43 = (((*v44 << 24) | (v44[1] << 16) | (v44[2] << 8)) & v45) >> v22;
            goto LABEL_44;
          }

LABEL_45:
          v46 = v32 | 0xFF;
          if (v16)
          {
            v47 = *v16;
            if ((v16 + 1) < v138)
            {
              ++v16;
            }

            else
            {
              v16 -= 15;
            }

            if (v6 == 255)
            {
              result = DITHERRGBA32(v46, v47);
            }

            else
            {
              result = DITHERRGBA32M(v46, v47, v6);
            }
          }

          else
          {
            v48 = (v32 >> 17) & 0x7C00 | (v32 >> 14) & 0x3E0 | (v32 >> 11) | 0xFF000000;
            v49 = ((v32 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v32 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
            v50 = (v46 & 0xFF00FF) * v6 + 65537 + ((((v46 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
            v51 = (v49 >> 17) & 0x7C00 | (v49 >> 11) & 0xFFFFFF | ((v50 >> 11) << 27) | ((v46 * v6 + 1 + ((v46 * v6) >> 8)) >> 13 << 24) | (32 * (v50 >> 27));
            if (v6 == 255)
            {
              result = v48;
            }

            else
            {
              result = v51;
            }

            v16 = 0;
          }

          *v7 = bswap32(result) >> 16;
          if (v8)
          {
            *v8 = BYTE3(result);
          }

          v26 += 2;
          ++v7;
          v8 += v142;
          if (!--v27)
          {
            goto LABEL_114;
          }
        }

        v34 = (v30 + (v29 >> 4));
        if (v17 < v34)
        {
          v34 = v17;
        }

        if (v34 < v13)
        {
          v34 = v13;
        }

        v35 = (*v34 << 24) | (v34[1] << 16) | (v34[2] << 8);
        if (v22)
        {
          v36 = (v30 + v139);
          if (v17 >= v36)
          {
            v37 = v36;
          }

          else
          {
            v37 = v17;
          }

          if (v37 < v13)
          {
            v37 = v13;
          }

          v38 = (*v37 << 24) | (v37[1] << 16) | (v37[2] << 8);
          v39 = &v36[v29 >> 4];
          if (v17 < v39)
          {
            v39 = v17;
          }

          if (v39 < v13)
          {
            v39 = v13;
          }

          v40 = BLEND8_21892[v22];
          v32 = v32 - ((v40 & v32) >> v22) + ((v40 & v38) >> v22);
          v35 = v35 - ((v40 & v35) >> v22) + ((((*v39 << 24) | (v39[1] << 16) | (v39[2] << 8)) & v40) >> v22);
        }

        v41 = BLEND8_21892[*v26 & 0xF];
        v42 = v32 - ((v41 & v32) >> v33);
        v43 = (v41 & v35) >> v33;
LABEL_44:
        v32 = v42 + v43;
        goto LABEL_45;
      }

LABEL_114:
      v10 = v129;
      v7 += v130;
      v8 += v132;
      LOBYTE(v11) = v128;
      v12 = v134 + v127;
      a6 = v136 - 1;
      v15 = v126;
      if (v136 == 1)
      {
        return result;
      }
    }

    v22 = 0;
    v139 = 0;
    if (!v15)
    {
      goto LABEL_13;
    }

LABEL_10:
    v23 = v15 + 16 * v135;
    v138 = v23 + 16;
    v16 = (v23 + v124);
    v24 = (v135 + 1) & 0xF;
    if (v135 + 1 <= 0)
    {
      v24 = -(-(v135 + 1) & 0xF);
    }

    v135 = v24;
    goto LABEL_13;
  }

  v81 = 0;
  v82 = 0;
  v83 = v14 - 3;
  v140 = (v9 + 16 * a3);
  do
  {
    if (v15)
    {
      v84 = v15 + 16 * v135;
      v81 = v84 + 16;
      v82 = (v84 + v124);
      v85 = (v135 + 1) & 0xF;
      if (v135 + 1 <= 0)
      {
        v85 = -(-(v135 + 1) & 0xF);
      }

      v135 = v85;
    }

    v86 = *(v141 + 32) + (v12 >> v11) * v10;
    v137 = a6;
    if (v131 != 1)
    {
      v101 = v140;
      v102 = v125;
      if (a5 < 1)
      {
        goto LABEL_173;
      }

      while (1)
      {
        v103 = *v101;
        v101 += 2;
        v104 = (v86 + v103);
        if (v83 < v86 + v103)
        {
          v104 = v83;
        }

        if (v104 < *(v141 + 32))
        {
          v104 = *(v141 + 32);
        }

        v105 = *v104;
        v106 = v104[1];
        v107 = v104[2];
        v108 = (v105 << 24) | (v106 << 16) | (v107 << 8);
        v109 = v108 | 0xFF;
        if (v82)
        {
          v110 = *v82;
          if ((v82 + 1) < v81)
          {
            ++v82;
          }

          else
          {
            v82 -= 15;
          }

          if (v6 == 255)
          {
            result = DITHERRGBA32(v109, v110);
          }

          else
          {
            result = DITHERRGBA32M(v109, v110, v6);
          }
        }

        else
        {
          v111 = (4 * v106) & 0x3E0 | (v105 >> 3 << 10) | (v107 >> 3) | 0xFF000000;
          v112 = ((v108 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v108 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v113 = (v109 & 0xFF00FF) * v6 + 65537 + ((((v109 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v114 = (v112 >> 17) & 0x7C00 | (v112 >> 11) & 0xFFFFFF | ((v113 >> 11) << 27) | ((v109 * v6 + 1 + ((v109 * v6) >> 8)) >> 13 << 24) | (32 * (v113 >> 27));
          if (v6 == 255)
          {
            result = v111;
          }

          else
          {
            result = v114;
          }

          v82 = 0;
        }

        v115 = result >> 27;
        if (v8)
        {
          if (result >> 27 == 31)
          {
            v116 = BYTE3(result);
            *v7 = bswap32(result) >> 16;
LABEL_168:
            *v8 = v116;
            goto LABEL_172;
          }

          if (v115)
          {
            result = PDAplusDAM(result, SBYTE3(result), bswap32(*v7) >> 16, *v8, BYTE3(result) ^ 0xFF);
            *v7 = bswap32(result) >> 16;
            v116 = BYTE3(result);
            goto LABEL_168;
          }
        }

        else
        {
          if (result >> 27 == 31)
          {
            v117 = bswap32(result) >> 16;
LABEL_171:
            *v7 = v117;
            goto LABEL_172;
          }

          if (v115)
          {
            result = PDplusDM(result, bswap32(*v7) >> 16, ~result >> 24);
            LOWORD(v117) = __rev16(result);
            goto LABEL_171;
          }
        }

LABEL_172:
        ++v7;
        v8 += v142;
        if (!--v102)
        {
          goto LABEL_173;
        }
      }
    }

    if (a5 >= 1)
    {
      v87 = v140;
      v88 = v125;
      do
      {
        v89 = *v87;
        v87 += 2;
        v90 = (v86 + v89);
        if (v83 < v86 + v89)
        {
          v90 = v83;
        }

        if (v90 < *(v141 + 32))
        {
          v90 = *(v141 + 32);
        }

        v91 = *v90;
        v92 = v90[1];
        v93 = v90[2];
        v94 = (v91 << 24) | (v92 << 16) | (v93 << 8);
        v95 = v94 | 0xFF;
        if (v82)
        {
          v96 = *v82;
          if ((v82 + 1) < v81)
          {
            ++v82;
          }

          else
          {
            v82 -= 15;
          }

          if (v6 == 255)
          {
            result = DITHERRGBA32(v95, v96);
          }

          else
          {
            result = DITHERRGBA32M(v95, v96, v6);
          }
        }

        else
        {
          v97 = (4 * v92) & 0x3E0 | (v91 >> 3 << 10) | (v93 >> 3) | 0xFF000000;
          v98 = ((v94 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v94 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v99 = (v95 & 0xFF00FF) * v6 + 65537 + ((((v95 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v100 = (v98 >> 17) & 0x7C00 | (v98 >> 11) & 0xFFFFFF | ((v99 >> 11) << 27) | ((v95 * v6 + 1 + ((v95 * v6) >> 8)) >> 13 << 24) | (32 * (v99 >> 27));
          if (v6 == 255)
          {
            result = v97;
          }

          else
          {
            result = v100;
          }

          v82 = 0;
        }

        *v7 = bswap32(result) >> 16;
        if (v8)
        {
          *v8 = BYTE3(result);
        }

        ++v7;
        v8 += v142;
        --v88;
      }

      while (v88);
    }

LABEL_173:
    v10 = v129;
    v7 += v130;
    v8 += v132;
    LOBYTE(v11) = v128;
    v12 += v127;
    a6 = v137 - 1;
    v15 = v126;
  }

  while (v137 != 1);
  return result;
}

uint64_t RGB555_image_mark_W8(uint64_t a1, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 8);
  v7 = *(a2 + 2);
  v8 = *(a2 + 4);
  if (v8)
  {
    v131 = *(a2 + 5) - a5;
  }

  else
  {
    v131 = 0;
  }

  v130 = *a2;
  v129 = *(a2 + 3) - a5;
  v141 = v8 != 0;
  v10 = *(a2 + 19);
  v9 = *(a2 + 20);
  v11 = *(a2 + 11);
  v126 = *(a2 + 13);
  v12 = *(a2 + 9) + v126 * a4;
  v123 = *(a2 + 6);
  v134 = *(a2 + 7);
  v13 = *(a1 + 32);
  v14 = &v13[(*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3)];
  result = *(a1 + 168);
  v124 = a5;
  v125 = *(a1 + 168);
  v127 = v11;
  v128 = v10;
  if (*(a1 + 176))
  {
    v138 = 0;
    v16 = 0;
    v122 = *(a2 + 15);
    v121 = *(a2 + 17);
    v120 = ~(-1 << v11);
    v118 = -v10;
    v119 = v11 - 4;
    v17 = v14 - 4;
    v18 = vdup_n_s32(v6);
    v117 = v9 + 16 * a3 + 8;
    v19.i64[1] = 0x7000000F8000000;
    while ((((v121 - v12) | (v12 - v122)) & 0x8000000000000000) == 0)
    {
      v20 = ((v12 & v120) >> v119) & 0xF;
      v21 = weights_21890[v20];
      v22 = (v20 - 7) >= 9;
      v23 = v118;
      if (!v22)
      {
        v23 = v10;
      }

      v139 = v23;
      v24 = v21 & 0xF;
      if (result)
      {
        goto LABEL_10;
      }

LABEL_13:
      v27 = *(a1 + 32) + (v12 >> v11) * v10;
      v135 = a6;
      v133 = v12;
      if (v130 != 1)
      {
        if (a5 < 1)
        {
          goto LABEL_113;
        }

        v53 = v117;
        v54 = v124;
        while (2)
        {
          v55 = *(v53 - 1);
          v56 = *v53;
          v57 = v27 + v55;
          if (v17 >= v27 + v55)
          {
            v58 = (v27 + v55);
          }

          else
          {
            v58 = v17;
          }

          if (v58 < v13)
          {
            v58 = v13;
          }

          v59 = *v58;
          v60 = v56 & 0xF;
          if ((v56 & 0xF) != 0)
          {
            v61 = (v57 + (v56 >> 4));
            if (v17 < v61)
            {
              v61 = v17;
            }

            if (v61 < v13)
            {
              v61 = v13;
            }

            v62 = *v61;
            if (v24)
            {
              v63 = (v57 + v139);
              if (v17 >= v63)
              {
                v64 = v63;
              }

              else
              {
                v64 = v17;
              }

              if (v64 < v13)
              {
                v64 = v13;
              }

              v65 = *v64;
              v66 = &v63[v56 >> 4];
              if (v17 < v66)
              {
                v66 = v17;
              }

              if (v66 < v13)
              {
                v66 = v13;
              }

              v67 = BLEND8_21892[v24];
              v59 = v59 - ((v67 & v59) >> v24) + ((v67 & v65) >> v24);
              v62 = v62 - ((v67 & v62) >> v24) + ((v67 & *v66) >> v24);
            }

            v68 = BLEND8_21892[*v53 & 0xF];
            v59 -= (v68 & v59) >> v60;
            v69 = (v68 & v62) >> v60;
            goto LABEL_89;
          }

          if (v24)
          {
            v70 = (v57 + v139);
            if (v17 < v57 + v139)
            {
              v70 = v17;
            }

            if (v70 < v13)
            {
              v70 = v13;
            }

            v71 = BLEND8_21892[v24];
            v59 -= (v71 & v59) >> v24;
            v69 = (v71 & *v70) >> v24;
LABEL_89:
            LOBYTE(v59) = v59 + v69;
          }

          if (v16)
          {
            v72 = *v16;
            if ((v16 + 1) < v138)
            {
              ++v16;
            }

            else
            {
              v16 -= 15;
            }

            v73 = (16843008 * v59) | 0xFF;
            if (v6 == 255)
            {
              v74 = DITHERRGBA32(v73, v72);
            }

            else
            {
              v74 = DITHERRGBA32M(v73, v72, v6);
            }
          }

          else
          {
            v16 = 0;
            if (v6 == 255)
            {
              v74 = (v59 >> 3) & 0xFFFF801F | (32 * (v59 >> 3)) & 0x83FF | (v59 >> 3 << 10) | 0xFF000000;
            }

            else
            {
              *v19.i8 = vmul_s32(vorr_s8(vdup_n_s32(v59 << 16), (v59 | 0xFF00000000)), v18);
              *v19.i8 = vadd_s32(vadd_s32(*v19.i8, 0x1000100010001), (*&vshr_n_u32(*v19.i8, 8uLL) & 0xFFFF00FFFFFF00FFLL));
              v75 = vzip1q_s32(v19, v19);
              v76.i64[0] = vshlq_u32(v75, xmmword_18439C930).u64[0];
              v76.i64[1] = vshlq_u32(v75, xmmword_18439C940).i64[1];
              v77 = vandq_s8(v76, xmmword_18439C950);
              *v77.i8 = vorr_s8(*v77.i8, *&vextq_s8(v77, v77, 8uLL));
              v74 = v77.i32[0] | v77.i32[1] | (32 * (v19.i32[1] >> 27));
            }
          }

          v78 = v74 >> 27;
          if (v8)
          {
            if (v74 >> 27 == 31)
            {
              v79 = HIBYTE(v74);
              *v7 = bswap32(v74) >> 16;
              goto LABEL_106;
            }

            if (v78)
            {
              v81 = PDAplusDAM(v74, SHIBYTE(v74), bswap32(*v7) >> 16, *v8, HIBYTE(v74) ^ 0xFF);
              *v7 = bswap32(v81) >> 16;
              v79 = HIBYTE(v81);
LABEL_106:
              *v8 = v79;
            }
          }

          else
          {
            if (v74 >> 27 == 31)
            {
              v80 = bswap32(v74) >> 16;
            }

            else
            {
              if (!v78)
              {
                goto LABEL_110;
              }

              LOWORD(v80) = __rev16(PDplusDM(v74, bswap32(*v7) >> 16, ~v74 >> 24));
            }

            *v7 = v80;
          }

LABEL_110:
          v53 += 2;
          ++v7;
          v8 += v141;
          if (!--v54)
          {
            goto LABEL_113;
          }

          continue;
        }
      }

      if (a5 >= 1)
      {
        v28 = v117;
        v29 = v124;
        while (1)
        {
          v30 = *(v28 - 1);
          v31 = *v28;
          v32 = v27 + v30;
          if (v17 >= v27 + v30)
          {
            v33 = (v27 + v30);
          }

          else
          {
            v33 = v17;
          }

          if (v33 < v13)
          {
            v33 = v13;
          }

          v34 = *v33;
          v35 = v31 & 0xF;
          if ((v31 & 0xF) != 0)
          {
            break;
          }

          if (v24)
          {
            v45 = (v32 + v139);
            if (v17 < v32 + v139)
            {
              v45 = v17;
            }

            if (v45 < v13)
            {
              v45 = v13;
            }

            v46 = BLEND8_21892[v24];
            v34 -= (v46 & v34) >> v24;
            v44 = (v46 & *v45) >> v24;
            goto LABEL_44;
          }

LABEL_45:
          if (v16)
          {
            v47 = *v16;
            if ((v16 + 1) < v138)
            {
              ++v16;
            }

            else
            {
              v16 -= 15;
            }

            v48 = (16843008 * v34) | 0xFF;
            if (v6 == 255)
            {
              v49 = DITHERRGBA32(v48, v47);
            }

            else
            {
              v49 = DITHERRGBA32M(v48, v47, v6);
            }
          }

          else
          {
            v16 = 0;
            if (v6 == 255)
            {
              v49 = (v34 >> 3) & 0xFFFF801F | (32 * (v34 >> 3)) & 0x83FF | (v34 >> 3 << 10) | 0xFF000000;
            }

            else
            {
              *v19.i8 = vmul_s32(vorr_s8(vdup_n_s32(v34 << 16), (v34 | 0xFF00000000)), v18);
              *v19.i8 = vadd_s32(vadd_s32(*v19.i8, 0x1000100010001), (*&vshr_n_u32(*v19.i8, 8uLL) & 0xFFFF00FFFFFF00FFLL));
              v50 = vzip1q_s32(v19, v19);
              v51.i64[0] = vshlq_u32(v50, xmmword_18439C930).u64[0];
              v51.i64[1] = vshlq_u32(v50, xmmword_18439C940).i64[1];
              v52 = vandq_s8(v51, xmmword_18439C950);
              *v52.i8 = vorr_s8(*v52.i8, *&vextq_s8(v52, v52, 8uLL));
              v49 = v52.i32[0] | v52.i32[1] | (32 * (v19.i32[1] >> 27));
            }
          }

          *v7 = bswap32(v49) >> 16;
          if (v8)
          {
            *v8 = HIBYTE(v49);
          }

          v28 += 2;
          ++v7;
          v8 += v141;
          if (!--v29)
          {
            goto LABEL_113;
          }
        }

        v36 = (v32 + (v31 >> 4));
        if (v17 < v36)
        {
          v36 = v17;
        }

        if (v36 < v13)
        {
          v36 = v13;
        }

        v37 = *v36;
        if (v24)
        {
          v38 = (v32 + v139);
          if (v17 >= v38)
          {
            v39 = v38;
          }

          else
          {
            v39 = v17;
          }

          if (v39 < v13)
          {
            v39 = v13;
          }

          v40 = *v39;
          v41 = &v38[v31 >> 4];
          if (v17 < v41)
          {
            v41 = v17;
          }

          if (v41 < v13)
          {
            v41 = v13;
          }

          v42 = BLEND8_21892[v24];
          v34 = v34 - ((v42 & v34) >> v24) + ((v42 & v40) >> v24);
          v37 = v37 - ((v42 & v37) >> v24) + ((v42 & *v41) >> v24);
        }

        v43 = BLEND8_21892[*v28 & 0xF];
        v34 -= (v43 & v34) >> v35;
        v44 = (v43 & v37) >> v35;
LABEL_44:
        LOBYTE(v34) = v34 + v44;
        goto LABEL_45;
      }

LABEL_113:
      v10 = v128;
      v7 += v129;
      v8 += v131;
      LOBYTE(v11) = v127;
      v12 = v133 + v126;
      a6 = v135 - 1;
      result = v125;
      if (v135 == 1)
      {
        return result;
      }
    }

    v24 = 0;
    v139 = 0;
    if (!result)
    {
      goto LABEL_13;
    }

LABEL_10:
    v25 = result + 16 * v134;
    v138 = v25 + 16;
    v16 = (v25 + v123);
    v26 = (v134 + 1) & 0xF;
    if (v134 + 1 <= 0)
    {
      v26 = -(-(v134 + 1) & 0xF);
    }

    v134 = v26;
    goto LABEL_13;
  }

  v82 = 0;
  v83 = 0;
  v84 = vdup_n_s32(v6);
  v85 = v14 - 4;
  v137 = (v9 + 16 * a3);
  v86.i64[1] = 0x7000000F8000000;
  do
  {
    if (result)
    {
      v87 = result + 16 * v134;
      v82 = v87 + 16;
      v83 = (v87 + v123);
      v88 = (v134 + 1) & 0xF;
      if (v134 + 1 <= 0)
      {
        v88 = -(-(v134 + 1) & 0xF);
      }

      v134 = v88;
    }

    v89 = *(a1 + 32) + (v12 >> v11) * v10;
    v136 = a6;
    v90 = v12;
    if (v130 != 1)
    {
      v102 = v137;
      v103 = v124;
      if (a5 < 1)
      {
        goto LABEL_170;
      }

      while (1)
      {
        v104 = *v102;
        v102 += 2;
        v105 = (v89 + v104);
        if (v85 < v89 + v104)
        {
          v105 = v85;
        }

        if (v105 < *(a1 + 32))
        {
          v105 = *(a1 + 32);
        }

        v106 = *v105;
        if (v83)
        {
          v107 = *v83;
          if ((v83 + 1) < v82)
          {
            ++v83;
          }

          else
          {
            v83 -= 15;
          }

          v108 = (16843008 * v106) | 0xFF;
          if (v6 == 255)
          {
            v109 = DITHERRGBA32(v108, v107);
          }

          else
          {
            v109 = DITHERRGBA32M(v108, v107, v6);
          }
        }

        else
        {
          v83 = 0;
          if (v6 == 255)
          {
            v109 = (v106 >> 3) & 0xFFFF801F | (32 * (v106 >> 3)) & 0x83FF | (v106 >> 3 << 10) | 0xFF000000;
          }

          else
          {
            *v86.i8 = vmul_s32(vorr_s8(vdup_n_s32(v106 << 16), (v106 | 0xFF00000000)), v84);
            *v86.i8 = vadd_s32(vadd_s32(*v86.i8, 0x1000100010001), (*&vshr_n_u32(*v86.i8, 8uLL) & 0xFFFF00FFFFFF00FFLL));
            v110 = vzip1q_s32(v86, v86);
            v111.i64[0] = vshlq_u32(v110, xmmword_18439C930).u64[0];
            v111.i64[1] = vshlq_u32(v110, xmmword_18439C940).i64[1];
            v112 = vandq_s8(v111, xmmword_18439C950);
            *v112.i8 = vorr_s8(*v112.i8, *&vextq_s8(v112, v112, 8uLL));
            v109 = v112.i32[0] | v112.i32[1] | (32 * (v86.i32[1] >> 27));
          }
        }

        v113 = v109 >> 27;
        if (v8)
        {
          if (v109 >> 27 == 31)
          {
            v114 = HIBYTE(v109);
            *v7 = bswap32(v109) >> 16;
LABEL_165:
            *v8 = v114;
            goto LABEL_169;
          }

          if (v113)
          {
            v116 = PDAplusDAM(v109, SHIBYTE(v109), bswap32(*v7) >> 16, *v8, HIBYTE(v109) ^ 0xFF);
            *v7 = bswap32(v116) >> 16;
            v114 = HIBYTE(v116);
            goto LABEL_165;
          }
        }

        else
        {
          if (v109 >> 27 == 31)
          {
            v115 = bswap32(v109) >> 16;
LABEL_168:
            *v7 = v115;
            goto LABEL_169;
          }

          if (v113)
          {
            LOWORD(v115) = __rev16(PDplusDM(v109, bswap32(*v7) >> 16, ~v109 >> 24));
            goto LABEL_168;
          }
        }

LABEL_169:
        ++v7;
        v8 += v141;
        if (!--v103)
        {
          goto LABEL_170;
        }
      }
    }

    if (a5 >= 1)
    {
      v91 = v137;
      v92 = v124;
      do
      {
        v93 = *v91;
        v91 += 2;
        v94 = (v89 + v93);
        if (v85 < v89 + v93)
        {
          v94 = v85;
        }

        if (v94 < *(a1 + 32))
        {
          v94 = *(a1 + 32);
        }

        v95 = *v94;
        if (v83)
        {
          v96 = *v83;
          if ((v83 + 1) < v82)
          {
            ++v83;
          }

          else
          {
            v83 -= 15;
          }

          v97 = (16843008 * v95) | 0xFF;
          if (v6 == 255)
          {
            v98 = DITHERRGBA32(v97, v96);
          }

          else
          {
            v98 = DITHERRGBA32M(v97, v96, v6);
          }
        }

        else
        {
          v83 = 0;
          if (v6 == 255)
          {
            v98 = (v95 >> 3) & 0xFFFF801F | (32 * (v95 >> 3)) & 0x83FF | (v95 >> 3 << 10) | 0xFF000000;
          }

          else
          {
            *v86.i8 = vmul_s32(vorr_s8(vdup_n_s32(v95 << 16), (v95 | 0xFF00000000)), v84);
            *v86.i8 = vadd_s32(vadd_s32(*v86.i8, 0x1000100010001), (*&vshr_n_u32(*v86.i8, 8uLL) & 0xFFFF00FFFFFF00FFLL));
            v99 = vzip1q_s32(v86, v86);
            v100.i64[0] = vshlq_u32(v99, xmmword_18439C930).u64[0];
            v100.i64[1] = vshlq_u32(v99, xmmword_18439C940).i64[1];
            v101 = vandq_s8(v100, xmmword_18439C950);
            *v101.i8 = vorr_s8(*v101.i8, *&vextq_s8(v101, v101, 8uLL));
            v98 = v101.i32[0] | v101.i32[1] | (32 * (v86.i32[1] >> 27));
          }
        }

        *v7 = bswap32(v98) >> 16;
        if (v8)
        {
          *v8 = HIBYTE(v98);
        }

        ++v7;
        v8 += v141;
        --v92;
      }

      while (v92);
    }

LABEL_170:
    v10 = v128;
    v7 += v129;
    v8 += v131;
    LOBYTE(v11) = v127;
    v12 = v90 + v126;
    a6 = v136 - 1;
    result = v125;
  }

  while (v136 != 1);
  return result;
}

uint64_t RGB555_colorlookup(int a1, unsigned __int16 *a2, unsigned __int8 *a3)
{
  if (a1 == 3)
  {
    v4 = *a2;
  }

  else
  {
    if (a3)
    {
      v5 = *a3 << 24;
    }

    else
    {
      v5 = 4278190080;
    }

    v4 = v5 | (bswap32(*a2) >> 16);
  }

  pthread_mutex_lock(&RGB555_cacheColorLock);
  v6 = RGB555_cacheColor;
  if (RGB555_cacheColor && *(RGB555_cacheColor + 16) == v4)
  {
    v7 = RGB555_cacheColor;
  }

  else
  {
    v8 = 0;
    while (1)
    {
      if (!v6)
      {
        goto LABEL_15;
      }

      v7 = v6;
      v9 = v8;
      if (*(v6 + 2) == v4)
      {
        break;
      }

      v6 = *v6;
      v8 = v7;
      if (!*v7)
      {
        if (RGB555_cacheColorCount > 6)
        {
          *v9 = 0;
          v12 = *(v7 + 1);
        }

        else
        {
LABEL_15:
          v10 = RGB555_cacheColorBase;
          if (RGB555_cacheColorBase)
          {
            v11 = RGB555_cacheColorCount;
          }

          else
          {
            v10 = malloc_type_calloc(1uLL, 0x1CA8uLL, 0x1020040A1C41DBCuLL);
            v11 = 0;
            RGB555_cacheColorBase = v10;
          }

          v7 = &v10[24 * v11];
          v12 = &v10[1024 * v11 + 168];
          *(v7 + 1) = v12;
          RGB555_cacheColorCount = v11 + 1;
        }

        *v7 = RGB555_cacheColor;
        RGB555_cacheColor = v7;
        *(v7 + 2) = v4;
        if (a1 == 3)
        {
          v13 = 0;
          v15 = 244;
          v16 = 188;
          do
          {
            v17 = pixel_dither_noise[v13 + 1];
            v14 = HIDWORD(v4);
            *(v12 + 4 * v13) = ((((v16 + WORD1(v4)) >> 3) & 0x3E0 | ((((v16 + v14) >> 8) & 0x1F) << 10) & 0xFC00FFFF | ((((v15 + WORD1(v4)) >> 8) & 0x1F) << 21) | ((((v15 + v4) >> 8) & 0x1F) << 16)) << 8) & 0xFF00FFFF | (v16 + v4) & 0x1F00 | ((((v16 + WORD1(v4)) >> 3) & 0x3E0 | ((((v16 + v14) >> 8) & 0x1F) << 10) & 0x801FFFFF | ((((v15 + WORD1(v4)) >> 8) & 0x1F) << 21) & 0x83FFFFFF | ((((v15 + v14) >> 8) & 0x1F) << 26)) >> 8) & 0x7F007F;
            *(v12 + 2 * v13 + 512) = ((v16 + HIWORD(v4)) >> 5) & 0xF8 | ((v16 + HIWORD(v4)) >> 10) & 7 | ((v15 + HIWORD(v4)) >> 2) & 0x700 | ((((v15 + HIWORD(v4)) >> 8) & 0x1F) << 11);
            v15 = v17;
            v16 = v17 >> 8;
            ++v13;
          }

          while (v13 != 128);
        }

        else
        {
          v18 = 0;
          do
          {
            *(v12 + 4 * v18) = PDAM(v4, SBYTE3(v4), v18);
            ++v18;
          }

          while (v18 != 256);
        }

        goto LABEL_28;
      }
    }

    if (v8)
    {
      *v8 = *v6;
      *v6 = RGB555_cacheColor;
      RGB555_cacheColor = v6;
    }
  }

LABEL_28:
  pthread_mutex_unlock(&RGB555_cacheColorLock);
  return *(v7 + 1);
}

uint64_t RGB555_mark_constmask(uint64_t a1, int a2)
{
  v4 = *(a1 + 8);
  v223 = *(a1 + 4);
  v5 = *(a1 + 28);
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a1 + 136);
  result = RGB555_colorlookup(4, *(a1 + 88), *(a1 + 96));
  v10 = result;
  v210 = *(result + 1020);
  v11 = *(a1 + 12);
  v12 = *(a1 + 16);
  if (v6)
  {
    v13 = *(a1 + 32);
    v14 = (v6 + v13 * v12 + v11);
    v15 = 1;
    if (!v8)
    {
      return result;
    }
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v15 = 0;
    if (!v8)
    {
      return result;
    }
  }

  v16 = v13 - v223;
  if (v6)
  {
    v13 -= v223;
  }

  v213 = v13;
  v17 = v5 >> 1;
  v18 = HIBYTE(v210);
  v19 = (v7 + 2 * v17 * v12 + 2 * v11);
  v20 = *(a1 + 124);
  v21 = v8 + *(a1 + 108) * v20 + *(a1 + 104);
  v22 = v20 - v223;
  v218 = v17 - v223;
  switch(a2)
  {
    case 0:
      if (v6)
      {
        while (1)
        {
          v23 = v223;
          do
          {
            v24 = *v21;
            if (v24 < 0xF8)
            {
              if (v24 < 8)
              {
                goto LABEL_15;
              }

              result = PDAM(bswap32(v19->u16[0]) >> 16, *v14, ~v24);
              v19->i16[0] = bswap32(result) >> 16;
              v25 = BYTE3(result);
            }

            else
            {
              LOBYTE(v25) = 0;
              v19->i16[0] = 0;
            }

            *v14 = v25;
LABEL_15:
            ++v21;
            v19 = (v19 + 2);
            v14 += v15;
            --v23;
          }

          while (v23);
          v21 += v22;
          v19 = (v19 + 2 * v218);
          v14 += v213;
          if (!--v4)
          {
            return result;
          }
        }
      }

LABEL_274:
      v101 = v223;
      while (1)
      {
        v102 = *v21;
        if (v102 > 0xF7)
        {
          break;
        }

        if (v102 >= 8)
        {
          result = PDM(bswap32(v19->u16[0]) >> 16, ~v102);
          v103 = __rev16(result);
          goto LABEL_279;
        }

LABEL_280:
        ++v21;
        v19 = (v19 + 2);
        if (!--v101)
        {
          v21 += v22;
          v19 = (v19 + 2 * v218);
          if (!--v4)
          {
            return result;
          }

          goto LABEL_274;
        }
      }

      v103 = 0;
LABEL_279:
      v19->i16[0] = v103;
      goto LABEL_280;
    case 1:
      v128 = v21 & 3;
      if (v6)
      {
        v129 = v128 + v223;
        if ((v21 & 3) != 0)
        {
          v130 = v21 & 0xFC;
        }

        else
        {
          v130 = v21;
        }

        if ((v21 & 3) != 0)
        {
          result = (-1 << (8 * v128));
        }

        else
        {
          result = 0xFFFFFFFFLL;
        }

        if ((v21 & 3) != 0)
        {
          v131 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        }

        else
        {
          v131 = v21;
        }

        if ((v21 & 3) != 0)
        {
          v132 = &v14[-(v21 & 3)];
        }

        else
        {
          v132 = v14;
        }

        if ((v21 & 3) != 0)
        {
          v19 = (v19 - 2 * (v21 & 3));
        }

        else
        {
          v129 = v223;
        }

        if (((v129 + v130) & 3) != 0)
        {
          v133 = 4 - ((v129 + v130) & 3);
          v128 += v133;
          v134 = 0xFFFFFFFF >> (8 * v133);
          if (v129 >= 4)
          {
            v135 = 0xFFFFFFFF >> (8 * v133);
          }

          else
          {
            v135 = 0;
          }

          v225 = v135;
          if (v129 >= 4)
          {
            v134 = -1;
          }

          result = v134 & result;
          v215 = result;
        }

        else
        {
          v215 = result;
          v225 = 0;
        }

        v209 = v22 - v128;
        v220 = v218 - v128;
        v207 = v129 >> 2;
        v180 = bswap32(v210) >> 16;
        v211 = v16 - v128;
        while (1)
        {
          v181 = *v131 & v215;
          v182 = v207;
          v183 = v225;
          if (!v181)
          {
            goto LABEL_461;
          }

LABEL_459:
          if (v181 == -1)
          {
            v19->i16[0] = v180;
            *v132 = v18;
            v19->i16[1] = v180;
            v132[1] = v18;
            v19->i16[2] = v180;
            v132[2] = v18;
LABEL_482:
            v19->i16[3] = v180;
            v132[3] = v18;
            goto LABEL_461;
          }

          while (1)
          {
            if (v181 < 0xF8u)
            {
              if (v181 < 8u)
              {
                goto LABEL_471;
              }

              result = PDAplusDAM(*(v10 + 4 * v181), HIBYTE(*(v10 + 4 * v181)), bswap32(v19->u16[0]) >> 16, *v132, ~v181);
              v19->i16[0] = bswap32(result) >> 16;
              v185 = BYTE3(result);
            }

            else
            {
              v19->i16[0] = v180;
              LOBYTE(v185) = v18;
            }

            *v132 = v185;
LABEL_471:
            if (BYTE1(v181) < 0xF8u)
            {
              if (BYTE1(v181) < 8u)
              {
                goto LABEL_476;
              }

              result = PDAplusDAM(*(v10 + 4 * BYTE1(v181)), HIBYTE(*(v10 + 4 * BYTE1(v181))), bswap32(v19->u16[1]) >> 16, v132[1], ~(v181 >> 8));
              v19->i16[1] = bswap32(result) >> 16;
              v186 = BYTE3(result);
            }

            else
            {
              v19->i16[1] = v180;
              LOBYTE(v186) = v18;
            }

            v132[1] = v186;
LABEL_476:
            if (BYTE2(v181) < 0xF8u)
            {
              if (BYTE2(v181) < 8u)
              {
                goto LABEL_481;
              }

              result = PDAplusDAM(*(v10 + 4 * BYTE2(v181)), HIBYTE(*(v10 + 4 * BYTE2(v181))), bswap32(v19->u16[2]) >> 16, v132[2], ~HIWORD(v181));
              v19->i16[2] = bswap32(result) >> 16;
              v187 = BYTE3(result);
            }

            else
            {
              v19->i16[2] = v180;
              LOBYTE(v187) = v18;
            }

            v132[2] = v187;
LABEL_481:
            if (v181 >> 27 == 31)
            {
              goto LABEL_482;
            }

            if (v181 >> 27)
            {
              result = PDAplusDAM(*(v10 + 4 * HIBYTE(v181)), HIBYTE(*(v10 + 4 * HIBYTE(v181))), bswap32(v19->u16[3]) >> 16, v132[3], ~v181 >> 24);
              v19->i16[3] = bswap32(result) >> 16;
              v132[3] = BYTE3(result);
            }

LABEL_461:
            while (1)
            {
              v184 = v182;
              ++v19;
              v132 += 4;
              --v182;
              ++v131;
              if (v184 < 2)
              {
                break;
              }

              v181 = *v131;
              if (*v131)
              {
                goto LABEL_459;
              }
            }

            if (!v183)
            {
              break;
            }

            v183 = 0;
            v181 = *v131 & v225;
          }

          v131 = (v131 + v209);
          v19 = (v19 + 2 * v220);
          v132 += v211;
          if (!--v4)
          {
            return result;
          }
        }
      }

      v157 = v128 + v223;
      if ((v21 & 3) != 0)
      {
        v158 = v21 & 0xFC;
      }

      else
      {
        v158 = v21;
      }

      if ((v21 & 3) != 0)
      {
        v159 = -1 << (8 * v128);
      }

      else
      {
        v159 = -1;
      }

      if ((v21 & 3) != 0)
      {
        v160 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      }

      else
      {
        v160 = v21;
      }

      if ((v21 & 3) != 0)
      {
        v161 = (v19 - 2 * (v21 & 3));
      }

      else
      {
        v161 = v19;
      }

      if ((v21 & 3) == 0)
      {
        v157 = v223;
      }

      if (((v157 + v158) & 3) != 0)
      {
        v162 = 4 - ((v157 + v158) & 3);
        v128 += v162;
        v163 = 0xFFFFFFFF >> (8 * v162);
        if (v157 >= 4)
        {
          v164 = 0xFFFFFFFF >> (8 * v162);
        }

        else
        {
          v164 = 0;
        }

        if (v157 >= 4)
        {
          v163 = -1;
        }

        v227 = v163 & v159;
      }

      else
      {
        v227 = v159;
        v164 = 0;
      }

      v217 = v22 - v128;
      v222 = v218 - v128;
      v212 = v157 >> 2;
      v196 = bswap32(*(result + 1020)) >> 16;
      v197 = vdup_n_s16(v196);
LABEL_510:
      v198 = *v160 & v227;
      v199 = v212;
      v200 = v164;
      if (!v198)
      {
        goto LABEL_513;
      }

LABEL_511:
      if (v198 == -1)
      {
        *v161 = v197;
        goto LABEL_513;
      }

      while (1)
      {
        v202 = v196;
        if (v198 <= 0xF7u)
        {
          if (v198 < 8u)
          {
            goto LABEL_522;
          }

          result = PDplusDM(*(v10 + 4 * v198), bswap32(v161->u16[0]) >> 16, ~v198);
          v202 = __rev16(result);
        }

        v161->i16[0] = v202;
LABEL_522:
        v203 = v196;
        if (BYTE1(v198) <= 0xF7u)
        {
          if (BYTE1(v198) < 8u)
          {
            goto LABEL_526;
          }

          result = PDplusDM(*(v10 + 4 * BYTE1(v198)), bswap32(v161->u16[1]) >> 16, ~(v198 >> 8));
          v203 = __rev16(result);
        }

        v161->i16[1] = v203;
LABEL_526:
        v204 = v196;
        if (BYTE2(v198) <= 0xF7u)
        {
          if (BYTE2(v198) < 8u)
          {
            goto LABEL_530;
          }

          result = PDplusDM(*(v10 + 4 * BYTE2(v198)), bswap32(v161->u16[2]) >> 16, ~HIWORD(v198));
          v204 = __rev16(result);
        }

        v161->i16[2] = v204;
LABEL_530:
        if (v198 >> 27 == 31)
        {
          v161->i16[3] = v196;
        }

        else if (v198 >> 27)
        {
          result = PDplusDM(*(v10 + 4 * HIBYTE(v198)), bswap32(v161->u16[3]) >> 16, ~v198 >> 24);
          v161->i16[3] = __rev16(result);
        }

LABEL_513:
        while (1)
        {
          v201 = v199;
          ++v161;
          --v199;
          ++v160;
          if (v201 < 2)
          {
            break;
          }

          v198 = *v160;
          if (*v160)
          {
            goto LABEL_511;
          }
        }

        if (!v200)
        {
          v160 = (v160 + v217);
          v161 = (v161 + 2 * v222);
          if (!--v4)
          {
            return result;
          }

          goto LABEL_510;
        }

        v200 = 0;
        v198 = *v160 & v164;
      }

    case 2:
      v110 = v21 & 3;
      if (v6)
      {
        v111 = v110 + v223;
        v112 = v19 - (v21 & 3);
        if ((v21 & 3) != 0)
        {
          v113 = v21 & 0xFC;
        }

        else
        {
          v113 = v21;
        }

        if ((v21 & 3) != 0)
        {
          result = (-1 << (8 * v110));
        }

        else
        {
          result = 0xFFFFFFFFLL;
        }

        if ((v21 & 3) != 0)
        {
          v114 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        }

        else
        {
          v114 = v21;
        }

        if ((v21 & 3) != 0)
        {
          v115 = &v14[-(v21 & 3)];
        }

        else
        {
          v115 = v14;
        }

        if (v110)
        {
          v19 = v112;
        }

        else
        {
          v111 = v223;
        }

        if (((v111 + v113) & 3) != 0)
        {
          v116 = 4 - ((v111 + v113) & 3);
          v110 += v116;
          v117 = 0xFFFFFFFF >> (8 * v116);
          if (v111 >= 4)
          {
            v118 = 0xFFFFFFFF >> (8 * v116);
          }

          else
          {
            v118 = 0;
          }

          v224 = v118;
          if (v111 >= 4)
          {
            v117 = -1;
          }

          result = v117 & result;
          v214 = result;
        }

        else
        {
          v214 = result;
          v224 = 0;
        }

        v208 = v22 - v110;
        v219 = v218 - v110;
        v206 = v111 >> 2;
        v205 = v16 - v110;
        while (1)
        {
          v165 = *v114 & v214;
          v166 = v206;
          v167 = v224;
          if (!v165)
          {
            goto LABEL_440;
          }

LABEL_438:
          if (v165 == -1)
          {
            break;
          }

          while (1)
          {
            if ((v165 & 0xF8) != 0)
            {
              v177 = HIBYTE(*(v10 + 4 * v165));
              result = PDAplusDAM(*(v10 + 4 * v165), v177, bswap32(v19->u16[0]) >> 16, *v115, v177 ^ 0xFFu);
              v19->i16[0] = bswap32(result) >> 16;
              *v115 = BYTE3(result);
            }

            if ((v165 & 0xF800) != 0)
            {
              v178 = HIBYTE(*(v10 + 4 * BYTE1(v165)));
              result = PDAplusDAM(*(v10 + 4 * BYTE1(v165)), v178, bswap32(v19->u16[1]) >> 16, v115[1], v178 ^ 0xFFu);
              v19->i16[1] = bswap32(result) >> 16;
              v115[1] = BYTE3(result);
            }

            if ((v165 & 0xF80000) != 0)
            {
              v179 = HIBYTE(*(v10 + 4 * BYTE2(v165)));
              result = PDAplusDAM(*(v10 + 4 * BYTE2(v165)), v179, bswap32(v19->u16[2]) >> 16, v115[2], v179 ^ 0xFFu);
              v19->i16[2] = bswap32(result) >> 16;
              v115[2] = BYTE3(result);
            }

            if (v165 >> 27)
            {
              v175 = HIBYTE(*(v10 + 4 * HIBYTE(v165)));
              v171 = bswap32(v19->u16[3]) >> 16;
              v172 = v115[3];
              v173 = *(v10 + 4 * HIBYTE(v165));
              v174 = v175 ^ 0xFF;
              goto LABEL_453;
            }

LABEL_440:
            while (1)
            {
              v176 = v166;
              ++v19;
              v115 += 4;
              --v166;
              ++v114;
              if (v176 < 2)
              {
                break;
              }

              v165 = *v114;
              if (*v114)
              {
                goto LABEL_438;
              }
            }

            if (!v167)
            {
              break;
            }

            v167 = 0;
            v165 = *v114 & v224;
          }

          v114 = (v114 + v208);
          v19 = (v19 + 2 * v219);
          v115 += v205;
          if (!--v4)
          {
            return result;
          }
        }

        v168 = PDAplusDAM(v210, SHIBYTE(v210), bswap32(v19->u16[0]) >> 16, *v115, ~HIBYTE(v210));
        v19->i16[0] = bswap32(v168) >> 16;
        *v115 = HIBYTE(v168);
        v169 = PDAplusDAM(v210, SHIBYTE(v210), bswap32(v19->u16[1]) >> 16, v115[1], ~HIBYTE(v210));
        v19->i16[1] = bswap32(v169) >> 16;
        v115[1] = HIBYTE(v169);
        v170 = PDAplusDAM(v210, SHIBYTE(v210), bswap32(v19->u16[2]) >> 16, v115[2], ~HIBYTE(v210));
        v19->i16[2] = bswap32(v170) >> 16;
        v115[2] = HIBYTE(v170);
        v171 = bswap32(v19->u16[3]) >> 16;
        v172 = v115[3];
        v173 = v210;
        v174 = ~HIBYTE(v210);
        LOBYTE(v175) = HIBYTE(v210);
LABEL_453:
        result = PDAplusDAM(v173, v175, v171, v172, v174);
        v19->i16[3] = bswap32(result) >> 16;
        v115[3] = BYTE3(result);
        goto LABEL_440;
      }

      v149 = v110 + v223;
      if ((v21 & 3) != 0)
      {
        v150 = v21 & 0xFC;
      }

      else
      {
        v150 = v21;
      }

      if ((v21 & 3) != 0)
      {
        v151 = -1 << (8 * v110);
      }

      else
      {
        v151 = -1;
      }

      if ((v21 & 3) != 0)
      {
        v152 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      }

      else
      {
        v152 = v21;
      }

      if ((v21 & 3) != 0)
      {
        v153 = v19 - (v21 & 3);
      }

      else
      {
        v153 = v19;
      }

      if ((v21 & 3) == 0)
      {
        v149 = v223;
      }

      if (((v149 + v150) & 3) != 0)
      {
        v154 = 4 - ((v149 + v150) & 3);
        v110 += v154;
        v155 = 0xFFFFFFFF >> (8 * v154);
        if (v149 >= 4)
        {
          v156 = 0xFFFFFFFF >> (8 * v154);
        }

        else
        {
          v156 = 0;
        }

        if (v149 >= 4)
        {
          v155 = -1;
        }

        v226 = v155 & v151;
      }

      else
      {
        v226 = v151;
        v156 = 0;
      }

      v188 = v149 >> 2;
      v216 = v22 - v110;
      v221 = v218 - v110;
      do
      {
        v189 = *v152 & v226;
        v190 = v188;
        v191 = v156;
        if (!v189)
        {
          goto LABEL_492;
        }

LABEL_490:
        if (v189 == -1)
        {
          *v153 = __rev16(PDplusDM(v210, bswap32(*v153) >> 16, ~HIBYTE(v210)));
          v153[1] = __rev16(PDplusDM(v210, bswap32(v153[1]) >> 16, ~HIBYTE(v210)));
          v153[2] = __rev16(PDplusDM(v210, bswap32(v153[2]) >> 16, ~HIBYTE(v210)));
          v192 = bswap32(v153[3]) >> 16;
          v193 = v210;
          v194 = ~HIBYTE(v210);
LABEL_505:
          result = PDplusDM(v193, v192, v194);
          v153[3] = __rev16(result);
          goto LABEL_492;
        }

        while (1)
        {
          if ((v189 & 0xF8) != 0)
          {
            result = PDplusDM(*(v10 + 4 * v189), bswap32(*v153) >> 16, ~*(v10 + 4 * v189) >> 24);
            *v153 = __rev16(result);
          }

          if ((v189 & 0xF800) != 0)
          {
            result = PDplusDM(*(v10 + 4 * BYTE1(v189)), bswap32(v153[1]) >> 16, ~*(v10 + 4 * BYTE1(v189)) >> 24);
            v153[1] = __rev16(result);
          }

          if ((v189 & 0xF80000) != 0)
          {
            result = PDplusDM(*(v10 + 4 * BYTE2(v189)), bswap32(v153[2]) >> 16, ~*(v10 + 4 * BYTE2(v189)) >> 24);
            v153[2] = __rev16(result);
          }

          if (v189 >> 27)
          {
            v192 = bswap32(v153[3]) >> 16;
            v194 = ~*(v10 + 4 * HIBYTE(v189)) >> 24;
            v193 = *(v10 + 4 * HIBYTE(v189));
            goto LABEL_505;
          }

LABEL_492:
          while (1)
          {
            v195 = v190;
            v153 += 4;
            --v190;
            ++v152;
            if (v195 < 2)
            {
              break;
            }

            v189 = *v152;
            if (*v152)
            {
              goto LABEL_490;
            }
          }

          if (!v191)
          {
            break;
          }

          v191 = 0;
          v189 = *v152 & v156;
        }

        v152 = (v152 + v216);
        v153 += v221;
        --v4;
      }

      while (v4);
      return result;
    case 3:
      while (1)
      {
        v55 = v223;
        do
        {
          v56 = *v21;
          if (v56 < 0xF8)
          {
            if (v56 < 8)
            {
              goto LABEL_123;
            }

            v57 = *v14;
            result = PDAplusDAM(*(v10 + 4 * ((v57 * v56 + ((v57 * v56) >> 8) + 1) >> 8)), HIBYTE(*(v10 + 4 * ((v57 * v56 + ((v57 * v56) >> 8) + 1) >> 8))), bswap32(v19->u16[0]) >> 16, v57, v56 ^ 0xFF);
          }

          else
          {
            result = *(v10 + 4 * *v14);
          }

          v19->i16[0] = bswap32(result) >> 16;
          *v14 = BYTE3(result);
LABEL_123:
          ++v21;
          v19 = (v19 + 2);
          v14 += v15;
          --v55;
        }

        while (v55);
        v21 += v22;
        v19 = (v19 + 2 * v218);
        v14 += v213;
        if (!--v4)
        {
          return result;
        }
      }

    case 4:
      while (1)
      {
        v38 = v223;
        do
        {
          v39 = *v21;
          if (v39 < 0xF8)
          {
            if (v39 < 8)
            {
              goto LABEL_66;
            }

            v40 = *v14;
            result = PDAplusDAM(*(v10 + 4 * (((v40 ^ 0xFF) * v39 + (((v40 ^ 0xFF) * v39) >> 8) + 1) >> 8)), HIBYTE(*(v10 + 4 * (((v40 ^ 0xFF) * v39 + (((v40 ^ 0xFF) * v39) >> 8) + 1) >> 8))), bswap32(v19->u16[0]) >> 16, v40, v39 ^ 0xFF);
          }

          else
          {
            result = *(v10 + 4 * ~*v14);
          }

          v19->i16[0] = bswap32(result) >> 16;
          *v14 = BYTE3(result);
LABEL_66:
          ++v21;
          v19 = (v19 + 2);
          v14 += v15;
          --v38;
        }

        while (v38);
        v21 += v22;
        v19 = (v19 + 2 * v218);
        v14 += v213;
        if (!--v4)
        {
          return result;
        }
      }

    case 5:
      do
      {
        v66 = v223;
        do
        {
          v67 = *v21;
          if (v67 >= 8)
          {
            result = PDAMplusDAM(*(v10 + 4 * v67), HIBYTE(*(v10 + 4 * v67)), *v14, bswap32(v19->u16[0]) >> 16, *v14, HIBYTE(*(v10 + 4 * v67)) ^ 0xFFu);
            v19->i16[0] = bswap32(result) >> 16;
            *v14 = BYTE3(result);
          }

          ++v21;
          v19 = (v19 + 2);
          v14 += v15;
          --v66;
        }

        while (v66);
        v21 += v22;
        v19 = (v19 + 2 * v218);
        v14 += v213;
        --v4;
      }

      while (v4);
      return result;
    case 6:
      while (1)
      {
        v76 = v223;
        do
        {
          v77 = *v21;
          if (v77 < 8)
          {
            goto LABEL_195;
          }

          v78 = *v14;
          if (v78 > 7)
          {
            if (v78 > 0xF7)
            {
              goto LABEL_195;
            }

            result = PDAplusDAM(bswap32(v19->u16[0]) >> 16, v78, *(v10 + 4 * v77), HIBYTE(*(v10 + 4 * v77)), ~v78);
          }

          else
          {
            result = *(v10 + 4 * v77);
          }

          v19->i16[0] = bswap32(result) >> 16;
          *v14 = BYTE3(result);
LABEL_195:
          ++v21;
          v19 = (v19 + 2);
          v14 += v15;
          --v76;
        }

        while (v76);
        v21 += v22;
        v19 = (v19 + 2 * v218);
        v14 += v213;
        if (!--v4)
        {
          return result;
        }
      }

    case 7:
      if (v6)
      {
        while (1)
        {
          v119 = v223;
          do
          {
            v120 = *v21;
            if (v120 < 0xF8)
            {
              if (v120 < 8)
              {
                goto LABEL_333;
              }

              v121 = bswap32(v19->u16[0]) >> 16;
              v122 = *v14;
              v123 = ~v120 + ((v18 * v120 + ((v18 * v120) >> 8) + 1) >> 8);
            }

            else
            {
              v121 = bswap32(v19->u16[0]) >> 16;
              v122 = *v14;
              v123 = HIBYTE(v210);
            }

            result = PDAM(v121, v122, v123);
            v19->i16[0] = bswap32(result) >> 16;
            *v14 = BYTE3(result);
LABEL_333:
            ++v21;
            v19 = (v19 + 2);
            v14 += v15;
            --v119;
          }

          while (v119);
          v21 += v22;
          v19 = (v19 + 2 * v218);
          v14 += v213;
          if (!--v4)
          {
            return result;
          }
        }
      }

LABEL_336:
      v124 = v223;
      while (1)
      {
        v125 = *v21;
        if (v125 >= 0xF8)
        {
          break;
        }

        if (v125 >= 8)
        {
          v126 = bswap32(v19->u16[0]) >> 16;
          v127 = ~v125 + ((v18 * v125 + ((v18 * v125) >> 8) + 1) >> 8);
          goto LABEL_341;
        }

LABEL_342:
        ++v21;
        v19 = (v19 + 2);
        if (!--v124)
        {
          v21 += v22;
          v19 = (v19 + 2 * v218);
          if (!--v4)
          {
            return result;
          }

          goto LABEL_336;
        }
      }

      v126 = bswap32(v19->u16[0]) >> 16;
      v127 = HIBYTE(v210);
LABEL_341:
      result = PDM(v126, v127);
      v19->i16[0] = __rev16(result);
      goto LABEL_342;
    case 8:
      if (v6)
      {
        while (1)
        {
          v136 = v223;
          do
          {
            v137 = *v21;
            if (v137 < 0xF8)
            {
              if (v137 < 8)
              {
                goto LABEL_375;
              }

              v138 = bswap32(v19->u16[0]) >> 16;
              v139 = *v14;
              v140 = ~((v18 * v137 + ((v18 * v137) >> 8) + 1) >> 8);
            }

            else
            {
              v138 = bswap32(v19->u16[0]) >> 16;
              v139 = *v14;
              v140 = ~HIBYTE(v210);
            }

            result = PDAM(v138, v139, v140);
            v19->i16[0] = bswap32(result) >> 16;
            *v14 = BYTE3(result);
LABEL_375:
            ++v21;
            v19 = (v19 + 2);
            v14 += v15;
            --v136;
          }

          while (v136);
          v21 += v22;
          v19 = (v19 + 2 * v218);
          v14 += v213;
          if (!--v4)
          {
            return result;
          }
        }
      }

LABEL_378:
      v141 = v223;
      while (1)
      {
        v142 = *v21;
        if (v142 >= 0xF8)
        {
          break;
        }

        if (v142 >= 8)
        {
          v143 = bswap32(v19->u16[0]) >> 16;
          v144 = ~((v18 * v142 + ((v18 * v142) >> 8) + 1) >> 8);
          goto LABEL_383;
        }

LABEL_384:
        ++v21;
        v19 = (v19 + 2);
        if (!--v141)
        {
          v21 += v22;
          v19 = (v19 + 2 * v218);
          if (!--v4)
          {
            return result;
          }

          goto LABEL_378;
        }
      }

      v143 = bswap32(v19->u16[0]) >> 16;
      v144 = ~HIBYTE(v210);
LABEL_383:
      result = PDM(v143, v144);
      v19->i16[0] = __rev16(result);
      goto LABEL_384;
    case 9:
      do
      {
        v41 = v223;
        do
        {
          v42 = *v21;
          if (v42 >= 8)
          {
            result = PDAMplusDAM(*(v10 + 4 * v42), HIBYTE(*(v10 + 4 * v42)), *v14 ^ 0xFFu, bswap32(v19->u16[0]) >> 16, *v14, (~v42 + HIBYTE(*(v10 + 4 * v42))));
            v19->i16[0] = bswap32(result) >> 16;
            *v14 = BYTE3(result);
          }

          ++v21;
          v19 = (v19 + 2);
          v14 += v15;
          --v41;
        }

        while (v41);
        v21 += v22;
        v19 = (v19 + 2 * v218);
        v14 += v213;
        --v4;
      }

      while (v4);
      return result;
    case 10:
      do
      {
        v83 = v223;
        do
        {
          v84 = *v21;
          if (v84 >= 8)
          {
            result = PDAMplusDAM(*(v10 + 4 * v84), HIBYTE(*(v10 + 4 * v84)), *v14 ^ 0xFFu, bswap32(v19->u16[0]) >> 16, *v14, HIBYTE(*(v10 + 4 * v84)) ^ 0xFFu);
            v19->i16[0] = bswap32(result) >> 16;
            *v14 = BYTE3(result);
          }

          ++v21;
          v19 = (v19 + 2);
          v14 += v15;
          --v83;
        }

        while (v83);
        v21 += v22;
        v19 = (v19 + 2 * v218);
        v14 += v213;
        --v4;
      }

      while (v4);
      return result;
    case 11:
      if (v6)
      {
        do
        {
          v104 = v223;
          do
          {
            v105 = *v21;
            if (v105 >= 8)
            {
              result = PDAplusdDA(bswap32(v19->u16[0]) >> 16, *v14, *(v10 + 4 * v105), HIBYTE(*(v10 + 4 * v105)));
              v19->i16[0] = bswap32(result) >> 16;
              *v14 = BYTE3(result);
            }

            ++v21;
            v19 = (v19 + 2);
            v14 += v15;
            --v104;
          }

          while (v104);
          v21 += v22;
          v19 = (v19 + 2 * v218);
          v14 += v213;
          --v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v106 = v223;
          do
          {
            v107 = *v21;
            if (v107 >= 8)
            {
              result = PDplusdDA(bswap32(v19->u16[0]) >> 16, *(v10 + 4 * v107), HIBYTE(*(v10 + 4 * v107)));
              v19->i16[0] = __rev16(result);
            }

            ++v21;
            v19 = (v19 + 2);
            --v106;
          }

          while (v106);
          v21 += v22;
          v19 = (v19 + 2 * v218);
          --v4;
        }

        while (v4);
      }

      return result;
    case 12:
      if (v6)
      {
        do
        {
          v108 = v223;
          do
          {
            v109 = *v21;
            if (v109 >= 8)
            {
              result = PDApluslDA(bswap32(v19->u16[0]) >> 16, *v14, *(v10 + 4 * v109), HIBYTE(*(v10 + 4 * v109)));
              v19->i16[0] = bswap32(result) >> 16;
              *v14 = BYTE3(result);
            }

            ++v21;
            v19 = (v19 + 2);
            v14 += v15;
            --v108;
          }

          while (v108);
          v21 += v22;
          v19 = (v19 + 2 * v218);
          v14 += v213;
          --v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v145 = v223;
          do
          {
            v146 = *v21;
            if (v146 >= 8)
            {
              v147 = bswap32(v19->u16[0]);
              v148 = (((HIWORD(v147) << 15) | HIWORD(v147)) & 0x1F07C1F) + (*(result + 4 * v146) & 0x7C1F | (((*(result + 4 * v146) >> 5) & 0x1F) << 20));
              v19->i16[0] = __rev16((((30 * ((v148 >> 5) & 0x100401)) | (15 * ((v148 >> 5) & 0x100401)) | v148) >> 15) & 0x3E0 | ((30 * ((v148 >> 5) & 0x100401)) | (15 * ((v148 >> 5) & 0x100401)) | v148) & 0x7C1F);
            }

            ++v21;
            v19 = (v19 + 2);
            --v145;
          }

          while (v145);
          v21 += v22;
          v19 = (v19 + 2 * v218);
          --v4;
        }

        while (v4);
      }

      return result;
    case 13:
      while (1)
      {
        v72 = v223;
        do
        {
          v73 = *v21;
          if (v73 >= 8)
          {
            result = *(v10 + 4 * v73);
            if (result >> 27)
            {
              v74 = BYTE3(result);
              if (v6)
              {
                v75 = *v14;
                if (v75 < 8)
                {
                  goto LABEL_183;
                }
              }

              else
              {
                v75 = 255;
              }

              result = PDAmultiplyPDA(bswap32(v19->u16[0]) >> 16, v75, *(v10 + 4 * v73), v74);
              if (v6)
              {
                v74 = BYTE3(result);
LABEL_183:
                v19->i16[0] = bswap32(result) >> 16;
                *v14 = v74;
                goto LABEL_185;
              }

              v19->i16[0] = bswap32(result) >> 16;
            }
          }

LABEL_185:
          ++v21;
          v19 = (v19 + 2);
          v14 += v15;
          --v72;
        }

        while (v72);
        v21 += v22;
        v19 = (v19 + 2 * v218);
        v14 += v213;
        if (!--v4)
        {
          return result;
        }
      }

    case 14:
      while (1)
      {
        v34 = v223;
        do
        {
          v35 = *v21;
          if (v35 >= 8)
          {
            result = *(v10 + 4 * v35);
            if (result >> 27)
            {
              v36 = BYTE3(result);
              if (v6)
              {
                v37 = *v14;
                if (v37 < 8)
                {
                  goto LABEL_55;
                }
              }

              else
              {
                v37 = 255;
              }

              result = PDAscreenPDA(bswap32(v19->u16[0]) >> 16, v37, *(v10 + 4 * v35), v36);
              if (v6)
              {
                v36 = BYTE3(result);
LABEL_55:
                v19->i16[0] = bswap32(result) >> 16;
                *v14 = v36;
                goto LABEL_57;
              }

              v19->i16[0] = bswap32(result) >> 16;
            }
          }

LABEL_57:
          ++v21;
          v19 = (v19 + 2);
          v14 += v15;
          --v34;
        }

        while (v34);
        v21 += v22;
        v19 = (v19 + 2 * v218);
        v14 += v213;
        if (!--v4)
        {
          return result;
        }
      }

    case 15:
      while (1)
      {
        v51 = v223;
        do
        {
          v52 = *v21;
          if (v52 >= 8)
          {
            result = *(v10 + 4 * v52);
            if (result >> 27)
            {
              v53 = BYTE3(result);
              if (v6)
              {
                v54 = *v14;
                if (v54 < 8)
                {
                  goto LABEL_112;
                }
              }

              else
              {
                v54 = 255;
              }

              result = PDAoverlayPDA(bswap32(v19->u16[0]) >> 16, v54, *(v10 + 4 * v52), v53);
              if (v6)
              {
                v53 = BYTE3(result);
LABEL_112:
                v19->i16[0] = bswap32(result) >> 16;
                *v14 = v53;
                goto LABEL_114;
              }

              v19->i16[0] = bswap32(result) >> 16;
            }
          }

LABEL_114:
          ++v21;
          v19 = (v19 + 2);
          v14 += v15;
          --v51;
        }

        while (v51);
        v21 += v22;
        v19 = (v19 + 2 * v218);
        v14 += v213;
        if (!--v4)
        {
          return result;
        }
      }

    case 16:
      while (1)
      {
        v30 = v223;
        do
        {
          v31 = *v21;
          if (v31 >= 8)
          {
            result = *(v10 + 4 * v31);
            if (result >> 27)
            {
              v32 = BYTE3(result);
              if (v6)
              {
                v33 = *v14;
                if (v33 < 8)
                {
                  goto LABEL_41;
                }
              }

              else
              {
                v33 = 255;
              }

              result = PDAdarkenPDA(bswap32(v19->u16[0]) >> 16, v33, *(v10 + 4 * v31), v32);
              if (v6)
              {
                v32 = BYTE3(result);
LABEL_41:
                v19->i16[0] = bswap32(result) >> 16;
                *v14 = v32;
                goto LABEL_43;
              }

              v19->i16[0] = bswap32(result) >> 16;
            }
          }

LABEL_43:
          ++v21;
          v19 = (v19 + 2);
          v14 += v15;
          --v30;
        }

        while (v30);
        v21 += v22;
        v19 = (v19 + 2 * v218);
        v14 += v213;
        if (!--v4)
        {
          return result;
        }
      }

    case 17:
      while (1)
      {
        v58 = v223;
        do
        {
          v59 = *v21;
          if (v59 >= 8)
          {
            result = *(v10 + 4 * v59);
            if (result >> 27)
            {
              v60 = BYTE3(result);
              if (v6)
              {
                v61 = *v14;
                if (v61 < 8)
                {
                  goto LABEL_135;
                }
              }

              else
              {
                v61 = 255;
              }

              result = PDAlightenPDA(bswap32(v19->u16[0]) >> 16, v61, *(v10 + 4 * v59), v60);
              if (v6)
              {
                v60 = BYTE3(result);
LABEL_135:
                v19->i16[0] = bswap32(result) >> 16;
                *v14 = v60;
                goto LABEL_137;
              }

              v19->i16[0] = bswap32(result) >> 16;
            }
          }

LABEL_137:
          ++v21;
          v19 = (v19 + 2);
          v14 += v15;
          --v58;
        }

        while (v58);
        v21 += v22;
        v19 = (v19 + 2 * v218);
        v14 += v213;
        if (!--v4)
        {
          return result;
        }
      }

    case 18:
      while (1)
      {
        v79 = v223;
        do
        {
          v80 = *v21;
          if (v80 >= 8)
          {
            result = *(v10 + 4 * v80);
            if (result >> 27)
            {
              v81 = BYTE3(result);
              if (v6)
              {
                v82 = *v14;
                if (v82 < 8)
                {
                  goto LABEL_207;
                }
              }

              else
              {
                v82 = 255;
              }

              result = PDAcolordodgePDA(bswap32(v19->u16[0]) >> 16, v82, *(v10 + 4 * v80), v81);
              if (v6)
              {
                v81 = BYTE3(result);
LABEL_207:
                v19->i16[0] = bswap32(result) >> 16;
                *v14 = v81;
                goto LABEL_209;
              }

              v19->i16[0] = bswap32(result) >> 16;
            }
          }

LABEL_209:
          ++v21;
          v19 = (v19 + 2);
          v14 += v15;
          --v79;
        }

        while (v79);
        v21 += v22;
        v19 = (v19 + 2 * v218);
        v14 += v213;
        if (!--v4)
        {
          return result;
        }
      }

    case 19:
      while (1)
      {
        v89 = v223;
        do
        {
          v90 = *v21;
          if (v90 >= 8)
          {
            result = *(v10 + 4 * v90);
            if (result >> 27)
            {
              v91 = BYTE3(result);
              if (v6)
              {
                v92 = *v14;
                if (v92 < 8)
                {
                  goto LABEL_241;
                }
              }

              else
              {
                v92 = 255;
              }

              result = PDAcolorburnPDA(bswap32(v19->u16[0]) >> 16, v92, *(v10 + 4 * v90), v91);
              if (v6)
              {
                v91 = BYTE3(result);
LABEL_241:
                v19->i16[0] = bswap32(result) >> 16;
                *v14 = v91;
                goto LABEL_243;
              }

              v19->i16[0] = bswap32(result) >> 16;
            }
          }

LABEL_243:
          ++v21;
          v19 = (v19 + 2);
          v14 += v15;
          --v89;
        }

        while (v89);
        v21 += v22;
        v19 = (v19 + 2 * v218);
        v14 += v213;
        if (!--v4)
        {
          return result;
        }
      }

    case 20:
      while (1)
      {
        v62 = v223;
        do
        {
          v63 = *v21;
          if (v63 >= 8)
          {
            result = *(v10 + 4 * v63);
            if (result >> 27)
            {
              v64 = BYTE3(result);
              if (v6)
              {
                v65 = *v14;
                if (v65 < 8)
                {
                  goto LABEL_149;
                }
              }

              else
              {
                v65 = 255;
              }

              result = PDAsoftlightPDA(bswap32(v19->u16[0]) >> 16, v65, *(v10 + 4 * v63), v64);
              if (v6)
              {
                v64 = BYTE3(result);
LABEL_149:
                v19->i16[0] = bswap32(result) >> 16;
                *v14 = v64;
                goto LABEL_151;
              }

              v19->i16[0] = bswap32(result) >> 16;
            }
          }

LABEL_151:
          ++v21;
          v19 = (v19 + 2);
          v14 += v15;
          --v62;
        }

        while (v62);
        v21 += v22;
        v19 = (v19 + 2 * v218);
        v14 += v213;
        if (!--v4)
        {
          return result;
        }
      }

    case 21:
      while (1)
      {
        v68 = v223;
        do
        {
          v69 = *v21;
          if (v69 >= 8)
          {
            result = *(v10 + 4 * v69);
            if (result >> 27)
            {
              v70 = BYTE3(result);
              if (v6)
              {
                v71 = *v14;
                if (v71 < 8)
                {
                  goto LABEL_169;
                }
              }

              else
              {
                v71 = 255;
              }

              result = PDAhardlightPDA(bswap32(v19->u16[0]) >> 16, v71, *(v10 + 4 * v69), v70);
              if (v6)
              {
                v70 = BYTE3(result);
LABEL_169:
                v19->i16[0] = bswap32(result) >> 16;
                *v14 = v70;
                goto LABEL_171;
              }

              v19->i16[0] = bswap32(result) >> 16;
            }
          }

LABEL_171:
          ++v21;
          v19 = (v19 + 2);
          v14 += v15;
          --v68;
        }

        while (v68);
        v21 += v22;
        v19 = (v19 + 2 * v218);
        v14 += v213;
        if (!--v4)
        {
          return result;
        }
      }

    case 22:
      while (1)
      {
        v85 = v223;
        do
        {
          v86 = *v21;
          if (v86 >= 8)
          {
            result = *(v10 + 4 * v86);
            if (result >> 27)
            {
              v87 = BYTE3(result);
              if (v6)
              {
                v88 = *v14;
                if (v88 < 8)
                {
                  goto LABEL_227;
                }
              }

              else
              {
                v88 = 255;
              }

              result = PDAdifferencePDA(bswap32(v19->u16[0]) >> 16, v88, *(v10 + 4 * v86), v87);
              if (v6)
              {
                v87 = BYTE3(result);
LABEL_227:
                v19->i16[0] = bswap32(result) >> 16;
                *v14 = v87;
                goto LABEL_229;
              }

              v19->i16[0] = bswap32(result) >> 16;
            }
          }

LABEL_229:
          ++v21;
          v19 = (v19 + 2);
          v14 += v15;
          --v85;
        }

        while (v85);
        v21 += v22;
        v19 = (v19 + 2 * v218);
        v14 += v213;
        if (!--v4)
        {
          return result;
        }
      }

    case 23:
      while (1)
      {
        v93 = v223;
        do
        {
          v94 = *v21;
          if (v94 >= 8)
          {
            result = *(v10 + 4 * v94);
            if (result >> 27)
            {
              v95 = BYTE3(result);
              if (v6)
              {
                v96 = *v14;
                if (v96 < 8)
                {
                  goto LABEL_255;
                }
              }

              else
              {
                v96 = 255;
              }

              result = PDAexclusionPDA(bswap32(v19->u16[0]) >> 16, v96, *(v10 + 4 * v94), v95);
              if (v6)
              {
                v95 = BYTE3(result);
LABEL_255:
                v19->i16[0] = bswap32(result) >> 16;
                *v14 = v95;
                goto LABEL_257;
              }

              v19->i16[0] = bswap32(result) >> 16;
            }
          }

LABEL_257:
          ++v21;
          v19 = (v19 + 2);
          v14 += v15;
          --v93;
        }

        while (v93);
        v21 += v22;
        v19 = (v19 + 2 * v218);
        v14 += v213;
        if (!--v4)
        {
          return result;
        }
      }

    case 24:
      while (1)
      {
        v47 = v223;
        do
        {
          v48 = *v21;
          if (v48 >= 8)
          {
            result = *(v10 + 4 * v48);
            if (result >> 27)
            {
              v49 = BYTE3(result);
              if (v6)
              {
                v50 = *v14;
                if (v50 < 8)
                {
                  goto LABEL_98;
                }
              }

              else
              {
                v50 = 255;
              }

              result = PDAhuePDA(bswap32(v19->u16[0]) >> 16, v50, *(v10 + 4 * v48), v49);
              if (v6)
              {
                v49 = BYTE3(result);
LABEL_98:
                v19->i16[0] = bswap32(result) >> 16;
                *v14 = v49;
                goto LABEL_100;
              }

              v19->i16[0] = bswap32(result) >> 16;
            }
          }

LABEL_100:
          ++v21;
          v19 = (v19 + 2);
          v14 += v15;
          --v47;
        }

        while (v47);
        v21 += v22;
        v19 = (v19 + 2 * v218);
        v14 += v213;
        if (!--v4)
        {
          return result;
        }
      }

    case 25:
      while (1)
      {
        v43 = v223;
        do
        {
          v44 = *v21;
          if (v44 >= 8)
          {
            result = *(v10 + 4 * v44);
            if (result >> 27)
            {
              v45 = BYTE3(result);
              if (v6)
              {
                v46 = *v14;
                if (v46 < 8)
                {
                  goto LABEL_84;
                }
              }

              else
              {
                v46 = 255;
              }

              result = PDAsaturationPDA(bswap32(v19->u16[0]) >> 16, v46, *(v10 + 4 * v44), v45);
              if (v6)
              {
                v45 = BYTE3(result);
LABEL_84:
                v19->i16[0] = bswap32(result) >> 16;
                *v14 = v45;
                goto LABEL_86;
              }

              v19->i16[0] = bswap32(result) >> 16;
            }
          }

LABEL_86:
          ++v21;
          v19 = (v19 + 2);
          v14 += v15;
          --v43;
        }

        while (v43);
        v21 += v22;
        v19 = (v19 + 2 * v218);
        v14 += v213;
        if (!--v4)
        {
          return result;
        }
      }

    case 26:
      while (1)
      {
        v97 = v223;
        do
        {
          v98 = *v21;
          if (v98 >= 8)
          {
            result = *(v10 + 4 * v98);
            if (result >> 27)
            {
              v99 = BYTE3(result);
              if (v6)
              {
                v100 = *v14;
                if (v100 < 8)
                {
                  goto LABEL_269;
                }
              }

              else
              {
                v100 = 255;
              }

              result = PDAluminosityPDA(*(v10 + 4 * v98), v99, bswap32(v19->u16[0]) >> 16, v100);
              if (v6)
              {
                v99 = BYTE3(result);
LABEL_269:
                v19->i16[0] = bswap32(result) >> 16;
                *v14 = v99;
                goto LABEL_271;
              }

              v19->i16[0] = bswap32(result) >> 16;
            }
          }

LABEL_271:
          ++v21;
          v19 = (v19 + 2);
          v14 += v15;
          --v97;
        }

        while (v97);
        v21 += v22;
        v19 = (v19 + 2 * v218);
        v14 += v213;
        if (!--v4)
        {
          return result;
        }
      }

    case 27:
      break;
    default:
      return result;
  }

LABEL_18:
  v26 = v223;
  while (1)
  {
    v27 = *v21;
    if (v27 < 8)
    {
      goto LABEL_29;
    }

    result = *(v10 + 4 * v27);
    if (!(result >> 27))
    {
      goto LABEL_29;
    }

    v28 = BYTE3(result);
    if (v6)
    {
      v29 = *v14;
      if (v29 < 8)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v29 = 255;
    }

    result = PDAluminosityPDA(bswap32(v19->u16[0]) >> 16, v29, *(v10 + 4 * v27), v28);
    if (!v6)
    {
      v19->i16[0] = bswap32(result) >> 16;
      goto LABEL_29;
    }

    v28 = BYTE3(result);
LABEL_27:
    v19->i16[0] = bswap32(result) >> 16;
    *v14 = v28;
LABEL_29:
    ++v21;
    v19 = (v19 + 2);
    v14 += v15;
    if (!--v26)
    {
      v21 += v22;
      v19 = (v19 + 2 * v218);
      v14 += v213;
      if (!--v4)
      {
        return result;
      }

      goto LABEL_18;
    }
  }
}