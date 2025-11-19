uint64_t W16_image(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = *a1;
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
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  memset(v48, 0, 512);
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

  if (_blt_image_initialize(a2, a3, &v31, v48) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = *a3;
  *(&v31 + 1) = __PAIR64__(*v6, *a3);
  if (v18 == 68161796)
  {
    if (!v42 && (~DWORD1(v32) & 0xC3) == 0)
    {
      v17.n128_u32[0] = *(a3 + 8);
      if (v17.n128_f32[0] >= 1.0 && !*(a3 + 24))
      {
        if ((BYTE4(v32) & 4) != 0)
        {
          v17.n128_u64[0] = *(a3 + 32);
          *(a2 + 8) = v17.n128_u64[0];
        }

        W16_mark(a1, v17);
        return 1;
      }
    }

    *&v31 = w16_sample_W16;
    goto LABEL_37;
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
      case 7:
        v20 = 0;
        v21 = 32;
        break;
      case 9:
        v20 = 0;
        v21 = 40;
        break;
      case 8:
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
  *&v31 = *&W16_image_sample[2 * v19 + 2];
  if (v31)
  {
    v22 = 68161828;
    goto LABEL_36;
  }

  if ((HIWORD(*a3) & 0x3Fu) <= 8)
  {
    *&v31 = *&W8_image_sample[2 * v19 + 2];
    if (v31)
    {
      v22 = 34083076;
      goto LABEL_36;
    }
  }

  *&v31 = *&WF_image_sample[2 * v19 + 2];
  if (!v31)
  {
    return 0xFFFFFFFFLL;
  }

  LODWORD(v32) = 8;
  v22 = 136319269;
LABEL_36:
  DWORD2(v31) = v22;
  if ((v20 & 1) != 0 || (v8 - 1) > 1 || (BYTE4(v32) & 7) != 3 || a2[2] != 5 && a2[2] || v19 > 0xB)
  {
    goto LABEL_37;
  }

  HIDWORD(v24) = v21;
  LODWORD(v24) = v21;
  v23 = v24 >> 3;
  if (v23 > 2)
  {
    if (v23 == 3)
    {
      DWORD2(v31) = *a3;
      v25 = W16_image_mark_RGB24;
      goto LABEL_66;
    }

    if (v23 == 4)
    {
      DWORD2(v31) = *a3;
      v25 = W16_image_mark_rgb32;
      goto LABEL_66;
    }

    if (v23 != 5)
    {
      goto LABEL_37;
    }

    DWORD2(v31) = *a3;
    v26 = W16_image_mark_rgb32;
LABEL_64:
    v27 = v26;
    v28 = a2;
    v29 = v8;
    v30 = 8;
LABEL_67:
    w16_image_mark_image(v28, &v31, v29, v30, v27);
    return 1;
  }

  switch(v23)
  {
    case 0:
      DWORD2(v31) = *a3;
      v25 = W16_image_mark_RGB32;
      goto LABEL_66;
    case 1:
      DWORD2(v31) = *a3;
      v26 = W16_image_mark_RGB32;
      goto LABEL_64;
    case 2:
      DWORD2(v31) = *a3;
      v25 = W16_image_mark_W8;
LABEL_66:
      v27 = v25;
      v28 = a2;
      v29 = v8;
      v30 = 0;
      goto LABEL_67;
  }

LABEL_37:
  W16_image_mark(a2, &v31, v8, v17);
  return 1;
}

uint64_t W16_mark(uint64_t a1, __n128 a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v796 = *MEMORY[0x1E69E9840];
  v5 = *(v3 + 96);
  v6 = *(v3 + 48);
  v7 = *(*(*v2 + 56) + 16 * *v3 + 8 * (v5 == 0) + 4 * (v6 == 0));
  if (v7 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v3;
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
  v736 = v3;
  if ((*v3 & 0xFF0000) == 0x50000 || !v14)
  {
    v16 = *v3 & 0xFF00;
    v738 = *(*(*v2 + 56) + 16 * *v3 + 8 * (v5 == 0) + 4 * (v6 == 0));
    if (v16 == 1024)
    {
      v795[0] = *(v3 + 4);
      v785[0] = v12;
      v17 = **(v3 + 88);
      v18 = bswap32(v17);
      if (v5)
      {
        v19 = bswap32(*v5) << 16;
      }

      else
      {
        v19 = -65536;
      }

      v32 = v19 | v18;
      v33 = *(v3 + 28) >> 1;
      v34 = *(v3 + 12);
      v35 = *(v3 + 16);
      if (v6)
      {
        v776 = *(v3 + 32) >> 1;
        v774 = v6 + 2 * v776 * v35 + 2 * v34;
        v767 = 1;
      }

      else
      {
        v774 = 0;
        v776 = 0;
        v767 = 0;
      }

      v39 = WORD1(v32);
      v748 = ~WORD1(v32);
      v40 = (*(v3 + 40) + 2 * v35 * v33 + 2 * v34);
      v770 = *(v3 + 28) >> 1;
      v772 = v40;
      v766 = **(v3 + 88);
      v763 = v19 | v18;
      if (v14)
      {
        shape_enum_clip_alloc(v2, v3, v14, 1, 1, 1, *(v3 + 104), *(v3 + 108), v10, v12);
        v42 = v41;
        v43 = v774;
        v783 = v776;
        if (v41)
        {
          goto LABEL_1363;
        }

        return 1;
      }

      v778 = 0;
      if (v6)
      {
        v44 = v10;
      }

      else
      {
        v44 = 0;
      }

      v43 = v774;
      v783 = v776 - v44;
      v45 = v10;
LABEL_990:
      v781 = v33 - v45;
      v33 = HIWORD(v17);
      switch(v7)
      {
        case 0:
          v546 = v32;
          v547 = v781 + v10;
          v548 = v10;
          v549 = v785[0];
          v550 = v785[0] - 1;
          v551 = v40 + 2 * ((v547 * v550) & (v547 >> 63));
          if (v547 < 0)
          {
            v547 = -v547;
          }

          CGBlt_fillBytes(2 * v548, v785[0], 0, v551, 2 * v547);
          if (v6)
          {
            v552 = v783 + v548;
            v43 += 2 * ((v552 * v550) & (v552 >> 63));
            if (v552 < 0)
            {
              v552 = -v552;
            }

            v783 = v552;
            CGBlt_fillBytes(2 * v548, v549, 0, v43, 2 * v552);
          }

          v7 = v738;
          v32 = v546;
          goto LABEL_1327;
        case 1:
          v635 = v10;
          v636 = v781 + v10;
          if (v636 < 0)
          {
            v40 = (v40 + 2 * v636 * (v785[0] - 1));
            v636 = -v636;
          }

          v637 = 0;
          v638 = *(v736 + 88);
          if (v638)
          {
            v637 = *v638;
          }

          v639 = 2 * v10;
          v640 = v785[0];
          CGBlt_fillBytes(v639, v785[0], v637, v40, 2 * v636);
          if (v6)
          {
            v641 = *(v736 + 96);
            if (!v641)
            {
              v641 = &PIXELALPHAPLANARCONSTANT_18034;
            }

            v642 = v783 + v635;
            v43 += 2 * (((v783 + v635) * (v640 - 1)) & ((v783 + v635) >> 63));
            if ((v783 + v635) < 0)
            {
              v642 = -v642;
            }

            v783 = v642;
            CGBlt_fillBytes(v639, v640, *v641, v43, 2 * v642);
          }

          v7 = v738;
          goto LABEL_1327;
        case 2:
          v602 = v785[0];
          v603 = v10 >> 2;
          v604 = 8 * v767;
          v605 = 2 * v767;
          if (v6)
          {
            v606 = v603 + 1;
            v33 = v770;
            do
            {
              if (v10 < 4)
              {
                v616 = v10;
              }

              else
              {
                v607 = v606;
                do
                {
                  v608 = bswap32(v40->u16[0]);
                  v609 = bswap32(*v43);
                  v40->i16[0] = bswap32(v18 + ((HIWORD(v608) * v748 + ((HIWORD(v608) * v748) >> 16) + 1) >> 16)) >> 16;
                  *v43 = bswap32(((HIWORD(v609) * v748 + ((HIWORD(v609) * v748) >> 16) + 1) >> 16) + WORD1(v32)) >> 16;
                  v610 = bswap32(v40->u16[1]);
                  v611 = bswap32(*(v43 + 1));
                  v40->i16[1] = bswap32(v18 + ((HIWORD(v610) * v748 + ((HIWORD(v610) * v748) >> 16) + 1) >> 16)) >> 16;
                  *(v43 + 1) = bswap32(((HIWORD(v611) * v748 + ((HIWORD(v611) * v748) >> 16) + 1) >> 16) + WORD1(v32)) >> 16;
                  v612 = bswap32(v40->u16[2]);
                  v613 = bswap32(*(v43 + 2));
                  v40->i16[2] = bswap32(v18 + ((HIWORD(v612) * v748 + ((HIWORD(v612) * v748) >> 16) + 1) >> 16)) >> 16;
                  *(v43 + 2) = bswap32(((HIWORD(v613) * v748 + ((HIWORD(v613) * v748) >> 16) + 1) >> 16) + WORD1(v32)) >> 16;
                  v614 = bswap32(v40->u16[3]);
                  v615 = bswap32(*(v43 + 3));
                  v40->i16[3] = bswap32(v18 + ((HIWORD(v614) * v748 + ((HIWORD(v614) * v748) >> 16) + 1) >> 16)) >> 16;
                  *(v43 + 3) = bswap32(((HIWORD(v615) * v748 + ((HIWORD(v615) * v748) >> 16) + 1) >> 16) + WORD1(v32)) >> 16;
                  ++v40;
                  --v607;
                  v43 += v604;
                }

                while (v607 > 1);
                v616 = v10 & 3;
              }

              if (v616 >= 1)
              {
                v617 = v616 + 1;
                do
                {
                  v618 = bswap32(v40->u16[0]);
                  v619 = bswap32(*v43);
                  v40->i16[0] = bswap32(v18 + ((HIWORD(v618) * v748 + ((HIWORD(v618) * v748) >> 16) + 1) >> 16)) >> 16;
                  v40 = (v40 + 2);
                  *v43 = bswap32(((HIWORD(v619) * v748 + ((HIWORD(v619) * v748) >> 16) + 1) >> 16) + WORD1(v32)) >> 16;
                  v43 += v605;
                  --v617;
                }

                while (v617 > 1);
              }

              v40 = (v40 + 2 * v781);
              v43 += 2 * v783;
              --v602;
            }

            while (v602);
          }

          else
          {
            v720 = vdup_n_s16(v18);
            v721 = v603 + 1;
            v722 = vdup_n_s16(v748);
            v723.i64[0] = 0x100000001;
            v723.i64[1] = 0x100000001;
            v33 = v770;
            do
            {
              if (v10 < 4)
              {
                v726 = v10;
              }

              else
              {
                v724 = v721;
                do
                {
                  v725 = vmull_u16(v722, vrev16_s8(*v40));
                  *v40++ = vrev16_s8(vadd_s16(v720, vaddhn_s32(vsraq_n_u32(v725, v725, 0x10uLL), v723)));
                  --v724;
                  v43 += v604;
                }

                while (v724 > 1);
                v726 = v10 & 3;
              }

              if (v726 >= 1)
              {
                v727 = v726 + 1;
                do
                {
                  v728 = bswap32(v40->u16[0]);
                  v40->i16[0] = bswap32(v18 + ((HIWORD(v728) * v748 + ((HIWORD(v728) * v748) >> 16) + 1) >> 16)) >> 16;
                  v40 = (v40 + 2);
                  v43 += v605;
                  --v727;
                }

                while (v727 > 1);
              }

              v40 = (v40 + 2 * v781);
              v43 += 2 * v783;
              --v602;
            }

            while (v602);
          }

          goto LABEL_1360;
        case 3:
          v625 = bswap32(v32);
          v626 = v785[0];
          do
          {
            v627 = v10;
            do
            {
              v628 = bswap32(*v43) >> 16;
              if (v628 == 0xFFFF)
              {
                v40->i16[0] = HIWORD(v17);
                LOWORD(v628) = v625;
              }

              else if (v628)
              {
                v629 = v628 ^ 0xFFFF;
                v40->i16[0] = bswap32(v18 - ((v18 * v629 + ((v18 * v629) >> 16) + 1) >> 16)) >> 16;
                v628 = bswap32(v39 - ((v39 * v629 + ((v39 * v629) >> 16) + 1) >> 16)) >> 16;
              }

              else
              {
                v40->i16[0] = 0;
              }

              *v43 = v628;
              v40 = (v40 + 2);
              v43 += 2 * v767;
              --v627;
            }

            while (v627);
            v40 = (v40 + 2 * v781);
            v43 += 2 * v783;
            --v626;
          }

          while (v626);
          goto LABEL_1312;
        case 4:
          v578 = bswap32(v32);
          v579 = v785[0];
          do
          {
            v580 = v10;
            do
            {
              v581 = bswap32(*v43) >> 16;
              if (v581)
              {
                if (v581 != 0xFFFF)
                {
                  v40->i16[0] = bswap32(v18 - ((v18 * v581 + ((v18 * v581) >> 16) + 1) >> 16)) >> 16;
                  v582 = bswap32(v39 - ((v39 * v581 + ((v39 * v581) >> 16) + 1) >> 16)) >> 16;
                }

                else
                {
                  LOWORD(v582) = 0;
                  v40->i16[0] = 0;
                }
              }

              else
              {
                v40->i16[0] = HIWORD(v17);
                LOWORD(v582) = v578;
              }

              *v43 = v582;
              v40 = (v40 + 2);
              v43 += 2 * v767;
              --v580;
            }

            while (v580);
            v40 = (v40 + 2 * v781);
            v43 += 2 * v783;
            --v579;
          }

          while (v579);
          goto LABEL_1312;
        case 5:
          v653 = v785[0];
          v33 = v770;
          do
          {
            v654 = v10;
            do
            {
              v655 = bswap32(*v43);
              v656 = bswap32(v40->u16[0]);
              v40->i16[0] = bswap32(v18 * HIWORD(v655) + HIWORD(v656) * v748 + ((v18 * HIWORD(v655) + HIWORD(v656) * v748) >> 16) + 1);
              v40 = (v40 + 2);
              *v43 = bswap32((v748 + HIWORD(v655)) * v39 + (((v748 + HIWORD(v655)) * v39) >> 16) + 1);
              v43 += 2 * v767;
              --v654;
            }

            while (v654);
            v40 = (v40 + 2 * v781);
            v43 += 2 * v783;
            --v653;
          }

          while (v653);
          goto LABEL_1360;
        case 6:
          v667 = bswap32(v32);
          v668 = v785[0];
          do
          {
            v669 = v10;
            do
            {
              v670 = bswap32(*v43);
              if (HIWORD(v670) != 0xFFFF)
              {
                if (~HIWORD(v670) == 0xFFFF)
                {
                  v40->i16[0] = HIWORD(v17);
                  LOWORD(v671) = v667;
                }

                else
                {
                  v672 = HIWORD(v670);
                  v673 = ~HIWORD(v670);
                  v40->i16[0] = bswap32((bswap32(v40->u16[0]) >> 16) + ((v18 * v673 + ((v18 * v673) >> 16) + 1) >> 16)) >> 16;
                  v671 = bswap32(v672 + ((v39 * v673 + ((v39 * v673) >> 16) + 1) >> 16)) >> 16;
                }

                *v43 = v671;
              }

              v40 = (v40 + 2);
              v43 += 2 * v767;
              --v669;
            }

            while (v669);
            v40 = (v40 + 2 * v781);
            v43 += 2 * v783;
            --v668;
          }

          while (v668);
          goto LABEL_1312;
        case 7:
          v630 = v785[0];
          v631 = 2 * v767;
          if (v6)
          {
            v33 = v770;
            do
            {
              v632 = v10;
              do
              {
                v633 = bswap32(v40->u16[0]);
                v634 = bswap32(*v43);
                v40->i16[0] = bswap32(HIWORD(v633) - ((HIWORD(v633) * v748 + ((HIWORD(v633) * v748) >> 16) + 1) >> 16)) >> 16;
                v40 = (v40 + 2);
                *v43 = bswap32(HIWORD(v634) - ((HIWORD(v634) * v748 + ((HIWORD(v634) * v748) >> 16) + 1) >> 16)) >> 16;
                v43 += v631;
                --v632;
              }

              while (v632);
              v40 = (v40 + 2 * v781);
              v43 += 2 * v783;
              --v630;
            }

            while (v630);
          }

          else
          {
            v33 = v770;
            do
            {
              v729 = v10;
              do
              {
                v730 = bswap32(v40->u16[0]);
                v40->i16[0] = bswap32(HIWORD(v730) - ((HIWORD(v730) * v748 + ((HIWORD(v730) * v748) >> 16) + 1) >> 16)) >> 16;
                v40 = (v40 + 2);
                v43 += v631;
                --v729;
              }

              while (v729);
              v40 = (v40 + 2 * v781);
              v43 += 2 * v783;
              --v630;
            }

            while (v630);
          }

          goto LABEL_1360;
        case 8:
          v683 = v785[0];
          v684 = 2 * v767;
          if (v6)
          {
            v33 = v770;
            do
            {
              v685 = v10;
              do
              {
                v686 = bswap32(v40->u16[0]);
                v687 = bswap32(*v43);
                v40->i16[0] = bswap32(HIWORD(v686) - ((v39 * HIWORD(v686) + ((v39 * HIWORD(v686)) >> 16) + 1) >> 16)) >> 16;
                v40 = (v40 + 2);
                *v43 = bswap32(HIWORD(v687) - ((v39 * HIWORD(v687) + ((v39 * HIWORD(v687)) >> 16) + 1) >> 16)) >> 16;
                v43 += v684;
                --v685;
              }

              while (v685);
              v40 = (v40 + 2 * v781);
              v43 += 2 * v783;
              --v683;
            }

            while (v683);
          }

          else
          {
            v33 = v770;
            do
            {
              v731 = v10;
              do
              {
                v732 = bswap32(v40->u16[0]);
                v40->i16[0] = bswap32(HIWORD(v732) - ((v39 * HIWORD(v732) + ((v39 * HIWORD(v732)) >> 16) + 1) >> 16)) >> 16;
                v40 = (v40 + 2);
                v43 += v684;
                --v731;
              }

              while (v731);
              v40 = (v40 + 2 * v781);
              v43 += 2 * v783;
              --v683;
            }

            while (v683);
          }

          goto LABEL_1360;
        case 9:
          v588 = v785[0];
          v33 = v770;
          do
          {
            v589 = v10;
            do
            {
              v590 = bswap32(~*v43);
              v591 = bswap32(v40->u16[0]);
              v40->i16[0] = bswap32(v18 * HIWORD(v590) + v39 * HIWORD(v591) + ((v18 * HIWORD(v590) + v39 * HIWORD(v591)) >> 16) + 1);
              v40 = (v40 + 2);
              *v43 = bswap32((v39 + HIWORD(v590)) * v39 + (((v39 + HIWORD(v590)) * v39) >> 16) + 1);
              v43 += 2 * v767;
              --v589;
            }

            while (v589);
            v40 = (v40 + 2 * v781);
            v43 += 2 * v783;
            --v588;
          }

          while (v588);
          goto LABEL_1360;
        case 10:
          v679 = v785[0];
          v33 = v770;
          do
          {
            v680 = v10;
            do
            {
              v681 = bswap32(~*v43);
              v682 = bswap32(v40->u16[0]);
              v40->i16[0] = bswap32(v18 * HIWORD(v681) + HIWORD(v682) * v748 + ((v18 * HIWORD(v681) + HIWORD(v682) * v748) >> 16) + 1);
              v40 = (v40 + 2);
              *v43 = bswap32((v748 + HIWORD(v681)) * v39 + (((v748 + HIWORD(v681)) * v39) >> 16) + 1);
              v43 += 2 * v767;
              --v680;
            }

            while (v680);
            v40 = (v40 + 2 * v781);
            v43 += 2 * v783;
            --v679;
          }

          while (v679);
          goto LABEL_1360;
        case 11:
          if (v6)
          {
            v573 = v785[0];
            v33 = v770;
            do
            {
              v574 = v10;
              do
              {
                v575 = bswap32(*v43);
                v576 = v39 - (v18 + (bswap32(v40->u16[0]) >> 16)) + HIWORD(v575);
                v577 = v39 + HIWORD(v575);
                if (v576 >= 0xFFFF)
                {
                  v576 = 0xFFFF;
                }

                if (v577 >= 0xFFFF)
                {
                  v577 = 0xFFFF;
                }

                v40->i16[0] = bswap32(v577 - v576) >> 16;
                v40 = (v40 + 2);
                *v43 = bswap32(v577) >> 16;
                v43 += 2 * v767;
                --v574;
              }

              while (v574);
              v40 = (v40 + 2 * v781);
              v43 += 2 * v783;
              --v573;
            }

            while (v573);
          }

          else
          {
            v714 = v785[0];
            v33 = v770;
            do
            {
              v715 = v10;
              do
              {
                v716 = v39 - v18 + (bswap32(~v40->u16[0]) >> 16);
                if (v716 >= 0xFFFF)
                {
                  v716 = 0xFFFF;
                }

                v40->i16[0] = bswap32(~v716) >> 16;
                v40 = (v40 + 2);
                v43 += 2 * v767;
                --v715;
              }

              while (v715);
              v40 = (v40 + 2 * v781);
              v43 += 2 * v783;
              --v714;
            }

            while (v714);
          }

          goto LABEL_1360;
        case 12:
          if (v6)
          {
            v583 = v785[0];
            v33 = v770;
            do
            {
              v584 = v10;
              do
              {
                v585 = v18 + (bswap32(v40->u16[0]) >> 16);
                v586 = v39 + (bswap32(*v43) >> 16);
                if (v585 >= 0xFFFF)
                {
                  v585 = 0xFFFF;
                }

                v40->i16[0] = bswap32(v585) >> 16;
                v40 = (v40 + 2);
                if (v586 >= 0xFFFF)
                {
                  v587 = 0xFFFF;
                }

                else
                {
                  v587 = v586;
                }

                *v43 = bswap32(v587) >> 16;
                v43 += 2 * v767;
                --v584;
              }

              while (v584);
              v40 = (v40 + 2 * v781);
              v43 += 2 * v783;
              --v583;
            }

            while (v583);
          }

          else
          {
            v717 = v785[0];
            v33 = v770;
            do
            {
              v718 = v10;
              do
              {
                v719 = bswap32(v40->u16[0]);
                v40->i16[0] = bswap32((v719 >> 15) & 0xFFFE | ((v719 >> 16) >> 15)) >> 16;
                v40 = (v40 + 2);
                v43 += 2 * v767;
                --v718;
              }

              while (v718);
              v40 = (v40 + 2 * v781);
              v43 += 2 * v783;
              --v717;
            }

            while (v717);
          }

LABEL_1360:
          v785[0] = 0;
          goto LABEL_1361;
        case 13:
          if (v32 < 0x10000)
          {
            goto LABEL_1327;
          }

          v662 = bswap32(v32);
          v663 = v785[0];
          while (1)
          {
            v664 = v10;
            do
            {
              if (!v6)
              {
                v665 = 0xFFFF;
LABEL_1217:
                v666 = bswap32(PDAmultiplyPDA_8993(bswap32(v40->u16[0]) >> 16, v665, v18, v39));
                v40->i16[0] = HIWORD(v666);
                if (!v6)
                {
                  goto LABEL_1221;
                }

                goto LABEL_1220;
              }

              if (*v43)
              {
                v665 = __rev16(*v43);
                goto LABEL_1217;
              }

              v40->i16[0] = v33;
              LOWORD(v666) = v662;
LABEL_1220:
              *v43 = v666;
LABEL_1221:
              v40 = (v40 + 2);
              v43 += 2 * v767;
              --v664;
            }

            while (v664);
            v40 = (v40 + 2 * v781);
            v43 += 2 * v783;
            if (!--v663)
            {
              goto LABEL_1326;
            }
          }

        case 14:
          if (v32 < 0x10000)
          {
            goto LABEL_1327;
          }

          v563 = bswap32(v32);
          v564 = v785[0];
          while (1)
          {
            v565 = v10;
            do
            {
              if (v6)
              {
                if (!*v43)
                {
                  v40->i16[0] = HIWORD(v17);
                  *v43 = v563;
                  goto LABEL_1043;
                }

                v566 = __rev16(*v43);
              }

              else
              {
                v566 = 0xFFFF;
              }

              v567 = bswap32(v40->u16[0]);
              v568 = (HIWORD(v567) ^ 0xFFFF) * v18 - HIWORD(v567) + (HIWORD(v567) << 16);
              if (v568 <= 0xFFFE8000)
              {
                v569 = v568 + 0x8000;
              }

              else
              {
                v569 = 4294868992;
              }

              v570 = v569 + (v569 >> 16);
              if (v6)
              {
                v571 = 0xFFFF * (v39 + v566) - v39 * v566;
                if (v571 <= 4294868992)
                {
                  v572 = v571 + 0x8000;
                }

                else
                {
                  v572 = 4294868992;
                }

                v40->i16[0] = bswap32(v570);
                *v43 = bswap32((v570 >> 16) | ((v572 >> 16) + v572));
              }

              else
              {
                v40->i16[0] = bswap32(v570);
              }

LABEL_1043:
              v40 = (v40 + 2);
              v43 += 2 * v767;
              --v565;
            }

            while (v565);
            v40 = (v40 + 2 * v781);
            v43 += 2 * v783;
            if (!--v564)
            {
LABEL_1312:
              v785[0] = 0;
LABEL_1327:
              v33 = v770;
LABEL_1361:
              v40 = v772;
              v42 = v778;
              if (!v778)
              {
                return 1;
              }

              v784 = 0;
LABEL_1363:
              if (!shape_enum_clip_next(v42, &v784 + 1, &v784, v795, v785))
              {
                goto LABEL_1369;
              }

              v778 = v42;
              v40 = (v40 + 2 * v33 * v784 + 2 * SHIDWORD(v784));
              v45 = v795[0];
              if (v6)
              {
                v43 = (v774 + 2 * v776 * v784 + 2 * SHIDWORD(v784));
              }

              v733 = v783;
              if (v6)
              {
                v733 = v776 - v795[0];
              }

              v783 = v733;
              LODWORD(v10) = v795[0];
              goto LABEL_990;
            }
          }

        case 15:
          if (v32 < 0x10000)
          {
            goto LABEL_1327;
          }

          v620 = bswap32(v32);
          v621 = v785[0];
          while (1)
          {
            v622 = v10;
            do
            {
              if (!v6)
              {
                v623 = 0xFFFF;
LABEL_1129:
                v624 = bswap32(PDAoverlayPDA_8994(bswap32(v40->u16[0]) >> 16, v623, v18, v39));
                v40->i16[0] = HIWORD(v624);
                if (!v6)
                {
                  goto LABEL_1133;
                }

                goto LABEL_1132;
              }

              if (*v43)
              {
                v623 = __rev16(*v43);
                goto LABEL_1129;
              }

              v40->i16[0] = v33;
              LOWORD(v624) = v620;
LABEL_1132:
              *v43 = v624;
LABEL_1133:
              v40 = (v40 + 2);
              v43 += 2 * v767;
              --v622;
            }

            while (v622);
            v40 = (v40 + 2 * v781);
            v43 += 2 * v783;
            if (!--v621)
            {
              goto LABEL_1326;
            }
          }

        case 16:
          if (v32 < 0x10000)
          {
            goto LABEL_1327;
          }

          v558 = bswap32(v32);
          v559 = v785[0];
          while (1)
          {
            v560 = v10;
            do
            {
              if (!v6)
              {
                v561 = 0xFFFF;
LABEL_1019:
                v562 = bswap32(PDAdarkenPDA_8996(bswap32(v40->u16[0]) >> 16, v561, v18, v39));
                v40->i16[0] = HIWORD(v562);
                if (!v6)
                {
                  goto LABEL_1023;
                }

                goto LABEL_1022;
              }

              if (*v43)
              {
                v561 = __rev16(*v43);
                goto LABEL_1019;
              }

              v40->i16[0] = v33;
              LOWORD(v562) = v558;
LABEL_1022:
              *v43 = v562;
LABEL_1023:
              v40 = (v40 + 2);
              v43 += 2 * v767;
              --v560;
            }

            while (v560);
            v40 = (v40 + 2 * v781);
            v43 += 2 * v783;
            if (!--v559)
            {
              goto LABEL_1326;
            }
          }

        case 17:
          if (v32 < 0x10000)
          {
            goto LABEL_1327;
          }

          v643 = bswap32(v32);
          v644 = v785[0];
          while (1)
          {
            v645 = v10;
            do
            {
              if (!v6)
              {
                v646 = 0xFFFF;
LABEL_1170:
                v647 = bswap32(PDAlightenPDA_8995(bswap32(v40->u16[0]) >> 16, v646, v18, v39));
                v40->i16[0] = HIWORD(v647);
                if (!v6)
                {
                  goto LABEL_1174;
                }

                goto LABEL_1173;
              }

              if (*v43)
              {
                v646 = __rev16(*v43);
                goto LABEL_1170;
              }

              v40->i16[0] = v33;
              LOWORD(v647) = v643;
LABEL_1173:
              *v43 = v647;
LABEL_1174:
              v40 = (v40 + 2);
              v43 += 2 * v767;
              --v645;
            }

            while (v645);
            v40 = (v40 + 2 * v781);
            v43 += 2 * v783;
            if (!--v644)
            {
              goto LABEL_1326;
            }
          }

        case 18:
          if (v32 < 0x10000)
          {
            goto LABEL_1327;
          }

          v674 = bswap32(v32);
          v675 = v785[0];
          while (1)
          {
            v676 = v10;
            do
            {
              if (!v6)
              {
                v677 = 0xFFFF;
LABEL_1241:
                v678 = bswap32(PDAcolordodgePDA_8997(bswap32(v40->u16[0]) >> 16, v677, v18, v39));
                v40->i16[0] = HIWORD(v678);
                if (!v6)
                {
                  goto LABEL_1245;
                }

                goto LABEL_1244;
              }

              if (*v43)
              {
                v677 = __rev16(*v43);
                goto LABEL_1241;
              }

              v40->i16[0] = v33;
              LOWORD(v678) = v674;
LABEL_1244:
              *v43 = v678;
LABEL_1245:
              v40 = (v40 + 2);
              v43 += 2 * v767;
              --v676;
            }

            while (v676);
            v40 = (v40 + 2 * v781);
            v43 += 2 * v783;
            if (!--v675)
            {
LABEL_1326:
              v785[0] = 0;
              v7 = v738;
              v17 = v766;
              v32 = v763;
              goto LABEL_1327;
            }
          }

        case 19:
          if (v32 < 0x10000)
          {
            goto LABEL_1327;
          }

          v693 = bswap32(v32);
          v694 = v785[0];
          while (1)
          {
            v695 = v10;
            do
            {
              if (!v6)
              {
                v696 = 0xFFFF;
LABEL_1280:
                v697 = bswap32(PDAcolorburnPDA_8998(bswap32(v40->u16[0]) >> 16, v696, v18, v39));
                v40->i16[0] = HIWORD(v697);
                if (!v6)
                {
                  goto LABEL_1284;
                }

                goto LABEL_1283;
              }

              if (*v43)
              {
                v696 = __rev16(*v43);
                goto LABEL_1280;
              }

              v40->i16[0] = v33;
              LOWORD(v697) = v693;
LABEL_1283:
              *v43 = v697;
LABEL_1284:
              v40 = (v40 + 2);
              v43 += 2 * v767;
              --v695;
            }

            while (v695);
            v40 = (v40 + 2 * v781);
            v43 += 2 * v783;
            if (!--v694)
            {
              goto LABEL_1326;
            }
          }

        case 20:
          if (v32 < 0x10000)
          {
            goto LABEL_1327;
          }

          v648 = bswap32(v32);
          v649 = v785[0];
          while (1)
          {
            v650 = v10;
            do
            {
              if (!v6)
              {
                v651 = 0xFFFF;
LABEL_1184:
                v652 = bswap32(PDAsoftlightPDA_9000(bswap32(v40->u16[0]) >> 16, v651, v18, v39));
                v40->i16[0] = HIWORD(v652);
                if (!v6)
                {
                  goto LABEL_1188;
                }

                goto LABEL_1187;
              }

              if (*v43)
              {
                v651 = __rev16(*v43);
                goto LABEL_1184;
              }

              v40->i16[0] = v33;
              LOWORD(v652) = v648;
LABEL_1187:
              *v43 = v652;
LABEL_1188:
              v40 = (v40 + 2);
              v43 += 2 * v767;
              --v650;
            }

            while (v650);
            v40 = (v40 + 2 * v781);
            v43 += 2 * v783;
            if (!--v649)
            {
              goto LABEL_1326;
            }
          }

        case 21:
          if (v32 < 0x10000)
          {
            goto LABEL_1327;
          }

          v657 = bswap32(v32);
          v658 = v785[0];
          while (1)
          {
            v659 = v10;
            do
            {
              if (!v6)
              {
                v660 = 0xFFFF;
LABEL_1203:
                v661 = bswap32(PDAhardlightPDA_8999(bswap32(v40->u16[0]) >> 16, v660, v18, v39));
                v40->i16[0] = HIWORD(v661);
                if (!v6)
                {
                  goto LABEL_1207;
                }

                goto LABEL_1206;
              }

              if (*v43)
              {
                v660 = __rev16(*v43);
                goto LABEL_1203;
              }

              v40->i16[0] = v33;
              LOWORD(v661) = v657;
LABEL_1206:
              *v43 = v661;
LABEL_1207:
              v40 = (v40 + 2);
              v43 += 2 * v767;
              --v659;
            }

            while (v659);
            v40 = (v40 + 2 * v781);
            v43 += 2 * v783;
            if (!--v658)
            {
              goto LABEL_1326;
            }
          }

        case 22:
          if (v32 < 0x10000)
          {
            goto LABEL_1327;
          }

          v688 = bswap32(v32);
          v689 = v785[0];
          while (1)
          {
            v690 = v10;
            do
            {
              if (!v6)
              {
                v691 = 0xFFFF;
LABEL_1266:
                v692 = bswap32(PDAdifferencePDA_9001(bswap32(v40->u16[0]) >> 16, v691, v18, v39));
                v40->i16[0] = HIWORD(v692);
                if (!v6)
                {
                  goto LABEL_1270;
                }

                goto LABEL_1269;
              }

              if (*v43)
              {
                v691 = __rev16(*v43);
                goto LABEL_1266;
              }

              v40->i16[0] = v33;
              LOWORD(v692) = v688;
LABEL_1269:
              *v43 = v692;
LABEL_1270:
              v40 = (v40 + 2);
              v43 += 2 * v767;
              --v690;
            }

            while (v690);
            v40 = (v40 + 2 * v781);
            v43 += 2 * v783;
            if (!--v689)
            {
              goto LABEL_1326;
            }
          }

        case 23:
          if (v32 < 0x10000)
          {
            goto LABEL_1327;
          }

          v698 = __rev16(v39);
          if (v18 >= WORD1(v32))
          {
            v699 = v39;
          }

          else
          {
            v699 = v18;
          }

          v700 = v785[0];
          while (1)
          {
            v701 = v10;
            do
            {
              if (v6)
              {
                if (!*v43)
                {
                  v40->i16[0] = HIWORD(v17);
                  *v43 = v698;
                  goto LABEL_1310;
                }

                v702 = __rev16(*v43);
              }

              else
              {
                v702 = 0xFFFF;
              }

              LODWORD(v703) = bswap32(v40->u16[0]) >> 16;
              if (v703 >= v702)
              {
                v703 = v702;
              }

              else
              {
                v703 = v703;
              }

              v704 = 0xFFFF * (v703 + v699) - (2 * v699) * v703;
              if (v704 <= 4294868992)
              {
                v705 = v704 + 0x8000;
              }

              else
              {
                v705 = 4294868992;
              }

              v706 = v705 + (v705 >> 16);
              if (v6)
              {
                v707 = 0xFFFF * (v39 + v702) - v39 * v702;
                if (v707 <= 4294868992)
                {
                  v708 = v707 + 0x8000;
                }

                else
                {
                  v708 = 4294868992;
                }

                v40->i16[0] = bswap32(v706);
                *v43 = bswap32((v706 >> 16) | ((v708 >> 16) + v708));
              }

              else
              {
                v40->i16[0] = bswap32(v706);
              }

LABEL_1310:
              v40 = (v40 + 2);
              v43 += 2 * v767;
              --v701;
            }

            while (v701);
            v40 = (v40 + 2 * v781);
            v43 += 2 * v783;
            if (!--v700)
            {
              goto LABEL_1312;
            }
          }

        case 24:
          if (v32 < 0x10000)
          {
            goto LABEL_1327;
          }

          v597 = bswap32(v32);
          v598 = v785[0];
          while (1)
          {
            v599 = v10;
            do
            {
              if (!v6)
              {
                v600 = 0xFFFF;
LABEL_1103:
                v601 = bswap32(PDAhuePDA_9002(bswap32(v40->u16[0]) >> 16, v600, v18, v39));
                v40->i16[0] = HIWORD(v601);
                if (!v6)
                {
                  goto LABEL_1107;
                }

                goto LABEL_1106;
              }

              if (*v43)
              {
                v600 = __rev16(*v43);
                goto LABEL_1103;
              }

              v40->i16[0] = v33;
              LOWORD(v601) = v597;
LABEL_1106:
              *v43 = v601;
LABEL_1107:
              v40 = (v40 + 2);
              v43 += 2 * v767;
              --v599;
            }

            while (v599);
            v40 = (v40 + 2 * v781);
            v43 += 2 * v783;
            if (!--v598)
            {
              goto LABEL_1326;
            }
          }

        case 25:
          if (v32 < 0x10000)
          {
            goto LABEL_1327;
          }

          v592 = bswap32(v32);
          v593 = v785[0];
          while (1)
          {
            v594 = v10;
            do
            {
              if (!v6)
              {
                v595 = 0xFFFF;
LABEL_1089:
                v596 = bswap32(PDAhuePDA_9002(bswap32(v40->u16[0]) >> 16, v595, v18, v39));
                v40->i16[0] = HIWORD(v596);
                if (!v6)
                {
                  goto LABEL_1093;
                }

                goto LABEL_1092;
              }

              if (*v43)
              {
                v595 = __rev16(*v43);
                goto LABEL_1089;
              }

              v40->i16[0] = v33;
              LOWORD(v596) = v592;
LABEL_1092:
              *v43 = v596;
LABEL_1093:
              v40 = (v40 + 2);
              v43 += 2 * v767;
              --v594;
            }

            while (v594);
            v40 = (v40 + 2 * v781);
            v43 += 2 * v783;
            if (!--v593)
            {
              goto LABEL_1326;
            }
          }

        case 26:
          if (v32 < 0x10000)
          {
            goto LABEL_1327;
          }

          v709 = bswap32(v32);
          v710 = v785[0];
          while (1)
          {
            v711 = v10;
            do
            {
              if (!v6)
              {
                v712 = 0xFFFF;
LABEL_1320:
                v713 = bswap32(PDAluminosityPDA_9004(v18, v39, bswap32(v40->u16[0]) >> 16, v712));
                v40->i16[0] = HIWORD(v713);
                if (!v6)
                {
                  goto LABEL_1324;
                }

                goto LABEL_1323;
              }

              if (*v43)
              {
                v712 = __rev16(*v43);
                goto LABEL_1320;
              }

              v40->i16[0] = v33;
              LOWORD(v713) = v709;
LABEL_1323:
              *v43 = v713;
LABEL_1324:
              v40 = (v40 + 2);
              v43 += 2 * v767;
              --v711;
            }

            while (v711);
            v40 = (v40 + 2 * v781);
            v43 += 2 * v783;
            if (!--v710)
            {
              goto LABEL_1326;
            }
          }

        case 27:
          if (v32 < 0x10000)
          {
            goto LABEL_1327;
          }

          v553 = bswap32(v32);
          v554 = v785[0];
          break;
        default:
          goto LABEL_1361;
      }

LABEL_1000:
      v555 = v10;
      while (1)
      {
        if (v6)
        {
          if (!*v43)
          {
            v40->i16[0] = v33;
            LOWORD(v557) = v553;
LABEL_1008:
            *v43 = v557;
            goto LABEL_1009;
          }

          v556 = __rev16(*v43);
        }

        else
        {
          v556 = 0xFFFF;
        }

        v557 = bswap32(PDAluminosityPDA_9004(bswap32(v40->u16[0]) >> 16, v556, v18, v39));
        v40->i16[0] = HIWORD(v557);
        if (v6)
        {
          goto LABEL_1008;
        }

LABEL_1009:
        v40 = (v40 + 2);
        v43 += 2 * v767;
        if (!--v555)
        {
          v40 = (v40 + 2 * v781);
          v43 += 2 * v783;
          if (!--v554)
          {
            goto LABEL_1326;
          }

          goto LABEL_1000;
        }
      }
    }

    v795[0] = *(v3 + 4);
    v785[0] = v12;
    v20 = *(v3 + 88);
    v21 = *(v3 + 12);
    v22 = *(v3 + 16);
    v23 = *(v3 + 28) >> 1;
    if (v6)
    {
      v741 = *(v3 + 32) >> 1;
      v742 = v6 + 2 * v741 * v22 + 2 * v21;
      v24 = 0xFFFFFFFFLL;
    }

    else
    {
      v741 = 0;
      v742 = 0;
      v24 = 0;
    }

    v740 = *(v3 + 40) + 2 * v22 * v23 + 2 * v21;
    v36 = *(v3 + 56);
    v37 = *(v3 + 60);
    v765 = *(v3 + 76) >> 1;
    if (v16 == 256)
    {
      if (v5)
      {
        v768 = *(v3 + 80) >> 1;
        v5 = (v5 + 2 * v768 * v37 + 2 * v36);
        v782 = 0xFFFFFFFFLL;
      }

      else
      {
        v768 = 0;
        v782 = 0;
      }

      v20 += v37 * v765 + v36;
      if (v765 == v23)
      {
        v52 = (v740 - v20) >> 1;
        if (v52 >= 1)
        {
          if (v52 <= v10)
          {
            v740 += 2 * v11;
            v20 += v11;
            v742 += 2 * (v24 & v11);
            v54 = -1;
            v765 = *(v3 + 28) >> 1;
            v5 = (v5 + 2 * (v782 & v11));
            goto LABEL_49;
          }

          v53 = &v20[v23 * v13];
          if (v740 <= &v53[v10 - 1])
          {
            v740 += 2 * v23 * v13;
            v23 = -v23;
            v69 = v742 + 2 * v741 * v13;
            v741 = -v741;
            v742 = v69;
            v5 = (v5 + 2 * v768 * v13);
            v24 &= 1u;
            v765 = v23;
            v768 = -v768;
            v782 &= 1u;
            v54 = 1;
            v20 = v53;
            goto LABEL_49;
          }
        }
      }

      v24 &= 1u;
      v782 &= 1u;
      v54 = 1;
LABEL_49:
      v734 = *(v3 + 56);
      v735 = *(v3 + 60);
      if (v14)
      {
        v780 = v24;
        v773 = 0;
        v764 = 0;
        v55 = -1;
        v38 = v765;
        v744 = v768;
        goto LABEL_54;
      }

      v60 = v54 * v10;
      v777 = v741 - v24 * v10;
      v61 = -1;
      v62 = v768;
      v743 = v54;
      v744 = v768;
      v63 = v765;
      v38 = v765;
LABEL_62:
      v67 = v782;
      v745 = 0;
      v746 = v20;
      v771 = v5;
      v773 = 0;
      v764 = 0;
      v765 = v63 - v60;
      v768 = v62 - v782 * v10;
      v58 = v5;
      v59 = v742;
      v68 = v740;
      goto LABEL_66;
    }

    v38 = *(v3 + 64);
    v744 = *(v3 + 68);
    if (v5)
    {
      v768 = *(v3 + 80) >> 1;
      v782 = 1;
    }

    else
    {
      v768 = 0;
      v782 = 0;
    }

    v764 = &v20[v765 * v744];
    v24 &= 1u;
    if (v14)
    {
      v734 = *(v3 + 56);
      v735 = *(v3 + 60);
      v780 = v24;
      v54 = 1;
      v773 = *(v3 + 88);
      v55 = v773;
LABEL_54:
      v743 = v54;
      v747 = v23;
      shape_enum_clip_alloc(v2, v3, v14, v54, v23, 1, *(v3 + 104), *(v3 + 108), v10, v12);
      v42 = v56;
      v57 = v5;
      v58 = v5;
      v59 = v742;
      v777 = v741;
      if (!v56)
      {
        return 1;
      }

      goto LABEL_938;
    }

    v777 = v741 - (v24 * v10);
    if (!v20)
    {
      v734 = *(v3 + 56);
      v735 = *(v3 + 60);
      v61 = 0;
      v743 = 1;
      v60 = v10;
      v63 = *(v3 + 76) >> 1;
      v62 = v768;
      goto LABEL_62;
    }

    v64 = v37 % v744;
    v735 = v37 % v744;
    v746 = *(v3 + 88);
    v65 = &v20[v765 * v64];
    v66 = v36 % v38;
    v20 = &v65[v66];
    v61 = &v65[v38];
    v67 = v782;
    v734 = v66;
    v773 = v20;
    v745 = 0;
    if (v5)
    {
      v58 = v5 + 2 * v768 * v64 + 2 * v66;
      v743 = 1;
      v67 = 1;
      v771 = v58;
    }

    else
    {
      v771 = 0;
      v58 = 0;
      v743 = 1;
    }

    v59 = v742;
    v68 = v740;
    v60 = v10;
LABEL_66:
    v780 = v24;
    v782 = v67;
    v747 = v23;
    v775 = v23 - v60;
    v769 = v10;
    switch(v7)
    {
      case 0:
        v749 = v61;
        v70 = v775 - v10;
        v71 = &v68[-2 * v10 + 2];
        if (v743 >= 0)
        {
          v71 = v68;
          v70 = v775 + v10;
        }

        v72 = v785[0];
        v73 = v785[0] - 1;
        v74 = (v71 + 2 * ((v70 * v73) & (v70 >> 63)));
        if (v70 < 0)
        {
          v70 = -v70;
        }

        v75 = 2 * v10;
        CGBlt_fillBytes(2 * v10, v785[0], 0, v74, 2 * v70);
        if (!v24)
        {
          v7 = v738;
          goto LABEL_980;
        }

        if (v743 < 0)
        {
          v76 = v777 - v10;
          v59 = &v59[-2 * v10 + 2];
        }

        else
        {
          v76 = v777 + v10;
        }

        v42 = v745;
        v59 += 2 * ((v76 * v73) & (v76 >> 63));
        if (v76 < 0)
        {
          v76 = -v76;
        }

        v777 = v76;
        CGBlt_fillBytes(v75, v72, 0, v59, 2 * v76);
        v7 = v738;
        v20 = v746;
        goto LABEL_988;
      case 1:
        v253 = *(v9 + 1);
        if (v253 == 2)
        {
          if (v10 >= 16 && (2 * v38) <= 0x40)
          {
            v4.i32[0] = 2 * v38;
            v493 = vcnt_s8(v4);
            v493.i16[0] = vaddlv_u8(v493);
            if (v493.i32[0] <= 1u)
            {
              v749 = v61;
              v494 = v68;
              v495 = v785[0];
              CGSFillDRAM64(v494, 2 * (v10 + v775), 2 * v10, v785[0], v746, 2 * v765, 2 * v38, v744, 2 * v734, v735);
              if (v24)
              {
                if (v782)
                {
                  CGSFillDRAM64(v59, 2 * (v10 + v777), 2 * v10, v495, v5, 2 * v768, 2 * v38, v744, 2 * v734, v735);
                }

                else
                {
                  CGBlt_fillBytes(2 * v10, v495, -1, v59, 2 * (v10 + v777));
                }
              }

              goto LABEL_980;
            }
          }
        }

        else if (v253 == 1)
        {
          v749 = v61;
          if (v743 < 0)
          {
            v254 = v765 - v10;
            v531 = 2 * v10 - 2;
            v20 = (v20 - v531);
            v255 = v775 - v10;
            v68 -= v531;
          }

          else
          {
            v254 = v765 + v10;
            v255 = v775 + v10;
          }

          v532 = v785[0] - 1;
          v533 = &v20[(v254 * v532) & (v254 >> 63)];
          if (v254 >= 0)
          {
            v534 = v254;
          }

          else
          {
            v534 = -v254;
          }

          if (v255 >= 0)
          {
            LODWORD(v535) = v255;
          }

          else
          {
            v535 = -v255;
          }

          v765 = v534;
          v779 = v785[0];
          CGBlt_copyBytes(2 * v10, v785[0], v533, &v68[2 * ((v255 * v532) & (v255 >> 63))], 2 * v534, 2 * v535);
          if (v24)
          {
            v20 = v746;
            if (v782)
            {
              v536 = v768 - v10;
              v537 = 2 * v10 - 2;
              v538 = &v58[-v537];
              v539 = v777 - v10;
              v540 = &v59[-v537];
              if (v743 >= 0)
              {
                v538 = v58;
                v540 = v59;
                v536 = v768 + v10;
                v539 = v777 + v10;
              }

              v58 = &v538[2 * ((v536 * v532) & (v536 >> 63))];
              if (v536 >= 0)
              {
                v541 = v536;
              }

              else
              {
                v541 = -v536;
              }

              v59 = &v540[2 * ((v539 * v532) & (v539 >> 63))];
              if (v539 >= 0)
              {
                v542 = v539;
              }

              else
              {
                v542 = -v539;
              }

              v768 = v541;
              v777 = v542;
              CGBlt_copyBytes(2 * v10, v779, v58, v59, 2 * v541, 2 * v542);
            }

            else
            {
              v543 = v777 - v10;
              v544 = &v59[-2 * v10 + 2];
              if (v743 >= 0)
              {
                v544 = v59;
                v543 = v777 + v10;
              }

              v545 = (v543 * v532) & (v543 >> 63);
              v59 = (v544 + 2 * v545);
              if (v543 < 0)
              {
                v543 = -v543;
              }

              v777 = v543;
              CGBlt_fillBytes(2 * v10, v779, -1, (v544 + 2 * v545), 2 * v543);
            }

            v7 = v738;
LABEL_987:
            v42 = v745;
LABEL_988:
            v61 = v749;
            goto LABEL_745;
          }

          v7 = v738;
LABEL_980:
          v20 = v746;
          goto LABEL_987;
        }

        if (v24)
        {
          v496 = v24;
          if (v67)
          {
            v497 = v67;
            v498 = v785[0];
            v499 = 2 * v24;
            v57 = v771;
            v161 = v773;
            do
            {
              v500 = v10;
              do
              {
                *v68 = *v20;
                *v59 = *v58;
                v501 = &v20[v743];
                if (v501 >= v61)
                {
                  v502 = -v38;
                }

                else
                {
                  v502 = 0;
                }

                v58 += 2 * v497 + 2 * v502;
                v20 = &v501[v502];
                v59 += v499;
                v68 += 2 * v743;
                --v500;
              }

              while (v500);
              if (v764)
              {
                v503 = &v161[v765];
                if (v503 >= v764)
                {
                  v504 = -(v768 * v744);
                }

                else
                {
                  v504 = 0;
                }

                v57 = (v57 + 2 * v768 + 2 * v504);
                if (v503 >= v764)
                {
                  v505 = -(v765 * v744);
                }

                else
                {
                  v505 = 0;
                }

                v161 = &v503[v505];
                v61 += 2 * v505 + 2 * v765;
                v58 = v57;
                v20 = v161;
              }

              else
              {
                v20 += v765;
                v58 += 2 * v768;
              }

              v68 += 2 * v775;
              v59 += 2 * v777;
              --v498;
            }

            while (v498);
LABEL_897:
            v773 = v161;
LABEL_936:
            v785[0] = 0;
            v42 = v745;
            v20 = v746;
            if (!v745)
            {
              return 1;
            }

            goto LABEL_937;
          }

          v513 = v785[0];
          v57 = v771;
          v445 = v773;
          do
          {
            v514 = v10;
            do
            {
              *v68 = *v20;
              *v59 = -1;
              v515 = &v20[v743];
              if (v515 >= v61)
              {
                v516 = -v38;
              }

              else
              {
                v516 = 0;
              }

              v58 += 2 * v516;
              v20 = &v515[v516];
              v59 += 2 * v496;
              v68 += 2 * v743;
              --v514;
            }

            while (v514);
            if (v764)
            {
              v517 = &v445[v765];
              if (v517 >= v764)
              {
                v518 = -(v768 * v744);
              }

              else
              {
                v518 = 0;
              }

              v57 = (v57 + 2 * v768 + 2 * v518);
              if (v517 >= v764)
              {
                v519 = -(v765 * v744);
              }

              else
              {
                v519 = 0;
              }

              v445 = &v517[v519];
              v61 += 2 * v519 + 2 * v765;
              v58 = v57;
              v20 = v445;
            }

            else
            {
              v20 += v765;
              v58 += 2 * v768;
            }

            v68 += 2 * v775;
            v59 += 2 * v777;
            --v513;
          }

          while (v513);
        }

        else
        {
          v506 = v785[0];
          v57 = v771;
          v445 = v773;
          do
          {
            v507 = v10;
            do
            {
              *v68 = *v20;
              v508 = &v20[v743];
              if (v508 >= v61)
              {
                v509 = -v38;
              }

              else
              {
                v509 = 0;
              }

              v58 += 2 * v67 + 2 * v509;
              v20 = &v508[v509];
              v68 += 2 * v743;
              --v507;
            }

            while (v507);
            if (v764)
            {
              v510 = &v445[v765];
              if (v510 >= v764)
              {
                v511 = -(v768 * v744);
              }

              else
              {
                v511 = 0;
              }

              v57 = (v57 + 2 * v768 + 2 * v511);
              if (v510 >= v764)
              {
                v512 = -(v765 * v744);
              }

              else
              {
                v512 = 0;
              }

              v445 = &v510[v512];
              v61 += 2 * v512 + 2 * v765;
              v58 = v57;
              v20 = v445;
            }

            else
            {
              v20 += v765;
              v58 += 2 * v768;
            }

            v68 += 2 * v775;
            v59 += 2 * v777;
            --v506;
          }

          while (v506);
        }

LABEL_935:
        v773 = v445;
        goto LABEL_936;
      case 2:
        v199 = 2 * v743;
        if (v24)
        {
          v200 = v61;
          v201 = v785[0];
          do
          {
            v202 = v10;
            do
            {
              v203 = bswap32(*v58) >> 16;
              if (v203)
              {
                if (v203 == 0xFFFF)
                {
                  *v68 = *v20;
                  LOWORD(v204) = *v58;
                }

                else
                {
                  v205 = bswap32(*v68);
                  v206 = bswap32(*v59);
                  *v68 = bswap32((bswap32(*v20) >> 16) + ((HIWORD(v205) * (v203 ^ 0xFFFF) + ((HIWORD(v205) * (v203 ^ 0xFFFF)) >> 16) + 1) >> 16)) >> 16;
                  v204 = bswap32(v203 + ((HIWORD(v206) * (v203 ^ 0xFFFF) + ((HIWORD(v206) * (v203 ^ 0xFFFF)) >> 16) + 1) >> 16)) >> 16;
                }

                *v59 = v204;
              }

              v207 = &v20[v743];
              if (v207 >= v200)
              {
                v208 = -v38;
              }

              else
              {
                v208 = 0;
              }

              v58 += 2 * v67 + 2 * v208;
              v20 = &v207[v208];
              v59 += 2 * v24;
              v68 += v199;
              --v202;
            }

            while (v202);
            if (v764)
            {
              v209 = &v773[v765];
              if (v209 >= v764)
              {
                v210 = -(v768 * v744);
              }

              else
              {
                v210 = 0;
              }

              v58 = (v771 + 2 * v768 + 2 * v210);
              if (v209 >= v764)
              {
                v211 = -(v765 * v744);
              }

              else
              {
                v211 = 0;
              }

              v20 = &v209[v211];
              v200 += 2 * v211 + 2 * v765;
              v771 += 2 * v768 + 2 * v210;
              v773 = v20;
            }

            else
            {
              v20 += v765;
              v58 += 2 * v768;
            }

            v68 += 2 * v775;
            v59 += 2 * v777;
            --v201;
          }

          while (v201);
LABEL_556:
          v785[0] = 0;
          v42 = v745;
          v20 = v746;
          v61 = v200;
          goto LABEL_745;
        }

        v453 = v67;
        v454 = v785[0];
        v57 = v771;
        v161 = v773;
        do
        {
          v455 = v10;
          do
          {
            v456 = bswap32(*v58) >> 16;
            if (v456)
            {
              if (v456 == 0xFFFF)
              {
                LOWORD(v457) = *v20;
              }

              else
              {
                v458 = bswap32(*v68) >> 16;
                v457 = bswap32((bswap32(*v20) >> 16) + ((v458 * (v456 ^ 0xFFFF) + ((v458 * (v456 ^ 0xFFFF)) >> 16) + 1) >> 16)) >> 16;
              }

              *v68 = v457;
            }

            v459 = &v20[v743];
            if (v459 >= v61)
            {
              v460 = -v38;
            }

            else
            {
              v460 = 0;
            }

            v58 += 2 * v453 + 2 * v460;
            v20 = &v459[v460];
            v68 += v199;
            --v455;
          }

          while (v455);
          if (v764)
          {
            v461 = &v161[v765];
            if (v461 >= v764)
            {
              v462 = -(v768 * v744);
            }

            else
            {
              v462 = 0;
            }

            v57 = (v57 + 2 * v768 + 2 * v462);
            if (v461 >= v764)
            {
              v463 = -(v765 * v744);
            }

            else
            {
              v463 = 0;
            }

            v161 = &v461[v463];
            v61 += 2 * v463 + 2 * v765;
            v58 = v57;
            v20 = v161;
          }

          else
          {
            v20 += v765;
            v58 += 2 * v768;
          }

          v68 += 2 * v775;
          v59 += 2 * v777;
          --v454;
        }

        while (v454);
        goto LABEL_897;
      case 3:
        v226 = 2 * v24;
        v227 = 2 * v743;
        if (v67)
        {
          v122 = v61;
          v228 = v67;
          v229 = v785[0];
          v57 = v771;
          v230 = v773;
          do
          {
            v231 = v10;
            do
            {
              v232 = bswap32(*v59) >> 16;
              if (v232 == 0xFFFF)
              {
                *v68 = *v20;
                LOWORD(v232) = *v58;
              }

              else if (v232)
              {
                v233 = bswap32(*v20) >> 16;
                v234 = bswap32(*v58) >> 16;
                v235 = v232 ^ 0xFFFF;
                *v68 = bswap32(v233 - ((v233 * v235 + ((v233 * v235) >> 16) + 1) >> 16)) >> 16;
                v232 = bswap32(v234 - ((v234 * v235 + ((v234 * v235) >> 16) + 1) >> 16)) >> 16;
              }

              else
              {
                *v68 = 0;
              }

              *v59 = v232;
              v236 = &v20[v743];
              if (v236 >= v122)
              {
                v237 = -v38;
              }

              else
              {
                v237 = 0;
              }

              v58 += 2 * v228 + 2 * v237;
              v20 = &v236[v237];
              v59 += v226;
              v68 += v227;
              --v231;
            }

            while (v231);
            if (v764)
            {
              v238 = &v230[v765];
              if (v238 >= v764)
              {
                v239 = -(v768 * v744);
              }

              else
              {
                v239 = 0;
              }

              v57 = (v57 + 2 * v768 + 2 * v239);
              if (v238 >= v764)
              {
                v240 = -(v765 * v744);
              }

              else
              {
                v240 = 0;
              }

              v230 = &v238[v240];
              v122 += 2 * v240 + 2 * v765;
              v58 = v57;
              v20 = v230;
            }

            else
            {
              v20 += v765;
              v58 += 2 * v768;
            }

            v68 += 2 * v775;
            v59 += 2 * v777;
            --v229;
          }

          while (v229);
          v773 = v230;
          goto LABEL_403;
        }

        v464 = v785[0];
        v57 = v771;
        v445 = v773;
        do
        {
          v465 = v10;
          do
          {
            v466 = bswap32(*v59) >> 16;
            if (v466)
            {
              if (v466 == 0xFFFF)
              {
                LOWORD(v466) = *v20;
              }

              else
              {
                v467 = bswap32(*v20) >> 16;
                v466 = bswap32(v467 - ((v467 * (v466 ^ 0xFFFF) + ((v467 * (v466 ^ 0xFFFF)) >> 16) + 1) >> 16)) >> 16;
              }
            }

            *v68 = v466;
            v468 = &v20[v743];
            if (v468 >= v61)
            {
              v469 = -v38;
            }

            else
            {
              v469 = 0;
            }

            v58 += 2 * v469;
            v20 = &v468[v469];
            v59 += v226;
            v68 += v227;
            --v465;
          }

          while (v465);
          if (v764)
          {
            v470 = &v445[v765];
            if (v470 >= v764)
            {
              v471 = -(v768 * v744);
            }

            else
            {
              v471 = 0;
            }

            v57 = (v57 + 2 * v768 + 2 * v471);
            if (v470 >= v764)
            {
              v472 = -(v765 * v744);
            }

            else
            {
              v472 = 0;
            }

            v445 = &v470[v472];
            v61 += 2 * v472 + 2 * v765;
            v58 = v57;
            v20 = v445;
          }

          else
          {
            v20 += v765;
            v58 += 2 * v768;
          }

          v68 += 2 * v775;
          v59 += 2 * v777;
          --v464;
        }

        while (v464);
        goto LABEL_935;
      case 4:
        v135 = v785[0];
        v136 = 2 * v24;
        v57 = v771;
        do
        {
          v137 = v10;
          do
          {
            v138 = bswap32(*v59) >> 16;
            if (v138)
            {
              if (v138 != 0xFFFF)
              {
                if (v67)
                {
                  v140 = bswap32(*v58) >> 16;
                }

                else
                {
                  v140 = 0xFFFF;
                }

                v141 = bswap32(*v20) >> 16;
                *v68 = bswap32(v141 - ((v141 * v138 + ((v141 * v138) >> 16) + 1) >> 16)) >> 16;
                v139 = bswap32(v140 - ((v140 * v138 + ((v140 * v138) >> 16) + 1) >> 16)) >> 16;
              }

              else
              {
                LOWORD(v139) = 0;
                *v68 = 0;
              }
            }

            else
            {
              if (v67)
              {
                v139 = bswap32(*v58) >> 16;
              }

              else
              {
                v139 = 0xFFFF;
              }

              LOWORD(v139) = __rev16(v139);
            }

            *v59 = v139;
            v142 = &v20[v743];
            if (v142 >= v61)
            {
              v143 = -v38;
            }

            else
            {
              v143 = 0;
            }

            v58 += 2 * v67 + 2 * v143;
            v20 = &v142[v143];
            v59 += v136;
            v68 += 2 * v743;
            --v137;
          }

          while (v137);
          if (v764)
          {
            v144 = &v773[v765];
            if (v144 >= v764)
            {
              v145 = -(v768 * v744);
            }

            else
            {
              v145 = 0;
            }

            v57 = (v57 + 2 * v768 + 2 * v145);
            if (v144 >= v764)
            {
              v146 = -(v765 * v744);
            }

            else
            {
              v146 = 0;
            }

            v20 = &v144[v146];
            v61 += 2 * v146 + 2 * v765;
            v58 = v57;
            v773 = v20;
          }

          else
          {
            v20 += v765;
            v58 += 2 * v768;
          }

          v68 += 2 * v775;
          v59 += 2 * v777;
          --v135;
        }

        while (v135);
        goto LABEL_936;
      case 5:
        v284 = v67;
        v285 = v785[0];
        v286 = 2 * v24;
        v57 = v771;
        v161 = v773;
        do
        {
          v287 = v10;
          do
          {
            v288 = bswap32(*v59);
            v289 = bswap32(*v58) >> 16;
            v290 = bswap32(*v68);
            v291 = (bswap32(*v20) >> 16) * HIWORD(v288);
            *v68 = bswap32(v291 + HIWORD(v290) * (v289 ^ 0xFFFF) + ((v291 + HIWORD(v290) * (v289 ^ 0xFFFF)) >> 16) + 1);
            *v59 = bswap32(((v289 ^ 0xFFFF) + HIWORD(v288)) * v289 + ((((v289 ^ 0xFFFF) + HIWORD(v288)) * v289) >> 16) + 1);
            v292 = &v20[v743];
            if (v292 >= v61)
            {
              v293 = -v38;
            }

            else
            {
              v293 = 0;
            }

            v58 += 2 * v284 + 2 * v293;
            v20 = &v292[v293];
            v59 += v286;
            v68 += 2 * v743;
            --v287;
          }

          while (v287);
          if (v764)
          {
            v294 = &v161[v765];
            if (v294 >= v764)
            {
              v295 = -(v768 * v744);
            }

            else
            {
              v295 = 0;
            }

            v57 = (v57 + 2 * v768 + 2 * v295);
            if (v294 >= v764)
            {
              v296 = -(v765 * v744);
            }

            else
            {
              v296 = 0;
            }

            v161 = &v294[v296];
            v61 += 2 * v296 + 2 * v765;
            v58 = v57;
            v20 = v161;
          }

          else
          {
            v20 += v765;
            v58 += 2 * v768;
          }

          v68 += 2 * v775;
          v59 += 2 * v777;
          --v285;
        }

        while (v285);
        goto LABEL_897;
      case 6:
        v200 = v61;
        v325 = v785[0];
        do
        {
          v326 = v10;
          do
          {
            v327 = bswap32(*v59);
            if (HIWORD(v327) != 0xFFFF)
            {
              if (~HIWORD(v327) == 0xFFFF)
              {
                *v68 = *v20;
                if (v67)
                {
                  v328 = bswap32(*v58) >> 16;
                }

                else
                {
                  v328 = 0xFFFF;
                }
              }

              else
              {
                if (v67)
                {
                  v329 = bswap32(*v58) >> 16;
                }

                else
                {
                  v329 = 0xFFFF;
                }

                v330 = HIWORD(v327);
                v331 = ~HIWORD(v327);
                v332 = (bswap32(*v20) >> 16) * v331;
                *v68 = bswap32((bswap32(*v68) >> 16) + ((v332 + HIWORD(v332) + 1) >> 16)) >> 16;
                v328 = v330 + ((v329 * v331 + ((v329 * v331) >> 16) + 1) >> 16);
              }

              *v59 = bswap32(v328) >> 16;
            }

            v333 = &v20[v743];
            if (v333 >= v200)
            {
              v334 = -v38;
            }

            else
            {
              v334 = 0;
            }

            v58 += 2 * v67 + 2 * v334;
            v20 = &v333[v334];
            v59 += 2 * v24;
            v68 += 2 * v743;
            --v326;
          }

          while (v326);
          if (v764)
          {
            v335 = &v773[v765];
            if (v335 >= v764)
            {
              v336 = -(v768 * v744);
            }

            else
            {
              v336 = 0;
            }

            v58 = (v771 + 2 * v768 + 2 * v336);
            if (v335 >= v764)
            {
              v337 = -(v765 * v744);
            }

            else
            {
              v337 = 0;
            }

            v20 = &v335[v337];
            v200 += 2 * v337 + 2 * v765;
            v771 += 2 * v768 + 2 * v336;
            v773 = v20;
          }

          else
          {
            v20 += v765;
            v58 += 2 * v768;
          }

          v68 += 2 * v775;
          v59 += 2 * v777;
          --v325;
        }

        while (v325);
        goto LABEL_556;
      case 7:
        if (v24)
        {
          v122 = v61;
          v241 = v785[0];
          v242 = 2 * v24;
          v57 = v771;
          do
          {
            v243 = v10;
            do
            {
              v244 = bswap32(*v58) >> 16;
              if (v244 != 0xFFFF)
              {
                if (v244)
                {
                  v245 = bswap32(*v68) >> 16;
                  v246 = bswap32(*v59) >> 16;
                  v247 = v244 ^ 0xFFFF;
                  *v68 = bswap32(v245 - ((v245 * v247 + ((v245 * v247) >> 16) + 1) >> 16)) >> 16;
                  v244 = bswap32(v246 - ((v246 * v247 + ((v246 * v247) >> 16) + 1) >> 16)) >> 16;
                }

                else
                {
                  *v68 = 0;
                }

                *v59 = v244;
              }

              v248 = &v20[v743];
              if (v248 >= v122)
              {
                v249 = -v38;
              }

              else
              {
                v249 = 0;
              }

              v58 += 2 * v67 + 2 * v249;
              v20 = &v248[v249];
              v59 += v242;
              v68 += 2 * v743;
              --v243;
            }

            while (v243);
            if (v764)
            {
              v250 = &v773[v765];
              if (v250 >= v764)
              {
                v251 = -(v768 * v744);
              }

              else
              {
                v251 = 0;
              }

              v57 = (v57 + 2 * v768 + 2 * v251);
              if (v250 >= v764)
              {
                v252 = -(v765 * v744);
              }

              else
              {
                v252 = 0;
              }

              v20 = &v250[v252];
              v122 += 2 * v252 + 2 * v765;
              v58 = v57;
              v773 = v20;
            }

            else
            {
              v20 += v765;
              v58 += 2 * v768;
            }

            v68 += 2 * v775;
            v59 += 2 * v777;
            --v241;
          }

          while (v241);
LABEL_403:
          v785[0] = 0;
          v42 = v745;
          v20 = v746;
          v61 = v122;
          if (!v745)
          {
            return 1;
          }

          goto LABEL_937;
        }

        v473 = v67;
        v474 = v785[0];
        v57 = v771;
        v161 = v773;
LABEL_830:
        v475 = v10;
        while (1)
        {
          v476 = bswap32(*v58) >> 16;
          if (!v476)
          {
            goto LABEL_834;
          }

          if (v476 != 0xFFFF)
          {
            break;
          }

LABEL_835:
          v478 = &v20[v743];
          if (v478 >= v61)
          {
            v479 = -v38;
          }

          else
          {
            v479 = 0;
          }

          v58 += 2 * v473 + 2 * v479;
          v20 = &v478[v479];
          v68 += 2 * v743;
          if (!--v475)
          {
            if (v764)
            {
              v480 = &v161[v765];
              if (v480 >= v764)
              {
                v481 = -(v768 * v744);
              }

              else
              {
                v481 = 0;
              }

              v57 = (v57 + 2 * v768 + 2 * v481);
              if (v480 >= v764)
              {
                v482 = -(v765 * v744);
              }

              else
              {
                v482 = 0;
              }

              v161 = &v480[v482];
              v61 += 2 * v482 + 2 * v765;
              v58 = v57;
              v20 = v161;
            }

            else
            {
              v20 += v765;
              v58 += 2 * v768;
            }

            v68 += 2 * v775;
            v59 += 2 * v777;
            if (!--v474)
            {
              goto LABEL_897;
            }

            goto LABEL_830;
          }
        }

        v477 = bswap32(*v68) >> 16;
        v476 = bswap32(v477 - ((v477 * (v476 ^ 0xFFFF) + ((v477 * (v476 ^ 0xFFFF)) >> 16) + 1) >> 16)) >> 16;
LABEL_834:
        *v68 = v476;
        goto LABEL_835;
      case 8:
        if (v24)
        {
          v364 = v785[0];
          v365 = 2 * v24;
          v57 = v771;
          do
          {
            v366 = v10;
            do
            {
              v367 = bswap32(*v58) >> 16;
              if (v367)
              {
                if (v367 != 0xFFFF)
                {
                  v369 = bswap32(*v68) >> 16;
                  v370 = bswap32(*v59) >> 16;
                  *v68 = bswap32(v369 - ((v369 * v367 + ((v369 * v367) >> 16) + 1) >> 16)) >> 16;
                  v368 = bswap32(v370 - ((v370 * v367 + ((v370 * v367) >> 16) + 1) >> 16)) >> 16;
                }

                else
                {
                  LOWORD(v368) = 0;
                  *v68 = 0;
                }

                *v59 = v368;
              }

              v371 = &v20[v743];
              if (v371 >= v61)
              {
                v372 = -v38;
              }

              else
              {
                v372 = 0;
              }

              v58 += 2 * v67 + 2 * v372;
              v20 = &v371[v372];
              v59 += v365;
              v68 += 2 * v743;
              --v366;
            }

            while (v366);
            if (v764)
            {
              v373 = &v773[v765];
              if (v373 >= v764)
              {
                v374 = -(v768 * v744);
              }

              else
              {
                v374 = 0;
              }

              v57 = (v57 + 2 * v768 + 2 * v374);
              if (v373 >= v764)
              {
                v375 = -(v765 * v744);
              }

              else
              {
                v375 = 0;
              }

              v20 = &v373[v375];
              v61 += 2 * v375 + 2 * v765;
              v58 = v57;
              v773 = v20;
            }

            else
            {
              v20 += v765;
              v58 += 2 * v768;
            }

            v68 += 2 * v775;
            v59 += 2 * v777;
            --v364;
          }

          while (v364);
          goto LABEL_936;
        }

        v483 = v785[0];
        v57 = v771;
LABEL_852:
        v484 = v10;
        while (1)
        {
          v485 = bswap32(*v58);
          if (HIWORD(v485) == 0xFFFF)
          {
            break;
          }

          if (~HIWORD(v485) != 0xFFFF)
          {
            v486 = bswap32(*v68) >> 16;
            v487 = bswap32(v486 - ((v486 * HIWORD(v485) + ((v486 * HIWORD(v485)) >> 16) + 1) >> 16)) >> 16;
LABEL_857:
            *v68 = v487;
          }

          v488 = &v20[v743];
          if (v488 >= v61)
          {
            v489 = -v38;
          }

          else
          {
            v489 = 0;
          }

          v58 += 2 * v67 + 2 * v489;
          v20 = &v488[v489];
          v68 += 2 * v743;
          if (!--v484)
          {
            if (v764)
            {
              v490 = &v773[v765];
              if (v490 >= v764)
              {
                v491 = -(v768 * v744);
              }

              else
              {
                v491 = 0;
              }

              v57 = (v57 + 2 * v768 + 2 * v491);
              if (v490 >= v764)
              {
                v492 = -(v765 * v744);
              }

              else
              {
                v492 = 0;
              }

              v20 = &v490[v492];
              v61 += 2 * v492 + 2 * v765;
              v58 = v57;
              v773 = v20;
            }

            else
            {
              v20 += v765;
              v58 += 2 * v768;
            }

            v68 += 2 * v775;
            v59 += 2 * v777;
            if (!--v483)
            {
              goto LABEL_936;
            }

            goto LABEL_852;
          }
        }

        v487 = ~HIWORD(v485);
        goto LABEL_857;
      case 9:
        v158 = v67;
        v159 = v785[0];
        v160 = 2 * v24;
        v57 = v771;
        v161 = v773;
        do
        {
          v162 = v10;
          do
          {
            v163 = bswap32(*v58) >> 16;
            v164 = bswap32(~*v59);
            v165 = (bswap32(*v20) >> 16) * HIWORD(v164) + (bswap32(*v68) >> 16) * v163;
            *v68 = bswap32(v165 + HIWORD(v165) + 1);
            *v59 = bswap32((v163 + HIWORD(v164)) * v163 + (((v163 + HIWORD(v164)) * v163) >> 16) + 1);
            v166 = &v20[v743];
            if (v166 >= v61)
            {
              v167 = -v38;
            }

            else
            {
              v167 = 0;
            }

            v58 += 2 * v158 + 2 * v167;
            v20 = &v166[v167];
            v59 += v160;
            v68 += 2 * v743;
            --v162;
          }

          while (v162);
          if (v764)
          {
            v168 = &v161[v765];
            if (v168 >= v764)
            {
              v169 = -(v768 * v744);
            }

            else
            {
              v169 = 0;
            }

            v57 = (v57 + 2 * v768 + 2 * v169);
            if (v168 >= v764)
            {
              v170 = -(v765 * v744);
            }

            else
            {
              v170 = 0;
            }

            v161 = &v168[v170];
            v61 += 2 * v170 + 2 * v765;
            v58 = v57;
            v20 = v161;
          }

          else
          {
            v20 += v765;
            v58 += 2 * v768;
          }

          v68 += 2 * v775;
          v59 += 2 * v777;
          --v159;
        }

        while (v159);
        goto LABEL_897;
      case 10:
        v352 = v67;
        v353 = v785[0];
        v354 = 2 * v24;
        v57 = v771;
        v161 = v773;
        do
        {
          v355 = v10;
          do
          {
            v356 = bswap32(*v58) >> 16;
            v357 = bswap32(~*v59);
            v358 = (bswap32(*v20) >> 16) * HIWORD(v357) + (bswap32(*v68) >> 16) * (v356 ^ 0xFFFF);
            *v68 = bswap32(v358 + HIWORD(v358) + 1);
            *v59 = bswap32(((v356 ^ 0xFFFF) + HIWORD(v357)) * v356 + ((((v356 ^ 0xFFFF) + HIWORD(v357)) * v356) >> 16) + 1);
            v359 = &v20[v743];
            if (v359 >= v61)
            {
              v360 = -v38;
            }

            else
            {
              v360 = 0;
            }

            v58 += 2 * v352 + 2 * v360;
            v20 = &v359[v360];
            v59 += v354;
            v68 += 2 * v743;
            --v355;
          }

          while (v355);
          if (v764)
          {
            v361 = &v161[v765];
            if (v361 >= v764)
            {
              v362 = -(v768 * v744);
            }

            else
            {
              v362 = 0;
            }

            v57 = (v57 + 2 * v768 + 2 * v362);
            if (v361 >= v764)
            {
              v363 = -(v765 * v744);
            }

            else
            {
              v363 = 0;
            }

            v161 = &v361[v363];
            v61 += 2 * v363 + 2 * v765;
            v58 = v57;
            v20 = v161;
          }

          else
          {
            v20 += v765;
            v58 += 2 * v768;
          }

          v68 += 2 * v775;
          v59 += 2 * v777;
          --v353;
        }

        while (v353);
        goto LABEL_897;
      case 11:
        v121 = 2 * v743;
        if (v24)
        {
          v122 = v61;
          v123 = v785[0];
          v124 = 2 * v24;
          v57 = v771;
          do
          {
            v125 = v10;
            do
            {
              if (v67)
              {
                v126 = bswap32(*v58) >> 16;
              }

              else
              {
                v126 = 0xFFFF;
              }

              v127 = bswap32(*v59) >> 16;
              v128 = v127 - ((bswap32(*v68) >> 16) + (bswap32(*v20) >> 16)) + v126;
              v129 = v126 + v127;
              if (v128 >= 0xFFFF)
              {
                v128 = 0xFFFF;
              }

              if (v129 >= 0xFFFF)
              {
                v129 = 0xFFFF;
              }

              *v68 = bswap32(v129 - v128) >> 16;
              *v59 = bswap32(v129) >> 16;
              v130 = &v20[v743];
              if (v130 >= v122)
              {
                v131 = -v38;
              }

              else
              {
                v131 = 0;
              }

              v58 += 2 * v67 + 2 * v131;
              v20 = &v130[v131];
              v59 += v124;
              v68 += v121;
              --v125;
            }

            while (v125);
            if (v764)
            {
              v132 = &v773[v765];
              if (v132 >= v764)
              {
                v133 = -(v768 * v744);
              }

              else
              {
                v133 = 0;
              }

              v57 = (v57 + 2 * v768 + 2 * v133);
              if (v132 >= v764)
              {
                v134 = -(v765 * v744);
              }

              else
              {
                v134 = 0;
              }

              v20 = &v132[v134];
              v122 += 2 * v134 + 2 * v765;
              v58 = v57;
              v773 = v20;
            }

            else
            {
              v20 += v765;
              v58 += 2 * v768;
            }

            v68 += 2 * v775;
            v59 += 2 * v777;
            --v123;
          }

          while (v123);
          goto LABEL_403;
        }

        v435 = v785[0];
        v57 = v771;
        do
        {
          v436 = v10;
          do
          {
            if (v67)
            {
              v437 = bswap32(*v58) >> 16;
            }

            else
            {
              v437 = 0xFFFF;
            }

            v438 = v437 - (bswap32(*v20) >> 16) + (bswap32(~*v68) >> 16);
            if (v438 >= 0xFFFF)
            {
              v438 = 0xFFFF;
            }

            *v68 = bswap32(~v438) >> 16;
            v439 = &v20[v743];
            if (v439 >= v61)
            {
              v440 = -v38;
            }

            else
            {
              v440 = 0;
            }

            v58 += 2 * v67 + 2 * v440;
            v20 = &v439[v440];
            v68 += v121;
            --v436;
          }

          while (v436);
          if (v764)
          {
            v441 = &v773[v765];
            if (v441 >= v764)
            {
              v442 = -(v768 * v744);
            }

            else
            {
              v442 = 0;
            }

            v57 = (v57 + 2 * v768 + 2 * v442);
            if (v441 >= v764)
            {
              v443 = -(v765 * v744);
            }

            else
            {
              v443 = 0;
            }

            v20 = &v441[v443];
            v61 += 2 * v443 + 2 * v765;
            v58 = v57;
            v773 = v20;
          }

          else
          {
            v20 += v765;
            v58 += 2 * v768;
          }

          v68 += 2 * v775;
          v59 += 2 * v777;
          --v435;
        }

        while (v435);
        goto LABEL_936;
      case 12:
        if (!v24)
        {
          v444 = v785[0];
          v57 = v771;
          v445 = v773;
          do
          {
            v446 = v10;
            do
            {
              v447 = bswap32(*v68);
              *v68 = bswap32((v447 >> 15) & 0xFFFE | ((v447 >> 16) >> 15)) >> 16;
              v448 = &v20[v743];
              if (v448 >= v61)
              {
                v449 = -v38;
              }

              else
              {
                v449 = 0;
              }

              v58 += 2 * v67 + 2 * v449;
              v20 = &v448[v449];
              v68 += 2 * v743;
              --v446;
            }

            while (v446);
            if (v764)
            {
              v450 = &v445[v765];
              if (v450 >= v764)
              {
                v451 = -(v768 * v744);
              }

              else
              {
                v451 = 0;
              }

              v57 = (v57 + 2 * v768 + 2 * v451);
              if (v450 >= v764)
              {
                v452 = -(v765 * v744);
              }

              else
              {
                v452 = 0;
              }

              v445 = &v450[v452];
              v61 += 2 * v452 + 2 * v765;
              v58 = v57;
              v20 = v445;
            }

            else
            {
              v20 += v765;
              v58 += 2 * v768;
            }

            v68 += 2 * v775;
            v59 += 2 * v777;
            --v444;
          }

          while (v444);
          goto LABEL_935;
        }

        v122 = v61;
        v147 = v785[0];
        v148 = 2 * v24;
        v57 = v771;
        do
        {
          v149 = v10;
          do
          {
            if (v67)
            {
              v150 = bswap32(*v58) >> 16;
            }

            else
            {
              v150 = 0xFFFF;
            }

            v151 = (bswap32(*v20) >> 16) + (bswap32(*v68) >> 16);
            v152 = v150 + (bswap32(*v59) >> 16);
            if (v151 >= 0xFFFF)
            {
              v151 = 0xFFFF;
            }

            if (v152 >= 0xFFFF)
            {
              v152 = 0xFFFF;
            }

            *v68 = bswap32(v151) >> 16;
            *v59 = bswap32(v152) >> 16;
            v153 = &v20[v743];
            if (v153 >= v122)
            {
              v154 = -v38;
            }

            else
            {
              v154 = 0;
            }

            v58 += 2 * v67 + 2 * v154;
            v20 = &v153[v154];
            v59 += v148;
            v68 += 2 * v743;
            --v149;
          }

          while (v149);
          if (v764)
          {
            v155 = &v773[v765];
            if (v155 >= v764)
            {
              v156 = -(v768 * v744);
            }

            else
            {
              v156 = 0;
            }

            v57 = (v57 + 2 * v768 + 2 * v156);
            if (v155 >= v764)
            {
              v157 = -(v765 * v744);
            }

            else
            {
              v157 = 0;
            }

            v20 = &v155[v157];
            v122 += 2 * v157 + 2 * v765;
            v58 = v57;
            v773 = v20;
          }

          else
          {
            v20 += v765;
            v58 += 2 * v768;
          }

          v68 += 2 * v775;
          v59 += 2 * v777;
          --v147;
        }

        while (v147);
        goto LABEL_403;
      case 13:
        v737 = v5;
        v311 = v38;
        v312 = v67;
        v313 = v785[0];
        v314 = 2 * v24;
        v739 = v311;
        v315 = -v311;
        while (1)
        {
          v758 = v313;
          v316 = v61;
          do
          {
            if (v67)
            {
              if (!*v58)
              {
                goto LABEL_517;
              }

              v317 = __rev16(*v58);
              if (!v24)
              {
LABEL_512:
                v318 = 0xFFFF;
                goto LABEL_513;
              }
            }

            else
            {
              v317 = 0xFFFF;
              if (!v24)
              {
                goto LABEL_512;
              }
            }

            if (!*v59)
            {
              *v68 = *v20;
              goto LABEL_516;
            }

            v318 = __rev16(*v59);
LABEL_513:
            v319 = PDAmultiplyPDA_8993(bswap32(*v68) >> 16, v318, bswap32(*v20) >> 16, v317);
            *v68 = bswap32(v319) >> 16;
            LODWORD(v24) = v780;
            LODWORD(v67) = v782;
            v61 = v316;
            if (!v780)
            {
              goto LABEL_517;
            }

            v317 = HIWORD(v319);
LABEL_516:
            *v59 = __rev16(v317);
LABEL_517:
            v320 = &v20[v743];
            if (v320 >= v61)
            {
              v321 = v315;
            }

            else
            {
              v321 = 0;
            }

            v58 += 2 * v312 + 2 * v321;
            v20 = &v320[v321];
            v59 += v314;
            v68 += 2 * v743;
            LODWORD(v10) = v10 - 1;
          }

          while (v10);
          if (v764)
          {
            v322 = &v773[v765];
            v323 = -(v768 * v744);
            if (v322 < v764)
            {
              v323 = 0;
            }

            v58 = (v771 + 2 * v768 + 2 * v323);
            v324 = -(v765 * v744);
            if (v322 < v764)
            {
              v324 = 0;
            }

            v20 = &v322[v324];
            v61 += 2 * v324 + 2 * v765;
            v771 += 2 * v768 + 2 * v323;
            v773 = v20;
          }

          else
          {
            v20 += v765;
            v58 += 2 * v768;
          }

          LODWORD(v10) = v769;
          v68 += 2 * v775;
          v59 += 2 * v777;
          v313 = v758 - 1;
          if (v758 == 1)
          {
            goto LABEL_743;
          }
        }

      case 14:
        v105 = v785[0];
        while (1)
        {
          v106 = v10;
          do
          {
            if (v67)
            {
              if (!*v58)
              {
                goto LABEL_147;
              }

              LODWORD(v107) = __rev16(*v58);
              if (!v24)
              {
LABEL_134:
                v108 = 0xFFFF;
                goto LABEL_135;
              }
            }

            else
            {
              LODWORD(v107) = 0xFFFF;
              if (!v24)
              {
                goto LABEL_134;
              }
            }

            if (!*v59)
            {
              *v68 = *v20;
LABEL_145:
              v115 = v59;
              goto LABEL_146;
            }

            v108 = __rev16(*v59);
LABEL_135:
            v109 = bswap32(*v68) >> 16;
            v110 = (v109 ^ 0xFFFF) * (bswap32(*v20) >> 16) - v109 + (v109 << 16);
            if (v110 <= 0xFFFE8000)
            {
              v111 = v110 + 0x8000;
            }

            else
            {
              v111 = 4294868992;
            }

            v112 = v111 + (v111 >> 16);
            if (v24)
            {
              v113 = 0xFFFF * (v108 + v107) - v108 * v107;
              if (v113 <= 4294868992)
              {
                v114 = v113 + 0x8000;
              }

              else
              {
                v114 = 4294868992;
              }

              *v68 = bswap32(v112);
              v107 = ((v112 >> 16) | (v114 + (v114 >> 16))) >> 16;
              goto LABEL_145;
            }

            v107 = v112 >> 16;
            v115 = v68;
LABEL_146:
            *v115 = bswap32(v107) >> 16;
LABEL_147:
            v68 += 2 * v743;
            v116 = &v20[v743];
            if (v116 >= v61)
            {
              v117 = -v38;
            }

            else
            {
              v117 = 0;
            }

            v58 += 2 * v67 + 2 * v117;
            v20 = &v116[v117];
            v59 += 2 * v24;
            --v106;
          }

          while (v106);
          if (v764)
          {
            v118 = &v773[v765];
            if (v118 >= v764)
            {
              v119 = -(v768 * v744);
            }

            else
            {
              v119 = 0;
            }

            v58 = (v771 + 2 * v768 + 2 * v119);
            if (v118 >= v764)
            {
              v120 = -(v765 * v744);
            }

            else
            {
              v120 = 0;
            }

            v20 = &v118[v120];
            v61 += 2 * v120 + 2 * v765;
            v771 += 2 * v768 + 2 * v119;
            v773 = v20;
          }

          else
          {
            v20 += v765;
            v58 += 2 * v768;
          }

          v68 += 2 * v775;
          v59 += 2 * v777;
          if (!--v105)
          {
LABEL_716:
            v785[0] = 0;
LABEL_717:
            v20 = v746;
LABEL_744:
            v42 = v745;
LABEL_745:
            v57 = v771;
            if (!v42)
            {
              return 1;
            }

LABEL_937:
            v55 = v61;
            v784 = 0;
LABEL_938:
            v771 = v57;
            if (!shape_enum_clip_next(v42, &v784 + 1, &v784, v795, v785))
            {
LABEL_1369:
              v51 = v42;
              goto LABEL_1370;
            }

            v745 = v42;
            v746 = v20;
            if (v764)
            {
              v23 = v747;
              v68 = (v740 + 2 * v747 * v784 + 2 * SHIDWORD(v784));
              v520 = (v784 + *(v9 + 60)) % v744;
              v60 = v795[0];
              v521 = (HIDWORD(v784) + *(v9 + 56)) % v38;
              v522 = &v20[v765 * v520];
              v20 = &v522[v521];
              v61 = &v522[v38];
              v24 = v780;
              if (v780)
              {
                v59 = (v742 + 2 * v741 * v784 + 2 * SHIDWORD(v784));
              }

              v523 = v777;
              if (v780)
              {
                v523 = v741 - v795[0];
              }

              v777 = v523;
              if (v782)
              {
                v67 = v782;
              }

              else
              {
                v67 = 0;
              }

              v524 = v771;
              if (v782)
              {
                v524 = v5 + 2 * v768 * v520 + 2 * v521;
              }

              v771 = v524;
              v773 = &v522[v521];
              if (v782)
              {
                v58 = v5 + 2 * v768 * v520 + 2 * v521;
              }

              LODWORD(v10) = v795[0];
              v734 = (HIDWORD(v784) + *(v9 + 56)) % v38;
              v735 = (v784 + *(v9 + 60)) % v744;
            }

            else
            {
              v525 = HIDWORD(v784) * v743;
              LODWORD(v10) = v795[0];
              v526 = v795[0] * v743;
              v23 = v747;
              v68 = (v740 + 2 * v747 * v784 + 2 * HIDWORD(v784) * v743);
              v60 = v795[0] * v743;
              v20 += v784 * v38 + HIDWORD(v784) * v743;
              v764 = 0;
              v765 = v38 - v795[0] * v743;
              v24 = v780;
              v67 = v782;
              if (v780)
              {
                v59 = (v742 + 2 * v741 * v784 + 2 * v525);
              }

              v527 = v777;
              if (v780)
              {
                v527 = v741 - v526;
              }

              v777 = v527;
              v528 = v5 + 2 * v784 * v744 + 2 * v525;
              v529 = v744 - v526;
              if (v782)
              {
                v58 = v528;
              }

              v530 = v768;
              if (v782)
              {
                v530 = v529;
              }

              v768 = v530;
              v61 = v55;
            }

            goto LABEL_66;
          }
        }

      case 15:
        v737 = v5;
        v212 = v38;
        v213 = v67;
        v214 = v785[0];
        v215 = 2 * v24;
        v739 = v212;
        v216 = -v212;
        while (1)
        {
          v754 = v214;
          v217 = v61;
          do
          {
            if (v67)
            {
              if (!*v58)
              {
                goto LABEL_345;
              }

              v218 = __rev16(*v58);
              if (!v24)
              {
LABEL_340:
                v219 = 0xFFFF;
                goto LABEL_341;
              }
            }

            else
            {
              v218 = 0xFFFF;
              if (!v24)
              {
                goto LABEL_340;
              }
            }

            if (!*v59)
            {
              *v68 = *v20;
              goto LABEL_344;
            }

            v219 = __rev16(*v59);
LABEL_341:
            v220 = PDAoverlayPDA_8994(bswap32(*v68) >> 16, v219, bswap32(*v20) >> 16, v218);
            *v68 = bswap32(v220) >> 16;
            LODWORD(v24) = v780;
            LODWORD(v67) = v782;
            v61 = v217;
            if (!v780)
            {
              goto LABEL_345;
            }

            v218 = HIWORD(v220);
LABEL_344:
            *v59 = __rev16(v218);
LABEL_345:
            v221 = &v20[v743];
            if (v221 >= v61)
            {
              v222 = v216;
            }

            else
            {
              v222 = 0;
            }

            v58 += 2 * v213 + 2 * v222;
            v20 = &v221[v222];
            v59 += v215;
            v68 += 2 * v743;
            LODWORD(v10) = v10 - 1;
          }

          while (v10);
          if (v764)
          {
            v223 = &v773[v765];
            v224 = -(v768 * v744);
            if (v223 < v764)
            {
              v224 = 0;
            }

            v58 = (v771 + 2 * v768 + 2 * v224);
            v225 = -(v765 * v744);
            if (v223 < v764)
            {
              v225 = 0;
            }

            v20 = &v223[v225];
            v61 += 2 * v225 + 2 * v765;
            v771 += 2 * v768 + 2 * v224;
            v773 = v20;
          }

          else
          {
            v20 += v765;
            v58 += 2 * v768;
          }

          LODWORD(v10) = v769;
          v68 += 2 * v775;
          v59 += 2 * v777;
          v214 = v754 - 1;
          if (v754 == 1)
          {
LABEL_743:
            v785[0] = 0;
            v5 = v737;
            v7 = v738;
            v9 = v736;
            v20 = v746;
            v38 = v739;
            goto LABEL_744;
          }
        }

      case 16:
        v737 = v5;
        v91 = v38;
        v92 = v67;
        v93 = v785[0];
        v94 = 2 * v24;
        v739 = v91;
        v95 = -v91;
        while (1)
        {
          v751 = v93;
          v96 = v61;
          do
          {
            if (v67)
            {
              if (!*v58)
              {
                goto LABEL_113;
              }

              v97 = __rev16(*v58);
              if (!v24)
              {
LABEL_108:
                v98 = 0xFFFF;
                goto LABEL_109;
              }
            }

            else
            {
              v97 = 0xFFFF;
              if (!v24)
              {
                goto LABEL_108;
              }
            }

            if (!*v59)
            {
              *v68 = *v20;
              goto LABEL_112;
            }

            v98 = __rev16(*v59);
LABEL_109:
            v99 = PDAdarkenPDA_8996(bswap32(*v68) >> 16, v98, bswap32(*v20) >> 16, v97);
            *v68 = bswap32(v99) >> 16;
            LODWORD(v24) = v780;
            LODWORD(v67) = v782;
            v61 = v96;
            if (!v780)
            {
              goto LABEL_113;
            }

            v97 = HIWORD(v99);
LABEL_112:
            *v59 = __rev16(v97);
LABEL_113:
            v100 = &v20[v743];
            if (v100 >= v61)
            {
              v101 = v95;
            }

            else
            {
              v101 = 0;
            }

            v58 += 2 * v92 + 2 * v101;
            v20 = &v100[v101];
            v59 += v94;
            v68 += 2 * v743;
            LODWORD(v10) = v10 - 1;
          }

          while (v10);
          if (v764)
          {
            v102 = &v773[v765];
            v103 = -(v768 * v744);
            if (v102 < v764)
            {
              v103 = 0;
            }

            v58 = (v771 + 2 * v768 + 2 * v103);
            v104 = -(v765 * v744);
            if (v102 < v764)
            {
              v104 = 0;
            }

            v20 = &v102[v104];
            v61 += 2 * v104 + 2 * v765;
            v771 += 2 * v768 + 2 * v103;
            v773 = v20;
          }

          else
          {
            v20 += v765;
            v58 += 2 * v768;
          }

          LODWORD(v10) = v769;
          v68 += 2 * v775;
          v59 += 2 * v777;
          v93 = v751 - 1;
          if (v751 == 1)
          {
            goto LABEL_743;
          }
        }

      case 17:
        v737 = v5;
        v256 = v38;
        v257 = v67;
        v258 = v785[0];
        v259 = 2 * v24;
        v739 = v256;
        v260 = -v256;
        while (1)
        {
          v755 = v258;
          v261 = v61;
          do
          {
            if (v67)
            {
              if (!*v58)
              {
                goto LABEL_422;
              }

              v262 = __rev16(*v58);
              if (!v24)
              {
LABEL_417:
                v263 = 0xFFFF;
                goto LABEL_418;
              }
            }

            else
            {
              v262 = 0xFFFF;
              if (!v24)
              {
                goto LABEL_417;
              }
            }

            if (!*v59)
            {
              *v68 = *v20;
              goto LABEL_421;
            }

            v263 = __rev16(*v59);
LABEL_418:
            v264 = PDAlightenPDA_8995(bswap32(*v68) >> 16, v263, bswap32(*v20) >> 16, v262);
            *v68 = bswap32(v264) >> 16;
            LODWORD(v24) = v780;
            LODWORD(v67) = v782;
            v61 = v261;
            if (!v780)
            {
              goto LABEL_422;
            }

            v262 = HIWORD(v264);
LABEL_421:
            *v59 = __rev16(v262);
LABEL_422:
            v265 = &v20[v743];
            if (v265 >= v61)
            {
              v266 = v260;
            }

            else
            {
              v266 = 0;
            }

            v58 += 2 * v257 + 2 * v266;
            v20 = &v265[v266];
            v59 += v259;
            v68 += 2 * v743;
            LODWORD(v10) = v10 - 1;
          }

          while (v10);
          if (v764)
          {
            v267 = &v773[v765];
            v268 = -(v768 * v744);
            if (v267 < v764)
            {
              v268 = 0;
            }

            v58 = (v771 + 2 * v768 + 2 * v268);
            v269 = -(v765 * v744);
            if (v267 < v764)
            {
              v269 = 0;
            }

            v20 = &v267[v269];
            v61 += 2 * v269 + 2 * v765;
            v771 += 2 * v768 + 2 * v268;
            v773 = v20;
          }

          else
          {
            v20 += v765;
            v58 += 2 * v768;
          }

          LODWORD(v10) = v769;
          v68 += 2 * v775;
          v59 += 2 * v777;
          v258 = v755 - 1;
          if (v755 == 1)
          {
            goto LABEL_743;
          }
        }

      case 18:
        v737 = v5;
        v338 = v38;
        v339 = v67;
        v340 = v785[0];
        v341 = 2 * v24;
        v739 = v338;
        v342 = -v338;
        while (1)
        {
          v759 = v340;
          v343 = v61;
          do
          {
            if (v67)
            {
              if (!*v58)
              {
                goto LABEL_570;
              }

              v344 = __rev16(*v58);
              if (!v24)
              {
LABEL_565:
                v345 = 0xFFFF;
                goto LABEL_566;
              }
            }

            else
            {
              v344 = 0xFFFF;
              if (!v24)
              {
                goto LABEL_565;
              }
            }

            if (!*v59)
            {
              *v68 = *v20;
              goto LABEL_569;
            }

            v345 = __rev16(*v59);
LABEL_566:
            v346 = PDAcolordodgePDA_8997(bswap32(*v68) >> 16, v345, bswap32(*v20) >> 16, v344);
            *v68 = bswap32(v346) >> 16;
            LODWORD(v24) = v780;
            LODWORD(v67) = v782;
            v61 = v343;
            if (!v780)
            {
              goto LABEL_570;
            }

            v344 = HIWORD(v346);
LABEL_569:
            *v59 = __rev16(v344);
LABEL_570:
            v347 = &v20[v743];
            if (v347 >= v61)
            {
              v348 = v342;
            }

            else
            {
              v348 = 0;
            }

            v58 += 2 * v339 + 2 * v348;
            v20 = &v347[v348];
            v59 += v341;
            v68 += 2 * v743;
            LODWORD(v10) = v10 - 1;
          }

          while (v10);
          if (v764)
          {
            v349 = &v773[v765];
            v350 = -(v768 * v744);
            if (v349 < v764)
            {
              v350 = 0;
            }

            v58 = (v771 + 2 * v768 + 2 * v350);
            v351 = -(v765 * v744);
            if (v349 < v764)
            {
              v351 = 0;
            }

            v20 = &v349[v351];
            v61 += 2 * v351 + 2 * v765;
            v771 += 2 * v768 + 2 * v350;
            v773 = v20;
          }

          else
          {
            v20 += v765;
            v58 += 2 * v768;
          }

          LODWORD(v10) = v769;
          v68 += 2 * v775;
          v59 += 2 * v777;
          v340 = v759 - 1;
          if (v759 == 1)
          {
            goto LABEL_743;
          }
        }

      case 19:
        v737 = v5;
        v390 = v38;
        v391 = v67;
        v392 = v785[0];
        v393 = 2 * v24;
        v739 = v390;
        v394 = -v390;
        while (1)
        {
          v761 = v392;
          v395 = v61;
          do
          {
            if (v67)
            {
              if (!*v58)
              {
                goto LABEL_662;
              }

              v396 = __rev16(*v58);
              if (!v24)
              {
LABEL_657:
                v397 = 0xFFFF;
                goto LABEL_658;
              }
            }

            else
            {
              v396 = 0xFFFF;
              if (!v24)
              {
                goto LABEL_657;
              }
            }

            if (!*v59)
            {
              *v68 = *v20;
              goto LABEL_661;
            }

            v397 = __rev16(*v59);
LABEL_658:
            v398 = PDAcolorburnPDA_8998(bswap32(*v68) >> 16, v397, bswap32(*v20) >> 16, v396);
            *v68 = bswap32(v398) >> 16;
            LODWORD(v24) = v780;
            LODWORD(v67) = v782;
            v61 = v395;
            if (!v780)
            {
              goto LABEL_662;
            }

            v396 = HIWORD(v398);
LABEL_661:
            *v59 = __rev16(v396);
LABEL_662:
            v399 = &v20[v743];
            if (v399 >= v61)
            {
              v400 = v394;
            }

            else
            {
              v400 = 0;
            }

            v58 += 2 * v391 + 2 * v400;
            v20 = &v399[v400];
            v59 += v393;
            v68 += 2 * v743;
            LODWORD(v10) = v10 - 1;
          }

          while (v10);
          if (v764)
          {
            v401 = &v773[v765];
            v402 = -(v768 * v744);
            if (v401 < v764)
            {
              v402 = 0;
            }

            v58 = (v771 + 2 * v768 + 2 * v402);
            v403 = -(v765 * v744);
            if (v401 < v764)
            {
              v403 = 0;
            }

            v20 = &v401[v403];
            v61 += 2 * v403 + 2 * v765;
            v771 += 2 * v768 + 2 * v402;
            v773 = v20;
          }

          else
          {
            v20 += v765;
            v58 += 2 * v768;
          }

          LODWORD(v10) = v769;
          v68 += 2 * v775;
          v59 += 2 * v777;
          v392 = v761 - 1;
          if (v761 == 1)
          {
            goto LABEL_743;
          }
        }

      case 20:
        v737 = v5;
        v270 = v38;
        v271 = v67;
        v272 = v785[0];
        v273 = 2 * v24;
        v739 = v270;
        v274 = -v270;
        while (1)
        {
          v756 = v272;
          v275 = v61;
          do
          {
            if (v67)
            {
              if (!*v58)
              {
                goto LABEL_448;
              }

              v276 = __rev16(*v58);
              if (!v24)
              {
LABEL_443:
                v277 = 0xFFFF;
                goto LABEL_444;
              }
            }

            else
            {
              v276 = 0xFFFF;
              if (!v24)
              {
                goto LABEL_443;
              }
            }

            if (!*v59)
            {
              *v68 = *v20;
              goto LABEL_447;
            }

            v277 = __rev16(*v59);
LABEL_444:
            v278 = PDAsoftlightPDA_9000(bswap32(*v68) >> 16, v277, bswap32(*v20) >> 16, v276);
            *v68 = bswap32(v278) >> 16;
            LODWORD(v24) = v780;
            LODWORD(v67) = v782;
            v61 = v275;
            if (!v780)
            {
              goto LABEL_448;
            }

            v276 = HIWORD(v278);
LABEL_447:
            *v59 = __rev16(v276);
LABEL_448:
            v279 = &v20[v743];
            if (v279 >= v61)
            {
              v280 = v274;
            }

            else
            {
              v280 = 0;
            }

            v58 += 2 * v271 + 2 * v280;
            v20 = &v279[v280];
            v59 += v273;
            v68 += 2 * v743;
            LODWORD(v10) = v10 - 1;
          }

          while (v10);
          if (v764)
          {
            v281 = &v773[v765];
            v282 = -(v768 * v744);
            if (v281 < v764)
            {
              v282 = 0;
            }

            v58 = (v771 + 2 * v768 + 2 * v282);
            v283 = -(v765 * v744);
            if (v281 < v764)
            {
              v283 = 0;
            }

            v20 = &v281[v283];
            v61 += 2 * v283 + 2 * v765;
            v771 += 2 * v768 + 2 * v282;
            v773 = v20;
          }

          else
          {
            v20 += v765;
            v58 += 2 * v768;
          }

          LODWORD(v10) = v769;
          v68 += 2 * v775;
          v59 += 2 * v777;
          v272 = v756 - 1;
          if (v756 == 1)
          {
            goto LABEL_743;
          }
        }

      case 21:
        v737 = v5;
        v297 = v38;
        v298 = v67;
        v299 = v785[0];
        v300 = 2 * v24;
        v739 = v297;
        v301 = -v297;
        while (1)
        {
          v757 = v299;
          v302 = v61;
          do
          {
            if (v67)
            {
              if (!*v58)
              {
                goto LABEL_491;
              }

              v303 = __rev16(*v58);
              if (!v24)
              {
LABEL_486:
                v304 = 0xFFFF;
                goto LABEL_487;
              }
            }

            else
            {
              v303 = 0xFFFF;
              if (!v24)
              {
                goto LABEL_486;
              }
            }

            if (!*v59)
            {
              *v68 = *v20;
              goto LABEL_490;
            }

            v304 = __rev16(*v59);
LABEL_487:
            v305 = PDAhardlightPDA_8999(bswap32(*v68) >> 16, v304, bswap32(*v20) >> 16, v303);
            *v68 = bswap32(v305) >> 16;
            LODWORD(v24) = v780;
            LODWORD(v67) = v782;
            v61 = v302;
            if (!v780)
            {
              goto LABEL_491;
            }

            v303 = HIWORD(v305);
LABEL_490:
            *v59 = __rev16(v303);
LABEL_491:
            v306 = &v20[v743];
            if (v306 >= v61)
            {
              v307 = v301;
            }

            else
            {
              v307 = 0;
            }

            v58 += 2 * v298 + 2 * v307;
            v20 = &v306[v307];
            v59 += v300;
            v68 += 2 * v743;
            LODWORD(v10) = v10 - 1;
          }

          while (v10);
          if (v764)
          {
            v308 = &v773[v765];
            v309 = -(v768 * v744);
            if (v308 < v764)
            {
              v309 = 0;
            }

            v58 = (v771 + 2 * v768 + 2 * v309);
            v310 = -(v765 * v744);
            if (v308 < v764)
            {
              v310 = 0;
            }

            v20 = &v308[v310];
            v61 += 2 * v310 + 2 * v765;
            v771 += 2 * v768 + 2 * v309;
            v773 = v20;
          }

          else
          {
            v20 += v765;
            v58 += 2 * v768;
          }

          LODWORD(v10) = v769;
          v68 += 2 * v775;
          v59 += 2 * v777;
          v299 = v757 - 1;
          if (v757 == 1)
          {
            goto LABEL_743;
          }
        }

      case 22:
        v737 = v5;
        v376 = v38;
        v377 = v67;
        v378 = v785[0];
        v379 = 2 * v24;
        v739 = v376;
        v380 = -v376;
        while (1)
        {
          v760 = v378;
          v381 = v61;
          do
          {
            if (v67)
            {
              if (!*v58)
              {
                goto LABEL_636;
              }

              v382 = __rev16(*v58);
              if (!v24)
              {
LABEL_631:
                v383 = 0xFFFF;
                goto LABEL_632;
              }
            }

            else
            {
              v382 = 0xFFFF;
              if (!v24)
              {
                goto LABEL_631;
              }
            }

            if (!*v59)
            {
              *v68 = *v20;
              goto LABEL_635;
            }

            v383 = __rev16(*v59);
LABEL_632:
            v384 = PDAdifferencePDA_9001(bswap32(*v68) >> 16, v383, bswap32(*v20) >> 16, v382);
            *v68 = bswap32(v384) >> 16;
            LODWORD(v24) = v780;
            LODWORD(v67) = v782;
            v61 = v381;
            if (!v780)
            {
              goto LABEL_636;
            }

            v382 = HIWORD(v384);
LABEL_635:
            *v59 = __rev16(v382);
LABEL_636:
            v385 = &v20[v743];
            if (v385 >= v61)
            {
              v386 = v380;
            }

            else
            {
              v386 = 0;
            }

            v58 += 2 * v377 + 2 * v386;
            v20 = &v385[v386];
            v59 += v379;
            v68 += 2 * v743;
            LODWORD(v10) = v10 - 1;
          }

          while (v10);
          if (v764)
          {
            v387 = &v773[v765];
            v388 = -(v768 * v744);
            if (v387 < v764)
            {
              v388 = 0;
            }

            v58 = (v771 + 2 * v768 + 2 * v388);
            v389 = -(v765 * v744);
            if (v387 < v764)
            {
              v389 = 0;
            }

            v20 = &v387[v389];
            v61 += 2 * v389 + 2 * v765;
            v771 += 2 * v768 + 2 * v388;
            v773 = v20;
          }

          else
          {
            v20 += v765;
            v58 += 2 * v768;
          }

          LODWORD(v10) = v769;
          v68 += 2 * v775;
          v59 += 2 * v777;
          v378 = v760 - 1;
          if (v760 == 1)
          {
            goto LABEL_743;
          }
        }

      case 23:
        v404 = v785[0];
        while (1)
        {
          v405 = v10;
          do
          {
            if (v67)
            {
              if (!*v58)
              {
                goto LABEL_702;
              }

              LODWORD(v406) = __rev16(*v58);
              if (!v24)
              {
LABEL_683:
                v407 = 0xFFFF;
                goto LABEL_684;
              }
            }

            else
            {
              LODWORD(v406) = 0xFFFF;
              if (!v24)
              {
                goto LABEL_683;
              }
            }

            if (!*v59)
            {
              *v68 = *v20;
LABEL_700:
              v415 = v59;
              goto LABEL_701;
            }

            v407 = __rev16(*v59);
LABEL_684:
            LODWORD(v408) = bswap32(*v68) >> 16;
            LODWORD(v409) = bswap32(*v20) >> 16;
            if (v409 >= v406)
            {
              v409 = v406;
            }

            else
            {
              v409 = v409;
            }

            if (v408 >= v407)
            {
              v408 = v407;
            }

            else
            {
              v408 = v408;
            }

            v410 = 0xFFFF * (v409 + v408) - 2 * v408 * v409;
            if (v410 <= 4294868992)
            {
              v411 = v410 + 0x8000;
            }

            else
            {
              v411 = 4294868992;
            }

            v412 = v411 + (v411 >> 16);
            if (v24)
            {
              v413 = 0xFFFF * (v407 + v406) - v407 * v406;
              if (v413 <= 4294868992)
              {
                v414 = v413 + 0x8000;
              }

              else
              {
                v414 = 4294868992;
              }

              *v68 = bswap32(v412);
              v406 = ((v412 >> 16) | (v414 + (v414 >> 16))) >> 16;
              goto LABEL_700;
            }

            v406 = v412 >> 16;
            v415 = v68;
LABEL_701:
            *v415 = bswap32(v406) >> 16;
LABEL_702:
            v68 += 2 * v743;
            v416 = &v20[v743];
            if (v416 >= v61)
            {
              v417 = -v38;
            }

            else
            {
              v417 = 0;
            }

            v58 += 2 * v67 + 2 * v417;
            v20 = &v416[v417];
            v59 += 2 * v24;
            --v405;
          }

          while (v405);
          if (v764)
          {
            v418 = &v773[v765];
            if (v418 >= v764)
            {
              v419 = -(v768 * v744);
            }

            else
            {
              v419 = 0;
            }

            v58 = (v771 + 2 * v768 + 2 * v419);
            if (v418 >= v764)
            {
              v420 = -(v765 * v744);
            }

            else
            {
              v420 = 0;
            }

            v20 = &v418[v420];
            v61 += 2 * v420 + 2 * v765;
            v771 += 2 * v768 + 2 * v419;
            v773 = v20;
          }

          else
          {
            v20 += v765;
            v58 += 2 * v768;
          }

          v68 += 2 * v775;
          v59 += 2 * v777;
          if (!--v404)
          {
            goto LABEL_716;
          }
        }

      case 24:
        v737 = v5;
        v185 = v38;
        v186 = v67;
        v187 = v785[0];
        v188 = 2 * v24;
        v739 = v185;
        v189 = -v185;
        while (1)
        {
          v753 = v187;
          v190 = v61;
          do
          {
            if (v67)
            {
              if (!*v58)
              {
                goto LABEL_296;
              }

              v191 = __rev16(*v58);
              if (!v24)
              {
LABEL_291:
                v192 = 0xFFFF;
                goto LABEL_292;
              }
            }

            else
            {
              v191 = 0xFFFF;
              if (!v24)
              {
                goto LABEL_291;
              }
            }

            if (!*v59)
            {
              *v68 = *v20;
              goto LABEL_295;
            }

            v192 = __rev16(*v59);
LABEL_292:
            v193 = PDAhuePDA_9002(bswap32(*v68) >> 16, v192, bswap32(*v20) >> 16, v191);
            *v68 = bswap32(v193) >> 16;
            LODWORD(v24) = v780;
            LODWORD(v67) = v782;
            v61 = v190;
            if (!v780)
            {
              goto LABEL_296;
            }

            v191 = HIWORD(v193);
LABEL_295:
            *v59 = __rev16(v191);
LABEL_296:
            v194 = &v20[v743];
            if (v194 >= v61)
            {
              v195 = v189;
            }

            else
            {
              v195 = 0;
            }

            v58 += 2 * v186 + 2 * v195;
            v20 = &v194[v195];
            v59 += v188;
            v68 += 2 * v743;
            LODWORD(v10) = v10 - 1;
          }

          while (v10);
          if (v764)
          {
            v196 = &v773[v765];
            v197 = -(v768 * v744);
            if (v196 < v764)
            {
              v197 = 0;
            }

            v58 = (v771 + 2 * v768 + 2 * v197);
            v198 = -(v765 * v744);
            if (v196 < v764)
            {
              v198 = 0;
            }

            v20 = &v196[v198];
            v61 += 2 * v198 + 2 * v765;
            v771 += 2 * v768 + 2 * v197;
            v773 = v20;
          }

          else
          {
            v20 += v765;
            v58 += 2 * v768;
          }

          LODWORD(v10) = v769;
          v68 += 2 * v775;
          v59 += 2 * v777;
          v187 = v753 - 1;
          if (v753 == 1)
          {
            goto LABEL_743;
          }
        }

      case 25:
        v737 = v5;
        v171 = v38;
        v172 = v67;
        v173 = v785[0];
        v174 = 2 * v24;
        v739 = v171;
        v175 = -v171;
        while (1)
        {
          v752 = v173;
          v176 = v61;
          do
          {
            if (v67)
            {
              if (!*v58)
              {
                goto LABEL_270;
              }

              v177 = __rev16(*v58);
              if (!v24)
              {
LABEL_265:
                v178 = 0xFFFF;
                goto LABEL_266;
              }
            }

            else
            {
              v177 = 0xFFFF;
              if (!v24)
              {
                goto LABEL_265;
              }
            }

            if (!*v59)
            {
              *v68 = *v20;
              goto LABEL_269;
            }

            v178 = __rev16(*v59);
LABEL_266:
            v179 = PDAhuePDA_9002(bswap32(*v68) >> 16, v178, bswap32(*v20) >> 16, v177);
            *v68 = bswap32(v179) >> 16;
            LODWORD(v24) = v780;
            LODWORD(v67) = v782;
            v61 = v176;
            if (!v780)
            {
              goto LABEL_270;
            }

            v177 = HIWORD(v179);
LABEL_269:
            *v59 = __rev16(v177);
LABEL_270:
            v180 = &v20[v743];
            if (v180 >= v61)
            {
              v181 = v175;
            }

            else
            {
              v181 = 0;
            }

            v58 += 2 * v172 + 2 * v181;
            v20 = &v180[v181];
            v59 += v174;
            v68 += 2 * v743;
            LODWORD(v10) = v10 - 1;
          }

          while (v10);
          if (v764)
          {
            v182 = &v773[v765];
            v183 = -(v768 * v744);
            if (v182 < v764)
            {
              v183 = 0;
            }

            v58 = (v771 + 2 * v768 + 2 * v183);
            v184 = -(v765 * v744);
            if (v182 < v764)
            {
              v184 = 0;
            }

            v20 = &v182[v184];
            v61 += 2 * v184 + 2 * v765;
            v771 += 2 * v768 + 2 * v183;
            v773 = v20;
          }

          else
          {
            v20 += v765;
            v58 += 2 * v768;
          }

          LODWORD(v10) = v769;
          v68 += 2 * v775;
          v59 += 2 * v777;
          v173 = v752 - 1;
          if (v752 == 1)
          {
            goto LABEL_743;
          }
        }

      case 26:
        v737 = v5;
        v421 = v38;
        v422 = v67;
        v423 = v785[0];
        v424 = 2 * v24;
        v739 = v421;
        v425 = -v421;
        while (1)
        {
          v762 = v423;
          v426 = v61;
          do
          {
            if (v67)
            {
              if (!*v58)
              {
                goto LABEL_731;
              }

              v427 = __rev16(*v58);
              if (!v24)
              {
LABEL_726:
                v428 = 0xFFFF;
                goto LABEL_727;
              }
            }

            else
            {
              v427 = 0xFFFF;
              if (!v24)
              {
                goto LABEL_726;
              }
            }

            if (!*v59)
            {
              *v68 = *v20;
              goto LABEL_730;
            }

            v428 = __rev16(*v59);
LABEL_727:
            v429 = PDAluminosityPDA_9004(bswap32(*v20) >> 16, v427, bswap32(*v68) >> 16, v428);
            *v68 = bswap32(v429) >> 16;
            LODWORD(v24) = v780;
            LODWORD(v67) = v782;
            v61 = v426;
            if (!v780)
            {
              goto LABEL_731;
            }

            v427 = HIWORD(v429);
LABEL_730:
            *v59 = __rev16(v427);
LABEL_731:
            v430 = &v20[v743];
            if (v430 >= v61)
            {
              v431 = v425;
            }

            else
            {
              v431 = 0;
            }

            v58 += 2 * v422 + 2 * v431;
            v20 = &v430[v431];
            v59 += v424;
            v68 += 2 * v743;
            LODWORD(v10) = v10 - 1;
          }

          while (v10);
          if (v764)
          {
            v432 = &v773[v765];
            v433 = -(v768 * v744);
            if (v432 < v764)
            {
              v433 = 0;
            }

            v58 = (v771 + 2 * v768 + 2 * v433);
            v434 = -(v765 * v744);
            if (v432 < v764)
            {
              v434 = 0;
            }

            v20 = &v432[v434];
            v61 += 2 * v434 + 2 * v765;
            v771 += 2 * v768 + 2 * v433;
            v773 = v20;
          }

          else
          {
            v20 += v765;
            v58 += 2 * v768;
          }

          LODWORD(v10) = v769;
          v68 += 2 * v775;
          v59 += 2 * v777;
          v423 = v762 - 1;
          if (v762 == 1)
          {
            goto LABEL_743;
          }
        }

      case 27:
        v737 = v5;
        v77 = v38;
        v78 = v67;
        v79 = v785[0];
        v80 = 2 * v24;
        v739 = v77;
        v81 = -v77;
        break;
      default:
        goto LABEL_717;
    }

LABEL_75:
    v750 = v79;
    v82 = v61;
    while (1)
    {
      if (v67)
      {
        if (!*v58)
        {
          goto LABEL_87;
        }

        v83 = __rev16(*v58);
        if (v24)
        {
LABEL_79:
          if (!*v59)
          {
            *v68 = *v20;
            goto LABEL_86;
          }

          v84 = __rev16(*v59);
          goto LABEL_83;
        }
      }

      else
      {
        v83 = 0xFFFF;
        if (v24)
        {
          goto LABEL_79;
        }
      }

      v84 = 0xFFFF;
LABEL_83:
      v85 = PDAluminosityPDA_9004(bswap32(*v68) >> 16, v84, bswap32(*v20) >> 16, v83);
      *v68 = bswap32(v85) >> 16;
      LODWORD(v24) = v780;
      LODWORD(v67) = v782;
      v61 = v82;
      if (v780)
      {
        v83 = HIWORD(v85);
LABEL_86:
        *v59 = __rev16(v83);
      }

LABEL_87:
      v86 = &v20[v743];
      if (v86 >= v61)
      {
        v87 = v81;
      }

      else
      {
        v87 = 0;
      }

      v58 += 2 * v78 + 2 * v87;
      v20 = &v86[v87];
      v59 += v80;
      v68 += 2 * v743;
      LODWORD(v10) = v10 - 1;
      if (!v10)
      {
        if (v764)
        {
          v88 = &v773[v765];
          v89 = -(v768 * v744);
          if (v88 < v764)
          {
            v89 = 0;
          }

          v58 = (v771 + 2 * v768 + 2 * v89);
          v90 = -(v765 * v744);
          if (v88 < v764)
          {
            v90 = 0;
          }

          v20 = &v88[v90];
          v61 += 2 * v90 + 2 * v765;
          v771 += 2 * v768 + 2 * v89;
          v773 = v20;
        }

        else
        {
          v20 += v765;
          v58 += 2 * v768;
        }

        LODWORD(v10) = v769;
        v68 += 2 * v775;
        v59 += 2 * v777;
        v79 = v750 - 1;
        if (v750 == 1)
        {
          goto LABEL_743;
        }

        goto LABEL_75;
      }
    }
  }

  v15 = *(v3 + 128);
  if ((v15 | 8) == 8)
  {
    if ((*v3 & 0xFF00) == 0x400)
    {
      W16_mark_constmask(v3, v7);
    }

    else
    {
      W16_mark_pixelmask(v3, v7);
    }

    return 1;
  }

  v25 = *(v3 + 112);
  v26 = *(v3 + 116);
  v27 = (v25 + 15) & 0xFFFFFFF0;
  v28 = v27 * v26;
  if (v28 <= 4096)
  {
    v30 = v795;
    v31 = v3;
  }

  else
  {
    v29 = malloc_type_malloc(v28, 0x97CEE3C3uLL);
    if (!v29)
    {
      return 1;
    }

    v30 = v29;
    v31 = v736;
    v14 = *(v736 + 136);
    v15 = *(v736 + 128);
  }

  CGSConvertBitsToMask(v14, *(v31 + 124), v30, v27, v25, v26, v15);
  v46 = *(v31 + 112);
  v791 = *(v31 + 96);
  v792 = v46;
  v47 = *(v31 + 144);
  v793 = *(v31 + 128);
  v794 = v47;
  v48 = *(v31 + 48);
  v787 = *(v31 + 32);
  v788 = v48;
  v49 = *(v31 + 80);
  v789 = *(v31 + 64);
  v790 = v49;
  v50 = *(v31 + 16);
  *v785 = *v31;
  v786 = v50;
  HIDWORD(v792) = (v25 + 15) & 0xFFFFFFF0;
  *(&v793 + 1) = v30;
  if (BYTE1(v785[0]) << 8 == 1024)
  {
    W16_mark_constmask(v785, v7);
  }

  else
  {
    W16_mark_pixelmask(v785, v7);
  }

  if (v30 != v795)
  {
    v51 = v30;
LABEL_1370:
    free(v51);
  }

  return 1;
}

uint64_t W16_image_mark_rgb32(uint64_t a1, int *a2, int a3, int a4, int a5, int a6)
{
  if (*(a1 + 40))
  {
    v6 = 0;
  }

  else
  {
    v6 = 255;
  }

  v7 = *(a2 + 2);
  v8 = *(a2 + 4);
  if (v8)
  {
    v114 = *(a2 + 5) - a5;
  }

  else
  {
    v114 = 0;
  }

  v9 = *(a2 + 4);
  v10 = a2[1];
  v113 = *a2;
  v112 = *(a2 + 3) - a5;
  v12 = *(a2 + 17);
  v11 = *(a2 + 18);
  v13 = *(a2 + 9);
  v110 = *(a2 + 11);
  v14 = *(a2 + 7) + v110 * a4;
  v15 = *(a1 + 32);
  v16 = v15 + (*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3);
  v17 = *(a1 + 176);
  result = 2 * (v8 != 0);
  if (v17)
  {
    v109 = *(a2 + 13);
    v107 = ~(-1 << v13);
    v108 = *(a2 + 15);
    v106 = v13 - 4;
    v19 = (v16 - 4);
    v20 = v9 ^ 0xFFFF;
    v105 = a5;
    v104 = v11 + 16 * a3 + 8;
    v21 = *(a2 + 9);
    do
    {
      if (((v108 - v14) | (v14 - v109)) < 0)
      {
        v24 = 0;
        v23 = 0;
      }

      else
      {
        v22 = ((v14 & v107) >> v106) & 0xF;
        if ((v22 - 7) >= 9)
        {
          v23 = -v12;
        }

        else
        {
          v23 = v12;
        }

        v24 = weights_21890[v22] & 0xF;
      }

      v25 = v15 + (v14 >> v13) * v12;
      if (v113 == 1)
      {
        if (a5 >= 1)
        {
          v26 = v104;
          v27 = v105;
          do
          {
            v29 = *(v26 - 1);
            v28 = *v26;
            v30 = &v25[v29];
            if (v19 >= &v25[v29])
            {
              v31 = &v25[v29];
            }

            else
            {
              v31 = v19;
            }

            if (v31 < v15)
            {
              v31 = v15;
            }

            v32 = *v31;
            if ((v28 & 0xF) != 0)
            {
              v33 = &v30[v28 >> 4];
              if (v19 < v33)
              {
                v33 = v19;
              }

              if (v33 < v15)
              {
                v33 = v15;
              }

              v34 = *v33;
              if (v24)
              {
                v35 = &v30[v23];
                if (v19 >= v35)
                {
                  v36 = v35;
                }

                else
                {
                  v36 = v19;
                }

                if (v36 < v15)
                {
                  v36 = v15;
                }

                v37 = *v36;
                v38 = (v35 + (v28 >> 4));
                if (v19 < v38)
                {
                  v38 = v19;
                }

                if (v38 < v15)
                {
                  v38 = v15;
                }

                v39 = BLEND8_21892[v24];
                v32 = v32 - ((v39 & v32) >> v24) + ((v39 & v37) >> v24);
                v34 = v34 - ((v39 & v34) >> v24) + ((v39 & *v38) >> v24);
              }

              v32 = v32 - ((BLEND8_21892[*v26 & 0xF] & v32) >> (*v26 & 0xF)) + ((BLEND8_21892[*v26 & 0xF] & v34) >> (*v26 & 0xF));
            }

            else if (v24)
            {
              v40 = &v30[v23];
              if (v19 < &v30[v23])
              {
                v40 = v19;
              }

              if (v40 < v15)
              {
                v40 = v15;
              }

              v32 = v32 - ((BLEND8_21892[v24] & v32) >> v24) + ((BLEND8_21892[v24] & *v40) >> v24);
            }

            v41 = __ROL4__(v32, v10);
            v42 = v41 | v6;
            v43 = ((v41 >> 23) & 0x1FE) + BYTE1(v41) + (((v41 >> 8) & 0xFF00) >> 6) + (((v41 >> 8) & 0xFF00) >> 8);
            v44 = (32 * v43) | (v43 >> 6);
            v45 = v44 + ((v42 << 24) | (v42 << 16));
            v46 = (v44 - ((v44 * v20 + ((v44 * v20) >> 16) + 1) >> 16)) | (((v42 | (v42 << 8)) - (((v42 | (v42 << 8)) * v20 + (((v42 | (v42 << 8)) * v20) >> 16) + 1) >> 16)) << 16);
            if (v9 == 0xFFFF)
            {
              v46 = v45;
            }

            v47 = bswap32(v46);
            *v7 = HIWORD(v47);
            if (v8)
            {
              *v8 = v47;
            }

            v26 += 2;
            ++v7;
            v8 = (v8 + result);
            --v27;
          }

          while (v27);
        }
      }

      else if (a5 >= 1)
      {
        v49 = v104;
        v48 = v105;
        do
        {
          v51 = *(v49 - 1);
          v50 = *v49;
          v52 = &v25[v51];
          if (v19 >= &v25[v51])
          {
            v53 = &v25[v51];
          }

          else
          {
            v53 = v19;
          }

          if (v53 < v15)
          {
            v53 = v15;
          }

          v54 = *v53;
          if ((v50 & 0xF) != 0)
          {
            v55 = &v52[v50 >> 4];
            if (v19 < v55)
            {
              v55 = v19;
            }

            if (v55 < v15)
            {
              v55 = v15;
            }

            v56 = *v55;
            if (v24)
            {
              v57 = &v52[v23];
              if (v19 >= &v52[v23])
              {
                v58 = &v52[v23];
              }

              else
              {
                v58 = v19;
              }

              if (v58 < v15)
              {
                v58 = v15;
              }

              v59 = *v58;
              v60 = &v57[v50 >> 4];
              if (v19 < v60)
              {
                v60 = v19;
              }

              if (v60 < v15)
              {
                v60 = v15;
              }

              v61 = BLEND8_21892[v24];
              v54 = v54 - ((v61 & v54) >> v24) + ((v61 & v59) >> v24);
              v56 = v56 - ((v61 & v56) >> v24) + ((v61 & *v60) >> v24);
            }

            v54 = v54 - ((BLEND8_21892[*v49 & 0xF] & v54) >> (*v49 & 0xF)) + ((BLEND8_21892[*v49 & 0xF] & v56) >> (*v49 & 0xF));
          }

          else if (v24)
          {
            v62 = &v52[v23];
            if (v19 < &v52[v23])
            {
              v62 = v19;
            }

            if (v62 < v15)
            {
              v62 = v15;
            }

            v54 = v54 - ((BLEND8_21892[v24] & v54) >> v24) + ((BLEND8_21892[v24] & *v62) >> v24);
          }

          v63 = __ROL4__(v54, v10);
          v64 = v63 | v6;
          v65 = ((v63 >> 23) & 0x1FE) + BYTE1(v63) + (((v63 >> 8) & 0xFF00) >> 6) + (((v63 >> 8) & 0xFF00) >> 8);
          v66 = (32 * v65) | (v65 >> 6);
          v67 = v66 + ((v64 << 24) | (v64 << 16));
          v68 = (v66 - ((v66 * v20 + ((v66 * v20) >> 16) + 1) >> 16)) | (((v64 | (v64 << 8)) - (((v64 | (v64 << 8)) * v20 + (((v64 | (v64 << 8)) * v20) >> 16) + 1) >> 16)) << 16);
          if (v9 == 0xFFFF)
          {
            v68 = v67;
          }

          v69 = HIWORD(v68);
          if (v8)
          {
            if (v69)
            {
              if (v69 == 0xFFFF)
              {
                *v7 = bswap32(v68) >> 16;
                *v8 = -1;
              }

              else
              {
                v71 = bswap32(*v8) >> 16;
                v72 = v69 ^ 0xFFFF;
                v73 = v72 * (bswap32(*v7) >> 16);
                *v7 = bswap32(v68 + ((v73 + HIWORD(v73) + 1) >> 16)) >> 16;
                *v8 = bswap32(((v72 * v71 + ((v72 * v71) >> 16) + 1) >> 16) + HIWORD(v68)) >> 16;
              }
            }
          }

          else if (v69)
          {
            if (v69 != 0xFFFF)
            {
              v70 = bswap32(*v7) >> 16;
              v68 += ((v69 ^ 0xFFFF) * v70 + (((v69 ^ 0xFFFF) * v70) >> 16) + 1) >> 16;
            }

            *v7 = bswap32(v68) >> 16;
          }

          v49 += 2;
          ++v7;
          v8 = (v8 + result);
          --v48;
        }

        while (v48);
      }

      v7 += v112;
      v14 += v110;
      v8 += v114;
      --a6;
      LOBYTE(v13) = v21;
    }

    while (a6);
  }

  else
  {
    v74 = (v11 + 16 * a3);
    v75 = v16 - 4;
    v76 = v9 ^ 0xFFFF;
    do
    {
      v77 = v15 + (v14 >> v13) * v12;
      if (v113 == 1)
      {
        if (a5 >= 1)
        {
          v78 = v74;
          v79 = a5;
          do
          {
            v80 = *v78;
            v78 += 2;
            v81 = &v77[v80];
            if (v75 < &v77[v80])
            {
              v81 = v75;
            }

            if (v81 < v15)
            {
              v81 = v15;
            }

            v82 = __ROL4__(*v81, v10);
            v83 = v82 | v6;
            v84 = ((v82 >> 23) & 0x1FE) + BYTE1(v82) + (((v82 >> 8) & 0xFF00) >> 6) + (((v82 >> 8) & 0xFF00) >> 8);
            v85 = (32 * v84) | (v84 >> 6);
            v86 = v85 + ((v83 << 24) | (v83 << 16));
            v87 = (v85 - ((v85 * v76 + ((v85 * v76) >> 16) + 1) >> 16)) | (((v83 | (v83 << 8)) - (((v83 | (v83 << 8)) * v76 + (((v83 | (v83 << 8)) * v76) >> 16) + 1) >> 16)) << 16);
            if (v9 == 0xFFFF)
            {
              v87 = v86;
            }

            v88 = bswap32(v87);
            *v7 = HIWORD(v88);
            if (v8)
            {
              *v8 = v88;
            }

            ++v7;
            v8 = (v8 + result);
            --v79;
          }

          while (v79);
        }
      }

      else
      {
        v89 = v74;
        v90 = a5;
        if (a5 >= 1)
        {
          do
          {
            v91 = *v89;
            v89 += 2;
            v92 = &v77[v91];
            if (v75 < &v77[v91])
            {
              v92 = v75;
            }

            if (v92 < v15)
            {
              v92 = v15;
            }

            v93 = __ROL4__(*v92, v10);
            v94 = v93 | v6;
            v95 = ((v93 >> 23) & 0x1FE) + BYTE1(v93) + (((v93 >> 8) & 0xFF00) >> 6) + (((v93 >> 8) & 0xFF00) >> 8);
            v96 = (32 * v95) | (v95 >> 6);
            v97 = v96 + ((v94 << 24) | (v94 << 16));
            v98 = (v96 - ((v96 * v76 + ((v96 * v76) >> 16) + 1) >> 16)) | (((v94 | (v94 << 8)) - (((v94 | (v94 << 8)) * v76 + (((v94 | (v94 << 8)) * v76) >> 16) + 1) >> 16)) << 16);
            if (v9 == 0xFFFF)
            {
              v98 = v97;
            }

            v99 = HIWORD(v98);
            if (v8)
            {
              if (v99)
              {
                if (v99 == 0xFFFF)
                {
                  *v7 = bswap32(v98) >> 16;
                  *v8 = -1;
                }

                else
                {
                  v101 = bswap32(*v8) >> 16;
                  v102 = v99 ^ 0xFFFF;
                  v103 = v102 * (bswap32(*v7) >> 16);
                  *v7 = bswap32(v98 + ((v103 + HIWORD(v103) + 1) >> 16)) >> 16;
                  *v8 = bswap32(((v102 * v101 + ((v102 * v101) >> 16) + 1) >> 16) + HIWORD(v98)) >> 16;
                }
              }
            }

            else if (v99)
            {
              if (v99 != 0xFFFF)
              {
                v100 = bswap32(*v7) >> 16;
                v98 += ((v99 ^ 0xFFFF) * v100 + (((v99 ^ 0xFFFF) * v100) >> 16) + 1) >> 16;
              }

              *v7 = bswap32(v98) >> 16;
            }

            ++v7;
            v8 = (v8 + result);
            --v90;
          }

          while (v90);
        }
      }

      v7 += v112;
      v14 += v110;
      v8 += v114;
      --a6;
    }

    while (a6);
  }

  return result;
}

uint64_t W16_image_mark_RGB32(uint64_t a1, int *a2, int a3, int a4, int a5, int a6)
{
  if (*(a1 + 40))
  {
    v6 = 0;
  }

  else
  {
    v6 = 255;
  }

  v7 = *(a2 + 2);
  v8 = *(a2 + 4);
  if (v8)
  {
    v122 = *(a2 + 5) - a5;
  }

  else
  {
    v122 = 0;
  }

  v9 = *(a2 + 4);
  v10 = a2[1];
  v121 = *a2;
  v120 = *(a2 + 3) - a5;
  v12 = *(a2 + 17);
  v11 = *(a2 + 18);
  v13 = *(a2 + 9);
  v119 = *(a2 + 11);
  v14 = *(a2 + 7) + v119 * a4;
  v15 = *(a1 + 32);
  v16 = v15 + (*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3);
  v17 = *(a1 + 176);
  result = 2 * (v8 != 0);
  if (v17)
  {
    v117 = *(a2 + 13);
    v115 = ~(-1 << v13);
    v116 = *(a2 + 15);
    v114 = v13 - 4;
    v19 = (v16 - 4);
    v20 = v9 ^ 0xFFFF;
    v113 = v11 + 16 * a3 + 8;
    v118 = *(a2 + 9);
    while (1)
    {
      if (((v116 - v14) | (v14 - v117)) < 0)
      {
        v23 = 0;
        v22 = 0;
      }

      else
      {
        v21 = ((v14 & v115) >> v114) & 0xF;
        v22 = (v21 - 7) >= 9 ? -v12 : v12;
        v23 = weights_21890[v21] & 0xF;
      }

      v24 = v15 + (v14 >> v13) * v12;
      if (v121 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v25 = v113;
        v26 = a5;
        while (1)
        {
          v28 = *(v25 - 1);
          v27 = *v25;
          v29 = &v24[v28];
          if (v19 >= &v24[v28])
          {
            v30 = &v24[v28];
          }

          else
          {
            v30 = v19;
          }

          if (v30 < v15)
          {
            v30 = v15;
          }

          v31 = bswap32(*v30);
          v32 = v27 & 0xF;
          if ((v27 & 0xF) != 0)
          {
            break;
          }

          if (v23)
          {
            v43 = &v29[v22];
            if (v19 < &v29[v22])
            {
              v43 = v19;
            }

            if (v43 < v15)
            {
              v43 = v15;
            }

            v44 = BLEND8_21892[v23];
            v41 = v31 - ((v44 & v31) >> v23);
            v42 = (bswap32(*v43) & v44) >> v23;
            goto LABEL_46;
          }

LABEL_47:
          v45 = __ROL4__(v31, v10);
          v46 = v45 | v6;
          v47 = ((v45 >> 23) & 0x1FE) + BYTE1(v45) + (((v45 >> 8) & 0xFF00) >> 6) + (((v45 >> 8) & 0xFF00) >> 8);
          v48 = (32 * v47) | (v47 >> 6);
          v49 = v48 + ((v46 << 24) | (v46 << 16));
          v50 = (v48 - ((v48 * v20 + ((v48 * v20) >> 16) + 1) >> 16)) | (((v46 | (v46 << 8)) - (((v46 | (v46 << 8)) * v20 + (((v46 | (v46 << 8)) * v20) >> 16) + 1) >> 16)) << 16);
          if (v9 == 0xFFFF)
          {
            v50 = v49;
          }

          v51 = bswap32(v50);
          *v7 = HIWORD(v51);
          if (v8)
          {
            *v8 = v51;
          }

          v25 += 2;
          ++v7;
          v8 = (v8 + result);
          if (!--v26)
          {
            goto LABEL_96;
          }
        }

        v33 = &v29[v27 >> 4];
        if (v19 < v33)
        {
          v33 = v19;
        }

        if (v33 < v15)
        {
          v33 = v15;
        }

        v34 = bswap32(*v33);
        if (v23)
        {
          v35 = &v29[v22];
          if (v19 >= v35)
          {
            v36 = v35;
          }

          else
          {
            v36 = v19;
          }

          if (v36 < v15)
          {
            v36 = v15;
          }

          v37 = bswap32(*v36);
          v38 = (v35 + (v27 >> 4));
          if (v19 < v38)
          {
            v38 = v19;
          }

          if (v38 < v15)
          {
            v38 = v15;
          }

          v39 = BLEND8_21892[v23];
          v31 = v31 - ((v39 & v31) >> v23) + ((v39 & v37) >> v23);
          v34 = v34 - ((v39 & v34) >> v23) + ((bswap32(*v38) & v39) >> v23);
        }

        v40 = BLEND8_21892[*v25 & 0xF];
        v41 = v31 - ((v40 & v31) >> v32);
        v42 = (v40 & v34) >> v32;
LABEL_46:
        v31 = v41 + v42;
        goto LABEL_47;
      }

LABEL_96:
      v7 += v120;
      LOBYTE(v13) = v118;
      v14 += v119;
      v8 += v122;
      if (!--a6)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_96;
    }

    v53 = v113;
    v52 = a5;
    while (1)
    {
      v55 = *(v53 - 1);
      v54 = *v53;
      v56 = &v24[v55];
      if (v19 >= &v24[v55])
      {
        v57 = &v24[v55];
      }

      else
      {
        v57 = v19;
      }

      if (v57 < v15)
      {
        v57 = v15;
      }

      v58 = bswap32(*v57);
      v59 = v54 & 0xF;
      if ((v54 & 0xF) != 0)
      {
        break;
      }

      if (v23)
      {
        v70 = &v56[v22];
        if (v19 < &v56[v22])
        {
          v70 = v19;
        }

        if (v70 < v15)
        {
          v70 = v15;
        }

        v71 = BLEND8_21892[v23];
        v68 = v58 - ((v71 & v58) >> v23);
        v69 = (bswap32(*v70) & v71) >> v23;
        goto LABEL_83;
      }

LABEL_84:
      v72 = __ROL4__(v58, v10);
      v73 = v72 | v6;
      v74 = ((v72 >> 23) & 0x1FE) + BYTE1(v72) + (((v72 >> 8) & 0xFF00) >> 6) + (((v72 >> 8) & 0xFF00) >> 8);
      v75 = (32 * v74) | (v74 >> 6);
      v76 = v75 + ((v73 << 24) | (v73 << 16));
      v77 = (v75 - ((v75 * v20 + ((v75 * v20) >> 16) + 1) >> 16)) | (((v73 | (v73 << 8)) - (((v73 | (v73 << 8)) * v20 + (((v73 | (v73 << 8)) * v20) >> 16) + 1) >> 16)) << 16);
      if (v9 == 0xFFFF)
      {
        v77 = v76;
      }

      v78 = HIWORD(v77);
      if (v8)
      {
        if (v78)
        {
          if (v78 == 0xFFFF)
          {
            *v7 = bswap32(v77) >> 16;
            *v8 = -1;
          }

          else
          {
            v80 = bswap32(*v8) >> 16;
            v81 = v78 ^ 0xFFFF;
            v82 = v81 * (bswap32(*v7) >> 16);
            *v7 = bswap32(v77 + ((v82 + HIWORD(v82) + 1) >> 16)) >> 16;
            *v8 = bswap32(((v81 * v80 + ((v81 * v80) >> 16) + 1) >> 16) + HIWORD(v77)) >> 16;
          }
        }
      }

      else if (v78)
      {
        if (v78 != 0xFFFF)
        {
          v79 = bswap32(*v7) >> 16;
          v77 += ((v78 ^ 0xFFFF) * v79 + (((v78 ^ 0xFFFF) * v79) >> 16) + 1) >> 16;
        }

        *v7 = bswap32(v77) >> 16;
      }

      v53 += 2;
      ++v7;
      v8 = (v8 + result);
      if (!--v52)
      {
        goto LABEL_96;
      }
    }

    v60 = &v56[v54 >> 4];
    if (v19 < v60)
    {
      v60 = v19;
    }

    if (v60 < v15)
    {
      v60 = v15;
    }

    v61 = bswap32(*v60);
    if (v23)
    {
      v62 = &v56[v22];
      if (v19 >= &v56[v22])
      {
        v63 = &v56[v22];
      }

      else
      {
        v63 = v19;
      }

      if (v63 < v15)
      {
        v63 = v15;
      }

      v64 = bswap32(*v63);
      v65 = &v62[v54 >> 4];
      if (v19 < v65)
      {
        v65 = v19;
      }

      if (v65 < v15)
      {
        v65 = v15;
      }

      v66 = BLEND8_21892[v23];
      v58 = v58 - ((v66 & v58) >> v23) + ((v66 & v64) >> v23);
      v61 = v61 - ((v66 & v61) >> v23) + ((bswap32(*v65) & v66) >> v23);
    }

    v67 = BLEND8_21892[*v53 & 0xF];
    v68 = v58 - ((v67 & v58) >> v59);
    v69 = (v67 & v61) >> v59;
LABEL_83:
    v58 = v68 + v69;
    goto LABEL_84;
  }

  v83 = (v11 + 16 * a3);
  v84 = (v16 - 4);
  v85 = v9 ^ 0xFFFF;
  do
  {
    v86 = v15 + (v14 >> v13) * v12;
    if (v121 == 1)
    {
      if (a5 >= 1)
      {
        v87 = v83;
        v88 = a5;
        do
        {
          v89 = *v87;
          v87 += 2;
          v90 = &v86[v89];
          if (v84 < &v86[v89])
          {
            v90 = v84;
          }

          if (v90 < v15)
          {
            v90 = v15;
          }

          v91 = __ROL4__(bswap32(*v90), v10);
          v92 = v91 | v6;
          v93 = ((v91 >> 23) & 0x1FE) + BYTE1(v91) + (((v91 >> 8) & 0xFF00) >> 6) + (((v91 >> 8) & 0xFF00) >> 8);
          v94 = (32 * v93) | (v93 >> 6);
          v95 = v94 + ((v92 << 24) | (v92 << 16));
          v96 = (v94 - ((v94 * v85 + ((v94 * v85) >> 16) + 1) >> 16)) | (((v92 | (v92 << 8)) - (((v92 | (v92 << 8)) * v85 + (((v92 | (v92 << 8)) * v85) >> 16) + 1) >> 16)) << 16);
          if (v9 == 0xFFFF)
          {
            v96 = v95;
          }

          v97 = bswap32(v96);
          *v7 = HIWORD(v97);
          if (v8)
          {
            *v8 = v97;
          }

          ++v7;
          v8 = (v8 + result);
          --v88;
        }

        while (v88);
      }
    }

    else
    {
      v98 = v83;
      v99 = a5;
      if (a5 >= 1)
      {
        do
        {
          v100 = *v98;
          v98 += 2;
          v101 = &v86[v100];
          if (v84 < &v86[v100])
          {
            v101 = v84;
          }

          if (v101 < v15)
          {
            v101 = v15;
          }

          v102 = __ROL4__(bswap32(*v101), v10);
          v103 = v102 | v6;
          v104 = ((v102 >> 23) & 0x1FE) + BYTE1(v102) + (((v102 >> 8) & 0xFF00) >> 6) + (((v102 >> 8) & 0xFF00) >> 8);
          v105 = (32 * v104) | (v104 >> 6);
          v106 = v105 + ((v103 << 24) | (v103 << 16));
          v107 = (v105 - ((v105 * v85 + ((v105 * v85) >> 16) + 1) >> 16)) | (((v103 | (v103 << 8)) - (((v103 | (v103 << 8)) * v85 + (((v103 | (v103 << 8)) * v85) >> 16) + 1) >> 16)) << 16);
          if (v9 == 0xFFFF)
          {
            v107 = v106;
          }

          v108 = HIWORD(v107);
          if (v8)
          {
            if (v108)
            {
              if (v108 == 0xFFFF)
              {
                *v7 = bswap32(v107) >> 16;
                *v8 = -1;
              }

              else
              {
                v110 = bswap32(*v8) >> 16;
                v111 = v108 ^ 0xFFFF;
                v112 = v111 * (bswap32(*v7) >> 16);
                *v7 = bswap32(v107 + ((v112 + HIWORD(v112) + 1) >> 16)) >> 16;
                *v8 = bswap32(((v111 * v110 + ((v111 * v110) >> 16) + 1) >> 16) + HIWORD(v107)) >> 16;
              }
            }
          }

          else if (v108)
          {
            if (v108 != 0xFFFF)
            {
              v109 = bswap32(*v7) >> 16;
              v107 += ((v108 ^ 0xFFFF) * v109 + (((v108 ^ 0xFFFF) * v109) >> 16) + 1) >> 16;
            }

            *v7 = bswap32(v107) >> 16;
          }

          ++v7;
          v8 = (v8 + result);
          --v99;
        }

        while (v99);
      }
    }

    v7 += v120;
    v14 += v119;
    v8 += v122;
    --a6;
  }

  while (a6);
  return result;
}

uint64_t W16_image_mark_RGB24(uint64_t a1, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 2);
  v7 = *(a2 + 4);
  if (v7)
  {
    v101 = *(a2 + 5) - a5;
  }

  else
  {
    v101 = 0;
  }

  v8 = *(a2 + 4);
  v100 = *a2;
  v99 = *(a2 + 3) - a5;
  v10 = *(a2 + 17);
  v9 = *(a2 + 18);
  v11 = *(a2 + 9);
  v98 = *(a2 + 11);
  v12 = *(a2 + 7) + v98 * a4;
  v13 = *(a1 + 32);
  v14 = &v13[(*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3)];
  v15 = *(a1 + 176);
  result = 2 * (v7 != 0);
  if (v15)
  {
    v96 = *(a2 + 15);
    v97 = *(a2 + 13);
    v17 = v14 - 3;
    v18 = v8 ^ 0xFFFF;
    v19 = (-2 - (0xFFFF * v18 + ((0xFFFF * v18) >> 16))) & 0xFFFF0000;
    v95 = v9 + 16 * a3 + 8;
    do
    {
      if (((v96 - v12) | (v12 - v97)) < 0)
      {
        v22 = 0;
        v21 = 0;
      }

      else
      {
        v20 = ((v12 & ~(-1 << v11)) >> (v11 - 4)) & 0xF;
        if (v20 - 7 >= 9)
        {
          v21 = -v10;
        }

        else
        {
          v21 = v10;
        }

        v22 = weights_21890[v20] & 0xF;
      }

      v23 = &v13[(v12 >> v11) * v10];
      if (v100 == 1)
      {
        if (a5 >= 1)
        {
          v24 = v95;
          v25 = a5;
          do
          {
            v27 = *(v24 - 1);
            v26 = *v24;
            v28 = &v23[v27];
            if (v17 >= &v23[v27])
            {
              v29 = &v23[v27];
            }

            else
            {
              v29 = v17;
            }

            if (v29 < v13)
            {
              v29 = v13;
            }

            v30 = (*v29 << 24) | (v29[1] << 16) | (v29[2] << 8);
            if ((v26 & 0xF) != 0)
            {
              v31 = &v28[v26 >> 4];
              if (v17 < v31)
              {
                v31 = v17;
              }

              if (v31 < v13)
              {
                v31 = v13;
              }

              v32 = (*v31 << 24) | (v31[1] << 16) | (v31[2] << 8);
              if (v22)
              {
                if (v17 >= &v28[v21])
                {
                  v33 = &v28[v21];
                }

                else
                {
                  v33 = v17;
                }

                if (v33 < v13)
                {
                  v33 = v13;
                }

                v34 = (*v33 << 24) | (v33[1] << 16) | (v33[2] << 8);
                v35 = &v28[v21 + (v26 >> 4)];
                if (v17 < v35)
                {
                  v35 = v17;
                }

                if (v35 < v13)
                {
                  v35 = v13;
                }

                v36 = BLEND8_21892[v22];
                v30 = v30 - ((v36 & v30) >> v22) + ((v36 & v34) >> v22);
                v32 = v32 - ((v36 & v32) >> v22) + ((((*v35 << 24) | (v35[1] << 16) | (v35[2] << 8)) & v36) >> v22);
              }

              v30 = v30 - ((BLEND8_21892[*v24 & 0xF] & v30) >> (*v24 & 0xF)) + ((BLEND8_21892[*v24 & 0xF] & v32) >> (*v24 & 0xF));
            }

            else if (v22)
            {
              v37 = &v28[v21];
              if (v17 < &v28[v21])
              {
                v37 = v17;
              }

              if (v37 < v13)
              {
                v37 = v13;
              }

              v30 = v30 - ((BLEND8_21892[v22] & v30) >> v22) + ((((*v37 << 24) | (v37[1] << 16) | (v37[2] << 8)) & BLEND8_21892[v22]) >> v22);
            }

            v38 = ((v30 >> 23) & 0x1FE) + BYTE1(v30) + (((v30 >> 8) & 0xFF00) >> 6) + (((v30 >> 8) & 0xFF00) >> 8);
            v39 = 32 * v38;
            v38 >>= 6;
            v40 = v38 | v39 | 0xFFFF0000;
            v41 = ((v39 | v38) - (((v39 | v38) * v18 + (((v39 | v38) * v18) >> 16) + 1) >> 16)) | v19;
            if (v8 == 0xFFFF)
            {
              v41 = v40;
            }

            v42 = bswap32(v41);
            *v6 = HIWORD(v42);
            if (v7)
            {
              *v7 = v42;
            }

            v24 += 2;
            ++v6;
            v7 = (v7 + result);
            --v25;
          }

          while (v25);
        }
      }

      else if (a5 >= 1)
      {
        v44 = v95;
        v43 = a5;
        do
        {
          v46 = *(v44 - 1);
          v45 = *v44;
          v47 = &v23[v46];
          if (v17 >= &v23[v46])
          {
            v48 = &v23[v46];
          }

          else
          {
            v48 = v17;
          }

          if (v48 < v13)
          {
            v48 = v13;
          }

          v49 = (*v48 << 24) | (v48[1] << 16) | (v48[2] << 8);
          if ((v45 & 0xF) != 0)
          {
            v50 = &v47[v45 >> 4];
            if (v17 < v50)
            {
              v50 = v17;
            }

            if (v50 < v13)
            {
              v50 = v13;
            }

            v51 = (*v50 << 24) | (v50[1] << 16) | (v50[2] << 8);
            if (v22)
            {
              if (v17 >= &v47[v21])
              {
                v52 = &v47[v21];
              }

              else
              {
                v52 = v17;
              }

              if (v52 < v13)
              {
                v52 = v13;
              }

              v53 = (*v52 << 24) | (v52[1] << 16) | (v52[2] << 8);
              v54 = &v47[v21 + (v45 >> 4)];
              if (v17 < v54)
              {
                v54 = v17;
              }

              if (v54 < v13)
              {
                v54 = v13;
              }

              v55 = BLEND8_21892[v22];
              v49 = v49 - ((v55 & v49) >> v22) + ((v55 & v53) >> v22);
              v51 = v51 - ((v55 & v51) >> v22) + ((((*v54 << 24) | (v54[1] << 16) | (v54[2] << 8)) & v55) >> v22);
            }

            v49 = v49 - ((BLEND8_21892[*v44 & 0xF] & v49) >> (*v44 & 0xF)) + ((BLEND8_21892[*v44 & 0xF] & v51) >> (*v44 & 0xF));
          }

          else if (v22)
          {
            v56 = &v47[v21];
            if (v17 < &v47[v21])
            {
              v56 = v17;
            }

            if (v56 < v13)
            {
              v56 = v13;
            }

            v49 = v49 - ((BLEND8_21892[v22] & v49) >> v22) + ((((*v56 << 24) | (v56[1] << 16) | (v56[2] << 8)) & BLEND8_21892[v22]) >> v22);
          }

          v57 = ((v49 >> 23) & 0x1FE) + BYTE1(v49) + (((v49 >> 8) & 0xFF00) >> 6) + (((v49 >> 8) & 0xFF00) >> 8);
          v58 = 32 * v57;
          v57 >>= 6;
          v59 = v57 | v58 | 0xFFFF0000;
          v60 = ((v58 | v57) - (((v58 | v57) * v18 + (((v58 | v57) * v18) >> 16) + 1) >> 16)) | v19;
          if (v8 == 0xFFFF)
          {
            v61 = v59;
          }

          else
          {
            v61 = v60;
          }

          v62 = HIWORD(v61);
          if (v7)
          {
            if (v62)
            {
              if (v62 == 0xFFFF)
              {
                *v6 = bswap32(v61) >> 16;
                *v7 = -1;
              }

              else
              {
                v64 = bswap32(*v6);
                v65 = bswap32(*v7);
                *v6 = bswap32(v61 + (((v62 ^ 0xFFFF) * HIWORD(v64) + (((v62 ^ 0xFFFF) * HIWORD(v64)) >> 16) + 1) >> 16)) >> 16;
                *v7 = bswap32((((v62 ^ 0xFFFF) * HIWORD(v65) + (((v62 ^ 0xFFFF) * HIWORD(v65)) >> 16) + 1) >> 16) + HIWORD(v61)) >> 16;
              }
            }
          }

          else if (v62)
          {
            if (v62 == 0xFFFF)
            {
              v63 = bswap32(v61);
            }

            else
            {
              v66 = bswap32(*v6);
              v63 = bswap32(v61 + (((v62 ^ 0xFFFF) * HIWORD(v66) + (((v62 ^ 0xFFFF) * HIWORD(v66)) >> 16) + 1) >> 16));
            }

            *v6 = HIWORD(v63);
          }

          v44 += 2;
          ++v6;
          v7 = (v7 + result);
          --v43;
        }

        while (v43);
      }

      v6 += v99;
      v12 += v98;
      v7 += v101;
      --a6;
    }

    while (a6);
  }

  else
  {
    v67 = (v9 + 16 * a3);
    v68 = v14 - 3;
    v69 = v8 ^ 0xFFFF;
    v70 = (-2 - (0xFFFF * v69 + ((0xFFFF * v69) >> 16))) & 0xFFFF0000;
    do
    {
      v71 = &v13[(v12 >> v11) * v10];
      if (v100 == 1)
      {
        if (a5 >= 1)
        {
          v72 = v67;
          v73 = a5;
          do
          {
            v74 = *v72;
            v72 += 2;
            v75 = &v71[v74];
            if (v68 < &v71[v74])
            {
              v75 = v68;
            }

            if (v75 < v13)
            {
              v75 = v13;
            }

            v76 = v75[2] + 2 * *v75 + 4 * v75[1] + v75[1];
            v77 = 32 * v76;
            v76 >>= 6;
            v78 = v76 | v77 | 0xFFFF0000;
            v79 = ((v77 | v76) - (((v77 | v76) * v69 + (((v77 | v76) * v69) >> 16) + 1) >> 16)) | v70;
            if (v8 == 0xFFFF)
            {
              v79 = v78;
            }

            v80 = bswap32(v79);
            *v6 = HIWORD(v80);
            if (v7)
            {
              *v7 = v80;
            }

            ++v6;
            v7 = (v7 + result);
            --v73;
          }

          while (v73);
        }
      }

      else
      {
        v81 = v67;
        v82 = a5;
        if (a5 >= 1)
        {
          do
          {
            v83 = *v81;
            v81 += 2;
            v84 = &v71[v83];
            if (v68 < &v71[v83])
            {
              v84 = v68;
            }

            if (v84 < v13)
            {
              v84 = v13;
            }

            v85 = v84[2] + 2 * *v84 + 4 * v84[1] + v84[1];
            v86 = 32 * v85;
            v85 >>= 6;
            v87 = v85 | v86 | 0xFFFF0000;
            v88 = ((v86 | v85) - (((v86 | v85) * v69 + (((v86 | v85) * v69) >> 16) + 1) >> 16)) | v70;
            if (v8 == 0xFFFF)
            {
              v89 = v87;
            }

            else
            {
              v89 = v88;
            }

            v90 = HIWORD(v89);
            if (v7)
            {
              if (v90)
              {
                if (v90 == 0xFFFF)
                {
                  *v6 = bswap32(v89) >> 16;
                  *v7 = -1;
                }

                else
                {
                  v92 = bswap32(*v6);
                  v93 = bswap32(*v7);
                  *v6 = bswap32(v89 + (((v90 ^ 0xFFFF) * HIWORD(v92) + (((v90 ^ 0xFFFF) * HIWORD(v92)) >> 16) + 1) >> 16)) >> 16;
                  *v7 = bswap32((((v90 ^ 0xFFFF) * HIWORD(v93) + (((v90 ^ 0xFFFF) * HIWORD(v93)) >> 16) + 1) >> 16) + HIWORD(v89)) >> 16;
                }
              }
            }

            else if (v90)
            {
              if (v90 == 0xFFFF)
              {
                v91 = bswap32(v89);
              }

              else
              {
                v94 = bswap32(*v6);
                v91 = bswap32(v89 + (((v90 ^ 0xFFFF) * HIWORD(v94) + (((v90 ^ 0xFFFF) * HIWORD(v94)) >> 16) + 1) >> 16));
              }

              *v6 = HIWORD(v91);
            }

            ++v6;
            v7 = (v7 + result);
            --v82;
          }

          while (v82);
        }
      }

      v6 += v99;
      v12 += v98;
      v7 += v101;
      --a6;
    }

    while (a6);
  }

  return result;
}

uint64_t W16_image_mark_W8(uint64_t a1, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 2);
  v7 = *(a2 + 4);
  if (v7)
  {
    v98 = *(a2 + 5) - a5;
  }

  else
  {
    v98 = 0;
  }

  v8 = *(a2 + 4);
  v97 = *a2;
  v96 = *(a2 + 3) - a5;
  v10 = *(a2 + 17);
  v9 = *(a2 + 18);
  v11 = *(a2 + 9);
  v12 = *(a2 + 11);
  v13 = *(a2 + 7) + v12 * a4;
  v14 = *(a1 + 32);
  v15 = &v14[(*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3)];
  v16 = *(a1 + 176);
  result = 2 * (v7 != 0);
  if (v16)
  {
    v94 = *(a2 + 15);
    v95 = *(a2 + 13);
    v18 = v15 - 4;
    v19 = v8 ^ 0xFFFF;
    v20 = (-2 - (0xFFFF * v19 + ((0xFFFF * v19) >> 16))) & 0xFFFF0000;
    v93 = v9 + 16 * a3 + 8;
    do
    {
      if (((v94 - v13) | (v13 - v95)) < 0)
      {
        v23 = 0;
        v22 = 0;
      }

      else
      {
        v21 = ((v13 & ~(-1 << v11)) >> (v11 - 4)) & 0xF;
        if (v21 - 7 >= 9)
        {
          v22 = -v10;
        }

        else
        {
          v22 = v10;
        }

        v23 = weights_21890[v21] & 0xF;
      }

      v24 = &v14[(v13 >> v11) * v10];
      if (v97 == 1)
      {
        if (a5 >= 1)
        {
          v25 = v93;
          v26 = a5;
          do
          {
            v28 = *(v25 - 1);
            v27 = *v25;
            v29 = &v24[v28];
            if (v18 >= &v24[v28])
            {
              v30 = &v24[v28];
            }

            else
            {
              v30 = v18;
            }

            if (v30 < v14)
            {
              v30 = v14;
            }

            v31 = *v30;
            if ((v27 & 0xF) != 0)
            {
              v32 = &v29[v27 >> 4];
              if (v18 < v32)
              {
                v32 = v18;
              }

              if (v32 < v14)
              {
                v32 = v14;
              }

              v33 = *v32;
              if (v23)
              {
                v34 = &v29[v22];
                if (v18 >= v34)
                {
                  v35 = v34;
                }

                else
                {
                  v35 = v18;
                }

                if (v35 < v14)
                {
                  v35 = v14;
                }

                v36 = *v35;
                v37 = &v34[v27 >> 4];
                if (v18 < v37)
                {
                  v37 = v18;
                }

                if (v37 < v14)
                {
                  v37 = v14;
                }

                v38 = BLEND8_21892[v23];
                v31 = v31 - ((v38 & v31) >> v23) + ((v38 & v36) >> v23);
                v33 = v33 - ((v38 & v33) >> v23) + ((v38 & *v37) >> v23);
              }

              v31 = v31 - ((BLEND8_21892[*v25 & 0xF] & v31) >> (*v25 & 0xF)) + ((BLEND8_21892[*v25 & 0xF] & v33) >> (*v25 & 0xF));
            }

            else if (v23)
            {
              v39 = &v29[v22];
              if (v18 < &v29[v22])
              {
                v39 = v18;
              }

              if (v39 < v14)
              {
                v39 = v14;
              }

              v31 = v31 - ((BLEND8_21892[v23] & v31) >> v23) + ((BLEND8_21892[v23] & *v39) >> v23);
            }

            v40 = v31 | (v31 << 8);
            v41 = v40 | 0xFFFF0000;
            v42 = (v40 - ((v40 * v19 + ((v40 * v19) >> 16) + 1) >> 16)) | v20;
            if (v8 == 0xFFFF)
            {
              v42 = v41;
            }

            v43 = bswap32(v42);
            *v6 = HIWORD(v43);
            if (v7)
            {
              *v7 = v43;
            }

            v25 += 2;
            ++v6;
            v7 = (v7 + result);
            --v26;
          }

          while (v26);
        }
      }

      else if (a5 >= 1)
      {
        v45 = v93;
        v44 = a5;
        do
        {
          v47 = *(v45 - 1);
          v46 = *v45;
          v48 = &v24[v47];
          if (v18 >= &v24[v47])
          {
            v49 = &v24[v47];
          }

          else
          {
            v49 = v18;
          }

          if (v49 < v14)
          {
            v49 = v14;
          }

          v50 = *v49;
          if ((v46 & 0xF) != 0)
          {
            v51 = &v48[v46 >> 4];
            if (v18 < v51)
            {
              v51 = v18;
            }

            if (v51 < v14)
            {
              v51 = v14;
            }

            v52 = *v51;
            if (v23)
            {
              if (v18 >= &v48[v22])
              {
                v53 = &v48[v22];
              }

              else
              {
                v53 = v18;
              }

              if (v53 < v14)
              {
                v53 = v14;
              }

              v54 = *v53;
              v55 = &v48[v22 + (v46 >> 4)];
              if (v18 < v55)
              {
                v55 = v18;
              }

              if (v55 < v14)
              {
                v55 = v14;
              }

              v56 = BLEND8_21892[v23];
              v50 = v50 - ((v56 & v50) >> v23) + ((v56 & v54) >> v23);
              v52 = v52 - ((v56 & v52) >> v23) + ((v56 & *v55) >> v23);
            }

            v50 = v50 - ((BLEND8_21892[*v45 & 0xF] & v50) >> (*v45 & 0xF)) + ((BLEND8_21892[*v45 & 0xF] & v52) >> (*v45 & 0xF));
          }

          else if (v23)
          {
            v57 = &v48[v22];
            if (v18 < &v48[v22])
            {
              v57 = v18;
            }

            if (v57 < v14)
            {
              v57 = v14;
            }

            v50 = v50 - ((BLEND8_21892[v23] & v50) >> v23) + ((BLEND8_21892[v23] & *v57) >> v23);
          }

          v58 = v50 | (v50 << 8);
          v59 = v58 | 0xFFFF0000;
          v60 = (v58 - ((v58 * v19 + ((v58 * v19) >> 16) + 1) >> 16)) | v20;
          if (v8 == 0xFFFF)
          {
            v61 = v59;
          }

          else
          {
            v61 = v60;
          }

          v62 = HIWORD(v61);
          if (v7)
          {
            if (v62)
            {
              if (v62 == 0xFFFF)
              {
                *v6 = bswap32(v61) >> 16;
                *v7 = -1;
              }

              else
              {
                v64 = bswap32(*v6);
                v65 = bswap32(*v7);
                *v6 = bswap32(v61 + (((v62 ^ 0xFFFF) * HIWORD(v64) + (((v62 ^ 0xFFFF) * HIWORD(v64)) >> 16) + 1) >> 16)) >> 16;
                *v7 = bswap32((((v62 ^ 0xFFFF) * HIWORD(v65) + (((v62 ^ 0xFFFF) * HIWORD(v65)) >> 16) + 1) >> 16) + HIWORD(v61)) >> 16;
              }
            }
          }

          else if (v62)
          {
            if (v62 == 0xFFFF)
            {
              v63 = bswap32(v61);
            }

            else
            {
              v66 = bswap32(*v6);
              v63 = bswap32(v61 + (((v62 ^ 0xFFFF) * HIWORD(v66) + (((v62 ^ 0xFFFF) * HIWORD(v66)) >> 16) + 1) >> 16));
            }

            *v6 = HIWORD(v63);
          }

          v45 += 2;
          ++v6;
          v7 = (v7 + result);
          --v44;
        }

        while (v44);
      }

      v6 += v96;
      v13 += v12;
      v7 += v98;
      --a6;
    }

    while (a6);
  }

  else
  {
    v67 = (v9 + 16 * a3);
    v68 = v15 - 4;
    v69 = v8 ^ 0xFFFF;
    v70 = (-2 - (0xFFFF * v69 + ((0xFFFF * v69) >> 16))) & 0xFFFF0000;
    do
    {
      v71 = &v14[(v13 >> v11) * v10];
      if (v97 == 1)
      {
        if (a5 >= 1)
        {
          v72 = v67;
          v73 = a5;
          do
          {
            v74 = *v72;
            v72 += 2;
            v75 = &v71[v74];
            if (v68 < &v71[v74])
            {
              v75 = v68;
            }

            if (v75 < v14)
            {
              v75 = v14;
            }

            v76 = *v75 | (*v75 << 8);
            v77 = v76 | 0xFFFF0000;
            v78 = (v76 - ((v76 * v69 + ((v76 * v69) >> 16) + 1) >> 16)) | v70;
            if (v8 == 0xFFFF)
            {
              v78 = v77;
            }

            v79 = bswap32(v78);
            *v6 = HIWORD(v79);
            if (v7)
            {
              *v7 = v79;
            }

            ++v6;
            v7 = (v7 + result);
            --v73;
          }

          while (v73);
        }
      }

      else
      {
        v80 = v67;
        v81 = a5;
        if (a5 >= 1)
        {
          do
          {
            v82 = *v80;
            v80 += 2;
            v83 = &v71[v82];
            if (v68 < &v71[v82])
            {
              v83 = v68;
            }

            if (v83 < v14)
            {
              v83 = v14;
            }

            v84 = *v83 | (*v83 << 8);
            v85 = v84 | 0xFFFF0000;
            v86 = (v84 - ((v84 * v69 + ((v84 * v69) >> 16) + 1) >> 16)) | v70;
            if (v8 == 0xFFFF)
            {
              v87 = v85;
            }

            else
            {
              v87 = v86;
            }

            v88 = HIWORD(v87);
            if (v7)
            {
              if (v88)
              {
                if (v88 == 0xFFFF)
                {
                  *v6 = bswap32(v87) >> 16;
                  *v7 = -1;
                }

                else
                {
                  v90 = bswap32(*v6);
                  v91 = bswap32(*v7);
                  *v6 = bswap32(v87 + (((v88 ^ 0xFFFF) * HIWORD(v90) + (((v88 ^ 0xFFFF) * HIWORD(v90)) >> 16) + 1) >> 16)) >> 16;
                  *v7 = bswap32((((v88 ^ 0xFFFF) * HIWORD(v91) + (((v88 ^ 0xFFFF) * HIWORD(v91)) >> 16) + 1) >> 16) + HIWORD(v87)) >> 16;
                }
              }
            }

            else if (v88)
            {
              if (v88 == 0xFFFF)
              {
                v89 = bswap32(v87);
              }

              else
              {
                v92 = bswap32(*v6);
                v89 = bswap32(v87 + (((v88 ^ 0xFFFF) * HIWORD(v92) + (((v88 ^ 0xFFFF) * HIWORD(v92)) >> 16) + 1) >> 16));
              }

              *v6 = HIWORD(v89);
            }

            ++v6;
            v7 = (v7 + result);
            --v81;
          }

          while (v81);
        }
      }

      v6 += v96;
      v13 += v12;
      v7 += v98;
      --a6;
    }

    while (a6);
  }

  return result;
}

uint64_t W16_mark_constmask(uint64_t a1, int a2)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 96);
  v5 = bswap32(**(a1 + 88));
  if (v4)
  {
    v7 = bswap32(*v4) << 16;
  }

  else
  {
    v7 = -65536;
  }

  v9 = *(a1 + 4);
  v8 = *(a1 + 8);
  v10 = *(a1 + 136);
  v11 = v7 | v5;
  v369 = *(a1 + 28);
  v370 = *(a1 + 40);
  pthread_mutex_lock(&W16_cacheColorLock);
  v12 = W16_cacheColor;
  if (!W16_cacheColor || *(W16_cacheColor + 16) != v11)
  {
    v13 = 0;
    while (1)
    {
      if (!v12)
      {
        goto LABEL_11;
      }

      v14 = v12;
      v15 = v13;
      if (*(v12 + 16) == v11)
      {
        break;
      }

      v12 = *v12;
      v13 = v14;
      if (!*v14)
      {
        if (W16_cacheColorCount > 6)
        {
          *v15 = 0;
          v23 = *(v14 + 8);
          v17 = a2;
          v21 = v9;
        }

        else
        {
LABEL_11:
          v16 = W16_cacheColorBase;
          v17 = a2;
          if (W16_cacheColorBase)
          {
            v18 = W16_cacheColorCount;
          }

          else
          {
            v16 = malloc_type_calloc(1uLL, 0x1CA8uLL, 0x10200408056D5EBuLL);
            v18 = 0;
            W16_cacheColorBase = v16;
          }

          v21 = v9;
          v14 = v16 + 24 * v18;
          v23 = v16 + 1024 * v18 + 168;
          *(v14 + 8) = v23;
          W16_cacheColorCount = v18 + 1;
        }

        v22 = v10;
        v24 = 0;
        *v14 = W16_cacheColor;
        W16_cacheColor = v14;
        *(v14 + 16) = v11;
        v25 = vdupq_n_s32(v5);
        v26 = xmmword_18439CB90;
        v27 = vdupq_n_s32(HIWORD(v11));
        v28 = vdupq_n_s32(0x101u);
        v29.i64[0] = 0xFFFF0000FFFFLL;
        v29.i64[1] = 0xFFFF0000FFFFLL;
        v30.i64[0] = 0x100000001;
        v30.i64[1] = 0x100000001;
        v31.i64[0] = 0x400000004;
        v31.i64[1] = 0x400000004;
        do
        {
          v32 = veorq_s8(vmulq_s32(v26, v28), v29);
          v33 = vmulq_s32(v32, v25);
          v34 = vmulq_s32(v32, v27);
          *(v23 + v24) = vorrq_s8(vshlq_n_s32(vsubq_s32(v27, vshrq_n_u32(vaddq_s32(vsraq_n_u32(v34, v34, 0x10uLL), v30), 0x10uLL)), 0x10uLL), vsubq_s32(v25, vshrq_n_u32(vaddq_s32(vsraq_n_u32(v33, v33, 0x10uLL), v30), 0x10uLL)));
          v26 = vaddq_s32(v26, v31);
          v24 += 16;
        }

        while (v24 != 1024);
        v20 = v14 + 8;
        result = pthread_mutex_unlock(&W16_cacheColorLock);
        goto LABEL_22;
      }
    }

    if (v13)
    {
      *v13 = *v12;
      *v12 = W16_cacheColor;
      W16_cacheColor = v12;
    }
  }

  result = pthread_mutex_unlock(&W16_cacheColorLock);
  v20 = v12 + 8;
  v17 = a2;
  v21 = v9;
  v22 = v10;
