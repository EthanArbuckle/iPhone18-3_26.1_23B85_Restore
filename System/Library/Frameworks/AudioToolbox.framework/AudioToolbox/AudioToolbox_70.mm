char *ddp_udc_int_udc_uitoa(char *result, unint64_t a2, unsigned int a3)
{
  v3 = 0;
  while (1)
  {
    v4 = &result[v3];
    if (&result[v3] >= a2 || v4 < result)
    {
      break;
    }

    ++v3;
    *v4 = (a3 % 0xA) | 0x30;
    v6 = a3 > 9;
    a3 /= 0xAu;
    if (!v6)
    {
      v7 = &result[v3];
      if (v7 < a2 && v7 >= result)
      {
        *v7 = 0;
        v8 = v7 - 1;
        if (v8 <= result)
        {
          return result;
        }

        v9 = result;
        while (v8 < a2 && v8 >= result && v9 >= result)
        {
          v10 = *v8;
          *v8-- = *v9;
          *v9++ = v10;
          if (v8 <= v9)
          {
            return result;
          }
        }
      }

      break;
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t ddp_udc_int_setsnroffst(unint64_t result, int a2, int a3, __int16 a4, unsigned int a5, unint64_t a6)
{
  if (result <= a2)
  {
    v6 = a2;
    v7 = a6 + 5192 * a2;
    v8 = (a5 >> 4) & 0x3F;
    v9 = a5 & 0xF;
    v10 = result;
    v11 = a6 + 5192 * result + 408;
    v12 = result;
    while (1)
    {
      result = a6 + 5192 * v12;
      v13 = result + 5192;
      v14 = result < a6 || v13 > v7;
      if (v14 || result > v13)
      {
        break;
      }

      if (v12 == v10)
      {
        v16 = a4;
      }

      else
      {
        v16 = 0;
      }

      *(result + 2346) = v16;
      *(result + 2360) = v8;
      if (a3 >= 1)
      {
        v17 = result + 408;
        result += 2280;
        v18 = v11;
        v19 = a3;
        while (v18 >= v17 && v18 + 312 <= result && v18 <= v18 + 312)
        {
          *(v18 + 98) = v9;
          v18 += 312;
          if (!--v19)
          {
            goto LABEL_19;
          }
        }

        break;
      }

LABEL_19:
      v11 += 5192;
      if (v12++ == v6)
      {
        return result;
      }
    }

    __break(0x5519u);
  }

  return result;
}

uint64_t ddp_udc_int_extract_frm_mdat(uint64_t result, int *a2)
{
  v2 = *a2;
  v3 = a2[6];
  *result = v3 != -1;
  *(result + 4) = v3;
  *(result + 8) = v2;
  *(result + 12) = 0;
  if ((v3 | 2) == 2)
  {
    v4 = *(a2 + 17);
    *(result + 16) = *(a2 + 16);
    *(result + 20) = v4;
    *(result + 24) = vmovl_s16(*(a2 + 42));
    v5 = *(a2 + 19);
    v6 = *(a2 + 20);
    v7 = *(a2 + 14);
    *(result + 40) = v5;
    *(result + 44) = v6;
    v8 = *(a2 + 25);
    *(result + 48) = v7;
    *(result + 52) = v8;
    *(result + 56) = *(a2 + 26);
    if (v5)
    {
      v9 = -1;
    }

    else
    {
      v9 = *(a2 + 27);
    }

    v10 = *(a2 + 28);
    *(result + 60) = v9;
    *(result + 64) = v10;
    *(result + 12) = 1;
  }

  return result;
}

_DWORD *derive_kbps(_DWORD *result)
{
  v1 = result[7] != 3 || (result[12] - 11) >= 6;
  v2 = result[8] + 3;
  if (v1)
  {
    v2 = result[7];
  }

  v3 = &ddp_udc_int_bps_mltplr_tbl + 16 * v2;
  v4 = &v3[4 * result[9]];
  v5 = (v4 + 4);
  if (v4 >= v3 && v5 <= (v3 + 16) && v4 < v5)
  {
    return ((*v4 * result[6] / 0x30u + 500) / 0x3E8uLL);
  }

  __break(0x5519u);
  return result;
}

unint64_t ddp_udc_int_derive_process_mdat(unint64_t result, uint64_t a2, int a3)
{
  v5 = result;
  v43 = -1431655766;
  v42 = 0xAAAAAAAAAAAAAAAALL;
  v6 = *(result + 23488);
  if (*result)
  {
    v7 = *result > *(result + 4);
    v8 = *(result + 28) < 7;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = *(result + 23496);
  v44 = -1431655766;
  if (*(a2 + 264))
  {
    result = ddp_udc_int_ddpi_fmi_getframeparam(*(v6 + 8), *(v6 + 16), 12, &v42, &v44, &v44);
    if (!result)
    {
      *(a2 + 260) = 1;
      v10 = *(a2 + 264);
      v11 = HIWORD(v43);
      v10[1].i32[0] = v43;
      v10[1].i32[1] = v11;
      *v10 = vmovl_u16(v42);
    }
  }

  v12 = *(a2 + 280);
  if (v7)
  {
    if (!a3 || !v12)
    {
      goto LABEL_24;
    }

    if (v9)
    {
      v13 = *(v9 + 28);
      *(v12 + 76) = 0u;
      v12[3] = 0u;
      v12[4] = 0u;
      v12[1] = 0u;
      v12[2] = 0u;
      *v12 = 0u;
      if (v12 >= (v12 + 92))
      {
        goto LABEL_45;
      }

      if ((v13 - 11) <= 5)
      {
        *&v40[30] = 0xAAAAAAAAAAAAAAAALL;
        *&v14 = 0xAAAAAAAAAAAAAAAALL;
        *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v40 = v14;
        *&v40[16] = v14;
        v39 = v14;
        if (v9 >= v9 + 72)
        {
          goto LABEL_45;
        }

        v15 = *(v9 + 8);
        v16 = *(v9 + 16);
        v17 = (v9 + 24);
        goto LABEL_20;
      }
    }

    else
    {
      *(v12 + 76) = 0u;
      v12[3] = 0u;
      v12[4] = 0u;
      v12[1] = 0u;
      v12[2] = 0u;
      *v12 = 0u;
      if (v12 >= (v12 + 92))
      {
        goto LABEL_45;
      }
    }

LABEL_23:
    *(a2 + 272) = 1;
    v21 = *(a2 + 280);
    *v21 = 0x3300000033;
    *(v21 + 8) = 51;
    *(v21 + 12) = xmmword_19B0B1F60;
    *&v22 = -1;
    *(&v22 + 1) = -1;
    *(v21 + 28) = v22;
    *(v21 + 44) = v22;
    *(v21 + 72) = 0;
    *(v21 + 64) = 0;
    *(v21 + 60) = 0;
    goto LABEL_24;
  }

  if (v12 == 0 || !v8)
  {
    goto LABEL_24;
  }

  *(v12 + 76) = 0u;
  v12[3] = 0u;
  v12[4] = 0u;
  v12[1] = 0u;
  v12[2] = 0u;
  *v12 = 0u;
  if (v12 >= (v12 + 92))
  {
    goto LABEL_45;
  }

  if (*(v6 + 28) - 11 > 5)
  {
    goto LABEL_23;
  }

  *&v40[30] = 0xAAAAAAAAAAAAAAAALL;
  *&v18 = 0xAAAAAAAAAAAAAAAALL;
  *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v40 = v18;
  *&v40[16] = v18;
  v39 = v18;
  if (v6 >= v6 + 72)
  {
    goto LABEL_45;
  }

  v15 = *(v6 + 8);
  v16 = *(v6 + 16);
  v17 = (v6 + 24);
LABEL_20:
  result = ddp_udc_int_ddpi_fmi_getframeparam(v15, v16, 1, &v39, &v41, v17);
  if (!result)
  {
    *(a2 + 272) = 1;
    v19 = *(a2 + 280);
    *v19 = SHIWORD(v39);
    *(v19 + 4) = *v40;
    *(v19 + 8) = *&v40[2];
    *(v19 + 12) = vmovl_s16(*&v40[14]);
    *(v19 + 28) = vmovl_s16(*&v40[22]);
    *(v19 + 44) = vmovl_s16(*&v40[30]);
    v20 = vmovl_s16(*&v40[4]);
    *(v19 + 60) = vextq_s8(v20, v20, 8uLL);
  }

LABEL_24:
  v23 = 0;
  v24 = a2 + 296;
  v25 = v5 + 30664;
  v26 = v5 + 30904;
  for (i = 1; ; i = 0)
  {
    v28 = i;
    v29 = (v24 + 8 * v23);
    if ((v29 + 1) > a2 + 312 || v29 >= v29 + 1)
    {
      break;
    }

    v31 = *v29;
    if (v31)
    {
      v32 = (a2 + 288 + 4 * v23);
      result = (v32 + 1);
      if ((v32 + 1) > v24 || v32 > result)
      {
        break;
      }

      v33 = v25 + 120 * v23;
      if (v33)
      {
        if (*v32)
        {
          if (v25 > v33)
          {
            break;
          }

          if (v33 + 120 > v26)
          {
            break;
          }

          *(v31 + 4) = *(v33 + 12);
          result = *(v33 + 28);
          *(v31 + 8) = result;
          if (v33 > v33 + 120)
          {
            break;
          }

          v34 = *(v33 + 48);
          *(v31 + 28) = *(v33 + 64);
          *(v31 + 12) = v34;
          result = v31 + 44;
          if (v31 + 12 > (v31 + 44))
          {
            break;
          }
        }

        if (v25 > v33)
        {
          break;
        }

        if (v33 + 120 > v26)
        {
          break;
        }

        result = *(v33 + 16);
        *v31 = result;
        if (v33 > v33 + 120)
        {
          break;
        }

        v35 = v31 + 44;
        v36 = *(v33 + 80);
        v37 = *(v33 + 96);
        result = *(v33 + 112);
        *(v31 + 76) = result;
        *(v31 + 60) = v37;
        *(v31 + 44) = v36;
        v38 = (v31 + 80);
        if (v35 > v38)
        {
          break;
        }

        *v38 = *(v33 + 116);
      }
    }

    v23 = 1;
    if ((v28 & 1) == 0)
    {
      return result;
    }
  }

LABEL_45:
  __break(0x5519u);
  return result;
}

unint64_t ddp_udc_int_process_evolution_data(unint64_t result, uint64_t a2, int a3)
{
  v3 = *(result + 1884);
  if (v3 == 1)
  {
    return result;
  }

  v6 = result;
  if (!*(a2 + 312))
  {
    if ((v3 | 2) == 2)
    {
      result = *(result + 23488);
      if (result >= result + 72)
      {
        goto LABEL_103;
      }

      v7 = *(v6 + 30472);
      if (v7)
      {
        if (v7 >= v7 + 44208 || v7 + 44208 > *(v6 + 30480) || v7 < *(v6 + 30488))
        {
          goto LABEL_103;
        }
      }

      remove_joc_payload(result, 0, v7, *(v6 + 1008));
    }

    result = *(v6 + 30472);
    if (result)
    {
      v8 = result >= result + 44208 || result + 44208 > *(v6 + 30480);
      if (v8 || result < *(v6 + 30488))
      {
        goto LABEL_103;
      }
    }

    v10 = *(a2 + 40);
    if (v10)
    {
      if (v10 >= v10 + 48 || (v10 + 48) > *(a2 + 48) || v10 < *(a2 + 56))
      {
        goto LABEL_103;
      }
    }

    output = ddp_udc_int_evod_generate_output(result, v10, *(v6 + 1900), *(v6 + 1004), *(v6 + 24400), 0);
    if (output == 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    if (!output)
    {
      v12 = 0;
    }

    *(a2 + 312) = v12;
  }

  result = *(v6 + 30472);
  if (result)
  {
    if (result >= result + 44208 || result + 44208 > *(v6 + 30480) || result < *(v6 + 30488))
    {
      goto LABEL_103;
    }

    ddp_udc_int_evod_do_posts(result);
  }

  if (!*(a2 + 316))
  {
    if ((*(v6 + 1884) | 2) == 2)
    {
      result = *(v6 + 23488);
      if (result >= result + 72)
      {
        goto LABEL_103;
      }

      v15 = *(v6 + 30496);
      if (v15)
      {
        if (v15 >= v15 + 44208 || v15 + 44208 > *(v6 + 30504) || v15 < *(v6 + 30512))
        {
          goto LABEL_103;
        }
      }

      remove_joc_payload(result, result + 72, v15, *(v6 + 1008));
    }

    result = *(v6 + 30496);
    if (result && (result >= result + 44208 || result + 44208 > *(v6 + 30504) || result < *(v6 + 30512)))
    {
      goto LABEL_103;
    }

    v16 = *(a2 + 40);
    if (v16)
    {
      if (v16 >= v16 + 48 || (v16 + 48) > *(a2 + 48) || v16 < *(a2 + 56))
      {
        goto LABEL_103;
      }
    }

    v17 = ddp_udc_int_evod_generate_output(result, v16, *(v6 + 1900), *(v6 + 1004), *(v6 + 24512), 0);
    if (v17 == 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    if (!v17)
    {
      v18 = 0;
    }

    *(a2 + 316) = v18;
  }

  result = *(v6 + 30496);
  if (result)
  {
    if (result >= result + 44208 || result + 44208 > *(v6 + 30504) || result < *(v6 + 30512))
    {
      goto LABEL_103;
    }

    result = ddp_udc_int_evod_do_posts(result);
  }

  if (!a3)
  {
    return result;
  }

  if (!*(a2 + 320))
  {
    if ((*(v6 + 1884) | 2) == 2)
    {
      result = *(v6 + 23496);
      if (result >= result + 72)
      {
        goto LABEL_103;
      }

      v19 = *(v6 + 30520);
      if (v19)
      {
        if (v19 >= v19 + 44208 || v19 + 44208 > *(v6 + 30528) || v19 < *(v6 + 30536))
        {
          goto LABEL_103;
        }
      }

      v20 = (v6 + 1008 + 2 * *(v6 + 4));
      if (v20 < v6 + 1008 || (v20 + 1) > v6 + 1024 || v20 > v20 + 1)
      {
        goto LABEL_103;
      }

      remove_joc_payload(result, 0, v19, *v20);
    }

    result = *(v6 + 30520);
    if (result && (result >= result + 44208 || result + 44208 > *(v6 + 30528) || result < *(v6 + 30536)) || (v21 = *(a2 + 40)) != 0 && (v21 >= v21 + 48 || (v21 + 48) > *(a2 + 48) || v21 < *(a2 + 56)) || (v22 = (v6 + 1900 + 2 * *(v6 + 4)), v22 < v6 + 1900) || (v22 + 1) > v6 + 1916 || v22 > v22 + 1)
    {
LABEL_103:
      __break(0x5519u);
      return result;
    }

    v23 = ddp_udc_int_evod_generate_output(result, v21, *v22, *(v6 + 1004), *(v6 + 24504), 1);
    if (v23 == 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = 2;
    }

    if (!v23)
    {
      v24 = 0;
    }

    *(a2 + 320) = v24;
  }

  result = *(v6 + 30520);
  if (!result)
  {
    return result;
  }

  if (result >= result + 44208 || result + 44208 > *(v6 + 30528) || result < *(v6 + 30536))
  {
    goto LABEL_103;
  }

  return ddp_udc_int_evod_do_posts(result);
}

uint64_t remove_joc_payload(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (a2 && (v5 = *(a2 + 8)) != 0)
  {
    v6 = *(v5 + 222);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(result + 8);
  v8 = *(v7 + 40);
  if (v8 == 7 && v6 == 0)
  {
    v14 = a4 > 6 && (a4 - 15) < 0xFFFFFFFE && a4 != 16;
    if (a4 == -1 || v14)
    {
      return result;
    }

    goto LABEL_37;
  }

  if (v8 == 7 && v6 == 40976)
  {
    if (a4 == -1 || a4 == 19)
    {
      return result;
    }
  }

  else if (v8 == 7 && v6 == 6656)
  {
    if (a4 == -1 || a4 == 21)
    {
      return result;
    }
  }

  else if (!v6)
  {
    goto LABEL_37;
  }

  v7 = *(a2 + 8);
LABEL_37:
  if (*(v7 + 142) && (*(v7 + 146) & 3) == 1)
  {
    ddp_udc_int_evod_remove_md_from_evo_frame_by_id(*(a3 + 72), 0xEu);
    v15 = *(a3 + 72);

    return ddp_udc_int_evod_remove_md_from_evo_frame_by_id(v15, 0xBu);
  }

  return result;
}

uint64_t ddp_udc_int_intloud_open(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (!result || !a2)
  {
    return 1;
  }

  *(result + 8) = 0;
  *(result + 16) = xmmword_19B0B1F60;
  *result = 0x2000000000;
  if (result + 80 <= (result + 116))
  {
    *&v3 = 0x100000001;
    *(&v3 + 1) = 0x100000001;
    *(result + 80) = xmmword_19B0B2E90;
    *(result + 96) = v3;
    *(result + 112) = -512;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 32) = a2;
    *(result + 40) = a3;
    v4 = a2 + a3;
    v5 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (a2 - v5 + a3 <= a2 + a3 - v5 && v5 <= v4 && v5 >= a2)
    {
      if (!v5)
      {
        return 0;
      }

      if (v5 + 64 <= v4)
      {
        result = 0;
        *v5 = xmmword_19B0B2EA0;
        *(v5 + 16) = xmmword_19B0B2EB0;
        *&v6 = 0x300000003;
        *(&v6 + 1) = 0x300000003;
        *(v5 + 32) = v6;
        *(v5 + 52) = -1;
        *(v5 + 60) = -1;
        return result;
      }
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t ddp_udc_int_intloud_dec_process(uint64_t result, int a2, int a3, int a4, void *a5, void *a6, uint64_t a7, _DWORD *a8)
{
  v8 = xmmword_19B0B2E90;
  v9.i64[0] = 0x100000001;
  v9.i64[1] = 0x100000001;
  v87 = xmmword_19B0B2E90;
  v88 = v9;
  v89 = -512;
  if (a5 && a7 && a8)
  {
    v13 = -1;
    *(a7 + 24) = 0;
    *(a7 + 28) = -1;
    *(a7 + 20) = 0;
    *a7 = 0x2000000000;
    *(a7 + 8) = result;
    *(a7 + 12) = 0;
    *(a7 + 48) = 0u;
    *(a7 + 64) = 0u;
    if (a2 != 1 && a3 != 1)
    {
      goto LABEL_143;
    }

    if (result == 1)
    {
      if (a2 == 1)
      {
        v14 = a5[3];
        if (v14)
        {
          v15 = 0;
          do
          {
            v16 = (a5[4] + 8 * v15);
            v17 = (v16 + 1) > a5[5] || v16 > v16 + 1;
            if (v17 || v16 < a5[6])
            {
              goto LABEL_206;
            }

            if (**v16 == 1)
            {
              v19 = v14 - 1;
              if (v15 < v14 - 1)
              {
                v20 = 8 * v15;
                v21 = ~v15 + v14;
                do
                {
                  v22 = a5[5];
                  v23 = a5[6];
                  v24 = (a5[4] + v20);
                  v25 = v24 + 1;
                  v26 = (v24 + 2) > v22 || v25 > v24 + 2;
                  v27 = !v26 && v25 >= v23;
                  v28 = !v27 || v25 > v22;
                  v29 = v28 || v24 > v25;
                  if (v29 || v24 < v23)
                  {
                    goto LABEL_206;
                  }

                  *v24 = *v25;
                  v20 += 8;
                }

                while (--v21);
              }

              --v15;
              v14 = v19;
            }
          }

          while (++v15 < v14);
        }

        a5[3] = v14;
      }

      v13 = -1;
      if (a3 != 1 || a4)
      {
        goto LABEL_143;
      }

      v31 = a6[3];
      if (v31)
      {
        v32 = 0;
        do
        {
          v33 = (a6[4] + 8 * v32);
          v34 = (v33 + 1) > a6[5] || v33 > v33 + 1;
          if (v34 || v33 < a6[6])
          {
            goto LABEL_206;
          }

          if (**v33 == 1)
          {
            v36 = v31 - 1;
            if (v32 < v31 - 1)
            {
              v37 = 8 * v32;
              v38 = ~v32 + v31;
              do
              {
                v39 = a6[5];
                v40 = a6[6];
                v41 = (a6[4] + v37);
                v42 = v41 + 1;
                v43 = (v41 + 2) > v39 || v42 > v41 + 2;
                v44 = !v43 && v42 >= v40;
                v45 = !v44 || v42 > v39;
                v46 = v45 || v41 > v42;
                if (v46 || v41 < v40)
                {
                  goto LABEL_206;
                }

                *v41 = *v42;
                v37 += 8;
              }

              while (--v38);
            }

            --v32;
            v31 = v36;
          }
        }

        while (++v32 < v31);
      }

      a6[3] = v31;
      goto LABEL_142;
    }

    v48 = 0;
    v49 = 0;
    v50 = 33;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    if (a3 == 1 && !a4)
    {
      v55 = a6[3];
      if (v55)
      {
        v54 = 0;
        v53 = 0;
        v48 = 0;
        v52 = 0;
        v51 = 0;
        v49 = 0;
        v56 = a6[4];
        while (1)
        {
          v57 = (v56 + 1) > a6[5] || v56 > v56 + 1;
          if (v57 || v56 < a6[6])
          {
            goto LABEL_206;
          }

          v59 = *v56;
          if (**v56 == 1)
          {
            v60 = *(v59 + 2);
            if ((v60 & 1) == 0 && ((v60 & 8) != 0 || *(v59 + 20)))
            {
              v61 = *(v59 + 12);
              v48 = 1;
            }

            else
            {
              v61 = 32;
            }

            if (v61 < v50)
            {
              v49 = *v56;
              v51 = *v56 + 104;
              v52 = *v56;
              v50 = v61;
              v53 = v48;
            }

            v54 = 1;
            if (!v50)
            {
              goto LABEL_126;
            }
          }

          ++v56;
          if (!--v55)
          {
            goto LABEL_102;
          }
        }
      }

      v49 = 0;
      v51 = 0;
      v52 = 0;
      v48 = 0;
      v53 = 0;
      v54 = 0;
    }

LABEL_102:
    v62 = 0;
    if (a2 == 1 && v54 != 1)
    {
      v63 = a5[3];
      if (v63)
      {
        v62 = 0;
        v64 = a5[4];
        while (1)
        {
          v65 = (v64 + 1) > a5[5] || v64 > v64 + 1;
          if (v65 || v64 < a5[6])
          {
            goto LABEL_206;
          }

          v67 = *v64;
          if (**v64 != 1)
          {
            goto LABEL_209;
          }

          v68 = *(v67 + 2);
          if ((v68 & 1) == 0 && ((v68 & 8) != 0 || *(v67 + 20)))
          {
            v69 = *(v67 + 12);
            v48 = 1;
          }

          else
          {
            v69 = 32;
          }

          if (v69 < v50)
          {
            v49 = *v64;
            v51 = *v64 + 104;
            v52 = *v64;
            v50 = v69;
            v53 = v48;
          }

          v62 = 1;
          if (v50)
          {
LABEL_209:
            ++v64;
            if (--v63)
            {
              continue;
            }
          }

          v54 = 0;
          goto LABEL_127;
        }
      }

      v54 = 0;
LABEL_126:
      v62 = 0;
    }

LABEL_127:
    *(a7 + 20) = (v62 | v54) != 0;
    if (!(v62 | v54))
    {
      goto LABEL_142;
    }

    if (*(a7 + 40) < 0x47uLL)
    {
      goto LABEL_206;
    }

    v70 = *(a7 + 32);
    *(a7 + 40) = 71;
    if (!v52)
    {
      goto LABEL_142;
    }

    if (v52 + 104 > v51 || v52 > v52 + 104 || v52 < v49)
    {
      goto LABEL_206;
    }

    if (!v70 || *v52 != 1)
    {
LABEL_142:
      v13 = -1;
      goto LABEL_143;
    }

    v71.i64[0] = 0x100000001;
    v71.i64[1] = 0x100000001;
    v88 = v71;
    v72 = (v70 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v72)
    {
      if (v72 >= v70 + 71)
      {
        goto LABEL_206;
      }

      if (v72 < v70)
      {
        goto LABEL_206;
      }

      *(v72 + 48) = 63487;
      if (v72 + 64 > v70 + 71 || v72 > v72 + 64)
      {
        goto LABEL_206;
      }
    }

    result = ddp_udc_int_dil_unpack(v52, &v87, v72);
    v73 = DWORD1(v87);
    v8 = xmmword_19B0B2E90;
    if (result || DWORD1(v87) == -1)
    {
LABEL_141:
      v13 = v73;
LABEL_143:
      v74 = v87;
      v76 = DWORD2(v87);
      v75 = HIDWORD(v87);
      v73 = v13;
      v77 = v89;
      goto LABEL_144;
    }

    if (DWORD1(v87))
    {
      v75 = HIDWORD(v87);
      if (HIDWORD(v87) > 0xFFFFFFFD)
      {
        goto LABEL_141;
      }

      v76 = DWORD2(v87);
      if (DWORD2(v87) > 0xFFFFFFFD)
      {
        goto LABEL_141;
      }
    }

    else
    {
      v13 = 0;
      v75 = HIDWORD(v87);
      if (HIDWORD(v87) < 0xFFFFFFFE)
      {
        goto LABEL_143;
      }

      v76 = DWORD2(v87);
      if (DWORD2(v87) <= 0xFFFFFFFD)
      {
        goto LABEL_143;
      }
    }

    v74 = v87;
    v77 = v89;
    if (v87 == -1)
    {
LABEL_144:
      v78 = *(a7 + 20);
      if (v78 == 1)
      {
        if (*(a7 + 24) == 1)
        {
          if (v74 >= -1)
          {
            *(a7 + 48) = 1;
            *(a7 + 80) = v74;
          }

          v79 = v88.i32[0];
          if (v73 >= 1)
          {
            *(a7 + 84) = v73;
            *(a7 + 88) = v76;
            *(a7 + 52) = 0x100000001;
            *(a7 + 92) = v75;
          }

          v80 = v88.i32[1];
          if (v79 >= -511)
          {
            *(a7 + 60) = 1;
            *(a7 + 96) = v79;
          }

          v81 = v88.i32[2];
          if (v80 >= -511)
          {
            *(a7 + 64) = 1;
            *(a7 + 100) = v80;
          }

          v82 = v88.i32[3];
          if (v81 >= -511)
          {
            *(a7 + 68) = 1;
            *(a7 + 104) = v81;
          }

          if (v82 >= -511)
          {
            *(a7 + 72) = 1;
            *(a7 + 108) = v82;
          }

          if (v77 >= -511)
          {
            *(a7 + 76) = 1;
            *(a7 + 112) = v77;
LABEL_160:
            *(a7 + 12) = 1;
            goto LABEL_182;
          }

          if (v74 > -2 || v73 > 0 || v79 > -512 || v80 > -512 || v81 > -512 || v82 >= -511)
          {
            goto LABEL_160;
          }

LABEL_182:
          *a8 = 2;
          *(a7 + 16) = 1;
          if (*a8 != 1)
          {
            return result;
          }

          goto LABEL_186;
        }

        if (*(a7 + 8) == 1 && *(a7 + 16) == 1)
        {
          *(a7 + 12) = 1;
          if (a7 + 80 <= (a7 + 116))
          {
            *&v84 = 0x100000001;
            *(&v84 + 1) = 0x100000001;
            *(a7 + 80) = v8;
            *(a7 + 96) = v84;
            *(a7 + 112) = -512;
            goto LABEL_181;
          }

LABEL_206:
          __break(0x5519u);
          return result;
        }

        *(a7 + 12) = 0;
      }

      else
      {
        if (*(a7 + 8) == 1)
        {
          if (*(a7 + 16) == 1)
          {
            *(a7 + 12) = 1;
            if (a7 + 80 > (a7 + 116))
            {
              goto LABEL_206;
            }

            *&v83 = 0x100000001;
            *(&v83 + 1) = 0x100000001;
            *(a7 + 80) = v8;
            *(a7 + 96) = v83;
            *(a7 + 112) = -512;
            if (v78)
            {
              goto LABEL_181;
            }
          }

          else
          {
            *(a7 + 12) = 0;
            if (v78)
            {
              goto LABEL_181;
            }
          }

          *a8 = 1;
LABEL_186:
          *(a7 + 16) = 0;
          return result;
        }

        *(a7 + 12) = 0;
        if (!v78)
        {
          *a8 = 0;
          return result;
        }
      }

LABEL_181:
      if (*(a7 + 24) != 1)
      {
        *a8 = 3;
        return result;
      }

      goto LABEL_182;
    }

    v85.i64[0] = 0x300000003;
    v85.i64[1] = 0x300000003;
    if ((vmaxv_u16(vmovn_s32(vceqq_s32(v88, v85))) & 1) != 0 || v89 == -1024)
    {
      goto LABEL_141;
    }

    if (v54)
    {
      v86 = 1;
    }

    else
    {
      if (!v62)
      {
        goto LABEL_203;
      }

      v86 = 2 * (a4 != 0);
    }

    *(a7 + 28) = v86;
LABEL_203:
    *(a7 + 24) = 1;
    *a7 = v53;
    *(a7 + 4) = v50;
    if (*(v52 + 20))
    {
      *(a7 + 116) = *(v52 + 24);
    }

    else
    {
      *(a7 + 116) = 0;
    }

    goto LABEL_141;
  }

  return result;
}

_DWORD *ddp_udc_int_processor_reset(_DWORD *result)
{
  v1 = result;
  v2 = result[1];
  if (v2)
  {
    v3 = 0;
    v4 = 23 * v2;
    v5 = *(result + 6);
    if (v4 <= 1)
    {
      v4 = 1;
    }

    v6 = 4 * v4;
    do
    {
      v7 = *(result + 4);
      v8 = (v7 + 3) > *(result + 5) || v7 > v7 + 3;
      if (v8 || v7 < v5)
      {
        goto LABEL_57;
      }

      v10 = v7[1];
      v11 = v7[2];
      v12 = (*v7 + v3);
      v13 = (v12 + 1) > v10 || v12 > v12 + 1;
      if (v13 || v12 < v11)
      {
        goto LABEL_57;
      }

      *v12 = 0;
      v3 += 4;
    }

    while (v6 != v3);
  }

  if (*result >= 2u)
  {
    v15 = 0;
    v16 = 1;
    while (1)
    {
      v17 = *(v1 + 4);
      v18 = *(v1 + 5);
      v19 = *(v1 + 6);
      v20 = v17 + v15;
      v21 = (v17 + v15 + 24);
      v22 = v17 + v15 + 48;
      v23 = v22 > v18 || v21 > v22;
      if (v23 || v21 < v19)
      {
        break;
      }

      v25 = v17 + 24 > v18 || v17 > v17 + 24;
      if (v25 || v17 < v19)
      {
        break;
      }

      v27 = *v17;
      v28 = *(v17 + 8);
      if (*v17 > v28)
      {
        break;
      }

      v29 = *v21;
      v31 = *(v20 + 32);
      v30 = *(v20 + 40);
      v32 = 92 * v1[1];
      v33 = v28 - v27;
      v34 = *(v17 + 16) > v27 || v32 > v33;
      v35 = v34 || v29 > v31;
      v36 = v35 || v30 > v29;
      if (v36 || v32 > v31 - v29)
      {
        break;
      }

      result = memcpy(v29, v27, 92 * v1[1]);
      if (v29 > &v29[v32])
      {
        break;
      }

      ++v16;
      v15 += 24;
      if (v16 >= *v1)
      {
        return result;
      }
    }

LABEL_57:
    __break(0x5519u);
  }

  return result;
}

void ddp_udc_int_assocprogram_process(int *a1, uint64_t a2, _DWORD *a3)
{
  LODWORD(v6) = *a1;
  v7 = a1[1];
  if (v7 < *a1)
  {
    v8 = (a2 + 132);
    if (a2 + 132 <= (a2 + 136) && v8 >= a2 + 128)
    {
      v9 = v7;
      v10 = 4 * v7;
      while (1)
      {
        v11 = a2 + v10 + 136;
        v12 = a2 + v10 + 140;
        v13 = v11 < a2 + 136 || v12 > a2 + 168;
        if (v13 || v11 > v12)
        {
          break;
        }

        *(a2 + 4 * v9++ + 136) = *v8;
        v6 = *a1;
        v10 += 4;
        if (v9 >= v6)
        {
          v7 = a1[1];
          goto LABEL_14;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_14:
  if (v7 < v6)
  {
    v15 = v7;
    v16 = v6;
    v17 = &a1[2 * v7 + 6106];
    v18 = v16 - v7;
    while (v17 >= a1 + 6106 && v17 + 2 <= a1 + 6124 && v17 <= v17 + 2)
    {
      if (!*v17)
      {
        return;
      }

      v17 += 2;
      if (!--v18)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_63;
  }

  v15 = v7;
LABEL_23:
  v19 = &a1[6 * v15 + 6138];
  if (a1 + 6186 < v19 || a1 + 6138 > v19)
  {
    goto LABEL_63;
  }

  v21 = a1 + 6586;
  v22 = &a1[48 * v15 + 6202];
  v23 = 192 - 24 * v15 < 169 || v22 > v21;
  if (v23 || (a1 + 6202) > v22)
  {
    goto LABEL_63;
  }

  if ((v21 - v22) < 1345)
  {
    goto LABEL_63;
  }

  v25 = &a1[48 * v15 + 7234];
  if (v25 > (a1 + 7618) || (a1 + 7234) > v25 || 1536 - 192 * v15 < 1345)
  {
    goto LABEL_63;
  }

  ddp_udc_int_dec51_process_substream(a1, a2, v7, v25, v22, v19, 1);
  *a3 = 1;
  if (*(*(a1 + 3066) + 1380) && *(a2 + 76) && v7 < *a1)
  {
    v26 = 320 * v15 + 26376;
    v27 = 320 * v15 + 26696;
    v28 = 48 * v15;
    v29 = 4 * v15;
    v30 = 320 * v15 + 26416;
    while (1)
    {
      v31 = a2 + v29 + 76;
      v32 = a2 + v29 + 80;
      v33 = v31 < a2 + 76 || v32 > a2 + 108;
      if (v33 || v31 > v32)
      {
        break;
      }

      *(a2 + 4 * v15 + 76) = 1;
      v35 = *(a2 + 40);
      v36 = v35 + v28;
      if (v35 + v28)
      {
        v37 = v35 + v28 + 48;
        v38 = v36 > v37 || v37 > *(a2 + 48);
        if (v38 || v36 < *(a2 + 56))
        {
          break;
        }
      }

      v40 = a1 + v26;
      if ((a1 + v26))
      {
        if (a1 + v30 > a1 + v27 || v40 > a1 + v30)
        {
          break;
        }
      }

      ddp_udc_int_set_dlb_buffer_from_bfd(v36, v40, 6u);
      ++v15;
      v26 += 320;
      v27 += 320;
      v30 += 320;
      v28 += 48;
      v29 += 4;
      if (v15 >= *a1)
      {
        return;
      }
    }

LABEL_63:
    __break(0x5519u);
  }
}

uint64_t bsod_unplj(uint64_t result, __int16 a2)
{
  v2 = *(result + 24);
  v3 = *(result + 26) << v2;
  v4 = v2 + a2;
  v5 = v4;
  *(result + 24) = v4;
  v6 = v4 - 16;
  if (v5 >= 16)
  {
    v7 = (*result + 2);
    v8 = *result + 4;
    if (v8 > *(result + 8) || v7 > v8 || v7 < *(result + 16))
    {
      __break(0x5519u);
      return result;
    }

    v11 = *v7;
    *(result + 26) = v11;
    *result = v7;
    *(result + 24) = v6;
    v3 |= v11 >> (a2 - v6);
  }

  return (v3 & (0xFFFF0000 >> a2));
}

uint64_t bsod_unprj(uint64_t result)
{
  v1 = *(result + 24);
  v2 = 2 * (*(result + 26) << *(result + 24));
  if (v1 < 16)
  {
    v8 = v1 + 1;
  }

  else
  {
    v3 = (*result + 2);
    v4 = *result + 4;
    if (v4 > *(result + 8) || v3 > v4 || v3 < *(result + 16))
    {
      __break(0x5519u);
      return result;
    }

    v7 = *v3;
    v8 = v1 - 15;
    *(result + 26) = v7;
    *result = v3;
    v2 |= v7 << v8;
  }

  *(result + 24) = v8;
  return (v2 >> 16);
}

unint64_t ddp_udc_int_mapdecbufs(unsigned int a1, unsigned int a2, int a3, int a4, uint64_t a5, uint64_t a6, unint64_t *a7, unint64_t a8, void *a9, unint64_t a10, void *a11, unint64_t *a12, __int16 *a13, __int16 *a14, __int16 *a15)
{
  v15 = 0;
  result = 0;
  v17 = a9;
  *a14 = -1;
  v18 = (a7 + 24);
  v19 = a8 + 192;
  do
  {
    a12[result] = 0;
    v20 = ddp_udc_int_dlb_ch2bc_chmap[result];
    v21 = &a7[3 * ddp_udc_int_dlb_ch2bc_chmap[result]];
    v22 = v21 + 3;
    if (v21 < a7 || v22 > v18 || v21 > v22)
    {
      goto LABEL_315;
    }

    v25 = *v21;
    if (*v21)
    {
      v28 = v21 + 1;
      v26 = v21[1];
      v27 = v28[1];
      v29 = v25 >= v25 + 40 || v25 + 40 > v26;
      if (v29 || v25 < v27)
      {
        goto LABEL_315;
      }
    }

    a11[result] = v25;
    if (a10)
    {
      v31 = (a10 + v15 * 8);
      *v31 = 0;
      v31[1] = 0;
      v31[2] = 0;
    }

    v32 = (a8 + 24 * v20);
    v33 = v32 + 24;
    v34 = v32 < a8 || v33 > v19;
    if (v34 || v32 > v33)
    {
      goto LABEL_315;
    }

    v36 = &a9[v15];
    v37 = *v32;
    v36[2] = *(v32 + 2);
    *v36 = v37;
    ++result;
    v15 += 3;
  }

  while (result != 6);
  a11[6] = 0;
  a12[6] = 0;
  a11[7] = 0;
  a12[7] = 0;
  if (!a6 || a2 < 8 || !a4)
  {
    *a13 = 0;
    *a15 = 0;
    return result;
  }

  v38 = *(a5 + 12);
  v39 = *(a5 + 14);
  v40 = *(a6 + 194);
  v41 = *(a6 + 12);
  result = *(a6 + 14);
  v42 = xmmword_19B0B1650;
  v43 = 0;
  v44 = vdupq_n_s32(v40);
  v45 = 12;
  v46.i64[0] = 0x800000008000;
  v46.i64[1] = 0x800000008000;
  v47 = vdupq_n_s32(0x674u);
  v48.i64[0] = 0x400000004;
  v48.i64[1] = 0x400000004;
  do
  {
    v49 = v43;
    v50 = vshlq_u32(v46, vnegq_s32(v42));
    v51 = vmovn_s32(vceqzq_s32(vandq_s8(v50, v44)));
    *v50.i8 = vmovn_s32(vceqzq_s32(vandq_s8(v50, v47)));
    v43 = vadd_s16(vbic_s8(vsub_s16(vbic_s8(0x2000200020002, *v50.i8), *v50.i8), v51), v49);
    v42 = vaddq_s32(v42, v48);
    v45 -= 4;
  }

  while (v45);
  v49.i16[0] = v43.i16[0];
  v52 = vaddv_s16(v49);
  *a13 = v52;
  v53 = &ddp_udc_int_gbl_chanary[v41];
  if (v53 < ddp_udc_int_gbl_chanary || v53 + 1 > block_size || v53 > v53 + 1)
  {
    goto LABEL_315;
  }

  v54 = v52;
  if (v52 > 3)
  {
    goto LABEL_44;
  }

  v55 = *v53 + result;
  v56 = xmmword_19B0A5860;
  v57 = 0uLL;
  LODWORD(result) = 16;
  v58.i64[0] = 0x800000008000;
  v58.i64[1] = 0x800000008000;
  v59 = vdupq_n_s32(0x674u);
  v60.i64[0] = 0x200000002;
  v60.i64[1] = 0x200000002;
  v61.i64[0] = 0x400000004;
  v61.i64[1] = 0x400000004;
  do
  {
    v62 = vshlq_u32(v58, vnegq_s32(v56));
    v63 = vceqzq_s32(vandq_s8(v62, v44));
    v64 = vceqzq_s32(vandq_s8(v62, v59));
    v57 = vaddq_s32(vbicq_s8(vsubq_s32(vbicq_s8(v60, v64), v64), v63), v57);
    v56 = vaddq_s32(v56, v61);
    result = (result - 4);
  }

  while (result);
  v65 = vaddvq_s32(v57) != v55 || (v40 & 3) == 2;
  if (v65 || !v39 && (v40 & 1) != 0)
  {
    goto LABEL_44;
  }

  if ((v40 & 0xFFFC) != 0 || (v40 & 2) == 0)
  {
    if ((v40 & 0x7FE) == 0)
    {
      goto LABEL_292;
    }

    result = &word_19B2FFF98;
    v151 = 21;
    while (*result != v38 || *(result + 2) != (v40 & 0xFFFC))
    {
      result += 6;
      if (!--v151)
      {
        goto LABEL_44;
      }
    }

    v130 = *(result + 4);
    if ((v40 & 2) == 0 || v130 != 0xFFFF)
    {
      if ((v40 & 2) == 0 || v130 == 0xFFFF)
      {
        goto LABEL_292;
      }

      goto LABEL_175;
    }

LABEL_44:
    *a15 = 0;
LABEL_45:
    *a13 = 0;
    goto LABEL_46;
  }

  LOWORD(v130) = 6;
LABEL_175:
  *a14 = v130;
LABEL_292:
  if (a2 == -1)
  {
    goto LABEL_313;
  }

  *a15 = 0;
  v182 = &ddp_udc_int_valid_chan_configs + 6 * a2;
  result = (v182 + 6);
  v183 = (v182 + 2);
  v184 = v182 + 4;
  if (v182 + 2 < v182 || v184 > result || v183 > v184)
  {
    goto LABEL_315;
  }

  v187 = *v183;
  v188 = 0;
  v189 = xmmword_19B0B1650;
  v190 = vdupq_n_s32(v187);
  v191 = 12;
  v192.i64[0] = 0x800000008000;
  v192.i64[1] = 0x800000008000;
  v193 = vdupq_n_s32(0x674u);
  v194.i64[0] = 0x400000004;
  v194.i64[1] = 0x400000004;
  do
  {
    v195 = v188;
    v196 = vshlq_u32(v192, vnegq_s32(v189));
    v197 = vmovn_s32(vorrq_s8(vceqzq_s32(vandq_s8(v196, v44)), vceqzq_s32(vandq_s8(v196, v190))));
    *v196.i8 = vmovn_s32(vceqzq_s32(vandq_s8(v196, v193)));
    v188 = vadd_s16(vbic_s8(vsub_s16(vbic_s8(0x2000200020002, *v196.i8), *v196.i8), v197), v195);
    v189 = vaddq_s32(v189, v194);
    v191 -= 4;
  }

  while (v191);
  v195.i16[0] = v188.i16[0];
  v198 = (v40 >> 8) & ((v187 & 0x200) >> 9);
  v199 = (v40 >> 3) & ((v187 & 0x10) >> 4);
  result = v187 & 4;
  v200 = v199 + v198 + ((v40 >> 7) & (result >> 2)) + vaddv_s16(v195);
  if (v200 == 2 || (v200 == 1 ? (v201 = v54 == 1) : (v201 = 0), v201))
  {
LABEL_313:
    v203 = 2;
  }

  else
  {
    if (v200 != 1 || v54 != 2)
    {
      goto LABEL_45;
    }

    v203 = 1;
  }

  *a15 = v203;
LABEL_46:
  if (*a15 - 1 > 1)
  {
    return result;
  }

  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v70 = (a11 + 8);
  v204 = *(a6 + 12);
  v71 = (&ddp_udc_int_gbl_chantab + 12 * v204);
  v72 = (v71 + 6);
  v73 = (a12 + 8);
  v207 = (a9 + 18);
  v74 = a10 + 144;
  do
  {
    v75 = 0x8000u >> v67;
    if (((0x8000u >> v67) & *(a6 + 194)) != 0)
    {
      if ((v75 & 0xFFFFF801) != 0)
      {
        v76 = &a11[v66];
        if (&a11[v66] < a11)
        {
          goto LABEL_315;
        }

        if (v76 + 8 > v70)
        {
          goto LABEL_315;
        }

        if (v76 > v76 + 8)
        {
          goto LABEL_315;
        }

        a11[v67] = 0;
        v77 = &ddp_udc_int_dlb_ch2bc_chmap[v67];
        if (&ddp_udc_int_dlb_ch2bc_chmap[v67] >= byte_19B308954 || v77 < ddp_udc_int_dlb_ch2bc_chmap)
        {
          goto LABEL_315;
        }

        v78 = *v77;
        v79 = &a7[3 * *v77];
        v80 = v79 + 3;
        v81 = v79 < a7 || v80 > v18;
        if (v81 || v79 > v80)
        {
          goto LABEL_315;
        }

        v83 = *v79;
        if (*v79)
        {
          v85 = v79 + 1;
          v84 = v79[1];
          result = v85[1];
          v86 = v83 >= v83 + 40 || v83 + 40 > v84;
          if (v86 || v83 < result)
          {
            goto LABEL_315;
          }
        }

        v88 = &v71[v68];
        if (v88 < v71)
        {
          goto LABEL_315;
        }

        result = (v88 + 1);
        if ((v88 + 1) > v72)
        {
          goto LABEL_315;
        }

        if (v88 > result)
        {
          goto LABEL_315;
        }

        result = *v88;
        v89 = &a12[result];
        if (v89 < a12)
        {
          goto LABEL_315;
        }

        if ((v89 + 1) > v73)
        {
          goto LABEL_315;
        }

        if (v89 > v89 + 1)
        {
          goto LABEL_315;
        }

        *v89 = v83;
        if (v17 < a9)
        {
          goto LABEL_315;
        }

        if ((v17 + 3) > v207)
        {
          goto LABEL_315;
        }

        if (v17 > v17 + 3)
        {
          goto LABEL_315;
        }

        *v17 = 0;
        v17[1] = 0;
        v17[2] = 0;
        v90 = a10 + 24 * result;
        if (v90 < a10)
        {
          goto LABEL_315;
        }

        if (v90 + 24 > v74)
        {
          goto LABEL_315;
        }

        if (v90 > v90 + 24)
        {
          goto LABEL_315;
        }

        v91 = a8 + 24 * v78;
        if (v91 < a8)
        {
          goto LABEL_315;
        }

        result = v91 + 24;
        if (v91 + 24 > v19 || v91 > result)
        {
          goto LABEL_315;
        }

        v92 = *v91;
        *(v90 + 16) = *(v91 + 16);
        *v90 = v92;
        ++v68;
      }

      else
      {
        result = v69 + 6;
        v93 = &a7[3 * result];
        v94 = v93 + 3;
        if (v93 < a7 || v94 > v18 || v93 > v94)
        {
          goto LABEL_315;
        }

        v97 = *v93;
        if (*v93)
        {
          v100 = v93 + 1;
          v99 = v93[1];
          v98 = v100[1];
          v101 = v97 >= v97 + 40 || v97 + 40 > v99;
          if (v101 || v97 < v98)
          {
            goto LABEL_315;
          }
        }

        v103 = &v71[v68];
        if (v103 < v71)
        {
          goto LABEL_315;
        }

        if ((v103 + 1) > v72)
        {
          goto LABEL_315;
        }

        if (v103 > v103 + 1)
        {
          goto LABEL_315;
        }

        v104 = *v103;
        v105 = &a12[v104];
        if (v105 < a12)
        {
          goto LABEL_315;
        }

        if ((v105 + 1) > v73)
        {
          goto LABEL_315;
        }

        if (v105 > v105 + 1)
        {
          goto LABEL_315;
        }

        *v105 = v97;
        v106 = a10 + 24 * v104;
        if (v106 < a10)
        {
          goto LABEL_315;
        }

        if (v106 + 24 > v74)
        {
          goto LABEL_315;
        }

        if (v106 > v106 + 24)
        {
          goto LABEL_315;
        }

        v107 = a8 + 24 * result;
        if (v107 < a8)
        {
          goto LABEL_315;
        }

        result = v107 + 24;
        if (v107 + 24 > v19 || v107 > result)
        {
          goto LABEL_315;
        }

        result = v68;
        v108 = *v107;
        *(v106 + 16) = *(v107 + 16);
        *v106 = v108;
        if ((v75 & 0x674) != 0)
        {
          v109 = v69 + 7;
          v110 = &a7[3 * v109];
          if (v110 < a7)
          {
            goto LABEL_315;
          }

          if ((v110 + 3) > v18)
          {
            goto LABEL_315;
          }

          if (v110 > v110 + 3)
          {
            goto LABEL_315;
          }

          result = *v110;
          if (*v110)
          {
            if (result >= result + 40 || result + 40 > v110[1] || result < v110[2])
            {
              goto LABEL_315;
            }
          }

          v111 = &v71[v68 + 1];
          if (v111 < v71)
          {
            goto LABEL_315;
          }

          if ((v111 + 1) > v72)
          {
            goto LABEL_315;
          }

          if (v111 > v111 + 1)
          {
            goto LABEL_315;
          }

          v112 = *v111;
          v113 = &a12[v112];
          if (v113 < a12)
          {
            goto LABEL_315;
          }

          if ((v113 + 1) > v73)
          {
            goto LABEL_315;
          }

          if (v113 > v113 + 1)
          {
            goto LABEL_315;
          }

          *v113 = result;
          v114 = a10 + 24 * v112;
          if (v114 < a10)
          {
            goto LABEL_315;
          }

          if (v114 + 24 > v74)
          {
            goto LABEL_315;
          }

          if (v114 > v114 + 24)
          {
            goto LABEL_315;
          }

          v115 = a8 + 24 * v109;
          if (v115 < a8)
          {
            goto LABEL_315;
          }

          result = v115 + 24;
          if (v115 + 24 > v19 || v115 > result)
          {
            goto LABEL_315;
          }

          v116 = *v115;
          *(v114 + 16) = *(v115 + 16);
          *v114 = v116;
          v68 += 2;
          v69 += 2;
        }

        else
        {
          ++v69;
          ++v68;
        }
      }
    }

    ++v67;
    v17 += 3;
    ++v66;
  }

  while (v67 != 14);
  result = a1;
  if (a1)
  {
    v117 = 0;
  }

  else
  {
    v117 = a2 == -1;
  }

  v118 = v117;
  if (v117)
  {
    if ((*(a6 + 194) & 2) == 0)
    {
      v119 = -1;
      v120 = a14;
LABEL_260:
      *v120 = v119;
      goto LABEL_261;
    }

    v131 = &ddp_udc_int_dlb_ch2bc_chmap[*a14];
    if (v131 >= byte_19B308954 || v131 < ddp_udc_int_dlb_ch2bc_chmap)
    {
      goto LABEL_315;
    }

    result = *v131;
    v132 = &a7[3 * result];
    v133 = v132 + 3;
    v134 = v132 < a7 || v133 > v18;
    if (v134 || v132 > v133)
    {
      goto LABEL_315;
    }

    v136 = *v132;
    if (*v132)
    {
      v139 = v132 + 1;
      v137 = v132[1];
      v138 = v139[1];
      v140 = v136 >= v136 + 40 || v136 + 40 > v137;
      if (v140 || v136 < v138)
      {
        goto LABEL_315;
      }
    }

    v142 = &v71[v68];
    if (v142 < v71)
    {
      goto LABEL_315;
    }

    if ((v142 + 1) > v72)
    {
      goto LABEL_315;
    }

    if (v142 > v142 + 1)
    {
      goto LABEL_315;
    }

    v143 = *v142;
    v144 = &a12[v143];
    if (v144 < a12)
    {
      goto LABEL_315;
    }

    if ((v144 + 1) > v73)
    {
      goto LABEL_315;
    }

    if (v144 > v144 + 1)
    {
      goto LABEL_315;
    }

    *v144 = v136;
    v145 = a10 + 24 * v143;
    if (v145 < a10)
    {
      goto LABEL_315;
    }

    if (v145 + 24 > v74)
    {
      goto LABEL_315;
    }

    if (v145 > v145 + 24)
    {
      goto LABEL_315;
    }

    v146 = a8 + 24 * result;
    if (v146 < a8 || v146 + 24 > v19 || v146 > v146 + 24)
    {
      goto LABEL_315;
    }

    v147 = *v146;
    *(v145 + 16) = *(v146 + 16);
    *v145 = v147;
    ++v68;
    v148 = *a14;
    if (v148 > 5)
    {
LABEL_259:
      v120 = a13;
      v119 = *a13 + 1;
      goto LABEL_260;
    }

    v149 = &a11[v148];
    if (v149 < a11)
    {
      goto LABEL_315;
    }

    if ((v149 + 1) > v70)
    {
      goto LABEL_315;
    }

    if (v149 > v149 + 1)
    {
      goto LABEL_315;
    }

    *v149 = 0;
    v150 = &a9[3 * v148];
    if (v150 < a9 || (v150 + 3) > v207 || v150 > v150 + 3)
    {
      goto LABEL_315;
    }

    *v150 = 0;
    v150[1] = 0;
    v150[2] = 0;
  }

  else
  {
    *a14 = -1;
    if (a1 && (*(a6 + 194) & 0xFFFC) == 0x1900)
    {
      result = v204;
      if (v204 == 7)
      {
        v152 = v69 + 6;
        v153 = &a7[3 * v152];
        if (v153 < a7)
        {
          goto LABEL_315;
        }

        result = (v153 + 3);
        if ((v153 + 3) > v18 || v153 > result)
        {
          goto LABEL_315;
        }

        v154 = *v153;
        if (*v153)
        {
          v156 = v153 + 1;
          v155 = v153[1];
          result = v156[1];
          v157 = v154 >= v154 + 40 || v154 + 40 > v155;
          if (v157 || v154 < result)
          {
            goto LABEL_315;
          }
        }

        a12[3] = v154;
        v159 = a8 + 24 * v152;
        if (v159 < a8 || v159 + 24 > v19 || v159 > v159 + 24)
        {
          goto LABEL_315;
        }

        v160 = *v159;
        *(a10 + 88) = *(v159 + 16);
        *(a10 + 72) = v160;
      }

      else if (v204 == 6)
      {
        v121 = v69 + 6;
        v122 = &a7[3 * v121];
        if (v122 < a7)
        {
          goto LABEL_315;
        }

        result = (v122 + 3);
        if ((v122 + 3) > v18 || v122 > result)
        {
          goto LABEL_315;
        }

        v123 = *v122;
        if (*v122)
        {
          v125 = v122 + 1;
          v124 = v122[1];
          result = v125[1];
          v126 = v123 >= v123 + 40 || v123 + 40 > v124;
          if (v126 || v123 < result)
          {
            goto LABEL_315;
          }
        }

        a12[1] = v123;
        v128 = a8 + 24 * v121;
        if (v128 < a8 || v128 + 24 > v19 || v128 > v128 + 24)
        {
          goto LABEL_315;
        }

        v129 = *v128;
        *(a10 + 40) = *(v128 + 16);
        *(a10 + 24) = v129;
      }

      else
      {
        v161 = &ddp_udc_int_gbl_chanary[v204];
        if (v161 < ddp_udc_int_gbl_chanary)
        {
          goto LABEL_315;
        }

        result = block_size;
        if (v161 + 1 > block_size)
        {
          goto LABEL_315;
        }

        if (v161 > v161 + 1)
        {
          goto LABEL_315;
        }

        v162 = v69 + 6;
        result = &a7[3 * v162];
        if (result < a7)
        {
          goto LABEL_315;
        }

        if (result + 24 > v18)
        {
          goto LABEL_315;
        }

        if (result > result + 24)
        {
          goto LABEL_315;
        }

        v163 = *v161;
        v164 = *result;
        if (*result)
        {
          if (v164 >= v164 + 40)
          {
            goto LABEL_315;
          }

          if (v164 + 40 > *(result + 8))
          {
            goto LABEL_315;
          }

          result = *(result + 16);
          if (v164 < result)
          {
            goto LABEL_315;
          }
        }

        v165 = &v71[(v163 - 1)];
        if (v165 < v71)
        {
          goto LABEL_315;
        }

        result = (v165 + 1);
        if ((v165 + 1) > v72)
        {
          goto LABEL_315;
        }

        if (v165 > result)
        {
          goto LABEL_315;
        }

        v166 = *v165;
        v167 = &a12[v166];
        result = (v167 + 1);
        if (v167 + 1 < a12)
        {
          goto LABEL_315;
        }

        v168 = (v167 + 2);
        if (v168 > v73)
        {
          goto LABEL_315;
        }

        if (result > v168)
        {
          goto LABEL_315;
        }

        *result = v164;
        v169 = a10 + 24 * v166;
        v170 = v169 + 24;
        if (v169 + 24 < a10)
        {
          goto LABEL_315;
        }

        v171 = v169 + 48;
        if (v171 > v74)
        {
          goto LABEL_315;
        }

        if (v170 > v171)
        {
          goto LABEL_315;
        }

        v172 = a8 + 24 * v162;
        if (v172 < a8 || v172 + 24 > v19 || v172 > v172 + 24)
        {
          goto LABEL_315;
        }

        v173 = *v172;
        *(v170 + 16) = *(v172 + 16);
        *v170 = v173;
      }

      goto LABEL_259;
    }
  }

LABEL_261:
  if (a3)
  {
    v174 = *(a6 + 194);
    if ((v174 & 1) != 0 && ((v174 >> 1) & 1 & ~v118) == 0)
    {
      a11[5] = 0;
      v175 = a9 + 15;
      if ((a9 + 15) <= v207 && v175 >= a9)
      {
        *v175 = 0;
        a9[16] = 0;
        a9[17] = 0;
        v176 = a7[9];
        if (*(a6 + 14))
        {
          if (v176 && (v176 >= v176 + 40 || v176 + 40 > a7[10] || v176 < a7[11]))
          {
            goto LABEL_315;
          }

          a12[5] = v176;
          v177 = a10 + 120;
          if (a10 + 120 > v74 || v177 < a10)
          {
            goto LABEL_315;
          }
        }

        else
        {
          if (v176 && (v176 >= v176 + 40 || v176 + 40 > a7[10] || v176 < a7[11]))
          {
            goto LABEL_315;
          }

          v178 = &v71[v68];
          if (v178 < v71)
          {
            goto LABEL_315;
          }

          if ((v178 + 1) > v72)
          {
            goto LABEL_315;
          }

          if (v178 > v178 + 1)
          {
            goto LABEL_315;
          }

          v179 = *v178;
          v180 = &a12[v179];
          if (v180 < a12)
          {
            goto LABEL_315;
          }

          if ((v180 + 1) > v73)
          {
            goto LABEL_315;
          }

          if (v180 > v180 + 1)
          {
            goto LABEL_315;
          }

          *v180 = v176;
          v177 = a10 + 24 * v179;
          if (v177 < a10 || v177 + 24 > v74 || v177 > v177 + 24)
          {
            goto LABEL_315;
          }
        }

        v181 = *(a8 + 72);
        *(v177 + 16) = *(a8 + 88);
        *v177 = v181;
        return result;
      }

LABEL_315:
      __break(0x5519u);
    }
  }

  return result;
}

float *ddp_udc_int_derive_outputmap(float *result, __int16 a2, int a3, int a4, uint64_t a5, __int16 a6, __int16 a7, __int16 *a8)
{
  v8 = 0;
  v9 = result;
  v10 = (a5 + 160);
  while (2)
  {
    v11 = a5 + 160 + 24 * v8;
    v12 = 6;
    v13 = v10;
    while (1)
    {
      if (v13 < v11)
      {
        goto LABEL_20;
      }

      result = v13 + 1;
      if ((v13 + 1) > v11 + 24 || v13 > result)
      {
        goto LABEL_20;
      }

      if (*v13 != 0.0)
      {
        break;
      }

      ++v13;
      if (!--v12)
      {
        goto LABEL_10;
      }
    }

    *a8 |= 0x8000u >> v8;
LABEL_10:
    ++v8;
    v10 += 6;
    if (v8 != 5)
    {
      continue;
    }

    break;
  }

  if ((v9 - 1) <= 1)
  {
    v14 = a2 & 0xFFFC | (2 * (a4 != 0)) | *a8;
  }

  else
  {
    v14 = *a8;
  }

  v15 = (v14 | a7) & ~a6;
  *a8 = v15;
  if (a3)
  {
    v16 = (a5 + 300);
    if (a5 + 300 > (a5 + 304) || v16 < a5 + 280)
    {
LABEL_20:
      __break(0x5519u);
      return result;
    }

    if (*v16 != 0.0)
    {
      *a8 = v15 | 1;
    }
  }

  return result;
}

unint64_t ddp_udc_int_udc_loadparams(unint64_t result)
{
  v1 = result;
  if (!*(result + 1812))
  {
    goto LABEL_48;
  }

  *(result + 30908) = *(result + 1396);
  LODWORD(v2) = *(result + 1884);
  v3 = *(result + 16);
  if (v3 >= 1)
  {
    v4 = (result + 24424);
    while (v4 >= result + 24424 && (v4 + 1) <= result + 24496 && v4 <= v4 + 1)
    {
      v5 = *v4;
      if (*v4)
      {
        v5[8] = v2 != 1;
        v6 = *(result + 1000);
        v5[18] = *(result + 992);
        v5[19] = v6;
      }

      ++v4;
      if (!--v3)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_39;
  }

LABEL_10:
  v7 = *(result + 24544);
  if (v7)
  {
    v78 = v2 == 0;
    v8 = *(result + 996);
    v9 = !v78;
    *(v7 + 48) = v9;
    *(v7 + 52) = v8;
  }

  v10 = result + 1968;
  ddp_udc_int_tsid_deselectallprograms(result + 12728);
  result = ddp_udc_int_tsid_deselectallprograms(v1 + 1968);
  *(v1 + 1896) = -1;
  *(v1 + 2072) = 1;
  *(v1 + 23488) = v1 + 2008;
  LODWORD(v2) = *(v1 + 988);
  if (v2 == -1)
  {
    goto LABEL_40;
  }

  if (*(v1 + 1892))
  {
    if (*(v1 + 8))
    {
      LODWORD(v2) = 0;
      v11 = 1;
      goto LABEL_25;
    }

    v11 = 0;
LABEL_23:
    LODWORD(v2) = -1;
    goto LABEL_26;
  }

  v11 = 0;
  if (!v2)
  {
    LODWORD(v2) = -1;
    goto LABEL_25;
  }

  if (!*(v1 + 8))
  {
    goto LABEL_23;
  }

LABEL_25:
  *(v1 + 1896) = v2;
LABEL_26:
  v12 = v10 + 10760 * v11;
  if (v12)
  {
    if (v12 + 10760 > v1 + 23488 || v12 > v12 + 10760 || v12 < v10)
    {
      goto LABEL_39;
    }

    if (v2 != -1)
    {
      v13 = v12 + 40 + 648 * v2;
      if (v12 + 40 > v13 || (v14 = v12 + 5224, v15 = v13 + 648, v13 + 648 > v14))
      {
LABEL_39:
        __break(0x5519u);
        goto LABEL_40;
      }

LABEL_37:
      *(v13 + 64) = 1;
      if (!v13 || v13 <= v15)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    }
  }

  else if (v2 != -1)
  {
    v16 = 648 * v2;
    v13 = v16 + 40;
    if (v16 >= 0xFFFFFFFFFFFFFFD8)
    {
      goto LABEL_39;
    }

    v15 = v16 + 688;
    if (v15 >= 0x1469)
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

LABEL_40:
  v13 = 0;
LABEL_41:
  *(v1 + 23496) = v13;
  v17 = *(v1 + 30944);
  if (v17)
  {
    v18 = *(v1 + 34);
    if (v18 == 65534)
    {
      *(v1 + 34) = v2;
      LOWORD(v18) = v2;
    }

    if (v2 != v18)
    {
      v17[8] = 1;
      *(v1 + 34) = v2;
    }

    v17[7] = *(v1 + 1388);
    v17[4] = *(v1 + 1392);
  }

  *(v1 + 12720) = *(v1 + 1384);
  *(v1 + 12712) = *(v1 + 1376);
  *(v1 + 1812) = 0;
LABEL_48:
  v19 = *v1;
  if (*v1 >= 1)
  {
    v2 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = v1 + 1848;
    result = v1 + 1024;
    v25 = (v1 + 1900);
    v26 = v1 + 1916;
    v27 = v1 + 1040;
    v28 = 24424;
    v29 = (v1 + 1152);
    v30 = (v1 + 1312);
    v31 = (v1 + 1344);
    v32 = 24432;
    while (1)
    {
      v33 = (v1 + v21 + 1816);
      v34 = v1 + v21 + 1820;
      if (v33 < v1 + 1816 || v34 > v24 || v33 > v34)
      {
        goto LABEL_39;
      }

      if (*v33)
      {
        v37 = v1 + v21;
        v38 = (v1 + v21 + 1848);
        if (v38 < v24 || v37 + 1852 > v1 + 1880 || v38 > v37 + 1852)
        {
          goto LABEL_39;
        }

        if (!*v38)
        {
          break;
        }
      }

LABEL_106:
      ++v23;
      v22 += 2;
      v21 += 4;
      v20 += 20;
      v2 += 14;
      v28 += 8;
      v32 += 8;
      if (v23 >= v19)
      {
        goto LABEL_127;
      }
    }

    if (v23 <= 1)
    {
      v39 = *(v1 + 30944);
      if (v39)
      {
        v40 = v1 + v22 + 1010;
        if (v40 > result)
        {
          goto LABEL_39;
        }

        v41 = (v1 + v22 + 1008);
        if (v41 > v40)
        {
          goto LABEL_39;
        }

        v42 = v39 + 72;
        v43 = v39 + v21;
        v44 = v43 + 68;
        if (v43 + 68 > v42)
        {
          goto LABEL_39;
        }

        v45 = (v43 + 64);
        if (v45 > v44)
        {
          goto LABEL_39;
        }

        *v45 = *v41;
      }
    }

    v46 = v1 + v22;
    v47 = (v1 + v22 + 1008);
    if (v47 < v1 + 1008)
    {
      goto LABEL_39;
    }

    if (v46 + 1010 > result)
    {
      goto LABEL_39;
    }

    if (v47 > v46 + 1010)
    {
      goto LABEL_39;
    }

    v48 = *v47;
    v49 = v1 + v22;
    v50 = (v1 + v22 + 1900);
    if (v50 < v25)
    {
      goto LABEL_39;
    }

    if (v49 + 1902 > v26)
    {
      goto LABEL_39;
    }

    if (v50 > v49 + 1902)
    {
      goto LABEL_39;
    }

    *v50 = v48;
    v51 = v1 + v22;
    v52 = (v1 + v22 + 1024);
    if (v52 < result)
    {
      goto LABEL_39;
    }

    if (v51 + 1026 > v27)
    {
      goto LABEL_39;
    }

    if (v52 > v51 + 1026)
    {
      goto LABEL_39;
    }

    v53 = (v1 + v22 + 1916);
    if (v53 < v26)
    {
      goto LABEL_39;
    }

    v54 = v1 + v22 + 1918;
    if (v54 > v1 + 1932)
    {
      goto LABEL_39;
    }

    if (v53 > v54)
    {
      goto LABEL_39;
    }

    v55 = *v52;
    *v53 = v55;
    v56 = v55 != 0;
    v57 = (v1 + v28);
    if (v1 + v28 < v1 + 24424 || v1 + v32 > v1 + 24496 || v57 > v1 + v32)
    {
      goto LABEL_39;
    }

    v58 = *v57;
    if (!v58)
    {
      goto LABEL_104;
    }

    *(v58 + 36) = v48;
    *(v58 + 38) = v56;
    if (v48 <= 7)
    {
      *(v58 + 40) = ddp_udc_int_gbl_chanary[v48] + v56;
    }

    v59 = v1 + v2 + 1040;
    if (v59 < v27)
    {
      goto LABEL_39;
    }

    v60 = v1 + v2 + 1054;
    if (v60 > v29 || v59 > v60)
    {
      goto LABEL_39;
    }

    *(v58 + 42) = *(v1 + v2 + 1046);
    if (v48 == 0xFFFF)
    {
      *(v58 + 48) = 0;
    }

    v61 = (v1 + v20 + 1152);
    if (v29 > v61)
    {
      goto LABEL_39;
    }

    if (v1 + v20 + 1172 > v30)
    {
      goto LABEL_39;
    }

    v62 = *v61;
    *(v58 + 52) = v62;
    v63 = &ddp_udc_int_compmode2boost_tab[v62];
    if (v63 < ddp_udc_int_compmode2boost_tab)
    {
      goto LABEL_39;
    }

    if (v63 + 1 > &word_19B300026)
    {
      goto LABEL_39;
    }

    if (v63 > v63 + 1)
    {
      goto LABEL_39;
    }

    *(v58 + 68) = *v63;
    *(v58 + 54) = *(v1 + v20 + 1154);
    v64 = (v1 + v21 + 1312);
    if (v64 < v30)
    {
      goto LABEL_39;
    }

    v65 = v1 + v21 + 1316;
    if (v65 > v31)
    {
      goto LABEL_39;
    }

    if (v64 > v65)
    {
      goto LABEL_39;
    }

    *(v58 + 80) = *v64;
    v66 = (v1 + v21 + 1344);
    if (v66 < v31)
    {
      goto LABEL_39;
    }

    v67 = v1 + v21 + 1348;
    if (v67 > v1 + 1376 || v66 > v67)
    {
      goto LABEL_39;
    }

    *(v58 + 84) = *v66;
    if (*(v58 + 3896) == -1)
    {
      *(v58 + 3896) = v62;
      if (v21)
      {
        goto LABEL_105;
      }
    }

    else
    {
LABEL_104:
      if (v21)
      {
LABEL_105:
        *v33 = 0;
        v19 = *v1;
        goto LABEL_106;
      }
    }

    v68 = *v25;
    if (v68 > 7 || v68 == -1)
    {
      v71 = *(v1 + 24512);
      v70 = v71 != 0;
      v69 = *(v1 + 24520);
      if (!v69)
      {
LABEL_121:
        v74 = *(v1 + 24536);
        if (v74)
        {
          *(v74 + 32) = v70;
          *(v74 + 44) = 2;
          *(v74 + 36) = 0x600010007;
          v75 = *v29;
          *(v74 + 52) = v75;
          v76 = &ddp_udc_int_compmode2boost_tab[v75];
          if (v76 < ddp_udc_int_compmode2boost_tab || v76 + 1 > &word_19B300026 || v76 > v76 + 1)
          {
            goto LABEL_39;
          }

          *(v74 + 68) = *v76;
          *(v74 + 54) = *(v1 + 1154);
          *(v74 + 80) = *v30;
          *(v74 + 84) = *v31;
          if (*(v74 + 3896) == -1)
          {
            *(v74 + 3896) = v75;
          }
        }

        goto LABEL_105;
      }

      if (v71)
      {
        v72 = 7;
        v70 = 1;
        goto LABEL_117;
      }
    }

    else
    {
      v69 = *(v1 + 24520);
      if (!v69)
      {
        v70 = 0;
        goto LABEL_121;
      }
    }

    v70 = 0;
    v72 = v69[18];
LABEL_117:
    v69[18] = v72;
    v73 = &ddp_udc_int_gbl_chanary[v72];
    if (v73 < ddp_udc_int_gbl_chanary || v73 + 1 > block_size || v73 > v73 + 1)
    {
      goto LABEL_39;
    }

    v69[20] = *v73 + v69[19];
    goto LABEL_121;
  }

LABEL_127:
  v77 = *(v1 + 1900);
  v78 = v77 > 7 || v77 == -1;
  v79 = v78 && *(v1 + 24512) != 0;
  *(*(v1 + 23488) + 136) = v79;
  return result;
}

uint64_t ddp_udc_int_handleinvalidtimeslice(uint64_t result, int a2, uint64_t a3)
{
  if (a3 + 256 < (a3 + 252) || a3 + 256 > (a3 + 260) || ((v3 = *(result + 28), v4 = *(a3 + 48), v5 = *(a3 + 40) + 48 * a2, v6 = *(a3 + 56), *(a3 + 256) = 5, *(a3 + 240) = 0, v5 + 48 <= v4) ? (v7 = v6 > v5) : (v7 = 1), v7))
  {
LABEL_158:
    __break(0x5519u);
    return result;
  }

  v8 = 3 * v3;
  v9 = *(result + 32);
  *(v5 + 8) = v9;
  *v5 = 6;
  if (v9 == 1)
  {
    v10 = *(result + 28);
  }

  else
  {
    v10 = 1;
  }

  v11 = 2 * v8;
  v12 = *(v5 + 16);
  if (v12 <= 4)
  {
    if (v12 == 3)
    {
      v76 = 0;
      v77 = *(result + 8);
      v78 = *result;
      v79 = 4 * v10;
      while (1)
      {
        v80 = *(v5 + 24) + v76;
        v81 = v80 + 24 > *(v5 + 32) || v80 >= v80 + 24;
        if (v81 || v80 < *(v5 + 40))
        {
          goto LABEL_158;
        }

        *v80 = v78;
        *(v80 + 8) = v77;
        v76 += 24;
        v78 = (v78 + v79);
        if (v76 == 144)
        {
          v84 = *(v5 + 24);
          v83 = *(v5 + 32);
          v85 = *(v5 + 40);
          if (v84 + 24 <= v83 && v84 < v84 + 24 && v84 >= v85)
          {
            if (!v11)
            {
              return result;
            }

            v89 = *(v84 + 8);
            v88 = *(v84 + 16);
            for (i = *v84; ; ++i)
            {
              v91 = (i + 1) > v89 || i >= i + 1;
              if (v91 || i < v88)
              {
                break;
              }

              *i = 0;
              if (!--v11)
              {
                return result;
              }
            }
          }

          goto LABEL_158;
        }
      }
    }

    if (v12 == 4)
    {
      v30 = 0;
      v31 = *(result + 8);
      v32 = *result;
      v33 = 2 * v10;
      while (1)
      {
        v34 = *(v5 + 24) + v30;
        v35 = v34 + 24 > *(v5 + 32) || v34 >= v34 + 24;
        if (v35 || v34 < *(v5 + 40))
        {
          goto LABEL_158;
        }

        *v34 = v32;
        *(v34 + 8) = v31;
        v30 += 24;
        v32 = (v32 + v33);
        if (v30 == 144)
        {
          v38 = *(v5 + 24);
          v37 = *(v5 + 32);
          v39 = *(v5 + 40);
          if (v38 + 24 <= v37 && v38 < v38 + 24 && v38 >= v39)
          {
            if (!v11)
            {
              return result;
            }

            v43 = *(v38 + 8);
            v42 = *(v38 + 16);
            for (j = *v38; ; ++j)
            {
              v45 = (j + 1) > v43 || j >= j + 1;
              if (v45 || j < v42)
              {
                break;
              }

              *j = 0;
              if (!--v11)
              {
                return result;
              }
            }
          }

          goto LABEL_158;
        }
      }
    }
  }

  else
  {
    switch(v12)
    {
      case 5:
        v47 = 0;
        v48 = *(result + 8);
        v49 = *result;
        v50 = 4 * v10;
        while (1)
        {
          v51 = *(v5 + 24) + v47;
          v52 = v51 + 24 > *(v5 + 32) || v51 >= v51 + 24;
          if (v52 || v51 < *(v5 + 40))
          {
            goto LABEL_158;
          }

          *v51 = v49;
          *(v51 + 8) = v48;
          v47 += 24;
          v49 = (v49 + v50);
          if (v47 == 144)
          {
            v55 = *(v5 + 24);
            v54 = *(v5 + 32);
            v56 = *(v5 + 40);
            if (v55 + 24 <= v54 && v55 < v55 + 24 && v55 >= v56)
            {
              if (!v11)
              {
                return result;
              }

              v60 = *(v55 + 8);
              v59 = *(v55 + 16);
              for (k = *v55; ; ++k)
              {
                v62 = (k + 1) > v60 || k >= k + 1;
                if (v62 || k < v59)
                {
                  break;
                }

                *k = 0;
                if (!--v11)
                {
                  return result;
                }
              }
            }

            goto LABEL_158;
          }
        }

      case 6:
        v64 = 0;
        v65 = *(result + 8);
        v66 = *result;
        v67 = 8 * v10;
        while (1)
        {
          v68 = *(v5 + 24) + v64;
          v69 = v68 + 24 > *(v5 + 32) || v68 >= v68 + 24;
          if (v69 || v68 < *(v5 + 40))
          {
            goto LABEL_158;
          }

          *v68 = v66;
          *(v68 + 8) = v65;
          v64 += 24;
          v66 = (v66 + v67);
          if (v64 == 144)
          {
            if (!v11)
            {
              return result;
            }

            v72 = *(result + 8);
            v71 = *(result + 16);
            for (m = *result; ; ++m)
            {
              v74 = (m + 1) > v72 || m >= m + 1;
              if (v74 || m < v71)
              {
                break;
              }

              *m = 0;
              if (!--v11)
              {
                return result;
              }
            }

            goto LABEL_158;
          }
        }

      case 7:
        v13 = 0;
        v14 = *(result + 8);
        v15 = *result;
        v16 = 4 * v10;
        while (1)
        {
          v17 = *(v5 + 24) + v13;
          v18 = v17 + 24 > *(v5 + 32) || v17 >= v17 + 24;
          if (v18 || v17 < *(v5 + 40))
          {
            goto LABEL_158;
          }

          *v17 = v15;
          *(v17 + 8) = v14;
          v13 += 24;
          v15 = (v15 + v16);
          if (v13 == 144)
          {
            v21 = *(v5 + 24);
            v20 = *(v5 + 32);
            v22 = *(v5 + 40);
            if (v21 + 24 <= v20 && v21 < v21 + 24 && v21 >= v22)
            {
              if (!v11)
              {
                return result;
              }

              v26 = *(v21 + 8);
              v25 = *(v21 + 16);
              for (n = *v21; ; ++n)
              {
                v28 = (n + 1) > v26 || n >= n + 1;
                if (v28 || n < v25)
                {
                  break;
                }

                *n = 0;
                if (!--v11)
                {
                  return result;
                }
              }
            }

            goto LABEL_158;
          }
        }
    }
  }

  return result;
}

uint64_t ddp_udc_int_udc_initparams(uint64_t result)
{
  v1 = 0;
  v2 = 0;
  v3 = 0;
  *result = xmmword_19B0B2EC0;
  *(result + 16) = 1;
  *(result + 408) = 0;
  while (1)
  {
    v4 = (result + v2 + 52);
    v5 = result + v2 + 66;
    if (v5 > result + 164 || v4 > v5)
    {
      break;
    }

    *v4 = 0x600010007;
    *(result + v2 + 60) = 0;
    v7 = result + v1 + 184;
    if (v7 > result + 324)
    {
      break;
    }

    v8 = (result + v1 + 164);
    if (v8 > v7)
    {
      break;
    }

    *v8 = 2;
    v9 = result + v1;
    *(v9 + 168) = 6553700;
    *(v9 + 172) = 100;
    *(v9 + 176) = 0;
    v10 = result + v3 + 328;
    if (v10 > result + 356)
    {
      break;
    }

    v11 = (result + v3 + 324);
    if (v11 > v10)
    {
      break;
    }

    *v11 = 0;
    v12 = result + v3 + 360;
    if (v12 > result + 388)
    {
      break;
    }

    v13 = (result + v3 + 356);
    if (v13 > v12)
    {
      break;
    }

    *v13 = 1;
    v3 += 4;
    v2 += 14;
    v1 += 20;
    if (v3 == 32)
    {
      return result;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t ddp_udc_int_set_dlb_buffer_from_bfd(uint64_t result, uint64_t a2, unsigned int a3)
{
  v3 = *(a2 + 32);
  *(result + 8) = v3;
  *result = a3;
  if (v3 == 1)
  {
    v4 = *(a2 + 28);
  }

  else
  {
    v4 = 1;
  }

  v5 = *(result + 16);
  if (v5 <= 4)
  {
    if (v5 == 3)
    {
      v81 = 0;
      v82 = *(a2 + 8);
      v83 = *a2;
      v84 = 4 * v4;
      v85 = a3;
      while (1)
      {
        v86 = *(result + 24) + v81;
        v87 = v86 + 24 > *(result + 32) || v86 >= v86 + 24;
        if (v87 || v86 < *(result + 40))
        {
          goto LABEL_155;
        }

        *v86 = v83;
        *(v86 + 8) = v82;
        v81 += 24;
        v83 = (v83 + v84);
        if (!--v85)
        {
          v89 = *(a2 + 28) * a3;
          if (v89 < 1)
          {
            return result;
          }

          v91 = *(a2 + 8);
          v90 = *(a2 + 16);
          for (i = *a2; ; ++i)
          {
            v93 = (i + 1) > v91 || i >= i + 1;
            if (v93 || i < v90)
            {
              break;
            }

            v95 = *i;
            if (*i < -1.0)
            {
              v95 = -1.0;
            }

            *i = fminf(v95, 1.0);
            if (!--v89)
            {
              return result;
            }
          }

          goto LABEL_155;
        }
      }
    }

    if (v5 == 4)
    {
      v21 = 0;
      v22 = *(a2 + 8);
      v23 = *a2;
      v24 = 2 * v4;
      v25 = a3;
      while (1)
      {
        v26 = *(result + 24) + v21;
        v27 = v26 + 24 > *(result + 32) || v26 >= v26 + 24;
        if (v27 || v26 < *(result + 40))
        {
          goto LABEL_155;
        }

        *v26 = v23;
        *(v26 + 8) = v22;
        v21 += 24;
        v23 = (v23 + v24);
        if (!--v25)
        {
          v29 = *(a2 + 28) * a3;
          if (!v29)
          {
            return result;
          }

          v31 = *(a2 + 8);
          v30 = *(a2 + 16);
          v32 = *a2;
          v33 = *a2;
          while (1)
          {
            v34 = v33 + 1;
            v35 = (v33 + 1) > v31 || v33 >= v34;
            v36 = !v35 && v33 >= v30;
            v37 = (v32 + 2);
            v38 = !v36 || v37 > v31;
            v39 = v38 || v32 >= v37;
            if (v39 || v32 < v30)
            {
              break;
            }

            v41 = rintf(*v33 * 32768.0);
            if (v41 <= -32768)
            {
              v41 = -32768;
            }

            if (v41 >= 0x7FFF)
            {
              LOWORD(v41) = 0x7FFF;
            }

            *v32 = v41;
            v32 = (v32 + 2);
            v33 = v34;
            if (!--v29)
            {
              return result;
            }
          }

          goto LABEL_155;
        }
      }
    }
  }

  else
  {
    switch(v5)
    {
      case 5:
        v42 = 0;
        v43 = *(a2 + 8);
        v44 = *a2;
        v45 = 4 * v4;
        v46 = a3;
        while (1)
        {
          v47 = *(result + 24) + v42;
          v48 = v47 + 24 > *(result + 32) || v47 >= v47 + 24;
          if (v48 || v47 < *(result + 40))
          {
            goto LABEL_155;
          }

          *v47 = v44;
          *(v47 + 8) = v43;
          v42 += 24;
          v44 = (v44 + v45);
          if (!--v46)
          {
            if (rintf(-1620100.0) == -1169833066)
            {
              return result;
            }

            v50 = *(a2 + 28) * a3;
            if (!v50)
            {
              return result;
            }

            v52 = *(a2 + 8);
            v51 = *(a2 + 16);
            for (j = *a2; ; ++j)
            {
              v54 = (j + 1) > v52 || j >= j + 1;
              if (v54 || j < v51)
              {
                break;
              }

              v56 = *j * 2147500000.0;
              if (v56 < -2147500000.0)
              {
                v56 = -2147500000.0;
              }

              v57 = rintf(v56);
              if (*j >= 1.0)
              {
                LODWORD(v57) = 0x7FFFFFFF;
              }

              *j = v57;
              if (!--v50)
              {
                return result;
              }
            }

            goto LABEL_155;
          }
        }

      case 6:
        v58 = 0;
        v59 = *(a2 + 8);
        v60 = *a2;
        v61 = 8 * v4;
        v62 = a3;
        while (1)
        {
          v63 = *(result + 24) + v58;
          v64 = v63 + 24 > *(result + 32) || v63 >= v63 + 24;
          if (v64 || v63 < *(result + 40))
          {
            goto LABEL_155;
          }

          *v63 = v60;
          *(v63 + 8) = v59;
          v58 += 24;
          v60 = (v60 + v61);
          if (!--v62)
          {
            v66 = *(a2 + 28) * a3;
            if (!v66)
            {
              return result;
            }

            v68 = *(a2 + 8);
            v67 = *(a2 + 16);
            v69 = *a2;
            v70 = *a2;
            while (1)
            {
              v71 = v70 + 1;
              v72 = (v70 + 1) > v68 || v70 >= v71;
              v73 = !v72 && v70 >= v67;
              v74 = v69 + 1;
              v75 = !v73 || v74 > v68;
              v76 = v75 || v69 >= v74;
              if (v76 || v69 < v67)
              {
                break;
              }

              v78 = *v70;
              v79 = *v70 * 2147500000.0;
              if (v79 < -2147500000.0)
              {
                v79 = -2147500000.0;
              }

              v80 = rintf(v79);
              if (v78 >= 1.0)
              {
                v80 = 0x7FFFFFFFLL;
              }

              *v69++ = v80;
              v70 = v71;
              if (!--v66)
              {
                return result;
              }
            }

            goto LABEL_155;
          }
        }

      case 7:
        v6 = 0;
        v7 = *(a2 + 8);
        v8 = *a2;
        v9 = 4 * v4;
        v10 = a3;
        while (1)
        {
          v11 = *(result + 24) + v6;
          v12 = v11 + 24 > *(result + 32) || v11 >= v11 + 24;
          if (v12 || v11 < *(result + 40))
          {
            break;
          }

          *v11 = v8;
          *(v11 + 8) = v7;
          v6 += 24;
          v8 = (v8 + v9);
          if (!--v10)
          {
            v14 = *(a2 + 28) * a3;
            if (!v14)
            {
              return result;
            }

            v16 = *(a2 + 8);
            v15 = *(a2 + 16);
            for (k = *a2; ; ++k)
            {
              v18 = (k + 1) > v16 || k >= k + 1;
              if (v18 || k < v15)
              {
                break;
              }

              v20 = *k;
              if (*k < -1.0)
              {
                v20 = -1.0;
              }

              *k = fminf(v20, 1.0);
              if (!--v14)
              {
                return result;
              }
            }

            break;
          }
        }

LABEL_155:
        __break(0x5519u);
        break;
    }
  }

  return result;
}

void ddp_udc_int_channel_remap_clear_r(int a1, int a2, void *a3, _WORD *a4)
{
  v4 = &ddp_udc_int_gbl_chantab[6 * a2];
  v5 = &v4[a1];
  v6 = (v5 + 1);
  if (v5 < v4 || v6 > (v4 + 6) || v5 >= v6)
  {
    goto LABEL_25;
  }

  if (*v5 != 2)
  {
    return;
  }

  v9 = *a3;
  v10 = *a3 + 48;
  v11 = *a3 + 72;
  v12 = v11 > a3[1] || v10 > v11;
  v13 = !v12 && v10 >= a3[2];
  if (!v13 || (v15 = v9[6], v14 = v9[7], v15 > v14) || ((v16 = v9[8], v14 - v15 >= 0x400) ? (v17 = v16 > v15) : (v17 = 1), v17 || (bzero(v15, 0x400uLL), v15 >= v15 + 1024)))
  {
LABEL_25:
    __break(0x5519u);
    return;
  }

  *a4 = -1;
}

uint64_t ddp_udc_int_channel_remap_split_ms(uint64_t result, int a2, void *a3, _WORD *a4)
{
  v4 = &ddp_udc_int_gbl_chantab + 12 * a2;
  v5 = &v4[2 * result];
  v6 = (v5 + 2);
  v8 = v5 < v4 || v6 > (v4 + 12) || v5 >= v6;
  if (v8)
  {
    goto LABEL_30;
  }

  if (*v5 != 3)
  {
    return result;
  }

  v10 = *a3;
  v9 = a3[1];
  v11 = *a3 + 72;
  v12 = *a3 + 96;
  v13 = v12 > v9 || v11 > v12;
  v14 = !v13 && v11 >= a3[2];
  if (!v14 || (v10 + 15) > v9 || v12 > (v10 + 15) || (v15 = v10[12], v16 = v10[13], v15 > v16) || (v17 = v10[9], v18 = v10[10], v8 = v18 >= v17, v19 = v18 - v17, !v8) || v10[11] > v17 || v10[14] > v15 || v19 < 1021 || (v16 - v15) < 1021)
  {
LABEL_30:
    __break(0x5519u);
    return result;
  }

  for (i = 0; i != 1024; i += 4)
  {
    v21 = *(v17 + i) * 0.70711;
    *(v17 + i) = v21;
    *(v15 + i) = v21;
  }

  *a4 = 4;
  return result;
}

uint64_t ddp_udc_int_channel_remap_split_cs(uint64_t result, int a2, void *a3, _WORD *a4)
{
  if (result == 2)
  {
    v4 = &ddp_udc_int_gbl_chantab + 12 * a2;
    v5 = v4 + 12;
    v6 = (v4 + 4);
    v7 = v4 + 6;
    if (v4 + 4 < v4 || v7 > v5 || v6 > v7)
    {
      goto LABEL_56;
    }

    v10 = *v6;
    if (a2 == 7)
    {
      v11 = 3;
    }

    else
    {
      if (a2 != 6)
      {
        v12 = &ddp_udc_int_gbl_chanary[a2];
        if (v12 < ddp_udc_int_gbl_chanary || v12 + 1 > block_size || v12 > v12 + 1)
        {
          goto LABEL_56;
        }

        v13 = &v4[2 * (*v12 - 1)];
        v14 = v13 + 2;
        v15 = v13 < v4 || v14 > v5;
        if (v15 || v13 >= v14)
        {
          goto LABEL_56;
        }

        LOWORD(v11) = *v13 + 1;
        *a4 = v11;
        v11 = v11;
LABEL_25:
        v17 = a3[1];
        v18 = a3[2];
        v19 = (*a3 + 24 * v10);
        if ((v19 + 3) <= v17 && v19 < v19 + 3 && v19 >= v18)
        {
          v22 = (*a3 + 24 * v11);
          v23 = (v22 + 3) > v17 || v22 >= v22 + 3;
          if (!v23 && v22 >= v18)
          {
            v25 = *v22;
            v26 = v22[1];
            if (*v22 <= v26)
            {
              v27 = *v19;
              v28 = v19[1];
              v29 = v19[2];
              v30 = v22[2];
              v31 = (v26 - v25) < 1021 || v30 > v25;
              v32 = v31 || v27 > v28;
              v33 = v32 || v29 > v27;
              if (!v33 && (v28 - v27) >= 1021)
              {
                for (i = 0; i != 1024; i += 4)
                {
                  v35 = *(v27 + i) * 0.70711;
                  *(v27 + i) = v35;
                  *(v25 + i) = v35;
                }

                return result;
              }
            }
          }
        }

LABEL_56:
        __break(0x5519u);
        return result;
      }

      v11 = 1;
    }

    *a4 = v11;
    goto LABEL_25;
  }

  return result;
}

void ddp_udc_int_mixer_open(uint64_t a1, unint64_t a2)
{
  v4 = a2 + 1;
  v5 = (a2 + 31) & 0xFFFFFFFFFFFFFFE0;
  if (v5)
  {
    v6 = v5 + 4;
    if (v5 < a2 || v6 > v4 || v5 >= v6)
    {
      goto LABEL_29;
    }

    ddp_udc_int_ms_mixer_open((a2 + 31) & 0xFFFFFFFFFFFFFFE0);
    v9 = v5;
  }

  else
  {
    ddp_udc_int_ms_mixer_open(0);
    v9 = 0;
  }

  *a1 = v9;
  v10 = v5 + 973;
  if (v5 + 973 <= v4 && v10 >= a2 && v4 - v10 >= 0xC1F)
  {
    v12 = v5 + 167;
    if (v5 + 167 <= v4 && v12 >= a2 && v4 - v12 >= 0x326)
    {
      v13 = ddp_udc_int_dvlim_init(8u, v12, 806, v10, 3103);
      v14 = v13;
      *(a1 + 8) = v13;
      *(a1 + 72) = -1;
      v15 = v13;
      if (!*v13)
      {
        v15 = v13;
        if (!v13[3])
        {
          dvlim_clear_delay_lines_0(v13);
          v15 = *(a1 + 8);
        }
      }

      *v14 = 1;
      v16 = v15;
      if (v15[3])
      {
        v16 = v15;
        if (*v15)
        {
          dvlim_clear_delay_lines_0(v15);
          v16 = *(a1 + 8);
        }
      }

      v15[3] = 0;
      v16[43] = 1006632960;
      *(v16 + 1) = 0x3C0000003F000000;
      bzero((a1 + 8268), 0x2000uLL);
      if (a1 + 8268 <= (a1 + 16460))
      {
        bzero((a1 + 16460), 0x1800uLL);
        if (a1 + 16460 <= (a1 + 22604))
        {
          *(a1 + 62) = 0;
          *(a1 + 36) = -1;
          *(a1 + 40) = 51;
          *(a1 + 42) = -1;
          *(a1 + 50) = -1;
          *(a1 + 58) = 0xFFFF;
          *(a1 + 24) = 0;
          *(a1 + 22608) = xmmword_19B0B2ED0;
          bzero((a1 + 76), 0x2000uLL);
          *(a1 + 22624) = 0xFFFFFFFFLL;
          return;
        }
      }
    }
  }

LABEL_29:
  __break(0x5519u);
}

uint64_t ddp_udc_int_dil_unpack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v5 = 0x100000001;
  *(&v5 + 1) = 0x100000001;
  *a2 = xmmword_19B0B2E90;
  *(a2 + 16) = v5;
  *(a2 + 32) = -512;
  if (a3)
  {
    *(a3 + 48) = 63487;
  }

  v32 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v30 = v6;
  v31 = v6;
  memset(v29, 170, sizeof(v29));
  v7 = *(a1 + 72);
  v8 = 8 * v7;
  if (!(8 * v7) || *(a1 + 80))
  {
    *(&v30 + 1) = *(a1 + 80);
    v31 = *(a1 + 88);
    LOWORD(v30) = 8;
    v32 = 8 * v7;
  }

  ddp_udc_int_dil_brw_read(&v30, 2u, &v29[1]);
  if (v8 < 2)
  {
    return 4294967293;
  }

  v10 = v29[1];
  if (v29[1] == 3)
  {
    ddp_udc_int_dil_brw_read(&v30, 4u, &v29[2]);
    v10 = v29[1] + v29[2];
    v29[1] += v29[2];
    LODWORD(v11) = 7;
  }

  else
  {
    LODWORD(v11) = 3;
  }

  if (v10 > 3)
  {
    return 4294967292;
  }

  ddp_udc_int_dil_brw_read(&v30, 1u, v29);
  if (v8 < v11)
  {
    return 4294967293;
  }

  if (v29[0])
  {
    ddp_udc_int_dil_brw_read(&v30, 3u, &v29[2]);
    v11 = (v11 + 3);
    if (v8 < v11)
    {
      return 4294967293;
    }

    v12 = v29[2];
  }

  else
  {
    v12 = -2;
  }

  *a2 = v12;
  ddp_udc_int_dil_brw_read(&v30, 4u, &v29[2]);
  v13 = (v11 + 4);
  if (v8 < v13)
  {
    return 4294967293;
  }

  v14 = v29[2];
  *(a2 + 4) = v29[2];
  if (v14)
  {
    ddp_udc_int_dil_brw_read(&v30, 1u, &v29[2]);
    if (v8 < (v11 + 5))
    {
      return 4294967293;
    }

    *(a2 + 8) = v29[2];
    ddp_udc_int_dil_brw_read(&v30, 1u, &v29[2]);
    v13 = (v11 + 6);
    if (v8 < v13)
    {
      return 4294967293;
    }

    *(a2 + 12) = v29[2];
  }

  ddp_udc_int_dil_brw_read(&v30, 1u, v29);
  v15 = (v13 + 1);
  if (v8 < v15)
  {
    return 4294967293;
  }

  if (v29[0])
  {
    ddp_udc_int_dil_brw_read(&v30, 7u, &v29[2]);
    v15 = (v13 + 8);
    if (v8 < v15)
    {
      return 4294967293;
    }

    v16 = (LOWORD(v29[2]) - 116);
  }

  else
  {
    v16 = -512;
  }

  *(a2 + 16) = v16;
  ddp_udc_int_dil_brw_read(&v30, 1u, v29);
  v17 = (v15 + 1);
  if (v8 < v17)
  {
    return 4294967293;
  }

  if (v29[0])
  {
    ddp_udc_int_dil_brw_read(&v30, 7u, &v29[2]);
    v17 = (v15 + 8);
    if (v8 < v17)
    {
      return 4294967293;
    }

    v18 = (LOWORD(v29[2]) - 116);
  }

  else
  {
    v18 = -512;
  }

  *(a2 + 20) = v18;
  ddp_udc_int_dil_brw_read(&v30, 1u, v29);
  v19 = (v17 + 1);
  if (v8 < v19)
  {
    return 4294967293;
  }

  if (v29[0])
  {
    ddp_udc_int_dil_brw_read(&v30, 8u, &v29[2]);
    v19 = (v17 + 9);
    if (v8 < v19)
    {
      return 4294967293;
    }

    v20 = ((LODWORD(v29[2]) << 16) - 15204352) >> 16;
  }

  else
  {
    v20 = -512;
  }

  *(a2 + 24) = v20;
  ddp_udc_int_dil_brw_read(&v30, 1u, v29);
  v21 = (v19 + 1);
  if (v8 < v21)
  {
    return 4294967293;
  }

  if (v29[0])
  {
    ddp_udc_int_dil_brw_read(&v30, 8u, &v29[2]);
    v21 = (v19 + 9);
    if (v8 < v21)
    {
      return 4294967293;
    }

    v22 = (LOWORD(v29[2]) - 116);
  }

  else
  {
    v22 = -512;
  }

  *(a2 + 28) = v22;
  ddp_udc_int_dil_brw_read(&v30, 1u, v29);
  v23 = (v21 + 1);
  if (v8 < v23)
  {
    return 4294967293;
  }

  if (!v29[0])
  {
    v24 = -512;
    goto LABEL_51;
  }

  ddp_udc_int_dil_brw_read(&v30, 5u, &v29[2]);
  v23 = (v21 + 6);
  if (v8 < v23)
  {
    return 4294967293;
  }

  if (v29[2] == 31)
  {
    v24 = 0;
  }

  else
  {
    v24 = ((LODWORD(v29[2]) << 16) - 983040) >> 16;
  }

LABEL_51:
  *(a2 + 32) = v24;
  ddp_udc_int_dil_brw_read(&v30, 1u, v29);
  v25 = (v23 + 1);
  if (v8 < v25)
  {
    return 4294967293;
  }

  if (v29[0])
  {
    v26 = 0;
    v29[2] = 0;
    while (1)
    {
      v27 = v25;
      v28 = v26;
      ddp_udc_int_dil_brw_read(&v30, 1u, &v29[2]);
      LODWORD(v25) = v27 + 1;
      if (v8 < (v27 + 1))
      {
        break;
      }

      v26 = v28 + 1;
      if (v29[2])
      {
        *(a3 + 48) = 1 << v28;
        ddp_udc_int_dil_brw_read(&v30, 1u, &v29[2]);
        if (v8 >= (v27 + 2))
        {
          if (!v29[2])
          {
            *(a3 + 48) = -*(a3 + 48);
          }

          ddp_udc_int_dil_brw_read(&v30, 1u, v29);
          if (v8 >= (v27 + 3))
          {
            if (!v29[0])
            {
              return 0;
            }

            ddp_udc_int_dil_brw_read(&v30, 0xBu, &v29[2]);
            if (v8 >= (v27 + 14))
            {
              result = 0;
              *(a3 + 50) = v29[2];
              return result;
            }
          }
        }

        return 4294967293;
      }
    }

    return 4294967293;
  }

  return 0;
}

uint64_t ddp_udc_int_evobh_end_excluded_segment(uint64_t result, unsigned int a2)
{
  if (!*(result + 348))
  {
    return 2;
  }

  v2 = *(result + 352);
  v3 = (result + 336);
  v4 = *(result + 336);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = result + 80;
    v7 = (result + 80);
    while (v7 >= v6 && v7 + 2 <= v3 && v7 <= v7 + 2)
    {
      if (*v7 == v2)
      {
        goto LABEL_37;
      }

      if (*v7 > v2)
      {
        if (v4 <= v5)
        {
LABEL_32:
          LODWORD(v4) = v5;
          goto LABEL_33;
        }

        v9 = (result + 8 * v4 + 72);
        while (1)
        {
          v10 = v9 + 2;
          v11 = v9 + 4;
          v12 = (v9 + 2) < v6 || v11 > v3;
          v13 = v12 || v10 > v11;
          v14 = !v13 && v9 >= v6;
          v15 = !v14 || v10 > v3;
          if (v15 || v9 > v10)
          {
            goto LABEL_39;
          }

          *(v9 + 1) = *v9;
          --v4;
          v9 -= 2;
          if (v4 <= v5)
          {
            goto LABEL_32;
          }
        }
      }

      ++v5;
      v7 += 2;
      if (v4 == v5)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_39;
  }

  LODWORD(v4) = 0;
LABEL_33:
  v17 = (result + 80 + 8 * v4);
  if (v17 >= result + 80 && v17 + 2 <= v3 && v17 <= v17 + 2)
  {
    *v17 = v2;
    v17[1] = a2;
    ++*v3;
LABEL_37:
    v8 = 0;
    *(result + 348) = 0;
    return v8;
  }

LABEL_39:
  __break(0x5519u);
  return result;
}

void ddp_udc_int_decorr_init(uint64_t a1)
{
  v2 = 0;
  *(*(a1 + 13744) + 4) = 0;
  *(a1 + 13724) = 0u;
  while (1)
  {
    v3 = a1 + v2;
    v4 = (a1 + v2 + 1300);
    v5 = a1 + v2 + 1304;
    if (v5 > a1 + 1324 || v4 > v5)
    {
      break;
    }

    *v4 = 0;
    v7 = v3 + 1328;
    if (v3 + 1328 > (a1 + 1348))
    {
      break;
    }

    v8 = (v3 + 1324);
    if (v8 > v7)
    {
      break;
    }

    *v8 = 0;
    v2 += 4;
    if (v2 == 24)
    {
      v9 = 0;
      v10 = 0;
      *(a1 + 13120) = 6;
      v51 = a1 + 8;
      v49 = (a1 + 1348);
      v50 = a1 + 584;
LABEL_10:
      v11 = v51 + 96 * v10;
      v12 = v50 + 96 * v10;
      v13 = 4;
      v14 = v9;
      while (1)
      {
        v15 = (a1 + v14 + 8);
        v16 = a1 + v14 + 32;
        v17 = v15 < v11 || v16 > v11 + 96;
        if (v17 || v15 > v16)
        {
          goto LABEL_72;
        }

        v19 = *v15;
        v20 = *(a1 + v14 + 16);
        if (*v15 > v20)
        {
          goto LABEL_72;
        }

        if (v20 - v19 < 0x400 || *(a1 + v14 + 24) > v19)
        {
          goto LABEL_72;
        }

        bzero(v19, 0x400uLL);
        if (v19 >= v19 + 1024)
        {
          goto LABEL_72;
        }

        v22 = (a1 + v14 + 584);
        if (v22 < v12)
        {
          goto LABEL_72;
        }

        v23 = a1 + v14 + 608;
        if (v23 > v12 + 96)
        {
          goto LABEL_72;
        }

        if (v22 > v23)
        {
          goto LABEL_72;
        }

        v24 = *v22;
        v25 = *(a1 + v14 + 592);
        if (*v22 > v25)
        {
          goto LABEL_72;
        }

        if (v25 - v24 < 0x400)
        {
          goto LABEL_72;
        }

        if (*(a1 + v14 + 600) > v24)
        {
          goto LABEL_72;
        }

        bzero(v24, 0x400uLL);
        if (v24 >= v24 + 1024)
        {
          goto LABEL_72;
        }

        v14 += 24;
        if (!--v13)
        {
          ++v10;
          v9 += 96;
          if (v10 != 6)
          {
            goto LABEL_10;
          }

          v26 = 0;
          *(a1 + 13040) = 3;
          v27 = a1 + 4204;
          v28 = a1 + 4756;
          v29 = a1 + 5308;
          v30 = a1 + 5860;
          while (1)
          {
            v31 = (a1 + v26);
            v32 = (a1 + v26 + 3652);
            v33 = a1 + v26 + 3656;
            v34 = v33 > v27 || v32 > v33;
            v35 = !v34 && v32 >= a1 + 3652;
            if (!v35)
            {
              goto LABEL_72;
            }

            v36 = v27 + v26;
            *v32 = 0;
            if (v27 + v26 < v27)
            {
              goto LABEL_72;
            }

            if (v36 + 4 > v28)
            {
              goto LABEL_72;
            }

            if (v36 > v36 + 4)
            {
              goto LABEL_72;
            }

            v31[1051] = 0;
            v37 = v27 + v26 + 556;
            if (v37 > v29)
            {
              goto LABEL_72;
            }

            if (v36 + 552 > v37)
            {
              goto LABEL_72;
            }

            if (v36 + 552 < v28)
            {
              goto LABEL_72;
            }

            v31[1189] = 0;
            v38 = v27 + v26 + 1108;
            if (v38 > v30)
            {
              goto LABEL_72;
            }

            v39 = v36 + 1104;
            if (v39 > v38 || v39 < v29)
            {
              goto LABEL_72;
            }

            v31[1327] = 1065353216;
            v26 += 4;
            if (v26 == 552)
            {
              bzero(v49, 0x900uLL);
              v40 = -138;
              v41 = (a1 + 5860);
              while (1)
              {
                v42 = (v41 + 1) > a1 + 6412 || v41 >= v41 + 1;
                if (v42 || v41 < v30)
                {
                  goto LABEL_72;
                }

                *v41++ = 0;
                v35 = __CFADD__(v40++, 1);
                if (v35)
                {
                  v44 = 0;
                  v45 = a1 + 13388;
                  while (1)
                  {
                    v46 = v45 + v44;
                    v47 = v45 + v44 - 20;
                    if (v47 > v45 || v45 + v44 - 24 > v47)
                    {
                      break;
                    }

                    *(a1 + v44 + 13364) = 0;
                    if (v46 + 4 > a1 + 13412 || v46 > v46 + 4)
                    {
                      break;
                    }

                    *(a1 + v44 + 13388) = 0;
                    v44 += 4;
                    if (v44 == 24)
                    {
                      *a1 = 0;
                      return;
                    }
                  }

                  goto LABEL_72;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_72:
  __break(0x5519u);
}

unint64_t run_allpass_serialized(unint64_t result, int a2, uint64_t a3, int *a4, unint64_t a5, unint64_t a6)
{
  v6 = a6 + 96;
  v7 = (a6 + 24 * *a4);
  v8 = v7 + 3;
  if (v7 < a6 || v8 > v6 || v7 > v8)
  {
LABEL_110:
    __break(0x5519u);
    return result;
  }

  v11 = a2 - result;
  if (a2 > result)
  {
    v12 = a5 + 96;
    v13 = (a5 + 24 * a4[1]);
    v14 = (a6 + 24 * a4[1]);
    v17 = (v14 + 3) <= v6 && v14 <= v14 + 3 && v14 >= a6;
    v73 = v17;
    v18 = (a5 + 24 * *a4);
    v21 = (v18 + 3) <= v12 && v18 <= v18 + 3 && v18 >= a5;
    v72 = v21;
    if (v13 >= a5 && (v13 + 3) <= v12 && v13 <= v13 + 3)
    {
      v22 = *v7;
      v71 = v7[1];
      v23 = v7[2];
      v24 = result;
      result = *(a3 + 16);
      v25 = 4 * v24;
      v26 = v13[2];
      while (1)
      {
        v27 = (*v13 + v25);
        v28 = (v27 + 1) > v13[1] || v27 > v27 + 1;
        if (v28 || v27 < v26)
        {
          break;
        }

        v30 = a4[3];
        v31 = (a6 + 24 * v30);
        v32 = v31 + 3;
        v33 = v31 < a6 || v32 > v6;
        if (v33 || v31 > v32)
        {
          break;
        }

        v35 = *a3;
        v36 = *(a3 + 8);
        v37 = *v31;
        v38 = v31[1];
        v39 = v31[2];
        v40 = (v37 + v25);
        v41 = v37 + v25 + 4;
        v42 = v41 > v38 || v40 > v41;
        v43 = !v42 && v40 >= v39;
        v44 = v35 + 1;
        v45 = !v43 || v44 > v36;
        v46 = v45 || v35 > v44;
        if (v46 || v35 < result)
        {
          break;
        }

        v48 = a4[2];
        v49 = (a5 + 24 * v48);
        v50 = v49 + 3;
        v51 = v49 < a5 || v50 > v12;
        if (v51 || v49 > v50)
        {
          break;
        }

        v53 = *v49;
        v54 = v49[1];
        v55 = v49[2];
        v56 = (v53 + v25);
        v57 = v53 + v25 + 4;
        v58 = v57 > v54 || v56 > v57;
        if (v58 || v56 < v55)
        {
          break;
        }

        v60 = (a6 + 24 * v48);
        if (v60 < a6)
        {
          break;
        }

        if ((v60 + 3) > v6)
        {
          break;
        }

        if (v60 > v60 + 3)
        {
          break;
        }

        v61 = (*v60 + v25);
        if ((v61 + 1) > v60[1])
        {
          break;
        }

        if (v61 > v61 + 1)
        {
          break;
        }

        if (v61 < v60[2])
        {
          break;
        }

        v62 = v35 + 2;
        if ((v35 + 2) > v36)
        {
          break;
        }

        if (v44 > v62)
        {
          break;
        }

        v63 = (a5 + 24 * v30);
        if (v63 < a5)
        {
          break;
        }

        if ((v63 + 3) > v12)
        {
          break;
        }

        if (v63 > v63 + 3)
        {
          break;
        }

        v64 = (*v63 + v25);
        if ((v64 + 1) > v63[1])
        {
          break;
        }

        if (v64 > v64 + 1)
        {
          break;
        }

        if (v64 < v63[2])
        {
          break;
        }

        if (!v73)
        {
          break;
        }

        v65 = (*v14 + v25);
        if ((v65 + 1) > v14[1])
        {
          break;
        }

        if (v65 > v65 + 1)
        {
          break;
        }

        if (v65 < v14[2])
        {
          break;
        }

        if ((v35 + 3) > v36)
        {
          break;
        }

        if (v62 > v35 + 3)
        {
          break;
        }

        if (!v72)
        {
          break;
        }

        v66 = (*v18 + v25);
        if ((v66 + 1) > v18[1])
        {
          break;
        }

        if (v66 > v66 + 1)
        {
          break;
        }

        v67 = v18[2];
        if (v66 < v67)
        {
          break;
        }

        v68 = v22 + v25 + 4;
        if (v68 > v71)
        {
          break;
        }

        v69 = (v22 + v25);
        if (v22 + v25 > v68)
        {
          break;
        }

        if (v69 < v23)
        {
          break;
        }

        *v69 = (((*v35 * (*v27 - *v40)) + (*v44 * (*v56 - *v61))) + (*v62 * (*v64 - *v65))) + *v66;
        v70 = (*v18 + v25);
        if ((v70 + 1) > v18[1] || v70 > v70 + 1 || v70 < v67)
        {
          break;
        }

        *v70 = 0;
        v25 += 4;
        if (!--v11)
        {
          return result;
        }
      }
    }

    goto LABEL_110;
  }

  return result;
}

unsigned __int16 *ddp_udc_int_crc_calcfwd(unsigned __int16 *result, int a2, _WORD *a3)
{
  *a3 = 0;
  if (a2 >= 1)
  {
    v3 = 0;
    v4 = a2;
    while (1)
    {
      v5 = &ddp_udc_int_crcfwdtab[BYTE1(v3)];
      v6 = v5 + 1;
      v7 = v5 < ddp_udc_int_crcfwdtab || v6 > ddp_udc_int_qntz7lev;
      if (v7 || v5 > v6)
      {
        break;
      }

      HIDWORD(v9) = v3;
      LODWORD(v9) = *result << 16;
      v10 = (v9 >> 24) ^ *v5;
      *a3 = (v9 >> 24) ^ *v5;
      v11 = &ddp_udc_int_crcfwdtab[BYTE1(v10)];
      v12 = v11 + 1;
      v13 = v11 < ddp_udc_int_crcfwdtab || v12 > ddp_udc_int_qntz7lev;
      if (v13 || v11 > v12)
      {
        break;
      }

      v15 = *result++;
      v3 = (v15 | (v10 << 8)) ^ *v11;
      *a3 = v3;
      if (!--v4)
      {
        return result;
      }
    }

    __break(0x5519u);
  }

  return result;
}

void ddp_udc_int_BED_open(unint64_t a1, uint64_t a2, unsigned __int8 *a3, unint64_t *a4, void *a5, int a6)
{
  bzero(a1, 0xF40uLL);
  if (a1 + 3904 >= a1)
  {
    v11 = 0;
    while (*(a1 + v11))
    {
      if (++v11 == 32)
      {
        goto LABEL_9;
      }
    }

    if (v11 <= 0x1F)
    {
      do
      {
        v12 = *a3++;
        *(a1 + v11) = v12;
        if (!v12)
        {
          break;
        }

        ++v11;
      }

      while (v11 != 32);
    }

LABEL_9:
    v92 = a6;
    v13 = 0;
    v14 = a1 + 2808;
    v91 = a2;
    *(a1 + 2808) = a2;
    *(a1 + 1376) = 1;
    v15 = a5[1];
    v16 = (*a5 + 31) & 0xFFFFFFFFFFFFFFE0;
    v17 = (a1 + 2544);
    v18 = a5[2];
    v94 = v15;
    v95 = a1;
    v19 = a1 + 2688;
    v20 = v15 - v16;
    v21 = -20487;
    v22 = 6;
    while ((v17 + 3) <= v19 && v17 < v17 + 3)
    {
      v24 = (v13 + v16);
      if (v13 + v16 > v94)
      {
        break;
      }

      if (v18 > v24)
      {
        break;
      }

      if (v20 <= 0x3FF)
      {
        break;
      }

      *v17 = v24;
      v17[1] = v24 + 1024;
      v17[2] = v24;
      if (v24 >= v24 + 1024)
      {
        break;
      }

      bzero(v24, 0x400uLL);
      v13 += 1024;
      v21 -= 1024;
      v17 += 3;
      v20 -= 1024;
      if (!--v22)
      {
        v25 = (v13 + v16);
        if (v94 >= v13 + v16 && v94 - (v13 + v16) >= 0x5000)
        {
          v26 = 0;
          v90 = v25 - 1024;
          v27 = v25 + 20480;
          v28 = v16 - v21;
          v29 = v13 + v16;
          v30 = v19;
          while ((v30 + 3) <= v14)
          {
            if (v30 > v30 + 3)
            {
              break;
            }

            v31 = v29 + v26;
            if (v29 + v26 > v27)
            {
              break;
            }

            if (v25 > v31)
            {
              break;
            }

            v32 = v29 + v26 + 4096;
            *v30 = v31;
            v30[1] = v32;
            v30[2] = v29 + v26;
            if (v29 + v26 > v32)
            {
              break;
            }

            bzero((v13 + v16 + v26), 0x1000uLL);
            v30 += 3;
            v26 += 4096;
            if (v26 == 20480)
            {
              v33 = 0;
              *(v95 + 32) = 0x1000700000001;
              *(v95 + 40) = 6;
              *(v95 + 42) = 0x1000000000000;
              *(v95 + 60) = 100;
              *(v95 + 52) = 0x64006400000002;
              *(v95 + 64) = 0;
              *(v95 + 72) = xmmword_19B0B2EE0;
              *(v95 + 88) = 0;
              v34 = v95 + 624;
              v35 = v95 + 768;
              while (1)
              {
                v36 = v95 + v33;
                v37 = (v95 + v33 + 480);
                v38 = v95 + v33 + 504;
                v39 = v38 > v34 || v37 > v38;
                v40 = v36 + 2544;
                v41 = v36 + 2568;
                v42 = v39 || v41 > v19;
                if (v42 || v40 > v41)
                {
                  goto LABEL_117;
                }

                *v37 = *v40;
                *(v95 + v33 + 496) = *(v36 + 2560);
                v44 = v36 + 648;
                if (v36 + 648 > v35)
                {
                  goto LABEL_117;
                }

                v45 = v36 + 624;
                if (v45 > v44)
                {
                  goto LABEL_117;
                }

                *v45 = *v40;
                *(v45 + 16) = *(v40 + 16);
                v33 += 24;
                if (v33 == 144)
                {
                  v46 = *a4;
                  if (!*a4 || v46 < v46 + 0x8000 && v46 + 0x8000 <= a4[1] && v46 >= a4[2])
                  {
                    *(v95 + 472) = v46;
                    SDCT_IV<256ul>::Instance();
                    *(v95 + 1352) = &SDCT_IV<256ul>::Instance(void)::instance;
                    SDCT_IV<128ul>::Instance();
                    v47 = v95;
                    v48 = 0;
                    *(v95 + 1360) = &SDCT_IV<128ul>::Instance(void)::instance;
                    *(v95 + 454) = -1;
                    *(v95 + 462) = 0;
                    v49 = (v95 + 304);
LABEL_47:
                    v50 = v95 + 304 + 24 * v48;
                    v51 = v50 + 24;
                    v52 = v49;
                    v53 = 6;
                    while (v52 >= v50 && (v52 + 1) <= v51 && v52 <= v52 + 1)
                    {
                      *v52++ = 0;
                      if (!--v53)
                      {
                        v54 = (v50 + 4 * v48);
                        if (v54 >= v50 && (v54 + 1) <= v51 && v54 <= v54 + 1)
                        {
                          *v54 = 1065353216;
                          ++v48;
                          v49 += 6;
                          if (v48 != 6)
                          {
                            goto LABEL_47;
                          }

                          v89 = v28;
                          v55 = 0;
                          v56 = 0;
                          while (1)
                          {
                            v57 = (v47 + v56 + 1272);
                            if (v47 + v56 != -1272)
                            {
                              v58 = v47 + v56 + 1284;
                              if (v58 > v95 + 1332 || v57 > v58)
                              {
                                break;
                              }
                            }

                            v59 = v47 + v55 + 984;
                            if (v59 > v95 + 1272)
                            {
                              break;
                            }

                            v60 = (v47 + v55 + 912);
                            if (v60 > v59)
                            {
                              break;
                            }

                            *v60 = v25;
                            v61 = (v47 + v55);
                            v61[115] = v25 + 4096;
                            v61[116] = v25;
                            v61[117] = v25;
                            v61[118] = v25 + 4096;
                            v61[119] = v25;
                            v61[120] = v25;
                            v61[121] = v25 + 4096;
                            v61[122] = v25;
                            *(v47 + v56 + 1280) = 0;
                            *v57 = 0;
                            *(v47 + v56 + 1282) = 1536;
                            bzero(v25, 0x1000uLL);
                            v47 = v95;
                            v56 += 12;
                            v55 += 72;
                            v25 += 4096;
                            if (v56 == 60)
                            {
                              v62 = 6;
                              while (v34 + 24 <= v35 && v34 < v34 + 24)
                              {
                                v65 = *v34;
                                v64 = *(v34 + 8);
                                if (*v34 > v64)
                                {
                                  break;
                                }

                                if (v64 - v65 < 0x400 || *(v34 + 16) > v65)
                                {
                                  break;
                                }

                                bzero(*v34, 0x400uLL);
                                if (v65 >= v65 + 1024)
                                {
                                  break;
                                }

                                v67 = v95;
                                if (v34 + 168 > v95 + 912)
                                {
                                  break;
                                }

                                if (v34 + 144 > v34 + 168)
                                {
                                  break;
                                }

                                v68 = *(v34 + 144);
                                if (v68)
                                {
                                  v69 = *(v34 + 152);
                                  if (v68 > v69)
                                  {
                                    break;
                                  }

                                  if (v69 - v68 < 0x200)
                                  {
                                    break;
                                  }

                                  if (*(v34 + 160) > v68)
                                  {
                                    break;
                                  }

                                  v68[30] = 0u;
                                  v68[31] = 0u;
                                  v68[28] = 0u;
                                  v68[29] = 0u;
                                  v68[26] = 0u;
                                  v68[27] = 0u;
                                  v68[24] = 0u;
                                  v68[25] = 0u;
                                  v68[22] = 0u;
                                  v68[23] = 0u;
                                  v68[20] = 0u;
                                  v68[21] = 0u;
                                  v68[18] = 0u;
                                  v68[19] = 0u;
                                  v68[16] = 0u;
                                  v68[17] = 0u;
                                  v68[14] = 0u;
                                  v68[15] = 0u;
                                  v68[12] = 0u;
                                  v68[13] = 0u;
                                  v68[10] = 0u;
                                  v68[11] = 0u;
                                  v68[8] = 0u;
                                  v68[9] = 0u;
                                  v68[6] = 0u;
                                  v68[7] = 0u;
                                  v68[4] = 0u;
                                  v68[5] = 0u;
                                  v68[2] = 0u;
                                  v68[3] = 0u;
                                  *v68 = 0u;
                                  v68[1] = 0u;
                                  if (v68 >= v68 + 32)
                                  {
                                    break;
                                  }
                                }

                                v34 += 24;
                                if (!--v62)
                                {
                                  *(v95 + 448) = 1;
                                  *(v95 + 3896) = -1;
                                  if (!v92)
                                  {
                                    v72 = 0;
LABEL_116:
                                    *(v67 + 1344) = v72;
                                    return;
                                  }

                                  if (v94 >= v27 && v94 - v27 > 0xFEEE && v91 + 79812 <= (v91 + 79820))
                                  {
                                    v70 = 0;
                                    v71 = (v90 + 86767);
                                    v72 = (v27 + 7) & 0xFFFFFFFFFFFFFFF8;
                                    v73 = (v90 + 36127);
                                    v74 = v72 + 14616 > (v90 + 86767) || v27 > v72;
                                    v75 = !v74;
                                    v76 = v89 & 0xFFFFFFFFFFFFFFF8;
LABEL_93:
                                    if (v75)
                                    {
                                      v77 = 0;
                                      v78 = v72 + 8 + 96 * v70;
                                      v79 = v72 + 584 + 96 * v70;
                                      while (1)
                                      {
                                        v80 = v76 + v77 + 8;
                                        v81 = v76 + v77 + 32;
                                        v82 = v80 < v78 || v81 > v78 + 96;
                                        if (v82 || v80 > v81)
                                        {
                                          break;
                                        }

                                        v84 = (v73 + 31) & 0xFFFFFFFFFFFFFFE0;
                                        if (v71 - v84 < 0x400)
                                        {
                                          break;
                                        }

                                        if (v84 > v71)
                                        {
                                          break;
                                        }

                                        if (v27 > v84)
                                        {
                                          break;
                                        }

                                        *(v76 + v77 + 8) = v84;
                                        v85 = (v76 + v77);
                                        v85[2] = v84 + 1024;
                                        v85[3] = v84;
                                        v86 = v76 + v77 + 584;
                                        if (v86 < v79)
                                        {
                                          break;
                                        }

                                        if ((v85 + 76) > v79 + 96)
                                        {
                                          break;
                                        }

                                        if (v86 > (v85 + 76))
                                        {
                                          break;
                                        }

                                        v87 = (v84 + 1055) & 0xFFFFFFFFFFFFFFE0;
                                        if (v71 - v87 < 0x400 || v87 > v71 || v27 > v87)
                                        {
                                          break;
                                        }

                                        v73 = v87 + 1024;
                                        v85[73] = v87;
                                        v88 = v76 + v77;
                                        *(v88 + 592) = v87 + 1024;
                                        *(v88 + 600) = v87;
                                        v77 += 24;
                                        if (v77 == 96)
                                        {
                                          ++v70;
                                          v76 += 96;
                                          if (v70 != 6)
                                          {
                                            goto LABEL_93;
                                          }

                                          *(v72 + 13744) = v91 + 79812;
                                          if (v72 <= v72 + 14616)
                                          {
                                            ddp_udc_int_decorr_init((v27 + 7) & 0xFFFFFFFFFFFFFFF8);
                                            v67 = v95;
                                            goto LABEL_116;
                                          }

                                          goto LABEL_117;
                                        }
                                      }
                                    }
                                  }

                                  goto LABEL_117;
                                }
                              }

                              goto LABEL_117;
                            }
                          }
                        }

                        goto LABEL_117;
                      }
                    }
                  }

                  goto LABEL_117;
                }
              }
            }
          }
        }

        break;
      }
    }
  }

LABEL_117:
  __break(0x5519u);
}

void ddp_udc_int_BED_run(uint64_t a1, void (*a2)(void, void, void *, __int16 *))
{
  v4 = 0;
  *&v215[4] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 2808);
  v6 = a1 + 2816;
  v7 = v5 + 136;
  v8 = (v5 + 7924);
  do
  {
    v9 = &v7[1298 * v4];
    if (v9 + 5192 > v8 || v9 > v9 + 5192)
    {
      goto LABEL_282;
    }

    v11 = 0;
    v12 = v6 + 24 * v4;
    v13 = v9 + 2280;
    v14 = v9 + 2304;
    v15 = 1;
    do
    {
      v16 = v15;
      v17 = 3 * v11;
      v18 = v12 + 12 * v11;
      v19 = v13 + 4 * v17;
      if (v19 > v14 || v13 > v19 || v18 > v12 + 24 || v12 > v18)
      {
        goto LABEL_282;
      }

      v23 = *v19;
      *(v18 + 8) = *(v19 + 8);
      *v18 = v23;
      if (v18 >= v18 + 12)
      {
        goto LABEL_282;
      }

      v15 = 0;
      v11 = 1;
    }

    while ((v16 & 1) != 0);
    ++v4;
  }

  while (v4 != 6);
  v24 = 0;
  v25 = 0;
  v26 = a1 + 2960;
  v27 = v5 + 242;
  do
  {
    v28 = &v7[1298 * v25];
    if (v28 + 5192 > v8 || v28 > v28 + 5192)
    {
      goto LABEL_282;
    }

    v30 = 0;
    v31 = v26 + 144 * v25;
    v32 = v24;
    do
    {
      v33 = (a1 + v32 + 2960);
      if (v33 > v31 + 144 || v31 > v33)
      {
        goto LABEL_282;
      }

      v35 = *&v27[v30];
      *(a1 + v32 + 2976) = *&v27[v30 + 4];
      *v33 = v35;
      if (v33 > a1 + v32 + 2984)
      {
        goto LABEL_282;
      }

      v30 += 78;
      v32 += 24;
    }

    while (v30 != 468);
    ++v25;
    v27 += 1298;
    v24 += 144;
  }

  while (v25 != 6);
  v36 = *(a1 + 48);
  *(a1 + 96) = *(a1 + 32);
  *(a1 + 112) = v36;
  v37 = *(a1 + 80);
  *(a1 + 128) = *(a1 + 64);
  *(a1 + 144) = v37;
  if (v5[19952] <= 1u)
  {
    *(a1 + 462) = 0;
  }

  if (!*(a1 + 1376))
  {
    if (!*(a1 + 96))
    {
      *(a1 + 1376) = 0;
      return;
    }

    ddp_udc_int_BED_flush(a1);
  }

  v38 = *(a1 + 96);
  *(a1 + 1376) = v38;
  if (v38)
  {
    v39 = v5[60];
    if (v39 >= 1)
    {
      if (v5 > v5 + 19956)
      {
        goto LABEL_282;
      }

      v40 = v5[62];
      v41 = &v7[1298 * v40];
      if (v41 > v8 || v7 > v41 || (v39 & 0x8000) != 0 || (0xCCB89AA025DE13B9 * ((v8 - v41) >> 3)) < v39)
      {
        goto LABEL_282;
      }

      v42 = *(*(a1 + 2808) + 79800);
      v43 = *(a1 + 84);
      *&v211 = &v5[72 * v40 + 19518];
      *(&v211 + 1) = v5 + 19950;
      v212 = (v5 + 19518);
      v208 = (a1 + 1392);
      v209 = (a1 + 2544);
      v210 = (a1 + 1392);
      v44 = ddp_udc_int_bed_decfrm(v39, v42, &v211, (v5 + 64), v43, v41, a1 + 96, &v208, a2);
      *(a1 + 1384) = v44;
      v39 = v5[60];
      if (v44)
      {
        v45 = v5[61];
        v5[60] = 0;
        v5[61] = v45 + v39;
        v39 = 0;
      }
    }

    *(a1 + 1380) = v39;
    v46 = v5[61];
    if (!v46)
    {
      goto LABEL_147;
    }

    if (*(a1 + 136))
    {
      v213 = 0xAAAAAAAAAAAAAAAALL;
      v214 = -1431655766;
      v47 = *(a1 + 456);
      v202 = v5;
      if (v47 == -1 || (v48 = *(a1 + 458), v48 == 0xFFFF))
      {
        v50 = 0;
      }

      else
      {
        v49 = &ddp_udc_int_gbl_chanary[v47];
        if (v49 < ddp_udc_int_gbl_chanary || v49 + 1 > block_size || v49 > v49 + 1)
        {
          goto LABEL_282;
        }

        v50 = (*v49 + v48);
      }

      if (v46 < 1)
      {
        goto LABEL_128;
      }

      v204 = a1 + 192 * v39 + 1392;
      v205 = 0;
      v51 = a1 + 624;
      v52 = a1 + 768;
      v203 = v46 & 0x7FFF;
      do
      {
        v214 = 0;
        v213 = 0;
        v53 = (a1 + 1272);
        v54 = 5;
        do
        {
          if ((v53 + 6) > a1 + 1332 || v53 > v53 + 6)
          {
            goto LABEL_282;
          }

          v53[4] = 0;
          *v53 = 0;
          v53 += 6;
          --v54;
        }

        while (v54);
        v56 = *(a1 + 140);
        if ((v56 & 0x80000000) == 0)
        {
          v57 = *(a1 + 462);
          if (v56 <= v57)
          {
            v58 = *(a1 + 624);
            v59 = *(a1 + 632);
            if (v58 > v59)
            {
              goto LABEL_282;
            }

            if (v59 - v58 < 0x400)
            {
              goto LABEL_282;
            }

            if (*(a1 + 640) > v58)
            {
              goto LABEL_282;
            }

            bzero(*(a1 + 624), 0x400uLL);
            if (v58 >= v58 + 1024)
            {
              goto LABEL_282;
            }

            v60 = *(a1 + 648);
            v61 = *(a1 + 656);
            if (v60 > v61)
            {
              goto LABEL_282;
            }

            if (v61 - v60 < 0x400)
            {
              goto LABEL_282;
            }

            if (*(a1 + 664) > v60)
            {
              goto LABEL_282;
            }

            bzero(*(a1 + 648), 0x400uLL);
            if (v60 >= v60 + 1024)
            {
              goto LABEL_282;
            }

            v62 = *(a1 + 672);
            v63 = *(a1 + 680);
            if (v62 > v63)
            {
              goto LABEL_282;
            }

            if (v63 - v62 < 0x400)
            {
              goto LABEL_282;
            }

            if (*(a1 + 688) > v62)
            {
              goto LABEL_282;
            }

            bzero(*(a1 + 672), 0x400uLL);
            if (v62 >= v62 + 1024)
            {
              goto LABEL_282;
            }

            v64 = *(a1 + 696);
            v65 = *(a1 + 704);
            if (v64 > v65)
            {
              goto LABEL_282;
            }

            if (v65 - v64 < 0x400)
            {
              goto LABEL_282;
            }

            if (*(a1 + 712) > v64)
            {
              goto LABEL_282;
            }

            bzero(*(a1 + 696), 0x400uLL);
            if (v64 >= v64 + 1024)
            {
              goto LABEL_282;
            }

            v66 = *(a1 + 720);
            v67 = *(a1 + 728);
            if (v66 > v67)
            {
              goto LABEL_282;
            }

            if (v67 - v66 < 0x400)
            {
              goto LABEL_282;
            }

            if (*(a1 + 736) > v66)
            {
              goto LABEL_282;
            }

            bzero(*(a1 + 720), 0x400uLL);
            if (v66 >= v66 + 1024)
            {
              goto LABEL_282;
            }

            v68 = *(a1 + 744);
            v69 = *(a1 + 752);
            if (v68 > v69)
            {
              goto LABEL_282;
            }

            if (v69 - v68 < 0x400)
            {
              goto LABEL_282;
            }

            if (*(a1 + 760) > v68)
            {
              goto LABEL_282;
            }

            bzero(*(a1 + 744), 0x400uLL);
            if (v68 >= v68 + 1024)
            {
              goto LABEL_282;
            }
          }

          else
          {
            *(a1 + 462) = v57 + 1;
          }
        }

        if (v50 >= 1)
        {
          v70 = 0;
          v71 = v204 + 192 * v205;
          do
          {
            v72 = &ddp_udc_int_gbl_chantab[6 * *(a1 + 456)];
            v73 = &v72[v70];
            v74 = (v73 + 1);
            v75 = v73 < v72 || v74 > (v72 + 6);
            if (v75 || v73 > v74)
            {
              goto LABEL_282;
            }

            v77 = *v73;
            v78 = (v71 + 32 * v77);
            v79 = (v78 + 4);
            v80 = v78 < v71 || v79 > v71 + 192;
            if (v80 || v78 > v79)
            {
              goto LABEL_282;
            }

            if (*v78)
            {
              v82 = v52 + 24 * v77;
              v83 = v82 + 24;
              if (v82 < v52 || v83 > a1 + 912 || v82 > v83)
              {
                goto LABEL_282;
              }

              if (*v82)
              {
                v86 = (v51 + 24 * v77);
                v87 = v86 + 24;
                if (v86 < v51 || v87 > v52 || v86 > v87)
                {
                  goto LABEL_282;
                }

                v211 = *v86;
                v212 = *(v86 + 2);
                v208 = *(a1 + 472);
                v209 = v208 + 128;
                v210 = v208;
                v206 = *v82;
                v207 = *(v82 + 16);
                ddp_udc_int_woad_decode(&v211, &v206, &v208);
                v90 = *(a1 + 456);
                *&v211 = *(a1 + 472);
                *(&v211 + 1) = v211 + 1024;
                v212 = v211;
                v208 = &v213;
                v209 = v215;
                v210 = &v213;
                *&v206 = v204 + 192 * v205;
                *(&v206 + 1) = v71 + 192;
                v207 = v206;
                ddp_udc_int_dmxd_process(v70, v90, (a1 + 100), &v211, a1 + 160, &v208, &v206);
              }
            }
          }

          while (v50 > ++v70);
        }

        v91 = *(a1 + 104);
        v92 = *(a1 + 100);
        *&v211 = &v213;
        *(&v211 + 1) = v215;
        v212 = &v213;
        v208 = (v204 + 192 * v205);
        v209 = v208 + 24;
        v210 = v208;
        ddp_udc_int_dmxd_clear(v91, v92, &v211, &v208);
        ++v205;
      }

      while (v205 != v203);
      v26 = a1 + 2960;
      v46 = v202[61];
      v39 = *(a1 + 1380);
LABEL_128:
      *(a1 + 1380) = v39 + v46;
LABEL_147:
      for (i = 0; i != 6; ++i)
      {
        v101 = *(a1 + 2808);
        v102 = v101 + 5192 * i;
        v103 = v101 + 31696;
        v104 = v102 + 544;
        v105 = v102 + 5736;
        if (v105 > v103 || v104 > v105)
        {
          goto LABEL_282;
        }

        v107 = a1 + 3824 + 12 * i;
        v108 = *(v104 + 2280);
        *(v107 + 8) = *(v104 + 2288);
        *v107 = v108;
        if (v107 >= v107 + 12)
        {
          goto LABEL_282;
        }

        v109 = 0;
        v110 = v6 + 24 * i;
        v111 = 1;
        do
        {
          v112 = v111;
          v113 = *(a1 + 2808);
          v114 = v113 + 5192 * i;
          v115 = v114 + 544;
          v116 = v114 + 5736;
          v117 = v116 > v113 + 31696 || v115 > v116;
          v118 = v115 + 2280;
          v119 = v115 + 2304;
          v120 = 3 * v109;
          v121 = v118 + 12 * v109;
          v122 = v110 + 4 * v120;
          if (v117 || v122 > v110 + 24 || v110 > v122 || v121 > v119 || v118 > v121)
          {
            goto LABEL_282;
          }

          v127 = *v122;
          *(v121 + 8) = *(v122 + 8);
          *v121 = v127;
          if (v121 >= v121 + 12)
          {
            goto LABEL_282;
          }

          v111 = 0;
          v109 = 1;
        }

        while ((v112 & 1) != 0);
      }

      v128 = 0;
      v129 = 0;
      v130 = v26;
      do
      {
        v131 = 0;
        v132 = v26 + 144 * v129;
        v133 = v130;
        do
        {
          v134 = *(a1 + 2808);
          v135 = v134 + 5192 * v129;
          v136 = v135 + 544;
          v137 = v135 + 5736;
          if (v137 > v134 + 31696 || v136 > v137 || v133 > v132 + 144 || v132 > v133)
          {
            goto LABEL_282;
          }

          v141 = v134 + v128 + v131;
          v142 = *v133;
          *(v141 + 984) = *(v133 + 16);
          *(v141 + 968) = v142;
          if (v141 + 968 > (v141 + 992))
          {
            goto LABEL_282;
          }

          v131 += 312;
          v133 += 24;
        }

        while (v131 != 1872);
        ++v129;
        v128 += 5192;
        v130 += 144;
      }

      while (v129 != 6);
      v143 = *(a1 + 1380);
      v144 = *(a1 + 92);
      if (!v143)
      {
        goto LABEL_232;
      }

      if (v144 != 3)
      {
        if (v144 == 2)
        {
          v145 = 0;
          v146 = a1 + 1392;
          v147 = &ddp_udc_int_gbl_chantab[6 * *(a1 + 100)];
          v148 = a1 + 1392 + 192 * v143;
          v149 = v148 - 192;
          while (1)
          {
            v150 = &v147[v145];
            v151 = (v150 + 1);
            if (v150 < v147 || v151 > (v147 + 6) || v150 > v151)
            {
              goto LABEL_282;
            }

            v154 = *v150;
            if (v154 != -1)
            {
              v155 = v149 + 32 * v154;
              v156 = v155 + 32;
              if (v155 < v149 || v156 > v148 || v155 > v156)
              {
                goto LABEL_282;
              }

              v159 = *v155;
              if (*v155)
              {
                break;
              }
            }

LABEL_230:
            if (++v145 == 6)
            {
              goto LABEL_279;
            }
          }

          v160 = v146 + 32 * v154;
          v161 = v160 + 32;
          if (v160 >= v146 && v161 <= a1 + 1584 && v160 <= v161)
          {
            v164 = *(v155 + 8);
            v165 = *(v155 + 16);
            v166 = 4 * *(v160 + 24);
            for (j = 0xFFu; j != -1; --j)
            {
              if ((v159 + 1) > v164 || v159 > v159 + 1 || v159 < v165)
              {
                goto LABEL_282;
              }

              *v159 = *v159 * *&ddp_udc_int_ddp_window[j];
              v159 = (v159 + v166);
            }

            v170 = a1 + 304 + 24 * v154;
            v171 = v170;
            v172 = 6;
            while (v171 >= v170 && (v171 + 1) <= v170 + 24 && v171 <= v171 + 1)
            {
              *v171++ = 0;
              if (!--v172)
              {
                goto LABEL_230;
              }
            }
          }

          goto LABEL_282;
        }

LABEL_232:
        if ((v144 & 0xFFFFFFFE) == 2)
        {
LABEL_279:
          ddp_udc_int_BED_flush(a1);
          v173 = 1;
        }

        else
        {
          v173 = 0;
        }

        *(a1 + 92) = v173;
        return;
      }

      v174 = 0;
      v175 = a1 + 1392;
      v176 = &ddp_udc_int_gbl_chantab[6 * *(a1 + 100)];
      while (1)
      {
        v177 = &v176[v174];
        v178 = (v177 + 1);
        if (v177 < v176 || v178 > (v176 + 6) || v177 > v178)
        {
          goto LABEL_282;
        }

        v181 = *v177;
        if (v181 != -1)
        {
          break;
        }

LABEL_278:
        if (++v174 == 6)
        {
          goto LABEL_279;
        }
      }

      if (v143 < 1)
      {
LABEL_273:
        v199 = a1 + 304 + 24 * v181;
        v200 = v199;
        v201 = 6;
        while (v200 >= v199 && (v200 + 1) <= v199 + 24 && v200 <= v200 + 1)
        {
          *v200++ = 0;
          if (!--v201)
          {
            goto LABEL_278;
          }
        }
      }

      else
      {
        v182 = 0;
        v183 = v175 + 32 * v181;
        v186 = v183 + 32 <= a1 + 1584 && v183 <= v183 + 32 && v183 >= v175;
        while (1)
        {
          v187 = v175 + 192 * v182;
          v188 = v187 + 32 * v181;
          v189 = v188 + 32;
          if (v188 < v187 || v189 > v187 + 192 || v188 > v189)
          {
            goto LABEL_282;
          }

          v192 = *v188;
          if (*v188)
          {
            break;
          }

LABEL_272:
          if (++v182 == v143)
          {
            goto LABEL_273;
          }
        }

        if (v186)
        {
          v193 = *(v188 + 8);
          v194 = *(v188 + 16);
          v195 = 4 * *(v183 + 24);
          v196 = 256;
          while (1)
          {
            v197 = (v192 + 1) > v193 || v192 > v192 + 1;
            if (v197 || v192 < v194)
            {
              break;
            }

            *v192 = 0;
            v192 = (v192 + v195);
            if (!--v196)
            {
              goto LABEL_272;
            }
          }
        }
      }
    }

    else
    {
      v93 = a1 + 624;
      v94 = 6;
      while (v93 + 24 <= a1 + 768 && v93 <= v93 + 24)
      {
        v96 = *v93;
        if (*v93)
        {
          if (v93 + 168 > a1 + 912)
          {
            break;
          }

          if (v93 + 144 > v93 + 168)
          {
            break;
          }

          if (*(v93 + 144))
          {
            v97 = *(v93 + 8);
            if (v96 > v97)
            {
              break;
            }

            if (v97 - v96 < 0x400)
            {
              break;
            }

            if (*(v93 + 16) > v96)
            {
              break;
            }

            bzero(*v93, 0x400uLL);
            if (v96 >= v96 + 1024)
            {
              break;
            }

            v98 = *(v93 + 144);
            v99 = *(v93 + 152);
            if (v98 > v99)
            {
              break;
            }

            if (v99 - v98 < 0x200)
            {
              break;
            }

            if (*(v93 + 160) > v98)
            {
              break;
            }

            v98[30] = 0u;
            v98[31] = 0u;
            v98[28] = 0u;
            v98[29] = 0u;
            v98[26] = 0u;
            v98[27] = 0u;
            v98[24] = 0u;
            v98[25] = 0u;
            v98[22] = 0u;
            v98[23] = 0u;
            v98[20] = 0u;
            v98[21] = 0u;
            v98[18] = 0u;
            v98[19] = 0u;
            v98[16] = 0u;
            v98[17] = 0u;
            v98[14] = 0u;
            v98[15] = 0u;
            v98[12] = 0u;
            v98[13] = 0u;
            v98[10] = 0u;
            v98[11] = 0u;
            v98[8] = 0u;
            v98[9] = 0u;
            v98[6] = 0u;
            v98[7] = 0u;
            v98[4] = 0u;
            v98[5] = 0u;
            v98[2] = 0u;
            v98[3] = 0u;
            *v98 = 0u;
            v98[1] = 0u;
            if (v98 >= v98 + 32)
            {
              break;
            }
          }
        }

        v93 += 24;
        if (!--v94)
        {
          goto LABEL_147;
        }
      }
    }

LABEL_282:
    __break(0x5519u);
  }
}

void ddp_udc_int_BED_flush(unint64_t *a1)
{
  v2 = a1[78];
  if (v2 && ((v3 = a1[79], v2 > v3) || (v3 - v2 >= 0x400 ? (v4 = a1[80] > v2) : (v4 = 1), v4 || (bzero(a1[78], 0x400uLL), v2 >= v2 + 1024)))
    || (v5 = a1[81]) != 0 && ((v6 = a1[82], v5 > v6) || (v6 - v5 >= 0x400 ? (v7 = a1[83] > v5) : (v7 = 1), v7 || (bzero(a1[81], 0x400uLL), v5 >= v5 + 1024)))
    || (v8 = a1[84]) != 0 && ((v9 = a1[85], v8 > v9) || (v9 - v8 >= 0x400 ? (v10 = a1[86] > v8) : (v10 = 1), v10 || (bzero(a1[84], 0x400uLL), v8 >= v8 + 1024)))
    || (v11 = a1[87]) != 0 && ((v12 = a1[88], v11 > v12) || v12 - v11 < 0x400 || a1[89] > v11 || (bzero(a1[87], 0x400uLL), v11 >= v11 + 1024))
    || (v13 = a1[90]) != 0 && ((v14 = a1[91], v13 > v14) || v14 - v13 < 0x400 || a1[92] > v13 || (bzero(a1[90], 0x400uLL), v13 >= v13 + 1024))
    || (v15 = a1[93]) != 0 && ((v16 = a1[94], v15 > v16) || v16 - v15 < 0x400 || a1[95] > v15 || (bzero(a1[93], 0x400uLL), v15 >= v15 + 1024))
    || (v17 = a1[96]) != 0 && ((v18 = a1[97], v17 > v18) || v18 - v17 < 0x200 || a1[98] > v17 || (v17[30] = 0u, v17[31] = 0u, v17[28] = 0u, v17[29] = 0u, v17[26] = 0u, v17[27] = 0u, v17[24] = 0u, v17[25] = 0u, v17[22] = 0u, v17[23] = 0u, v17[20] = 0u, v17[21] = 0u, v17[18] = 0u, v17[19] = 0u, v17[16] = 0u, v17[17] = 0u, v17[14] = 0u, v17[15] = 0u, v17[12] = 0u, v17[13] = 0u, v17[10] = 0u, v17[11] = 0u, v17[8] = 0u, v17[9] = 0u, v17[6] = 0u, v17[7] = 0u, v17[4] = 0u, v17[5] = 0u, v17[2] = 0u, v17[3] = 0u, *v17 = 0u, v17[1] = 0u, v17 >= v17 + 32))
    || (v19 = a1[99]) != 0 && ((v20 = a1[100], v19 > v20) || v20 - v19 < 0x200 || a1[101] > v19 || (v19[30] = 0u, v19[31] = 0u, v19[28] = 0u, v19[29] = 0u, v19[26] = 0u, v19[27] = 0u, v19[24] = 0u, v19[25] = 0u, v19[22] = 0u, v19[23] = 0u, v19[20] = 0u, v19[21] = 0u, v19[18] = 0u, v19[19] = 0u, v19[16] = 0u, v19[17] = 0u, v19[14] = 0u, v19[15] = 0u, v19[12] = 0u, v19[13] = 0u, v19[10] = 0u, v19[11] = 0u, v19[8] = 0u, v19[9] = 0u, v19[6] = 0u, v19[7] = 0u, v19[4] = 0u, v19[5] = 0u, v19[2] = 0u, v19[3] = 0u, *v19 = 0u, v19[1] = 0u, v19 >= v19 + 32))
    || (v21 = a1[102]) != 0 && ((v22 = a1[103], v21 > v22) || v22 - v21 < 0x200 || a1[104] > v21 || (v21[30] = 0u, v21[31] = 0u, v21[28] = 0u, v21[29] = 0u, v21[26] = 0u, v21[27] = 0u, v21[24] = 0u, v21[25] = 0u, v21[22] = 0u, v21[23] = 0u, v21[20] = 0u, v21[21] = 0u, v21[18] = 0u, v21[19] = 0u, v21[16] = 0u, v21[17] = 0u, v21[14] = 0u, v21[15] = 0u, v21[12] = 0u, v21[13] = 0u, v21[10] = 0u, v21[11] = 0u, v21[8] = 0u, v21[9] = 0u, v21[6] = 0u, v21[7] = 0u, v21[4] = 0u, v21[5] = 0u, v21[2] = 0u, v21[3] = 0u, *v21 = 0u, v21[1] = 0u, v21 >= v21 + 32))
    || (v23 = a1[105]) != 0 && ((v24 = a1[106], v23 > v24) || v24 - v23 < 0x200 || a1[107] > v23 || (v23[30] = 0u, v23[31] = 0u, v23[28] = 0u, v23[29] = 0u, v23[26] = 0u, v23[27] = 0u, v23[24] = 0u, v23[25] = 0u, v23[22] = 0u, v23[23] = 0u, v23[20] = 0u, v23[21] = 0u, v23[18] = 0u, v23[19] = 0u, v23[16] = 0u, v23[17] = 0u, v23[14] = 0u, v23[15] = 0u, v23[12] = 0u, v23[13] = 0u, v23[10] = 0u, v23[11] = 0u, v23[8] = 0u, v23[9] = 0u, v23[6] = 0u, v23[7] = 0u, v23[4] = 0u, v23[5] = 0u, v23[2] = 0u, v23[3] = 0u, *v23 = 0u, v23[1] = 0u, v23 >= v23 + 32))
    || (v25 = a1[108]) != 0 && ((v26 = a1[109], v25 > v26) || v26 - v25 < 0x200 || a1[110] > v25 || (v25[30] = 0u, v25[31] = 0u, v25[28] = 0u, v25[29] = 0u, v25[26] = 0u, v25[27] = 0u, v25[24] = 0u, v25[25] = 0u, v25[22] = 0u, v25[23] = 0u, v25[20] = 0u, v25[21] = 0u, v25[18] = 0u, v25[19] = 0u, v25[16] = 0u, v25[17] = 0u, v25[14] = 0u, v25[15] = 0u, v25[12] = 0u, v25[13] = 0u, v25[10] = 0u, v25[11] = 0u, v25[8] = 0u, v25[9] = 0u, v25[6] = 0u, v25[7] = 0u, v25[4] = 0u, v25[5] = 0u, v25[2] = 0u, v25[3] = 0u, *v25 = 0u, v25[1] = 0u, v25 >= v25 + 32))
    || (v27 = a1[111]) != 0 && ((v28 = a1[112], v27 > v28) || v28 - v27 < 0x200 || a1[113] > v27 || (v27[30] = 0u, v27[31] = 0u, v27[28] = 0u, v27[29] = 0u, v27[26] = 0u, v27[27] = 0u, v27[24] = 0u, v27[25] = 0u, v27[22] = 0u, v27[23] = 0u, v27[20] = 0u, v27[21] = 0u, v27[18] = 0u, v27[19] = 0u, v27[16] = 0u, v27[17] = 0u, v27[14] = 0u, v27[15] = 0u, v27[12] = 0u, v27[13] = 0u, v27[10] = 0u, v27[11] = 0u, v27[8] = 0u, v27[9] = 0u, v27[6] = 0u, v27[7] = 0u, v27[4] = 0u, v27[5] = 0u, v27[2] = 0u, v27[3] = 0u, *v27 = 0u, v27[1] = 0u, v27 >= v27 + 32)))
  {
    __break(0x5519u);
  }
}

uint64_t ddp_udc_int_BED_initpcmptrs(uint64_t result, uint64_t *a2)
{
  v2 = 0;
  v3 = result + 1392;
  while (2)
  {
    v4 = 0;
    v5 = v3 + 192 * v2;
    v6 = a2;
    do
    {
      v7 = *v6;
      v8 = (result + v4 + 1392);
      v9 = result + v4 + 1424;
      v12 = v9 <= v5 + 192 && v8 <= v9 && v8 >= v5;
      if (v7)
      {
        if (!v12)
        {
          goto LABEL_20;
        }

        v13 = result + v4;
        v14 = *(v7 + 8);
        *v8 = *v7 + 4 * ((v2 << 8) * *(v7 + 32));
        *(result + v4 + 1400) = v14;
        *(v13 + 1416) = *(*v6 + 32);
        *(v13 + 1418) = 256;
      }

      else
      {
        if (!v12)
        {
LABEL_20:
          __break(0x5519u);
          return result;
        }

        *v8 = 0;
        *(result + v4 + 1400) = 0;
        *(result + v4 + 1408) = 0;
      }

      v4 += 32;
      ++v6;
    }

    while (v4 != 192);
    ++v2;
    result += 192;
    if (v2 != 6)
    {
      continue;
    }

    return result;
  }
}

float *ddp_udc_int_tpnd_decode(float *result, int a2, uint64_t a3, __int16 *a4, unint64_t *a5, char *__src)
{
  v9 = a4[4];
  v10 = a4[3];
  v11 = a4[2];
  v12 = a4[1];
  v13 = *a4;
  v14 = a4[5];
  v15 = *a5;
  v16 = a5[3] + 1024;
  v17 = *a5 + 4096;
  v18 = 2;
  if (v16 < v17)
  {
    v18 = 5;
  }

  v19 = 1;
  if (v16 < v17)
  {
    v19 = 4;
  }

  v20 = a5[v19];
  v21 = a5[v18];
  if (v9)
  {
    goto LABEL_6;
  }

  if (v14 < 1536)
  {
    LOWORD(v14) = v14 + 256;
  }

  if (!*(a3 + 6))
  {
    goto LABEL_29;
  }

  v27 = (a3 + 196 + 2 * a2);
  if (v27 < a3 + 196)
  {
    goto LABEL_101;
  }

  v28 = a3 + 206;
  if ((v27 + 1) > a3 + 206 || v27 > v27 + 1)
  {
    goto LABEL_101;
  }

  if (!*v27)
  {
LABEL_29:
    result = 0;
    goto LABEL_30;
  }

  v29 = (a3 + 216 + 2 * a2);
  if (v29 < a3 + 216 || (v29 + 1) > a3 + 226 || v29 > v29 + 1 || (v30 = (v28 + 2 * a2), v30 < v28) || (v30 + 1) > a3 + 216 || v30 > v30 + 1)
  {
LABEL_101:
    __break(0x5519u);
    return result;
  }

  v10 = result - 2;
  v11 = *v29;
  v12 = 4 * *v30;
  v9 = ((v12 - 1024) & 0xFFFCu) < 0x5FD;
  if (v14 - ((result - 1) << 8) + v12 < 1536)
  {
    goto LABEL_29;
  }

LABEL_6:
  v22 = (v10 + 1) << 16 >> 8;
  v23 = v22 + 256 > ((v12 & 0xFF00) - v11 - 512);
  v24 = v22 <= v12;
  if (v22 > v12)
  {
    v25 = v22 - v12;
  }

  else
  {
    v25 = v14;
  }

  if (v24)
  {
    v26 = 1;
  }

  else
  {
    v23 = 0;
    v26 = 0;
  }

  if (v9 == 1)
  {
    LOWORD(v14) = v25;
    v13 = v23;
    LOWORD(v10) = v10 + 1;
    result = v26;
  }

  else
  {
    result = v9;
  }

LABEL_30:
  a4[4] = result;
  if (v16 >= v17)
  {
    v31 = v15;
  }

  else
  {
    v31 = v16;
  }

  a4[3] = v10;
  a4[2] = v11;
  a4[1] = v12;
  *a4 = v13;
  a4[5] = v14;
  a5[3] = v31;
  a5[4] = v20;
  v32 = v20 < v31 || v21 > v31;
  a5[5] = v21;
  if (v32)
  {
    goto LABEL_101;
  }

  if (v20 - v31 <= 0x3FF)
  {
    goto LABEL_101;
  }

  result = memcpy(v31, __src, 0x400uLL);
  if (v31 >= v31 + 1024)
  {
    goto LABEL_101;
  }

  if (*a4 == 1)
  {
    v33 = *a5;
    v34 = a4[1];
    v35 = a4[2];
    v36 = a4[3];
    LOWORD(v37) = v36 << 8;
    v38 = -v35 - (256 - ((v34 + (v34 >> 23)) & 0xFFFFFF00)) - 256;
    v39 = v38;
    if (((v38 + (v38 >> 23)) << 16) >> 24 == v36)
    {
      v40 = a5 + 4;
      v41 = a5 + 5;
      v43 = v35 == 0;
      v44 = -1024;
      if (!v43)
      {
        v44 = 0;
      }

      v42 = a5[3] - 4 * (v34 - ((v34 + (v34 >> 23)) & 0xFF00) + 256);
      v45 = (v42 + v44 + ((v42 + v44 < v33) << 12));
    }

    else
    {
      v45 = a5[6];
      v40 = a5 + 7;
      v41 = a5 + 8;
    }

    v46 = (__src + 1024);
    v47 = ((v36 << 8) | 0xFF);
    v48 = *v40;
    v49 = *v41;
    v50 = v39 + 256;
    v51 = v34 - 128;
    v52 = v33 + 4096;
    result = ddp_udc_int_hannwin;
    v53 = __src;
    while (v37 < v39 || v50 <= v37)
    {
      if (v37 < v34 && v51 <= v37)
      {
        if (v53 + 1 > v46)
        {
          goto LABEL_101;
        }

        if (v53 > v53 + 1)
        {
          goto LABEL_101;
        }

        if (v53 < __src)
        {
          goto LABEL_101;
        }

        v55 = &ddp_udc_int_hannwin[2 * (v37 - v34)];
        v56 = v55 + 256;
        if (v55 + 256 < ddp_udc_int_hannwin)
        {
          goto LABEL_101;
        }

        v57 = (v55 + 257);
        if (v57 > flt_19B303F20)
        {
          goto LABEL_101;
        }

        if (v56 > v57)
        {
          goto LABEL_101;
        }

        if ((v45 + 1) > v48)
        {
          goto LABEL_101;
        }

        if (v45 > v45 + 1)
        {
          goto LABEL_101;
        }

        if (v45 < v49)
        {
          goto LABEL_101;
        }

        v58 = &ddp_udc_int_hannwin[2 * (~v37 + v34)];
        if (v58 < ddp_udc_int_hannwin || v58 + 1 > flt_19B303F20 || v58 > v58 + 1)
        {
          goto LABEL_101;
        }

        v59 = *v53;
        v60 = *v56;
        goto LABEL_79;
      }

      if (v50 > v37 || v51 <= v37)
      {
        goto LABEL_81;
      }

      if ((v45 + 1) > v48 || v45 > v45 + 1 || v45 < v49 || v53 + 1 > v46 || v53 > v53 + 1 || v53 < __src)
      {
        goto LABEL_101;
      }

      v62 = *v45;
LABEL_80:
      *v53 = v62;
LABEL_81:
      v63 = v45 + 1;
      if ((v45 + 1) >= v52)
      {
        v63 = v45 - 1023;
      }

      ++v53;
      if (v37 >= v39 && v37 < v34)
      {
        v45 = v63;
      }

      v37 = (v37 + 1);
      if (v37 > v47)
      {
        a5[6] = v45;
        a5[7] = v48;
        a5[8] = v49;
        return result;
      }
    }

    if (v53 + 1 > v46)
    {
      goto LABEL_101;
    }

    if (v53 > v53 + 1)
    {
      goto LABEL_101;
    }

    if (v53 < __src)
    {
      goto LABEL_101;
    }

    v61 = &ddp_udc_int_hannwin[v50 + ~v37];
    if (v61 < ddp_udc_int_hannwin)
    {
      goto LABEL_101;
    }

    if (v61 + 1 > flt_19B303F20)
    {
      goto LABEL_101;
    }

    if (v61 > v61 + 1)
    {
      goto LABEL_101;
    }

    if ((v45 + 1) > v48)
    {
      goto LABEL_101;
    }

    if (v45 > v45 + 1)
    {
      goto LABEL_101;
    }

    if (v45 < v49)
    {
      goto LABEL_101;
    }

    v58 = &ddp_udc_int_hannwin[v37 - v39];
    if (v58 < ddp_udc_int_hannwin || v58 + 1 > flt_19B303F20 || v58 > v58 + 1)
    {
      goto LABEL_101;
    }

    v59 = *v53;
    v60 = *v61;
LABEL_79:
    v62 = (*v45 * *v58) + (v59 * v60);
    goto LABEL_80;
  }

  return result;
}

uint64_t ddp_udc_int_bta_psds2exps(uint64_t result, __int16 a2, void *a3, void *a4)
{
  if (result < a2)
  {
    v4 = a3[2];
    v5 = a2 - result;
    for (i = 2 * result; ; i += 2)
    {
      v7 = (*a3 + i);
      v8 = (v7 + 1) > a3[1] || v7 > v7 + 1;
      if (v8 || v7 < v4)
      {
        break;
      }

      v10 = (*a4 + i);
      v11 = (v10 + 1) > a4[1] || v10 > v10 + 1;
      if (v11 || v10 < a4[2])
      {
        break;
      }

      *v10 = (3072 - *v7) >> 7;
      if (!--v5)
      {
        return result;
      }
    }

    __break(0x5519u);
  }

  return result;
}

unint64_t ddp_udc_int_sha256_do_hash_stride(unint64_t result, uint64_t a2, unsigned int a3, int a4, int a5, int a6)
{
  if (!a3)
  {
    return result;
  }

  v8 = result;
  if (a5 == 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = a6;
  }

  v10 = a5 * a3;
  *(result + 96) = a2;
  v11 = (result + 96);
  *(result + 120) = a5 * a3;
  *(result + 128) += a5 * a3;
  *(result + 104) = a2 + a3;
  *(result + 112) = a2;
  if (v9)
  {
    *v11 = a2 + (a5 - 1);
  }

  *(result + 124) = 0;
  v12 = *(result + 132);
  v13 = v12 + v10;
  if ((~v10 & 0x38) != 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v15 = v14 + (v13 >> 6);
  if (v12)
  {
    result = copyMsgToBuf(result, a4, a5, v9);
    if (!result)
    {
      result = hashComputation(v8);
      *(v8 + 64) = 0u;
      *(v8 + 80) = 0u;
      *(v8 + 32) = 0u;
      *(v8 + 48) = 0u;
      --v15;
    }
  }

  if (v15 < 3)
  {
    if (v15)
    {
LABEL_102:
      v65 = v15 == 1;
      do
      {
        v66 = v65;
        result = copyMsgToBuf(v8, a4, a5, v9);
        if (result)
        {
          break;
        }

        result = hashComputation(v8);
        *(v8 + 64) = 0u;
        *(v8 + 80) = 0u;
        v65 = 1;
        *(v8 + 32) = 0u;
        *(v8 + 48) = 0u;
      }

      while (!v66);
    }

    return result;
  }

  v16 = (a4 - a5);
  if (a4 != a5 || v9)
  {
    v67 = (v8 + 32);
    v32 = (a5 + a4);
    if (v9)
    {
      v33 = -1;
    }

    else
    {
      v33 = 1;
    }

    if (v9)
    {
      v34 = (a5 + a4);
    }

    else
    {
      v34 = (a4 - a5);
    }

LABEL_45:
    v35 = *(v8 + 96);
    v36 = *(v8 + 104);
    v37 = -4;
    v38 = *(v8 + 112);
    while (1)
    {
      if (v35 >= v36)
      {
        goto LABEL_106;
      }

      if (v35 < v38)
      {
        goto LABEL_106;
      }

      v39 = (v8 + v37 + 39);
      if (v39 >= v11)
      {
        goto LABEL_106;
      }

      *v39 = *v35;
      v40 = *(v8 + 104);
      v41 = (*(v8 + 96) + v33);
      v42 = *(v8 + 112);
      *(v8 + 96) = v41;
      v43 = vadd_s32(*(v8 + 120), 0x1FFFFFFFFLL);
      *(v8 + 120) = v43;
      if (v43.i32[1] == a5)
      {
        *(v8 + 124) = 0;
        if (v9)
        {
          v44 = &v41[v32];
          *v11 = v44;
          if (v44 >= v40 || v44 < v42)
          {
            goto LABEL_106;
          }

          *(v8 + v37 + 38) = *v44;
LABEL_63:
          v47 = -1;
          goto LABEL_71;
        }

        v48 = &v41[v16];
        *v11 = v48;
        if (v48 >= v40 || v48 < v42)
        {
          goto LABEL_106;
        }

        *(v8 + v37 + 38) = *v48;
      }

      else
      {
        if (v41 >= v40 || v41 < v42)
        {
          goto LABEL_106;
        }

        *(v8 + v37 + 38) = *v41;
        if (v9)
        {
          goto LABEL_63;
        }
      }

      v47 = 1;
LABEL_71:
      v50 = *(v8 + 104);
      v51 = (*(v8 + 96) + v47);
      v52 = *(v8 + 112);
      *(v8 + 96) = v51;
      v53 = vadd_s32(*(v8 + 120), 0x1FFFFFFFFLL);
      *(v8 + 120) = v53;
      if (v53.i32[1] == a5)
      {
        *(v8 + 124) = 0;
        if (v9)
        {
          v54 = &v51[v32];
          *v11 = v54;
          if (v54 >= v50 || v54 < v52)
          {
            goto LABEL_106;
          }

          *(v8 + v37 + 37) = *v54;
LABEL_79:
          v55 = -1;
          goto LABEL_84;
        }

        v56 = &v51[v16];
        *v11 = v56;
        if (v56 >= v50 || v56 < v52)
        {
          goto LABEL_106;
        }

        *(v8 + v37 + 37) = *v56;
      }

      else
      {
        if (v51 >= v50 || v51 < v52)
        {
          goto LABEL_106;
        }

        *(v8 + v37 + 37) = *v51;
        if (v9)
        {
          goto LABEL_79;
        }
      }

      v55 = 1;
LABEL_84:
      v57 = *(v8 + 104);
      v58 = (*(v8 + 96) + v55);
      v59 = *(v8 + 112);
      *(v8 + 96) = v58;
      v60 = vadd_s32(*(v8 + 120), 0x1FFFFFFFFLL);
      *(v8 + 120) = v60;
      if (v60.i32[1] == a5)
      {
        *(v8 + 124) = 0;
        if (!v9)
        {
          v63 = &v58[v16];
          *v11 = v63;
          if (v63 >= v57 || v63 < v59)
          {
            goto LABEL_106;
          }

          *(v8 + v37 + 36) = *v63;
LABEL_96:
          v62 = 1;
          goto LABEL_97;
        }

        v61 = &v58[v32];
        *v11 = v61;
        if (v61 >= v57 || v61 < v59)
        {
          goto LABEL_106;
        }

        *(v8 + v37 + 36) = *v61;
      }

      else
      {
        if (v58 >= v57 || v58 < v59)
        {
          goto LABEL_106;
        }

        *(v8 + v37 + 36) = *v58;
        if (!v9)
        {
          goto LABEL_96;
        }
      }

      v62 = -1;
LABEL_97:
      v36 = *(v8 + 104);
      v35 = (*(v8 + 96) + v62);
      v38 = *(v8 + 112);
      *(v8 + 96) = v35;
      v64 = vadd_s32(*(v8 + 120), 0x1FFFFFFFFLL);
      *(v8 + 120) = v64;
      if (v64.i32[1] == a5)
      {
        *(v8 + 124) = 0;
        v35 += v34;
        *(v8 + 96) = v35;
      }

      v37 += 4;
      if (v37 >= 0x3C)
      {
        result = hashComputation(v8);
        if (--v15 > 2)
        {
          goto LABEL_45;
        }

LABEL_101:
        v67[2] = 0u;
        v67[3] = 0u;
        *v67 = 0u;
        v67[1] = 0u;
        v15 = 2;
        goto LABEL_102;
      }
    }
  }

  v18 = *(v8 + 96);
  v17 = *(v8 + 104);
  v67 = (v8 + 32);
  v19 = *(v8 + 112);
LABEL_17:
  v20 = -4;
  while (1)
  {
    v21 = (v18 + v20 + 4);
    v22 = v21 < v17 && v21 >= v19;
    v23 = (v8 + v20 + 39);
    if (!v22 || v23 >= v11)
    {
      break;
    }

    v26 = *v21;
    v25 = (v18 + v20 + 5);
    *v23 = v26;
    if (v25 >= v17 || v25 < v19)
    {
      break;
    }

    v29 = *v25;
    v28 = (v18 + v20 + 6);
    *(v8 + v20 + 38) = v29;
    if (v28 >= v17)
    {
      break;
    }

    if (v28 < v19)
    {
      break;
    }

    v31 = *v28;
    v30 = (v18 + v20 + 7);
    *(v8 + v20 + 37) = v31;
    if (v30 >= v17 || v30 < v19)
    {
      break;
    }

    *(v8 + v20 + 36) = *v30;
    v20 += 4;
    if (v20 >= 0x3C)
    {
      v18 += v20 + 4;
      result = hashComputation(v8);
      if (--v15 > 2)
      {
        goto LABEL_17;
      }

      *(v8 + 120) += *(v8 + 96) - v18;
      *(v8 + 96) = v18;
      *(v8 + 104) = v17;
      *(v8 + 112) = v19;
      goto LABEL_101;
    }
  }

LABEL_106:
  __break(0x5519u);
  return result;
}

unint64_t copyMsgToBuf(unint64_t result, int a2, int a3, int a4)
{
  v4 = *(result + 120);
  if (!v4)
  {
    return 1;
  }

  v5 = *(result + 132);
  if (v5 == 64)
  {
    v6 = 0;
LABEL_22:
    *(result + 132) = v6;
    return v6 != 0;
  }

  else
  {
    v7 = (result + 32);
    v8 = 64 - v5;
    if (v4 >= v8)
    {
      v4 = v8;
    }

    v9 = *(result + 96);
    v10 = *(result + 104);
    v11 = *(result + 112);
    v12 = 1;
    if (a4)
    {
      v12 = -1;
      v13 = a3;
    }

    else
    {
      v13 = -a3;
    }

    v14 = (v13 + a2);
    while (v9 < v10 && v9 >= v11)
    {
      v15 = *v9;
      v16 = *(result + 132);
      *(result + 132) = v16 + 1;
      v17 = (v7 + (v16 ^ 3));
      if (v17 >= result + 96 || v17 < v7)
      {
        break;
      }

      v17->i8[0] = v15;
      v10 = *(result + 104);
      v9 = (*(result + 96) + v12);
      v11 = *(result + 112);
      *(result + 96) = v9;
      v19 = vadd_s32(*(result + 120), 0x1FFFFFFFFLL);
      *(result + 120) = v19;
      if (v19.i32[1] == a3)
      {
        *(result + 124) = 0;
        v9 += v14;
        *(result + 96) = v9;
      }

      if (!--v4)
      {
        v6 = *(result + 132) & 0x3F;
        goto LABEL_22;
      }
    }

    __break(0x5519u);
  }

  return result;
}

_DWORD *hashComputation(_DWORD *result)
{
  v1 = result[4];
  v2 = result[5];
  v336 = result[7];
  LODWORD(v3) = v1 ^ __ROR4__(v1 ^ __ROR4__(v1, 14), 5);
  HIDWORD(v3) = v3;
  v4 = result[9];
  v327 = result[8];
  v334 = result[3];
  v335 = result[6];
  v5 = (v3 >> 6) + (v2 & v1 | v335 & ~v1) + v336 + v327 + 1116352408;
  v6 = v5 + v334;
  LODWORD(v3) = (v5 + v334) ^ __ROR4__((v5 + v334) ^ __ROR4__(v5 + v334, 14), 5);
  HIDWORD(v3) = v3;
  v332 = v2;
  v333 = result[2];
  v7 = v335 + (v1 & (v5 + v334) | v2 & ~(v5 + v334)) + v4 + 1899447441 + (v3 >> 6);
  v8 = v7 + v333;
  LODWORD(v3) = (v7 + v333) ^ __ROR4__((v7 + v333) ^ __ROR4__(v7 + v333, 14), 5);
  HIDWORD(v3) = v3;
  v9 = v3 >> 6;
  v11 = result[10];
  v10 = result[11];
  LODWORD(v3) = *result ^ __ROR4__(*result ^ __ROR4__(*result, 9), 11);
  HIDWORD(v3) = v3;
  v12 = *result;
  v13 = (v333 & (result[1] | *result) | result[1] & *result) + (v3 >> 2) + v5;
  v330 = result[1];
  v331 = result[4];
  LODWORD(v3) = v13 ^ __ROR4__(v13 ^ __ROR4__(v13, 9), 11);
  HIDWORD(v3) = v3;
  v14 = v3 >> 2;
  v15 = result[5] + ((v5 + v334) & (v7 + v333) | v331 & ~(v7 + v333)) + v11 - 1245643825 + v9;
  v16 = v15 + v330;
  LODWORD(v3) = (v15 + v330) ^ __ROR4__((v15 + v330) ^ __ROR4__(v15 + v330, 14), 5);
  HIDWORD(v3) = v3;
  v17 = v331 + ((v7 + v333) & (v15 + v330) | v6 & ~(v15 + v330)) + v10 - 373957723 + (v3 >> 6);
  v18 = v17 + v12;
  LODWORD(v3) = (v17 + *result) ^ __ROR4__((v17 + *result) ^ __ROR4__(v17 + *result, 14), 5);
  HIDWORD(v3) = v3;
  v20 = result[12];
  v19 = result[13];
  v21 = v6 + ((v15 + v330) & (v17 + v12) | (v7 + v333) & ~(v17 + v12)) + v20 + 961987163 + (v3 >> 6);
  v22 = v21 + v13;
  LODWORD(v3) = (v21 + v13) ^ __ROR4__((v21 + v13) ^ __ROR4__(v21 + v13, 14), 5);
  HIDWORD(v3) = v3;
  v329 = *result;
  v23 = v14 + ((v13 | v12) & v330 | v13 & v12) + v7;
  v24 = v8 + ((v17 + *result) & (v21 + v13) | (v15 + v330) & ~(v21 + v13)) + v19 + 1508970993 + (v3 >> 6);
  v25 = v24 + v23;
  LODWORD(v3) = (v24 + v23) ^ __ROR4__((v24 + v23) ^ __ROR4__(v24 + v23, 14), 5);
  HIDWORD(v3) = v3;
  v26 = v3 >> 6;
  LODWORD(v3) = v23 ^ __ROR4__(v23 ^ __ROR4__(v23, 9), 11);
  HIDWORD(v3) = v3;
  v27 = (v3 >> 2) + ((v23 | v13) & *result | v23 & v13) + v15;
  LODWORD(v3) = v27 ^ __ROR4__(v27 ^ __ROR4__(v27, 9), 11);
  HIDWORD(v3) = v3;
  v28 = (v3 >> 2) + ((v27 | v23) & v13 | v27 & v23) + v17;
  LODWORD(v3) = v28 ^ __ROR4__(v28 ^ __ROR4__(v28, 9), 11);
  HIDWORD(v3) = v3;
  v29 = (v3 >> 2) + ((v28 | v27) & v23 | v28 & v27) + v21;
  LODWORD(v3) = v29 ^ __ROR4__(v29 ^ __ROR4__(v29, 9), 11);
  HIDWORD(v3) = v3;
  v30 = (v3 >> 2) + ((v29 | v28) & v27 | v29 & v28) + v24;
  LODWORD(v3) = v30 ^ __ROR4__(v30 ^ __ROR4__(v30, 9), 11);
  HIDWORD(v3) = v3;
  v31 = v3 >> 2;
  v33 = result[14];
  v32 = result[15];
  v34 = v16 + (v22 & v25 | v18 & ~v25) + v33 - 1841331548 + v26;
  LODWORD(v3) = (v34 + v27) ^ __ROR4__((v34 + v27) ^ __ROR4__(v34 + v27, 14), 5);
  HIDWORD(v3) = v3;
  v35 = v18 + (v25 & (v34 + v27) | v22 & ~(v34 + v27)) + v32 - 1424204075 + (v3 >> 6);
  v36 = v35 + v28;
  LODWORD(v3) = (v35 + v28) ^ __ROR4__((v35 + v28) ^ __ROR4__(v35 + v28, 14), 5);
  HIDWORD(v3) = v3;
  v38 = result[16];
  v37 = result[17];
  v39 = v22 + ((v34 + v27) & v36 | v25 & ~v36) + v38 - 670586216 + (v3 >> 6);
  LODWORD(v3) = (v39 + v29) ^ __ROR4__((v39 + v29) ^ __ROR4__(v39 + v29, 14), 5);
  HIDWORD(v3) = v3;
  v40 = v31 + ((v30 | v29) & v28 | v30 & v29) + v34;
  v41 = v25 + ((v35 + v28) & (v39 + v29) | (v34 + v27) & ~(v39 + v29)) + v37 + 310598401 + (v3 >> 6);
  v42 = v41 + v30;
  v43 = result[18];
  v44 = result[19];
  LODWORD(v3) = (v41 + v30) ^ __ROR4__((v41 + v30) ^ __ROR4__(v41 + v30, 14), 5);
  HIDWORD(v3) = v3;
  v45 = v34 + v27 + ((v39 + v29) & (v41 + v30) | v36 & ~(v41 + v30)) + v43 + 607225278 + (v3 >> 6);
  LODWORD(v3) = v40 ^ __ROR4__(v40 ^ __ROR4__(v40, 9), 11);
  HIDWORD(v3) = v3;
  v46 = (v3 >> 2) + ((v40 | v30) & v29 | v40 & v30) + v35;
  LODWORD(v3) = v46 ^ __ROR4__(v46 ^ __ROR4__(v46, 9), 11);
  HIDWORD(v3) = v3;
  v47 = (v3 >> 2) + ((v46 | v40) & v30 | v46 & v40) + v39;
  LODWORD(v3) = v47 ^ __ROR4__(v47 ^ __ROR4__(v47, 9), 11);
  HIDWORD(v3) = v3;
  v48 = v45 + v40;
  v49 = (v3 >> 2) + ((v47 | v46) & v40 | v47 & v46) + v41;
  LODWORD(v3) = v48 ^ __ROR4__(v48 ^ __ROR4__(v48, 14), 5);
  HIDWORD(v3) = v3;
  v50 = v36 + ((v41 + v30) & v48 | (v39 + v29) & ~v48) + v44 + 1426881987 + (v3 >> 6);
  v51 = v50 + v46;
  v52 = result[20];
  v53 = result[21];
  LODWORD(v3) = (v50 + v46) ^ __ROR4__((v50 + v46) ^ __ROR4__(v50 + v46, 14), 5);
  HIDWORD(v3) = v3;
  v54 = v39 + v29 + (v48 & (v50 + v46) | v42 & ~(v50 + v46)) + v52 + 1925078388 + (v3 >> 6);
  v55 = v54 + v47;
  LODWORD(v3) = (v54 + v47) ^ __ROR4__((v54 + v47) ^ __ROR4__(v54 + v47, 14), 5);
  HIDWORD(v3) = v3;
  v56 = v42 + ((v50 + v46) & (v54 + v47) | v48 & ~(v54 + v47)) + v53 - 2132889090 + (v3 >> 6);
  v57 = v56 + v49;
  LODWORD(v3) = (v56 + v49) ^ __ROR4__((v56 + v49) ^ __ROR4__(v56 + v49, 14), 5);
  HIDWORD(v3) = v3;
  v59 = result[22];
  v58 = result[23];
  v60 = v48 + ((v54 + v47) & (v56 + v49) | (v50 + v46) & ~(v56 + v49)) + v59 - 1680079193 + (v3 >> 6);
  LODWORD(v3) = v49 ^ __ROR4__(v49 ^ __ROR4__(v49, 9), 11);
  HIDWORD(v3) = v3;
  v61 = (v3 >> 2) + ((v49 | v47) & v46 | v49 & v47) + v45;
  LODWORD(v3) = v61 ^ __ROR4__(v61 ^ __ROR4__(v61, 9), 11);
  HIDWORD(v3) = v3;
  v62 = (v3 >> 2) + ((v61 | v49) & v47 | v61 & v49) + v50;
  LODWORD(v3) = v62 ^ __ROR4__(v62 ^ __ROR4__(v62, 9), 11);
  HIDWORD(v3) = v3;
  v63 = (v3 >> 2) + ((v62 | v61) & v49 | v62 & v61) + v54;
  LODWORD(v3) = v63 ^ __ROR4__(v63 ^ __ROR4__(v63, 9), 11);
  HIDWORD(v3) = v3;
  v64 = (v3 >> 2) + ((v63 | v62) & v61 | v63 & v62) + v56;
  LODWORD(v3) = v64 ^ __ROR4__(v64 ^ __ROR4__(v64, 9), 11);
  HIDWORD(v3) = v3;
  v65 = (v3 >> 2) + ((v64 | v63) & v62 | v64 & v63) + v60;
  v66 = v60 + v61;
  LODWORD(v3) = (v60 + v61) ^ __ROR4__((v60 + v61) ^ __ROR4__(v60 + v61, 14), 5);
  HIDWORD(v3) = v3;
  v67 = v51 + v58 + (v57 & (v60 + v61) | v55 & ~(v60 + v61)) - 1046744716 + (v3 >> 6);
  LODWORD(v3) = v65 ^ __ROR4__(v65 ^ __ROR4__(v65, 9), 11);
  HIDWORD(v3) = v3;
  v68 = (v3 >> 2) + ((v65 | v64) & v63 | v65 & v64);
  LODWORD(v3) = v59 ^ __ROR4__(v59, 2);
  HIDWORD(v3) = v3;
  v69 = v3 >> 17;
  v70 = v67 + v62;
  v71 = v68 + v67;
  LODWORD(v3) = v4 ^ __ROR4__(v4, 11);
  HIDWORD(v3) = v3;
  v72 = ((v3 >> 7) ^ (v4 >> 3)) + v327 + v37 + (v69 ^ (v59 >> 10));
  LODWORD(v3) = v70 ^ __ROR4__(v70 ^ __ROR4__(v70, 14), 5);
  HIDWORD(v3) = v3;
  v73 = v55 + v72 + (v66 & v70 | v57 & ~v70) - 459576895 + (v3 >> 6);
  LODWORD(v3) = v71 ^ __ROR4__(v71 ^ __ROR4__(v71, 9), 11);
  HIDWORD(v3) = v3;
  v74 = v73 + v63;
  v75 = (v3 >> 2) + ((v71 | v65) & v64 | v71 & v65) + v73;
  LODWORD(v3) = v11 ^ __ROR4__(v11, 11);
  HIDWORD(v3) = v3;
  v76 = ((v3 >> 7) ^ (v11 >> 3)) + v4 + v43;
  LODWORD(v3) = v58 ^ __ROR4__(v58, 2);
  HIDWORD(v3) = v3;
  v77 = v76 + ((v3 >> 17) ^ (v58 >> 10));
  LODWORD(v3) = v74 ^ __ROR4__(v74 ^ __ROR4__(v74, 14), 5);
  HIDWORD(v3) = v3;
  v78 = v57 + v77 + (v70 & v74 | v66 & ~v74) - 272742522 + (v3 >> 6);
  LODWORD(v3) = v75 ^ __ROR4__(v75 ^ __ROR4__(v75, 9), 11);
  HIDWORD(v3) = v3;
  v79 = v78 + v64;
  v80 = (v3 >> 2) + ((v75 | v71) & v65 | v75 & v71) + v78;
  LODWORD(v3) = v10 ^ __ROR4__(v10, 11);
  HIDWORD(v3) = v3;
  v81 = ((v3 >> 7) ^ (v10 >> 3)) + v11 + v44;
  LODWORD(v3) = v72 ^ __ROR4__(v72, 2);
  HIDWORD(v3) = v3;
  v82 = v81 + ((v3 >> 17) ^ (v72 >> 10));
  LODWORD(v3) = v79 ^ __ROR4__(v79 ^ __ROR4__(v79, 14), 5);
  HIDWORD(v3) = v3;
  v83 = v66 + v82 + (v74 & v79 | v70 & ~v79) + 264347078 + (v3 >> 6);
  LODWORD(v3) = v80 ^ __ROR4__(v80 ^ __ROR4__(v80, 9), 11);
  HIDWORD(v3) = v3;
  v84 = (v3 >> 2) + ((v80 | v75) & v71 | v80 & v75);
  LODWORD(v3) = v77 ^ __ROR4__(v77, 2);
  HIDWORD(v3) = v3;
  v85 = v3 >> 17;
  v86 = v83 + v65;
  v87 = v84 + v83;
  LODWORD(v3) = v20 ^ __ROR4__(v20, 11);
  HIDWORD(v3) = v3;
  v88 = ((v3 >> 7) ^ (v20 >> 3)) + v10 + v52 + (v85 ^ (v77 >> 10));
  LODWORD(v3) = v86 ^ __ROR4__(v86 ^ __ROR4__(v86, 14), 5);
  HIDWORD(v3) = v3;
  v89 = v70 + v88 + (v79 & v86 | v74 & ~v86) + 604807628 + (v3 >> 6);
  LODWORD(v3) = v87 ^ __ROR4__(v87 ^ __ROR4__(v87, 9), 11);
  HIDWORD(v3) = v3;
  v90 = v89 + v71;
  v91 = (v3 >> 2) + ((v87 | v80) & v75 | v87 & v80) + v89;
  LODWORD(v3) = v19 ^ __ROR4__(v19, 11);
  HIDWORD(v3) = v3;
  v92 = ((v3 >> 7) ^ (v19 >> 3)) + v20 + v53;
  LODWORD(v3) = v82 ^ __ROR4__(v82, 2);
  HIDWORD(v3) = v3;
  v93 = v92 + ((v3 >> 17) ^ (v82 >> 10));
  LODWORD(v3) = v90 ^ __ROR4__(v90 ^ __ROR4__(v90, 14), 5);
  HIDWORD(v3) = v3;
  v94 = v93 + v74 + (v86 & v90 | v79 & ~v90) + 770255983 + (v3 >> 6);
  LODWORD(v3) = v91 ^ __ROR4__(v91 ^ __ROR4__(v91, 9), 11);
  HIDWORD(v3) = v3;
  v95 = v94 + v75;
  v96 = (v3 >> 2) + ((v91 | v87) & v80 | v91 & v87) + v94;
  LODWORD(v3) = v33 ^ __ROR4__(v33, 11);
  HIDWORD(v3) = v3;
  v97 = ((v3 >> 7) ^ (v33 >> 3)) + v19 + v59;
  LODWORD(v3) = v88 ^ __ROR4__(v88, 2);
  HIDWORD(v3) = v3;
  v98 = v97 + ((v3 >> 17) ^ (v88 >> 10));
  LODWORD(v3) = v95 ^ __ROR4__(v95 ^ __ROR4__(v95, 14), 5);
  HIDWORD(v3) = v3;
  v99 = v98 + v79 + (v90 & v95 | v86 & ~v95) + 1249150122 + (v3 >> 6);
  LODWORD(v3) = v96 ^ __ROR4__(v96 ^ __ROR4__(v96, 9), 11);
  HIDWORD(v3) = v3;
  v100 = (v3 >> 2) + ((v96 | v91) & v87 | v96 & v91);
  LODWORD(v3) = v93 ^ __ROR4__(v93, 2);
  HIDWORD(v3) = v3;
  v101 = v3 >> 17;
  v102 = v99 + v80;
  v103 = v100 + v99;
  LODWORD(v3) = v32 ^ __ROR4__(v32, 11);
  HIDWORD(v3) = v3;
  v104 = ((v3 >> 7) ^ (v32 >> 3)) + v33 + v58 + (v101 ^ (v93 >> 10));
  LODWORD(v3) = v102 ^ __ROR4__(v102 ^ __ROR4__(v102, 14), 5);
  HIDWORD(v3) = v3;
  v105 = v104 + v86 + (v95 & v102 | v90 & ~v102) + 1555081692 + (v3 >> 6);
  LODWORD(v3) = v103 ^ __ROR4__(v103 ^ __ROR4__(v103, 9), 11);
  HIDWORD(v3) = v3;
  v106 = v105 + v87;
  v107 = (v3 >> 2) + ((v103 | v96) & v91 | v103 & v96) + v105;
  LODWORD(v3) = v38 ^ __ROR4__(v38, 11);
  HIDWORD(v3) = v3;
  v108 = ((v3 >> 7) ^ (v38 >> 3)) + v32;
  LODWORD(v3) = v98 ^ __ROR4__(v98, 2);
  HIDWORD(v3) = v3;
  v109 = v108 + v72 + ((v3 >> 17) ^ (v98 >> 10));
  LODWORD(v3) = v106 ^ __ROR4__(v106 ^ __ROR4__(v106, 14), 5);
  HIDWORD(v3) = v3;
  v110 = v109 + v90 + (v102 & v106 | v95 & ~v106) + 1996064986 + (v3 >> 6);
  LODWORD(v3) = v107 ^ __ROR4__(v107 ^ __ROR4__(v107, 9), 11);
  HIDWORD(v3) = v3;
  v111 = v110 + v91;
  v112 = (v3 >> 2) + ((v107 | v103) & v96 | v107 & v103) + v110;
  LODWORD(v3) = v37 ^ __ROR4__(v37, 11);
  HIDWORD(v3) = v3;
  v113 = ((v3 >> 7) ^ (v37 >> 3)) + v38;
  LODWORD(v3) = v104 ^ __ROR4__(v104, 2);
  HIDWORD(v3) = v3;
  v326 = v104;
  v114 = v113 + v77 + ((v3 >> 17) ^ (v104 >> 10));
  LODWORD(v3) = v111 ^ __ROR4__(v111 ^ __ROR4__(v111, 14), 5);
  HIDWORD(v3) = v3;
  v115 = v114 + v95 + (v106 & v111 | v102 & ~v111) - 1740746414 + (v3 >> 6);
  LODWORD(v3) = v112 ^ __ROR4__(v112 ^ __ROR4__(v112, 9), 11);
  HIDWORD(v3) = v3;
  v116 = (v3 >> 2) + ((v112 | v107) & v103 | v112 & v107);
  v117 = v115 + v96;
  LODWORD(v3) = v43 ^ __ROR4__(v43, 11);
  HIDWORD(v3) = v3;
  v118 = v116 + v115;
  v119 = ((v3 >> 7) ^ (v43 >> 3)) + v37;
  LODWORD(v3) = v109 ^ __ROR4__(v109, 2);
  HIDWORD(v3) = v3;
  v120 = v119 + v82 + ((v3 >> 17) ^ (v109 >> 10));
  LODWORD(v3) = v117 ^ __ROR4__(v117 ^ __ROR4__(v117, 14), 5);
  HIDWORD(v3) = v3;
  v121 = v120 + v102 + (v111 & v117 | v106 & ~v117) - 1473132947 + (v3 >> 6);
  LODWORD(v3) = v118 ^ __ROR4__(v118 ^ __ROR4__(v118, 9), 11);
  HIDWORD(v3) = v3;
  v122 = v121 + v103;
  v123 = (v3 >> 2) + ((v118 | v112) & v107 | v118 & v112) + v121;
  LODWORD(v3) = v44 ^ __ROR4__(v44, 11);
  HIDWORD(v3) = v3;
  v124 = ((v3 >> 7) ^ (v44 >> 3)) + v43;
  LODWORD(v3) = v114 ^ __ROR4__(v114, 2);
  HIDWORD(v3) = v3;
  v125 = v124 + v88 + ((v3 >> 17) ^ (v114 >> 10));
  LODWORD(v3) = v122 ^ __ROR4__(v122 ^ __ROR4__(v122, 14), 5);
  HIDWORD(v3) = v3;
  v126 = v125 + v106 + (v117 & v122 | v111 & ~v122) - 1341970488 + (v3 >> 6);
  LODWORD(v3) = v123 ^ __ROR4__(v123 ^ __ROR4__(v123, 9), 11);
  HIDWORD(v3) = v3;
  v127 = v126 + v107;
  v128 = (v3 >> 2) + ((v123 | v118) & v112 | v123 & v118) + v126;
  LODWORD(v3) = v52 ^ __ROR4__(v52, 11);
  HIDWORD(v3) = v3;
  v129 = ((v3 >> 7) ^ (v52 >> 3)) + v44;
  LODWORD(v3) = v120 ^ __ROR4__(v120, 2);
  HIDWORD(v3) = v3;
  v130 = v129 + v93 + ((v3 >> 17) ^ (v120 >> 10));
  LODWORD(v3) = v127 ^ __ROR4__(v127 ^ __ROR4__(v127, 14), 5);
  HIDWORD(v3) = v3;
  v131 = v130 + v111 + (v122 & v127 | v117 & ~v127) - 1084653625 + (v3 >> 6);
  LODWORD(v3) = v128 ^ __ROR4__(v128 ^ __ROR4__(v128, 9), 11);
  HIDWORD(v3) = v3;
  v132 = (v3 >> 2) + ((v128 | v123) & v118 | v128 & v123);
  v133 = v131 + v112;
  LODWORD(v3) = v53 ^ __ROR4__(v53, 11);
  HIDWORD(v3) = v3;
  v134 = v132 + v131;
  v135 = ((v3 >> 7) ^ (v53 >> 3)) + v52;
  LODWORD(v3) = v125 ^ __ROR4__(v125, 2);
  HIDWORD(v3) = v3;
  v136 = v135 + v98 + ((v3 >> 17) ^ (v125 >> 10));
  LODWORD(v3) = v133 ^ __ROR4__(v133 ^ __ROR4__(v133, 14), 5);
  HIDWORD(v3) = v3;
  v137 = v136 + v117 + (v127 & v133 | v122 & ~v133) - 958395405 + (v3 >> 6);
  LODWORD(v3) = v134 ^ __ROR4__(v134 ^ __ROR4__(v134, 9), 11);
  HIDWORD(v3) = v3;
  v138 = v137 + v118;
  v139 = (v3 >> 2) + ((v134 | v128) & v123 | v134 & v128) + v137;
  LODWORD(v3) = v59 ^ __ROR4__(v59, 11);
  HIDWORD(v3) = v3;
  v140 = ((v3 >> 7) ^ (v59 >> 3)) + v53;
  LODWORD(v3) = v130 ^ __ROR4__(v130, 2);
  HIDWORD(v3) = v3;
  v141 = v140 + v104 + ((v3 >> 17) ^ (v130 >> 10));
  LODWORD(v3) = v138 ^ __ROR4__(v138 ^ __ROR4__(v138, 14), 5);
  HIDWORD(v3) = v3;
  v142 = v141 + v122 + (v133 & v138 | v127 & ~v138) - 710438585 + (v3 >> 6);
  LODWORD(v3) = v139 ^ __ROR4__(v139 ^ __ROR4__(v139, 9), 11);
  HIDWORD(v3) = v3;
  v143 = v142 + v123;
  v144 = (v3 >> 2) + ((v139 | v134) & v128 | v139 & v134) + v142;
  LODWORD(v3) = v58 ^ __ROR4__(v58, 11);
  HIDWORD(v3) = v3;
  v145 = ((v3 >> 7) ^ (v58 >> 3)) + v59;
  LODWORD(v3) = v136 ^ __ROR4__(v136, 2);
  HIDWORD(v3) = v3;
  v328 = v136;
  v146 = v145 + v109 + ((v3 >> 17) ^ (v136 >> 10));
  LODWORD(v3) = v143 ^ __ROR4__(v143 ^ __ROR4__(v143, 14), 5);
  HIDWORD(v3) = v3;
  v147 = v146 + v127 + (v138 & v143 | v133 & ~v143) + 113926993 + (v3 >> 6);
  LODWORD(v3) = v144 ^ __ROR4__(v144 ^ __ROR4__(v144, 9), 11);
  HIDWORD(v3) = v3;
  v148 = (v3 >> 2) + ((v144 | v139) & v134 | v144 & v139);
  v149 = v147 + v128;
  LODWORD(v3) = v72 ^ __ROR4__(v72, 11);
  HIDWORD(v3) = v3;
  v150 = v148 + v147;
  v151 = ((v3 >> 7) ^ (v72 >> 3)) + v58;
  LODWORD(v3) = v141 ^ __ROR4__(v141, 2);
  HIDWORD(v3) = v3;
  v152 = v151 + v114 + ((v3 >> 17) ^ (v141 >> 10));
  LODWORD(v3) = v149 ^ __ROR4__(v149 ^ __ROR4__(v149, 14), 5);
  HIDWORD(v3) = v3;
  v153 = v152 + v133 + (v143 & v149 | v138 & ~v149) + 338241895 + (v3 >> 6);
  LODWORD(v3) = v150 ^ __ROR4__(v150 ^ __ROR4__(v150, 9), 11);
  HIDWORD(v3) = v3;
  v154 = v153 + v134;
  v155 = (v3 >> 2) + ((v150 | v144) & v139 | v150 & v144) + v153;
  LODWORD(v3) = v77 ^ __ROR4__(v77, 11);
  HIDWORD(v3) = v3;
  v156 = ((v3 >> 7) ^ (v77 >> 3)) + v72;
  LODWORD(v3) = v146 ^ __ROR4__(v146, 2);
  HIDWORD(v3) = v3;
  v157 = v156 + v120 + ((v3 >> 17) ^ (v146 >> 10));
  LODWORD(v3) = v154 ^ __ROR4__(v154 ^ __ROR4__(v154, 14), 5);
  HIDWORD(v3) = v3;
  v158 = v157 + v138 + (v149 & v154 | v143 & ~v154) + 666307205 + (v3 >> 6);
  LODWORD(v3) = v155 ^ __ROR4__(v155 ^ __ROR4__(v155, 9), 11);
  HIDWORD(v3) = v3;
  v159 = v158 + v139;
  v160 = (v3 >> 2) + ((v155 | v150) & v144 | v155 & v150) + v158;
  LODWORD(v3) = v82 ^ __ROR4__(v82, 11);
  HIDWORD(v3) = v3;
  v161 = ((v3 >> 7) ^ (v82 >> 3)) + v77;
  LODWORD(v3) = v152 ^ __ROR4__(v152, 2);
  HIDWORD(v3) = v3;
  v162 = v161 + v125 + ((v3 >> 17) ^ (v152 >> 10));
  LODWORD(v3) = v159 ^ __ROR4__(v159 ^ __ROR4__(v159, 14), 5);
  HIDWORD(v3) = v3;
  v163 = v162 + v143 + (v154 & v159 | v149 & ~v159) + 773529912 + (v3 >> 6);
  LODWORD(v3) = v160 ^ __ROR4__(v160 ^ __ROR4__(v160, 9), 11);
  HIDWORD(v3) = v3;
  v164 = (v3 >> 2) + ((v160 | v155) & v150 | v160 & v155);
  v165 = v163 + v144;
  LODWORD(v3) = v88 ^ __ROR4__(v88, 11);
  HIDWORD(v3) = v3;
  v166 = v164 + v163;
  v167 = ((v3 >> 7) ^ (v88 >> 3)) + v82;
  LODWORD(v3) = v157 ^ __ROR4__(v157, 2);
  HIDWORD(v3) = v3;
  v168 = v167 + v130 + ((v3 >> 17) ^ (v157 >> 10));
  LODWORD(v3) = v165 ^ __ROR4__(v165 ^ __ROR4__(v165, 14), 5);
  HIDWORD(v3) = v3;
  v169 = v168 + v149 + (v159 & v165 | v154 & ~v165) + 1294757372 + (v3 >> 6);
  LODWORD(v3) = v166 ^ __ROR4__(v166 ^ __ROR4__(v166, 9), 11);
  HIDWORD(v3) = v3;
  v170 = v169 + v150;
  v171 = (v3 >> 2) + ((v166 | v160) & v155 | v166 & v160) + v169;
  LODWORD(v3) = v93 ^ __ROR4__(v93, 11);
  HIDWORD(v3) = v3;
  v172 = ((v3 >> 7) ^ (v93 >> 3)) + v88;
  LODWORD(v3) = v162 ^ __ROR4__(v162, 2);
  HIDWORD(v3) = v3;
  v173 = v172 + v136 + ((v3 >> 17) ^ (v162 >> 10));
  LODWORD(v3) = v170 ^ __ROR4__(v170 ^ __ROR4__(v170, 14), 5);
  HIDWORD(v3) = v3;
  v174 = v173 + v154 + (v165 & v170 | v159 & ~v170) + 1396182291 + (v3 >> 6);
  LODWORD(v3) = v171 ^ __ROR4__(v171 ^ __ROR4__(v171, 9), 11);
  HIDWORD(v3) = v3;
  v175 = v174 + v155;
  v176 = (v3 >> 2) + ((v171 | v166) & v160 | v171 & v166) + v174;
  LODWORD(v3) = v98 ^ __ROR4__(v98, 11);
  HIDWORD(v3) = v3;
  v177 = ((v3 >> 7) ^ (v98 >> 3)) + v93;
  LODWORD(v3) = v168 ^ __ROR4__(v168, 2);
  HIDWORD(v3) = v3;
  v178 = v177 + v141 + ((v3 >> 17) ^ (v168 >> 10));
  LODWORD(v3) = v175 ^ __ROR4__(v175 ^ __ROR4__(v175, 14), 5);
  HIDWORD(v3) = v3;
  v179 = v178 + v159 + (v170 & v175 | v165 & ~v175) + 1695183700 + (v3 >> 6);
  LODWORD(v3) = v176 ^ __ROR4__(v176 ^ __ROR4__(v176, 9), 11);
  HIDWORD(v3) = v3;
  v180 = (v3 >> 2) + ((v176 | v171) & v166 | v176 & v171);
  v181 = v179 + v160;
  LODWORD(v3) = v326 ^ __ROR4__(v326, 11);
  HIDWORD(v3) = v3;
  v182 = v180 + v179;
  v183 = ((v3 >> 7) ^ (v326 >> 3)) + v98;
  LODWORD(v3) = v173 ^ __ROR4__(v173, 2);
  HIDWORD(v3) = v3;
  v184 = v183 + v146 + ((v3 >> 17) ^ (v173 >> 10));
  LODWORD(v3) = v181 ^ __ROR4__(v181 ^ __ROR4__(v181, 14), 5);
  HIDWORD(v3) = v3;
  v185 = v184 + v165 + (v175 & v181 | v170 & ~v181) + 1986661051 + (v3 >> 6);
  LODWORD(v3) = v182 ^ __ROR4__(v182 ^ __ROR4__(v182, 9), 11);
  HIDWORD(v3) = v3;
  v186 = v185 + v166;
  v187 = (v3 >> 2) + ((v182 | v176) & v171 | v182 & v176) + v185;
  LODWORD(v3) = v109 ^ __ROR4__(v109, 11);
  HIDWORD(v3) = v3;
  v188 = ((v3 >> 7) ^ (v109 >> 3)) + v326;
  LODWORD(v3) = v178 ^ __ROR4__(v178, 2);
  HIDWORD(v3) = v3;
  v189 = v188 + v152 + ((v3 >> 17) ^ (v178 >> 10));
  LODWORD(v3) = v186 ^ __ROR4__(v186 ^ __ROR4__(v186, 14), 5);
  HIDWORD(v3) = v3;
  v190 = v189 + v170 + (v181 & v186 | v175 & ~v186) - 2117940946 + (v3 >> 6);
  LODWORD(v3) = v187 ^ __ROR4__(v187 ^ __ROR4__(v187, 9), 11);
  HIDWORD(v3) = v3;
  v191 = v190 + v171;
  v192 = (v3 >> 2) + ((v187 | v182) & v176 | v187 & v182) + v190;
  LODWORD(v3) = v114 ^ __ROR4__(v114, 11);
  HIDWORD(v3) = v3;
  v193 = ((v3 >> 7) ^ (v114 >> 3)) + v109;
  LODWORD(v3) = v184 ^ __ROR4__(v184, 2);
  HIDWORD(v3) = v3;
  v194 = v193 + v157 + ((v3 >> 17) ^ (v184 >> 10));
  LODWORD(v3) = v191 ^ __ROR4__(v191 ^ __ROR4__(v191, 14), 5);
  HIDWORD(v3) = v3;
  v195 = v194 + v175 + (v186 & v191 | v181 & ~v191) - 1838011259 + (v3 >> 6);
  LODWORD(v3) = v192 ^ __ROR4__(v192 ^ __ROR4__(v192, 9), 11);
  HIDWORD(v3) = v3;
  v196 = (v3 >> 2) + ((v192 | v187) & v182 | v192 & v187);
  v197 = v195 + v176;
  LODWORD(v3) = v120 ^ __ROR4__(v120, 11);
  HIDWORD(v3) = v3;
  v198 = v196 + v195;
  v199 = ((v3 >> 7) ^ (v120 >> 3)) + v114;
  LODWORD(v3) = v189 ^ __ROR4__(v189, 2);
  HIDWORD(v3) = v3;
  v200 = v199 + v162 + ((v3 >> 17) ^ (v189 >> 10));
  LODWORD(v3) = v197 ^ __ROR4__(v197 ^ __ROR4__(v197, 14), 5);
  HIDWORD(v3) = v3;
  v201 = v200 + v181 + (v191 & v197 | v186 & ~v197) - 1564481375 + (v3 >> 6);
  LODWORD(v3) = v198 ^ __ROR4__(v198 ^ __ROR4__(v198, 9), 11);
  HIDWORD(v3) = v3;
  v202 = v201 + v182;
  v203 = (v3 >> 2) + ((v198 | v192) & v187 | v198 & v192) + v201;
  LODWORD(v3) = v125 ^ __ROR4__(v125, 11);
  HIDWORD(v3) = v3;
  v204 = ((v3 >> 7) ^ (v125 >> 3)) + v120;
  LODWORD(v3) = v194 ^ __ROR4__(v194, 2);
  HIDWORD(v3) = v3;
  v205 = v204 + v168 + ((v3 >> 17) ^ (v194 >> 10));
  LODWORD(v3) = v202 ^ __ROR4__(v202 ^ __ROR4__(v202, 14), 5);
  HIDWORD(v3) = v3;
  v206 = v205 + v186 + (v197 & v202 | v191 & ~v202) - 1474664885 + (v3 >> 6);
  LODWORD(v3) = v203 ^ __ROR4__(v203 ^ __ROR4__(v203, 9), 11);
  HIDWORD(v3) = v3;
  v207 = v206 + v187;
  v208 = (v3 >> 2) + ((v203 | v198) & v192 | v203 & v198) + v206;
  LODWORD(v3) = v130 ^ __ROR4__(v130, 11);
  HIDWORD(v3) = v3;
  v209 = ((v3 >> 7) ^ (v130 >> 3)) + v125;
  LODWORD(v3) = v200 ^ __ROR4__(v200, 2);
  HIDWORD(v3) = v3;
  v210 = v209 + v173 + ((v3 >> 17) ^ (v200 >> 10));
  LODWORD(v3) = v207 ^ __ROR4__(v207 ^ __ROR4__(v207, 14), 5);
  HIDWORD(v3) = v3;
  v211 = v210 + v191 + (v202 & v207 | v197 & ~v207) - 1035236496 + (v3 >> 6);
  LODWORD(v3) = v208 ^ __ROR4__(v208 ^ __ROR4__(v208, 9), 11);
  HIDWORD(v3) = v3;
  v212 = (v3 >> 2) + ((v208 | v203) & v198 | v208 & v203);
  v213 = v211 + v192;
  LODWORD(v3) = v328 ^ __ROR4__(v328, 11);
  HIDWORD(v3) = v3;
  v214 = v212 + v211;
  v215 = ((v3 >> 7) ^ (v328 >> 3)) + v130;
  LODWORD(v3) = v205 ^ __ROR4__(v205, 2);
  HIDWORD(v3) = v3;
  v216 = v215 + v178 + ((v3 >> 17) ^ (v205 >> 10));
  LODWORD(v3) = v213 ^ __ROR4__(v213 ^ __ROR4__(v213, 14), 5);
  HIDWORD(v3) = v3;
  v217 = v216 + v197 + (v207 & v213 | v202 & ~v213) - 949202525 + (v3 >> 6);
  LODWORD(v3) = v214 ^ __ROR4__(v214 ^ __ROR4__(v214, 9), 11);
  HIDWORD(v3) = v3;
  v218 = v217 + v198;
  v219 = (v3 >> 2) + ((v214 | v208) & v203 | v214 & v208) + v217;
  LODWORD(v3) = v141 ^ __ROR4__(v141, 11);
  HIDWORD(v3) = v3;
  v220 = ((v3 >> 7) ^ (v141 >> 3)) + v328;
  LODWORD(v3) = v210 ^ __ROR4__(v210, 2);
  HIDWORD(v3) = v3;
  v221 = v220 + v184 + ((v3 >> 17) ^ (v210 >> 10));
  LODWORD(v3) = v218 ^ __ROR4__(v218 ^ __ROR4__(v218, 14), 5);
  HIDWORD(v3) = v3;
  v222 = v221 + v202 + (v213 & v218 | v207 & ~v218) - 778901479 + (v3 >> 6);
  LODWORD(v3) = v219 ^ __ROR4__(v219 ^ __ROR4__(v219, 9), 11);
  HIDWORD(v3) = v3;
  v223 = v222 + v203;
  v224 = (v3 >> 2) + ((v219 | v214) & v208 | v219 & v214) + v222;
  LODWORD(v3) = v146 ^ __ROR4__(v146, 11);
  HIDWORD(v3) = v3;
  v225 = ((v3 >> 7) ^ (v146 >> 3)) + v141;
  LODWORD(v3) = v216 ^ __ROR4__(v216, 2);
  HIDWORD(v3) = v3;
  v226 = v225 + v189 + ((v3 >> 17) ^ (v216 >> 10));
  LODWORD(v3) = v223 ^ __ROR4__(v223 ^ __ROR4__(v223, 14), 5);
  HIDWORD(v3) = v3;
  v227 = v226 + v207 + (v218 & v223 | v213 & ~v223) - 694614492 + (v3 >> 6);
  LODWORD(v3) = v224 ^ __ROR4__(v224 ^ __ROR4__(v224, 9), 11);
  HIDWORD(v3) = v3;
  v228 = (v3 >> 2) + ((v224 | v219) & v214 | v224 & v219);
  v229 = v227 + v208;
  LODWORD(v3) = v152 ^ __ROR4__(v152, 11);
  HIDWORD(v3) = v3;
  v230 = v228 + v227;
  v231 = ((v3 >> 7) ^ (v152 >> 3)) + v146;
  LODWORD(v3) = v221 ^ __ROR4__(v221, 2);
  HIDWORD(v3) = v3;
  v232 = v231 + v194 + ((v3 >> 17) ^ (v221 >> 10));
  LODWORD(v3) = v229 ^ __ROR4__(v229 ^ __ROR4__(v229, 14), 5);
  HIDWORD(v3) = v3;
  v233 = v232 + v213 + (v223 & v229 | v218 & ~v229) - 200395387 + (v3 >> 6);
  LODWORD(v3) = v230 ^ __ROR4__(v230 ^ __ROR4__(v230, 9), 11);
  HIDWORD(v3) = v3;
  v234 = v233 + v214;
  v235 = (v3 >> 2) + ((v230 | v224) & v219 | v230 & v224) + v233;
  LODWORD(v3) = v157 ^ __ROR4__(v157, 11);
  HIDWORD(v3) = v3;
  v236 = ((v3 >> 7) ^ (v157 >> 3)) + v152;
  LODWORD(v3) = v226 ^ __ROR4__(v226, 2);
  HIDWORD(v3) = v3;
  v237 = v236 + v200 + ((v3 >> 17) ^ (v226 >> 10));
  LODWORD(v3) = v234 ^ __ROR4__(v234 ^ __ROR4__(v234, 14), 5);
  HIDWORD(v3) = v3;
  v238 = v237 + v218 + (v229 & v234 | v223 & ~v234) + 275423344 + (v3 >> 6);
  LODWORD(v3) = v235 ^ __ROR4__(v235 ^ __ROR4__(v235, 9), 11);
  HIDWORD(v3) = v3;
  v239 = v238 + v219;
  v240 = (v3 >> 2) + ((v235 | v230) & v224 | v235 & v230) + v238;
  LODWORD(v3) = v162 ^ __ROR4__(v162, 11);
  HIDWORD(v3) = v3;
  v241 = ((v3 >> 7) ^ (v162 >> 3)) + v157;
  LODWORD(v3) = v232 ^ __ROR4__(v232, 2);
  HIDWORD(v3) = v3;
  v242 = v205;
  v243 = v241 + v205 + ((v3 >> 17) ^ (v232 >> 10));
  LODWORD(v3) = v239 ^ __ROR4__(v239 ^ __ROR4__(v239, 14), 5);
  HIDWORD(v3) = v3;
  v244 = v243 + v223 + (v234 & v239 | v229 & ~v239) + 430227734 + (v3 >> 6);
  LODWORD(v3) = v240 ^ __ROR4__(v240 ^ __ROR4__(v240, 9), 11);
  HIDWORD(v3) = v3;
  v245 = (v3 >> 2) + ((v240 | v235) & v230 | v240 & v235);
  v246 = v244 + v224;
  LODWORD(v3) = v168 ^ __ROR4__(v168, 11);
  HIDWORD(v3) = v3;
  v247 = v245 + v244;
  v248 = ((v3 >> 7) ^ (v168 >> 3)) + v162;
  LODWORD(v3) = v237 ^ __ROR4__(v237, 2);
  HIDWORD(v3) = v3;
  v249 = v248 + v210 + ((v3 >> 17) ^ (v237 >> 10));
  LODWORD(v3) = v246 ^ __ROR4__(v246 ^ __ROR4__(v246, 14), 5);
  HIDWORD(v3) = v3;
  v250 = v249 + v229 + (v239 & v246 | v234 & ~v246) + 506948616 + (v3 >> 6);
  LODWORD(v3) = v247 ^ __ROR4__(v247 ^ __ROR4__(v247, 9), 11);
  HIDWORD(v3) = v3;
  v251 = v250 + v230;
  v252 = (v3 >> 2) + ((v247 | v240) & v235 | v247 & v240) + v250;
  LODWORD(v3) = v173 ^ __ROR4__(v173, 11);
  HIDWORD(v3) = v3;
  v253 = ((v3 >> 7) ^ (v173 >> 3)) + v168;
  LODWORD(v3) = v243 ^ __ROR4__(v243, 2);
  HIDWORD(v3) = v3;
  v254 = v253 + v216 + ((v3 >> 17) ^ (v243 >> 10));
  LODWORD(v3) = v251 ^ __ROR4__(v251 ^ __ROR4__(v251, 14), 5);
  HIDWORD(v3) = v3;
  v255 = v254 + v234 + (v246 & v251 | v239 & ~v251) + 659060556 + (v3 >> 6);
  LODWORD(v3) = v252 ^ __ROR4__(v252 ^ __ROR4__(v252, 9), 11);
  HIDWORD(v3) = v3;
  v256 = v255 + v235;
  v257 = (v3 >> 2) + ((v252 | v247) & v240 | v252 & v247) + v255;
  LODWORD(v3) = v178 ^ __ROR4__(v178, 11);
  HIDWORD(v3) = v3;
  v258 = ((v3 >> 7) ^ (v178 >> 3)) + v173;
  LODWORD(v3) = v249 ^ __ROR4__(v249, 2);
  HIDWORD(v3) = v3;
  v259 = v258 + v221 + ((v3 >> 17) ^ (v249 >> 10));
  LODWORD(v3) = v256 ^ __ROR4__(v256 ^ __ROR4__(v256, 14), 5);
  HIDWORD(v3) = v3;
  v260 = v259 + v239 + (v251 & v256 | v246 & ~v256) + 883997877 + (v3 >> 6);
  LODWORD(v3) = v257 ^ __ROR4__(v257 ^ __ROR4__(v257, 9), 11);
  HIDWORD(v3) = v3;
  v261 = (v3 >> 2) + ((v257 | v252) & v247 | v257 & v252);
  v262 = v260 + v240;
  LODWORD(v3) = v184 ^ __ROR4__(v184, 11);
  HIDWORD(v3) = v3;
  v263 = v261 + v260;
  v264 = ((v3 >> 7) ^ (v184 >> 3)) + v178;
  LODWORD(v3) = v254 ^ __ROR4__(v254, 2);
  HIDWORD(v3) = v3;
  v265 = v264 + v226 + ((v3 >> 17) ^ (v254 >> 10));
  LODWORD(v3) = v262 ^ __ROR4__(v262 ^ __ROR4__(v262, 14), 5);
  HIDWORD(v3) = v3;
  v266 = v265 + v246 + (v256 & v262 | v251 & ~v262) + 958139571 + (v3 >> 6);
  LODWORD(v3) = v263 ^ __ROR4__(v263 ^ __ROR4__(v263, 9), 11);
  HIDWORD(v3) = v3;
  v267 = v266 + v247;
  v268 = (v3 >> 2) + ((v263 | v257) & v252 | v263 & v257) + v266;
  LODWORD(v3) = v189 ^ __ROR4__(v189, 11);
  HIDWORD(v3) = v3;
  v269 = ((v3 >> 7) ^ (v189 >> 3)) + v184;
  LODWORD(v3) = v259 ^ __ROR4__(v259, 2);
  HIDWORD(v3) = v3;
  v270 = v269 + v232 + ((v3 >> 17) ^ (v259 >> 10));
  LODWORD(v3) = v267 ^ __ROR4__(v267 ^ __ROR4__(v267, 14), 5);
  HIDWORD(v3) = v3;
  v271 = v270 + v251 + (v262 & v267 | v256 & ~v267) + 1322822218 + (v3 >> 6);
  LODWORD(v3) = v268 ^ __ROR4__(v268 ^ __ROR4__(v268, 9), 11);
  HIDWORD(v3) = v3;
  v272 = v271 + v252;
  v273 = (v3 >> 2) + ((v268 | v263) & v257 | v268 & v263) + v271;
  LODWORD(v3) = v194 ^ __ROR4__(v194, 11);
  HIDWORD(v3) = v3;
  v274 = ((v3 >> 7) ^ (v194 >> 3)) + v189;
  LODWORD(v3) = v265 ^ __ROR4__(v265, 2);
  HIDWORD(v3) = v3;
  v275 = v274 + v237 + ((v3 >> 17) ^ (v265 >> 10));
  LODWORD(v3) = v272 ^ __ROR4__(v272 ^ __ROR4__(v272, 14), 5);
  HIDWORD(v3) = v3;
  v276 = v275 + v256 + (v267 & v272 | v262 & ~v272) + 1537002063 + (v3 >> 6);
  LODWORD(v3) = v273 ^ __ROR4__(v273 ^ __ROR4__(v273, 9), 11);
  HIDWORD(v3) = v3;
  v277 = (v3 >> 2) + ((v273 | v268) & v263 | v273 & v268);
  v278 = v276 + v257;
  LODWORD(v3) = v200 ^ __ROR4__(v200, 11);
  HIDWORD(v3) = v3;
  v279 = v277 + v276;
  v280 = ((v3 >> 7) ^ (v200 >> 3)) + v194;
  LODWORD(v3) = v270 ^ __ROR4__(v270, 2);
  HIDWORD(v3) = v3;
  v281 = v280 + v243 + ((v3 >> 17) ^ (v270 >> 10));
  LODWORD(v3) = v278 ^ __ROR4__(v278 ^ __ROR4__(v278, 14), 5);
  HIDWORD(v3) = v3;
  v282 = v281 + v262 + (v272 & v278 | v267 & ~v278) + 1747873779 + (v3 >> 6);
  LODWORD(v3) = v279 ^ __ROR4__(v279 ^ __ROR4__(v279, 9), 11);
  HIDWORD(v3) = v3;
  v283 = v282 + v263;
  v284 = (v3 >> 2) + ((v279 | v273) & v268 | v279 & v273) + v282;
  LODWORD(v3) = v242 ^ __ROR4__(v242, 11);
  HIDWORD(v3) = v3;
  v285 = v242;
  v286 = ((v3 >> 7) ^ (v242 >> 3)) + v200;
  LODWORD(v3) = v275 ^ __ROR4__(v275, 2);
  HIDWORD(v3) = v3;
  v287 = v286 + v249 + ((v3 >> 17) ^ (v275 >> 10));
  LODWORD(v3) = v283 ^ __ROR4__(v283 ^ __ROR4__(v283, 14), 5);
  HIDWORD(v3) = v3;
  v288 = v287 + v267 + (v278 & v283 | v272 & ~v283) + 1955562222 + (v3 >> 6);
  LODWORD(v3) = v284 ^ __ROR4__(v284 ^ __ROR4__(v284, 9), 11);
  HIDWORD(v3) = v3;
  v289 = v288 + v268;
  v290 = (v3 >> 2) + ((v284 | v279) & v273 | v284 & v279) + v288;
  LODWORD(v3) = v210 ^ __ROR4__(v210, 11);
  HIDWORD(v3) = v3;
  v291 = ((v3 >> 7) ^ (v210 >> 3)) + v285;
  LODWORD(v3) = v281 ^ __ROR4__(v281, 2);
  HIDWORD(v3) = v3;
  v292 = v291 + v254 + ((v3 >> 17) ^ (v281 >> 10));
  LODWORD(v3) = v289 ^ __ROR4__(v289 ^ __ROR4__(v289, 14), 5);
  HIDWORD(v3) = v3;
  v293 = v292 + v272 + (v283 & v289 | v278 & ~v289) + 2024104815 + (v3 >> 6);
  LODWORD(v3) = v290 ^ __ROR4__(v290 ^ __ROR4__(v290, 9), 11);
  HIDWORD(v3) = v3;
  v294 = (v3 >> 2) + ((v290 | v284) & v279 | v290 & v284);
  v295 = v293 + v273;
  LODWORD(v3) = v216 ^ __ROR4__(v216, 11);
  HIDWORD(v3) = v3;
  v296 = v294 + v293;
  v297 = ((v3 >> 7) ^ (v216 >> 3)) + v210;
  LODWORD(v3) = v287 ^ __ROR4__(v287, 2);
  HIDWORD(v3) = v3;
  v298 = v297 + v259 + ((v3 >> 17) ^ (v287 >> 10));
  LODWORD(v3) = v295 ^ __ROR4__(v295 ^ __ROR4__(v295, 14), 5);
  HIDWORD(v3) = v3;
  v299 = v298 + v278 + (v289 & v295 | v283 & ~v295) - 2067236844 + (v3 >> 6);
  LODWORD(v3) = v296 ^ __ROR4__(v296 ^ __ROR4__(v296, 9), 11);
  HIDWORD(v3) = v3;
  v300 = v299 + v279;
  v301 = (v3 >> 2) + ((v296 | v290) & v284 | v296 & v290) + v299;
  LODWORD(v3) = v221 ^ __ROR4__(v221, 11);
  HIDWORD(v3) = v3;
  v302 = ((v3 >> 7) ^ (v221 >> 3)) + v216;
  LODWORD(v3) = v292 ^ __ROR4__(v292, 2);
  HIDWORD(v3) = v3;
  v303 = v302 + v265 + ((v3 >> 17) ^ (v292 >> 10));
  LODWORD(v3) = v300 ^ __ROR4__(v300 ^ __ROR4__(v300, 14), 5);
  HIDWORD(v3) = v3;
  v304 = v303 + v283 + (v295 & v300 | v289 & ~v300) - 1933114872 + (v3 >> 6);
  LODWORD(v3) = v301 ^ __ROR4__(v301 ^ __ROR4__(v301, 9), 11);
  HIDWORD(v3) = v3;
  v305 = v304 + v284;
  v306 = (v3 >> 2) + ((v301 | v296) & v290 | v301 & v296) + v304;
  LODWORD(v3) = v226 ^ __ROR4__(v226, 11);
  HIDWORD(v3) = v3;
  v307 = ((v3 >> 7) ^ (v226 >> 3)) + v221;
  LODWORD(v3) = v298 ^ __ROR4__(v298, 2);
  HIDWORD(v3) = v3;
  v308 = v307 + v270 + ((v3 >> 17) ^ (v298 >> 10));
  LODWORD(v3) = v305 ^ __ROR4__(v305 ^ __ROR4__(v305, 14), 5);
  HIDWORD(v3) = v3;
  v309 = v308 + v289 + (v300 & v305 | v295 & ~v305) - 1866530822 + (v3 >> 6);
  LODWORD(v3) = v306 ^ __ROR4__(v306 ^ __ROR4__(v306, 9), 11);
  HIDWORD(v3) = v3;
  v310 = (v3 >> 2) + ((v306 | v301) & v296 | v306 & v301);
  v311 = v309 + v290;
  LODWORD(v3) = v232 ^ __ROR4__(v232, 11);
  HIDWORD(v3) = v3;
  v312 = v310 + v309;
  v313 = ((v3 >> 7) ^ (v232 >> 3)) + v226;
  LODWORD(v3) = v303 ^ __ROR4__(v303, 2);
  HIDWORD(v3) = v3;
  v314 = v313 + v275 + ((v3 >> 17) ^ (v303 >> 10));
  LODWORD(v3) = v311 ^ __ROR4__(v311 ^ __ROR4__(v311, 14), 5);
  HIDWORD(v3) = v3;
  v315 = v314 + v295 + (v305 & v311 | v300 & ~v311) - 1538233109 + (v3 >> 6);
  LODWORD(v3) = v312 ^ __ROR4__(v312 ^ __ROR4__(v312, 9), 11);
  HIDWORD(v3) = v3;
  v316 = v315 + v296;
  v317 = (v3 >> 2) + ((v312 | v306) & v301 | v312 & v306) + v315;
  LODWORD(v3) = v237 ^ __ROR4__(v237, 11);
  HIDWORD(v3) = v3;
  v318 = ((v3 >> 7) ^ (v237 >> 3)) + v232;
  LODWORD(v3) = v308 ^ __ROR4__(v308, 2);
  HIDWORD(v3) = v3;
  v319 = v318 + v281 + ((v3 >> 17) ^ (v308 >> 10));
  result[9] = v249;
  result[10] = v254;
  result[11] = v259;
  result[12] = v265;
  result[13] = v270;
  result[14] = v275;
  result[15] = v281;
  result[17] = v292;
  result[18] = v298;
  result[19] = v303;
  LODWORD(v3) = v316 ^ __ROR4__(v316 ^ __ROR4__(v316, 14), 5);
  HIDWORD(v3) = v3;
  v320 = v319 + v300 + (v311 & v316 | v305 & ~v316) - 1090935817 + (v3 >> 6);
  LODWORD(v3) = v317 ^ __ROR4__(v317 ^ __ROR4__(v317, 9), 11);
  HIDWORD(v3) = v3;
  result[8] = v243;
  v321 = v320 + v301;
  v322 = (v3 >> 2) + ((v317 | v312) & v306 | v317 & v312) + v320;
  LODWORD(v3) = v243 ^ __ROR4__(v243, 11);
  HIDWORD(v3) = v3;
  v323 = v3 >> 7;
  result[16] = v287;
  result[20] = v308;
  result[21] = v314;
  LODWORD(v3) = v314 ^ __ROR4__(v314, 2);
  HIDWORD(v3) = v3;
  v324 = (v323 ^ (v243 >> 3)) + v237 + v287 + ((v3 >> 17) ^ (v314 >> 10));
  result[22] = v319;
  result[23] = v324;
  LODWORD(v3) = v321 ^ __ROR4__(v321 ^ __ROR4__(v321, 14), 5);
  HIDWORD(v3) = v3;
  v325 = v324 + v305 + (v316 & v321 | v311 & ~v321) - 965641998 + (v3 >> 6);
  LODWORD(v3) = v322 ^ __ROR4__(v322 ^ __ROR4__(v322, 9), 11);
  HIDWORD(v3) = v3;
  *result = ((v322 | v317) & v312 | v322 & v317) + v329 + (v3 >> 2) + v325;
  result[1] = v322 + v330;
  result[2] = v317 + v333;
  result[3] = v312 + v334;
  result[4] = v306 + v331 + v325;
  result[5] = v321 + v332;
  result[6] = v316 + v335;
  result[7] = v311 + v336;
  return result;
}

uint64_t ddp_udc_int_sha256_get_digest(uint64_t result, unint64_t *a2)
{
  v3 = result;
  if (*(result + 136))
  {
    result = 0;
    *a2 = v3;
  }

  else
  {
    v4 = *(result + 132);
    v5 = v4 < 0x38;
    v6 = result + 96;
    v7 = (result + 32);
    while (1)
    {
      if (v4 == 64)
      {
        v8 = 0;
      }

      else
      {
        v9 = &v7[v4 ^ 3];
        v10 = v9 < v6 && v9 >= v7;
        if (!v10)
        {
          goto LABEL_25;
        }

        *v9 = 0x80;
        v8 = 64;
      }

      *(v3 + 132) = v8;
      if (v5)
      {
        break;
      }

      result = hashComputation(v3);
      *(v3 + 64) = 0u;
      *(v3 + 80) = 0u;
      *v7 = 0u;
      *(v3 + 48) = 0u;
      v5 = 1;
      v4 = *(v3 + 132);
    }

    v11 = *(v3 + 128);
    if ((v11 & 0x20000000) != 0)
    {
      return 3;
    }

    *(v3 + 92) = 8 * v11;
    result = hashComputation(v3);
    v12 = 0;
    *(v3 + 64) = 0u;
    *(v3 + 80) = 0u;
    *v7 = 0u;
    *(v3 + 48) = 0u;
    while (1)
    {
      v13 = (v3 + (v12 ^ 3));
      if (v13 >= v7 || v13 < v3)
      {
        break;
      }

      v15 = *v13;
      *v13 = *(v3 + v12);
      *(v3 + v12) = v15;
      v10 = v12 >= 0x1E;
      v12 += 2;
      if (v10)
      {
        result = 0;
        *a2 = v3;
        *(v3 + 136) = 1;
        return result;
      }
    }

LABEL_25:
    __break(0x5519u);
  }

  return result;
}

uint64_t ddp_udc_int_FED_initbufptrs(uint64_t result)
{
  v1 = 0;
  v36 = 78072;
  v37 = 0;
  v35 = 78120;
  v2 = 47096;
  v3 = 48120;
  v4 = 31736;
  v5 = 32248;
LABEL_2:
  v6 = (result + 544 + 5192 * v1);
  if ((v6 + 649) <= result + 31696 && v6 < v6 + 649)
  {
    v8 = *(result + 216);
    v9 = v8 + 4196;
    v10 = v8 + 4708;
    v6[23] = v8 + 4196;
    v6[24] = v8 + 4708;
    v11 = v8 + 4096;
    v6[25] = v8 + 4196;
    v6[26] = v8 + 4096;
    v12 = (v6 + 51);
    v13 = (v6 + 285);
    v14 = (result + 78072 + 288 * v1);
    v15 = (v14 + 36);
    v16 = v8;
    v6[27] = v8 + 4196;
    v6[28] = v8 + 4096;
    v18 = v35;
    v17 = v36;
    v19 = v37;
    v20 = v5;
    v6[29] = v8 + 3072;
    v6[30] = v8 + 3584;
    v6[31] = v8 + 3072;
    v21 = v4;
    v22 = v3;
    v23 = v2;
    v24 = 5;
    while (1)
    {
      v25 = (result + v19);
      v26 = result + v19 + 952;
      v27 = result + v19 + 1264;
      v28 = v26 < v12 || v27 > v13;
      if (v28 || v26 > v27)
      {
        break;
      }

      v25[132] = v9;
      v25[133] = v10;
      v25[134] = v9;
      v25[135] = v11;
      v25[136] = v9;
      v25[137] = v11;
      v25[138] = v16;
      v25[139] = v16 + 512;
      v25[140] = v16;
      if (result + v17 < v14 || result + v18 > v15 || result + v17 > (result + v18))
      {
        break;
      }

      v30 = (result + v17);
      *v30 = result + v21;
      v30[1] = result + v20;
      v31 = result + v23;
      v32 = result + v22;
      v23 += 1024;
      v30[2] = result + v21;
      v30[3] = v31;
      v22 += 1024;
      v21 += 512;
      v20 += 512;
      v17 += 48;
      v19 += 312;
      v30[4] = v32;
      v30[5] = v31;
      v18 += 48;
      v16 += 512;
      if (!--v24)
      {
        if ((v6 + 246) > v13)
        {
          break;
        }

        if ((v6 + 246) < v12)
        {
          break;
        }

        v6[262] = v11;
        v6[263] = v9;
        v6[264] = v11;
        v6[265] = v8 + 2560;
        v6[266] = v8 + 3072;
        v6[267] = v8 + 2560;
        v6[259] = v9;
        v6[260] = v10;
        v6[261] = v9;
        if ((v14 + 30) > v15 || v14 + 30 < v14)
        {
          break;
        }

        v33 = result + 77816 + 14 * v1;
        v14[30] = v33;
        v14[31] = v33 + 14;
        v34 = result + 77900 + 28 * v1++;
        v14[32] = v33;
        v14[33] = v34;
        v2 += 5120;
        v3 += 5120;
        v4 += 2560;
        v5 += 2560;
        v14[34] = v34 + 28;
        v14[35] = v34;
        v36 += 288;
        v37 += 5192;
        v35 += 288;
        if (v1 != 6)
        {
          goto LABEL_2;
        }

        return result;
      }
    }
  }

  __break(0x5519u);
  return result;
}

void ddp_udc_int_FED_run(uint64_t a1, unint64_t a2)
{
  v729[1] = *MEMORY[0x1E69E9840];
  ddp_udc_int_FED_initbufptrs(a1);
  v696 = (a2 + 28);
  if (a2 + 28 > a2 + 500)
  {
    goto LABEL_1181;
  }

  v7 = a1 + 79800;
  *(a1 + 79800) = v696;
  v8 = *(a2 + 24);
  if (v8 == 2)
  {
    v10 = 0;
    *(a1 + 240) = 0x400000002;
    v9 = *(a2 + 496);
    *(a1 + 236) = v9;
    *(a1 + 79808) = 1;
  }

  else if (v8)
  {
    v9 = *(a1 + 236);
    *(a1 + 240) = 0;
    *(a1 + 244) = v9;
    *(a1 + 79808) = 2;
    v10 = 1;
  }

  else
  {
    v9 = *(a2 + 496);
    *(a1 + 240) = v9;
    *(a1 + 236) = v9;
    if (*(a2 + 392))
    {
      *(a1 + 232) = 0;
    }

    *(a1 + 79808) = 0;
    v10 = v9 == 0;
  }

  v11 = *(a1 + 232);
  if ((v9 + v11) >= 7)
  {
    v11 = 0;
    *(a1 + 232) = 0;
  }

  *(a1 + 248) = v11;
  if (!v10)
  {
    v12 = a1 + 31696;
    v13 = (a1 + 188);
    v14 = 6;
    v694 = a1 + 188;
    do
    {
      if ((v13 + 1) > a1 + 212 || v13 > v13 + 1)
      {
        goto LABEL_1181;
      }

      *v13++ = 1;
      --v14;
    }

    while (v14);
    v16 = *(a1 + 232);
    v17 = a1 + 78072 + 288 * v16;
    v699 = v17;
    if (v17 > v7 || a1 + 78072 > v17)
    {
      goto LABEL_1181;
    }

    v19 = *(a1 + 240);
    v20 = a1 + 544 + 5192 * v16;
    v692 = v19;
    v21 = (0x8E38E38E38E38E39 * ((v7 - v17) >> 5)) >= v19 && (v19 & 0x8000) == 0;
    v22 = !v21 || v20 > v12;
    v23 = v22 || a1 + 544 > v20;
    if (v23 || (0xCCB89AA025DE13B9 * ((v12 - v20) >> 3)) < v19 || a2 + 504 > a2 + 544)
    {
      goto LABEL_1181;
    }

    v695 = a2 + 504;
    v713 = a1 + 544 + 5192 * v16;
    v688 = (a1 + 31696);
    v686 = a1 + 544;
    v685 = *(a1 + 232);
    v693 = a1 + 212;
    if (*(a2 + 42))
    {
      v709 = *(a2 + 44);
    }

    else
    {
      v709 = 0;
    }

    v691 = *a2;
    v690 = *(a1 + 79820);
    v714 = a1;
    v24 = *(a1 + 216);
    v717 = a2;
    v689 = *(a2 + 8);
    v2 = v19;
    *&v25 = 0xAAAAAAAAAAAAAAAALL;
    *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v726[14] = v25;
    v726[13] = v25;
    v726[12] = v25;
    v726[11] = v25;
    v726[10] = v25;
    v726[9] = v25;
    v726[8] = v25;
    v726[7] = v25;
    v726[6] = v25;
    v726[5] = v25;
    v726[4] = v25;
    v726[3] = v25;
    v726[2] = v25;
    v726[1] = v25;
    v726[0] = v25;
    v725[0] = v25;
    v725[1] = v25;
    v725[2] = v25;
    v725[3] = v25;
    v725[4] = v25;
    v725[5] = v25;
    v725[6] = v25;
    v725[7] = v25;
    v725[8] = v25;
    v725[9] = v25;
    v725[10] = v25;
    v725[11] = v25;
    v725[12] = v25;
    v725[13] = v25;
    v725[14] = v25;
    v725[15] = v25;
    v725[16] = v25;
    v725[17] = v25;
    memset(__b, 170, sizeof(__b));
    if (v692 >= 1)
    {
      v26 = 0;
      v4 = 0;
      v704 = v24 + 4892;
      v702 = v24 + 7964;
      if (v709)
      {
        v27 = -1;
      }

      else
      {
        v27 = 0;
      }

      v698 = &__b[18 * v709];
      v3 = __b;
      v715 = v699;
      do
      {
        v28 = &v725[3 * v4];
        v29 = v28 + 6;
        if (v28 < v725 || v29 > v726 || v28 > v29)
        {
          goto LABEL_1181;
        }

        v32 = v704 + (v4 << 9);
        *v28 = v32;
        v28[1] = v32 + 512;
        v33 = (v702 + (v4 << 10));
        v2 = &v33[128];
        v28[2] = v32;
        v28[3] = v33;
        v28[4] = v33 + 128;
        v28[5] = v33;
        v34 = *(v717 + 46);
        if (v34 >= 1)
        {
          v35 = 0;
          v36 = v699 + 288 * v4;
          v37 = v715;
          do
          {
            v38 = (v3 + v35 * 16);
            v39 = v3 + v35 * 16 + 48;
            v41 = v3 + v35 * 16 < &__b[v35] || v39 > &__b[v35 + 18] || v38 > v39;
            v42 = (v37 + 3);
            if (v41 || v37 < v36 || v42 > v36 + 288 || v37 > v42)
            {
              goto LABEL_1181;
            }

            v46 = v37[1];
            *v38 = *v37;
            v38[1] = v46;
            v38[2] = v37[2];
            v35 += 18;
            v37 += 3;
          }

          while (18 * v34 != v35);
        }

        if (v34 > (v709 != 0))
        {
          v47 = 0;
          v48 = __b;
          do
          {
            v49 = &v48[v26];
            if (&v48[v26] < v48)
            {
              goto LABEL_1181;
            }

            if (v49 + 48 > (v48 + 18) || v49 > v49 + 48)
            {
              goto LABEL_1181;
            }

            v52 = *(&v48[v26 + 1] + 1);
            v51 = *&v48[v26 + 2];
            if (v52 > v51)
            {
              goto LABEL_1181;
            }

            if (v51 - v52 < 0x3F4 || *(&v48[v26 + 2] + 1) > v52)
            {
              goto LABEL_1181;
            }

            bzero(*(&v48[v26 + 1] + 1), 0x3F4uLL);
            if (v52 >= v52 + 1012)
            {
              goto LABEL_1181;
            }

            ++v47;
            v48 += 18;
          }

          while (v47 < *(v717 + 46) + v27);
        }

        if (v709)
        {
          v54 = &v698[3 * v4];
          if (v54 < v698)
          {
            goto LABEL_1181;
          }

          if (v54 + 6 > v698 + 36)
          {
            goto LABEL_1181;
          }

          if (v54 > v54 + 6)
          {
            goto LABEL_1181;
          }

          v55 = v54[3];
          v56 = v54[4];
          if (v55 > v56)
          {
            goto LABEL_1181;
          }

          v57 = v54[5];
          if (v56 - v55 < 0x1C || v57 > v55)
          {
            goto LABEL_1181;
          }

          *v55 = 0;
          *(v55 + 8) = 0;
          *(v55 + 24) = 0;
          *(v55 + 16) = 0;
          if (v55 >= v55 + 28)
          {
            goto LABEL_1181;
          }

          v33 = v28[3];
          v2 = v28[4];
          if (v33 > v2)
          {
            goto LABEL_1181;
          }
        }

        if (v2 - v33 < 0x3F4)
        {
          goto LABEL_1181;
        }

        if (v28[5] > v33)
        {
          goto LABEL_1181;
        }

        bzero(v33, 0x3F4uLL);
        if (v33 >= &v33[126].u8[4])
        {
          goto LABEL_1181;
        }

        ++v4;
        v715 += 18;
        v3 += 48;
        v26 += 3;
      }

      while (v4 != (v692 & 0x7FFF));
    }

    if (v690)
    {
      v59 = 0;
      v2 = v714;
      v60 = v688;
      v3 = v717;
LABEL_99:
      *(v2 + 252) = v59;
      goto LABEL_1134;
    }

    *(v714 + 258) = 0;
    *(v714 + 434) = 0;
    if (*(v717 + 46) >= 1)
    {
      v61 = 0;
      v62 = 0;
      do
      {
        v63 = v714 + v61 + 436;
        v64 = v714 + v61 + 438;
        if (v63 < v714 + 436 || v64 > v714 + 448 || v63 > v64)
        {
          goto LABEL_1181;
        }

        *(v714 + 2 * v62++ + 436) = 0;
        v61 += 2;
      }

      while (v62 < *(v717 + 46));
    }

    *(v714 + 262) = 0;
    *(v714 + 536) = 1;
    if (*(v717 + 44) <= 0)
    {
      *(v714 + 300) = 0;
    }

    else
    {
      v67 = 0;
      v68 = (v714 + 452);
      do
      {
        v69 = (v68 + 38);
        if ((v68 + 37) < v714 + 526 || v69 > v714 + 536 || (v68 + 37) > v69)
        {
          goto LABEL_1181;
        }

        v68[37] = 1;
        if (v68 < v714 + 452 || (v68 + 1) > v714 + 462 || v68 > v68 + 1)
        {
          goto LABEL_1181;
        }

        *v68++ = 0;
        ++v67;
        v72 = *(v717 + 44);
      }

      while (v67 < v72);
      *(v714 + 300) = 0;
      if (v72 >= 1)
      {
        v73 = 0;
        v74 = v714 + 492;
        v75 = (v714 + 482);
        do
        {
          if (v75 < v714 + 482)
          {
            goto LABEL_1181;
          }

          if ((v75 + 1) > v74)
          {
            goto LABEL_1181;
          }

          if (v75 > v75 + 1)
          {
            goto LABEL_1181;
          }

          *v75 = 0;
          v76 = (v75 + 6);
          if ((v75 + 5) < v74 || v76 > v714 + 502 || (v75 + 5) > v76)
          {
            goto LABEL_1181;
          }

          v75[5] = 0;
          ++v73;
          ++v75;
        }

        while (v73 < *(v717 + 44));
      }
    }

    if (v713 + 4000 > v713 + 4376)
    {
      goto LABEL_1181;
    }

    v2 = v714;
    v77 = (v714 + 434);
    memset_pattern16((v714 + 56), &unk_19B0B38E0, 0xAuLL);
    v78 = (v713 + 4012);
    v79 = 17;
    v80 = &ddp_udc_int_defbndstrc;
    do
    {
      if ((v78 + 1) > v713 + 4046 || v78 > v78 + 1)
      {
        goto LABEL_1181;
      }

      v82 = *v80++;
      *v78++ = v82;
      --v79;
    }

    while (v79);
    *(v713 + 4002) = 0;
    v83 = (v713 + 4088);
    v84 = 5;
    do
    {
      if ((v83 + 28) > v713 + 4368 || v83 > v83 + 28)
      {
        goto LABEL_1181;
      }

      *v83 = 0;
      v83 += 28;
      --v84;
    }

    while (v84);
    v86 = *(v717 + 36);
    if ((v86 - 11) > 5)
    {
      goto LABEL_673;
    }

    memset(v727, 170, 10);
    v87 = *(v717 + 496);
    if (v87 == 6)
    {
      v88 = *(v717 + 528);
      v89 = *(v717 + 530);
      v90 = 2 * (v89 << *(v717 + 528));
      if (v88 < 16)
      {
        v93 = v88 + 1;
      }

      else
      {
        v91 = *(v717 + 504);
        if ((v91 + 4) > *(v717 + 512))
        {
          goto LABEL_1181;
        }

        v92 = (v91 + 2);
        if (v91 + 2 > (v91 + 4) || v92 < *(v717 + 520))
        {
          goto LABEL_1181;
        }

        v89 = *v92;
        v93 = v88 - 15;
        *(v717 + 530) = v89;
        *(v717 + 504) = v92;
        v90 |= v89 << v93;
      }

      *(v717 + 528) = v93;
      *(v714 + 256) = HIWORD(v90);
      v95 = 2 * (v89 << v93);
      if (v93 < 16)
      {
        v94 = v93 + 1;
      }

      else
      {
        v96 = *(v717 + 504);
        if ((v96 + 4) > *(v717 + 512))
        {
          goto LABEL_1181;
        }

        v97 = (v96 + 2);
        if (v96 + 2 > (v96 + 4) || v97 < *(v717 + 520))
        {
          goto LABEL_1181;
        }

        v89 = *v97;
        v94 = v93 - 15;
        *(v717 + 530) = v89;
        *(v717 + 504) = v97;
        v95 |= v89 << v94;
      }

      *(v717 + 528) = v94;
      *(v714 + 258) = HIWORD(v95);
    }

    else
    {
      *(v714 + 256) = 1;
      v94 = *(v717 + 528);
      v89 = *(v717 + 530);
    }

    v98 = v94;
    v99 = 4 * (v89 << v94);
    v100 = v94 - 14;
    if (v98 <= 14)
    {
      v100 = v98 + 2;
    }

    else
    {
      v101 = *(v717 + 504);
      if ((v101 + 4) > *(v717 + 512))
      {
        goto LABEL_1181;
      }

      v102 = (v101 + 2);
      if (v101 + 2 > (v101 + 4) || v102 < *(v717 + 520))
      {
        goto LABEL_1181;
      }

      v89 = *v102;
      *(v717 + 530) = v89;
      *(v717 + 504) = v102;
      v99 |= v89 << v100;
    }

    *(v717 + 528) = v100;
    *(v714 + 260) = HIWORD(v99);
    v103 = v100;
    v104 = 2 * (v89 << v100);
    v105 = v103 - 15;
    if (v103 <= 15)
    {
      v105 = v103 + 1;
      v108 = v89 << (v103 + 1);
    }

    else
    {
      v106 = *(v717 + 504);
      if ((v106 + 4) > *(v717 + 512))
      {
        goto LABEL_1181;
      }

      v107 = (v106 + 2);
      if (v106 + 2 > (v106 + 4) || v107 < *(v717 + 520))
      {
        goto LABEL_1181;
      }

      v89 = *v107;
      *(v717 + 530) = v89;
      *(v717 + 504) = v107;
      v108 = v89 << v105;
      v104 |= v89 << v105;
    }

    *(v717 + 528) = v105;
    *(v714 + 262) = HIWORD(v104);
    v109 = 2 * v108;
    v110 = v105 - 15;
    if (v105 <= 15)
    {
      v110 = v105 + 1;
      v113 = v89 << (v105 + 1);
    }

    else
    {
      v111 = *(v717 + 504);
      if ((v111 + 4) > *(v717 + 512))
      {
        goto LABEL_1181;
      }

      v112 = (v111 + 2);
      if (v111 + 2 > (v111 + 4) || v112 < *(v717 + 520))
      {
        goto LABEL_1181;
      }

      v89 = *v112;
      *(v717 + 530) = v89;
      *(v717 + 504) = v112;
      v113 = v89 << v110;
      v109 |= v89 << v110;
    }

    *(v717 + 528) = v110;
    *(v714 + 264) = HIWORD(v109);
    v114 = 2 * v113;
    v115 = v110 - 15;
    if (v110 <= 15)
    {
      v115 = v110 + 1;
      v118 = v89 << (v110 + 1);
    }

    else
    {
      v116 = *(v717 + 504);
      if ((v116 + 4) > *(v717 + 512))
      {
        goto LABEL_1181;
      }

      v117 = (v116 + 2);
      if (v116 + 2 > (v116 + 4) || v117 < *(v717 + 520))
      {
        goto LABEL_1181;
      }

      v89 = *v117;
      *(v717 + 530) = v89;
      *(v717 + 504) = v117;
      v118 = v89 << v115;
      v114 |= v89 << v115;
    }

    *(v717 + 528) = v115;
    *(v714 + 266) = HIWORD(v114);
    v119 = 2 * v118;
    v120 = v115 - 15;
    if (v115 <= 15)
    {
      v120 = v115 + 1;
      v123 = v89 << (v115 + 1);
    }

    else
    {
      v121 = *(v717 + 504);
      if ((v121 + 4) > *(v717 + 512))
      {
        goto LABEL_1181;
      }

      v122 = (v121 + 2);
      if (v121 + 2 > (v121 + 4) || v122 < *(v717 + 520))
      {
        goto LABEL_1181;
      }

      v89 = *v122;
      *(v717 + 530) = v89;
      *(v717 + 504) = v122;
      v123 = v89 << v120;
      v119 |= v89 << v120;
    }

    *(v717 + 528) = v120;
    *(v714 + 268) = HIWORD(v119);
    v124 = 2 * v123;
    v125 = v120 - 15;
    if (v120 <= 15)
    {
      v125 = v120 + 1;
      v128 = v89 << (v120 + 1);
    }

    else
    {
      v126 = *(v717 + 504);
      if ((v126 + 4) > *(v717 + 512))
      {
        goto LABEL_1181;
      }

      v127 = (v126 + 2);
      if (v126 + 2 > (v126 + 4) || v127 < *(v717 + 520))
      {
        goto LABEL_1181;
      }

      v89 = *v127;
      *(v717 + 530) = v89;
      *(v717 + 504) = v127;
      v128 = v89 << v125;
      v124 |= v89 << v125;
    }

    *(v717 + 528) = v125;
    *(v714 + 270) = HIWORD(v124);
    v129 = 2 * v128;
    if (v125 < 16)
    {
      v132 = v125 + 1;
    }

    else
    {
      v130 = *(v717 + 504);
      if ((v130 + 4) > *(v717 + 512))
      {
        goto LABEL_1181;
      }

      v131 = (v130 + 2);
      if (v130 + 2 > (v130 + 4) || v131 < *(v717 + 520))
      {
        goto LABEL_1181;
      }

      v89 = *v131;
      v132 = v125 - 15;
      *(v717 + 530) = v89;
      *(v717 + 504) = v131;
      v129 |= v89 << v132;
    }

    *(v717 + 528) = v132;
    *(v714 + 272) = HIWORD(v129);
    v133 = *(v717 + 504);
    if (v133)
    {
      v134 = *(v717 + 536);
      if (v134)
      {
        LODWORD(v133) = ((8 * (v133 - v134)) & 0xFFFFFFF0) + v132;
      }

      else
      {
        LODWORD(v133) = 0;
      }
    }

    *(v714 + 276) = v133;
    *(v714 + 280) = v133;
    v135 = v132;
    v136 = 2 * (v89 << v132);
    if (v132 < 16)
    {
      v139 = v132 + 1;
    }

    else
    {
      v137 = *(v717 + 504);
      if ((v137 + 4) > *(v717 + 512))
      {
        goto LABEL_1181;
      }

      v138 = (v137 + 2);
      if (v137 + 2 > (v137 + 4) || v138 < *(v717 + 520))
      {
        goto LABEL_1181;
      }

      v89 = *v138;
      v139 = v132 - 15;
      *(v717 + 530) = v89;
      *(v717 + 504) = v138;
      v136 |= v89 << (v135 - 15);
    }

    *(v717 + 528) = v139;
    *(v714 + 274) = HIWORD(v136);
    v140 = 2 * (v89 << v139);
    if (v139 < 16)
    {
      v145 = v139 + 1;
    }

    else
    {
      v141 = *(v717 + 504);
      v142 = v141 + 4;
      if ((v141 + 4) > *(v717 + 512))
      {
        goto LABEL_1181;
      }

      v143 = (v141 + 2);
      if (v143 > v142 || v143 < *(v717 + 520))
      {
        goto LABEL_1181;
      }

      v144 = *v143;
      v145 = v139 - 15;
      *(v717 + 530) = v144;
      *(v717 + 504) = v143;
      v140 |= v144 << v145;
    }

    *(v717 + 528) = v145;
    *(v714 + 300) = HIWORD(v140);
    if (*(v717 + 40) <= 1)
    {
      if (v87 < 1)
      {
        goto LABEL_274;
      }

      v153 = 0;
      v154 = v714 + 314;
      v155 = (v714 + 302);
      do
      {
        if (v155 < v714 + 302)
        {
          goto LABEL_1181;
        }

        if ((v155 + 1) > v154)
        {
          goto LABEL_1181;
        }

        if (v155 > v155 + 1)
        {
          goto LABEL_1181;
        }

        *v155 = 0;
        v156 = (v155 + 7);
        if ((v155 + 6) < v154 || v156 > v714 + 326 || (v155 + 6) > v156)
        {
          goto LABEL_1181;
        }

        v155[6] = 0;
        ++v153;
        v157 = *(v717 + 496);
        ++v155;
      }

      while (v153 < v157);
    }

    else
    {
      *(v714 + 302) = 1;
      v146 = *(v717 + 528);
      v147 = 2 * (*(v717 + 530) << *(v717 + 528));
      if (v146 < 16)
      {
        v152 = v146 + 1;
      }

      else
      {
        v148 = *(v717 + 504);
        v149 = v148 + 4;
        if ((v148 + 4) > *(v717 + 512))
        {
          goto LABEL_1181;
        }

        v150 = (v148 + 2);
        if (v150 > v149 || v150 < *(v717 + 520))
        {
          goto LABEL_1181;
        }

        v151 = *v150;
        v152 = v146 - 15;
        *(v717 + 530) = v151;
        *(v717 + 504) = v150;
        v147 |= v151 << v152;
      }

      *(v717 + 528) = v152;
      *(v714 + 314) = HIWORD(v147);
      v87 = *(v717 + 496);
      if (v87 < 2)
      {
LABEL_274:
        if (*(v714 + 256))
        {
          if (v87 < 1)
          {
            goto LABEL_427;
          }

          v181 = 0;
          v182 = v714 + 314;
          v183 = v714 + 326;
          v184 = v714 + 338;
          v185 = v714;
          do
          {
            v186 = (v182 + 2 * v181);
            v187 = v186 + 1;
            if (v186 < v182 || v187 > v183 || v186 > v187)
            {
              goto LABEL_1181;
            }

            if (*v186)
            {
              v190 = *(v717 + 528);
              v191 = 4 * (*(v717 + 530) << *(v717 + 528));
              if (v190 < 15)
              {
                v198 = v190 + 2;
              }

              else
              {
                v192 = *(v717 + 504);
                v193 = (v192 + 2);
                v194 = v192 + 4;
                if (v194 > *(v717 + 512) || v193 > v194 || v193 < *(v717 + 520))
                {
                  goto LABEL_1181;
                }

                v197 = *v193;
                v198 = v190 - 14;
                *(v717 + 530) = v197;
                *(v717 + 504) = v193;
                v191 |= v197 << v198;
              }

              *(v717 + 528) = v198;
              v199 = (v183 + 2 * v181);
              if (v199 < v183 || (v199 + 1) > v184 || v199 > v199 + 1)
              {
                goto LABEL_1181;
              }

              *v199 = HIWORD(v191);
            }

            if (*(v717 + 44) >= 1)
            {
              v200 = 0;
              v201 = 0;
              v202 = v184 + 10 * v181;
              do
              {
                v203 = *(v717 + 528);
                v204 = 4 * (*(v717 + 530) << *(v717 + 528));
                if (v203 < 15)
                {
                  v211 = v203 + 2;
                }

                else
                {
                  v205 = *(v717 + 504);
                  v206 = (v205 + 2);
                  v207 = v205 + 4;
                  if (v207 > *(v717 + 512) || v206 > v207 || v206 < *(v717 + 520))
                  {
                    goto LABEL_1181;
                  }

                  v210 = *v206;
                  v211 = v203 - 14;
                  *(v717 + 530) = v210;
                  *(v717 + 504) = v206;
                  v204 |= v210 << v211;
                }

                *(v717 + 528) = v211;
                v212 = v185 + v200 + 338;
                if (v212 < v202)
                {
                  goto LABEL_1181;
                }

                v213 = v185 + v200 + 340;
                if (v213 > v202 + 10 || v212 > v213)
                {
                  goto LABEL_1181;
                }

                *(v185 + 2 * v201++ + 338) = HIWORD(v204);
                v200 += 2;
              }

              while (v201 < *(v717 + 44));
            }

            ++v181;
            v185 += 10;
          }

          while (v181 < *(v717 + 496));
          LOWORD(v87) = *(v717 + 496);
        }

        else
        {
          if (v87 >= 1)
          {
            v214 = v87;
            v215 = (v714 + 314);
            while (1)
            {
              if (v215 < v714 + 314 || (v215 + 1) > v714 + 326 || v215 > v215 + 1)
              {
                goto LABEL_1181;
              }

              if (*v215)
              {
                break;
              }

              ++v215;
              if (!--v214)
              {
                goto LABEL_334;
              }
            }

            v216 = *(v717 + 528);
            v217 = 32 * (*(v717 + 530) << *(v717 + 528));
            if (v216 < 12)
            {
              v222 = v216 + 5;
            }

            else
            {
              v218 = *(v717 + 504);
              v219 = v218 + 4;
              if ((v218 + 4) > *(v717 + 512))
              {
                goto LABEL_1181;
              }

              v220 = (v218 + 2);
              if (v220 > v219 || v220 < *(v717 + 520))
              {
                goto LABEL_1181;
              }

              v221 = *v220;
              v222 = v216 - 11;
              *(v717 + 530) = v221;
              *(v717 + 504) = v220;
              v217 |= v221 << v222;
            }

            *(v717 + 528) = v222;
            *(v714 + 398) = HIWORD(v217);
          }

LABEL_334:
          LODWORD(v223) = *(v717 + 44);
          if (v223 >= 1)
          {
            v224 = 0;
            v225 = 0;
            do
            {
              v226 = *(v717 + 528);
              v227 = 32 * (*(v717 + 530) << *(v717 + 528));
              if (v226 < 12)
              {
                v234 = v226 + 5;
              }

              else
              {
                v228 = *(v717 + 504);
                v229 = (v228 + 2);
                v230 = v228 + 4;
                if (v230 > *(v717 + 512) || v229 > v230 || v229 < *(v717 + 520))
                {
                  goto LABEL_1181;
                }

                v233 = *v229;
                v234 = v226 - 11;
                *(v717 + 530) = v233;
                *(v717 + 504) = v229;
                v227 |= v233 << v234;
              }

              *(v717 + 528) = v234;
              v235 = v714 + v224 + 400;
              if (v235 < v714 + 400)
              {
                goto LABEL_1181;
              }

              v236 = v714 + v224 + 402;
              if (v236 > v714 + 410 || v235 > v236)
              {
                goto LABEL_1181;
              }

              *(v714 + 2 * v225++ + 400) = HIWORD(v227);
              v224 += 2;
            }

            while (v225 < *(v717 + 44));
            LOWORD(v223) = *(v717 + 44);
            LOWORD(v87) = *(v717 + 496);
          }

          if (v87 < 1)
          {
LABEL_427:
            if (*(v717 + 210))
            {
              goto LABEL_454;
            }

            if (v87 == 6)
            {
              *(v714 + 422) = 1;
            }

            else
            {
              v285 = *(v717 + 528);
              v286 = 2 * (*(v717 + 530) << *(v717 + 528));
              if (v285 < 16)
              {
                v291 = v285 + 1;
              }

              else
              {
                v287 = *(v717 + 504);
                v288 = v287 + 4;
                if ((v287 + 4) > *(v717 + 512))
                {
                  goto LABEL_1181;
                }

                v289 = (v287 + 2);
                if (v289 > v288 || v289 < *(v717 + 520))
                {
                  goto LABEL_1181;
                }

                v290 = *v289;
                v291 = v285 - 15;
                *(v717 + 530) = v290;
                *(v717 + 504) = v289;
                v286 |= v290 << v291;
              }

              *(v717 + 528) = v291;
              *(v714 + 422) = HIWORD(v286);
              if (v286 < 0x10000)
              {
                goto LABEL_454;
              }
            }

            if (*(v717 + 44) >= 1)
            {
              v292 = 0;
              v293 = 0;
              do
              {
                v294 = *(v717 + 528);
                v295 = 32 * (*(v717 + 530) << *(v717 + 528));
                if (v294 < 12)
                {
                  v302 = v294 + 5;
                }

                else
                {
                  v296 = *(v717 + 504);
                  v297 = (v296 + 2);
                  v298 = v296 + 4;
                  if (v298 > *(v717 + 512) || v297 > v298 || v297 < *(v717 + 520))
                  {
                    goto LABEL_1181;
                  }

                  v301 = *v297;
                  v302 = v294 - 11;
                  *(v717 + 530) = v301;
                  *(v717 + 504) = v297;
                  v295 |= v301 << v302;
                }

                *(v717 + 528) = v302;
                v303 = v714 + v292 + 424;
                if (v303 < v714 + 424)
                {
                  goto LABEL_1181;
                }

                v304 = v714 + v292 + 426;
                if (v304 > v77 || v303 > v304)
                {
                  goto LABEL_1181;
                }

                *(v714 + 2 * v293++ + 424) = HIWORD(v295);
                v292 += 2;
              }

              while (v293 < *(v717 + 44));
            }

LABEL_454:
            if (*(v714 + 258))
            {
              v305 = *(v717 + 44);
              v306 = *(v717 + 44);
              if (v305 >= 1)
              {
                v307 = v727;
                v308 = *(v717 + 44);
                do
                {
                  v309 = v307 + 1;
                  if (v307 < v727 || v309 > &v727[10] || v307 > v309)
                  {
                    goto LABEL_1181;
                  }

                  *v307++ = 0;
                  --v308;
                }

                while (v308);
              }

              v312 = *(v717 + 496);
              if (v312 < 1)
              {
                LOWORD(v347) = 0;
                v333 = 0;
              }

              else
              {
                v313 = 0;
                v314 = 0;
                v315 = 0;
                v316 = v714 + 302;
                v317 = v714 + 314;
                v318 = v714 + 326;
                v319 = v714 + 338;
                v320 = v714 + 410;
                v321 = (v714 + 338);
                do
                {
                  v322 = (v316 + 2 * v313);
                  v323 = v322 + 1;
                  if (v322 < v316 || v323 > v317 || v322 > v323)
                  {
                    goto LABEL_1181;
                  }

                  if (*v322)
                  {
                    goto LABEL_479;
                  }

                  v326 = (v318 + 2 * v313);
                  if (v326 < v318 || (v326 + 1) > v319 || v326 > v326 + 1)
                  {
                    goto LABEL_1181;
                  }

                  if (*v326)
                  {
                    goto LABEL_479;
                  }

                  v332 = (v317 + 2 * v313);
                  if (v332 < v317 || (v332 + 1) > v318 || v332 > v332 + 1)
                  {
                    goto LABEL_1181;
                  }

                  if (!*v332)
                  {
LABEL_479:
                    ++v315;
                  }

                  if (v305 >= 1)
                  {
                    v327 = v319 + 10 * v313;
                    v328 = v727;
                    v329 = v321;
                    v330 = v306;
                    do
                    {
                      if (v329 < v327 || (v329 + 1) > v327 + 10 || v329 > v329 + 1)
                      {
                        goto LABEL_1181;
                      }

                      if (*v329)
                      {
                        ++*v328;
                      }

                      ++v328;
                      ++v329;
                      --v330;
                    }

                    while (v330);
                  }

                  if (!*(v717 + 42))
                  {
                    goto LABEL_493;
                  }

                  v331 = (v320 + 2 * v313);
                  if (v331 < v320 || (v331 + 1) > v714 + 422 || v331 > v331 + 1)
                  {
                    goto LABEL_1181;
                  }

                  if (*v331)
                  {
LABEL_493:
                    ++v314;
                  }

                  ++v313;
                  v321 += 5;
                }

                while (v313 != v312);
                v333 = v314 == 1;
                if (v315 == 1)
                {
                  v334 = *(v717 + 528);
                  v335 = 2 * (*(v717 + 530) << *(v717 + 528));
                  if (v334 < 16)
                  {
                    v340 = v334 + 1;
                  }

                  else
                  {
                    v336 = *(v717 + 504);
                    v337 = v336 + 4;
                    if ((v336 + 4) > *(v717 + 512))
                    {
                      goto LABEL_1181;
                    }

                    v338 = (v336 + 2);
                    if (v338 > v337 || v338 < *(v717 + 520))
                    {
                      goto LABEL_1181;
                    }

                    v339 = *v338;
                    v340 = v334 - 15;
                    *(v717 + 530) = v339;
                    *(v717 + 504) = v338;
                    v335 |= v339 << v340;
                  }

                  v347 = HIWORD(v335);
                  *(v717 + 528) = v340;
                }

                else
                {
                  LOWORD(v347) = 0;
                }
              }

              *v77 = v347;
              if (v305 < 1)
              {
                if (v333)
                {
LABEL_553:
                  v366 = *(v717 + 528);
                  v367 = 2 * (*(v717 + 530) << *(v717 + 528));
                  if (v366 < 16)
                  {
                    v372 = v366 + 1;
                  }

                  else
                  {
                    v368 = *(v717 + 504);
                    v369 = v368 + 4;
                    if ((v368 + 4) > *(v717 + 512))
                    {
                      goto LABEL_1181;
                    }

                    v370 = (v368 + 2);
                    if (v370 > v369 || v370 < *(v717 + 520))
                    {
                      goto LABEL_1181;
                    }

                    v371 = *v370;
                    v372 = v366 - 15;
                    *(v717 + 530) = v371;
                    *(v717 + 504) = v370;
                    v367 |= v371 << v372;
                  }

                  *(v717 + 528) = v372;
                  v374 = (v714 + 436 + 2 * v305);
                  if (v374 < v714 + 436 || (v374 + 1) > v714 + 448 || v374 > v374 + 1)
                  {
                    goto LABEL_1181;
                  }

                  *v374 = HIWORD(v367);
                  goto LABEL_568;
                }
              }

              else
              {
                v348 = v714 + 436;
                v349 = v714 + 448;
                v350 = 218;
                v351 = v727;
                v352 = (v714 + 436);
                do
                {
                  v353 = v351 + 1;
                  if (v351 < v727 || v353 > &v727[10] || v351 > v353)
                  {
                    goto LABEL_1181;
                  }

                  if (*v351 == 1)
                  {
                    v356 = *(v717 + 528);
                    v357 = 2 * (*(v717 + 530) << *(v717 + 528));
                    if (v356 < 16)
                    {
                      v364 = v356 + 1;
                    }

                    else
                    {
                      v358 = *(v717 + 504);
                      v359 = (v358 + 2);
                      v360 = v358 + 4;
                      if (v360 > *(v717 + 512) || v359 > v360 || v359 < *(v717 + 520))
                      {
                        goto LABEL_1181;
                      }

                      v363 = *v359;
                      v364 = v356 - 15;
                      *(v717 + 530) = v363;
                      *(v717 + 504) = v359;
                      v357 |= v363 << v364;
                    }

                    *(v717 + 528) = v364;
                    if (v352 < v348 || (v352 + 1) > v349 || v352 > v352 + 1)
                    {
                      goto LABEL_1181;
                    }

                    *v352 = HIWORD(v357);
                  }

                  else
                  {
                    if (v352 < v348 || (v352 + 1) > v349 || v352 > v352 + 1)
                    {
                      goto LABEL_1181;
                    }

                    *v352 = 0;
                  }

                  ++v352;
                  v365 = v350 - 217;
                  ++v350;
                  ++v351;
                }

                while (v365 < *(v717 + 44));
                LOWORD(v305) = *(v717 + 44);
                if (v333)
                {
                  goto LABEL_553;
                }
              }

              v373 = (v714 + 436 + 2 * v305);
              if (v373 < v714 + 436 || (v373 + 1) > v714 + 448 || v373 > v373 + 1)
              {
                goto LABEL_1181;
              }

              *v373 = 0;
            }

            else
            {
              *v77 = 0;
              if (*(v717 + 46) >= 1)
              {
                v341 = 0;
                v342 = 0;
                do
                {
                  v343 = v714 + v341 + 436;
                  v344 = v714 + v341 + 438;
                  if (v343 < v714 + 436 || v344 > v714 + 448 || v343 > v344)
                  {
                    goto LABEL_1181;
                  }

                  *(v714 + 2 * v342++ + 436) = 0;
                  v341 += 2;
                }

                while (v342 < *(v717 + 46));
              }
            }

LABEL_568:
            if (!*(v714 + 260))
            {
              v375 = *(v717 + 528);
              v376 = *(v717 + 530);
              v377 = (v376 << *(v717 + 528)) << 6;
              if (v375 < 11)
              {
                v380 = v375 + 6;
              }

              else
              {
                v378 = *(v717 + 504);
                if ((v378 + 4) > *(v717 + 512))
                {
                  goto LABEL_1181;
                }

                v379 = (v378 + 2);
                if (v378 + 2 > (v378 + 4) || v379 < *(v717 + 520))
                {
                  goto LABEL_1181;
                }

                v376 = *v379;
                v380 = v375 - 10;
                *(v717 + 530) = v376;
                *(v717 + 504) = v379;
                v377 |= v376 << v380;
              }

              *(v717 + 528) = v380;
              *(v714 + 448) = HIWORD(v377);
              v381 = 16 * (v376 << v380);
              if (v380 < 13)
              {
                v385 = v380 + 4;
              }

              else
              {
                v382 = *(v717 + 504);
                if ((v382 + 4) > *(v717 + 512))
                {
                  goto LABEL_1181;
                }

                v383 = (v382 + 2);
                if (v382 + 2 > (v382 + 4) || v383 < *(v717 + 520))
                {
                  goto LABEL_1181;
                }

                v384 = *v383;
                v385 = v380 - 12;
                *(v717 + 530) = v384;
                *(v717 + 504) = v383;
                v381 |= v384 << (v380 - 12);
              }

              *(v717 + 528) = v385;
              *(v714 + 450) = HIWORD(v381);
            }

            v386 = *(v717 + 44);
            if (*(v714 + 262) && v386 >= 1)
            {
              v387 = 0;
              v388 = v714 + 462;
              v389 = v714 + 472;
              v390 = v714 + 474;
              do
              {
                v391 = *(v717 + 528);
                v392 = 2 * (*(v717 + 530) << *(v717 + 528));
                if (v391 < 16)
                {
                  v399 = v391 + 1;
                }

                else
                {
                  v393 = *(v717 + 504);
                  v394 = (v393 + 2);
                  v395 = v393 + 4;
                  if (v395 > *(v717 + 512) || v394 > v395 || v394 < *(v717 + 520))
                  {
                    goto LABEL_1181;
                  }

                  v398 = *v394;
                  v399 = v391 - 15;
                  *(v717 + 530) = v398;
                  *(v717 + 504) = v394;
                  v392 |= v398 << v399;
                }

                *(v717 + 528) = v399;
                v400 = (v390 - 22);
                if (v390 - 22 < v714 + 452 || v390 - 20 > v388 || v400 > v390 - 20)
                {
                  goto LABEL_1181;
                }

                *v400 = HIWORD(v392);
                if (v392 >= 0x10000)
                {
                  v401 = *(v717 + 528);
                  v402 = (*(v717 + 530) << *(v717 + 528)) << 10;
                  if (v401 < 7)
                  {
                    v407 = v401 + 10;
                  }

                  else
                  {
                    v403 = *(v717 + 504);
                    v404 = v403 + 4;
                    if ((v403 + 4) > *(v717 + 512))
                    {
                      goto LABEL_1181;
                    }

                    v405 = (v403 + 2);
                    if (v405 > v404 || v405 < *(v717 + 520))
                    {
                      goto LABEL_1181;
                    }

                    v406 = *v405;
                    v407 = v401 - 6;
                    *(v717 + 530) = v406;
                    *(v717 + 504) = v405;
                    v402 |= v406 << v407;
                  }

                  *(v717 + 528) = v407;
                  v408 = (v390 - 12);
                  if (v390 - 12 < v388 || v390 - 10 > v389 || v408 > v390 - 10)
                  {
                    goto LABEL_1181;
                  }

                  *v408 = HIWORD(v402);
                  v409 = *(v717 + 528);
                  v410 = (*(v717 + 530) << *(v717 + 528)) << 8;
                  if (v409 < 9)
                  {
                    v415 = v409 + 8;
                  }

                  else
                  {
                    v411 = *(v717 + 504);
                    v412 = v411 + 4;
                    if ((v411 + 4) > *(v717 + 512))
                    {
                      goto LABEL_1181;
                    }

                    v413 = (v411 + 2);
                    if (v413 > v412 || v413 < *(v717 + 520))
                    {
                      goto LABEL_1181;
                    }

                    v414 = *v413;
                    v415 = v409 - 8;
                    *(v717 + 530) = v414;
                    *(v717 + 504) = v413;
                    v410 |= v414 << v415;
                  }

                  *(v717 + 528) = v415;
                  v416 = (v390 - 2);
                  if (v390 - 2 < v389 || v390 > v714 + 482 || v416 > v390)
                  {
                    goto LABEL_1181;
                  }

                  *v416 = HIWORD(v410);
                }

                ++v387;
                v390 += 2;
              }

              while (v387 < *(v717 + 44));
              LOWORD(v386) = *(v717 + 44);
            }

            if (*(v714 + 300))
            {
              if (v386 >= 1)
              {
                v417 = 0;
                v418 = v714 + 492;
                v419 = (v714 + 482);
                do
                {
                  v420 = *(v717 + 528);
                  v421 = 2 * (*(v717 + 530) << *(v717 + 528));
                  if (v420 < 16)
                  {
                    v428 = v420 + 1;
                  }

                  else
                  {
                    v422 = *(v717 + 504);
                    v423 = (v422 + 2);
                    v424 = v422 + 4;
                    if (v424 > *(v717 + 512) || v423 > v424 || v423 < *(v717 + 520))
                    {
                      goto LABEL_1181;
                    }

                    v427 = *v423;
                    v428 = v420 - 15;
                    *(v717 + 530) = v427;
                    *(v717 + 504) = v423;
                    v421 |= v427 << v428;
                  }

                  *(v717 + 528) = v428;
                  if (v419 < v714 + 482 || (v419 + 1) > v418 || v419 > v419 + 1)
                  {
                    goto LABEL_1181;
                  }

                  *v419 = HIWORD(v421);
                  if (v421 >= 0x10000)
                  {
                    v429 = *(v717 + 528);
                    v430 = 32 * (*(v717 + 530) << *(v717 + 528));
                    if (v429 < 12)
                    {
                      v435 = v429 + 5;
                    }

                    else
                    {
                      v431 = *(v717 + 504);
                      v432 = v431 + 4;
                      if ((v431 + 4) > *(v717 + 512))
                      {
                        goto LABEL_1181;
                      }

                      v433 = (v431 + 2);
                      if (v433 > v432 || v433 < *(v717 + 520))
                      {
                        goto LABEL_1181;
                      }

                      v434 = *v433;
                      v435 = v429 - 11;
                      *(v717 + 530) = v434;
                      *(v717 + 504) = v433;
                      v430 |= v434 << v435;
                    }

                    *(v717 + 528) = v435;
                    v436 = v419 + 5;
                    if ((v419 + 5) < v418 || (v419 + 6) > v714 + 502 || v436 > v419 + 6)
                    {
                      goto LABEL_1181;
                    }

                    *v436 = HIWORD(v430);
                  }

                  ++v417;
                  ++v419;
                }

                while (v417 < *(v717 + 44));
              }
            }

            else if (v386 >= 1)
            {
              v437 = 0;
              v438 = 0;
              do
              {
                v439 = v714 + v437 + 482;
                v440 = v714 + v437 + 484;
                if (v439 < v714 + 482 || v440 > v714 + 492 || v439 > v440)
                {
                  goto LABEL_1181;
                }

                *(v714 + 2 * v438++ + 482) = 0;
                v437 += 2;
              }

              while (v438 < *(v717 + 44));
            }

            v443 = *(v717 + 496) - 1;
            if (*(v717 + 496) != 1)
            {
              v444 = *(v717 + 528);
              v445 = 2 * (*(v717 + 530) << *(v717 + 528));
              if (v444 < 16)
              {
                v450 = v444 + 1;
              }

              else
              {
                v446 = *(v717 + 504);
                v447 = v446 + 4;
                if ((v446 + 4) > *(v717 + 512))
                {
                  goto LABEL_1181;
                }

                v448 = (v446 + 2);
                if (v448 > v447 || v448 < *(v717 + 520))
                {
                  goto LABEL_1181;
                }

                v449 = *v448;
                v450 = v444 - 15;
                *(v717 + 530) = v449;
                *(v717 + 504) = v448;
                v445 |= v449 << v450;
              }

              *(v717 + 528) = v450;
              *(v714 + 502) = HIWORD(v445);
              if (v445 >= 0x10000)
              {
                LOWORD(v451) = *(v717 + 214) - 1;
                v452 = 4;
                if (*(v717 + 214) != 1)
                {
                  do
                  {
                    v453 = v451;
                    v451 = v451 >> 1;
                    ++v452;
                  }

                  while (v453 > 1);
                }

                ddp_udc_int_bsod_skip(v695, v443 * v452);
              }
            }

            LOWORD(v86) = *(v717 + 36);
LABEL_673:
            if (v86 > 8)
            {
              v455 = (v717 + 214);
            }

            else
            {
              v454 = &framesizetab[38 * *(v717 + 32)];
              v455 = &v454[*(v717 + 34)];
              v456 = (v455 + 1);
              if (v455 < v454 || v456 > (v454 + 38) || v455 > v456)
              {
                goto LABEL_1181;
              }
            }

            v459 = *v455;
            *v727 = v691 + 2 * v459 - 2;
            *&v727[8] = v689;
            v2 = (16 * v459);
            ddp_udc_int_axdd_unp(v727, v688, (16 * v459 - 32));
            if (*(v717 + 392) == 1 && !*(v717 + 210) && *(v717 + 36) - 11 <= 5)
            {
              v460 = *(v717 + 214);
              v728 = 0xAAAAAAAAAAAAAAAALL;
              *&v461 = 0xAAAAAAAAAAAAAAAALL;
              *(&v461 + 1) = 0xAAAAAAAAAAAAAAAALL;
              *v727 = v461;
              *&v727[16] = v461;
              if (*v688)
              {
                v462 = v688[16];
                *&v722 = v727;
                *(&v722 + 1) = v729;
                v723 = v727;
                v463 = v714;
                *v721 = *(v714 + 31704);
                *&v721[16] = *(v714 + 31720);
                ddp_udc_int_bsod_init(v721, v462, &v722);
                v464 = *v727;
                v465 = *&v727[24];
              }

              else
              {
                *&v722 = v727;
                *(&v722 + 1) = v729;
                v723 = v727;
                *v721 = v691 + 2 * v460 - 2;
                *&v721[8] = v689;
                ddp_udc_int_bsod_init(v721, 15, &v722);
                v466 = *v727;
                v464 = (*v727 - 2);
                *v727 -= 2;
                v463 = v714;
                if (*&v727[24] <= 0)
                {
                  v464 = (v466 - 4);
                  *v727 = v466 - 4;
                  v467 = 15;
                }

                else
                {
                  v467 = -1;
                }

                v465 = *&v727[24] + v467;
                *&v727[24] += v467;
                if ((v464 + 1) > *&v727[8] || v464 > v464 + 1 || v464 < *&v727[16])
                {
                  goto LABEL_1181;
                }

                *&v727[26] = *v464;
              }

              v468 = v464 - 1;
              *v727 = v464 - 1;
              if (v465 < 0)
              {
                v468 = v464 - 2;
                *v727 = v464 - 2;
                v465 += 16;
              }

              *&v727[24] = v465;
              v469 = v468 + 1;
              if ((v468 + 1) > *&v727[8] || v468 > v469 || v468 < *&v727[16])
              {
                goto LABEL_1181;
              }

              *&v727[26] = *v468;
              v470 = *&v727[26] << v465 << 16;
              if (v465 < 1)
              {
                v465 += 16;
              }

              else
              {
                v471 = v468 + 2;
                if (v471 > *&v727[8] || v469 > v471 || v469 < *&v727[16])
                {
                  goto LABEL_1181;
                }

                *&v727[26] = *v469;
                *v727 = v469;
                v470 |= *&v727[26] << v465;
              }

              v472 = 0;
              v473 = HIWORD(v470);
              *&v727[24] = v465;
              v463[33] = HIWORD(v470);
              v474 = v463 + 34;
              do
              {
                v475 = &v463[5 * v472 + 34];
                v476 = v474;
                v477 = 5;
                do
                {
                  if (v476 < v475 || (v476 + 1) > v475 + 10 || v476 > v476 + 1)
                  {
                    goto LABEL_1181;
                  }

                  v473 = -17547 * v473 + 1;
                  *v476++ = v473;
                  --v477;
                }

                while (v477);
                ++v472;
                v474 += 5;
              }

              while (v472 != 6);
              v478 = 0;
              v479 = v463 + 64;
              do
              {
                v480 = &v463[5 * v478 + 64];
                v481 = v479;
                v482 = 5;
                do
                {
                  if (v481 < v480 || (v481 + 1) > v480 + 10 || v481 > v481 + 1)
                  {
                    goto LABEL_1181;
                  }

                  v473 = -17547 * v473 + 1;
                  *v481++ = v473;
                  --v482;
                }

                while (v482);
                ++v478;
                v479 += 5;
              }

              while (v478 != 6);
            }

            v682 = v2;
            if (v691 && (v691 + 2 > v689 || v691 > v691 + 2 || v691 < *(&v689 + 1)))
            {
              goto LABEL_1181;
            }

            v718 = *(v714 + 32);
            v719 = *(v714 + 48);
            v483 = v717;
            if (*(v717 + 36) > 8)
            {
              v684 = 0;
            }

            else
            {
              v484 = &framesizetab[38 * *(v717 + 32)];
              v485 = &v484[*(v717 + 34)];
              if (v485 < v484 || v485 + 1 > v484 + 38 || v485 > v485 + 1)
              {
                goto LABEL_1181;
              }

              v684 = (*v485 >> 3) + (*v485 >> 1);
              v483 = v717;
            }

            v486 = *(v483 + 504);
            if ((v486 + 1) > *(v483 + 512) || v486 > v486 + 1 || v486 < *(v717 + 520))
            {
              goto LABEL_1181;
            }

            v487 = v713;
            v716 = v713 + 5192 * (v692 & 0x7FFF);
            v3 = v717;
            *(v717 + 530) = *v486;
            if (v713)
            {
              if (v713 >= v713 + 5192 || v713 + 5192 > v716)
              {
                goto LABEL_1181;
              }

              v487 = v713;
              ddp_udc_int_abkd_blkinit(v696, v713);
              v3 = v717;
            }

            else
            {
              ddp_udc_int_abkd_blkinit(v696, 0);
            }

            v2 = v714;
            if (v692 < 1)
            {
              v687 = 0;
              LODWORD(v4) = 0;
LABEL_935:
              if (*(v3 + 40) != 2)
              {
                v559 = *(v3 + 46);
                if (v559 >= 1)
                {
                  v560 = 0;
                  v561 = 0;
                  v711 = v2 + 5192 * v685 + 4544;
                  v562 = __b;
                  do
                  {
                    v563 = &ddp_udc_int_gbl_chantab[6 * *(v3 + 40)];
                    v564 = &v563[v561];
                    v565 = (v564 + 1);
                    if (v564 < v563 || v565 > (v563 + 6) || v564 > v565)
                    {
                      goto LABEL_1181;
                    }

                    v568 = (v694 + 4 * *v564);
                    v569 = v568 + 1;
                    v570 = v568 < v694 || v569 > v693;
                    if (v570 || v568 > v569)
                    {
                      goto LABEL_1181;
                    }

                    if (*v568)
                    {
                      v572 = v692 < 1;
                    }

                    else
                    {
                      v572 = 1;
                    }

                    if (!v572)
                    {
                      v2 = &__b[18 * v561];
                      v4 = v2 + 288;
                      v573 = v711;
                      v3 = v562;
                      v574 = v692 & 0x7FFF;
                      do
                      {
                        if (v573 >= v573 + 376)
                        {
                          goto LABEL_1181;
                        }

                        if (v573 - 4000 > v573 + 1192)
                        {
                          goto LABEL_1181;
                        }

                        if (v573 + 1192 > v716)
                        {
                          goto LABEL_1181;
                        }

                        if (v573 - 4000 < v713)
                        {
                          goto LABEL_1181;
                        }

                        v575 = v573 - 3592 + v560;
                        if (v575)
                        {
                          if (v575 < v573 - 3592)
                          {
                            goto LABEL_1181;
                          }

                          v576 = v573 + v560 - 3280;
                          if (v576 > v573 - 1720 || v575 > v576)
                          {
                            goto LABEL_1181;
                          }
                        }

                        if (v3)
                        {
                          if (v3 < v2 || v3 + 48 > v4 || v3 > v3 + 48)
                          {
                            goto LABEL_1181;
                          }

                          v577 = v714 + 256;
                          v578 = v561;
                          v579 = v573;
                          v580 = v3;
                        }

                        else
                        {
                          v577 = v714 + 256;
                          v578 = v561;
                          v579 = v573;
                          v580 = 0;
                        }

                        ddp_udc_int_chnd_decspx(v578, *(v717 + 44), v577, v579, v575, v580);
                        v3 += 48;
                        v573 += 5192;
                        --v574;
                      }

                      while (v574);
                      LODWORD(v4) = 0;
                      LOWORD(v559) = *(v717 + 46);
                    }

                    ++v561;
                    v562 += 18;
                    v560 += 312;
                    v3 = v717;
                  }

                  while (v561 < v559);
                }
              }

              if (!v4)
              {
                LODWORD(v4) = v687;
              }

              if (*(v3 + 40) != 2)
              {
                v59 = v4;
                v2 = v714;
                v629 = v695;
                goto LABEL_1184;
              }

              if (v692 >= 1)
              {
                v581 = v714 + 5192 * v685 + 5716;
                v582 = v692 & 0x7FFF;
                do
                {
                  if (v581 >= v581 + 12)
                  {
                    goto LABEL_1181;
                  }

                  *(v581 + 8) = 0;
                  *v581 = 0;
                  v581 += 5192;
                  --v582;
                }

                while (v582);
              }

              v3 = v717;
              v583 = *(v717 + 46);
              if (v583 >= 1)
              {
                v584 = 0;
                v2 = __b;
                do
                {
                  if (v692 >= 1)
                  {
                    v585 = 0;
                    v586 = &__b[18 * v584];
                    v3 = v584;
                    do
                    {
                      v587 = (v713 + 5192 * v585);
                      v588 = v587 + 204;
                      v589 = v587 + 2596;
                      if (v587 >= v587 + 204 || v587 > v589 || v589 > v716 || v587 < v713)
                      {
                        goto LABEL_1181;
                      }

                      v593 = &v588[156 * v584];
                      if (v593)
                      {
                        v594 = v593 + 312;
                        v595 = v593 < v588 || v594 > (v587 + 1140);
                        if (v595 || v593 > v594)
                        {
                          goto LABEL_1181;
                        }
                      }

                      v597 = (v726 + 40 * v585);
                      if (v597)
                      {
                        v598 = v597 > (v597 + 40) || v597 + 40 > v727;
                        if (v598 || v597 < v726)
                        {
                          goto LABEL_1181;
                        }
                      }

                      *v727 = &__b[18 * v584];
                      *&v727[8] = v586 + 18;
                      *&v727[16] = *v727;
                      *&v722 = *v727;
                      *(&v722 + 1) = v586 + 18;
                      v723 = *v727;
                      *v721 = *(v714 + 32);
                      *&v721[16] = *(v714 + 48);
                      v541 = ddp_udc_int_chnd_unpblk(v584, v585, v696, v714 + 256, (v713 + 5192 * v585), v593, v597, v721, v727, &v722);
                      if (v541)
                      {
                        goto LABEL_1132;
                      }

                      if (!v584 && *(v714 + 434))
                      {
                        v600 = *v587;
                        v601 = &__b[3 * v585];
                        v604 = v601 + 6 <= &__b[18] && v601 <= v601 + 6 && v601 >= __b;
                        v605 = &__b[3 * v585 + 18];
                        v607 = v605 >= &__b[18] && v605 <= v605 + 6;
                        v608 = 2 * v600;
                        v609 = 4 * v600;
                        while (v600 < *(v713 + 5192 * v585 + 2))
                        {
                          if (!v604)
                          {
                            goto LABEL_1181;
                          }

                          v610 = (*v601 + v608);
                          v611 = (v610 + 1) > v601[1] || v610 > v610 + 1;
                          v612 = !v611 && v610 >= v601[2];
                          if (!v612 || !v607)
                          {
                            goto LABEL_1181;
                          }

                          v613 = (*v605 + v608);
                          v614 = (v613 + 1) > v605[1] || v613 > v613 + 1;
                          if (v614 || v613 < v605[2])
                          {
                            goto LABEL_1181;
                          }

                          *v613 = *v610;
                          v616 = v601[3];
                          v617 = v616 + v609;
                          v618 = v616 + v609 + 4;
                          if (v618 > v601[4])
                          {
                            goto LABEL_1181;
                          }

                          if (v617 > v618)
                          {
                            goto LABEL_1181;
                          }

                          if (v617 < v601[5])
                          {
                            goto LABEL_1181;
                          }

                          v619 = v605[3];
                          v620 = v619 + v609;
                          v621 = v619 + v609 + 4;
                          if (v621 > v605[4] || v620 > v621 || v620 < v605[5])
                          {
                            goto LABEL_1181;
                          }

                          *(v619 + 2 * v608) = *(v616 + 2 * v608);
                          ++v600;
                          v608 += 2;
                          v609 += 4;
                        }
                      }

                      ++v585;
                    }

                    while (v585 != (v692 & 0x7FFF));
                    v3 = v717;
                    LOWORD(v583) = *(v717 + 46);
                  }

                  ++v584;
                }

                while (v584 < v583);
              }

              if (v692 >= 1)
              {
                v2 = &__b[36];
                v622 = v714 + 5192 * v685 + 2872;
                v623 = __b;
                v3 = v692 & 0x7FFF;
                do
                {
                  v624 = v622 - 2328;
                  if (v622 + 2864 > v716 || v624 > v622 + 2864 || v624 < v713)
                  {
                    goto LABEL_1181;
                  }

                  if (*(v622 + 10))
                  {
                    v627 = *(v622 - 1624);
                    if (v627 >= *(v622 - 1312))
                    {
                      LOWORD(v627) = *(v622 - 1312);
                    }

                    if (v622 >= v622 + 14 || v623 && (v623 < __b || v623 + 6 > &__b[18] || v623 > v623 + 6))
                    {
                      goto LABEL_1181;
                    }

                    v628 = v623 + 36;
                    if (v623 != -288 && (v628 < &__b[18] || v623 + 42 > &__b[36] || v628 > v623 + 42))
                    {
                      goto LABEL_1181;
                    }

                    ddp_udc_int_mtxd_decexm(v627, v622, v623, v628);
                  }

                  v623 += 6;
                  v622 += 5192;
                  --v3;
                }

                while (v3);
                v3 = v717;
                LOWORD(v583) = *(v717 + 46);
              }

              v2 = v714;
              v629 = v695;
              if (v583 >= 1)
              {
                v630 = 0;
                v631 = 0;
                v632 = __b;
                do
                {
                  if (v692 >= 1)
                  {
                    v633 = &__b[18 * v631];
                    v634 = (v633 + 36);
                    v708 = v632;
                    v712 = v631;
                    v635 = v631;
                    v3 = v714 + 5192 * v685 + 4544;
                    v636 = v692 & 0x7FFF;
                    do
                    {
                      v637 = (v3 - 4000);
                      v2 = v3 - 3592;
                      if (v3 - 4000 > v3 - 3592)
                      {
                        goto LABEL_1181;
                      }

                      if (v3 + 376 > v3 + 1172)
                      {
                        goto LABEL_1181;
                      }

                      if (v637 > v3 + 1192)
                      {
                        goto LABEL_1181;
                      }

                      if (v3 + 1192 > v716)
                      {
                        goto LABEL_1181;
                      }

                      if (v637 < v713)
                      {
                        goto LABEL_1181;
                      }

                      v638 = v3 + v630 - 3592;
                      if (v3 + v630 != 3592)
                      {
                        if (v638 < v2)
                        {
                          goto LABEL_1181;
                        }

                        v639 = v3 + v630 - 3280;
                        if (v639 > v3 - 1720 || v638 > v639)
                        {
                          goto LABEL_1181;
                        }
                      }

                      if (v632)
                      {
                        if (v632 < v633 || (v632 + 6) > v634 || v632 > v632 + 6)
                        {
                          goto LABEL_1181;
                        }

                        v640 = v635;
                        v641 = v3 + v630 - 3592;
                        v642 = v632;
                        v643 = v632;
                      }

                      else
                      {
                        v640 = v635;
                        v641 = v3 + v630 - 3592;
                        v642 = 0;
                        v643 = 0;
                      }

                      ddp_udc_int_chnd_decblk(v637, v640, (v3 + 376), v641, v642, v643);
                      if (v3 >= v3 + 376)
                      {
                        goto LABEL_1181;
                      }

                      if (v3 + v630 != 3592)
                      {
                        if (v638 < v2)
                        {
                          goto LABEL_1181;
                        }

                        v644 = v3 + v630 - 3280;
                        if (v644 > v3 - 1720 || v638 > v644)
                        {
                          goto LABEL_1181;
                        }
                      }

                      if (v632)
                      {
                        if (v632 < v633 || (v632 + 6) > v634 || v632 > v632 + 6)
                        {
                          goto LABEL_1181;
                        }

                        v645 = v714 + 256;
                        v646 = v635;
                        v647 = v3;
                        v648 = v3 + v630 - 3592;
                        v649 = v632;
                      }

                      else
                      {
                        v645 = v714 + 256;
                        v646 = v635;
                        v647 = v3;
                        v648 = v3 + v630 - 3592;
                        v649 = 0;
                      }

                      ddp_udc_int_chnd_decspx(v646, *(v717 + 44), v645, v647, v648, v649);
                      v3 += 5192;
                      v632 += 6;
                      --v636;
                    }

                    while (v636);
                    v3 = v717;
                    LOWORD(v583) = *(v717 + 46);
                    v2 = v714;
                    v629 = v695;
                    v632 = v708;
                    v631 = v712;
                  }

                  ++v631;
                  v632 += 36;
                  v630 += 312;
                }

                while (v631 < v583);
              }

              if (*(v3 + 40) != 2)
              {
                goto LABEL_1183;
              }

              v650 = v726 + 40 * (v692 & 0x7FFF);
              v651 = v650 - 40;
              if (v650 == 40)
              {
                goto LABEL_1182;
              }

              if (v651 >= v726 && v650 <= v727 && v651 <= v650)
              {
                v629 = v650 - 40;
                v59 = 0;
                v2 = v714;
                v3 = v717;
                goto LABEL_1184;
              }

              goto LABEL_1181;
            }

            v488 = 0;
            LODWORD(v4) = 0;
            v687 = 0;
            *&v489 = v725;
            *(&v489 + 1) = v726;
            v701 = v489;
            v681 = 5192 * v685;
            v683 = v714 + v681 + 1264;
            while (1)
            {
              v490 = v487 + 5192 * v488;
              v710 = v488;
              if (v488)
              {
                if (v490 + 5172 > v490 + 5184)
                {
                  goto LABEL_1181;
                }

                *(v490 + 5180) = 0;
                *(v490 + 5172) = 0;
                v491 = v713 + 5192 * v488;
                if (v491)
                {
                  if (v491 > v491 + 5192 || v491 + 5192 > v716 || v491 < v713)
                  {
                    goto LABEL_1181;
                  }

                  v494 = *(v717 + 46);
                  if (v494 >= 1)
                  {
                    v495 = v683 + 5192 * v488;
                    do
                    {
                      if (v495 - 312 < v491 + 408 || v495 > v491 + 2280 || v495 - 312 > v495)
                      {
                        goto LABEL_1181;
                      }

                      *(v495 - 56) = 0;
                      v495 += 312;
                      --v494;
                    }

                    while (v494);
                  }

                  *(v491 + 336) = 0;
                }

                else
                {
                  v498 = *(v717 + 46);
                  if (v498 >= 1)
                  {
                    v499 = 720;
                    do
                    {
                      if (v499 > 0x8E8 || v499 < 0x138)
                      {
                        goto LABEL_1181;
                      }

                      *(v499 - 56) = 0;
                      v499 += 312;
                      --v498;
                    }

                    while (v498);
                  }

                  MEMORY[0x150] = 0;
                }

                v500 = v491 - 5192;
                if (v491 != 5192 && (v500 > v491 || v491 > v716 || v500 < v713) || v491 && (v491 > v491 + 5192 || v491 + 5192 > v716 || v491 < v713))
                {
                  goto LABEL_1181;
                }

                ddp_udc_int_abkd_copy(v696, v500, v491);
                LODWORD(v4) = 0;
                v3 = v717;
                v488 = v710;
                v487 = v713;
              }

              v501 = *(v3 + 36);
              v707 = v488;
              if ((v501 - 11) > 5)
              {
                v504 = v488;
                if (v501 <= 8)
                {
                  v505 = v487 + 5192 * v488;
                  if (v505)
                  {
                    if (v505 > v505 + 5192 || v505 + 5192 > v716 || v505 < v487)
                    {
                      goto LABEL_1181;
                    }

                    LODWORD(v4) = ddp_udc_int_abkd_unpddfixed(v488, v696, v695, v505);
                    v3 = v717;
                  }

                  else
                  {
                    LODWORD(v4) = ddp_udc_int_abkd_unpddfixed(v488, v696, v695, 0);
                  }

                  v2 = v714;
                  if (v4 > 0)
                  {
LABEL_979:
                    v60 = v688;
                    goto LABEL_1133;
                  }

                  v558 = v687;
                  if (v4)
                  {
                    v558 = v4;
                  }

                  if (v710 == 5)
                  {
                    if (v684 > (*(v3 + 504) + 2 * (*(v3 + 528) >> 4) - v691) >> 1 && !v558)
                    {
                      v558 = -4100;
                    }

                    v687 = v558;
                    v504 = 5;
                  }

                  else
                  {
                    v687 = v558;
                  }
                }
              }

              else
              {
                if (v490)
                {
                  if (v490 > v490 + 5192 || v490 + 5192 > v716 || v490 < v487)
                  {
                    goto LABEL_1181;
                  }

                  *v727 = v714 + 56;
                  *&v727[8] = v714 + 66;
                  *&v727[16] = v714 + 56;
                  LODWORD(v4) = ddp_udc_int_abkd_unpddpfixed(v488, v696, (v714 + 256), v727, v695, v490);
                  v3 = v717;
                }

                else
                {
                  *v727 = v714 + 56;
                  *&v727[8] = v714 + 66;
                  *&v727[16] = v714 + 56;
                  LODWORD(v4) = ddp_udc_int_abkd_unpddpfixed(v488, v696, (v714 + 256), v727, v695, 0);
                }

                v508 = v687;
                if (v4 > 0)
                {
                  v2 = v714;
                  goto LABEL_979;
                }

                v504 = v710;
                if (v4)
                {
                  v508 = v4;
                }

                v687 = v508;
              }

              v509 = v726 + 40 * v504;
              if (v509 + 40 > v727 || v509 > v509 + 40 || v509 < v726)
              {
                goto LABEL_1181;
              }

              v512 = v695;
              v513 = *(v695 + 16);
              *v509 = *v695;
              *(v509 + 1) = v513;
              *(v509 + 4) = *(v695 + 32);
              v3 = v717;
              if (*(v717 + 40) == 2)
              {
                v514 = v710;
                v487 = v713;
                v2 = v714;
                if (v710 != (v692 - 1))
                {
                  v515 = v713 + 5192 * v504;
                  if (v515 && (v515 >= v515 + 5192 || v515 + 5192 > v716 || v515 < v713))
                  {
                    goto LABEL_1181;
                  }

                  *v721 = __b[0];
                  *&v721[16] = *&__b[1];
                  v2 = v714;
                  v3 = v717;
                  v512 = v695;
                  v514 = v710;
                  if (v515 + 5172 > v515 + 5184)
                  {
                    goto LABEL_1181;
                  }

                  *(v515 + 5180) = 0;
                  *(v515 + 5172) = 0;
                  if (*(v717 + 46) >= 1)
                  {
                    v516 = 0;
                    v517 = 0;
                    v518 = v681 + 5192 * v504;
                    do
                    {
                      v519 = v714 + v518 + 952;
                      v720[0] = 0;
                      v520 = v714 + v518 + 1264;
                      if (v515 + 408 > v519 || v520 > v515 + 2280)
                      {
                        goto LABEL_1181;
                      }

                      v720[1] = *(v714 + v518 + 1248);
                      v522 = v714 + v516 + 436;
                      if (v522 < v714 + 436)
                      {
                        goto LABEL_1181;
                      }

                      v523 = v714 + v516 + 438;
                      if (v523 > v714 + 448 || v522 > v523)
                      {
                        goto LABEL_1181;
                      }

                      if (v514 || !*(v714 + 2 * v517 + 436))
                      {
                        if (*(v714 + 2 * v517 + 436))
                        {
                          goto LABEL_836;
                        }

                        if (v519 > v520)
                        {
                          goto LABEL_1181;
                        }

                        *v727 = *v721;
                        *&v727[16] = *&v721[16];
                        v524 = ddp_udc_int_exmd_skipmants((v717 + 32), v720, v727, v714 + v518 + 992, v695);
                      }

                      else
                      {
                        if (v519 > v520)
                        {
                          goto LABEL_1181;
                        }

                        *v727 = v718;
                        *&v727[16] = v719;
                        v722 = *v721;
                        v723 = *&v721[16];
                        v524 = ddp_udc_int_exmd_skipahtmants(v717 + 32, v720, v727, &v722, v714 + v518 + 992, v695);
                      }

                      v514 = v710;
                      if (v524)
                      {
                        goto LABEL_978;
                      }

LABEL_836:
                      if (!*(v714 + v518 + 960) || v517 != *(v515 + 50))
                      {
                        goto LABEL_844;
                      }

                      *(v515 + 328) = *(v714 + v518 + 1200);
                      *(*(v515 + 136) + 18) = *(v515 + 64);
                      if (v514 || !*(v714 + 434))
                      {
                        if (*(v714 + 434))
                        {
                          goto LABEL_844;
                        }

                        *v727 = *v721;
                        *&v727[16] = *&v721[16];
                        v524 = ddp_udc_int_exmd_skipmants((v717 + 32), v515, v727, v515 + 120, v695);
                      }

                      else
                      {
                        *v727 = v718;
                        *&v727[16] = v719;
                        v722 = *v721;
                        v723 = *&v721[16];
                        v524 = ddp_udc_int_exmd_skipahtmants(v717 + 32, v515, v727, &v722, v515 + 120, v695);
                      }

                      v514 = v710;
                      if (v524)
                      {
LABEL_978:
                        LODWORD(v4) = v524;
                        goto LABEL_979;
                      }

LABEL_844:
                      ++v517;
                      v516 += 2;
                      v518 += 312;
                    }

                    while (v517 < *(v717 + 46));
                  }

                  LODWORD(v4) = 0;
                  v487 = v713;
                }
              }

              else
              {
                v487 = v713;
                v2 = v714;
                v514 = v710;
                if (*(v717 + 46) >= 1)
                {
                  v525 = 0;
                  v526 = 0;
                  v527 = (v713 + 5192 * v504);
                  v528 = v527 >= v527 + 2596 || (v527 + 2596) > v716;
                  v705 = v527 + 1140;
                  v706 = v527 + 204;
                  v3 = (v527 + 2188);
                  v529 = &v725[3 * v504];
                  v700 = 6 * v504;
                  v530 = v529 + 3;
                  v533 = v528 || v527 > v527 + 204 || v527 < v713;
                  v703 = v533;
                  v537 = v529 <= v530 && v530 <= v726 && v529 >= v725 || v529 == 0;
                  v697 = v537;
                  v538 = v683 + 5192 * v504;
                  v539 = __b;
                  while (1)
                  {
                    if (v703)
                    {
                      goto LABEL_1181;
                    }

                    v540 = v538 - 312;
                    if (v538 != 312 && (v540 < v706 || v538 > v705 || v540 > v538))
                    {
                      goto LABEL_1181;
                    }

                    *v727 = v701;
                    *&v727[16] = v725;
                    v2 = &v539[36];
                    *&v722 = v539;
                    *(&v722 + 1) = v539 + 36;
                    v723 = v539;
                    *v721 = v718;
                    *&v721[16] = v719;
                    v541 = ddp_udc_int_chnd_unpblk(v526, v707, v696, v714 + 256, v527, v538 - 312, v695, v721, v727, &v722);
                    if (v541)
                    {
                      break;
                    }

                    v542 = &ddp_udc_int_gbl_chantab[6 * *(v717 + 40)];
                    v543 = &ddp_udc_int_gbl_chantab[6 * *(v717 + 40) + v525];
                    v544 = (v543 + 1);
                    if (v543 < v542 || v544 > (v542 + 6) || v543 > v544)
                    {
                      goto LABEL_1181;
                    }

                    v547 = (v694 + 4 * v542[v526]);
                    v548 = v547 + 1;
                    v549 = v547 < v694 || v548 > v693;
                    if (v549 || v547 > v548)
                    {
                      goto LABEL_1181;
                    }

                    if (*v547)
                    {
                      if (v3 > (v527 + 2586))
                      {
                        goto LABEL_1181;
                      }

                      if (v538 == 312)
                      {
                        if (!v697)
                        {
                          goto LABEL_1181;
                        }
                      }

                      else
                      {
                        v553 = v538 <= v705 && v540 <= v538 && v540 >= v706;
                        if (!v553 || !v697)
                        {
                          goto LABEL_1181;
                        }
                      }

                      v554 = &v539[v700];
                      if (&v539[v700])
                      {
                        if (v554 < v539)
                        {
                          goto LABEL_1181;
                        }

                        v555 = &v539[v700 + 6];
                        if (v555 > v2 || v554 > v555)
                        {
                          goto LABEL_1181;
                        }
                      }

                      ddp_udc_int_chnd_decblk(v527, v526, v527 + 2188, v538 - 312, &v725[3 * v504], v554);
                    }

                    ++v526;
                    ++v525;
                    v539 += 36;
                    v538 += 312;
                    if (v526 >= *(v717 + 46))
                    {
                      LODWORD(v4) = 0;
                      v487 = v713;
                      v2 = v714;
                      v3 = v717;
                      v512 = v695;
                      v514 = v710;
                      goto LABEL_914;
                    }
                  }

LABEL_1132:
                  LODWORD(v4) = v541;
                  v2 = v714;
                  v60 = v688;
                  v3 = v717;
LABEL_1133:
                  *(v2 + 252) = v4;
                  v654 = *(v2 + 244) + *(v2 + 240);
                  *(v2 + 240) = 0;
                  *(v2 + 244) = v654;
                  while (1)
                  {
LABEL_1134:
                    v655 = *(v2 + 232);
                    v656 = *(v3 + 496);
                    if (*(v3 + 40))
                    {
                      if (v656 < 1)
                      {
                        goto LABEL_1178;
                      }

                      v657 = v655 + *(v3 + 496);
                      v658 = (v2 + 5192 * v655);
                      v659 = *(v2 + 232);
                      while (&v658[68] >= v686)
                      {
                        v660 = &v658[717] > v60 || &v658[68] > &v658[717];
                        v661 = &v658[353] + 4;
                        v662 = v660 || v661 > &v658[353] + 6;
                        v663 = &v658[158];
                        v664 = &v658[197];
                        v665 = !v662 && v663 >= &v658[119];
                        v666 = !v665 || v664 > &v658[353];
                        if (v666 || v663 > v664)
                        {
                          break;
                        }

                        v658[161] = v661;
                        if (&v658[354] > &v658[354].u8[4])
                        {
                          break;
                        }

                        v658[160] = &v658[354];
                        ++v659;
                        v658 += 649;
                        if (v659 >= v657)
                        {
                          goto LABEL_1178;
                        }
                      }
                    }

                    else
                    {
                      if (v656 < 1)
                      {
LABEL_1178:
                        *(v2 + 232) = v655 + *(v2 + 240);
                        return;
                      }

                      v668 = v655 + v656;
                      v669 = (v2 + 5192 * v655);
                      v670 = *(v2 + 232);
                      while (&v669[68] >= v686)
                      {
                        v671 = &v669[717] > v60 || &v669[68] > &v669[717];
                        v672 = &v669[355];
                        v673 = v671 || v672 > &v669[355] + 2;
                        v674 = &v669[158];
                        v675 = &v669[197];
                        v676 = !v673 && v674 >= &v669[119];
                        v677 = !v676 || v675 > &v669[353];
                        if (v677 || v674 > v675)
                        {
                          break;
                        }

                        v669[161] = v672;
                        if (&v669[355].u8[4] > &v669[356])
                        {
                          break;
                        }

                        v669[160] = (&v669[355] + 4);
                        ++v670;
                        v669 += 649;
                        if (v670 >= v668)
                        {
                          goto LABEL_1178;
                        }
                      }
                    }

LABEL_1181:
                    __break(0x5519u);
LABEL_1182:
                    v629 = 0;
LABEL_1183:
                    v59 = 0;
LABEL_1184:
                    v679 = *v629;
                    if (*v629)
                    {
                      v680 = *(v629 + 4);
                      if (v680)
                      {
                        LODWORD(v679) = *(v629 + 12) + 16 * ((v679 - v680) >> 1);
                      }

                      else
                      {
                        LODWORD(v679) = 0;
                      }
                    }

                    v60 = v688;
                    *(v2 + 284) = v679;
                    *(v2 + 288) = vadd_s32(vdup_n_s32(v682), 0xFFFFFFEFFFFFFFEELL);
                    *(v2 + 296) = v682 - 1;
                    if (v59)
                    {
                      goto LABEL_99;
                    }

                    *(v2 + 252) = v4;
                  }
                }
              }

LABEL_914:
              if (v514 == 1 && *(v3 + 36) <= 8)
              {
                v556 = (*v512 - v691) >> 1;
                if (v556 > v684 || v556 == v684 && *(v3 + 528))
                {
                  v557 = v687;
                  if (!v687)
                  {
                    v557 = -4100;
                  }

                  v687 = v557;
                }
              }

              v488 = (v514 + 1);
              if (v488 >= v692)
              {
                goto LABEL_935;
              }
            }
          }

          v237 = 0;
          v238 = 0;
          v239 = v714 + 314;
          v240 = v714 + 326;
          v241 = v714 + 338;
          do
          {
            v242 = (v239 + 2 * v238);
            v243 = v242 + 1;
            if (v242 < v239 || v243 > v240 || v242 > v243)
            {
              goto LABEL_1181;
            }

            if (*v242)
            {
              v246 = &ddp_udc_int_afm_expstrtab + 12 * *(v714 + 398);
              v223 = &v246[2 * v238];
              v247 = (v223 + 2);
              v249 = v223 < v246 || v247 > (v246 + 12) || v223 > v247;
              v250 = (v240 + 2 * v238);
              v251 = v250 + 1;
              if (v249 || v250 < v240 || v251 > v241 || v250 > v251)
              {
                goto LABEL_1181;
              }

              *v250 = *v223;
              LOWORD(v223) = *(v717 + 44);
            }

            if (v223 >= 1)
            {
              v255 = 0;
              v256 = v241 + 10 * v238;
              v257 = v714;
              do
              {
                v258 = (v257 + 400);
                v259 = v257 + 402;
                if (v257 + 400 < (v714 + 400) || v259 > v714 + 410 || v258 > v259)
                {
                  goto LABEL_1181;
                }

                v262 = &ddp_udc_int_afm_expstrtab + 12 * *v258;
                v263 = &v262[2 * v238];
                v264 = (v263 + 2);
                v265 = v263 < v262 || v264 > (v262 + 12);
                v266 = v265 || v263 > v264;
                v267 = (v257 + v237 + 338);
                v268 = v257 + v237 + 340;
                v269 = !v266 && v267 >= v256;
                v270 = !v269 || v268 > v256 + 10;
                if (v270 || v267 > v268)
                {
                  goto LABEL_1181;
                }

                *v267 = *v263;
                ++v255;
                v257 += 2;
              }

              while (v255 < *(v717 + 44));
              LOWORD(v223) = *(v717 + 44);
            }

            ++v238;
            v237 += 10;
          }

          while (v238 < *(v717 + 496));
          LOWORD(v87) = *(v717 + 496);
        }

        if (*(v717 + 42) && v87 >= 1)
        {
          v272 = 0;
          v273 = 0;
          do
          {
            v274 = *(v717 + 528);
            v275 = 2 * (*(v717 + 530) << *(v717 + 528));
            if (v274 < 16)
            {
              v282 = v274 + 1;
            }

            else
            {
              v276 = *(v717 + 504);
              v277 = (v276 + 2);
              v278 = v276 + 4;
              if (v278 > *(v717 + 512) || v277 > v278 || v277 < *(v717 + 520))
              {
                goto LABEL_1181;
              }

              v281 = *v277;
              v282 = v274 - 15;
              *(v717 + 530) = v281;
              *(v717 + 504) = v277;
              v275 |= v281 << v282;
            }

            *(v717 + 528) = v282;
            v283 = v714 + v272 + 410;
            if (v283 < v714 + 410)
            {
              goto LABEL_1181;
            }

            v284 = v714 + v272 + 412;
            if (v284 > v714 + 422 || v283 > v284)
            {
              goto LABEL_1181;
            }

            *(v714 + 2 * v273++ + 410) = HIWORD(v275);
            v272 += 2;
          }

          while (v273 < *(v717 + 496));
          LOWORD(v87) = *(v717 + 496);
        }

        goto LABEL_427;
      }

      v158 = v714 + 314;
      v159 = v714 + 326;
      v160 = v714 + 318;
      v161 = 1;
      do
      {
        v162 = *(v717 + 528);
        v163 = 2 * (*(v717 + 530) << *(v717 + 528));
        if (v162 < 16)
        {
          v170 = v162 + 1;
        }

        else
        {
          v164 = *(v717 + 504);
          v165 = (v164 + 2);
          v166 = v164 + 4;
          if (v166 > *(v717 + 512) || v165 > v166 || v165 < *(v717 + 520))
          {
            goto LABEL_1181;
          }

          v169 = *v165;
          v170 = v162 - 15;
          *(v717 + 530) = v169;
          *(v717 + 504) = v165;
          v163 |= v169 << v170;
        }

        *(v717 + 528) = v170;
        v171 = (v160 - 14);
        if (v160 - 14 < v714 + 302 || v160 - 12 > v158 || v171 > v160 - 12)
        {
          goto LABEL_1181;
        }

        *v171 = HIWORD(v163);
        if (v163 >= 0x10000)
        {
          v174 = *(v717 + 528);
          v175 = 2 * (*(v717 + 530) << *(v717 + 528));
          if (v174 < 16)
          {
            v180 = v174 + 1;
          }

          else
          {
            v176 = *(v717 + 504);
            v177 = v176 + 4;
            if ((v176 + 4) > *(v717 + 512))
            {
              goto LABEL_1181;
            }

            v178 = (v176 + 2);
            if (v178 > v177 || v178 < *(v717 + 520))
            {
              goto LABEL_1181;
            }

            v179 = *v178;
            v180 = v174 - 15;
            *(v717 + 530) = v179;
            *(v717 + 504) = v178;
            v175 |= v179 << v180;
          }

          *(v717 + 528) = v180;
          v173 = (v160 - 2);
          if (v160 - 2 < v158 || v160 > v159 || v173 > v160)
          {
            goto LABEL_1181;
          }

          LODWORD(v172) = HIWORD(v175);
        }

        else
        {
          v172 = (v160 - 4);
          if (v160 - 4 < v158)
          {
            goto LABEL_1181;
          }

          v173 = (v160 - 2);
          if (v160 - 2 > v159 || v172 > v173 || v173 < v158 || v160 > v159 || v173 > v160)
          {
            goto LABEL_1181;
          }

          LOWORD(v172) = *v172;
        }

        *v173 = v172;
        ++v161;
        v157 = *(v717 + 496);
        v160 += 2;
      }

      while (v161 < v157);
    }

    LOWORD(v87) = v157;
    goto LABEL_274;
  }
}