LABEL_22:
  v35 = *v20;
  v36 = *(*v20 + 1020);
  v37 = *(a1 + 12);
  v38 = *(a1 + 16);
  if (v3)
  {
    v39 = *(a1 + 32) >> 1;
    v40 = (v3 + 2 * v39 * v38 + 2 * v37);
    v41 = 1;
    if (!v22)
    {
      return result;
    }
  }

  else
  {
    v40 = 0;
    v39 = 0;
    v41 = 0;
    if (!v22)
    {
      return result;
    }
  }

  v42 = v39 - v21;
  if (v3)
  {
    v39 -= v21;
  }

  v372 = v39;
  v43 = HIWORD(v36);
  v44 = (v370 + 2 * (v369 >> 1) * v38 + 2 * v37);
  v45 = *(a1 + 124);
  v46 = v22 + *(a1 + 108) * v45 + *(a1 + 104);
  v47 = v45 - v21;
  v48 = (v369 >> 1) - v21;
  v371 = v48;
  v49 = v47;
  switch(v17)
  {
    case 0:
      if (v3)
      {
        v50 = 2 * v41;
        do
        {
          v51 = v21;
          do
          {
            v52 = *v46;
            if (*v46)
            {
              if (v52 == 255)
              {
                LOWORD(v53) = 0;
                v44->i16[0] = 0;
              }

              else
              {
                v54 = bswap32(v44->u16[0]) >> 16;
                v55 = bswap32(*v40) >> 16;
                v56 = (v52 ^ 0xFF | ((v52 ^ 0xFF) << 8)) ^ 0xFFFF;
                v44->i16[0] = bswap32(v54 - ((v56 * v54 + ((v56 * v54) >> 16) + 1) >> 16)) >> 16;
                v53 = bswap32(v55 - ((v56 * v55 + ((v56 * v55) >> 16) + 1) >> 16)) >> 16;
              }

              *v40 = v53;
            }

            ++v46;
            v44 = (v44 + 2);
            v40 = (v40 + v50);
            --v51;
          }

          while (v51);
          v46 += v47;
          v44 = (v44 + 2 * v48);
          v40 += v372;
          --v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v57 = v21;
          do
          {
            v58 = *v46;
            if (*v46)
            {
              if (v58 == 255)
              {
                LOWORD(v59) = 0;
              }

              else
              {
                v60 = bswap32(v44->u16[0]) >> 16;
                v61 = ((v58 ^ 0xFF | ((v58 ^ 0xFF) << 8)) ^ 0xFFFF) * v60;
                v59 = bswap32(v60 - ((v61 + HIWORD(v61) + 1) >> 16)) >> 16;
              }

              v44->i16[0] = v59;
            }

            ++v46;
            v44 = (v44 + 2);
            --v57;
          }

          while (v57);
          v46 += v47;
          v44 = (v44 + 2 * v48);
          --v8;
        }

        while (v8);
      }

      return result;
    case 1:
      v162 = v46 & 3;
      if (!v3)
      {
        v269 = -1 << (8 * v162);
        if ((v46 & 3) != 0)
        {
          v270 = v46 & 0xFC;
        }

        else
        {
          v270 = v46;
        }

        if ((v46 & 3) != 0)
        {
          v271 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
        }

        else
        {
          v269 = -1;
          v271 = v46;
        }

        if ((v46 & 3) != 0)
        {
          v272 = (v44 - 2 * (v46 & 3));
        }

        else
        {
          v272 = v44;
        }

        if ((v46 & 3) != 0)
        {
          v273 = v162 + v21;
        }

        else
        {
          v273 = v21;
        }

        if (((v273 + v270) & 3) != 0)
        {
          v274 = 4 - ((v273 + v270) & 3);
          v162 += v274;
          v275 = 0xFFFFFFFF >> (8 * v274);
          if (v273 >= 4)
          {
            v276 = v275;
          }

          else
          {
            v276 = 0;
          }

          if (v273 >= 4)
          {
            v275 = -1;
          }

          v269 &= v275;
        }

        else
        {
          v276 = 0;
        }

        v353 = v47 - v162;
        v354 = v48 - v162;
        v355 = (v273 >> 2);
        v356 = bswap32(v36) >> 16;
        v357 = vdup_n_s16(v356);
        while (1)
        {
          v358 = *v271 & v269;
          v359 = v355;
          v360 = v276;
          if (!v358)
          {
            goto LABEL_580;
          }

LABEL_578:
          if (v358 == -1)
          {
            *v272 = v357;
            goto LABEL_580;
          }

          while (1)
          {
            if (v358)
            {
              LOWORD(v361) = v356;
              if (v358 != 255)
              {
                v362 = (bswap32(v272->u16[0]) >> 16) * ((v358 | (v358 << 8)) ^ 0xFFFF);
                v361 = bswap32(*(v35 + 4 * v358) + ((v362 + HIWORD(v362) + 1) >> 16)) >> 16;
              }

              v272->i16[0] = v361;
            }

            if (BYTE1(v358))
            {
              LOWORD(v363) = v356;
              if (BYTE1(v358) != 255)
              {
                v364 = bswap32(v272->u16[1]) >> 16;
                v363 = bswap32(*(v35 + 4 * BYTE1(v358)) + ((v364 * ((BYTE1(v358) | (BYTE1(v358) << 8)) ^ 0xFFFF) + ((v364 * ((BYTE1(v358) | (BYTE1(v358) << 8)) ^ 0xFFFF)) >> 16) + 1) >> 16)) >> 16;
              }

              v272->i16[1] = v363;
            }

            if (BYTE2(v358))
            {
              LOWORD(v365) = v356;
              if (BYTE2(v358) != 255)
              {
                v366 = bswap32(v272->u16[2]) >> 16;
                v365 = bswap32(*(v35 + 4 * BYTE2(v358)) + ((v366 * ((BYTE2(v358) | (BYTE2(v358) << 8)) ^ 0xFFFF) + ((v366 * ((BYTE2(v358) | (BYTE2(v358) << 8)) ^ 0xFFFF)) >> 16) + 1) >> 16)) >> 16;
              }

              v272->i16[2] = v365;
            }

            v367 = HIBYTE(v358);
            if (v367 == 255)
            {
              v272->i16[3] = v356;
            }

            else if (v367)
            {
              v368 = bswap32(v272->u16[3]) >> 16;
              v272->i16[3] = bswap32(*(v35 + 4 * v367) + ((((v367 | (v367 << 8)) ^ 0xFFFF) * v368 + ((((v367 | (v367 << 8)) ^ 0xFFFF) * v368) >> 16) + 1) >> 16)) >> 16;
            }

LABEL_580:
            while (1)
            {
              result = v359;
              ++v272;
              v359 = (v359 - 1);
              ++v271;
              if (result < 2)
              {
                break;
              }

              v358 = *v271;
              if (*v271)
              {
                goto LABEL_578;
              }
            }

            if (!v360)
            {
              break;
            }

            v360 = 0;
            v358 = *v271 & v276;
          }

          v271 = (v271 + v353);
          v272 = (v272 + 2 * v354);
          if (!--v8)
          {
            return result;
          }
        }
      }

      v163 = -1 << (8 * v162);
      v164 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
      v165 = 2 * (v46 & 3);
      v166 = (v44 - v165);
      v167 = &v40[v165 / 0xFFFFFFFFFFFFFFFELL];
      if ((v46 & 3) != 0)
      {
        v168 = v46 & 0xFC;
      }

      else
      {
        v168 = v46;
      }

      if ((v46 & 3) != 0)
      {
        v169 = v162 + v21;
      }

      else
      {
        v163 = -1;
        v164 = v46;
        v167 = v40;
        v166 = v44;
        v169 = v21;
      }

      if (((v169 + v168) & 3) != 0)
      {
        v170 = 4 - ((v169 + v168) & 3);
        v162 += v170;
        v171 = 0xFFFFFFFF >> (8 * v170);
        if (v169 >= 4)
        {
          v172 = v171;
        }

        else
        {
          v172 = 0;
        }

        if (v169 >= 4)
        {
          v171 = -1;
        }

        v163 &= v171;
      }

      else
      {
        v172 = 0;
      }

      v309 = v47 - v162;
      v310 = v48 - v162;
      v311 = v169 >> 2;
      v312 = bswap32(v36);
      result = v42 - v162;
      do
      {
        v313 = *v164 & v163;
        v314 = v311;
        v315 = v172;
        if (!v313)
        {
          goto LABEL_528;
        }

LABEL_526:
        if (v313 == -1)
        {
          v166->i16[0] = HIWORD(v312);
          *v167 = v312;
          v166->i16[1] = HIWORD(v312);
          v167[1] = v312;
          v166->i16[2] = HIWORD(v312);
          v167[2] = v312;
LABEL_549:
          v166->i16[3] = HIWORD(v312);
          v167[3] = v312;
          goto LABEL_528;
        }

        while (1)
        {
          if (v313)
          {
            if (v313 == 255)
            {
              v166->i16[0] = HIWORD(v312);
              LOWORD(v317) = v312;
            }

            else
            {
              v318 = *(v35 + 4 * v313);
              v319 = bswap32(v166->u16[0]);
              v320 = bswap32(*v167) >> 16;
              v321 = (v313 | (v313 << 8)) ^ 0xFFFF;
              v166->i16[0] = bswap32(v318 + ((HIWORD(v319) * v321 + ((HIWORD(v319) * v321) >> 16) + 1) >> 16)) >> 16;
              v317 = bswap32(((v320 * v321 + ((v320 * v321) >> 16) + 1) >> 16) + HIWORD(v318)) >> 16;
            }

            *v167 = v317;
          }

          if (BYTE1(v313))
          {
            if (BYTE1(v313) == 255)
            {
              v166->i16[1] = HIWORD(v312);
              LOWORD(v322) = v312;
            }

            else
            {
              v323 = *(v35 + 4 * BYTE1(v313));
              v324 = bswap32(v167[1]) >> 16;
              v325 = (BYTE1(v313) | (BYTE1(v313) << 8)) ^ 0xFFFF;
              v326 = (bswap32(v166->u16[1]) >> 16) * v325;
              v166->i16[1] = bswap32(v323 + ((v326 + HIWORD(v326) + 1) >> 16)) >> 16;
              v322 = bswap32(((v324 * v325 + ((v324 * v325) >> 16) + 1) >> 16) + HIWORD(v323)) >> 16;
            }

            v167[1] = v322;
          }

          if (BYTE2(v313))
          {
            if (BYTE2(v313) == 255)
            {
              v166->i16[2] = HIWORD(v312);
              LOWORD(v327) = v312;
            }

            else
            {
              v328 = *(v35 + 4 * BYTE2(v313));
              v329 = bswap32(v166->u16[2]);
              v330 = bswap32(v167[2]) >> 16;
              v331 = (BYTE2(v313) | (BYTE2(v313) << 8)) ^ 0xFFFF;
              v166->i16[2] = bswap32(v328 + ((HIWORD(v329) * v331 + ((HIWORD(v329) * v331) >> 16) + 1) >> 16)) >> 16;
              v327 = bswap32(((v330 * v331 + ((v330 * v331) >> 16) + 1) >> 16) + HIWORD(v328)) >> 16;
            }

            v167[2] = v327;
          }

          v332 = HIBYTE(v313);
          if (v332 == 255)
          {
            goto LABEL_549;
          }

          if (v332)
          {
            v333 = v332 | (v332 << 8);
            v334 = *(v35 + 4 * v332);
            v335 = bswap32(v167[3]) >> 16;
            v333 ^= 0xFFFFu;
            v336 = v333 * (bswap32(v166->u16[3]) >> 16);
            v166->i16[3] = bswap32(v334 + ((v336 + HIWORD(v336) + 1) >> 16)) >> 16;
            v167[3] = bswap32(((v333 * v335 + ((v333 * v335) >> 16) + 1) >> 16) + HIWORD(v334)) >> 16;
          }

LABEL_528:
          while (1)
          {
            v316 = v314;
            ++v166;
            v167 += 4;
            --v314;
            ++v164;
            if (v316 < 2)
            {
              break;
            }

            v313 = *v164;
            if (*v164)
            {
              goto LABEL_526;
            }
          }

          if (!v315)
          {
            break;
          }

          v315 = 0;
          v313 = *v164 & v172;
        }

        v164 = (v164 + v309);
        v166 = (v166 + 2 * v310);
        v167 += result;
        --v8;
      }

      while (v8);
      return result;
    case 2:
      v121 = v46 & 3;
      if (v3)
      {
        v122 = -1 << (8 * v121);
        v123 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
        v124 = 2 * (v46 & 3);
        v125 = (v44 - v124);
        v126 = &v40[v124 / 0xFFFFFFFFFFFFFFFELL];
        if ((v46 & 3) != 0)
        {
          v127 = v46 & 0xFC;
        }

        else
        {
          v127 = v46;
        }

        if ((v46 & 3) != 0)
        {
          v128 = v121 + v21;
        }

        else
        {
          v122 = -1;
          v123 = v46;
          v126 = v40;
          v125 = v44;
          v128 = v21;
        }

        if (((v128 + v127) & 3) != 0)
        {
          v129 = 4 - ((v128 + v127) & 3);
          v121 += v129;
          v130 = 0xFFFFFFFF >> (8 * v129);
          if (v128 >= 4)
          {
            v131 = v130;
          }

          else
          {
            v131 = 0;
          }

          if (v128 >= 4)
          {
            v130 = -1;
          }

          v122 &= v130;
        }

        else
        {
          v131 = 0;
        }

        v277 = v47 - v121;
        v278 = v48 - v121;
        v279 = v128 >> 2;
        result = ~HIWORD(v36);
        v280 = v42 - v121;
        while (1)
        {
          v281 = *v123 & v122;
          v282 = v279;
          v283 = v131;
          if (!v281)
          {
            goto LABEL_507;
          }

LABEL_505:
          if (v281 == -1)
          {
            break;
          }

          while (1)
          {
            if (v281)
            {
              v295 = *(v35 + 4 * v281);
              v296 = bswap32(*v126) >> 16;
              v297 = HIWORD(v295) ^ 0xFFFF;
              v298 = v297 * (bswap32(v125->u16[0]) >> 16);
              v125->i16[0] = bswap32(v295 + ((v298 + HIWORD(v298) + 1) >> 16)) >> 16;
              *v126 = bswap32(((v297 * v296 + ((v297 * v296) >> 16) + 1) >> 16) + HIWORD(v295)) >> 16;
            }

            if ((v281 & 0xFF00) != 0)
            {
              v299 = *(v35 + 4 * BYTE1(v281));
              v300 = bswap32(v126[1]) >> 16;
              v301 = HIWORD(v299) ^ 0xFFFF;
              v302 = v301 * (bswap32(v125->u16[1]) >> 16);
              v125->i16[1] = bswap32(v299 + ((v302 + HIWORD(v302) + 1) >> 16)) >> 16;
              v126[1] = bswap32(((v301 * v300 + ((v301 * v300) >> 16) + 1) >> 16) + HIWORD(v299)) >> 16;
            }

            if ((v281 & 0xFF0000) != 0)
            {
              v303 = *(v35 + 4 * BYTE2(v281));
              v304 = bswap32(v126[2]) >> 16;
              v305 = HIWORD(v303) ^ 0xFFFF;
              v306 = v305 * (bswap32(v125->u16[2]) >> 16);
              v125->i16[2] = bswap32(v303 + ((v306 + HIWORD(v306) + 1) >> 16)) >> 16;
              v126[2] = bswap32(((v305 * v304 + ((v305 * v304) >> 16) + 1) >> 16) + HIWORD(v303)) >> 16;
            }

            v307 = HIBYTE(v281);
            if (v307)
            {
              v292 = *(v35 + 4 * v307);
              v293 = HIWORD(v292);
              v308 = HIWORD(v292) ^ 0xFFFF;
              v290 = v308 * (bswap32(v125->u16[3]) >> 16);
              v291 = v308 * (bswap32(v126[3]) >> 16);
              goto LABEL_520;
            }

LABEL_507:
            while (1)
            {
              v294 = v282;
              ++v125;
              v126 += 4;
              --v282;
              ++v123;
              if (v294 < 2)
              {
                break;
              }

              v281 = *v123;
              if (*v123)
              {
                goto LABEL_505;
              }
            }

            if (!v283)
            {
              break;
            }

            v283 = 0;
            v281 = *v123 & v131;
          }

          v123 = (v123 + v277);
          v125 = (v125 + 2 * v278);
          v126 += v280;
          if (!--v8)
          {
            return result;
          }
        }

        v284 = bswap32(v125->u16[0]);
        v285 = bswap32(*v126);
        v125->i16[0] = bswap32(v36 + ((HIWORD(v284) * result + ((HIWORD(v284) * result) >> 16) + 1) >> 16)) >> 16;
        *v126 = bswap32(((HIWORD(v285) * result + ((HIWORD(v285) * result) >> 16) + 1) >> 16) + HIWORD(v36)) >> 16;
        v286 = bswap32(v125->u16[1]);
        v287 = bswap32(v126[1]);
        v125->i16[1] = bswap32(v36 + ((HIWORD(v286) * result + ((HIWORD(v286) * result) >> 16) + 1) >> 16)) >> 16;
        v126[1] = bswap32(((HIWORD(v287) * result + ((HIWORD(v287) * result) >> 16) + 1) >> 16) + HIWORD(v36)) >> 16;
        v288 = bswap32(v125->u16[2]);
        v289 = bswap32(v126[2]);
        v125->i16[2] = bswap32(v36 + ((HIWORD(v288) * result + ((HIWORD(v288) * result) >> 16) + 1) >> 16)) >> 16;
        v126[2] = bswap32(((HIWORD(v289) * result + ((HIWORD(v289) * result) >> 16) + 1) >> 16) + HIWORD(v36)) >> 16;
        v290 = (bswap32(v125->u16[3]) >> 16) * result;
        v291 = (bswap32(v126[3]) >> 16) * result;
        v292 = v36;
        v293 = HIWORD(v36);
LABEL_520:
        v125->i16[3] = bswap32(v292 + ((v290 + HIWORD(v290) + 1) >> 16)) >> 16;
        v126[3] = bswap32(v293 + ((v291 + HIWORD(v291) + 1) >> 16)) >> 16;
        goto LABEL_507;
      }

      v261 = -1 << (8 * v121);
      if ((v46 & 3) != 0)
      {
        v262 = v46 & 0xFC;
      }

      else
      {
        v262 = v46;
      }

      if ((v46 & 3) != 0)
      {
        v263 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
      }

      else
      {
        v261 = -1;
        v263 = v46;
      }

      if ((v46 & 3) != 0)
      {
        v264 = (v44 - 2 * (v46 & 3));
      }

      else
      {
        v264 = v44;
      }

      if ((v46 & 3) != 0)
      {
        v265 = v121 + v21;
      }

      else
      {
        v265 = v21;
      }

      if (((v265 + v262) & 3) != 0)
      {
        v266 = 4 - ((v265 + v262) & 3);
        v121 += v266;
        v267 = 0xFFFFFFFF >> (8 * v266);
        if (v265 >= 4)
        {
          v268 = v267;
        }

        else
        {
          v268 = 0;
        }

        if (v265 >= 4)
        {
          v267 = -1;
        }

        v261 &= v267;
      }

      else
      {
        v268 = 0;
      }

      v337 = v47 - v121;
      v338 = v265 >> 2;
      v339 = ~HIWORD(v36);
      v340 = v48 - v121;
      do
      {
        v341 = *v263 & v261;
        v342 = v338;
        result = v268;
        if (!v341)
        {
          goto LABEL_559;
        }

LABEL_557:
        if (v341 == -1)
        {
          v343 = bswap32(v264->u16[0]);
          v264->i16[0] = bswap32(v36 + ((HIWORD(v343) * v339 + ((HIWORD(v343) * v339) >> 16) + 1) >> 16)) >> 16;
          v344 = bswap32(v264->u16[1]);
          v264->i16[1] = bswap32(v36 + ((HIWORD(v344) * v339 + ((HIWORD(v344) * v339) >> 16) + 1) >> 16)) >> 16;
          v345 = bswap32(v264->u16[2]);
          v264->i16[2] = bswap32(v36 + ((HIWORD(v345) * v339 + ((HIWORD(v345) * v339) >> 16) + 1) >> 16)) >> 16;
          v346 = (bswap32(v264->u16[3]) >> 16) * v339;
          v347 = v36;
LABEL_572:
          v264->i16[3] = bswap32(v347 + ((v346 + HIWORD(v346) + 1) >> 16)) >> 16;
          goto LABEL_559;
        }

        while (1)
        {
          if (v341)
          {
            v349 = bswap32(v264->u16[0]);
            v264->i16[0] = bswap32(*(v35 + 4 * v341) + (((~*(v35 + 4 * v341) >> 16) * HIWORD(v349) + (((~*(v35 + 4 * v341) >> 16) * HIWORD(v349)) >> 16) + 1) >> 16)) >> 16;
          }

          if ((v341 & 0xFF00) != 0)
          {
            v350 = bswap32(v264->u16[1]);
            v264->i16[1] = bswap32(*(v35 + 4 * BYTE1(v341)) + (((~*(v35 + 4 * BYTE1(v341)) >> 16) * HIWORD(v350) + (((~*(v35 + 4 * BYTE1(v341)) >> 16) * HIWORD(v350)) >> 16) + 1) >> 16)) >> 16;
          }

          if ((v341 & 0xFF0000) != 0)
          {
            v351 = bswap32(v264->u16[2]);
            v264->i16[2] = bswap32(*(v35 + 4 * BYTE2(v341)) + (((~*(v35 + 4 * BYTE2(v341)) >> 16) * HIWORD(v351) + (((~*(v35 + 4 * BYTE2(v341)) >> 16) * HIWORD(v351)) >> 16) + 1) >> 16)) >> 16;
          }

          v352 = HIBYTE(v341);
          if (v352)
          {
            v347 = *(v35 + 4 * v352);
            v346 = (~v347 >> 16) * (bswap32(v264->u16[3]) >> 16);
            goto LABEL_572;
          }

LABEL_559:
          while (1)
          {
            v348 = v342;
            ++v264;
            --v342;
            ++v263;
            if (v348 < 2)
            {
              break;
            }

            v341 = *v263;
            if (*v263)
            {
              goto LABEL_557;
            }
          }

          if (!result)
          {
            break;
          }

          result = 0;
          v341 = *v263 & v268;
        }

        v263 = (v263 + v337);
        v264 = (v264 + 2 * v340);
        --v8;
      }

      while (v8);
      return result;
    case 3:
      v137 = 2 * v41;
      do
      {
        v138 = v21;
        do
        {
          v139 = *v46;
          if (*v46)
          {
            if (v139 == 255)
            {
              v140 = *(v35 + 4 * *v40);
              v44->i16[0] = bswap32(v140) >> 16;
              v141 = HIWORD(v140);
            }

            else
            {
              v142 = v139 | (v139 << 8);
              v143 = bswap32(*v40) >> 16;
              v144 = *(v35 + 4 * ((v143 * v142 + ((v143 * v142) >> 16) + 1) >> 24));
              v142 ^= 0xFFFFu;
              v145 = (bswap32(v44->u16[0]) >> 16) * v142;
              v44->i16[0] = bswap32(v144 + ((v145 + HIWORD(v145) + 1) >> 16)) >> 16;
              v141 = ((v143 * v142 + ((v143 * v142) >> 16) + 1) >> 16) + HIWORD(v144);
            }

            *v40 = bswap32(v141) >> 16;
          }

          ++v46;
          v44 = (v44 + 2);
          v40 = (v40 + v137);
          --v138;
        }

        while (v138);
        v46 += v47;
        v44 = (v44 + 2 * v48);
        v40 += v372;
        --v8;
      }

      while (v8);
      return result;
    case 4:
      v90 = 2 * v41;
      do
      {
        v91 = v21;
        do
        {
          v92 = *v46;
          if (*v46)
          {
            if (v92 == 255)
            {
              v93 = *(v35 + 4 * ~*v40);
              v44->i16[0] = bswap32(v93) >> 16;
              v94 = HIWORD(v93);
            }

            else
            {
              v95 = v92 | (v92 << 8);
              v96 = bswap32(*v40) >> 16;
              v97 = *(v35 + 4 * (((v96 ^ 0xFFFF) * v95 + (((v96 ^ 0xFFFF) * v95) >> 16) + 1) >> 24));
              v95 ^= 0xFFFFu;
              v98 = (bswap32(v44->u16[0]) >> 16) * v95;
              v44->i16[0] = bswap32(v97 + ((v98 + HIWORD(v98) + 1) >> 16)) >> 16;
              v94 = ((v96 * v95 + ((v96 * v95) >> 16) + 1) >> 16) + HIWORD(v97);
            }

            *v40 = bswap32(v94) >> 16;
          }

          ++v46;
          v44 = (v44 + 2);
          v40 = (v40 + v90);
          --v91;
        }

        while (v91);
        v46 += v47;
        v44 = (v44 + 2 * v48);
        v40 += v372;
        --v8;
      }

      while (v8);
      return result;
    case 5:
      v183 = 2 * v41;
      do
      {
        v184 = v21;
        do
        {
          if (*v46)
          {
            v185 = bswap32(*v40);
            v186 = *(v35 + 4 * *v46);
            v187 = bswap32(v44->u16[0]);
            v188 = HIWORD(v186) ^ 0xFFFF;
            v44->i16[0] = bswap32(v186 * HIWORD(v185) + v188 * HIWORD(v187) + ((v186 * HIWORD(v185) + v188 * HIWORD(v187)) >> 16) + 1);
            *v40 = bswap32((v188 + HIWORD(v185)) * HIWORD(v186) + (((v188 + HIWORD(v185)) * HIWORD(v186)) >> 16) + 1);
          }

          ++v46;
          v44 = (v44 + 2);
          v40 = (v40 + v183);
          --v184;
        }

        while (v184);
        v46 += v47;
        v44 = (v44 + 2 * v48);
        v40 += v372;
        --v8;
      }

      while (v8);
      return result;
    case 6:
      do
      {
        v199 = v21;
        do
        {
          v200 = *v46;
          if (*v46)
          {
            v201 = bswap32(*v40);
            if (HIWORD(v201) != 0xFFFF)
            {
              if (~HIWORD(v201) == 0xFFFF)
              {
                v202 = *(v35 + 4 * v200);
                v44->i16[0] = bswap32(v202) >> 16;
                v203 = HIWORD(v202);
              }

              else
              {
                v204 = HIWORD(v201);
                v205 = *(v35 + 4 * v200);
                v206 = ~HIWORD(v201);
                v44->i16[0] = bswap32((bswap32(v44->u16[0]) >> 16) + ((v205 * v206 + ((v205 * v206) >> 16) + 1) >> 16)) >> 16;
                v203 = v204 + ((HIWORD(v205) * v206 + ((HIWORD(v205) * v206) >> 16) + 1) >> 16);
              }

              *v40 = bswap32(v203) >> 16;
            }
          }

          ++v46;
          v44 = (v44 + 2);
          v40 += v41;
          --v199;
        }

        while (v199);
        v46 += v47;
        v44 = (v44 + 2 * v48);
        v40 += v372;
        --v8;
      }

      while (v8);
      return result;
    case 7:
      v146 = v43 ^ 0xFFFF;
      if (v3)
      {
        v147 = 2 * v41;
        do
        {
          v148 = v21;
          do
          {
            v149 = *v46;
            if (*v46)
            {
              if (v149 == 255)
              {
                v150 = bswap32(v44->u16[0]) >> 16;
                v151 = bswap32(*v40) >> 16;
                v152 = v146 * v150;
                v153 = v146 * v151;
              }

              else
              {
                v154 = v149 | (v149 << 8);
                v150 = bswap32(v44->u16[0]) >> 16;
                v151 = bswap32(*v40) >> 16;
                v155 = (v154 - ((v43 * v154 + ((v43 * v154) >> 16) + 1) >> 16));
                v152 = v150 * v155;
                v153 = v151 * v155;
              }

              v44->i16[0] = bswap32(v150 - ((v152 + HIWORD(v152) + 1) >> 16)) >> 16;
              *v40 = bswap32(v151 - ((v153 + HIWORD(v153) + 1) >> 16)) >> 16;
            }

            ++v46;
            v44 = (v44 + 2);
            v40 = (v40 + v147);
            --v148;
          }

          while (v148);
          v46 += v47;
          v44 = (v44 + 2 * v48);
          v40 += v372;
          --v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v156 = v21;
          do
          {
            v157 = *v46;
            if (*v46)
            {
              if (v157 == 255)
              {
                v158 = bswap32(v44->u16[0]) >> 16;
                v159 = v43 ^ 0xFFFF;
                v160 = v158;
              }

              else
              {
                v161 = v157 | (v157 << 8);
                v159 = bswap32(v44->u16[0]) >> 16;
                v158 = v161 - ((v43 * v161 + ((v43 * v161) >> 16) + 1) >> 16);
                v160 = v159;
              }

              v44->i16[0] = bswap32(v160 - ((v159 * v158 + ((v159 * v158) >> 16) + 1) >> 16)) >> 16;
            }

            ++v46;
            v44 = (v44 + 2);
            --v156;
          }

          while (v156);
          v46 += v47;
          v44 = (v44 + 2 * v48);
          --v8;
        }

        while (v8);
      }

      return result;
    case 8:
      v218 = 257 * v43;
      if (v3)
      {
        v219 = 2 * v41;
        do
        {
          v220 = v21;
          do
          {
            v221 = *v46;
            if (*v46)
            {
              v222 = bswap32(v44->u16[0]) >> 16;
              v223 = bswap32(*v40) >> 16;
              if (v221 == 255)
              {
                v224 = v43;
              }

              else
              {
                v224 = (v218 * v221 + ((v218 * v221) >> 16) + 1) >> 16;
              }

              v44->i16[0] = bswap32(v222 - ((v224 * v222 + ((v224 * v222) >> 16) + 1) >> 16)) >> 16;
              *v40 = bswap32(v223 - ((v224 * v223 + ((v224 * v223) >> 16) + 1) >> 16)) >> 16;
            }

            ++v46;
            v44 = (v44 + 2);
            v40 = (v40 + v219);
            --v220;
          }

          while (v220);
          v46 += v47;
          v44 = (v44 + 2 * v48);
          v40 += v372;
          --v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v225 = v21;
          do
          {
            v226 = *v46;
            if (*v46)
            {
              v227 = bswap32(v44->u16[0]) >> 16;
              if (v226 == 255)
              {
                v228 = v43;
              }

              else
              {
                v228 = (v218 * v226 + ((v218 * v226) >> 16) + 1) >> 16;
              }

              v44->i16[0] = bswap32(v227 - ((v228 * v227 + ((v228 * v227) >> 16) + 1) >> 16)) >> 16;
            }

            ++v46;
            v44 = (v44 + 2);
            --v225;
          }

          while (v225);
          v46 += v47;
          v44 = (v44 + 2 * v48);
          --v8;
        }

        while (v8);
      }

      return result;
    case 9:
      v105 = 2 * v41;
      do
      {
        v106 = v21;
        do
        {
          if (*v46)
          {
            v107 = *(v35 + 4 * *v46);
            v108 = bswap32(~*v40) >> 16;
            v109 = bswap32(v44->u16[0]) >> 16;
            v110 = ~(*v46 | (*v46 << 8)) + HIWORD(v107);
            v44->i16[0] = bswap32(v107 * v108 + v110 * v109 + ((v107 * v108 + v110 * v109) >> 16) + 1);
            *v40 = bswap32((v108 + v110) * HIWORD(v107) + (((v108 + v110) * HIWORD(v107)) >> 16) + 1);
          }

          ++v46;
          v44 = (v44 + 2);
          v40 = (v40 + v105);
          --v106;
        }

        while (v106);
        v46 += v47;
        v44 = (v44 + 2 * v48);
        v40 += v372;
        --v8;
      }

      while (v8);
      return result;
    case 10:
      v212 = 2 * v41;
      do
      {
        v213 = v21;
        do
        {
          if (*v46)
          {
            v214 = *(v35 + 4 * *v46);
            v215 = bswap32(~*v40);
            v216 = bswap32(v44->u16[0]);
            v217 = HIWORD(v214) ^ 0xFFFF;
            v44->i16[0] = bswap32(v214 * HIWORD(v215) + v217 * HIWORD(v216) + ((v214 * HIWORD(v215) + v217 * HIWORD(v216)) >> 16) + 1);
            *v40 = bswap32((v217 + HIWORD(v215)) * HIWORD(v214) + (((v217 + HIWORD(v215)) * HIWORD(v214)) >> 16) + 1);
          }

          ++v46;
          v44 = (v44 + 2);
          v40 = (v40 + v212);
          --v213;
        }

        while (v213);
        v46 += v47;
        v44 = (v44 + 2 * v48);
        v40 += v372;
        --v8;
      }

      while (v8);
      return result;
    case 11:
      if (v3)
      {
        v83 = 2 * v41;
        do
        {
          v84 = v21;
          do
          {
            if (*v46)
            {
              v85 = *(v35 + 4 * *v46);
              v86 = bswap32(*v40);
              v87 = HIWORD(v85);
              v88 = HIWORD(v85) - ((bswap32(v44->u16[0]) >> 16) + v85) + HIWORD(v86);
              v89 = v87 + HIWORD(v86);
              if (v88 >= 0xFFFF)
              {
                v88 = 0xFFFF;
              }

              if (v89 >= 0xFFFF)
              {
                v89 = 0xFFFF;
              }

              v44->i16[0] = bswap32(v89 - v88) >> 16;
              *v40 = bswap32(v89) >> 16;
            }

            ++v46;
            v44 = (v44 + 2);
            v40 = (v40 + v83);
            --v84;
          }

          while (v84);
          v46 += v47;
          v44 = (v44 + 2 * v48);
          v40 += v372;
          --v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v256 = v21;
          do
          {
            if (*v46)
            {
              v257 = *(v35 + 4 * *v46);
              v258 = HIWORD(v257) - v257 + (bswap32(~v44->u16[0]) >> 16);
              if (v258 >= 0xFFFF)
              {
                v258 = 0xFFFF;
              }

              v44->i16[0] = bswap32(~v258) >> 16;
            }

            ++v46;
            v44 = (v44 + 2);
            --v256;
          }

          while (v256);
          v46 += v47;
          v44 = (v44 + 2 * v48);
          --v8;
        }

        while (v8);
      }

      return result;
    case 12:
      if (v3)
      {
        v99 = 2 * v41;
        do
        {
          v100 = v21;
          do
          {
            if (*v46)
            {
              v101 = *(v35 + 4 * *v46);
              v102 = HIWORD(v101);
              v103 = (bswap32(v44->u16[0]) >> 16) + v101;
              v104 = v102 + (bswap32(*v40) >> 16);
              if (v103 >= 0xFFFF)
              {
                v103 = 0xFFFF;
              }

              if (v104 >= 0xFFFF)
              {
                v104 = 0xFFFF;
              }

              v44->i16[0] = bswap32(v103) >> 16;
              *v40 = bswap32(v104) >> 16;
            }

            ++v46;
            v44 = (v44 + 2);
            v40 = (v40 + v99);
            --v100;
          }

          while (v100);
          v46 += v47;
          v44 = (v44 + 2 * v48);
          v40 += v372;
          --v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v259 = 0;
          do
          {
            if (*(v46 + v259))
            {
              v260 = bswap32(v44->u16[0]);
              v44->i16[0] = bswap32((v260 >> 15) & 0xFFFE | ((v260 >> 16) >> 15)) >> 16;
            }

            v44 = (v44 + 2);
            ++v259;
          }

          while (v21 != v259);
          v46 += (v21 - 1) + 1 + v47;
          v44 = (v44 + 2 * v48);
          --v8;
        }

        while (v8);
      }

      return result;
    case 13:
      v194 = 2 * v41;
      while (1)
      {
        v195 = v21;
        do
        {
          if (*v46)
          {
            result = *(v35 + 4 * *v46);
            if (result >= 0x10000)
            {
              v196 = WORD1(result);
              if (v3)
              {
                if (*v40)
                {
                  v197 = __rev16(*v40);
                  goto LABEL_313;
                }

LABEL_315:
                v44->i16[0] = bswap32(result) >> 16;
                v198 = v40;
              }

              else
              {
                v197 = 0xFFFF;
LABEL_313:
                result = PDAmultiplyPDA_8993(bswap32(v44->u16[0]) >> 16, v197, *(v35 + 4 * *v46), v196);
                if (v3)
                {
                  v196 = WORD1(result);
                  goto LABEL_315;
                }

                v196 = result;
                v198 = v44;
              }

              v198->i16[0] = bswap32(v196) >> 16;
            }
          }

          ++v46;
          v44 = (v44 + 2);
          v40 = (v40 + v194);
          --v195;
        }

        while (v195);
        v46 += v49;
        v44 = (v44 + 2 * v371);
        v40 += v372;
        if (!--v8)
        {
          return result;
        }
      }

    case 14:
      v72 = 2 * v41;
      while (1)
      {
        v73 = v21;
        do
        {
          if (*v46)
          {
            v74 = *(v35 + 4 * *v46);
            if (v74 >= 0x10000)
            {
              v75 = v74 >> 16;
              if (v3)
              {
                if (*v40)
                {
                  v76 = __rev16(*v40);
                  goto LABEL_89;
                }

LABEL_97:
                v44->i16[0] = bswap32(v74) >> 16;
                v82 = v40;
              }

              else
              {
                v76 = 0xFFFF;
LABEL_89:
                v77 = bswap32(v44->u16[0]) >> 16;
                v78 = (v77 ^ 0xFFFF) * *(v35 + 4 * *v46) - v77 + (v77 << 16);
                if (v78 <= 0xFFFE8000)
                {
                  v79 = v78 + 0x8000;
                }

                else
                {
                  v79 = 4294868992;
                }

                v80 = v79 + (v79 >> 16);
                if (v3)
                {
                  v74 = v80 >> 16;
                  v81 = 0xFFFF * (v75 + v76) - v75 * v76;
                  if (v81 <= 4294868992)
                  {
                    v75 = v81 + 0x8000;
                  }

                  else
                  {
                    v75 = 4294868992;
                  }

                  LODWORD(v74) = ((v75 >> 16) + v75) & 0xFFFF0000 | v74;
                  LODWORD(v75) = WORD1(v74);
                  goto LABEL_97;
                }

                v75 = v80 >> 16;
                v82 = v44;
              }

              v82->i16[0] = bswap32(v75) >> 16;
            }
          }

          ++v46;
          v44 = (v44 + 2);
          v40 = (v40 + v72);
          --v73;
        }

        while (v73);
        v46 += v47;
        v44 = (v44 + 2 * v48);
        v40 += v372;
        if (!--v8)
        {
          return result;
        }
      }

    case 15:
      v132 = 2 * v41;
      while (1)
      {
        v133 = v21;
        do
        {
          if (*v46)
          {
            result = *(v35 + 4 * *v46);
            if (result >= 0x10000)
            {
              v134 = WORD1(result);
              if (v3)
              {
                if (*v40)
                {
                  v135 = __rev16(*v40);
                  goto LABEL_198;
                }

LABEL_200:
                v44->i16[0] = bswap32(result) >> 16;
                v136 = v40;
              }

              else
              {
                v135 = 0xFFFF;
LABEL_198:
                result = PDAoverlayPDA_8994(bswap32(v44->u16[0]) >> 16, v135, *(v35 + 4 * *v46), v134);
                if (v3)
                {
                  v134 = WORD1(result);
                  goto LABEL_200;
                }

                v134 = result;
                v136 = v44;
              }

              v136->i16[0] = bswap32(v134) >> 16;
            }
          }

          ++v46;
          v44 = (v44 + 2);
          v40 = (v40 + v132);
          --v133;
        }

        while (v133);
        v46 += v49;
        v44 = (v44 + 2 * v371);
        v40 += v372;
        if (!--v8)
        {
          return result;
        }
      }

    case 16:
      v67 = 2 * v41;
      while (1)
      {
        v68 = v21;
        do
        {
          if (*v46)
          {
            result = *(v35 + 4 * *v46);
            if (result >= 0x10000)
            {
              v69 = WORD1(result);
              if (v3)
              {
                if (*v40)
                {
                  v70 = __rev16(*v40);
                  goto LABEL_73;
                }

LABEL_75:
                v44->i16[0] = bswap32(result) >> 16;
                v71 = v40;
              }

              else
              {
                v70 = 0xFFFF;
LABEL_73:
                result = PDAdarkenPDA_8996(bswap32(v44->u16[0]) >> 16, v70, *(v35 + 4 * *v46), v69);
                if (v3)
                {
                  v69 = WORD1(result);
                  goto LABEL_75;
                }

                v69 = result;
                v71 = v44;
              }

              v71->i16[0] = bswap32(v69) >> 16;
            }
          }

          ++v46;
          v44 = (v44 + 2);
          v40 = (v40 + v67);
          --v68;
        }

        while (v68);
        v46 += v49;
        v44 = (v44 + 2 * v371);
        v40 += v372;
        if (!--v8)
        {
          return result;
        }
      }

    case 17:
      v173 = 2 * v41;
      while (1)
      {
        v174 = v21;
        do
        {
          if (*v46)
          {
            result = *(v35 + 4 * *v46);
            if (result >= 0x10000)
            {
              v175 = WORD1(result);
              if (v3)
              {
                if (*v40)
                {
                  v176 = __rev16(*v40);
                  goto LABEL_258;
                }

LABEL_260:
                v44->i16[0] = bswap32(result) >> 16;
                v177 = v40;
              }

              else
              {
                v176 = 0xFFFF;
LABEL_258:
                result = PDAlightenPDA_8995(bswap32(v44->u16[0]) >> 16, v176, *(v35 + 4 * *v46), v175);
                if (v3)
                {
                  v175 = WORD1(result);
                  goto LABEL_260;
                }

                v175 = result;
                v177 = v44;
              }

              v177->i16[0] = bswap32(v175) >> 16;
            }
          }

          ++v46;
          v44 = (v44 + 2);
          v40 = (v40 + v173);
          --v174;
        }

        while (v174);
        v46 += v49;
        v44 = (v44 + 2 * v371);
        v40 += v372;
        if (!--v8)
        {
          return result;
        }
      }

    case 18:
      v207 = 2 * v41;
      while (1)
      {
        v208 = v21;
        do
        {
          if (*v46)
          {
            result = *(v35 + 4 * *v46);
            if (result >= 0x10000)
            {
              v209 = WORD1(result);
              if (v3)
              {
                if (*v40)
                {
                  v210 = __rev16(*v40);
                  goto LABEL_339;
                }

LABEL_341:
                v44->i16[0] = bswap32(result) >> 16;
                v211 = v40;
              }

              else
              {
                v210 = 0xFFFF;
LABEL_339:
                result = PDAcolordodgePDA_8997(bswap32(v44->u16[0]) >> 16, v210, *(v35 + 4 * *v46), v209);
                if (v3)
                {
                  v209 = WORD1(result);
                  goto LABEL_341;
                }

                v209 = result;
                v211 = v44;
              }

              v211->i16[0] = bswap32(v209) >> 16;
            }
          }

          ++v46;
          v44 = (v44 + 2);
          v40 = (v40 + v207);
          --v208;
        }

        while (v208);
        v46 += v49;
        v44 = (v44 + 2 * v371);
        v40 += v372;
        if (!--v8)
        {
          return result;
        }
      }

    case 19:
      v234 = 2 * v41;
      while (1)
      {
        v235 = v21;
        do
        {
          if (*v46)
          {
            result = *(v35 + 4 * *v46);
            if (result >= 0x10000)
            {
              v236 = WORD1(result);
              if (v3)
              {
                if (*v40)
                {
                  v237 = __rev16(*v40);
                  goto LABEL_398;
                }

LABEL_400:
                v44->i16[0] = bswap32(result) >> 16;
                v238 = v40;
              }

              else
              {
                v237 = 0xFFFF;
LABEL_398:
                result = PDAcolorburnPDA_8998(bswap32(v44->u16[0]) >> 16, v237, *(v35 + 4 * *v46), v236);
                if (v3)
                {
                  v236 = WORD1(result);
                  goto LABEL_400;
                }

                v236 = result;
                v238 = v44;
              }

              v238->i16[0] = bswap32(v236) >> 16;
            }
          }

          ++v46;
          v44 = (v44 + 2);
          v40 = (v40 + v234);
          --v235;
        }

        while (v235);
        v46 += v49;
        v44 = (v44 + 2 * v371);
        v40 += v372;
        if (!--v8)
        {
          return result;
        }
      }

    case 20:
      v178 = 2 * v41;
      while (1)
      {
        v179 = v21;
        do
        {
          if (*v46)
          {
            result = *(v35 + 4 * *v46);
            if (result >= 0x10000)
            {
              v180 = WORD1(result);
              if (v3)
              {
                if (*v40)
                {
                  v181 = __rev16(*v40);
                  goto LABEL_274;
                }

LABEL_276:
                v44->i16[0] = bswap32(result) >> 16;
                v182 = v40;
              }

              else
              {
                v181 = 0xFFFF;
LABEL_274:
                result = PDAsoftlightPDA_9000(bswap32(v44->u16[0]) >> 16, v181, *(v35 + 4 * *v46), v180);
                if (v3)
                {
                  v180 = WORD1(result);
                  goto LABEL_276;
                }

                v180 = result;
                v182 = v44;
              }

              v182->i16[0] = bswap32(v180) >> 16;
            }
          }

          ++v46;
          v44 = (v44 + 2);
          v40 = (v40 + v178);
          --v179;
        }

        while (v179);
        v46 += v49;
        v44 = (v44 + 2 * v371);
        v40 += v372;
        if (!--v8)
        {
          return result;
        }
      }

    case 21:
      v189 = 2 * v41;
      while (1)
      {
        v190 = v21;
        do
        {
          if (*v46)
          {
            result = *(v35 + 4 * *v46);
            if (result >= 0x10000)
            {
              v191 = WORD1(result);
              if (v3)
              {
                if (*v40)
                {
                  v192 = __rev16(*v40);
                  goto LABEL_297;
                }

LABEL_299:
                v44->i16[0] = bswap32(result) >> 16;
                v193 = v40;
              }

              else
              {
                v192 = 0xFFFF;
LABEL_297:
                result = PDAhardlightPDA_8999(bswap32(v44->u16[0]) >> 16, v192, *(v35 + 4 * *v46), v191);
                if (v3)
                {
                  v191 = WORD1(result);
                  goto LABEL_299;
                }

                v191 = result;
                v193 = v44;
              }

              v193->i16[0] = bswap32(v191) >> 16;
            }
          }

          ++v46;
          v44 = (v44 + 2);
          v40 = (v40 + v189);
          --v190;
        }

        while (v190);
        v46 += v49;
        v44 = (v44 + 2 * v371);
        v40 += v372;
        if (!--v8)
        {
          return result;
        }
      }

    case 22:
      v229 = 2 * v41;
      while (1)
      {
        v230 = v21;
        do
        {
          if (*v46)
          {
            result = *(v35 + 4 * *v46);
            if (result >= 0x10000)
            {
              v231 = WORD1(result);
              if (v3)
              {
                if (*v40)
                {
                  v232 = __rev16(*v40);
                  goto LABEL_382;
                }

LABEL_384:
                v44->i16[0] = bswap32(result) >> 16;
                v233 = v40;
              }

              else
              {
                v232 = 0xFFFF;
LABEL_382:
                result = PDAdifferencePDA_9001(bswap32(v44->u16[0]) >> 16, v232, *(v35 + 4 * *v46), v231);
                if (v3)
                {
                  v231 = WORD1(result);
                  goto LABEL_384;
                }

                v231 = result;
                v233 = v44;
              }

              v233->i16[0] = bswap32(v231) >> 16;
            }
          }

          ++v46;
          v44 = (v44 + 2);
          v40 = (v40 + v229);
          --v230;
        }

        while (v230);
        v46 += v49;
        v44 = (v44 + 2 * v371);
        v40 += v372;
        if (!--v8)
        {
          return result;
        }
      }

    case 23:
      v239 = 2 * v41;
      while (1)
      {
        v240 = v21;
        do
        {
          if (*v46)
          {
            v241 = *(v35 + 4 * *v46);
            if (v241 >= 0x10000)
            {
              v242 = v241 >> 16;
              if (v3)
              {
                if (*v40)
                {
                  v243 = __rev16(*v40);
                  goto LABEL_414;
                }

LABEL_428:
                v44->i16[0] = bswap32(v241) >> 16;
                v250 = v40;
              }

              else
              {
                v243 = 0xFFFF;
LABEL_414:
                LODWORD(v244) = bswap32(v44->u16[0]) >> 16;
                if (*(v35 + 4 * *v46) >= v242)
                {
                  v245 = v242;
                }

                else
                {
                  v245 = *(v35 + 4 * *v46);
                }

                if (v244 >= v243)
                {
                  v244 = v243;
                }

                else
                {
                  v244 = v244;
                }

                v246 = 0xFFFF * (v244 + v245) - 2 * v245 * v244;
                if (v246 <= 4294868992)
                {
                  v247 = v246 + 0x8000;
                }

                else
                {
                  v247 = 4294868992;
                }

                v248 = v247 + (v247 >> 16);
                if (v3)
                {
                  v241 = v248 >> 16;
                  v249 = 0xFFFF * (v242 + v243) - v242 * v243;
                  if (v249 <= 4294868992)
                  {
                    v242 = v249 + 0x8000;
                  }

                  else
                  {
                    v242 = 4294868992;
                  }

                  LODWORD(v241) = ((v242 >> 16) + v242) & 0xFFFF0000 | v241;
                  LODWORD(v242) = WORD1(v241);
                  goto LABEL_428;
                }

                v242 = v248 >> 16;
                v250 = v44;
              }

              v250->i16[0] = bswap32(v242) >> 16;
            }
          }

          ++v46;
          v44 = (v44 + 2);
          v40 = (v40 + v239);
          --v240;
        }

        while (v240);
        v46 += v47;
        v44 = (v44 + 2 * v48);
        v40 += v372;
        if (!--v8)
        {
          return result;
        }
      }

    case 24:
      v116 = 2 * v41;
      while (1)
      {
        v117 = v21;
        do
        {
          if (*v46)
          {
            result = *(v35 + 4 * *v46);
            if (result >= 0x10000)
            {
              v118 = WORD1(result);
              if (v3)
              {
                if (*v40)
                {
                  v119 = __rev16(*v40);
                  goto LABEL_168;
                }

LABEL_170:
                v44->i16[0] = bswap32(result) >> 16;
                v120 = v40;
              }

              else
              {
                v119 = 0xFFFF;
LABEL_168:
                result = PDAhuePDA_9002(bswap32(v44->u16[0]) >> 16, v119, *(v35 + 4 * *v46), v118);
                if (v3)
                {
                  v118 = WORD1(result);
                  goto LABEL_170;
                }

                v118 = result;
                v120 = v44;
              }

              v120->i16[0] = bswap32(v118) >> 16;
            }
          }

          ++v46;
          v44 = (v44 + 2);
          v40 = (v40 + v116);
          --v117;
        }

        while (v117);
        v46 += v49;
        v44 = (v44 + 2 * v371);
        v40 += v372;
        if (!--v8)
        {
          return result;
        }
      }

    case 25:
      v111 = 2 * v41;
      while (1)
      {
        v112 = v21;
        do
        {
          if (*v46)
          {
            result = *(v35 + 4 * *v46);
            if (result >= 0x10000)
            {
              v113 = WORD1(result);
              if (v3)
              {
                if (*v40)
                {
                  v114 = __rev16(*v40);
                  goto LABEL_152;
                }

LABEL_154:
                v44->i16[0] = bswap32(result) >> 16;
                v115 = v40;
              }

              else
              {
                v114 = 0xFFFF;
LABEL_152:
                result = PDAhuePDA_9002(bswap32(v44->u16[0]) >> 16, v114, *(v35 + 4 * *v46), v113);
                if (v3)
                {
                  v113 = WORD1(result);
                  goto LABEL_154;
                }

                v113 = result;
                v115 = v44;
              }

              v115->i16[0] = bswap32(v113) >> 16;
            }
          }

          ++v46;
          v44 = (v44 + 2);
          v40 = (v40 + v111);
          --v112;
        }

        while (v112);
        v46 += v49;
        v44 = (v44 + 2 * v371);
        v40 += v372;
        if (!--v8)
        {
          return result;
        }
      }

    case 26:
      v251 = 2 * v41;
      while (1)
      {
        v252 = v21;
        do
        {
          if (*v46)
          {
            result = *(v35 + 4 * *v46);
            if (result >= 0x10000)
            {
              v253 = WORD1(result);
              if (v3)
              {
                if (*v40)
                {
                  v254 = __rev16(*v40);
                  goto LABEL_442;
                }

LABEL_444:
                v44->i16[0] = bswap32(result) >> 16;
                v255 = v40;
              }

              else
              {
                v254 = 0xFFFF;
LABEL_442:
                result = PDAluminosityPDA_9004(*(v35 + 4 * *v46), v253, bswap32(v44->u16[0]) >> 16, v254);
                if (v3)
                {
                  v253 = WORD1(result);
                  goto LABEL_444;
                }

                v253 = result;
                v255 = v44;
              }

              v255->i16[0] = bswap32(v253) >> 16;
            }
          }

          ++v46;
          v44 = (v44 + 2);
          v40 = (v40 + v251);
          --v252;
        }

        while (v252);
        v46 += v49;
        v44 = (v44 + 2 * v371);
        v40 += v372;
        if (!--v8)
        {
          return result;
        }
      }

    case 27:
      v62 = 2 * v41;
      break;
    default:
      return result;
  }

LABEL_50:
  v63 = v21;
  while (1)
  {
    if (!*v46)
    {
      goto LABEL_62;
    }

    result = *(v35 + 4 * *v46);
    if (result < 0x10000)
    {
      goto LABEL_62;
    }

    v64 = WORD1(result);
    if (v3)
    {
      if (!*v40)
      {
        goto LABEL_59;
      }

      v65 = __rev16(*v40);
    }

    else
    {
      v65 = 0xFFFF;
    }

    result = PDAluminosityPDA_9004(bswap32(v44->u16[0]) >> 16, v65, *(v35 + 4 * *v46), v64);
    if (!v3)
    {
      v64 = result;
      v66 = v44;
      goto LABEL_61;
    }

    v64 = WORD1(result);
LABEL_59:
    v44->i16[0] = bswap32(result) >> 16;
    v66 = v40;
LABEL_61:
    v66->i16[0] = bswap32(v64) >> 16;
LABEL_62:
    ++v46;
    v44 = (v44 + 2);
    v40 = (v40 + v62);
    if (!--v63)
    {
      v46 += v49;
      v44 = (v44 + 2 * v371);
      v40 += v372;
      if (!--v8)
      {
        return result;
      }

      goto LABEL_50;
    }
  }
}