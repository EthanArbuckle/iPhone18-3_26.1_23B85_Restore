uint64_t sub_100031BFC(uint64_t a1, int *a2, unint64_t *a3)
{
  v6 = sub_100012434(*(*(a1 + 376) + 36), 0xD3A61ACFuLL);
  if (!v6)
  {
    return 12;
  }

  v7 = v6;
  v27 = 0xAAAAAAAAAAAAAAAALL;
  v8 = *(a1 + 376);
  if ((*(v8 + 104) & 0x7FFFFFFF) != 0)
  {
    v9 = 0;
    v26 = 0;
    v10 = 0;
    v11 = -1;
    while (1)
    {
      v7[6] = 0;
      if (sub_10001124C(a1, v9, &v27) || sub_100050964(*(a1 + 384)))
      {
        v14 = *(a1 + 384) + 212;
        sub_100012178("%s:%d: %s couldn't read checkpoint descriptor block %d @ 0x%llx: %d\n");
      }

      else
      {
        v15 = v7[6];
        if (v15 == -2147483647)
        {
          goto LABEL_12;
        }

        if (v15)
        {
          if (v15 == 1073741836)
          {
LABEL_12:
            if (sub_100003490(v7, *(*(a1 + 376) + 36), v12, v13))
            {
              v19 = *(a1 + 384) + 212;
              v23 = v7[6];
              sub_100012178("%s:%d: %s invalid checksum for object type 0x%x @ checkpoint descriptor block %d @ 0x%llx\n");
            }

            else if (v7[7])
            {
              v25 = v7[6];
              v21 = *(a1 + 384) + 212;
              sub_100012178("%s:%d: %s found unexpected subtype 0x%x for object type 0x%x @ checkpoint descriptor block %d\n");
            }

            else
            {
              v16 = *(v7 + 2);
              if (v16)
              {
                if (v16 >= v10)
                {
                  v17 = v7[6];
                  if (v16 == v10 && v26 && v17 != -2147483647)
                  {
                    v26 = 1;
                  }

                  else
                  {
                    v26 = v17 == -2147483647;
                    v10 = *(v7 + 2);
                    v11 = v9;
                  }
                }
              }

              else
              {
                v22 = *(a1 + 384) + 212;
                sub_100012178("%s:%d: %s found unexpected xid %lld @ checkpoint descriptor block %d\n");
              }
            }

            goto LABEL_7;
          }

          v24 = v7[6];
          v20 = *(a1 + 384) + 212;
          sub_100012178("%s:%d: %s found unexpected object type 0x%x @ checkpoint descriptor block %d\n");
        }
      }

LABEL_7:
      ++v9;
      v8 = *(a1 + 376);
      if (v9 >= (*(v8 + 104) & 0x7FFFFFFFu))
      {
        goto LABEL_27;
      }
    }
  }

  v10 = 0;
  v11 = -1;
LABEL_27:
  sub_1000123F8(v7, *(v8 + 36));
  *a2 = v11;
  *a3 = v10;
  return 2 * (v10 == 0);
}

uint64_t sub_100031E78(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int8x16_t a5, int8x16_t a6)
{
  v10 = sub_100003490(a2, *(a1 + 36), a5, a6);
  v11 = *(a2 + 36);
  if (!v11)
  {
    goto LABEL_19;
  }

  if (v10)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  if (*(a2 + 24) == 1073741836)
  {
    v13 = v10 != 0;
  }

  else
  {
    v13 = v12;
  }

  if (*(a2 + 28))
  {
    ++v13;
  }

  if (*(a2 + 16) != *(a1 + 16))
  {
    ++v13;
  }

  v14 = *(a2 + 8) == a3 ? v13 : v13 + 1;
  v15 = *(a1 + 36);
  v16 = v14 | *(a2 + 32) & 1 ^ (a4 != 0);
  if (v11 <= (v15 - 40) / 0x28uLL && v16 == 0)
  {
    v19 = 0;
    v20 = *(a1 + 108);
    v21 = (a2 + 72);
    while (v11 != v19)
    {
      v23 = *(v21 - 8);
      v22 = *(v21 - 7);
      if ((v23 & 0xC0000000) == 0x80000000)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      if (*(v21 - 8) > 0x12u || ((1 << *(v21 - 8)) & 0x6002C) == 0)
      {
        v26 = v24;
      }

      else
      {
        v26 = (v23 & 0xC0000000) != 0x80000000;
      }

      if ((v22 & 0xC0000000) != 0)
      {
        ++v26;
      }

      if ((*(v21 - 7) > 0x24u || ((1 << v22) & 0x100009CA01) == 0) && *(v21 - 7) != 255)
      {
        ++v26;
      }

      if (!*(v21 - 1))
      {
        ++v26;
      }

      if ((v20 & 0x80000000) != 0)
      {
        v32 = v19;
      }

      else
      {
        v27 = *v21;
        v28 = *(a1 + 120);
        if (*v21 < v28)
        {
          ++v26;
        }

        if (v27 >= v28 + v20)
        {
          ++v26;
        }

        v29 = v27 - v28;
        v30 = *(a1 + 144);
        if (v30 <= v29)
        {
          v31 = 0;
        }

        else
        {
          v31 = *(a1 + 108);
        }

        v32 = v31 - v30 + v29;
        if (v32 >= *(a1 + 148))
        {
          ++v26;
        }
      }

      v33 = *(v21 - 6);
      if (v33)
      {
        v34 = v26;
      }

      else
      {
        v34 = v26 + 1;
      }

      if (!(v34 | (v33 % v15 != 0)))
      {
        ++v19;
        v21 += 5;
        if (v33 / v15 <= *(a1 + 148) - v32)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    return 0;
  }

  else
  {
LABEL_19:

    return sub_1000033FC(0);
  }
}

BOOL sub_10003208C(uint64_t a1, uint64_t a2, const char *a3)
{
  if (*(a1 + 72) == *(a2 + 72) && *(a1 + 80) == *(a2 + 80))
  {
    v7 = 0;
  }

  else
  {
    sub_100012178("%s:%d: %s<->superblock mismatch on uuid\n", "nx_superblock_agrees_with_main_superblock", 254, a3);
    v7 = 1;
  }

  if (*(a1 + 1280) != *(a2 + 1280) || *(a1 + 1288) != *(a2 + 1288))
  {
    sub_100012178("%s:%d: %s<->superblock mismatch on fusion uuid\n", "nx_superblock_agrees_with_main_superblock", 258, a3);
    ++v7;
  }

  v9 = *(a1 + 16);
  if (v9 > *(a2 + 16))
  {
    sub_100012178("%s:%d: the %s superblock has a lower XID %lld than the main superblock %lld\n", "nx_superblock_agrees_with_main_superblock", 263, a3, *(a2 + 16), v9);
  }

  v10 = *(a2 + 36);
  if (*(a1 + 36) != v10)
  {
    sub_100012178("%s:%d: %s<->superblock mismatch on block size: %d %d\n", "nx_superblock_agrees_with_main_superblock", 269, a3, *(a1 + 36), v10);
    ++v7;
  }

  v11 = *(a2 + 40);
  if (*(a1 + 40) != v11)
  {
    sub_100012178("%s:%d: %s<->superblock mismatch on block count: %lld %lld\n", "nx_superblock_agrees_with_main_superblock", 274, a3, *(a1 + 40), v11);
    ++v7;
  }

  v12 = *(a2 + 104);
  if (*(a1 + 104) != v12)
  {
    sub_100012178("%s:%d: %s<->superblock mismatch on checkpoint descriptor block count: %d %d\n", "nx_superblock_agrees_with_main_superblock", 279, a3, *(a1 + 104), v12);
    ++v7;
  }

  v13 = *(a2 + 108);
  if (*(a1 + 108) != v13)
  {
    sub_100012178("%s:%d: %s<->superblock mismatch on checkpoint data block count: %d %d\n", "nx_superblock_agrees_with_main_superblock", 284, a3, *(a1 + 108), v13);
    ++v7;
  }

  v14 = *(a2 + 112);
  if (*(a1 + 112) != v14)
  {
    sub_100012178("%s:%d: %s<->superblock mismatch on checkpoint descriptor base address: %lld %lld\n", "nx_superblock_agrees_with_main_superblock", 289, a3, *(a1 + 112), v14);
    ++v7;
  }

  v15 = *(a2 + 120);
  if (*(a1 + 120) != v15)
  {
    sub_100012178("%s:%d: %s<->superblock mismatch on checkpoint data base address: %lld %lld\n", "nx_superblock_agrees_with_main_superblock", 294, a3, *(a1 + 120), v15);
    v7 = 1;
  }

  return v7 == 0;
}

uint64_t sub_100032298(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int *a5)
{
  v48 = 0;
  v49 = 0;
  v47 = 0xAAAAAAAAAAAAAAAALL;
  *a5 = -1;
  v5 = *(a2 + 104) & 0x7FFFFFFF;
  if (!v5)
  {
    return 2;
  }

  v6 = a5;
  v11 = 0;
  v12 = 0;
  v46 = (a1 + 424);
  while (1)
  {
    if (v11 && (*(a2 + 1264) & 2) != 0)
    {
      return 35;
    }

    v13 = (v5 + a3) % v5;
    v50 = -1;
    if (sub_10001124C(a1, v13, &v50) || sub_100050964(*(a1 + 384)))
    {
      v23 = *(a1 + 384) + 212;
      sub_100012178("%s:%d: %s couldn't read checkpoint descriptor block %d @ %lld: %d\n");
      goto LABEL_8;
    }

    if (*(a4 + 24) != -2147483647)
    {
      goto LABEL_8;
    }

    if (sub_100003584(a4, *(a2 + 36), 1, v14, v15))
    {
      v24 = *(a1 + 384) + 212;
      sub_100012178("%s:%d: %s checkpoint superblock %d @ %lld: failed sanity check: %d\n");
      goto LABEL_8;
    }

    v45 = v6;
    v16 = *(a2 + 64);
    if ((v16 & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      break;
    }

    v6 = v45;
    if (sub_10003208C(a2, a4, "checkpoint"))
    {
      v17 = *(a4 + 140);
      v18 = *(a2 + 104) & 0x7FFFFFFF;
      if (v13 == (*(a4 + 136) + v17 - 1) % v18)
      {
        if (v17 <= v11 + v18)
        {
          if (sub_100010DCC(a1, 0, 1, 0, 1) || sub_100010DCC(a1, *(a4 + 112), *(a4 + 104) & 0x7FFFFFFF, *(a4 + 104) < 0, 0) || sub_100010DCC(a1, *(a4 + 120), *(a4 + 108) & 0x7FFFFFFF, *(a4 + 108) < 0, 0))
          {
            v41 = *(a4 + 136);
            v27 = *(a1 + 384) + 212;
            v35 = *(a4 + 16);
            sub_100012178("%s:%d: %s xid %lld at index %d failed to load checkpoint metadata ranges (overlap?): %d\n");
          }

          else if (sub_100032938(a1, a4))
          {
            v42 = *(a4 + 136);
            v28 = *(a1 + 384) + 212;
            v36 = *(a4 + 16);
            sub_100012178("%s:%d: %s xid %lld validation failed for checkpoint at index %d: %d\n");
          }

          else
          {
            if (!sub_100032A48(a1, a4, &v49, &v48))
            {
              memcpy(*(a1 + 376), a4, *(a2 + 36));
              *(*(a1 + 392) + 400) = *(*(a1 + 376) + 88);
              if (sub_10000E700(a1, 0, 2))
              {
                v38 = *(a4 + 16);
                v30 = *(a1 + 384) + 212;
                sub_100012178("%s:%d: %s xid %lld failed to fix up checkpoint data: %d\n");
LABEL_37:
                sub_1000358E8(*(a1 + 392), 0);
                *(a1 + 408) = 0;
                *(a1 + 736) = 0;
                *v46 = 0u;
                v46[1] = 0u;
                v46[2] = 0u;
                memcpy(*(a1 + 376), a2, *(a2 + 36));
                *(*(a1 + 392) + 400) = *(*(a1 + 376) + 88);
                goto LABEL_8;
              }

              if (*(a1 + 628) == 1)
              {
                v19 = *(a1 + 384) + 212;
                if (*(a1 + 631) == 1)
                {
                  sub_1000120D8("%s:%d: %s probe of external device... skipping recent sanity checks.\n", "nx_checkpoint_find_valid_checkpoint", 586, (*(a1 + 384) + 212));
                }

                else
                {
                  sub_1000120D8("%s:%d: %s sanity checking all recently-changed container state... please be patient.\n", "nx_checkpoint_find_valid_checkpoint", 595, (*(a1 + 384) + 212));
                  if (sub_1000093F8(a1))
                  {
                    v39 = *(a4 + 16);
                    v31 = *(a1 + 384) + 212;
                    sub_100012178("%s:%d: %s xid %lld sanity check of recently-changed structures failed: %d\n");
                    goto LABEL_37;
                  }
                }
              }

              if (sub_100042E24(a1, &v47))
              {
                v40 = *(a4 + 16);
                v32 = *(a1 + 384) + 212;
                sub_100012178("%s:%d: %s xid %lld failed to get spaceman: %d\n");
              }

              else
              {
                v20 = sub_100010DCC(a1, *(v47[47] + 168), *(v47[47] + 164) & 0x7FFFFFFF, *(v47[47] + 164) < 0, 0);
                if (v20)
                {
                  sub_100037058(v47);
                }

                else
                {
                  v20 = sub_100010DCC(a1, *(v47[47] + 176), *(v47[47] + 152), *(v47[47] + 152) < 0, 0);
                  sub_100037058(v47);
                  if (!v20)
                  {
                    v22 = *(*(a1 + 376) + 16);
                    if (v22 < v49)
                    {
                      sub_100012178("%s:%d: %s warning: best valid checkpoint xid %lld is less than max free queue oldest xid %lld seen in checkpoint %lld\n", "nx_checkpoint_find_valid_checkpoint", 633, (*(a1 + 384) + 212), v22, v49, v48);
                    }

                    result = 0;
                    *v45 = v13;
                    return result;
                  }
                }

                sub_100012178("%s:%d: %s xid %lld failed to load spaceman metadata ranges (overlap?): %d\n", "nx_checkpoint_find_valid_checkpoint", 626, (*(a1 + 384) + 212), *(a4 + 16), v20);
                v6 = v45;
              }

              goto LABEL_37;
            }

            v43 = *(a4 + 136);
            v29 = *(a1 + 384) + 212;
            v37 = *(a4 + 16);
            sub_100012178("%s:%d: %s xid %lld data for checkpoint at index %d couldn't be loaded: %d\n");
          }

          sub_1000358E8(*(a1 + 392), 0);
          *(a1 + 408) = 0;
          *(a1 + 736) = 0;
          *v46 = 0u;
          v46[1] = 0u;
          v46[2] = 0u;
        }

        else
        {
          v44 = *(a4 + 140);
          v33 = *(a4 + 16);
          v25 = *(a1 + 384) + 212;
          sub_100012178("%s:%d: %s xid %lld checkpoint superblock index %d doesn't fit in blocks remaining: %d > %d\n");
        }
      }

      else
      {
        v26 = *(a1 + 384) + 212;
        v34 = *(a4 + 16);
        sub_100012178("%s:%d: %s xid %lld checkpoint superblock index %d doesn't match index block was found at: %d\n");
      }
    }

LABEL_8:
    ++v12;
    v5 = *(a2 + 104) & 0x7FFFFFFF;
    --a3;
    --v11;
    if (v12 >= v5)
    {
      return 2 * (*v6 == -1);
    }
  }

  sub_100012178("%s:%d: %s unsupported nx_incompatible_features (0x%llx): unable to mount\n", "nx_checkpoint_find_valid_checkpoint", 497, (*(a1 + 384) + 212), v16 & 0xFFFFFFFFFFFFFFFDLL);
  if ((v16 & 0x100) != 0)
  {
    sub_100012178("%s:%d: %s Fusion is not supported anymore\n", "nx_checkpoint_find_valid_checkpoint", 499, (*(a1 + 384) + 212));
  }

  return 75;
}

uint64_t sub_100032938(uint64_t a1, unsigned int *a2)
{
  v4 = sub_100012434(a2[9], 0x9BA6ADA8uLL);
  if (!v4)
  {
    return 12;
  }

  v5 = v4;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  if (a2[35] == 1)
  {
LABEL_3:
    v6 = 0;
  }

  else
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_10001124C(a1, (v7 + a2[34]) % (a2[26] & 0x7FFFFFFF), &v12);
      if (v8)
      {
        break;
      }

      v8 = sub_100050964(*(a1 + 384));
      if (v8)
      {
        break;
      }

      v8 = sub_100031E78(a2, v5, v12, v7 == a2[35] - 2, v9, v10);
      if (v8)
      {
        break;
      }

      if (++v7 >= a2[35] - 1)
      {
        goto LABEL_3;
      }
    }

    v6 = v8;
  }

  sub_1000123F8(v5, a2[9]);
  return v6;
}

uint64_t sub_100032A48(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v49[0] = 0;
  v6 = *(*(a1 + 376) + 36);
  v47 = 0xAAAAAAAAAAAAAAAALL;
  v48 = 0xAAAAAAAAAAAAAAAALL;
  v46 = 0;
  v7 = sub_100012434(v6, 0xB5246107uLL);
  if (v7)
  {
    v8 = v7;
    v44 = 0xAAAAAAAAAAAAAAAALL;
    v45 = 0xAAAAAAAAAAAAAAAALL;
    if (*(a2 + 140) - 1 < 1)
    {
LABEL_28:
      sub_1000123F8(v8, v6);
      return 0;
    }

    else
    {
      v9 = 0;
      v10 = *(a2 + 144);
      v11 = *(a2 + 136);
      v38 = v7 + 10;
      v42 = v6 - 1;
      v37 = *(a2 + 140) - 1;
      while (1)
      {
        v45 = 0;
        v12 = sub_10001124C(a1, v11, &v45);
        if (v12 || (v12 = sub_100050964(*(a1 + 384)), v12) || (v12 = sub_100003490(v8, v6, v13, v14), v12))
        {
          v31 = v12;
          v34 = *(a1 + 384) + 212;
          sub_100012178("%s:%d: %s couldn't read checkpoint descriptor map block %d @ %lld: %d\n");
LABEL_39:
          sub_1000123F8(v8, v6);
LABEL_40:
          sub_1000358E8(*(a1 + 392), 0);
          *(a1 + 408) = 0;
          *(a1 + 736) = 0;
          *(a1 + 424) = 0u;
          *(a1 + 440) = 0u;
          *(a1 + 456) = 0u;
          return v31;
        }

        v39 = v9;
        v40 = v11;
        if (v8[9])
        {
          break;
        }

LABEL_27:
        v11 = (v40 + 1) % (*(a2 + 104) & 0x7FFFFFFFu);
        v9 = v39 + 1;
        if (v39 + 1 == v37)
        {
          goto LABEL_28;
        }
      }

      v15 = 0;
      v16 = v38;
      while (1)
      {
        v17 = v16[2];
        v45 = 0;
        v18 = sub_100011290(a1, v10, &v45, &v44);
        if (v18)
        {
          v31 = v18;
          sub_100012178("%s:%d: %s couldn't read checkpoint data block %d @ %lld: %d\n", "nx_checkpoint_load_data", 387, (*(a1 + 384) + 212), v10, v45, v18);
          goto LABEL_39;
        }

        if (v45 != *(v16 + 4))
        {
          break;
        }

        v19 = *(a2 + 144);
        v20 = v10;
        if (v10 < v19)
        {
          v20 = (*(a2 + 108) & 0x7FFFFFFF) + v10;
        }

        v21 = v20 - v19;
        v22 = *(a2 + 148);
        v23 = (v42 + v17) / v6;
        if (v21 >= v22 || v21 + v23 > v22)
        {
          sub_100012178("%s:%d: %s checkpoint mapping (%d,%d) extends beyond checkpoint data range: %d,%d\n", "nx_checkpoint_load_data", 403, (*(a1 + 384) + 212), v21, (v42 + v17) / v6, *(a2 + 144), v22);
          goto LABEL_33;
        }

        v49[0] = 0;
        v24 = sub_100038E6C(*v16, v49, &v47);
        HIDWORD(v47) = v16[1];
        LODWORD(v48) = v17;
        if (v24)
        {
          v31 = v24;
LABEL_38:
          v35 = *(a1 + 384) + 212;
          v36 = *v16;
          sub_100012178("%s:%d: %s failed to load checkpoint data of type 0x%x:0x%x @ %lld\n");
          goto LABEL_39;
        }

        v25 = sub_10003C214(*(a1 + 392), v49[0] | 0x80000000, *(v16 + 3), &v47, v45, v10, v44, *(a2 + 16), &v46);
        if (v25)
        {
          v31 = v25;
          v32 = v16[1];
          goto LABEL_38;
        }

        if (a3)
        {
          v26 = v46;
          if (!*a4)
          {
            v27 = sub_100036630(v46);
            v26 = v46;
            if (v27 == 5)
            {
              v28 = v46[7];
              v29 = v28[32];
              if (v29 <= v28[27])
              {
                v29 = v28[27];
              }

              *a3 = v29;
              v30 = v28[37];
              if (v30 <= v29)
              {
                v30 = v29;
              }

              *a3 = v30;
              *a4 = *(a2 + 16);
            }
          }
        }

        else
        {
          v26 = v46;
        }

        sub_100037058(v26);
        v10 = (v23 + v10) % (*(a2 + 108) & 0x7FFFFFFFu);
        ++v15;
        v16 += 10;
        if (v15 >= v8[9])
        {
          goto LABEL_27;
        }
      }

      sub_100012178("%s:%d: %s unexpected checkpoint map entry address: 0x%llx, expected 0x%llx\n", "nx_checkpoint_load_data", 392, (*(a1 + 384) + 212), *(v16 + 4), v45);
LABEL_33:
      v31 = sub_1000033FC(0);
      sub_1000123F8(v8, v6);
      if (v31)
      {
        goto LABEL_40;
      }
    }
  }

  else
  {
    sub_100012178("%s:%d: %s couldn't allocate memory for checkpoint map block\n", "nx_checkpoint_load_data", 358, (*(a1 + 384) + 212));
    return 12;
  }

  return v31;
}

uint64_t sub_100032E9C(int *a1, int a2, int a3, char a4, uint64_t a5, const char **a6, unsigned int **a7)
{
  v22 = 0;
  if (a3)
  {
    v22 = a1;
  }

  else
  {
    if (a4)
    {
      return 45;
    }

    v20 = sub_100051344(a1, a2, &v22);
    if (v20)
    {
      v18 = v20;
      sub_100012178("%s:%d: device initialization failed: %d\n", "nx_dev_init", 679, v20);
      goto LABEL_36;
    }

    a1 = v22;
  }

  v9 = sub_1000508DC(a1);
  v10 = sub_1000508E8(v22);
  if (v9 <= 0x1000)
  {
    v11 = 4096;
  }

  else
  {
    v11 = v9;
  }

  v12 = v10 * v9;
  while (!(v11 % v9))
  {
    if (v11 > v9)
    {
      sub_100050930(v22);
    }

    v13 = sub_100012434(v11, 0x92FC743FuLL);
    if (!v13)
    {
      sub_100012178("%s:%d: %s couldn't allocate memory for superblock of size %d\n", "nx_dev_init", 713, v22 + 212, v11);
      v18 = 12;
      goto LABEL_36;
    }

    v14 = sub_100050964(v22);
    if (v14)
    {
      v18 = v14;
      sub_100012178("%s:%d: %s couldn't read superblock of size %d\n");
LABEL_33:
      sub_1000123F8(v13, v11);
      goto LABEL_36;
    }

    v17 = sub_100003584(v13, v11, 0, v15, v16);
    if (v17)
    {
      goto LABEL_13;
    }

    v19 = v13[9];
    if (v19 % v9)
    {
      sub_100012178("%s:%d: %s superblock block size %d not an even multiple of device block size %d\n", "nx_dev_init", 729, v22 + 212, v13[9], v9);
      v17 = sub_1000033FC(0);
      if (v17)
      {
        goto LABEL_13;
      }

      v19 = v13[9];
    }

    if (*(v13 + 5) * v19 > v12)
    {
      sub_100012178("%s:%d: %s superblock container size %lld greater than device size %lld\n", "nx_dev_init", 735, v22 + 212, *(v13 + 5) * v19, v12);
      v17 = sub_1000033FC(0);
LABEL_13:
      v18 = v17;
      if (v17)
      {
        if (v17 != 79)
        {
          sub_100012178("%s:%d: %s superblock failed sanity checks: %d\n");
        }

        goto LABEL_33;
      }

      v19 = v13[9];
    }

    if (v19 == v11)
    {
      v18 = 0;
      *a7 = v13;
      *a6 = v22;
      return v18;
    }

    sub_1000123F8(v13, v11);
    sub_100050930(v22);
    v11 = v19;
    if (v19 < v9)
    {
      sub_100012178("%s:%d: %s container block size too small for device block size (%d < %d)\n");
      goto LABEL_35;
    }
  }

  sub_100012178("%s:%d: %s block size %d is not an even multiple of device block size %d\n");
LABEL_35:
  v18 = 22;
LABEL_36:
  if (v22)
  {
    sub_100050918(v22);
  }

  return v18;
}

uint64_t sub_1000331A0(int *a1, int *a2, uint64_t **a3)
{
  v3 = a3;
  v143 = 0;
  v141 = 0;
  v142 = 0;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v144[4] = v5;
  v144[2] = v5;
  v144[3] = v5;
  v144[0] = v5;
  v144[1] = v5;
  v139 = 0xAAAAAAAAAAAAAAAALL;
  v140 = 0;
  v138 = -1431655766;
  v137 = 0xAAAAAAAAAAAAAAAALL;
  v136 = -1431655766;
  v135 = 0;
  *a3 = 0;
  if (a2)
  {
    v6 = *(a2 + 4);
    v7 = *a2;
    v8 = a2[1];
    if (((v6 & 0x100) != 0 || (v6 & 0x2000) != 0) && (v8 & 0x80000000) == 0)
    {
      sub_100012178("%s:%d: conflicting mount options: probe %d temporary %d sbindex %d\n");
LABEL_9:
      LODWORD(v13) = 0;
      v14 = 0;
      v15 = 22;
      goto LABEL_10;
    }

    if ((v6 & 0xC00) == 0x800)
    {
      sub_100012178("%s:%d: conflicting mount options: is_system_graft but not is_graft\n");
      goto LABEL_9;
    }

    v129 = (v6 >> 13) & 1;
    v131 = (v6 >> 8) & 1;
    __src = (v6 >> 9) & 1;
    v11 = (*(a2 + 4) >> 1) & 1;
    v9 = (v6 >> 10) & 1;
    v124 = (*(a2 + 4) >> 5) & 1;
    sub_1000020A0();
    if (v7)
    {
      v18 = 0;
    }

    else
    {
      v18 = 2;
    }

    v3 = a3;
    v10 = (v6 >> 11) & 1;
    if ((v7 | ((v6 & 0x4000) >> 14)))
    {
      v19 = 16;
    }

    else
    {
      v19 = 32;
    }

    v12 = v19 | v18;
    v127 = (v6 >> 2) & 1;
    v125 = (v6 >> 12) & 1;
  }

  else
  {
    sub_1000020A0();
    LOBYTE(v7) = 0;
    LOBYTE(v6) = 0;
    v127 = 0;
    v124 = 0;
    v125 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v129 = 0;
    v131 = 0;
    __src = 0;
    v12 = 34;
    v8 = 0xFFFFFFFFLL;
  }

  v20 = sub_100032E9C(a1, v12, v11, v9, 0, &v143, &v140);
  if (v20)
  {
    v15 = v20;
    if (v20 != 79)
    {
      sub_100012178("%s:%d: device initialization failed: %d\n", "nx_mount", 1006, v20);
    }

    return v15;
  }

  v122 = v10;
  v118 = v6;
  v123 = v8;
  v117 = v3;
  v22 = v143;
  v121 = sub_10005093C(v143) == 0;
  v120 = sub_100050948(v22);
  v119 = sub_100050924(v22);
  v23 = v140;
  v24 = v140[9];
  if (__src)
  {
    v25 = 128;
  }

  else
  {
    v25 = 0x10000;
  }

  if (__src)
  {
    v26 = 128;
  }

  else
  {
    v26 = 0x8000;
  }

  if (__src)
  {
    v27 = 128;
  }

  else
  {
    v27 = 0x10000;
  }

  if (__src)
  {
    v28 = 128;
  }

  else
  {
    v28 = 0x8000;
  }

  sub_100012088("%s:%d: %s initializing cache w/hash_size %u and cache size %u\n", "nx_mount", 1195, v22 + 212, v28, v27);
  v29 = v26;
  v13 = v24;
  v30 = sub_1000352B4(v29, v25, v24, &v142);
  if (v30)
  {
    v31 = v30;
    sub_100012178("%s:%d: %s object cache initialization failed: %d\n", "nx_mount", 1199, v22 + 212, v30);
    v14 = 0;
    v15 = v31;
    goto LABEL_10;
  }

  __srca = v23;
  v32 = v142;
  if (v122)
  {
    *&v142[14].__opaque[48] = 1;
  }

  memset(&v144[3] + 8, 0, 24);
  *(&v144[2] + 8) = 0u;
  memset(v144 + 8, 0, 32);
  *&v144[0] = __PAIR64__(v24, v119);
  *(&v144[0] + 1) = *(v23 + 5);
  *(&v144[1] + 1) = v22;
  *&v144[2] = 1;
  DWORD2(v144[2]) = (v7 | v121) & 1;
  HIDWORD(v144[2]) = v120 != 0;
  *&v144[3] = __PAIR64__(v131, v127);
  *(&v144[3] + 1) = __PAIR64__(v129, v125);
  v33 = sub_10003839C(v32, 0x80000000, 1uLL, &xmmword_10006A7B0, v144, v24, 1, &v141);
  if (v33)
  {
    v15 = v33;
    sub_100012178("%s:%d: %s object cache bootstrap failed: %d\n");
LABEL_49:
    v14 = 0;
    goto LABEL_10;
  }

  v34 = v141;
  if (v124)
  {
    *(v141 + 640) = 1;
  }

  memcpy(v34[47], v23, v24);
  v35 = v142;
  v36 = v141[47];
  v37 = *(v36 + 88);
  *v142[6].__opaque = v141;
  v35[25].i64[0] = v37;
  __strlcpy_chk();
  sub_10003D4FC(v142, v9 & (v122 ^ 1));
  v142 = 0;
  v143 = 0;
  v38 = *(v36 + 104);
  if (v38 < 0 && (v42 = sub_1000109F8(v141, *(v36 + 112), v38 & 0x7FFFFFFF), v42) || (v39 = *(v36 + 108), v39 < 0) && (v42 = sub_1000109F8(v141, *(v36 + 120), v39 & 0x7FFFFFFF), v42))
  {
    v15 = v42;
    v99 = v141[48] + 212;
    sub_100012178("%s:%d: %s fragmented checkpoint area failed sanity check: %d\n");
    goto LABEL_49;
  }

  v14 = sub_100012434(v24, 0x286E03C4uLL);
  if (!v14)
  {
    sub_100012178("%s:%d: %s failed to allocate buffer for checkpoint superblock\n", "nx_mount", 1307, (v141[48] + 212));
    v15 = 12;
    goto LABEL_10;
  }

  if ((*(v36 + 1264) & 2) == 0)
  {
    goto LABEL_68;
  }

  v40 = v141;
  *(v141 + 626) = 1;
  if (*(v40 + 628) == 1)
  {
    v41 = v40[48] + 212;
    sub_100012178("%s:%d: %s storage is untrusted. Container cleanly-unmounted flag ignored\n");
LABEL_67:
    *(v36 + 1264) &= ~2uLL;
    *(v23 + 158) &= ~2uLL;
    goto LABEL_68;
  }

  if (!*(v36 + 140))
  {
    v44 = v40[48] + 212;
    sub_100012178("%s:%d: %s checkpoint descriptor length is bad.  Container cleanly-unmounted flag ignored\n");
    goto LABEL_67;
  }

  if (!*(v36 + 148))
  {
    v43 = v40[48] + 212;
    sub_100012178("%s:%d: %s checkpoint data length is bad.  Container cleanly-unmounted flag ignored\n");
    goto LABEL_67;
  }

LABEL_68:
  v45 = v13;
  v46 = 0;
  v128 = 0;
  v130 = 0;
  v132 = 0;
  while (1)
  {
    while (1)
    {
      v47 = v141;
      if ((*(v36 + 1264) & 2) != 0)
      {
        sub_1000120D8("%s:%d: %s container cleanly-unmounted flag set.\n", "nx_mount", 1341, (v141[48] + 212));
        v47 = v141;
        v48 = *(v141 + 633);
      }

      else
      {
        v48 = *(v141 + 633);
        if ((v46 & v48 & 1) == 0)
        {
          v49 = sub_100031BFC(v141, &v136, &v137);
          if (v49)
          {
            v15 = v49;
            v100 = v141[48] + 212;
            sub_100012178("%s:%d: %s failed to scan checkpoint descriptor area for largest xid: %d\n");
            goto LABEL_145;
          }

          goto LABEL_75;
        }
      }

      v50 = *(v36 + 136) + *(v36 + 140) - 1;
      v51 = *(v36 + 104) & 0x7FFFFFFF;
      v52 = v50 % v51;
      v136 = v50 % v51;
      v137 = *(v36 + 16);
      if (v46 & v48)
      {
        sub_1000120D8("%s:%d: %s Attempting to load from temporary checkpoint (start xid %lld).\n", "nx_mount", 1346, (v47[48] + 212), *(v36 + 1408));
        v57 = v52;
        v58 = __srca;
        if (!*(v36 + 1408))
        {
          sub_100012178("%s:%d: %s No temporary checkpoint start xid!  Aborting!\n", "nx_mount", 1348, (v141[48] + 212));
          v15 = 100;
          goto LABEL_145;
        }

        goto LABEL_85;
      }

LABEL_75:
      if ((v123 & 0x80000000) == 0)
      {
        break;
      }

      v53 = __srca;
      v54 = sub_100032298(v141, __srca, v136, v14, &v138);
      v15 = v54;
      if (v54 != 35)
      {
        if (v54)
        {
LABEL_121:
          sub_100012178("%s:%d: %s failed to find valid checkpoint: %d\n", "nx_mount", 1508, (v141[48] + 212), v54);
          goto LABEL_145;
        }

        v126 = v14[2];
        sub_100012088("%s:%d: %s checkpoint search: largest xid %lld, best xid %lld @ %d\n", "nx_mount", 1512, (v141[48] + 212), v137, v126, v138);
        v55 = *(__srca + 2);
        v56 = v141;
        if (v55 != v14[2])
        {
          sub_100012178("%s:%d: %s reloading after unclean unmount, checkpoint xid %lld, superblock xid %lld\n", "nx_mount", 1514, (v141[48] + 212), v14[2], v55);
          v56 = v141;
          if ((*(v141 + 633) & 1) == 0)
          {
            v128 = 1;
            *(v141 + 643) = 1;
          }
        }

        goto LABEL_115;
      }

      if ((*(v36 + 1264) & 2) == 0)
      {
        goto LABEL_121;
      }

      sub_100012178("%s:%d: %s Couldn't load checkpoint from cleanly-unmounted state.  Falling back to descriptor scan.\n", "nx_mount", 1503, (v141[48] + 212));
      *(v36 + 1264) &= ~2uLL;
      *(__srca + 158) &= ~2uLL;
    }

    v57 = v123;
    v58 = __srca;
LABEL_85:
    v59 = *(v36 + 104) & 0x7FFFFFFF;
    if (v57 >= v59)
    {
      sub_100012178("%s:%d: %s checkpoint descriptor index %d out of range [0...%d]\n", "nx_mount", 1366, (v141[48] + 212), v57, v59 - 1);
      v80 = v141;
      goto LABEL_144;
    }

    v123 = v57;
    v60 = sub_10001124C(v141, v57, &v135);
    v61 = v141;
    if (v60)
    {
      v15 = v60;
LABEL_137:
      v102 = v61[48] + 212;
      sub_100012178("%s:%d: %s couldn't read checkpoint descriptor block %d @ %lld: %d\n");
      goto LABEL_10;
    }

    v62 = sub_100050964(v141[48]);
    v15 = v62;
    if (*(v141 + 633) == 1)
    {
      if (!v62 && v13)
      {
        v65 = 0;
        while (!*(v14 + v65))
        {
          if (v13 == ++v65)
          {
            v15 = 0;
            goto LABEL_95;
          }
        }

        sub_100012178("%s:%d: %s Attempt to load temporary checkpoint found unexpected data (0x%02x @ %d), checkpoint descriptor block %d @ %lld\n", "nx_mount", 1382, (v141[48] + 212), *(v14 + v65), v65, v123, v135);
        v15 = 22;
      }

LABEL_95:
      memcpy(v14, v58, v13);
      sub_10003D4D4(v141, v14, v13, v66, v67);
    }

    if (v15)
    {
      v61 = v141;
      goto LABEL_137;
    }

    if (*(v14 + 7) || *(v14 + 6) != -2147483647)
    {
      sub_100012178("%s:%d: %s checkpoint descriptor block %d is not a valid superblock\n", "nx_mount", 1399, (v141[48] + 212), v123);
      v80 = v141;
LABEL_144:
      v15 = sub_1000033FC(v80);
      goto LABEL_145;
    }

    v68 = sub_100003584(v14, *(v36 + 36), 1, v63, v64);
    if (v68)
    {
      v15 = v68;
      v103 = v141[48] + 212;
      sub_100012178("%s:%d: %s checkpoint descriptor block %d superblock failed sanity checks: %d\n");
      goto LABEL_145;
    }

    v69 = *(v36 + 64);
    if ((v69 & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      sub_100012178("%s:%d: %s unsupported nx_incompatible_features (0x%llx): unable to mount\n", "nx_mount", 1409, (v141[48] + 212), v69 & 0xFFFFFFFFFFFFFFFDLL);
      if ((v69 & 0x100) != 0)
      {
        sub_100012178("%s:%d: %s Fusion is not supported anymore\n", "nx_mount", 1411, (v141[48] + 212));
      }

      v15 = 75;
      goto LABEL_10;
    }

    v53 = __srca;
    if (!sub_10003208C(__srca, v14, "checkpoint"))
    {
      sub_100012178("%s:%d: %s checkpoint descriptor block %d doesn't agree with main superblock\n", "nx_mount", 1418, (v141[48] + 212), v123);
      v15 = 22;
LABEL_145:
      LODWORD(v13) = v45;
      goto LABEL_10;
    }

    v70 = (*(v14 + 34) + *(v14 + 35) - 1) % (*(v36 + 104) & 0x7FFFFFFFu);
    if (v123 != v70)
    {
      sub_100012178("%s:%d: %s checkpoint superblock index %d doesn't match index block was found at: %d\n", "nx_mount", 1425, (v141[48] + 212), v70, v123);
      v80 = v141;
      goto LABEL_144;
    }

    v71 = sub_100010DCC(v141, 0, 1, 0, 1);
    if (v71 || (v71 = sub_100010DCC(v141, v14[14], v14[13] & 0x7FFFFFFF, *(v14 + 26) < 0, 0), v71) || (v71 = sub_100010DCC(v141, v14[15], *(v14 + 27) & 0x7FFFFFFF, *(v14 + 27) < 0, 0), v71))
    {
      v15 = v71;
      sub_100012178("%s:%d: %s xid %lld at index %d failed to load checkpoint metadata ranges (overlap?): %d\n", "nx_mount", 1442, (v141[48] + 212), v14[2], *(v14 + 34), v71);
      goto LABEL_10;
    }

    v72 = sub_100032938(v141, v14);
    if (v72)
    {
      v15 = v72;
      v113 = *(v14 + 34);
      v104 = v141[48] + 212;
      sub_100012178("%s:%d: %s validation failed for checkpoint at index %d: %d\n");
      goto LABEL_145;
    }

    v138 = v123;
    v126 = v14[2];
    sub_100012088("%s:%d: %s checkpoint: largest xid %lld, given checkpoint xid %lld @ %d\n", "nx_mount", 1453, (v141[48] + 212), v137, v126, v123);
    v73 = v141;
    if (*(__srca + 2) != v14[2])
    {
      sub_100012178("%s:%d: %s loading older checkpoint, checkpoint xid %lld, superblock xid %lld\n", "nx_mount", 1455, (v141[48] + 212), v14[2], *(v36 + 16));
      v73 = v141;
      v128 = 1;
      *(v141 + 643) = 1;
    }

    v74 = sub_100032A48(v73, v14, 0, 0);
    if (v74)
    {
      v15 = v74;
      v114 = *(v14 + 34);
      v105 = v141[48] + 212;
      sub_100012178("%s:%d: %s data for checkpoint at index %d couldn't be loaded: %d\n");
      goto LABEL_145;
    }

    memcpy(v141[47], v14, v13);
    v75 = v141;
    *(v141[49] + 400) = *(v141[47] + 88);
    v15 = sub_10000E700(v75, 0, 2);
    if (v15)
    {
      v106 = v141[48] + 212;
      sub_100012178("%s:%d: %s failed to fix up checkpoint data: %d\n");
      goto LABEL_145;
    }

    v15 = sub_100042E24(v141, &v139);
    if (v15)
    {
      v115 = v14[2];
      v107 = v141[48] + 212;
      sub_100012178("%s:%d: %s checkpoint xid %lld failed to get spaceman: %d\n");
      goto LABEL_145;
    }

    v76 = sub_100010DCC(v141, *(v139[47] + 168), *(v139[47] + 164) & 0x7FFFFFFF, *(v139[47] + 164) < 0, 0);
    if (v76)
    {
      v15 = v76;
      sub_100037058(v139);
LABEL_151:
      v116 = v14[2];
      v108 = v141[48] + 212;
      sub_100012178("%s:%d: %s checkpoint xid %lld failed to load spaceman metadata ranges (overlap?): %d\n");
LABEL_10:
      if (v140)
      {
        sub_1000123F8(v140, v140[9]);
      }

      if (v14)
      {
        sub_1000123F8(v14, v13);
      }

      v16 = v141;
      if (v141)
      {
        *(v141 + 627) = 1;
        sub_100034570(v16, 0);
      }

      if (v142)
      {
        sub_100035A88(v142);
      }

      if (v143)
      {
        sub_100050918(v143);
      }

      return v15;
    }

    v15 = sub_100010DCC(v141, *(v139[47] + 176), *(v139[47] + 152), *(v139[47] + 152) < 0, 0);
    sub_100037058(v139);
    if (v15)
    {
      goto LABEL_151;
    }

    v56 = v141;
LABEL_115:
    v77 = *(v56[47] + 56);
    if (v77)
    {
      sub_100012088("%s:%d: %s unsupported nx_readonly_compatible_features (0x%llx): mount r/o\n", "nx_mount", 1525, (v56[48] + 212), v77);
      v56 = v141;
      *(v141 + 627) = 1;
    }

    sub_10003D3FC(v56[49]);
    v78 = v141;
    v79 = *(v141 + 633);
    if ((v46 & v79 & 1) == 0)
    {
      v130 = *(v14 + 36);
      v132 = *(v14 + 34);
      sub_100012088("%s:%d: %s stable checkpoint indices: desc %d data %d\n", "nx_mount", 1539, (v141[48] + 212), v132, v130);
      v78 = v141;
      v79 = *(v141 + 633);
    }

    if (v46 & 1 | ((v79 & 1) == 0))
    {
      break;
    }

    sub_1000358E8(v78[49], 0);
    v78[51] = 0;
    v78[92] = 0;
    *(v78 + 53) = 0u;
    *(v78 + 55) = 0u;
    *(v78 + 57) = 0u;
    memcpy(v141[47], v53, v13);
    v46 = 1;
  }

  if (*(v78 + 628) == 1 && ((*(v78 + 631) | v79) & 1) == 0 && (v78[79] & 1) == 0 && !*(v53 + 176))
  {
    *(v78 + 165) = (*(v14 + 34) + *(v14 + 35) - 1) % (v14[13] & 0x7FFFFFFFu);
  }

  *(v36 + 136) = 0;
  *(v36 + 144) = 0;
  *(v36 + 1264) &= ~2uLL;
  sub_100011098(v78);
  v81 = v141;
  if (*(v141 + 629) == 1)
  {
    v15 = sub_100042E24(v141, &v139);
    if (v15)
    {
LABEL_133:
      v101 = v141[48] + 212;
      sub_100012178("%s:%d: %s failed to set up spaceman for demo mode: %d\n");
      goto LABEL_145;
    }

    j__pthread_mutex_lock(v141[49]);
    v82 = v141;
    v141[52] = 0;
    v15 = sub_100038B2C(v139, 0, v82 + 52, 0);
    sub_1000357DC(v141[49]);
    if (v15)
    {
      sub_100037058(v139);
      goto LABEL_133;
    }

    sub_10003CAB4(v141[52], 0);
    sub_100037058(v139);
    v81 = v141;
  }

  v83 = v126 + 1;
  v15 = sub_10004CE18(v81, v126 + 1, v81 + 50);
  v84 = v141;
  if (v15)
  {
    v109 = v141[48] + 212;
    sub_100012178("%s:%d: %s tx manager initialization failed: %d\n");
    goto LABEL_145;
  }

  v85 = v141[50];
  *(v85 + 104) = v132;
  *(v85 + 108) = v130;
  if ((v118 & 1) == 0)
  {
    sub_1000120D8("%s:%d: %s sanity checking all container state... please be patient.\n", "nx_mount", 1602, (v84[48] + 212));
    v15 = sub_10000590C(v141, 0);
    v84 = v141;
    if (v15)
    {
      v110 = v141[48] + 212;
      sub_100012178("%s:%d: %s failed nx_check sanity: %d\n");
      goto LABEL_145;
    }
  }

  if ((*(v84 + 627) & 1) == 0)
  {
    if (*(v84 + 633) & 1) != 0 || *(v84 + 632) == 1 && (sub_1000120D8("%s:%d: %s Enabling temporary checkpoints starting with xid %lld.\n", "nx_mount", 1614, (v84[48] + 212), v83), v84 = v141, *(v141[47] + 1408) = v83, (*(v84 + 633)))
    {
      if ((v84[79] & 1) == 0)
      {
        sub_1000120D8("%s:%d: %s Making temporary checkpoint %lld permanent (start %lld).\n", "nx_mount", 1622, (v84[48] + 212), *(v84[47] + 16), *(v84[47] + 1408));
        v14[176] = 0;
        sub_10003D4D4(v141, v14, v13, v86, v87);
        if (!v135)
        {
          v15 = 22;
          goto LABEL_184;
        }

        v88 = sub_100050A5C(v141[48]);
        if (v88 || (v88 = sub_10004DADC(v141, 16), v88))
        {
          v15 = v88;
LABEL_184:
          v112 = v141[48] + 212;
          sub_100012178("%s:%d: %s failed to write superblock to block %lld: %d\n");
          goto LABEL_145;
        }

        v84 = v141;
        *(v141[47] + 1408) = 0;
        v128 = 1;
      }
    }

    v89 = sub_1000300D8(v84);
    if (v89)
    {
      sub_100012178("%s:%d: %s failed to set up sm allocation metadata: %d\n", "nx_mount", 1648, (v141[48] + 212), v89);
    }

    if (v128)
    {
      sub_10003D4A0(v141, v90, v91);
      v92 = v141[47];
      v93 = sub_100050A5C(v141[48]);
      if (v93)
      {
        v15 = v93;
        v111 = v141[48] + 212;
        sub_100012178("%s:%d: %s failed to write superblock to block 0: %d\n");
        goto LABEL_145;
      }
    }

    v94 = v141;
    v95 = v141[47];
    v96 = *(v95 + 1384);
    v97 = sub_100001BC4();
    if (v96 < v97)
    {
      *(v95 + 1384) = v97;
    }

    sub_1000344F0(v94);
    sub_100010110(v141);
  }

  sub_1000123F8(v14, v45);
  v98 = v141;
  if (*(v141[47] + 1248))
  {
    if ((*(v141 + 627) & 1) == 0)
    {
      v15 = sub_1000112DC(v141);
      v98 = v141;
      if (v15)
      {
        sub_100012178("%s:%d: %s nx_unblock_physical_range failed with error: %d\n", "nx_mount", 1706, (v141[48] + 212), v15);
        v14 = 0;
        goto LABEL_145;
      }
    }
  }

  *v117 = v98;
  if (v140)
  {
    sub_1000123F8(v140, v140[9]);
  }

  return 0;
}

void sub_1000344F0(uint64_t *a1)
{
  v2 = sub_10004612C(a1, 0, 1u);
  if (v2)
  {
    sub_100012178("%s:%d: %s *** trim'ing free blocks returned: %d\n", "nx_mount_initiate_free_space_trims", 856, (a1[48] + 212), v2);
  }

  sub_10002A3BC(a1);
}

void sub_100034570(uint64_t a1, _DWORD *a2)
{
  sub_1000105D8(a1);
  v4 = *(a1 + 400);
  if (v4)
  {
    if ((*(a1 + 627) & 1) == 0)
    {
      sub_10004DB80(a1);
      v4 = *(a1 + 400);
    }

    sub_10004D190(a1, v4, *(*(a1 + 376) + 36));
  }

  if (a2)
  {
    *a2 = *(a1 + 660);
  }

  v5 = *(a1 + 408);
  if (v5)
  {
    sub_100037058(v5);
    *(a1 + 408) = 0;
  }

  for (i = 0; i != 32; i += 8)
  {
    v7 = *(a1 + 432 + i);
    if (v7)
    {
      sub_100037058(v7);
    }
  }

  v8 = *(a1 + 464);
  if (v8)
  {
    sub_10002822C(v8, 0, 0);
    sub_100037058(*(a1 + 464));
  }

  v9 = *(a1 + 1088);
  if (v9)
  {
    sub_10002822C(v9, 0, 0);
    sub_100037058(*(a1 + 1088));
    *(a1 + 1088) = 0;
  }

  v10 = *(a1 + 384);
  if (v10)
  {
    sub_100050918(v10);
    *(a1 + 384) = 0;
  }

  v11 = *(a1 + 392);
  if (v11)
  {

    sub_100035A88(v11);
  }
}

unint64_t sub_1000346C0(uint32x4_t *a1, unint64_t a2, unint64_t a3, int8x16_t a4, int8x16_t a5)
{
  v5 = a3;
  v6 = HIDWORD(a3);
  if ((a2 & 3) == 0)
  {
    for (i = a2 >> 2; i; v6 = v34 + HIDWORD(v34))
    {
      if (i >= 0x16A00)
      {
        v8 = 92672;
      }

      else
      {
        v8 = i;
      }

      i -= v8;
      v9 = veorq_s8(a4, a4);
      v10 = veorq_s8(a5, a5);
      v9.i64[0] = v5;
      v10.i64[0] = v6;
      if (v8 >= 16)
      {
        v11 = *a1;
        v12 = a1[1];
        v13 = a1[2];
        v14 = a1[3];
        a1 += 4;
        v15 = vshlq_n_s64(v9, 4uLL);
        v16 = vmull_u32(*v12.i8, 0xB0000000CLL);
        v17 = vmull_u32(*v13.i8, 0x700000008);
        v18 = vmlal_u32(vmlal_u32(v10, *v11.i8, 0xF00000010), *v14.i8, 0x300000004);
        v19 = vpadalq_u32(vpadalq_u32(vpadalq_u32(v9, v11), v12), v13);
        v20 = v8 < 32;
        for (v8 -= 32; !v20; v8 -= 16)
        {
          v21 = vmlal_high_u32(v16, v11, *qword_100034680);
          v22 = *a1;
          a1 += 4;
          v11 = v22;
          v23 = vmlal_high_u32(v17, v12, *&qword_100034680[2]);
          v12 = a1[-3];
          v24 = vpadalq_u32(v19, v14);
          v25 = vmlal_high_u32(vaddq_s64(v18, v15), v13, *&qword_100034680[4]);
          v13 = a1[-2];
          v26 = vmlal_high_u32(v21, v14, *&qword_100034680[6]);
          v14 = a1[-1];
          v15 = vshlq_n_s64(v24, 4uLL);
          v16 = vmlal_u32(v26, *v12.i8, 0xB0000000CLL);
          v17 = vmlal_u32(v23, *v13.i8, 0x700000008);
          v18 = vmlal_u32(vmlal_u32(v25, *v22.i8, 0xF00000010), *v14.i8, 0x300000004);
          v19 = vpadalq_u32(vpadalq_u32(vpadalq_u32(v24, v22), v12), v13);
          v20 = v8 < 16;
        }

        v9 = vpadalq_u32(v19, v14);
        v10 = vaddq_s64(vaddq_s64(vmlal_high_u32(vaddq_s64(v18, v15), v13, *&qword_100034680[4]), vmlal_high_u32(v17, v12, *&qword_100034680[2])), vmlal_high_u32(vmlal_high_u32(v16, v11, *qword_100034680), v14, *&qword_100034680[6]));
      }

      if ((v8 & 8) != 0)
      {
        v27 = *a1;
        a1 += 2;
        v28 = a1[-1];
        v29 = vshlq_n_s64(v9, 3uLL);
        v9 = vpadalq_u32(vpadalq_u32(v9, v27), v28);
        v10 = vaddq_s64(vmlal_high_u32(vmlal_high_u32(vmlal_u32(vmlal_u32(v10, *v27.i8, 0x700000008), *v28.i8, 0x300000004), v27, *&qword_100034680[4]), v28, *&qword_100034680[6]), v29);
      }

      if ((v8 & 4) != 0)
      {
        v30 = *a1++;
        v31 = vshlq_n_s64(v9, 2uLL);
        v9 = vpadalq_u32(v9, v30);
        v10 = vaddq_s64(vmlal_high_u32(vmlal_u32(v10, *v30.i8, 0x300000004), v30, *&qword_100034680[6]), v31);
      }

      v32 = v8 & 3;
      a4 = vpaddq_s64(v9, v9);
      a5 = vpaddq_s64(v10, v10);
      v33 = a4.i64[0];
      v34 = a5.i64[0];
      if (v32)
      {
        do
        {
          v35 = a1->i32[0];
          a1 = (a1 + 4);
          v33 += v35;
          v34 += v33;
          v20 = v32-- <= 1;
        }

        while (!v20);
      }

      v5 = v33 + HIDWORD(v33);
    }
  }

  v36 = v5 + HIDWORD(v5);
  v37 = v6 + HIDWORD(v6);
  if (v36 == 0xFFFFFFFF)
  {
    v36 = 0;
  }

  if (v37 == 0xFFFFFFFF)
  {
    v37 = 0;
  }

  return v36 + (v37 << 32);
}

uint64_t sub_100034868(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v65 = 0;
  v66 = 0;
  v63 = 0;
  v64 = 0;
  *a4 = 0;
  if (a2)
  {
    v8 = *(a2 + 16);
    v9 = *(a2 + 20);
    v10 = *(a2 + 26);
    v11 = *(a2 + 24);
    v12 = v11 & 3;
    if ((v11 & 3) == 0)
    {
      *(a2 + 24) = v11 | 1;
      v12 = 1;
    }

    v13 = v12 == 2;
  }

  else
  {
    v10 = 0;
    v8 = 0;
    v13 = 0;
    v9 = 1073741826;
  }

  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v68[16] = v14;
  v69 = v14;
  v67[9] = v14;
  *v68 = v14;
  v67[7] = v14;
  v67[8] = v14;
  v67[5] = v14;
  v67[6] = v14;
  v67[3] = v14;
  v67[4] = v14;
  v67[1] = v14;
  v67[2] = v14;
  v67[0] = v14;
  v70 = v14;
  v71 = v14;
  v72[0] = v14;
  v72[1] = v14;
  v72[2] = v14;
  memset(v62, 170, sizeof(v62));
  sub_1000020A0();
  v15 = sub_100051344(a1, 2, &v65);
  if (v15)
  {
    v16 = v15;
    v17 = strerror(v15);
    sub_100012178("%s:%d: device initialization failed: %d - %s\n", "nx_format", 76, v16, v17);
    v18 = v16;
    goto LABEL_25;
  }

  if (!sub_10005093C(v65))
  {
    sub_100012178("%s:%d: error: device is not writable!\n", "nx_format", 79);
    v18 = 30;
    goto LABEL_25;
  }

  v19 = sub_1000508DC(v65);
  v20 = sub_1000508E8(v65);
  v21 = v20;
  if (!v8)
  {
    v22 = v20 * v19;
    if (v22 >> 50)
    {
      v23 = 0x4000;
    }

    else
    {
      v23 = 4096;
    }

    if (v22 >> 59)
    {
      v24 = 0x10000;
    }

    else
    {
      v24 = v23;
    }

    if (v19 <= v24)
    {
      v8 = v24;
    }

    else
    {
      v8 = v19;
    }
  }

  if (v8 <= 4095)
  {
    sub_100012128("%s:%d: warning: fs block size too small (%d < %d)\n");
LABEL_24:
    v18 = 22;
    goto LABEL_25;
  }

  if (v8 < v19)
  {
    sub_100012128("%s:%d: warning: fs block size too small for device block size (%d < %d)\n");
    goto LABEL_24;
  }

  if (v8 % v19)
  {
    sub_100012178("%s:%d: error: block size %d is not an even multiple of device block size %d\n", "nx_format", 111, v8, v19);
    goto LABEL_24;
  }

  if (v8 > v19)
  {
    sub_100050930(v65);
  }

  v27 = v21 / (v8 / v19);
  v28 = sub_10000E084(v8, v27, v10, v67);
  if (v28)
  {
    v29 = v28;
    strerror(v28);
    sub_100012178("%s:%d: metadata space calculation failed: %d - %s\n");
LABEL_41:
    v18 = v29;
    goto LABEL_25;
  }

  v30 = sub_1000352B4(0xC800u, 0xC350u, v8, &v66);
  if (v30)
  {
    v29 = v30;
    strerror(v30);
    sub_100012178("%s:%d: object cache initialization failed: %d - %s\n");
    goto LABEL_41;
  }

  v62[2] = 1;
  memset(v72 + 8, 0, 40);
  *&v70 = __PAIR64__(v8, v19);
  *(&v71 + 1) = v65;
  *&v72[0] = 1;
  *(&v70 + 1) = v27;
  *&v71 = v13;
  if (a2 && !uuid_is_null(a2))
  {
    uuid_copy(&v72[2], a2);
  }

  else
  {
    uuid_generate(&v72[2]);
  }

  v31 = sub_10003839C(v66, 0x80000000, 1uLL, &xmmword_10006A7B0, &v70, v8, v62[2], &v64);
  if (v31)
  {
    v32 = v31;
    v33 = strerror(v31);
    sub_100012178("%s:%d: object cache bootstrap failed: %d - %s\n", "nx_format", 153, v32, v33);
    v18 = v32;
    goto LABEL_25;
  }

  v34 = v64;
  *(v64 + 624) = 1;
  v35 = v34[47];
  v36 = v69;
  v35[22].i32[1] = *&v68[24];
  v35[13] = vmovn_s64(*&v68[8]);
  v35[164] = ((*(&v69 + 1) << 32) | (v36 << 16) | 1);
  *(v34 + 625) = a3 != 0;
  v37 = v66;
  v38 = v35[11];
  *v66[6].__opaque = v34;
  *&v37[6].__opaque[8] = v38;
  v39 = sub_1000415FC(v34, v67, a3, v62[2], &v35[19]);
  if (v39)
  {
    v18 = v39;
    strerror(v39);
    sub_100012178("%s:%d: spaceman initialization failed: %d - %s\n");
    goto LABEL_25;
  }

  v40 = sub_100042E24(v64, &v63);
  if (!v40)
  {
    v41 = sub_1000300D8(v64);
    if (v41)
    {
      sub_100012178("%s:%d: failed to set up sm allocation metadata: %d\n", "nx_format", 185, v41);
    }

    v42 = sub_10004CE18(v64, v62[2], v64 + 50);
    if (v42)
    {
      v18 = v42;
      strerror(v42);
      sub_100012178("%s:%d: tx manager initialization failed: %d - %s\n");
LABEL_59:
      sub_100037058(v63);
      goto LABEL_25;
    }

    v62[2] = 0;
    v43 = sub_10004E8AC(v64, &v62[2]);
    if (v43)
    {
      v18 = v43;
      strerror(v43);
      sub_100012178("%s:%d: tx_enter for initialization failed: %d - %s\n");
      goto LABEL_59;
    }

    v44 = v64;
    v45 = v64[47];
    if ((*(v45 + 104) & 0x80000000) != 0)
    {
      v48 = sub_100010780(v64, (v45 + 112), v62[2]);
      if (v48)
      {
        goto LABEL_78;
      }

      v44 = v64;
      v45 = v64[47];
    }

    if ((*(v45 + 108) & 0x80000000) != 0)
    {
      v48 = sub_100010780(v44, (v45 + 120), v62[2]);
      if (v48)
      {
        goto LABEL_78;
      }

      v44 = v64;
    }

    v46 = v63[47];
    if ((*(v46 + 164) & 0x80000000) != 0)
    {
      v48 = sub_100010780(v44, (v46 + 168), v62[2]);
      if (v48)
      {
        goto LABEL_78;
      }

      v44 = v64;
      v46 = v63[47];
    }

    if ((*(v46 + 152) & 0x8000000000000000) == 0)
    {
LABEL_64:
      v47 = sub_100010DCC(v44, 0, 1, 0, 1);
      if (v47 || (v47 = sub_100010DCC(v64, *(v64[47] + 112), *(v64[47] + 104) & 0x7FFFFFFF, *(v64[47] + 104) < 0, 0), v47) || (v47 = sub_100010DCC(v64, *(v64[47] + 120), *(v64[47] + 108) & 0x7FFFFFFF, *(v64[47] + 108) < 0, 0), v47) || (v47 = sub_100010DCC(v64, *(v63[47] + 168), *(v63[47] + 164) & 0x7FFFFFFF, *(v63[47] + 164) < 0, 0), v47))
      {
        v18 = v47;
        sub_100037058(v63);
      }

      else
      {
        v18 = sub_100010DCC(v64, *(v63[47] + 176), *(v63[47] + 152), *(v63[47] + 152) < 0, 0);
        sub_100037058(v63);
        if (!v18)
        {
          sub_100011098(v64);
          v50 = sub_10004D220(v64, *(v64[47] + 104) & 0x7FFFFFFF);
          if (v50)
          {
            v18 = v50;
            strerror(v50);
            sub_100012178("%s:%d: tx checkpoint descriptor area initialization failed: %d - %s\n");
          }

          else
          {
            v51 = sub_100038AF0(v64[49], 0x80000000, 0, &xmmword_10006A7C0, 0, 0, v62[2], &v62[1]);
            if (v51)
            {
              v18 = v51;
              strerror(v51);
              sub_100012178("%s:%d: reaper initialization failed: %d - %s\n");
            }

            else
            {
              v52 = sub_100038018(v62[1]);
              *(v64[47] + 168) = v52;
              sub_100037058(v62[1]);
              v53 = sub_10003F5A4(v64, 0x40000000u, 1, v9, v62[2], v62);
              if (!v53)
              {
                v54 = sub_100038018(v62[0]);
                *(v64[47] + 160) = v54;
                sub_100037058(v62[0]);
                v55 = sub_10004E8BC(v64, v62[2], 0);
                if (v55)
                {
                  v18 = v55;
                  strerror(v55);
                  sub_100012178("%s:%d: tx_leave for omap initialization failed: %d - %s\n");
                  goto LABEL_25;
                }

                v56 = sub_10004DD70(v64, 0);
                if (v56)
                {
                  v18 = v56;
                  strerror(v56);
                  sub_100012178("%s:%d: failed to finish first transaction: %d - %s\n");
                  goto LABEL_25;
                }

                v59 = v64;
                if ((*(v64 + 625) & 1) == 0)
                {
                  sub_10003D4A0(v64, v57, v58);
                  v60 = v64[47];
                  v61 = sub_100050A5C(v64[48]);
                  if (v61)
                  {
                    v18 = v61;
                    strerror(v61);
                    sub_100012178("%s:%d: failed to write superblock to block 0: %d - %s\n");
                    goto LABEL_25;
                  }

                  v59 = v64;
                }

                v18 = 0;
                *(v59 + 624) = 0;
                *a4 = v59;
                return v18;
              }

              v18 = v53;
              strerror(v53);
              sub_100012178("%s:%d: omap initialization failed: %d - %s\n");
            }
          }

LABEL_70:
          sub_10004E8BC(v64, v62[2], 0);
          goto LABEL_25;
        }
      }

      sub_100012178("%s:%d: failed load container metadata ranges (overlap?): %d\n");
      goto LABEL_70;
    }

    v48 = sub_100010780(v44, (v46 + 176), v62[2]);
    if (!v48)
    {
      v44 = v64;
      goto LABEL_64;
    }

LABEL_78:
    v18 = v48;
    v49 = strerror(v48);
    sub_100012178("%s:%d: creation of fragmented metadata physical extent list tree(s) failed: %d - %s\n", "nx_format", 221, v18, v49);
    sub_100037058(v63);
    goto LABEL_25;
  }

  v18 = v40;
  sub_100012178("%s:%d: failed to get spaceman: %d\n");
LABEL_25:
  if (v64)
  {
    v25 = v64[50];
    if (v25)
    {
      sub_10004D190(v64, v25, v8);
    }
  }

  if (v66)
  {
    sub_100035A88(v66);
  }

  if (v65)
  {
    sub_100050918(v65);
  }

  return v18;
}

atomic_ullong *sub_10003518C(void *a1, unint64_t a2, int a3, uint64_t a4)
{
  sub_100012330(a1, a2, *(a4 + 952));
  sub_1000351F8((a4 + 976), a3, a2);
  v7 = (qword_100070590 + 136);

  return sub_1000351F8(v7, a3, a2);
}

atomic_ullong *sub_1000351F8(atomic_ullong *result, int a2, unint64_t a3)
{
  v4 = a2 & 0xC8000000;
  if (a2 < 0 != v3)
  {
    if (v4 == 0x80000000)
    {
      atomic_fetch_add_explicit(result + 29, -a3, memory_order_relaxed);
      atomic_fetch_add_explicit(result + 31, a3, memory_order_relaxed);
      v5 = result + 33;
    }

    else
    {
      if (v4 != -2013265920)
      {
        goto LABEL_12;
      }

      atomic_fetch_add_explicit(result + 35, -a3, memory_order_relaxed);
      atomic_fetch_add_explicit(result + 37, a3, memory_order_relaxed);
      v5 = result + 39;
    }
  }

  else
  {
    if (v4 != 0x40000000 && v4 != 0)
    {
LABEL_12:
      panic("unexpected storagetype: 0x%x\n", a2 & 0xC8000000);
    }

    atomic_fetch_add_explicit(result + 23, -a3, memory_order_relaxed);
    atomic_fetch_add_explicit(result + 25, a3, memory_order_relaxed);
    v5 = result + 27;
  }

  atomic_fetch_add_explicit(v5, 1uLL, memory_order_relaxed);
  return result;
}

uint64_t sub_1000352B4(unsigned int a1, unsigned int a2, unsigned int a3, void *a4)
{
  v8 = sub_1000355B4();
  if (!v8)
  {
    v9 = sub_1000122F4(1uLL, 0x570uLL, 0x10A004059D813F0uLL);
    if (v9)
    {
      v10 = v9;
      bzero(v9, 0x570uLL);
      v11 = sub_100011924(v10);
      if (v11)
      {
        v8 = v11;
LABEL_13:
        sub_1000123F8(v10, 1392);
        return v8;
      }

      v12 = sub_100011930((v10 + 128));
      if (v12)
      {
        v8 = v12;
LABEL_12:
        j__pthread_mutex_destroy(v10);
        goto LABEL_13;
      }

      v13 = sub_100011924((v10 + 328));
      if (v13)
      {
        v8 = v13;
LABEL_11:
        j__pthread_rwlock_destroy((v10 + 128));
        goto LABEL_12;
      }

      v14 = sub_10001193C((v10 + 1328));
      if (v14)
      {
        v8 = v14;
        j__pthread_mutex_destroy((v10 + 328));
        goto LABEL_11;
      }

      if (!a1)
      {
        a1 = 4096;
      }

      v15 = sub_100012434(8 * a1, 0x2004093837F09uLL);
      *(v10 + 89) = v15;
      if (v15)
      {
        bzero(v15, 8 * a1);
        *(v10 + 175) = a1;
        *(v10 + 176) = a1 - 1;
        if (!a2)
        {
          a2 = 4096;
        }

        *(v10 + 169) = 128;
        *(v10 + 170) = a2;
        v16 = a2 / 0x64u;
        if (v16 <= 0x10)
        {
          v16 = 16;
        }

        if (a2 > 0xC863)
        {
          v16 = 512;
        }

        *(v10 + 174) = v16;
        *(v10 + 171) = 0;
        *(v10 + 86) = 0;
        *(v10 + 168) = a3;
        v21.tv_sec = 0xAAAAAAAAAAAAAAAALL;
        v21.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
        clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v21);
        tv_sec = v21.tv_sec;
        *(v10 + 1288) = 0u;
        *(v10 + 1304) = 0u;
        *(v10 + 1256) = 0u;
        *(v10 + 1272) = 0u;
        *(v10 + 1224) = 0u;
        *(v10 + 1240) = 0u;
        *(v10 + 1192) = 0u;
        *(v10 + 1208) = 0u;
        *(v10 + 1160) = 0u;
        *(v10 + 1176) = 0u;
        *(v10 + 1128) = 0u;
        *(v10 + 1144) = 0u;
        *(v10 + 1096) = 0u;
        *(v10 + 1112) = 0u;
        *(v10 + 1064) = 0u;
        *(v10 + 1080) = 0u;
        *(v10 + 1032) = 0u;
        *(v10 + 1048) = 0u;
        *(v10 + 1000) = 0u;
        *(v10 + 1016) = 0u;
        *(v10 + 123) = a3 << 7;
        v18 = a2 * a3;
        *(v10 + 124) = v18;
        *(v10 + 122) = v18;
        *(v10 + 163) = tv_sec;
        v19 = sub_1000122F4(0x100uLL, 8uLL, 0x2004093837F09uLL);
        *(v10 + 112) = v19;
        if (v19)
        {
          v8 = 0;
          *(v10 + 94) = v10 + 744;
          *(v10 + 96) = v10 + 760;
          *(v10 + 98) = v10 + 776;
          *(v10 + 100) = v10 + 792;
          *(v10 + 102) = v10 + 808;
          *(v10 + 104) = v10 + 824;
          *(v10 + 106) = v10 + 840;
          *(v10 + 173) = v10 + 1376;
          *(v10 + 110) = v10 + 872;
          *(v10 + 108) = v10 + 856;
          *(v10 + 45) = 0u;
          *(v10 + 93) = 0;
          *(v10 + 95) = 0;
          *(v10 + 97) = 0;
          *(v10 + 99) = 0;
          *(v10 + 101) = 0;
          *(v10 + 103) = 0;
          *(v10 + 105) = 0;
          *(v10 + 172) = 0;
          *(v10 + 109) = 0;
          *(v10 + 107) = 0;
          *(v10 + 92) = 0;
          *(v10 + 25) = vdupq_n_s64(0x400uLL);
          *a4 = v10;
          return v8;
        }

        sub_1000123F8(*(v10 + 89), 8 * a1);
      }

      sub_100011944((v10 + 1328));
      j__pthread_mutex_destroy((v10 + 328));
      j__pthread_rwlock_destroy((v10 + 128));
      j__pthread_mutex_destroy(v10);
      sub_1000123F8(v10, 1392);
    }

    return 12;
  }

  return v8;
}

uint64_t sub_1000355B4()
{
  if (!atomic_load_explicit(&qword_100070590, memory_order_acquire))
  {
    v2 = sub_1000122F4(1uLL, 0x1E0uLL, 0x10200403418AD1FuLL);
    if (!v2)
    {
      return 12;
    }

    v3 = v2;
    *(v2 + 28) = 0u;
    *(v2 + 29) = 0u;
    *(v2 + 26) = 0u;
    *(v2 + 27) = 0u;
    *(v2 + 24) = 0u;
    *(v2 + 25) = 0u;
    *(v2 + 22) = 0u;
    *(v2 + 23) = 0u;
    *(v2 + 20) = 0u;
    *(v2 + 21) = 0u;
    *(v2 + 18) = 0u;
    *(v2 + 19) = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 17) = 0u;
    *(v2 + 14) = 0u;
    *(v2 + 15) = 0u;
    *(v2 + 12) = 0u;
    *(v2 + 13) = 0u;
    *(v2 + 10) = 0u;
    *(v2 + 11) = 0u;
    *(v2 + 8) = 0u;
    *(v2 + 9) = 0u;
    *(v2 + 6) = 0u;
    *(v2 + 7) = 0u;
    *(v2 + 4) = 0u;
    *(v2 + 5) = 0u;
    *(v2 + 2) = 0u;
    *(v2 + 3) = 0u;
    *v2 = 0u;
    *(v2 + 1) = 0u;
    v4 = sub_100011924((v2 + 8));
    if (v4)
    {
      v0 = v4;
      sub_100012178("%s:%d: object memory manager failed to create lock, error: %d\n", "obj_mem_mgr_init", 7393, v4);
      sub_1000123F8(v3, 480);
      return v0;
    }

    *(v3 + 72) = 0;
    __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    v5 = 0;
    *(v3 + 136) = 0u;
    *(v3 + 440) = 0u;
    *(v3 + 456) = 0u;
    *(v3 + 408) = 0u;
    *(v3 + 424) = 0u;
    *(v3 + 376) = 0u;
    *(v3 + 392) = 0u;
    *(v3 + 344) = 0u;
    *(v3 + 360) = 0u;
    *(v3 + 312) = 0u;
    *(v3 + 328) = 0u;
    *(v3 + 280) = 0u;
    *(v3 + 296) = 0u;
    *(v3 + 264) = 0u;
    tv_sec = __tp.tv_sec;
    *(v3 + 248) = 0u;
    *(v3 + 232) = 0u;
    *(v3 + 216) = 0u;
    *(v3 + 200) = 0u;
    *(v3 + 184) = 0u;
    *(v3 + 168) = 0u;
    *(v3 + 152) = 0u;
    *(v3 + 464) = tv_sec;
    *(v3 + 472) = 0;
    atomic_compare_exchange_strong_explicit(&qword_100070590, &v5, v3, memory_order_release, memory_order_relaxed);
    if (v5)
    {
      atomic_load_explicit(&qword_100070590, memory_order_acquire);
      j__pthread_mutex_destroy((v3 + 8));
      sub_1000123F8(v3, 480);
    }

    else if ((*qword_100070590 & 4) != 0)
    {
      sub_100012088("%s:%d: object memory manager initialized with feature flags: 0x%x, apfs_mem_max: %lld\n", "obj_mem_mgr_init", 7414, *qword_100070590, *(qword_100070590 + 96));
    }
  }

  return 0;
}

uint64_t sub_100035774(uint64_t result, int a2, int a3, int a4)
{
  if ((a2 & 0x8000000) != 0)
  {
    *(result + 692) += a4;
  }

  else
  {
    *(result + 688) += a4;
    v4 = *(result + 392);
    if (v4)
    {
      v5 = (a3 + *(*(v4 + 376) + 36) - 1) / *(*(v4 + 376) + 36);
      v6 = *(result + 928);
      if (a4 < 0)
      {
        v7 = v6 - v5;
      }

      else
      {
        v7 = v6 + v5;
      }
    }

    else
    {
      v7 = *(result + 928) + a4;
    }

    *(result + 928) = v7;
  }

  return result;
}

void sub_1000357DC(uint64_t a1)
{
  v1 = *(a1 + 728);
  if (v1)
  {
    *(a1 + 728) = 0;
    *(a1 + 736) = 0;
    pthread_mutex_unlock(a1);
    do
    {
      v2 = *(v1 + 72);
      sub_10003DA44(v1, 0);
      v1 = v2;
    }

    while (v2);
  }

  else
  {

    pthread_mutex_unlock(a1);
  }
}

uint64_t sub_100035840(pthread_mutex_t *a1, int a2)
{
  if (a2 != 2 && a2 != 1)
  {
    panic("obj_cache_lock_by_state, invalid oc_lock_state %d\n", a2);
  }

  return pthread_mutex_lock(a1);
}

void sub_10003588C(pthread_mutex_t *a1, int a2)
{
  if (a2 == 2)
  {

    sub_1000357DC(a1);
  }

  else
  {
    if (a2 != 1)
    {
      panic("obj_cache_unlock_by_state, invalid oc_lock_state %d\n", a2);
    }

    pthread_mutex_unlock(a1);
  }
}

void sub_1000358E8(pthread_mutex_t *a1, int a2)
{
  if (!a2)
  {
    pthread_mutex_lock(a1);
    atomic_fetch_add_explicit(&a1[14].__opaque[36], 1u, memory_order_relaxed);
  }

  while (atomic_fetch_add_explicit(&a1[14].__opaque[40], 0, memory_order_relaxed))
  {
    v16 = 1;
    v4 = *&a1[21].__opaque[24];
    if (v4)
    {
      if ((*(*(v4 + 136) + 20) & 0x80) == 0)
      {
        sub_10003C7D8(v4, &v16);
        if ((v16 & 1) == 0)
        {
          pthread_mutex_lock(a1);
        }
      }
    }
  }

  if (*a1[11].__opaque)
  {
    v5 = *&a1[10].__opaque[52];
    if (v5)
    {
      for (i = 0; i < v5; ++i)
      {
        v7 = *(*a1[11].__opaque + 8 * i);
        if (v7)
        {
          do
          {
            v8 = *(v7 + 72);
            if (v7 != *a1[6].__opaque)
            {
              v9 = *(v7 + 16);
              if ((v9 & 0x80000000) != 0)
              {
                sub_100035774(a1, v9, *(v7 + 48), -1);
              }

              else
              {
                --*&a1[10].__opaque[36];
              }

              sub_10003B9B4(v7, 0);
            }

            v7 = v8;
          }

          while (v8);
          v5 = *&a1[10].__opaque[52];
        }
      }
    }
  }

  v10 = *&a1[11].__opaque[8];
  if (v10)
  {
    do
    {
      v11 = *(v10 + 72);
      --*&a1[10].__opaque[36];
      sub_10003B9B4(v10, 0);
      v10 = v11;
    }

    while (v11);
  }

  v12 = *&a1[11].__opaque[32];
  if (v12)
  {
    do
    {
      v13 = *(v12 + 88);
      if (v12 != *a1[6].__opaque)
      {
        sub_10003B9B4(v12, 0);
      }

      v12 = v13;
    }

    while (v13);
  }

  v14 = *&a1[11].__opaque[48];
  if (v14)
  {
    do
    {
      v15 = *(v14 + 88);
      sub_10003B9B4(v14, 0);
      v14 = v15;
    }

    while (v15);
  }

  if (!a2)
  {
    sub_1000357DC(a1);
    atomic_fetch_add_explicit(&a1[14].__opaque[36], 0xFFFFFFFF, memory_order_relaxed);
  }
}

void sub_100035A88(uint64_t a1)
{
  pthread_mutex_lock((qword_100070590 + 8));
  v2 = *(a1 + 1320);
  if (v2)
  {
    *(a1 + 1320) = v2 & 0xFFFFFFFFFFFFFFFELL;
    v3 = *(a1 + 960);
    v4 = *(a1 + 968);
    if (v3)
    {
      *(v3 + 968) = v4;
    }

    *v4 = v3;
    if ((v2 & 2) == 0)
    {
      v5 = qword_100070590;
      --*(qword_100070590 + 104);
      *(v5 + 136) = vsubq_s64(*(v5 + 136), *(a1 + 976));
      *(v5 + 152) -= *(a1 + 992);
      goto LABEL_8;
    }

    *(a1 + 1320) = v2 & 0xFFFFFFFFFFFFFFFCLL;
  }

  v5 = qword_100070590;
LABEL_8:
  pthread_mutex_unlock((v5 + 8));
  pthread_mutex_lock(a1);
  atomic_fetch_add_explicit((a1 + 940), 1u, memory_order_relaxed);
  sub_1000358E8(a1, 1);
  v6 = *(a1 + 392);
  if (v6)
  {
    sub_100035774(a1, *(v6 + 16), *(v6 + 48), -1);
    sub_10003B9B4(*(a1 + 392), 0);
  }

  v7 = *(a1 + 712);
  if (v7)
  {
    sub_1000123F8(v7, 8 * *(a1 + 700));
  }

  sub_1000357DC(a1);
  v8 = *(a1 + 896);
  if (v8)
  {
    sub_1000123F8(v8, 2048);
  }

  sub_100011944((a1 + 1328));
  j__pthread_mutex_destroy((a1 + 328));
  j__pthread_rwlock_destroy((a1 + 128));
  j__pthread_mutex_destroy(a1);

  sub_1000123F8(a1, 1392);
}

uint64_t sub_100035BD4(uint64_t a1, unsigned int a2, char a3, unint64_t a4)
{
  v103 = -1431655766;
  if ((a2 & 0x80000000) != 0)
  {
    return 22;
  }

  pthread_mutex_lock(a1);
  if (*(a1 + 936))
  {
    if (a2)
    {
      sub_1000357DC(a1);
      return 0;
    }

    do
    {
      *(a1 + 936) = 2;
      sub_100011A68((a1 + 1328), a1, 2, 0);
    }

    while (*(a1 + 936));
  }

  *(a1 + 936) = 1;
  v8 = pthread_rwlock_wrlock((a1 + 128));
  if (v8)
  {
    panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_executables/nx/obj.c", 1153, v8);
  }

  if (a2)
  {
    if (a3)
    {
      v11 = 0;
      v9 = a2;
      goto LABEL_91;
    }

    if (*(a1 + 908) >= a2)
    {
      v9 = a2;
    }

    else
    {
      v9 = *(a1 + 908);
    }

    v98 = a2 - v9;
  }

  else
  {
    v9 = 0;
    if (a3)
    {
      v11 = 0;
      goto LABEL_91;
    }

    v98 = 0;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (a2)
  {
    v13 = -1;
  }

  else
  {
    v13 = 0;
  }

  v100 = v13;
  while (1)
  {
    v14 = *(a1 + 824);
    if (!v14)
    {
      goto LABEL_68;
    }

    while (!a2 || v9 >= 1)
    {
      if (*(v14 + 36) >> 30)
      {
        panic("non-virtual object on virtual object dirty list: oid %lld flags 0x%llx 0x%x\n", *(v14 + 112), *(v14 + 16), *(v14 + 32));
      }

      v15 = *(v14 + 32);
      if ((v15 & 1) == 0)
      {
        panic("virtual object on dirty list not dirty: oid %lld flags 0x%llx 0x%x\n", *(v14 + 112), *(v14 + 16), v15);
      }

      if (v12)
      {
        if (v12 > 1)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v16 = *(v14 + 8);
        if (!v16)
        {
          goto LABEL_51;
        }

        if (*(v16 + 504))
        {
          v16 = *(v16 + 504);
        }

        if (*(*(v16 + 376) + 264))
        {
          goto LABEL_51;
        }
      }

      if (*(v14 + 36) == 13)
      {
LABEL_51:
        v14 = *(v14 + 88);
        *(a1 + 888) = v14;
        if (!v14)
        {
          goto LABEL_68;
        }
      }

      else
      {
LABEL_36:
        if (a2)
        {
          add_explicit = atomic_fetch_add_explicit((v14 + 24), 0, memory_order_relaxed);
          if ((add_explicit & 0xFFFFFF) != ((add_explicit >> 24) & 0xFFFFF))
          {
            goto LABEL_51;
          }
        }

        v19 = (v14 + 104);
        v18 = *(v14 + 104);
        v20 = *(v14 + 16);
        if ((v18 != 3735928559) == ((v20 & 0x20000000000) == 0))
        {
          panic("dirty object flush state inconsistent: oid %lld flags 0x%llx 0x%x fl %p\n", *(v14 + 112), v20, *(v14 + 32), v18);
        }

        if ((v20 & 0x20000000000) != 0 && *v19 != 3735928559)
        {
          goto LABEL_53;
        }

        if (v14 != v10)
        {
          v103 = 16000;
        }

        *(a1 + 888) = v14;
        v10 = v14;
        if (sub_100036638(v14, &v103, 1, 2))
        {
          if (v103 > 0x773593FF)
          {
            v21 = *(v14 + 8);
            if (!v21)
            {
              v21 = *(*v14 + 392);
            }

            if (sub_100011490(*(*v21 + 392)))
            {
              if (*(v21 + 36) == 13)
              {
                v22 = (v21 + 4040);
              }

              else
              {
                v22 = (*(v21 + 384) + 212);
              }

              sub_100012088("%s:%d: %s oid %lld flags 0x%llx 0x%x refs 0x%llx taking too long to get reference!\n", "obj_cache_flush_prepare", 1243, v22, *(v14 + 112), *(v14 + 16), *(v14 + 32), *(v14 + 24));
            }
          }

          v10 = v14;
        }

        else
        {
LABEL_53:
          v23 = *(v14 + 88);
          *(a1 + 888) = v23;
          if (!*(a1 + 908))
          {
            panic("virtual object dirty count underflow\n");
          }

          v24 = *(v14 + 96);
          v25 = (v23 + 96);
          if (!v23)
          {
            v25 = (a1 + 832);
          }

          *v25 = v24;
          *v24 = v23;
          --*(a1 + 908);
          *(v14 + 88) = 3735928559;
          atomic_fetch_and_explicit((v14 + 32), 0xFFFFFFFE, memory_order_relaxed);
          *(v14 + 16) |= 0x20000000000uLL;
          if ((a3 & 2) != 0)
          {
            *(v14 + 64) = *(v14 + 56);
          }

          if (*v19 == 3735928559)
          {
            *(v14 + 104) = 0;
            **(a1 + 864) = v14;
            *(a1 + 864) = v19;
            ++*(a1 + 932);
          }

          v9 += v100;
        }

        v14 = *(a1 + 888);
        if (!v14)
        {
          goto LABEL_68;
        }
      }
    }

    v12 = 3;
LABEL_68:
    v26 = pthread_rwlock_unlock((a1 + 128));
    if (v26)
    {
      panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_executables/nx/obj.c", 1273, v26);
    }

    sub_1000357DC(a1);
    v29 = (v11 + 13);
    if (!v11)
    {
      v29 = (a1 + 856);
    }

    v30 = *v29;
    if (v30)
    {
      break;
    }

LABEL_79:
    pthread_mutex_lock(a1);
    v33 = pthread_rwlock_wrlock((a1 + 128));
    if (v33)
    {
      panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_executables/nx/obj.c", 1300, v33);
    }

    v38 = v12++ < 2;
    if (!v38)
    {
      v9 = v98;
LABEL_91:
      v37 = *(a1 + 840);
      if (a2)
      {
        v38 = v9 < 1;
      }

      else
      {
        v38 = 0;
      }

      v39 = v38;
      if (v37 && (v39 & 1) == 0)
      {
        v101 = a4;
        if (a2)
        {
          v40 = -1;
        }

        else
        {
          v40 = 0;
        }

        v99 = v40;
        do
        {
          if (*(v37 + 36) >> 30 != 1)
          {
            panic("non-physical object on physical object dirty list: oid %lld flags 0x%llx 0x%x\n", *(v37 + 112), *(v37 + 16), *(v37 + 32));
          }

          v41 = *(v37 + 32);
          if ((v41 & 1) == 0)
          {
            panic("physical object on dirty list not dirty: oid %lld flags 0x%llx 0x%x\n", *(v37 + 112), *(v37 + 16), v41);
          }

          v43 = (v37 + 104);
          v42 = *(v37 + 104);
          v44 = *(v37 + 16);
          if ((v42 != 3735928559) == ((v44 & 0x20000000000) == 0))
          {
            panic("dirty object flush state inconsistent: oid %lld flags 0x%llx 0x%x fl %p\n", *(v37 + 112), v44, *(v37 + 32), v42);
          }

          if ((v44 & 0x20000000000) == 0 || *v43 == 3735928559)
          {
            v103 = 16000;
            if (sub_100036638(v37, &v103, 1, 2))
            {
              do
              {
                if (v103 > 0x773593FF)
                {
                  v45 = *(v37 + 8);
                  if (!v45)
                  {
                    v45 = *(*v37 + 392);
                  }

                  if (sub_100011490(*(*v45 + 392)))
                  {
                    if (*(v45 + 36) == 13)
                    {
                      v46 = (v45 + 4040);
                    }

                    else
                    {
                      v46 = (*(v45 + 384) + 212);
                    }

                    sub_100012088("%s:%d: %s oid %lld flags 0x%llx 0x%x refs 0x%llx taking too long to get reference!\n", "obj_cache_flush_prepare", 1332, v46, *(v37 + 112), *(v37 + 16), *(v37 + 32), *(v37 + 24));
                  }
                }
              }

              while ((sub_100036638(v37, &v103, 1, 2) & 1) != 0);
            }
          }

          if (!*(a1 + 912))
          {
            panic("physical object dirty count underflow\n");
          }

          v47 = *(v37 + 88);
          v48 = *(v37 + 96);
          v49 = (v47 + 96);
          a4 = v101;
          if (!v47)
          {
            v49 = (a1 + 848);
          }

          *v49 = v48;
          *v48 = v47;
          --*(a1 + 912);
          *(v37 + 88) = 3735928559;
          atomic_fetch_and_explicit((v37 + 32), 0xFFFFFFFE, memory_order_relaxed);
          *(v37 + 16) |= 0x20000000000uLL;
          if ((a3 & 2) != 0)
          {
            *(v37 + 64) = *(v37 + 56);
          }

          if (*v43 == 3735928559)
          {
            *(v37 + 104) = 0;
            **(a1 + 864) = v37;
            *(a1 + 864) = v43;
            ++*(a1 + 932);
          }

          v9 += v99;
          v37 = *(a1 + 840);
          if (a2)
          {
            v50 = v9 < 1;
          }

          else
          {
            v50 = 0;
          }

          v51 = v50;
        }

        while (v37 && !v51);
      }

      v52 = pthread_rwlock_unlock((a1 + 128));
      if (v52)
      {
        panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_executables/nx/obj.c", 1361, v52);
      }

      sub_1000357DC(a1);
      v55 = v11 + 13;
      if (!v11)
      {
        v55 = (a1 + 856);
      }

      v56 = *v55;
      if (*v55)
      {
        while (1)
        {
          v57 = sub_100036804(v56, 0, a4, v53, v54);
          if (v57)
          {
            break;
          }

          if ((a3 & 2) != 0)
          {
            v58 = *(v56 + 152);
            if (!v58)
            {
              v58 = *(v56 + 128);
            }

            *(v56 + 136) = v58;
          }

          v56 = *(v56 + 104);
          if (!v56)
          {
            goto LABEL_148;
          }
        }

        v7 = v57;
        if (!*(*(*(a1 + 392) + 400) + 76))
        {
          v87 = *(v56 + 8);
          if (!v87)
          {
            v87 = *(*v56 + 392);
          }

          if (sub_100011490(*(*v87 + 392)))
          {
            if (*(v87 + 36) != 13)
            {
              v89 = *(v87 + 384) + 212;
            }

            v97 = *(v56 + 40);
            v93 = *(v56 + 32);
            v95 = *(v56 + 36);
            v90 = *(v56 + 112);
            v91 = *(v56 + 16);
            sub_100012178("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error preparing for write: %d\n", "obj_cache_flush_prepare");
          }
        }

        return v7;
      }

LABEL_148:
      v59 = *(a1 + 932);
      if (v59 >= 2)
      {
        v60 = 0;
        v61 = *(a1 + 856);
        for (i = 1; i < v59; i *= 2)
        {
          if (v61)
          {
            v63 = 0;
            v64 = 1;
            v65 = v61;
            while (1)
            {
              v66 = i;
              v67 = v65;
              if (i >= 2)
              {
                break;
              }

              v68 = v65[13];
              v67 = v65;
              v70 = v68;
              if (!v68)
              {
                goto LABEL_200;
              }

LABEL_160:
              v72 = v65[19];
              if (!v72)
              {
                v72 = v65[16];
              }

              v73 = v68[19];
              if (!v73)
              {
                v73 = v68[16];
              }

              v74 = v70[13];
              v75 = v72 <= v73;
              if (v72 > v73)
              {
                v76 = v68;
              }

              else
              {
                v76 = v70[13];
              }

              if (v72 > v73)
              {
                v77 = v67;
              }

              else
              {
                v77 = v70;
              }

              if (v75)
              {
                v78 = v68;
              }

              else
              {
                v78 = v65;
              }

              if (v75)
              {
                v60 = v67;
              }

              else
              {
                v60 = v70;
              }

              if (!v75)
              {
                v65 = v68;
              }

              if (v65 == v60 || v78 == v76)
              {
                v80 = v65;
              }

              else
              {
                v79 = v65;
                do
                {
                  v80 = v79[13];
                  v81 = v80[19];
                  if (!v81)
                  {
                    v81 = v80[16];
                  }

                  v82 = v78[19];
                  if (!v82)
                  {
                    v82 = v78[16];
                  }

                  if (v81 > v82)
                  {
                    v83 = v78[13];
                    v78[13] = v80;
                    v79[13] = v78;
                    v80 = v78;
                    v78 = v83;
                  }

                  v84 = v80 == v60 || v78 == v76;
                  v79 = v80;
                }

                while (!v84);
              }

              if (v80 == v60)
              {
                v80[13] = v78;
                v60 = v77;
              }

              v85 = v63 + 13;
              if (v64)
              {
                v85 = (a1 + 856);
                v61 = v65;
              }

              *v85 = v65;
              v63 = v60;
              v65 = v74;
              v64 = 0;
              if (!v74)
              {
                v63 = v60;
                goto LABEL_200;
              }
            }

            while (1)
            {
              v67 = v67[13];
              if (!v67)
              {
                break;
              }

              if (--v66 < 2)
              {
                v68 = v67[13];
                v69 = i;
                v70 = v68;
                if (!v68)
                {
                  break;
                }

                while (1)
                {
                  v71 = v70[13];
                  if (!v71)
                  {
                    goto LABEL_160;
                  }

                  --v69;
                  v70 = v70[13];
                  if (v69 < 2)
                  {
                    v70 = v71;
                    goto LABEL_160;
                  }
                }
              }
            }

LABEL_200:
            if (v63)
            {
              v63[13] = v65;
            }
          }
        }

        if (v60)
        {
          v7 = 0;
          *(a1 + 864) = v60 + 13;
          return v7;
        }
      }

      return 0;
    }
  }

  while (1)
  {
    v11 = v30;
    v31 = sub_100036804(v30, 0, a4, v27, v28);
    if (v31)
    {
      break;
    }

    if ((a3 & 2) != 0)
    {
      v32 = v11[19];
      if (!v32)
      {
        v32 = v11[16];
      }

      v11[17] = v32;
    }

    v30 = v11[13];
    if (!v30)
    {
      goto LABEL_79;
    }
  }

  v7 = v31;
  if (!*(*(*(a1 + 392) + 400) + 76))
  {
    v34 = v11[1];
    if (!v34)
    {
      v34 = *(*v11 + 392);
    }

    if (sub_100011490(*(*v34 + 392)))
    {
      if (*(v34 + 36) != 13)
      {
        v88 = *(v34 + 384) + 212;
      }

      v35 = v11[14];
      v36 = v11[2];
      v96 = *(v11 + 10);
      v92 = *(v11 + 8);
      v94 = *(v11 + 9);
      sub_100012178("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error preparing for write: %d\n", "obj_cache_flush_prepare");
    }
  }

  return v7;
}

uint64_t sub_100036638(void *a1, int *a2, int a3, int a4)
{
  v8 = *a1;
  add_explicit = atomic_fetch_add_explicit(a1 + 3, 0x1000001uLL, memory_order_relaxed);
  if ((add_explicit & 0xFFFFFF) == 0xFFFFFF)
  {
    panic("Reference count overflowed for object %p!\n", a1);
  }

  v10 = (add_explicit >> 24) & 0xFFFFF;
  if (v10 == 0xFFFFF)
  {
    panic("Get count overflowed for object %p!\n", a1);
  }

  v11 = (-(add_explicit >> 44) & 0xFFFFF) != 0 && (add_explicit & 0xFFFFFF) == v10;
  if (v11 && (-(atomic_fetch_add_explicit(a1 + 3, 0, memory_order_relaxed) >> 44) & 0xFFFFF) != 0)
  {
    atomic_fetch_or_explicit(a1 + 8, 2u, memory_order_relaxed);
    atomic_fetch_add_explicit(a1 + 3, 0xFFFFFFFFFEFFFFFFLL, memory_order_relaxed);
    if (a3)
    {
      v12 = pthread_rwlock_unlock((v8 + 128));
      if (v12)
      {
        panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_executables/nx/obj.c", 4153, v12);
      }
    }

    v13 = *a2 % 0x3B9ACA00u;
    v18.tv_sec = *a2 / 0x3B9ACA00uLL;
    v18.tv_nsec = v13;
    if (a4 == 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if (sub_100011A68((v8 + 1328), v8, v14, &v18) == 35 && *a2 != 2000000000)
    {
      if ((4 * *a2) >= 0x77359400)
      {
        v15 = 2000000000;
      }

      else
      {
        v15 = 4 * *a2;
      }

      *a2 = v15;
    }

    if (a3)
    {
      v16 = pthread_rwlock_wrlock((v8 + 128));
      if (v16)
      {
        panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_executables/nx/obj.c", 4170, v16);
      }
    }

    return 1;
  }

  else
  {
    result = 0;
    atomic_fetch_add_explicit(a1 + 3, 0xFFFFFFFFFF000000, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_100036804(uint64_t *a1, int a2, unint64_t a3, int8x16_t a4, int8x16_t a5)
{
  v5 = *(*a1 + 392);
  if (a1[1])
  {
    v6 = a1[1];
  }

  else
  {
    v6 = *(*a1 + 392);
  }

  if (*(v5 + 627))
  {
    return 30;
  }

  v11 = (*(*(v5 + 376) + 36) + *(a1 + 12) - 1) / *(*(v5 + 376) + 36);
  v13 = a1 + 18;
  v12 = a1[18];
  v14 = a1[2];
  v15 = a1[15];
  v66 = v15;
  if (a1[19])
  {
    v67 = a1[19];
    goto LABEL_9;
  }

  v67 = a1[16];
  if (v67)
  {
LABEL_9:
    if ((v14 & 0xC0000000) != 0)
    {
      v65 = v11;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      goto LABEL_11;
    }

LABEL_51:
    v65 = v11;
    if (v12 == v15)
    {
      v18 = v67;
    }

    else
    {
      v18 = v67;
      if (a2 || v12)
      {
        goto LABEL_60;
      }
    }

    v32 = v18;
    v18 = 0;
    if (v32)
    {
      v16 = 0;
      goto LABEL_57;
    }

LABEL_60:
    v34 = a1[2];
    v35 = v34 & 0xC00000000;
    if ((v34 & 0x800000000) != 0)
    {
      v36 = 49;
    }

    else
    {
      v36 = 41;
    }

    if ((v34 & 0x100000000000) != 0)
    {
      v37 = 65600;
    }

    else
    {
      v37 = 131136;
    }

    v38 = v37 | v36;
    v39 = v35 == 0;
    v40 = v35 != 0;
    if (v39)
    {
      v38 = 72;
    }

    if (a2)
    {
      v16 = 0;
    }

    else
    {
      v16 = v40;
    }

    if (a2)
    {
      v41 = 72;
    }

    else
    {
      v41 = v38;
    }

    if ((v34 & 0x10000000) != 0)
    {
      v67 = 0;
    }

    else
    {
      if (*(a1 + 18) == 11 || *(a1 + 20) == 11)
      {
        v42 = 2;
      }

      else
      {
        v42 = 1;
      }

      v67 = v42;
    }

    v44 = sub_100046AE4(v6, v41, v11, a3, &v67, 0);
    if (v44)
    {
      v7 = v44;
      if (sub_100011490(*(*v6 + 392)))
      {
        if (*(v6 + 36) == 13)
        {
          v45 = (v6 + 4040);
        }

        else
        {
          v45 = (*(v6 + 384) + 212);
        }

        sub_100012178("%s:%d: %s oid %lld flags 0x%llx 0x%x type 0x%x/0x%x xid %lld (cur xid %lld) error allocating space to write %d; blkcount %d (o_size_phys %d) paddr %lld\n", "obj_write_prepare", 6703, v45, a1[14], a1[2], *(a1 + 8), *(a1 + 9), *(a1 + 10), a1[18], a3, v7, v65, *(a1 + 12), v67);
      }

      v16 = 0;
      v17 = 0;
      goto LABEL_109;
    }

    v15 = v66;
    v17 = v67;
    v33 = v67;
    if (v67)
    {
LABEL_89:
      v67 = v33;
      v46 = a1[2];
      v47 = (v46 >> 2) & 0x700 | (v46 >> 8) & 0xE0 | 4;
      if ((v46 & 0x10000000) == 0)
      {
        v47 = 0;
      }

      v48 = (v46 >> 26) & 8;
      if (v12)
      {
        v49 = v12;
      }

      else
      {
        v49 = v15;
      }

      v50 = sub_10003FD94(v6, a1[14], v49, v33, *(a1 + 12), v47 | v48, a3);
      if (!v50)
      {
        v15 = v66;
        goto LABEL_11;
      }

      v7 = v50;
      if (sub_100011490(*(*v6 + 392)))
      {
        if (*(v6 + 36) == 13)
        {
          v51 = (v6 + 4040);
        }

        else
        {
          v51 = (*(v6 + 384) + 212);
        }

        sub_100012178("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error setting mapping for write %d\n", "obj_write_prepare", 6730, v51, a1[14], a1[2], *(a1 + 8), *(a1 + 9), *(a1 + 10), v7);
      }

      if (!a2)
      {
LABEL_17:
        pthread_mutex_lock(*a1);
        if (v17)
        {
          a1[19] = v17;
        }

        if (!v16)
        {
          goto LABEL_21;
        }

LABEL_20:
        a1[2] &= 0xFFFFEFF3FFFFFFFFLL;
LABEL_21:
        if (!v7)
        {
          v22 = a1[2];
          if ((v22 & 0x40) != 0)
          {
            a1[2] = v22 & 0xFFFFFFFFFFFFFFBFLL;
          }

          if (v12)
          {
            a1[15] = v12;
          }

          v23 = a1[19];
          if (v23)
          {
            a1[16] = v23;
          }

          if ((atomic_fetch_or_explicit(a1 + 8, 0, memory_order_relaxed) & 1) == 0)
          {
            *v13 = 0;
            v13[1] = 0;
          }
        }

        sub_1000357DC(*a1);
        if (v18)
        {
          if (v12)
          {
            if (sub_10003FF18(v6, a1[14], v66, v18, *(a1 + 12), 0, a3) && sub_100011490(*(*v6 + 392)))
            {
              if (*(v6 + 36) != 13)
              {
                v29 = *(v6 + 384) + 212;
              }

              v24 = a1[14];
              v25 = a1[2];
              v62 = *(a1 + 10);
              v56 = *(a1 + 8);
              v59 = *(a1 + 9);
              sub_100012178("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error deleting old mapping %d\n", "obj_write_prepare");
            }
          }

          else if (sub_10004A66C(v6, 64, v18, v65, a3) && sub_100011490(*(*v6 + 392)))
          {
            if (*(v6 + 36) != 13)
            {
              v43 = *(v6 + 384) + 212;
            }

            v26 = a1[14];
            v27 = a1[2];
            v63 = *(a1 + 10);
            v57 = *(a1 + 8);
            v60 = *(a1 + 9);
            sub_100012178("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error freeing old location %d\n", "obj_write_prepare");
          }
        }

        return v7;
      }

LABEL_109:
      pthread_mutex_lock(*a1);
      v18 = v17;
      if (!v16)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

LABEL_57:
    v33 = a1[19];
    if (!v33)
    {
      v17 = 0;
      goto LABEL_11;
    }

    v17 = 0;
    if (v33 == a1[16])
    {
LABEL_11:
      if ((*(a1 + 18) & 0x8002000) == 0)
      {
        v19 = a1[7];
        a4.i64[0] = *(a1 + 36);
        *(v19 + 8) = a1[14];
        *(v19 + 24) = a4.i64[0];
        if (v12)
        {
          v20 = v12;
        }

        else
        {
          v20 = v15;
        }

        *(v19 + 16) = v20;
        v21 = *(a1 + 12);
        atomic_fetch_add_explicit((*(*(*a1 + 392) + 376) + 984), 1uLL, memory_order_relaxed);
        sub_10001C6A8(v19, (v19 + 8), (v21 - 8), 0, a4, a5);
      }

      v7 = 0;
      goto LABEL_17;
    }

    goto LABEL_89;
  }

  if ((v14 & 0xC0000000) != 0)
  {
    if (sub_100011490(*(*v6 + 392)))
    {
      if (*(v6 + 36) == 13)
      {
        v28 = (v6 + 4040);
      }

      else
      {
        v28 = (*(v6 + 384) + 212);
      }

      sub_100012178("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x non-virtual object missing paddr!\n", "obj_write_prepare", 6655, v28, a1[14], a1[2], *(a1 + 8), *(a1 + 9), *(a1 + 10));
    }

    return 22;
  }

  else
  {
    if ((v14 & 0x40) != 0)
    {
      goto LABEL_51;
    }

    v30 = v11;
    v31 = sub_10004022C(v6, a1[14], v15, &v67, 0, 0, 0);
    v15 = v66;
    v11 = v30;
    if ((v31 & 0xFFFFFFFD) == 0)
    {
      goto LABEL_51;
    }

    v7 = v31;
    if (sub_100011490(*(*v6 + 392)))
    {
      if (*(v6 + 36) != 13)
      {
        v53 = *(v6 + 384) + 212;
      }

      v64 = *(a1 + 10);
      v58 = *(a1 + 8);
      v61 = *(a1 + 9);
      v54 = a1[14];
      v55 = a1[2];
      sub_100012178("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error getting mapping to write %d\n", "obj_write_prepare");
    }
  }

  return v7;
}

void sub_100036E50(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = pthread_rwlock_wrlock((a1 + 128));
  if (v2)
  {
    panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_executables/nx/obj.c", 1410, v2);
  }

  for (i = *(a1 + 856); i; i = *(i + 104))
  {
    if ((atomic_fetch_or_explicit((i + 32), 1u, memory_order_relaxed) & 1) == 0)
    {
      v4 = *(i + 36) >> 30;
      if (v4)
      {
        if (v4 != 1)
        {
          panic("bad object type in flush list: oid %lld flags 0x%llx 0x%x\n", *(i + 112), *(i + 16), *(i + 32));
        }

        *(i + 88) = 0;
        v6 = *(a1 + 848);
        *(i + 96) = v6;
        *v6 = i;
        *(a1 + 848) = i + 88;
        ++*(a1 + 912);
      }

      else
      {
        *(i + 88) = 0;
        v5 = *(a1 + 832);
        *(i + 96) = v5;
        *v5 = i;
        *(a1 + 832) = i + 88;
        ++*(a1 + 908);
      }
    }

    v7 = *(i + 16);
    *(i + 16) = v7 & 0xFFFFFDFFFFFFFFFFLL;
    if ((v7 & 0x80) != 0)
    {
      *(i + 16) = v7 & 0xFFFFFDFFFFFFFF7FLL;
      j__pthread_cond_broadcast((a1 + 1328));
    }
  }

  v8 = pthread_rwlock_unlock((a1 + 128));
  if (v8)
  {
    panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_executables/nx/obj.c", 1430, v8);
  }

  sub_1000357DC(a1);
  v9 = *(a1 + 856);
  if (v9)
  {
    v10 = (a1 + 856);
    do
    {
      v11 = *(v9 + 104);
      *v10 = v11;
      if (!v11)
      {
        *(a1 + 864) = v10;
      }

      *(v9 + 104) = 3735928559;
      --*(a1 + 932);
      v12 = *(v9 + 64);
      if (v12)
      {
        if (v12 != *(v9 + 56))
        {
          sub_10003518C(v12, *(v9 + 48), *(v9 + 16), a1);
        }

        *(v9 + 64) = 0;
        *(v9 + 136) = 0;
      }

      sub_100037058(v9);
      v9 = *v10;
    }

    while (*v10);
  }

  pthread_mutex_lock(a1);
  if (*(a1 + 936) >= 2u)
  {
    j__pthread_cond_broadcast((a1 + 1328));
  }

  *(a1 + 936) = 0;

  sub_1000357DC(a1);
}

void sub_100037058(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (!v2)
  {
    v2 = *(v3 + 392);
  }

  add_explicit = atomic_fetch_add_explicit(a1 + 3, 0xFFFFEFFFFFFFFFFFLL, memory_order_relaxed);
  v5 = add_explicit & 0xFFFFFF;
  if ((add_explicit & 0xFFFFFF) == 0)
  {
    panic("Reference count underflowed for object %p!\n", a1);
  }

  v6 = -(add_explicit >> 44) & 0xFFFFF;
  if (v6 == 0x80000)
  {
    panic("Release count overflowed for object %p!\n", a1);
  }

  if (v5 >= 2)
  {
    v7 = atomic_fetch_add_explicit(a1 + 3, 0x100000000000uLL, memory_order_relaxed);
    if ((v7 & 0xFFFFFF) == 0 && (-(v7 >> 44) & 0xFFFFF) == 1)
    {

      j__pthread_cond_broadcast((v3 + 1328));
    }

    return;
  }

  v8 = a1[2];
  if ((v8 & 0xC) != 0 || (v8 & 0xC00000000) != 0 && (atomic_fetch_or_explicit(a1 + 8, 0, memory_order_relaxed) & 1) == 0)
  {
    pthread_mutex_lock(v3);
    v8 = a1[2];
    if (v6)
    {
      v9 = (a1[2] & 8) == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9 || (-(atomic_fetch_add_explicit(a1 + 3, 0, memory_order_relaxed) >> 44) & 0xFFFFE) == 0)
    {
      v10 = 0;
    }

    else
    {
      do
      {
        v29 = xmmword_10006A8C0;
        sub_100011A68((v3 + 1328), v3, 2, &v29);
      }

      while ((-(atomic_fetch_add_explicit(a1 + 3, 0, memory_order_relaxed) >> 44) & 0xFFFFE) != 0);
      v10 = 0;
      v8 = a1[2];
    }
  }

  else
  {
    v10 = 1;
  }

  if ((v8 & 0x80000008) == 0 && *(a1 + 18) != 13 && (a1[4] & 1) == 0)
  {
    v11 = pthread_rwlock_rdlock((v3 + 128));
    if (v11)
    {
      panic("%s:%d: rdlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_executables/nx/obj.c", 5319, v11);
    }

    sub_10003C964(v3, a1);
    v12 = pthread_rwlock_unlock((v3 + 128));
    if (v12)
    {
      panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_executables/nx/obj.c", 5321, v12);
    }
  }

  v13 = a1[14];
  v15 = *(a1 + 9);
  v14 = *(a1 + 10);
  v16 = a1[2];
  v28 = v16;
  if (v10)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_42;
  }

  if ((v16 & 4) != 0)
  {
    v20 = v16 & 0xFFFFFFFFFFFFFFFBLL;
    a1[2] = v16 & 0xFFFFFFFFFFFFFFFBLL;
    v19 = a1;
  }

  else
  {
    v19 = 0;
    v20 = a1[2];
  }

  if ((v20 & 0xC00000000) != 0 && ((v21 = atomic_fetch_or_explicit(a1 + 8, 0, memory_order_relaxed), (v20 & 8) != 0) || (v21 & 1) == 0))
  {
    v22 = *(*(*(v3 + 392) + 376) + 36);
    v17 = (v22 + *(a1 + 12) - 1) / v22;
    if ((v20 & 0x800000000) != 0)
    {
      v23 = 80;
    }

    else
    {
      v23 = 72;
    }

    if ((v20 & 0x100000000000) != 0)
    {
      v24 = 0x10000;
    }

    else
    {
      v24 = 0x20000;
    }

    v18 = v23 | v24;
    v20 &= 0xFFFFEFF3FFFFFFFFLL;
    a1[2] = v20;
    if ((v20 & 8) == 0)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v18 = 0;
    v17 = 0;
    if ((v20 & 8) == 0)
    {
LABEL_41:
      sub_1000357DC(v3);
LABEL_42:
      if ((atomic_fetch_and_explicit(a1 + 8, 0xFFFFFFFD, memory_order_relaxed) & 2) != 0)
      {
        v19 = a1;
      }

      if ((atomic_fetch_add_explicit(a1 + 3, 0x100000000000uLL, memory_order_relaxed) & 0xFFFFFF) != 0)
      {
        goto LABEL_58;
      }

      goto LABEL_57;
    }
  }

  if ((v20 & 0x80000000) != 0)
  {
    sub_100035774(v3, v20, *(a1 + 12), -1);
  }

  else
  {
    --*(v3 + 684);
  }

  atomic_fetch_add_explicit(a1 + 3, 0x100000000000uLL, memory_order_relaxed);
  v25 = atomic_fetch_and_explicit(a1 + 8, 0xFFFFFFFD, memory_order_relaxed);
  sub_10003B9B4(a1, 0);
  sub_1000357DC(v3);
  if ((v25 & 2) != 0)
  {
    goto LABEL_58;
  }

LABEL_57:
  if (v19)
  {
LABEL_58:
    j__pthread_cond_broadcast((v3 + 1328));
  }

  if (v17)
  {
    v26 = sub_10004B89C(v2, v18, v17);
    if (v26)
    {
      if (*(v2 + 36) == 13)
      {
        v27 = (v2 + 4040);
      }

      else
      {
        v27 = (*(v2 + 384) + 212);
      }

      sub_100012178("%s:%d: %s oid 0x%llx flags 0x%llx type 0x%x/0x%x error unreserving space on non-dirty release: %d\n", "obj_release", 5417, v27, v13, v28, v15, v14, v26);
    }
  }
}

void sub_10003742C(uint64_t a1)
{
  v2 = *a1;
  pthread_mutex_lock(*a1);
  v3 = *(a1 + 16);
  *(a1 + 16) = v3 & 0xFFFFFDFFFFFFFF7FLL;
  sub_1000357DC(v2);
  if ((v3 & 0x80) != 0)
  {

    j__pthread_cond_broadcast(&v2[20].__opaque[40]);
  }
}

uint64_t sub_1000374A4(pthread_mutex_t *a1, unsigned int a2)
{
  v3 = *&a1[13].__opaque[16];
  if (!v3)
  {
LABEL_30:
    pthread_mutex_lock(a1);
    if (*&a1[14].__opaque[32] >= 2u)
    {
      j__pthread_cond_broadcast(&a1[20].__opaque[40]);
    }

    *&a1[14].__opaque[32] = 0;
    sub_1000357DC(a1);
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = &a1[13].__opaque[16];
  v7 = (a2 >> 1) & 1;
  do
  {
    v8 = *(v3 + 104);
    while (1)
    {
      pthread_mutex_lock((a1 + 328));
      if ((atomic_fetch_or_explicit((v3 + 32), 8u, memory_order_acquire) & 8) == 0)
      {
        break;
      }

      pthread_mutex_unlock((a1 + 328));
    }

    v9 = sub_1000376B4(v3, v7);
    if (!v9)
    {
      v14 = *(v3 + 56);
      v13 = *(v3 + 64);
      *(v3 + 64) = 0;
      *(v3 + 136) = 0;
      atomic_fetch_and_explicit((v3 + 32), 0xFFFFFFF7, memory_order_release);
      pthread_mutex_unlock((a1 + 328));
      if (v13 && v13 != v14)
      {
        sub_10003518C(v13, *(v3 + 48), *(v3 + 16), a1);
      }

      if (v4)
      {
        v15 = (v4 + 104);
        v16 = *(*(v4 + 104) + 104);
        *(v4 + 104) = v16;
        if (v16)
        {
LABEL_18:
          *(v3 + 104) = 3735928559;
          --*&a1[14].__opaque[28];
          sub_10003742C(v3);
          sub_100037058(v3);
          goto LABEL_25;
        }
      }

      else
      {
        v17 = *(*v6 + 104);
        *v6 = v17;
        v15 = &a1[13].__opaque[16];
        if (v17)
        {
          goto LABEL_18;
        }
      }

      *&a1[13].__opaque[24] = v15;
      goto LABEL_18;
    }

    v10 = v9;
    atomic_fetch_and_explicit((v3 + 32), 0xFFFFFFF7, memory_order_release);
    pthread_mutex_unlock((a1 + 328));
    v11 = *(v3 + 8);
    if (!v11)
    {
      v11 = *(*v3 + 392);
    }

    if (sub_100011490(*(*v11 + 392)))
    {
      if (*(v11 + 36) == 13)
      {
        v12 = (v11 + 4040);
      }

      else
      {
        v12 = (*(v11 + 384) + 212);
      }

      sub_100012178("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error writing: %d\n", "obj_cache_flush_write", 1528, v12, *(v3 + 112), *(v3 + 16), *(v3 + 32), *(v3 + 36), *(v3 + 40), v10);
    }

    if (v5)
    {
      v5 = v5;
    }

    else
    {
      v5 = v10;
    }

    v4 = v3;
LABEL_25:
    v3 = v8;
  }

  while (v8);
  if (!v5)
  {
    goto LABEL_30;
  }

  return v5;
}

uint64_t sub_1000376B4(uint64_t a1, int a2)
{
  v2 = *(*a1 + 392);
  v3 = *(a1 + 48);
  if (!a2)
  {
    v4 = *(a1 + 56);
LABEL_7:
    v5 = *(a1 + 152);
    if (!v5)
    {
      v5 = *(a1 + 128);
      if (!v5)
      {
        panic("Object has no address: o %p oid %llu flags 0x%llx 0x%x paddr %llu naddr %llu\n", a1, *(a1 + 112), *(a1 + 16), *(a1 + 32), 0, 0);
      }
    }

    goto LABEL_10;
  }

  v4 = *(a1 + 64);
  if (!v4)
  {
    v4 = *(a1 + 56);
  }

  v5 = *(a1 + 136);
  if (!v5)
  {
    goto LABEL_7;
  }

LABEL_10:
  if (*(v2 + 627))
  {
    return 30;
  }

  v7 = *(a1 + 16);
  if ((v7 & 0x10000000) != 0 && (v7 & 0x80000000000) == 0 && (v12 = *(a1 + 8)) != 0)
  {
    if (v7 >> 13)
    {
      if (v7 >> 13 != 1)
      {
        panic("invalid crypto index %d\n");
      }

      v13 = 632;
    }

    else
    {
      v13 = 536;
    }

    v10 = (v7 >> 10) & 7;
    if (v10)
    {
      if (v10 != 1)
      {
        panic("invalid tweak type %d\n");
      }

      v8 = *(a1 + 112) ^ HIDWORD(*(a1 + 120)) | *(a1 + 112) & 0xFFFFFFFF00000000 ^ (*(a1 + 120) << 32);
      LODWORD(v10) = 4;
    }

    else
    {
      v8 = (v7 >> 10) & 7;
    }

    v9 = v12 + v13;
    v14 = *(v12 + 1144);
    if (v14)
    {
      v11 = v14;
    }

    else
    {
      v11 = *(v2 + 384);
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    LODWORD(v10) = 0;
    v11 = *(v2 + 384);
  }

  v15 = (*(*(v2 + 376) + 36) + v3 - 1) / *(*(v2 + 376) + 36);

  return sub_100050A6C(v11, v5, v15, v4, v9, v8, v10);
}

BOOL sub_100037850(uint64_t a1)
{
  v1 = *(a1 + 912) + *(a1 + 908);
  if (sub_100050954(*(*(a1 + 392) + 384)))
  {
    v2 = 1024;
  }

  else
  {
    v2 = 256;
  }

  return v1 >= v2;
}

void sub_10003789C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = *(a1 + 392);
  }

  v9 = *(*(*(a1 + 392) + 376) + 36);
  pthread_mutex_lock(a1);
  v10 = *(*(a1 + 712) + 8 * (*(a1 + 704) & a3));
  if (v10)
  {
    v38 = 0;
    v11 = 0;
    v12 = v9;
    v13 = 0;
    v14 = 0;
    v15 = (a1 + 720);
    v37 = v12;
    v36 = v12 - 1;
    while (1)
    {
      while (1)
      {
        v16 = v10;
        v17 = (v10 + 72);
        v10 = *(v10 + 72);
        if (v16 != a2 && *(v16 + 8) == a2)
        {
          v18 = *(v16 + 16);
          if ((v18 & 0xC0000000) == 0 && *(v16 + 112) == a3 && *(v16 + 120) == a4)
          {
            break;
          }
        }

LABEL_24:
        if (!v10)
        {
          goto LABEL_33;
        }
      }

      add_explicit = atomic_fetch_add_explicit((v16 + 24), 0, memory_order_relaxed);
      if ((add_explicit & 0xFFFFFF) == ((add_explicit >> 24) & 0xFFFFF))
      {
        if ((v18 & 0xC00000000) != 0)
        {
          v20 = (v36 + *(v16 + 48)) / v37;
          v21 = v14 + v20;
          v22 = v13 + v20;
          if ((v18 & 0x100000000000) != 0)
          {
            v21 = v14;
          }

          else
          {
            v22 = v13;
          }

          v23 = v11 + v20;
          v24 = v38;
          v25 = v38 + v20;
          if ((v18 & 0x100000000000) != 0)
          {
            v23 = v11;
          }

          else
          {
            v25 = v38;
          }

          if ((v18 & 0x800000000) != 0)
          {
            v11 = v23;
            v24 = v25;
          }

          else
          {
            v14 = v21;
            v13 = v22;
          }

          v38 = v24;
          *(v16 + 16) = v18 & 0xFFFFEFF33FFFFFFFLL;
        }

        --*(a1 + 684);
        sub_10003B9B4(v16, 0);
        goto LABEL_24;
      }

      if (v18)
      {
        v26 = *(v16 + 80);
        if (v10)
        {
          *(v10 + 80) = v26;
        }

        *v26 = v10;
      }

      v27 = *v15;
      *v17 = *v15;
      if (v27)
      {
        *(v27 + 80) = v17;
      }

      *v15 = v16;
      *(v16 + 80) = v15;
      *(v16 + 16) = v18 | 9;
      if (!v10)
      {
LABEL_33:
        sub_1000357DC(a1);
        if (v14)
        {
          v28 = sub_10004B89C(v8, 0x48u, v14);
          if (v28)
          {
            if (*(v8 + 36) == 13)
            {
              v29 = (v8 + 4040);
            }

            else
            {
              v29 = (*(v8 + 384) + 212);
            }

            sub_100012178("%s:%d: %s error unreserving space, %lld blocks: %d\n", "obj_cache_remove", 1830, v29, v14, v28);
          }
        }

        if (v11)
        {
          v30 = sub_10004B89C(v8, 0x50u, v11);
          if (v30)
          {
            if (*(v8 + 36) == 13)
            {
              v31 = (v8 + 4040);
            }

            else
            {
              v31 = (*(v8 + 384) + 212);
            }

            sub_100012178("%s:%d: %s error unreserving tier2 space, %lld blocks: %d\n", "obj_cache_remove", 1836, v31, v11, v30);
          }
        }

        if (v13)
        {
          v32 = sub_10004B89C(v8, 0x10048u, v13);
          if (v32)
          {
            if (*(v8 + 36) == 13)
            {
              v33 = (v8 + 4040);
            }

            else
            {
              v33 = (*(v8 + 384) + 212);
            }

            sub_100012178("%s:%d: %s error unreserving space, %lld blocks: %d\n", "obj_cache_remove", 1842, v33, v13, v32);
          }
        }

        if (v38)
        {
          v34 = sub_10004B89C(v8, 0x10050u, v38);
          if (v34)
          {
            if (*(v8 + 36) == 13)
            {
              v35 = (v8 + 4040);
            }

            else
            {
              v35 = (*(v8 + 384) + 212);
            }

            sub_100012178("%s:%d: %s error unreserving tier2 space, %lld blocks: %d\n", "obj_cache_remove", 1848, v35, v38, v34);
          }
        }

        return;
      }
    }
  }

  sub_1000357DC(a1);
}

void sub_100037C10(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = *(*(*(a1 + 392) + 376) + 36);
  pthread_mutex_lock(a1);
  v44 = (a2 + 4040);
  sub_100012088("%s:%d: %s removing reverted fs objects for fs %lld: %lld - %lld\n", "obj_cache_remove_reverted_fs_objects", 1870, (a2 + 4040), *(a2 + 112), a3, a4);
  v9 = *(a1 + 700);
  if (!v9)
  {
    v11 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    goto LABEL_45;
  }

  v10 = 0;
  v43 = 0;
  v41 = 0;
  v42 = 0;
  v11 = 0;
  v12 = (a1 + 720);
  v39 = v8 - 1;
  v40 = v8;
  do
  {
    v13 = *(*(a1 + 712) + 8 * v10);
    if (!v13)
    {
      goto LABEL_42;
    }

    do
    {
      while (1)
      {
        v14 = v13;
        v15 = (v13 + 72);
        v13 = *(v13 + 72);
        if (v14 == a2)
        {
          goto LABEL_30;
        }

        if (*(v14 + 8) != a2)
        {
          goto LABEL_30;
        }

        v16 = *(v14 + 16);
        if ((v16 & 0xC0000000) != 0)
        {
          goto LABEL_30;
        }

        v17 = *(v14 + 120);
        if (v17 <= *(v14 + 144))
        {
          v17 = *(v14 + 144);
        }

        if (v17 < a3 || v17 > a4)
        {
          goto LABEL_30;
        }

        v19 = *(v14 + 32);
        if (v19)
        {
          sub_100012088("%s:%d: %s danger: oid %lld type 0x%x/0x%x flags 0x%llx 0x%x xid %lld refs 0x%llx - is dirty\n", "obj_cache_remove_reverted_fs_objects", 1887, v44, *(v14 + 112), *(v14 + 36), *(v14 + 40), v16, v19, v17, *(v14 + 24));
        }

        add_explicit = atomic_fetch_add_explicit((v14 + 24), 0, memory_order_relaxed);
        if ((add_explicit & 0xFFFFFF) != ((add_explicit >> 24) & 0xFFFFF))
        {
          break;
        }

        v21 = *(v14 + 16);
        if ((v21 & 0xC00000000) != 0)
        {
          v22 = (v39 + *(v14 + 48)) / v40;
          v23 = v11 + v22;
          v25 = v41;
          v24 = v42;
          v26 = v42 + v22;
          if ((v21 & 0x100000000000) != 0)
          {
            v23 = v11;
          }

          else
          {
            v26 = v42;
          }

          v27 = v41 + v22;
          v28 = v43;
          v29 = v43 + v22;
          if ((v21 & 0x100000000000) != 0)
          {
            v27 = v41;
          }

          else
          {
            v29 = v43;
          }

          if ((v21 & 0x800000000) != 0)
          {
            v25 = v27;
          }

          else
          {
            v11 = v23;
            v24 = v26;
          }

          v41 = v25;
          v42 = v24;
          if ((v21 & 0x800000000) != 0)
          {
            v28 = v29;
          }

          v43 = v28;
          *(v14 + 16) = v21 & 0xFFFFEFF3FFFFFFFFLL;
        }

        --*(a1 + 684);
        sub_10003B9B4(v14, 0);
LABEL_30:
        if (!v13)
        {
          goto LABEL_41;
        }
      }

      v30 = *(v14 + 120);
      if (v30 <= *(v14 + 144))
      {
        v30 = *(v14 + 144);
      }

      sub_100012088("%s:%d: %s danger: oid %lld type 0x%x/0x%x flags 0x%llx 0x%x xid %lld refs 0x%llx - has refs\n", "obj_cache_remove_reverted_fs_objects", 1891, v44, *(v14 + 112), *(v14 + 36), *(v14 + 40), *(v14 + 16), *(v14 + 32), v30, *(v14 + 24));
      v31 = *(v14 + 16);
      if (v31)
      {
        v32 = *(v14 + 72);
        v33 = *(v14 + 80);
        if (v32)
        {
          *(v32 + 80) = v33;
        }

        *v33 = v32;
      }

      v34 = *v12;
      *v15 = *v12;
      if (v34)
      {
        *(v34 + 80) = v15;
      }

      *v12 = v14;
      *(v14 + 80) = v12;
      *(v14 + 16) = v31 | 9;
    }

    while (v13);
LABEL_41:
    v9 = *(a1 + 700);
LABEL_42:
    ++v10;
  }

  while (v10 < v9);
LABEL_45:
  sub_1000357DC(a1);
  if (v42 + v11 + v41 + v43)
  {
    sub_100012088("%s:%d: %s unreserving %lld blocks for reverted fs objects\n", "obj_cache_remove_reverted_fs_objects", 1930, v44, v42 + v11 + v41 + v43);
  }

  if (v11)
  {
    v35 = sub_10004B89C(a2, 0x48u, v11);
    if (v35)
    {
      sub_100012178("%s:%d: %s error unreserving space, %lld blocks: %d\n", "obj_cache_remove_reverted_fs_objects", 1935, v44, v11, v35);
    }
  }

  if (v41)
  {
    v36 = sub_10004B89C(a2, 0x50u, v41);
    if (v36)
    {
      sub_100012178("%s:%d: %s error unreserving tier2 space, %lld blocks: %d\n", "obj_cache_remove_reverted_fs_objects", 1941, v44, v41, v36);
    }
  }

  if (v42)
  {
    v37 = sub_10004B89C(a2, 0x10048u, v42);
    if (v37)
    {
      sub_100012178("%s:%d: %s error unreserving space, %lld blocks: %d\n", "obj_cache_remove_reverted_fs_objects", 1947, v44, v42, v37);
    }
  }

  if (v43)
  {
    v38 = sub_10004B89C(a2, 0x10050u, v43);
    if (v38)
    {
      sub_100012178("%s:%d: %s error unreserving tier2 space, %lld blocks: %d\n", "obj_cache_remove_reverted_fs_objects", 1953, v44, v43, v38);
    }
  }
}

uint64_t sub_100038020(uint64_t a1)
{
  if (*(a1 + 120) <= *(a1 + 144))
  {
    return *(a1 + 144);
  }

  else
  {
    return *(a1 + 120);
  }
}

void sub_100038034(uint64_t a1, uint64_t a2)
{
  v30 = *(*(*(a1 + 392) + 376) + 36);
  v31 = 0;
  v32 = &v31;
  pthread_mutex_lock(a1);
  v4 = pthread_rwlock_wrlock((a1 + 128));
  if (v4)
  {
    panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_executables/nx/obj.c", 2088, v4);
  }

  for (i = *(a1 + 824); i; v32 = v7)
  {
    while (1)
    {
      v6 = i;
      v7 = (i + 88);
      i = *(i + 88);
      if (*(v7 - 10) == a2 && (*(v6 + 19) & 0xC0) == 0 && !*(v6 + 128))
      {
        break;
      }

      if (!i)
      {
        goto LABEL_12;
      }
    }

    v8 = *(v6 + 96);
    v9 = (i + 96);
    if (!i)
    {
      v9 = (a1 + 832);
    }

    *v9 = v8;
    *v8 = i;
    --*(a1 + 908);
    v10 = v32;
    *(v6 + 88) = 0;
    *(v6 + 96) = v10;
    *v10 = v6;
  }

LABEL_12:
  v11 = pthread_rwlock_unlock((a1 + 128));
  if (v11)
  {
    panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_executables/nx/obj.c", 2100, v11);
  }

  v12 = v31;
  if (v31)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    do
    {
      v18 = *(v12 + 88);
      v17 = *(v12 + 96);
      v19 = (v18 + 96);
      if (!v18)
      {
        v19 = &v32;
      }

      *v19 = v17;
      *v17 = v18;
      *(v12 + 88) = 3735928559;
      v20 = *(v12 + 16);
      if ((v20 & 0xC00000000) != 0)
      {
        v21 = (v30 - 1 + *(v12 + 48)) / v30;
        v22 = v13 + v21;
        v23 = v16 + v21;
        if ((v20 & 0x100000000000) != 0)
        {
          v22 = v13;
        }

        else
        {
          v23 = v16;
        }

        v24 = v15 + v21;
        v25 = v14 + v21;
        if ((v20 & 0x100000000000) != 0)
        {
          v24 = v15;
        }

        else
        {
          v25 = v14;
        }

        if ((v20 & 0x800000000) != 0)
        {
          v15 = v24;
        }

        else
        {
          v16 = v23;
        }

        if ((v20 & 0x800000000) != 0)
        {
          v14 = v25;
        }

        else
        {
          v13 = v22;
        }

        *(v12 + 16) = v20 & 0xFFFFEFF3FFFFFFFFLL;
      }

      --*(a1 + 684);
      sub_10003B9B4(v12, 0);
      v12 = v18;
    }

    while (v18);
    sub_1000357DC(a1);
    if (v13)
    {
      v26 = sub_10004B89C(a2, 0x48u, v13);
      if (v26)
      {
        sub_100012178("%s:%d: %s error unreserving space, %lld blocks: %d\n", "obj_cache_remove_new_fs_objects", 2133, (a2 + 4040), v13, v26);
      }
    }

    if (v15)
    {
      v27 = sub_10004B89C(a2, 0x50u, v15);
      if (v27)
      {
        sub_100012178("%s:%d: %s error unreserving tier2 space, %lld blocks: %d\n", "obj_cache_remove_new_fs_objects", 2139, (a2 + 4040), v15, v27);
      }
    }

    if (v16)
    {
      v28 = sub_10004B89C(a2, 0x10048u, v16);
      if (v28)
      {
        sub_100012178("%s:%d: %s error unreserving space, %lld blocks: %d\n", "obj_cache_remove_new_fs_objects", 2145, (a2 + 4040), v16, v28);
      }
    }

    if (v14)
    {
      v29 = sub_10004B89C(a2, 0x10050u, v14);
      if (v29)
      {
        sub_100012178("%s:%d: %s error unreserving tier2 space, %lld blocks: %d\n", "obj_cache_remove_new_fs_objects", 2151, (a2 + 4040), v14, v29);
      }
    }
  }

  else
  {
    sub_1000357DC(a1);
  }
}

uint64_t sub_100038364(int a1)
{
  if (a1 < 0)
  {
    return 1;
  }

  v1 = a1;
  if (a1 > 0xDu)
  {
    return 0;
  }

  result = 1;
  if (((1 << v1) & 0x2832) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t sub_10003839C(pthread_mutex_t *a1, uint64_t a2, unint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  if (a6 >= 0x1000)
  {
    return sub_1000383E4(a1, a2, a3, a4, a5, a6, 0, 0, a7, 1, a8);
  }

  else
  {
    return 22;
  }
}

uint64_t sub_1000383E4(pthread_mutex_t *a1, uint64_t a2, unint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, char a10, uint64_t *a11)
{
  v11 = *a1[6].__opaque;
  if (a7)
  {
    v12 = a7;
  }

  else
  {
    v12 = *a1[6].__opaque;
  }

  v85 = 0;
  v84 = 0;
  if (!a4)
  {
    return 22;
  }

  if (a4[3] < 0x178)
  {
    return 22;
  }

  v16 = a6;
  if (!a6)
  {
    v16 = a4[2];
    if (!v16)
    {
      if (!v11)
      {
        return 22;
      }

      v16 = *(*(v11 + 376) + 36);
      if (!v16)
      {
        return 22;
      }
    }
  }

  v19 = a10;
  if ((a10 & 1) == 0)
  {
    if (v16 % *(*(v11 + 376) + 36))
    {
      return 22;
    }
  }

  v20 = a2 | (*(a4 + 1) << 16);
  v21 = v20 & 0xC0000000;
  v22 = ((v20 >> 30) & 1) + (v20 >> 31);
  if ((v20 & 0xC0000000) == 0)
  {
    ++v22;
  }

  if ((v20 & 0x88000000) == 0x8000000 || v22 != 1)
  {
    return 22;
  }

  v26 = a2 | (*(a4 + 1) << 16);
  if (a7)
  {
    v26 = a2 | (*(a4 + 1) << 16);
    if ((v20 & 0xC0000000) == 0)
    {
      v27 = *(a7 + 504);
      if (!v27)
      {
        v27 = a7;
      }

      if (*(*(v27 + 376) + 264))
      {
        v26 = v20 & 0xFFFFFFFF2FFF03FFLL;
      }

      else
      {
        v74 = a5;
        v28 = v20 | 0x10000000;
        if (a4[1] == 36 || (v77 = a4[1], v29 = sub_10002E408(a7), v28 = v20 | 0x10000000, v77 == 37) && v29)
        {
          v30 = v28 & 0xFFFFFFFF3FFF1FFFLL | 0x2000;
        }

        else
        {
          v30 = v20 & 0xFFFFFFFF2FFF1FFFLL | 0x10000000;
        }

        v80 = v30;
        v31 = sub_10002E408(a7);
        v32 = 1024;
        if (!v31)
        {
          v32 = 0;
        }

        v21 = v20 & 0xC0000000;
        v26 = v32 | v80 & 0xFFFFFFFFFFFFE3FFLL;
        a5 = v74;
      }
    }
  }

  v33 = a9;
  if ((v26 & 0x10000000) != 0)
  {
    v83 = 0;
    if ((v26 & 0x8000000) != 0)
    {
      goto LABEL_47;
    }
  }

  else
  {
    if (*a4 == 11 || a4[1] == 11)
    {
      v34 = 2;
    }

    else
    {
      v34 = 1;
    }

    v83 = v34;
    if ((v26 & 0x8000000) != 0)
    {
      goto LABEL_47;
    }
  }

  if ((a10 & 1) == 0)
  {
    if (*(v11 + 627))
    {
      return 30;
    }

    v75 = v12;
    v81 = v26;
    v35 = v21;
    v36 = a5;
    v37 = sub_10004D1DC(v11, a9);
    a5 = v36;
    v21 = v35;
    v19 = a10;
    v26 = v81;
    v12 = v75;
    v33 = a9;
    if (!v37)
    {
      return 22;
    }
  }

LABEL_47:
  v38 = v33;
  if (a8)
  {
    v38 = a8;
    if (a8 > v33)
    {
      return 22;
    }
  }

  v71 = v38;
  v76 = a5;
  v78 = v33;
  v79 = v21;
  v82 = v26;
  if (a3)
  {
    v39 = 1;
  }

  else
  {
    v39 = v19;
  }

  v86 = 0xAAAAAAAAAAAAAAAALL;
  if ((v20 & 0x40000000) == 0)
  {
    v39 = 1;
  }

  v72 = v39;
  if (v39)
  {
    v73 = 0;
    if (v21)
    {
      goto LABEL_67;
    }

    goto LABEL_61;
  }

  v73 = (v16 + *(*(v11 + 376) + 36) - 1) / *(*(v11 + 376) + 36);
  v40 = sub_100046AE4(v12, 72);
  if (v40)
  {
    v24 = v40;
    if (*(v12 + 36) != 13)
    {
      v43 = *(v12 + 384) + 212;
    }

    v69 = a4[1];
    v67 = *a4;
    sub_100012178("%s:%d: %s flags 0x%llx type 0x%x/0x%x error allocating new physical location %d\n");
    return v24;
  }

  v33 = v78;
  if (!v79)
  {
LABEL_61:
    v41 = (v16 + *(*(v11 + 376) + 36) - 1) / *(*(v11 + 376) + 36);
    v42 = sub_10004B638(v12, 0x48u, v41, v33, &v84);
    if (v42)
    {
      v24 = v42;
      if (*(v12 + 36) != 13)
      {
        v57 = *(v12 + 384) + 212;
      }

      v68 = *a4;
      v70 = a4[1];
      sub_100012178("%s:%d: %s flags 0x%llx type 0x%x/0x%x error reserving %d blocks of space: %d\n", "obj_create_internal");
      return v24;
    }

    v73 = v41;
  }

LABEL_67:
  pthread_mutex_lock(a1);
  v44 = sub_100039008(a1, a4[3], *a4, v16, v82, 0, &v86);
  if (v44)
  {
    v24 = v44;
LABEL_105:
    sub_1000357DC(a1);
    if ((v72 & 1) == 0)
    {
      sub_10004A66C(v12, 64, v83, v73, v78);
    }

    if (!v79)
    {
      sub_10004B89C(v12, v84, v73);
    }

    return v24;
  }

  v45 = v86;
  v46 = 66;
  if ((v82 & 0x40) != 0)
  {
    v46 = 0x100000004ALL;
  }

  v47 = *(v86 + 16) | v82 & 0xFFFFFC00 | v46 | (v82 << 14) & 0x400000000000;
  *(v86 + 16) = v47;
  v49 = *a4;
  v48 = a4[1];
  v50 = v45;
  v51 = v49 | v82 & 0xFFFF0000;
  *(v45 + 36) = v51;
  *(v45 + 40) = v48;
  if (!a7 || (v52 = *(a7 + 504)) == 0)
  {
    v52 = a7;
  }

  *(v45 + 8) = v52;
  *(v45 + 120) = v71;
  *(v45 + 144) = 0;
  if ((v20 & 0x80000000) == 0)
  {
    if ((v20 & 0x40000000) != 0)
    {
      if (a3)
      {
        v83 = a3;
      }

      else
      {
        a3 = v83;
      }

      *(v45 + 128) = a3;
    }

    else
    {
      if (v79)
      {
        goto LABEL_97;
      }

      v55 = 0x800000120;
      if ((v84 & 0x10) == 0)
      {
        v55 = 0x400000120;
      }

      *(v50 + 16) = v55 & 0xFFFFEFFFFFFFFFFFLL | ((((v84 & 0x10000) >> 16) & 1) << 44) | v47;
      if (!a3)
      {
        v56 = *&a1[6].__opaque[8];
        *(v50 + 112) = v56;
        *&a1[6].__opaque[8] = v56 + 1;
        if (byte_100070598 != 1 || qword_1000705A0 == v51 && qword_1000705A8 == v48)
        {
          goto LABEL_97;
        }

        v54 = "virtual";
        goto LABEL_79;
      }
    }

LABEL_96:
    *(v50 + 112) = a3;
    goto LABEL_97;
  }

  if (a3)
  {
    goto LABEL_96;
  }

  if ((v82 & 0x8000000) != 0)
  {
    v58 = *&a1[6].__opaque[16];
    *(v45 + 112) = v58;
    *&a1[6].__opaque[16] = v58 + 1;
    goto LABEL_97;
  }

  v53 = *&a1[6].__opaque[8];
  *(v45 + 112) = v53;
  *&a1[6].__opaque[8] = v53 + 1;
  if (byte_100070598 == 1)
  {
    v54 = "ephemeral";
LABEL_79:
    sub_10003D7FC(v50, v54);
  }

LABEL_97:
  if ((*(v50 + 19) & 0x20) == 0)
  {
    v59 = *(v50 + 56);
    *(v59 + 24) = *(v50 + 36);
    *(v59 + 8) = *(v50 + 112);
  }

  if ((~atomic_fetch_add_explicit((v50 + 24), 1uLL, memory_order_relaxed) & 0xFFFFFF) == 0)
  {
    panic("Reference count overflowed for object %p!\n", v50);
  }

  v60 = sub_100039ABC(*(v50 + 36), &v85);
  if (v60 || (v61 = v85, *v85) && (v60 = (*v85)(*(v50 + 56), v16, v76), v60) || (v62 = v61[1]) != 0 && (v60 = v62(v50, v76), v60))
  {
    v24 = v60;
    if ((v82 & 0x80000000) != 0)
    {
      sub_100035774(a1, v82, v16, -1);
    }

    else
    {
      --*&a1[10].__opaque[36];
    }

    sub_10003B9B4(v50, 0);
    goto LABEL_105;
  }

  sub_100039A7C(v50, v82);
  v63 = (*a1[11].__opaque + 8 * (*(v50 + 112) & LODWORD(a1[11].__sig)));
  v64 = *v63;
  *(v50 + 72) = *v63;
  if (v64)
  {
    *(v64 + 80) = v50 + 72;
  }

  *v63 = v50;
  *(v50 + 80) = v63;
  *(v50 + 16) |= 1uLL;
  if ((v82 & 0x80000000) != 0)
  {
    *(v50 + 88) = 0;
    v65 = 768;
    if ((v82 & 0x8000000) == 0)
    {
      v65 = 752;
    }

    v66 = *(&a1->__sig + v65);
    *(v50 + 96) = v66;
    *v66 = v50;
    *(&a1->__sig + v65) = v50 + 88;
  }

  if ((v19 & 1) == 0)
  {
    sub_10003CDB8(v50, v78, 0);
  }

  sub_1000357DC(a1);
  if ((v82 & 4) != 0)
  {
    sub_10003BBDC(v50, 2);
  }

  v24 = 0;
  *a11 = v50;
  return v24;
}

uint64_t sub_100038B2C(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4)
{
  v8 = *(a1 + 56);
  v9 = *a1;
  v32[0] = 0;
  v32[1] = 0;
  v31 = 0;
  if (a4)
  {
    *a4 = 0;
  }

  if ((a2 & 0x210) == 0)
  {
    v25 = sub_100038E6C(*(a1 + 36), &v31, v32);
    if (v25)
    {
      return v25;
    }
  }

  v10 = *(a1 + 16);
  if ((v10 & 2) != 0)
  {
    return 22;
  }

  v33 = 0xAAAAAAAAAAAAAAAALL;
  v11 = v10 | 2;
  *(a1 + 16) = v10 | 2;
  if (*a3)
  {
    v33 = *a3;
    goto LABEL_7;
  }

  v25 = sub_100039008(v9, *(a1 + 44), *(a1 + 36), *(a1 + 48), v10 & 0xC0000000, a4, &v33);
  if (v25)
  {
    return v25;
  }

  v11 = *(a1 + 16);
LABEL_7:
  LODWORD(v12) = v11 & 0xFFFFFFFB;
  *(a1 + 16) = v11 & 0xFFFFFE7FFFFFFFFBLL;
  if (!*(a1 + 52))
  {
    LODWORD(v12) = v11 & 0xFFFFFFF9;
    *(a1 + 16) = v11 & 0xFFFFFE7FFFFFFFF9;
  }

  if ((v11 & 4) != 0)
  {
    j__pthread_cond_broadcast((*a1 + 1328));
    v12 = *(a1 + 16);
  }

  v13 = v33;
  *(v33 + 36) = *(a1 + 36);
  v14 = *(a1 + 8);
  *(v13 + 7) = *(a1 + 112);
  v13[16] = *(a1 + 128);
  v15 = v12 & 0xFFFFFC00 | v13[2];
  v16 = v15 | 0x40000000002;
  v13[1] = v14;
  v13[2] = v15 | 0x40000000002;
  if ((a2 & 0x50) != 0)
  {
    v16 = v15 | 0x4000000000ALL;
    v13[2] = v15 | 0x4000000000ALL;
    if ((a2 & 0x40) != 0)
    {
      v16 = v15 | 0x4100000000ALL;
      v13[2] = v15 | 0x4100000000ALL;
    }
  }

  if ((a2 & 0x100000200) != 0)
  {
    v13[2] = v16 | (a2 << 14) & 0x400000000000 | (a2 << 34) & 0x80000000000;
  }

  memcpy(v13[7], v8, *(a1 + 48));
  if ((a2 & 0x210) != 0)
  {
    goto LABEL_17;
  }

  v30 = 0;
  memcpy(v13 + 47, (a1 + 376), *(a1 + 44) - 376);
  v27 = sub_100039ABC(*(a1 + 36), &v30);
  if (v27)
  {
    v24 = v27;
    goto LABEL_38;
  }

  v29 = *(v30 + 8);
  if (v29)
  {
    v24 = v29(v13, 0);
    if (v24)
    {
LABEL_38:
      v28 = v13[2];
      if ((v28 & 0x80000000) != 0)
      {
        sub_100035774(v9, v28, *(v13 + 12), -1);
      }

      else
      {
        --*(v9 + 684);
      }

      if (*a3)
      {
        v13[2] &= ~0x40000000000uLL;
      }

      else
      {
        sub_10003B9B4(v13, 0);
      }

      return v24;
    }
  }

LABEL_17:
  v17 = (*(v9 + 712) + 8 * (v13[14] & *(v9 + 704)));
  v18 = *v17;
  v13[9] = *v17;
  if (v18)
  {
    *(v18 + 80) = v13 + 9;
  }

  *v17 = v13;
  v13[10] = v17;
  v19 = v13[2];
  v13[2] = v19 | 1;
  v20 = *(a1 + 16);
  if ((v20 & 0x80000000) != 0)
  {
    v13[11] = 0;
    v21 = (v20 & 0x8000000) == 0;
    v22 = 768;
    if (v21)
    {
      v22 = 752;
    }

    v23 = *(v9 + v22);
    v13[12] = v23;
    *v23 = v13;
    *(v9 + v22) = v13 + 11;
  }

  v13[2] = v19 & 0xFFFFFA7FFFFFFFFALL | 1;
  if ((a2 & 0x10) == 0 && !*(v13 + 13))
  {
    v13[2] = v19 & 0xFFFFFA7FFFFFFFF8 | 1;
  }

  if ((v19 & 4) != 0)
  {
    j__pthread_cond_broadcast((*v13 + 1328));
  }

  if ((~atomic_fetch_add_explicit(v13 + 3, 1uLL, memory_order_relaxed) & 0xFFFFFF) == 0)
  {
    panic("Reference count overflowed for object %p!\n", v13);
  }

  v24 = 0;
  *a3 = v13;
  return v24;
}

uint64_t sub_100038E6C(int a1, unsigned int *a2, uint64_t a3)
{
  v3 = 22;
  switch(a1)
  {
    case 1:
      v4 = &xmmword_10006A7B0;
      goto LABEL_17;
    case 2:
      *a3 = xmmword_10006A898;
      *a3 = 2;
      goto LABEL_18;
    case 3:
      v4 = &xmmword_10006A898;
      goto LABEL_17;
    case 5:
      v4 = &xmmword_10006A930;
      goto LABEL_17;
    case 6:
      v4 = &xmmword_10006A940;
      goto LABEL_17;
    case 7:
      v4 = &xmmword_10006A950;
      goto LABEL_17;
    case 8:
      v4 = &xmmword_10006A960;
      goto LABEL_17;
    case 11:
      v4 = &xmmword_10006A8D8;
      goto LABEL_17;
    case 13:
      v4 = &xmmword_10006A8A8;
      goto LABEL_17;
    case 17:
      v4 = &xmmword_10006A7C0;
      goto LABEL_17;
    case 18:
      v4 = &xmmword_10006A7D0;
      goto LABEL_17;
    case 25:
      v4 = &xmmword_100062680;
      goto LABEL_17;
    case 27:
      v4 = &xmmword_100062670;
      goto LABEL_17;
    case 29:
      v4 = &xmmword_100062658;
      goto LABEL_17;
    case 30:
      v4 = &xmmword_100062618;
LABEL_17:
      *a3 = *v4;
LABEL_18:
      v3 = 0;
      v5 = *a2 | a1 & 0xFFFF0000;
      *a2 = v5;
      *a2 = v5 | (*(a3 + 2) << 16);
      break;
    default:
      return v3;
  }

  return v3;
}

uint64_t sub_100039008(uint64_t a1, unsigned int a2, int a3, unsigned int a4, int a5, _BYTE *a6, uint64_t *a7)
{
  v7 = a6;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  if (a6)
  {
    *a6 = 0;
  }

  if (a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = 376;
  }

  if (a4)
  {
    v13 = 0;
  }

  else
  {
    v14 = *(a1 + 392);
    if (!v14)
    {
      v9 = 0;
      v13 = 22;
      goto LABEL_11;
    }

    v13 = 0;
    v9 = *(*(v14 + 376) + 36);
  }

  LOBYTE(v14) = 1;
LABEL_11:
  v15 = *(a1 + 392);
  if (v12 < 0x178)
  {
    v13 = 22;
    if (!v15)
    {
      goto LABEL_23;
    }

LABEL_19:
    v64 = *(v15 + 384) + 212;
    sub_100012178("%s:%d: %s invalid object size: %d size_phys %d\n");
    return v13;
  }

  if (v15)
  {
    if (v9 % *(*(v15 + 376) + 36))
    {
      LOBYTE(v14) = 0;
      v13 = 22;
    }

    else
    {
      v13 = v13;
    }

    if ((v14 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if ((v14 & 1) == 0)
  {
LABEL_23:
    sub_100012178("%s:%d: invalid object size: %d size_phys %d\n");
    return v13;
  }

  v71 = v12;
  v68 = v9;
  if (a5 < 0)
  {
    v67 = 0;
    v20 = 0;
    v65 = 0;
    goto LABEL_95;
  }

  v16 = 0;
  v67 = 0;
  v17 = 0;
  v65 = 0;
  v73 = 0;
  v18 = *(a1 + 684);
  while (2)
  {
    if (v18 < *(a1 + 676))
    {
      v21 = 0;
      goto LABEL_93;
    }

    v22 = (v8 & 0x40000000) == 0;
    if ((v8 & 0x40000000) != 0)
    {
      v23 = (a1 + 792);
    }

    else
    {
      v23 = (a1 + 776);
    }

    if (v22)
    {
      v24 = (a1 + 792);
    }

    else
    {
      v24 = (a1 + 776);
    }

    while (1)
    {
      v25 = pthread_rwlock_wrlock((a1 + 128));
      if (v25)
      {
        panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_executables/nx/obj.c", 2308, v25);
      }

      v26 = *(a1 + 808);
      if (v26)
      {
        if ((*(v26 + 32) & 0x10) != 0)
        {
          sub_10003D5DC(a1);
          v28 = pthread_rwlock_unlock((a1 + 128));
          if (v28)
          {
            panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_executables/nx/obj.c", 2313, v28);
          }

          goto LABEL_51;
        }

        if (*(a1 + 924) > *(a1 + 696))
        {
          goto LABEL_73;
        }

        __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
        __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
        clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
        if (__tp.tv_sec - *(v26 + 160) > 29)
        {
          goto LABEL_73;
        }
      }

      v26 = *v23;
      if (*v23)
      {
        if ((*(v26 + 32) & 0x10) != 0)
        {
          goto LABEL_49;
        }

        v27 = *v24;
        if (!*v24)
        {
          break;
        }
      }

      else
      {
        v27 = *v24;
        if (!*v24)
        {
          v21 = 0;
          v26 = 0;
          goto LABEL_62;
        }
      }

      if ((*(v27 + 32) & 0x10) == 0)
      {
        break;
      }

LABEL_49:
      sub_10003D5DC(a1);
      v29 = pthread_rwlock_unlock((a1 + 128));
      if (v29)
      {
        panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_executables/nx/obj.c", 2364, v29);
      }

LABEL_51:
      if (*(a1 + 684) < *(a1 + 676))
      {
        v21 = 0;
        v8 = a5;
        v12 = v71;
        v10 = a3;
        v9 = v68;
        goto LABEL_93;
      }
    }

    if ((*(a1 + 1320) & 4) != 0)
    {
      goto LABEL_58;
    }

    __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    if (!v26 || __tp.tv_sec - *(v26 + 160) <= 599)
    {
      if (v27)
      {
        if (__tp.tv_sec - *(v27 + 160) > 599)
        {
          goto LABEL_68;
        }

LABEL_58:
        if (*(a1 + 684) < *(a1 + 680))
        {
          goto LABEL_59;
        }

        if (v27)
        {
          if (v26)
          {
            if (*(v27 + 160) < *(v26 + 160))
            {
              v26 = v27;
            }

            goto LABEL_73;
          }

LABEL_68:
          v26 = v27;
          goto LABEL_73;
        }

        if (v26)
        {
          goto LABEL_73;
        }

LABEL_59:
        v21 = 0;
      }

      else
      {
        v21 = 0;
        if (v26 && *(a1 + 684) >= *(a1 + 680))
        {
          goto LABEL_73;
        }
      }

      v26 = 0;
LABEL_62:
      v8 = a5;
      v10 = a3;
      v9 = v68;
      goto LABEL_88;
    }

LABEL_73:
    v9 = v68;
    if (*(v26 + 44) == v71 && *(v26 + 48) == v68)
    {
      sub_10003D748(v26);
      v8 = a5;
      v10 = a3;
      if (v16)
      {
        sub_10003518C(v73, v68, a5, a1);
        j__pthread_rwlock_destroy((v16 + 176));
        sub_10003D914(v16, a3, v71);
        v73 = 0;
        v65 = 1;
      }

      v30 = *(v26 + 16);
      v67 = 1;
      if (v30)
      {
        v31 = *(v26 + 72);
        v32 = *(v26 + 80);
        if (v31)
        {
          *(v31 + 80) = v32;
        }

        v16 = 0;
        *v32 = v31;
        *(v26 + 16) = v30 & 0xFFFFFFFFFFFFFFFELL;
        v67 = 1;
      }

      else
      {
        v16 = 0;
      }

      v21 = v26;
LABEL_87:
      v26 = 0;
    }

    else
    {
      v8 = a5;
      v10 = a3;
      if ((*(v26 + 21) & 0x40) == 0)
      {
        v67 = 1;
        if (*(a1 + 684) < *(a1 + 680))
        {
          v21 = 0;
          goto LABEL_87;
        }
      }

      sub_10003D748(v26);
      v21 = 0;
      --*(a1 + 684);
      v67 = 1;
    }

LABEL_88:
    v33 = pthread_rwlock_unlock((a1 + 128));
    if (v33)
    {
      panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_executables/nx/obj.c", 2427, v33);
    }

    if (v26)
    {
      sub_10003B9B4(v26, 0);
    }

    v12 = v71;
LABEL_93:
    if (v21 | v16)
    {
      if (v21)
      {
        v20 = v17;
        v86 = 0xAAAAAAAAAAAAAAAALL;
        v41.tv_sec = 0xAAAAAAAAAAAAAAAALL;
        v41.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
        v84 = v41;
        v85 = v41;
        v82 = v41;
        v83 = v41;
        v80 = v41;
        v81 = v41;
        v78 = v41;
        v79 = v41;
        v76 = v41;
        v77 = v41;
        __tp = v41;
        v75 = v41;
        v42 = sub_10003D9FC(v21);
        if (v42)
        {
          v43 = v42;
          sub_1000357DC(a1);
          if (a6)
          {
            *a6 = 1;
          }

          v44 = v43(v21);
          if (v44)
          {
            v45 = *(v21 + 8);
            if (v45)
            {
              v46 = (v45 + 4040);
            }

            else
            {
              v46 = (*(*(*v21 + 392) + 384) + 212);
            }

            sub_100012178("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error destroying: %d\n", "obj_alloc", 2523, v46, *(v21 + 112), *(v21 + 16), *(v21 + 32), *(v21 + 36), *(v21 + 40), v44);
          }

          pthread_mutex_lock(a1);
        }

        v47 = *(v21 + 56);
        v48 = *(v21 + 352);
        v84 = *(v21 + 336);
        v85 = v48;
        v86 = *(v21 + 368);
        v49 = *(v21 + 288);
        v80 = *(v21 + 272);
        v81 = v49;
        v50 = *(v21 + 320);
        v82 = *(v21 + 304);
        v83 = v50;
        v51 = *(v21 + 224);
        v76 = *(v21 + 208);
        v77 = v51;
        v52 = *(v21 + 256);
        v78 = *(v21 + 240);
        v79 = v52;
        v53 = *(v21 + 192);
        __tp = *(v21 + 176);
        v75 = v53;
        v73 = v47;
        bzero(v47, v9);
        bzero(v21, v12);
        v54 = v85;
        *(v21 + 336) = v84;
        *(v21 + 352) = v54;
        *(v21 + 368) = v86;
        v55 = v81;
        *(v21 + 272) = v80;
        *(v21 + 288) = v55;
        v56 = v83;
        *(v21 + 304) = v82;
        *(v21 + 320) = v56;
        v57 = v77;
        *(v21 + 208) = v76;
        *(v21 + 224) = v57;
        v58 = v79;
        *(v21 + 240) = v78;
        *(v21 + 256) = v58;
        v59 = v75;
        v17 = v20;
        *(v21 + 176) = __tp;
        *(v21 + 192) = v59;
      }

      else
      {
        ++*(a1 + 684);
        v21 = v16;
        v20 = v17;
      }

      break;
    }

    v20 = v17;
    v7 = a6;
LABEL_95:
    sub_1000357DC(a1);
    if (v7)
    {
      *v7 = 1;
    }

    v34 = sub_100012214(v9, *(a1 + 952));
    sub_10003DD88((a1 + 976), v8, v34, v9);
    v73 = v34;
    sub_10003DD88((qword_100070590 + 136), v8, v34, v9);
    if (v10 > 0xCu)
    {
      if (v10 <= 0x18u)
      {
        if (v10 == 13)
        {
          v35 = 0x10B004081236861;
          v36 = 6256;
          goto LABEL_127;
        }

        if (v10 != 17)
        {
          if (v10 != 18)
          {
            goto LABEL_119;
          }

          v35 = 0x10A0040009CC2E3;
          v36 = 384;
          goto LABEL_127;
        }

        v38 = -1969217434;
      }

      else
      {
        if (v10 <= 0x1Cu)
        {
          if (v10 == 25)
          {
            v35 = 0x10A0040906DED57;
            v36 = 416;
            goto LABEL_127;
          }

          if (v10 != 27)
          {
            goto LABEL_119;
          }

          v35 = 0x10B0040200AD5F0;
          goto LABEL_123;
        }

        if (v10 == 29)
        {
          v35 = 0x10A00404C324ACELL;
LABEL_123:
          v36 = 392;
          goto LABEL_127;
        }

        if (v10 != 30)
        {
          goto LABEL_119;
        }

        v38 = -1209887300;
      }

      v35 = v38 | 0x10B004000000000;
      v36 = 400;
      goto LABEL_127;
    }

    if (v10 > 5u)
    {
      if (v10 - 6 < 3)
      {
        goto LABEL_109;
      }

      if (v10 != 11)
      {
        goto LABEL_119;
      }

      v35 = 0x10A0040FDA1D44DLL;
      v36 = 496;
LABEL_127:
      v37 = sub_1000122F4(1uLL, v36, v35);
    }

    else
    {
      if (v10 - 2 >= 2)
      {
        if (v10 == 1)
        {
          v35 = 0x10A0040F77FBBF2;
          v36 = 1192;
        }

        else
        {
          if (v10 == 5)
          {
            v35 = 0x10B00403059A9A9;
            v36 = 1664;
            goto LABEL_127;
          }

LABEL_119:
          v35 = 0x10A00402D31E437;
          v36 = 376;
        }

        goto LABEL_127;
      }

LABEL_109:
      v37 = sub_1000122A0(4u);
    }

    v21 = v37;
    v39 = v73;
    if (!v73 || !v21)
    {
      v13 = 12;
      if (!v73)
      {
        goto LABEL_145;
      }

      goto LABEL_144;
    }

    *(v21 + 24) = 0;
    v40 = sub_100011930((v21 + 176));
    if (v40)
    {
      v13 = v40;
      v39 = v73;
LABEL_144:
      sub_10003518C(v39, v9, v8, a1);
LABEL_145:
      if (v21)
      {
        sub_10003D914(v21, v10, v12);
      }

      pthread_mutex_lock(a1);
      return v13;
    }

    pthread_mutex_lock(a1);
    if (v8 < 0)
    {
      v17 = 1;
      sub_100035774(a1, v8, v9, 1);
    }

    else
    {
      v18 = *(a1 + 684);
      v17 = 1;
      if (*(a1 + 680) - 1 < v18)
      {
        v16 = v21;
        continue;
      }

      *(a1 + 684) = v18 + 1;
    }

    break;
  }

  v60 = a7;
  *v21 = a1;
  *(v21 + 36) = v10;
  *(v21 + 44) = v12;
  *(v21 + 48) = v9;
  *(v21 + 56) = v73;
  *(v21 + 88) = 3735928559;
  *(v21 + 104) = 3735928559;
  *(v21 + 160) = -1;
  if ((v8 & 0x80000000) == 0)
  {
    atomic_fetch_add_explicit((a1 + 1056), 1uLL, memory_order_relaxed);
    if (v17)
    {
      atomic_fetch_add_explicit((a1 + 1064), 1uLL, memory_order_relaxed);
      if (v20)
      {
        atomic_fetch_add_explicit((a1 + 1072), 1uLL, memory_order_relaxed);
      }

      v61 = 104;
      if (v65)
      {
        v61 = 112;
      }

      atomic_fetch_add_explicit((a1 + 976 + v61), 1uLL, memory_order_relaxed);
    }

    if (v67)
    {
      atomic_fetch_add_explicit((a1 + 1096), 1uLL, memory_order_relaxed);
    }

    v62 = qword_100070590;
    atomic_fetch_add_explicit((qword_100070590 + 216), 1uLL, memory_order_relaxed);
    if (v17)
    {
      atomic_fetch_add_explicit(v62 + 28, 1uLL, memory_order_relaxed);
      if (v20)
      {
        atomic_fetch_add_explicit(v62 + 29, 1uLL, memory_order_relaxed);
      }

      v63 = 13;
      if (v65)
      {
        v63 = 14;
      }

      atomic_fetch_add_explicit(&v62[v63 + 17], 1uLL, memory_order_relaxed);
      v60 = a7;
    }

    if (v67)
    {
      atomic_fetch_add_explicit(v62 + 32, 1uLL, memory_order_relaxed);
    }
  }

  v13 = 0;
  *v60 = v21;
  return v13;
}

uint64_t sub_100039A7C(uint64_t result, char a2)
{
  v2 = *(result + 16);
  *(result + 16) = v2 & 0xFFFFFE7FFFFFFFFBLL;
  if ((a2 & 0x10) == 0 && !*(result + 52))
  {
    *(result + 16) = v2 & 0xFFFFFE7FFFFFFFF9;
  }

  if ((v2 & 4) != 0)
  {
    return j__pthread_cond_broadcast((*result + 1328));
  }

  return result;
}

uint64_t sub_100039ABC(__int16 a1, void *a2)
{
  v2 = a1 - 1;
  if ((a1 - 1) > 0x1Du || ((0x350314F7u >> v2) & 1) == 0)
  {
    return 22;
  }

  result = 0;
  *a2 = off_10006C8E8[v2];
  return result;
}

void sub_100039B00(uint64_t *a1, uint64_t a2, int a3)
{
  v6 = *a1;
  if ((*(a1 + 19) & 8) == 0 && !sub_10004D1DC(*(v6 + 392), a2))
  {
    panic("can not delete an object w/a non-current xid %lld o == %p\n", a2, a1);
  }

  pthread_mutex_lock(v6);
  while (1)
  {
    v7 = a1[2];
    if ((v7 & 0x20000000000) == 0)
    {
      break;
    }

    a1[2] = v7 | 0x80;
    sub_100011A68((v6 + 1328), v6, 2, 0);
  }

  a1[2] = v7 | 0x10;
  a1[18] = a2;
  if ((v7 & 0x80000000) != 0)
  {
    if (a3)
    {
      a1[2] = v7 & 0xFFFFFDEFFFFFFFE7 | 0x18;
    }

    sub_1000357DC(v6);
  }

  else
  {
    v8 = a1[19];
    if (!v8)
    {
      v8 = a1[16];
    }

    v27 = v8;
    a1[16] = 0;
    a1[19] = 0;
    if (atomic_fetch_and_explicit(a1 + 8, 0xFFFFFFFE, memory_order_relaxed))
    {
      v9 = pthread_rwlock_wrlock((v6 + 128));
      if (v9)
      {
        panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_executables/nx/obj.c", 3186, v9);
      }

      v10 = a1[11];
      if (v10 != 3735928559)
      {
        if (*(v6 + 888) == a1)
        {
          *(v6 + 888) = v10;
        }

        v11 = a1[12];
        v12 = (v10 + 96);
        if ((*(a1 + 19) & 0x40) != 0)
        {
          if (!v10)
          {
            v12 = (v6 + 848);
          }

          *v12 = v11;
          *v11 = v10;
          --*(v6 + 912);
        }

        else
        {
          if (!v10)
          {
            v12 = (v6 + 832);
          }

          *v12 = v11;
          *v11 = v10;
          --*(v6 + 908);
        }

        a1[11] = 3735928559;
      }

      v13 = pthread_rwlock_unlock((v6 + 128));
      if (v13)
      {
        panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_executables/nx/obj.c", 3200, v13);
      }
    }

    v14 = a1[1];
    if (!v14)
    {
      v14 = *(v6 + 392);
    }

    v15 = a1[2];
    v16 = a1[15];
    if (a3)
    {
      a1[2] = v15 & 0xFFFFFFEFFFFFFFF7 | 8;
    }

    v17 = a1[18];
    v18 = *(a1 + 12);
    v19 = a1[14];
    v21 = *(a1 + 9);
    v20 = *(a1 + 10);
    sub_1000357DC(v6);
    if (!(v8 | v15 & 0x40))
    {
      v22 = sub_10004022C(v14, v19, v16, &v27, 0, 0, 0);
      if (v22)
      {
        if (*(v14 + 36) == 13)
        {
          v23 = (v14 + 4040);
        }

        else
        {
          v23 = (*(v14 + 384) + 212);
        }

        sub_100012178("%s:%d: %s oid 0x%llx flags 0x%llx type 0x%x/0x%x error getting mapping to free %d\n", "obj_delete_internal", 3222, v23, v19, v15, v21, v20, v22);
      }

      v8 = v27;
    }

    if (v8)
    {
      if ((v15 & 0x40000000) != 0)
      {
        v24 = *(*(*(v6 + 392) + 376) + 36);
        if (sub_10004A66C(v14, 64, v8, (v18 + v24 - 1) / v24, v17))
        {
          if (*(v14 + 36) != 13)
          {
            v26 = *(v14 + 384) + 212;
          }

          sub_100012178("%s:%d: %s oid 0x%llx flags 0x%llx type 0x%x/0x%x error freeing space %d\n", "obj_delete_internal");
        }
      }

      else if (sub_10003FF18(v14, v19, v16, v8, v18, 1, v17))
      {
        if (*(v14 + 36) != 13)
        {
          v25 = *(v14 + 384) + 212;
        }

        sub_100012178("%s:%d: %s oid 0x%llx flags 0x%llx type 0x%x/0x%x error deleting mapping %d\n", "obj_delete_internal");
      }
    }
  }
}

void sub_100039E98(uint64_t a1)
{
  v2 = *a1;
  pthread_mutex_lock(*a1);
  *(a1 + 16) = *(a1 + 16) & 0xFFFFFFEFFFFFFFF7 | 8;

  sub_1000357DC(v2);
}

uint64_t sub_100039EE8(uint64_t a1, int a2, int a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v12 = *(a1 + 392);
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v28[0] = 0;
  v28[1] = 0;
  v13 = sub_100038E6C(a2, &v29, v28);
  if (!v13)
  {
    v27 = 0xAAAAAAAAAAAAAAAALL;
    if (a4)
    {
      v15 = sub_10003A1E8(a1, 0, a4, &xmmword_10006A8A8, 0, 0, 0, 0, &v31);
      if (v15)
      {
        v13 = v15;
        sub_100012178("%s:%d: %s unable to get fs object 0x%llx: %d\n", "obj_delete_and_free_by_oid", 3310, (*(v12 + 384) + 212), a4, v15);
        return v13;
      }

      v16 = v31;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v12;
    }

    v18 = v29;
    v19 = sub_10003A1E8(a1, v29, a5, 0, 0, v16, 0, 0, &v30);
    if (v19)
    {
      if ((v18 & 0x80000000) != 0)
      {
        v13 = v19;
      }

      else if (v18 >> 30)
      {
        v22 = sub_10004A66C(v17, 64, a5, (a3 + *(*(v12 + 376) + 36) - 1) / *(*(v12 + 376) + 36), a6);
        v13 = v22;
        if (v22)
        {
          if (*(v17 + 36) == 13)
          {
            sub_100012178("%s:%d: %s oid 0x%llx flags 0x%x type 0x%x error freeing space %d\n", "obj_delete_and_free_by_oid", 3332, (v17 + 4040), a5, v18, a2, v22);
          }

          else
          {
            sub_100012178("%s:%d: %s oid 0x%llx flags 0x%x type 0x%x error freeing space %d\n", "obj_delete_and_free_by_oid", 3332, (*(v17 + 384) + 212), a5, v18, a2, v22);
          }
        }
      }

      else
      {
        v26 = -1431655766;
        v25 = 0xAAAAAAAAAAAAAAAALL;
        v20 = sub_10004022C(v17, a5, 0, &v27, &v26, 0, &v25);
        if (v20)
        {
          v13 = v20;
          if (*(v17 + 36) != 13)
          {
            v23 = *(v17 + 384) + 212;
          }

          sub_100012178("%s:%d: %s oid 0x%llx flags 0x%x type 0x%x error getting mapping to free %d\n");
        }

        else
        {
          v13 = sub_10003FF18(v17, a5, v25, v27, a3, 1, a6);
          if (v13)
          {
            if (*(v17 + 36) != 13)
            {
              v24 = *(v17 + 384) + 212;
            }

            sub_100012178("%s:%d: %s oid 0x%llx flags 0x%x type 0x%x error deleting mapping %d\n");
          }
        }

        v16 = v31;
      }
    }

    else
    {
      v21 = v30;
      sub_100039B00(v30, a6, 1);
      sub_100037058(v21);
      v13 = 0;
    }

    if (v16)
    {
      sub_100037058(v16);
    }
  }

  return v13;
}

uint64_t sub_10003A1E8(uint64_t a1, uint64_t a2, unint64_t a3, int *a4, _WORD *a5, uint64_t a6, unint64_t a7, unint64_t a8, uint64_t *a9)
{
  v9 = a2;
  v114 = a2;
  v111 = a7 & (a2 << 60 >> 63);
  v112 = 0;
  v109 = 0;
  v110 = 16000;
  v106 = -86;
  v105 = -86;
  *a9 = 0;
  if ((~a2 & 0xC0000000) == 0)
  {
    return 22;
  }

  v13 = a7;
  if ((a2 & 0x8000001) == 1)
  {
    v19 = sub_10004D1DC(*(a1 + 392), a8);
    v10 = 22;
    if ((~v9 & 0x180) == 0 || !v19)
    {
      return v10;
    }
  }

  else if ((~a2 & 0x180) == 0)
  {
    return 22;
  }

  if ((~v9 & 0x81) == 0 || (v9 & 0x100) != 0 && (v9 & 0x15) != 0)
  {
    return 22;
  }

  v10 = 22;
  if ((v9 & 0x210) == 0x200 || !a3)
  {
    return v10;
  }

  if (*(a1 + 1376))
  {
    pthread_mutex_lock(a1);
    v108 = 2;
    sub_10003AEE8(a1, &v105);
    if (v105 == 1)
    {
      sub_1000357DC(a1);
    }
  }

  if (a4)
  {
    v9 |= *(a4 + 1) << 16;
    v114 = v9;
  }

  v20 = (v9 >> 30) & 2;
  v21 = (v9 >> 30) | (v20 >> 1);
  v22 = (v9 & 0x40000000) != 0 || ((v9 >> 30) & 2) != 0 ? 0 : 4;
  if (((v9 >> 30) & 1) + (((v9 >> 30) & 2) >> 1) + ((v9 & 0x40000000) == 0 && ((v9 >> 30) & 2) == 0) != 1 || (((v9 & 0x200) != 0) & v21) != 0)
  {
    return 22;
  }

  if ((v9 & 0x40000000) != 0 || ((v9 >> 30) & 2) != 0)
  {
    v13 = 0;
    v111 = 0;
  }

  if ((v9 & 0x8000000) != 0)
  {
    if (v20)
    {
      v23 = *(a1 + 408);
      if (v23 <= *(a1 + 400))
      {
        v23 = *(a1 + 400);
      }

      goto LABEL_36;
    }

    return 22;
  }

  if (v9 & 1) != 0 && (*(*(a1 + 392) + 627))
  {
    return 30;
  }

  if ((v9 >> 30))
  {
    goto LABEL_37;
  }

  v23 = *(a1 + 400);
LABEL_36:
  if (v23 <= a3)
  {
    return 22;
  }

LABEL_37:
  v97 = a5;
  v24 = v9 >> 30;
  if (a4)
  {
    v26 = *a4;
    v25 = a4[1];
  }

  else
  {
    v26 = 0;
    v25 = 0;
  }

  v103 = v25;
  if (!((a6 == 0) | v21 & 1))
  {
    sub_10003AF78(a6, v25, &v114);
    v24 = v9 >> 30;
    LODWORD(v9) = v114;
  }

  v113 = 0;
  v27 = v24 | v22 | 0x20;
  pthread_mutex_lock(a1);
  v28 = v27;
  v10 = 0;
  v108 = 1;
  v100 = v9 & 0xFFFF0000 | v26;
  v104 = v26;
  v29 = 512;
  if (!v13)
  {
    v29 = 288;
  }

  v96 = v29;
  v30 = v103;
  while (1)
  {
    v31 = (v28 & 0xFFFFFFBF | (((v9 >> 8) & 1) << 6)) ^ 0x40;
    v107 = 0;
    v32 = *(*(a1 + 712) + 8 * (*(a1 + 704) & a3));
    if (v32)
    {
      break;
    }

    if ((v28 & 2) != 0)
    {
LABEL_227:
      v32 = 0;
      v94 = 0;
      v10 = 2;
      goto LABEL_237;
    }

LABEL_102:
    if (a4)
    {
      v41 = v113;
      if (v113)
      {
        goto LABEL_109;
      }

      v99 = v31;
      v42 = v108;
      if (v108 == 1)
      {
        v42 = 2;
      }

      v108 = v42;
      v44 = a4[2];
      v43 = a4[3];
    }

    else
    {
      if ((v114 & 0x10) == 0)
      {
        v32 = 0;
        v94 = 0;
        goto LABEL_237;
      }

      v41 = v113;
      if (v113)
      {
LABEL_109:
        v45 = v114;
        goto LABEL_121;
      }

      v99 = v31;
      v43 = 0;
      v44 = 0;
      v47 = v108;
      if (v108 == 1)
      {
        v47 = 2;
      }

      v108 = v47;
    }

    v45 = v114;
    v48 = sub_100039008(a1, v43, v100, v44, v114, &v107, &v113);
    if (v48)
    {
      v10 = v48;
      v32 = 0;
LABEL_235:
      v94 = 0;
      goto LABEL_236;
    }

    v31 = v99;
    v10 = 0;
    if (v107)
    {
      goto LABEL_180;
    }

    v41 = v113;
LABEL_121:
    v113 = 0;
    v49 = v45 & 0xFFFF0000;
    if (a4)
    {
      v50 = a4[1];
      v51 = *a4 | v49;
    }

    else
    {
      v50 = 0;
      v51 = v45 & 0xFFFF0000;
    }

    *(v41 + 36) = v51;
    *(v41 + 40) = v50;
    *(v41 + 112) = a3;
    if (!a6 || (v52 = *(a6 + 504)) == 0)
    {
      v52 = a6;
    }

    v53 = (*(a1 + 712) + 8 * (*(a1 + 704) & a3));
    v54 = *v53;
    *(v41 + 72) = *v53;
    *(v41 + 8) = v52;
    v55 = v111;
    if ((v31 & 8) == 0)
    {
      v55 = v13;
    }

    *(v41 + 120) = v55;
    if (v31)
    {
      v56 = a3;
    }

    else
    {
      v56 = 0;
    }

    *(v41 + 128) = v56;
    v98 = (v41 + 128);
    v57 = *(v41 + 16);
    v58 = v45 & 0xFC00;
    if ((v31 & 4) != 0)
    {
      v58 = 0;
    }

    if (v54)
    {
      *(v54 + 80) = v41 + 72;
    }

    v59 = v57 | v58 | v49;
    *v53 = v41;
    *(v41 + 80) = v53;
    v60 = v59 | 0x10000000003;
    *(v41 + 16) = v59 | 0x10000000003;
    if ((v45 & 0x50) != 0)
    {
      v60 = v59 | 0x1000000000BLL;
      *(v41 + 16) = v59 | 0x1000000000BLL;
      if ((v45 & 0x40) != 0)
      {
        v60 = v59 | 0x1100000000BLL;
        *(v41 + 16) = v59 | 0x1100000000BLL;
      }
    }

    v61 = v60 | (v45 << 14) & 0x400000000000;
    if ((v45 & 0x180) != 0)
    {
      v61 |= 0x8000000000uLL;
    }

    v62 = v61 | (v45 << 34) & 0x80000000000;
    if ((v31 & 4) != 0)
    {
      v62 |= v96;
    }

    if ((v45 & 0x100000380) != 0 || (v31 & 4) != 0)
    {
      *(v41 + 16) = v62;
    }

    v101 = v41;
    if ((~atomic_fetch_add_explicit((v41 + 24), 1uLL, memory_order_relaxed) & 0xFFFFFF) == 0)
    {
      panic("Reference count overflowed for object %p!\n", v41);
    }

    if ((v45 & 0x180) != 0)
    {
      v63 = v31;
    }

    else
    {
      v63 = v31 | 0x10;
    }

    sub_1000357DC(a1);
    v108 = 0;
    v95 = v63;
    v99 = v63 & 0xFFFFFF9F;
    if ((v63 & 4) != 0)
    {
      v66 = *(v101 + 8);
      if (!v66)
      {
        v66 = *(a1 + 392);
      }

      v10 = sub_10004022C(v66, a3, v13, v98, 0, &v109, &v112);
      v64 = v97;
      if (!v10)
      {
        if ((v45 & 8) == 0 || v112 == v13)
        {
LABEL_152:
          if ((v45 & 0x180) != 0)
          {
            v65 = sub_10003B0B8(a1, v45, a4, v64, a6, v101, v112, v109, &v106);
            v10 = v65;
            if (v106 == 1)
            {
              if (v65)
              {
                v94 = v101;
                sub_100039E98(v101);
                v32 = v101;
              }

              else
              {
                v32 = v101;
                v94 = v101 & ((v45 << 55) >> 63);
              }

LABEL_236:
              LOBYTE(v31) = v99;
              goto LABEL_237;
            }
          }

          else
          {
            v10 = sub_10003B340(v101, v112, v109, 0);
          }

          goto LABEL_169;
        }

        v10 = 2;
      }
    }

    else
    {
      v64 = v97;
      if (!v10)
      {
        goto LABEL_152;
      }
    }

LABEL_169:
    pthread_mutex_lock(a1);
    v108 = 2;
    v68 = v109;
    v69 = v101;
    if ((v109 & 0xE0) != 0)
    {
      *(v101 + 16) = *(v101 + 16) & 0xFFFFFFFFFFFF1FFFLL | ((v109 >> 5) << 13);
    }

    if ((v68 & 0x700) != 0)
    {
      *(v101 + 16) = *(v101 + 16) & 0xFFFFFFFFFFFFE3FFLL | (((v68 >> 8) & 7) << 10);
    }

    if (v10)
    {
      goto LABEL_229;
    }

    v70 = sub_10003B5D4(v101, v45, a3, a4, v64, v13, v100, v103);
    if (v70)
    {
      v10 = v70;
      v69 = v101;
LABEL_229:
      *(v69 + 52) = v10;
      sub_100039A7C(v101, v45);
      v94 = v101;
      v32 = 0;
      if ((v95 & 0x10) != 0)
      {
        LOBYTE(v31) = v95 & 0x8F;
      }

      else
      {
        LOBYTE(v31) = v99;
      }

      *(v101 + 16) = *(v101 + 16) & 0xFFFFFFEFFFFFFFF7 | 8;
LABEL_237:
      v83 = v113;
      if (v113)
      {
LABEL_238:
        --*(a1 + 684);
        v84 = v83;
        v85 = v31;
        sub_10003B9B4(v84, 1);
        LOBYTE(v31) = v85;
      }

      goto LABEL_239;
    }

    v31 = v99;
    v33 = v101;
LABEL_178:
    v67 = v31;
    v32 = v33;
    v10 = sub_10003B7F4(v33, v114, v13, (v31 >> 6) & 1, &v110, &v108);
    if (v10 != 35)
    {
      v94 = 0;
LABEL_226:
      LOBYTE(v31) = v67;
      goto LABEL_237;
    }

LABEL_179:
    v31 = v67;
LABEL_180:
    v30 = v103;
LABEL_181:
    LODWORD(v9) = v114;
    v28 = v31;
  }

  v33 = 0;
  while (2)
  {
    v34 = *(v32 + 8);
    if (v34 != a6 && (!a6 || v34 != *(a6 + 504)))
    {
      goto LABEL_92;
    }

    v35 = *(v32 + 16);
    if (((v35 ^ v9) & 0xC8000000) != 0 || *(v32 + 112) != a3)
    {
      goto LABEL_92;
    }

    if ((v35 & 2) != 0)
    {
      if ((v9 & 0x180) == 0)
      {
        v78 = v108;
        if (v108 == 1)
        {
          v78 = 2;
        }

        v108 = v78;
        *(v32 + 16) = v35 | 4;
        v79 = (v28 & 0xFFFFFFBF | (((v9 >> 8) & 1) << 6)) ^ 0x40;
        sub_10003B034(v32);
        v30 = v103;
        v31 = v79;
        goto LABEL_181;
      }

      if (*(v32 + 52))
      {
        v94 = 0;
        v10 = *(v32 + 52);
        goto LABEL_237;
      }

      if ((~v35 & 0xA) == 0)
      {
        v94 = 0;
        v10 = 16;
        goto LABEL_237;
      }

      if ((v9 & 0x100) != 0)
      {
        v94 = 0;
        v10 = 0;
        goto LABEL_237;
      }

      v67 = (v28 & 0xFFFFFFBF | (((v9 >> 8) & 1) << 6)) ^ 0x40;
      if ((v35 & 0x8000000000) != 0)
      {
        *(v32 + 16) = v35 | 4;
        sub_100011A68((a1 + 1328), a1, 2, 0);
        goto LABEL_179;
      }

      if (sub_100036638(v32, &v110, 0, v108))
      {
        goto LABEL_179;
      }

      v94 = 0;
      v10 = 0;
      goto LABEL_226;
    }

    if (v104 && *(v32 + 36) && ((*(v32 + 36) ^ v100) & 0xEFFFFFFF) != 0 || v30 && *(v32 + 40) != v30)
    {
      goto LABEL_92;
    }

    if ((v28 | ((v28 & 2) >> 1)))
    {
      v33 = v32;
      if ((v28 & 2) == 0)
      {
        goto LABEL_94;
      }

LABEL_177:
      if (!v33)
      {
        goto LABEL_227;
      }

      goto LABEL_178;
    }

    if (!v111)
    {
      if (v13)
      {
        v36 = *(v32 + 120);
        if (v36 <= *(v32 + 144))
        {
          v36 = *(v32 + 144);
        }

        goto LABEL_68;
      }

      goto LABEL_71;
    }

    v36 = *(v32 + 120);
    if (v36 <= *(v32 + 144))
    {
      v36 = *(v32 + 144);
    }

    if (!v13)
    {
      if (v36 < v111)
      {
        goto LABEL_92;
      }

LABEL_71:
      v37 = 1;
      goto LABEL_72;
    }

    if (v36 != v111)
    {
      goto LABEL_92;
    }

LABEL_68:
    if (v36 > v13)
    {
      goto LABEL_92;
    }

    v37 = 0;
LABEL_72:
    if (!v33)
    {
      goto LABEL_91;
    }

    v38 = *(v32 + 120);
    if (v38 <= *(v32 + 144))
    {
      v38 = *(v32 + 144);
    }

    v39 = *(v33 + 120);
    if (v39 <= *(v33 + 144))
    {
      v39 = *(v33 + 144);
    }

    if (v38 >= v39)
    {
      if (v38 != v39)
      {
        goto LABEL_85;
      }

      if (v37)
      {
        if ((v35 & 0x200) != 0 && (*(v33 + 17) & 2) == 0)
        {
          goto LABEL_92;
        }

LABEL_85:
        if ((v9 & 0x200) != 0)
        {
          if ((v35 & 0x80000000000) == 0 && (*(v33 + 21) & 8) != 0)
          {
            goto LABEL_92;
          }
        }

        else if ((v35 & 0x80000000000) != 0 && (*(v33 + 21) & 8) == 0)
        {
          goto LABEL_92;
        }

LABEL_91:
        v33 = v32;
        goto LABEL_92;
      }

      if ((v35 & 0x200) != 0 || (*(v33 + 17) & 2) == 0)
      {
        goto LABEL_85;
      }
    }

LABEL_92:
    v32 = *(v32 + 72);
    if (v32)
    {
      continue;
    }

    break;
  }

  if ((v28 & 2) != 0)
  {
    goto LABEL_177;
  }

LABEL_94:
  if (!v33 || (v28 & 4) == 0)
  {
    if (!v33)
    {
      goto LABEL_102;
    }

    if ((v28 & 4) == 0)
    {
      goto LABEL_178;
    }

LABEL_112:
    v40 = *(v33 + 16);
    if (v13)
    {
      goto LABEL_113;
    }

LABEL_183:
    if ((v40 & 0x100) != 0)
    {
      goto LABEL_178;
    }

    v46 = 1;
LABEL_185:
    v71 = v108;
    if (v108 == 1)
    {
      v71 = 2;
    }

    v108 = v71;
    add_explicit = atomic_fetch_add_explicit((v33 + 24), 0, memory_order_relaxed);
    if ((add_explicit & 0xFFFFFF) == ((add_explicit >> 24) & 0xFFFFF))
    {
      if (v46)
      {
        v73 = v40 & 0xFFFFFFFFFFFFFCDFLL | 0x120;
LABEL_205:
        *(v33 + 16) = v73;
LABEL_209:
        if ((v31 & 8) == 0)
        {
          goto LABEL_178;
        }

        v80 = *(v33 + 16);
        if ((v80 & 0x20000000000) == 0)
        {
          v111 = *(v33 + 120);
          goto LABEL_102;
        }

        *(v33 + 16) = v80 | 0x80;
        v81 = v31;
        sub_100011A68((a1 + 1328), a1, 2, 0);
        v31 = v81 & 0xFFFFFFF7;
        v30 = v103;
        goto LABEL_181;
      }

      if ((v9 & 0x200) == 0 || (v40 & 0x80000000000) != 0)
      {
        v73 = v40 & 0xFFFFFFFFFFFFFCFFLL | 0x200;
        goto LABEL_205;
      }
    }

    else
    {
      if (v46)
      {
        if ((v40 & 0x200) != 0)
        {
          v99 = (v28 & 0xFFFFFFBF | (((v9 >> 8) & 1) << 6)) ^ 0x40;
          if (!v113)
          {
            v32 = v33;
            v82 = sub_100039008(a1, *(v33 + 44), *(v33 + 36), *(v33 + 48), v9, &v107, &v113);
            if (v82)
            {
              v10 = v82;
              goto LABEL_235;
            }

            if (v113 == v32 || (v107 & 1) != 0)
            {
              v10 = 0;
              v31 = v99;
              goto LABEL_180;
            }

            v33 = v32;
            v40 = *(v32 + 16);
          }

          *(v33 + 16) = v40 & 0xFFFFFFFFFFFFFFDFLL;
          v74 = v33;
          v10 = 0;
          if (sub_100038B2C(v33, 0, &v113, &v107))
          {
            v31 = v99 | 8;
            v33 = v74;
          }

          else
          {
            v33 = v113;
            v113 = 0;
            *(v33 + 16) |= 0x120uLL;
            atomic_fetch_add_explicit((v33 + 24), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
            v31 = v99;
          }
        }

        goto LABEL_209;
      }

      if ((v40 & 0x100) == 0 || (v9 & 8) != 0)
      {
        if ((v9 & 0x200) != 0 && (v40 & 0x80000000000) == 0)
        {
          v31 |= 8u;
        }

        goto LABEL_209;
      }
    }

    v31 |= 8u;
    goto LABEL_209;
  }

  v40 = *(v33 + 16);
  if ((v40 & 0x40) != 0)
  {
    goto LABEL_112;
  }

  if (!v13)
  {
    if (!(*(v33 + 16) & 0x20 | v111))
    {
      goto LABEL_195;
    }

    goto LABEL_183;
  }

  if (v13 <= *(v33 + 168) || v111)
  {
LABEL_113:
    if ((v40 & 0x200) != 0)
    {
      goto LABEL_178;
    }

    v46 = 0;
    goto LABEL_185;
  }

LABEL_195:
  v102 = v33;
  v75 = (v28 & 0xFFFFFFBF | (((v9 >> 8) & 1) << 6)) ^ 0x40;
  v76 = v108;
  sub_10003588C(a1, v108);
  v108 = 0;
  v77 = a6;
  if (!a6)
  {
    v77 = *(a1 + 392);
  }

  v10 = sub_10004022C(v77, a3, v13, 0, 0, 0, &v111);
  if (!v10)
  {
    sub_100035840(a1, v76);
    v108 = v76;
    v31 = v75;
    goto LABEL_180;
  }

  v83 = v113;
  if (v113)
  {
    pthread_mutex_lock(a1);
    v94 = 0;
    v108 = 2;
    LOBYTE(v31) = v75;
    v32 = v102;
    goto LABEL_238;
  }

  v94 = 0;
  LOBYTE(v31) = v75;
  v32 = v102;
LABEL_239:
  v86 = v31;
  if (v108)
  {
    sub_10003588C(a1, v108);
  }

  if (v94)
  {
    sub_100037058(v94);
  }

  if (!v10)
  {
    if (v32)
    {
      v87 = v114;
      if ((v114 & 4) != 0)
      {
        if (v114)
        {
          v88 = 2;
        }

        else
        {
          v88 = 1;
        }

        sub_10003BBDC(v32, v88);
        v87 = v114;
      }

      if ((v87 & 1) != 0 && (v89 = sub_10003BC6C(v32, v87 & 3, a8), v89))
      {
        v10 = v89;
        if ((v114 & 4) != 0)
        {
          if (v114)
          {
            v90 = 2;
          }

          else
          {
            v90 = 1;
          }

          sub_10003C190(v32, v90);
        }

        sub_100037058(v32);
      }

      else
      {
        if ((v86 & 2) == 0)
        {
          v91 = 136;
          if ((v86 & 0x20) == 0)
          {
            v91 = 144;
          }

          atomic_fetch_add_explicit((a1 + 1104), 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit((a1 + v91 + 976), 1uLL, memory_order_relaxed);
          v92 = qword_100070590 + v91;
          atomic_fetch_add_explicit((qword_100070590 + 264), 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit((v92 + 136), 1uLL, memory_order_relaxed);
        }

        v10 = 0;
        if ((v114 & 0x100) != 0)
        {
          v93 = 0;
        }

        else
        {
          v93 = v32;
        }

        *a9 = v93;
      }
    }

    else
    {
      return 2;
    }
  }

  return v10;
}

uint64_t sub_10003AEE8(uint64_t result, _BYTE *a2)
{
  *a2 = 1;
  v2 = *(result + 1376);
  if (v2)
  {
    v4 = result;
    while (1)
    {
      if ((*(*(v2 + 136) + 20) & 0x80) == 0)
      {
        result = sub_100050A44(*(*(v4 + 392) + 384));
        if (result != 36)
        {
          break;
        }
      }

      v2 = *(v2 + 104);
      if (!v2)
      {
        return result;
      }
    }

    return sub_10003C7D8(v2, a2);
  }

  return result;
}

uint64_t sub_10003AF78(uint64_t result, int a2, uint64_t *a3)
{
  v4 = *(result + 504);
  if (!v4)
  {
    v4 = result;
  }

  v5 = *(v4 + 376);
  v6 = *a3;
  if (*(v5 + 264))
  {
    v12 = v6 & 0xFFFFFFFFEFFF03FFLL;
  }

  else
  {
    v8 = result;
    v9 = v6 | 0x10000000;
    *a3 = v9;
    if (a2 == 36 || (v10 = sub_10002E408(result), v9 = *a3, a2 == 37) && v10)
    {
      v11 = v9 & 0xFFFFFFFFFFFF1FFFLL | 0x2000;
    }

    else
    {
      v11 = v9 & 0xFFFFFFFFFFFF1FFFLL;
    }

    *a3 = v11;
    result = sub_10002E408(v8);
    v13 = 1024;
    if (!result)
    {
      v13 = 0;
    }

    v12 = *a3 & 0xFFFFFFFFFFFFE3FFLL | v13;
  }

  *a3 = v12;
  return result;
}

uint64_t sub_10003B034(uint64_t *a1)
{
  v1 = *a1;
  v5 = xmmword_10006A8C0;
  v2 = a1[2];
  result = sub_100011A68((v1 + 1328), v1, 2, (&v5 & (v2 << 23 >> 63)));
  if ((v2 & 0x10000000000) != 0 && *(v1 + 1376))
  {
    v4 = -86;
    result = sub_10003AEE8(v1, &v4);
    if ((v4 & 1) == 0)
    {
      return pthread_mutex_lock(v1);
    }
  }

  return result;
}

unint64_t sub_10003B0B8(uint64_t a1, void (*a2)(uint64_t a1, int8x16_t a2, int8x16_t a3), _OWORD *a3, _WORD *a4, uint64_t a5, uint64_t a6, unint64_t a7, unsigned int a8, _BYTE *a9)
{
  *a9 = 0;
  v17 = sub_1000122F4(1uLL, 0xA8uLL, 0x10A20403EA893BFuLL);
  if (!v17)
  {
    v21 = 12;
    goto LABEL_15;
  }

  v18 = v17;
  if (a4)
  {
    if (*a4 == 25987)
    {
      if (!a4[1])
      {
        v20 = 0;
        v19 = v17[20];
        goto LABEL_17;
      }

      v19 = sub_100012434(a4[1], 0x100004052888210uLL);
      bzero(v19, a4[1]);
      v18[20] = v19;
      if (v19)
      {
        v20 = a4[1];
LABEL_17:
        memcpy(v19, a4, v20);
        *(v18 + 152) = 1;
        goto LABEL_18;
      }

      v21 = 12;
    }

    else
    {
      if (!a5)
      {
        a5 = *(a1 + 392);
      }

      if (*(a5 + 36) == 13)
      {
        v22 = (a5 + 4040);
      }

      else
      {
        v22 = (*(a5 + 384) + 212);
      }

      sub_100012178("%s:%d: %s oid 0x%llx flags 0x%llx type 0x%x/0x%x: attempt to perform async fetch without proper init args\n", "obj_get_async_read", 3775, v22, *(a6 + 112), a2, *(a6 + 36), *(a6 + 40));
      v21 = 22;
    }

    sub_1000123F8(v18, 168);
LABEL_15:
    *a9 = 1;
    return v21;
  }

LABEL_18:
  pthread_mutex_lock(a1);
  v18[13] = 0;
  v23 = *(a1 + 1384);
  v18[14] = v23;
  *v23 = v18;
  *(a1 + 1384) = v18 + 13;
  sub_1000357DC(a1);
  *v18 = sub_10003DB60;
  v18[17] = a6;
  *(v18 + 15) = *a3;
  v18[18] = a2;
  if ((~atomic_fetch_add_explicit((a6 + 24), 1uLL, memory_order_relaxed) & 0xFFFFFF) == 0)
  {
    panic("Reference count overflowed for object %p!\n", a6);
  }

  atomic_fetch_add_explicit((a1 + 944), 1u, memory_order_relaxed);
  v21 = sub_10003B340(a6, a7, a8, v18);
  if (!v21)
  {
    *a9 = 1;
    pthread_mutex_lock(a1);
    v24 = *(a6 + 16);
    v25 = v24 & 0xFFFFFF7FFFFFFFFBLL;
    if ((a8 & 0xE0) != 0)
    {
      v25 = v24 & 0xFFFFFF7FFFFF1FFBLL | (a8 << 8) & 0xE000;
    }

    if ((a8 & 0x700) != 0)
    {
      v25 = v25 & 0xFFFFFFFFFFFFE3FFLL | (4 * a8) & 0x1C00;
    }

    *(a6 + 16) = v25;
    sub_1000357DC(a1);
    if ((v24 & 4) != 0)
    {
      j__pthread_cond_broadcast((a1 + 1328));
    }

    return 0;
  }

  return v21;
}

unint64_t sub_10003B340(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a1 + 128);
  v8 = *(a1 + 8);
  if (v7)
  {
    v9 = *(a1 + 36);
    if ((a3 & 4) != 0 && v8)
    {
      *(a1 + 36) = v9 | 0x10000000;
      if ((*(a1 + 21) & 8) != 0)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        if ((a3 & 8) != 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (a3 >> 5 == 1)
        {
          v10 = (a3 & 0x10) == 0;
          v11 = 824;
          v12 = 632;
        }

        else
        {
          if (a3 >> 5)
          {
            panic("invalid crypto index %d\n");
          }

          v10 = (a3 & 0x10) == 0;
          v11 = 728;
          v12 = 536;
        }

        if (!v10)
        {
          v12 = v11;
        }

        v14 = (a3 >> 8) & 7;
        v16 = v8 + v12;
        if (v14)
        {
          if (v14 != 1)
          {
            panic("invalid tweak type %d\n");
          }

          v15 = *(a1 + 112) ^ HIDWORD(a2) | *(a1 + 112) & 0xFFFFFFFF00000000 ^ (a2 << 32);
          v14 = 4;
          if ((a3 & 8) != 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v15 = (a3 >> 8) & 7;
          if ((a3 & 8) != 0)
          {
            goto LABEL_26;
          }
        }
      }
    }

    else
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 36) = v9 & 0xEFFFFFFF;
      if ((a3 & 8) != 0)
      {
        goto LABEL_26;
      }
    }

    if ((*(a1 + 21) & 8) == 0)
    {
LABEL_27:
      if (v16 && (v18 = *(v8 + 1144)) != 0)
      {
        v19 = *(*a1 + 392);
      }

      else
      {
        v19 = *(*a1 + 392);
        v18 = *(v19 + 384);
      }

      v20 = sub_1000509EC(v18, v7, (*(a1 + 48) + *(*(v19 + 376) + 36) - 1) / *(*(v19 + 376) + 36), *(a1 + 56), v16, a4 != 0, a4, v15, v14);
      v17 = v20;
      if (!a4 && !v20)
      {
        if ((*(a1 + 18) & 0x8002000) != 0)
        {
          return 0;
        }

        else
        {
          v17 = sub_10003C604(a1, v21, v22);
          if (v17)
          {
            v23 = *(a1 + 8);
            if (v23)
            {
              v24 = (v23 + 4040);
            }

            else
            {
              v24 = (*(*(*a1 + 392) + 384) + 212);
            }

            sub_100012178("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x paddr 0x%llx error verifying checksum\n", "obj_read", 6614, v24, *(a1 + 112), *(a1 + 16), *(a1 + 32), *(a1 + 36), *(a1 + 40), *(a1 + 128));
          }
        }
      }

      return v17;
    }

LABEL_26:
    *(a1 + 120) = a2;
    goto LABEL_27;
  }

  if (v8)
  {
    v13 = (v8 + 4040);
  }

  else
  {
    v13 = (*(*(*a1 + 392) + 384) + 212);
  }

  sub_100012178("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x object missing paddr!\n", "obj_read", 6571, v13, *(a1 + 112), *(a1 + 16), *(a1 + 32), *(a1 + 36), *(a1 + 40));
  v17 = 22;
  if (a4)
  {
    *(a4 + 96) = 22;
    (*a4)(a4);
  }

  return v17;
}

uint64_t sub_10003B5D4(uint64_t a1, __int16 a2, uint64_t a3, _DWORD *a4, uint64_t a5, unint64_t a6, int a7, int a8)
{
  v12 = *(a1 + 16);
  if ((v12 & 0x80020000000) != 0)
  {
LABEL_2:
    v13 = 0;
    if ((a2 & 0x210) == 0 && a4)
    {
      v26 = 0;
      v14 = sub_100039ABC(*(a1 + 36), &v26);
      if (v14)
      {
        v13 = v14;
      }

      else
      {
        v19 = *(v26 + 8);
        if (v19)
        {
          v13 = v19(a1, a5);
          v12 = *(a1 + 16);
        }

        else
        {
          v13 = 0;
        }
      }
    }

    goto LABEL_31;
  }

  v15 = *(a1 + 56);
  v16 = *(v15 + 16);
  *(a1 + 120) = v16;
  if (!a8)
  {
    *(a1 + 40) = *(v15 + 28);
  }

  if ((!a7 || ((*(v15 + 24) ^ a7) & 0xEFFFFFFF) == 0) && (!a8 || *(v15 + 28) == a8) && *(v15 + 8) == a3)
  {
    v13 = 0;
    if (!a6 || v16 <= a6)
    {
LABEL_19:
      if (!a4)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }
  }

  if ((a2 & 0x20) != 0)
  {
    v13 = 2;
    goto LABEL_19;
  }

  v17 = *(a1 + 8);
  if (v17)
  {
    v18 = (v17 + 4040);
  }

  else
  {
    v18 = (*(*(*a1 + 392) + 384) + 212);
  }

  sub_100012178("%s:%d: %s wrong object at 0x%llx - wanted oid 0x%llx type 0x%x:0x%x xid %lld - got oid 0x%llx type 0x%x:0x%x xid %lld\n", "obj_init", 3392, v18, *(a1 + 128), a3, a7, a8, a6, *(v15 + 8), *(v15 + 24), *(v15 + 28), v16);
  v13 = sub_1000033FC(*(*a1 + 392));
  if (!a4)
  {
    goto LABEL_27;
  }

LABEL_25:
  if (*a4)
  {
    v20 = *(a1 + 36);
    goto LABEL_28;
  }

LABEL_27:
  v21 = *(a1 + 56);
  v20 = *(v21 + 24) | (*(a1 + 38) << 16);
  LODWORD(v21) = *(v21 + 28);
  *(a1 + 36) = v20;
  *(a1 + 40) = v21;
LABEL_28:
  v12 = *(a1 + 16);
  v22 = v20 & 0x10000000;
  if ((v12 & 0x10000000) != v22)
  {
    v12 = v12 & 0xFFFFFFFFEFFFFFFFLL | v22;
    *(a1 + 16) = v12;
  }

  if (!v13)
  {
    goto LABEL_2;
  }

LABEL_31:
  *(a1 + 52) = v13;
  if (v13)
  {
    v23 = 0;
  }

  else
  {
    v23 = (a2 & 0x10) == 0;
  }

  v24 = 0xFFFFFE7FFFFFFFF9;
  if (!v23)
  {
    v24 = 0xFFFFFE7FFFFFFFFBLL;
  }

  *(a1 + 16) = v12 & v24;
  if ((v12 & 4) != 0)
  {
    j__pthread_cond_broadcast((*a1 + 1328));
  }

  return v13;
}

uint64_t sub_10003B7F4(uint64_t a1, uint64_t a2, unint64_t a3, int a4, int *a5, _BYTE *a6)
{
  v6 = *(a1 + 16);
  if ((v6 & 0x10) != 0)
  {
    return 2;
  }

  v8 = a2;
  v10 = *a1;
  v11 = a2 & 0x40 | ~v6 & 0x1000000008;
  v12 = (v6 >> 46) & 1;
  if ((a2 & 0x100000040) != 0)
  {
    LODWORD(v12) = 0;
  }

  if (v11)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    if (*a6 == 1)
    {
      *a6 = 2;
    }

    if (!v11)
    {
      v14 = *(a1 + 16) & 0xFFFFFFEFFFFFFFF7;
      *(a1 + 16) = v14;
      if ((a2 & 0x100000000) != 0)
      {
        *(a1 + 16) = v14 | 0x400000000000;
      }
    }

    if (v12)
    {
      *(a1 + 16) &= ~0x400000000000uLL;
    }
  }

  if (a4 && (sub_100036638(a1, a5, 0, *a6) & 1) != 0)
  {
    return 35;
  }

  if ((atomic_fetch_and_explicit((a1 + 32), 0xFFFFFFFD, memory_order_relaxed) & 2) != 0)
  {
    j__pthread_cond_broadcast((v10 + 1328));
  }

  if ((*(a1 + 32) & 1) == 0 && (*(a1 + 19) & 0x80) == 0)
  {
    v16 = pthread_rwlock_rdlock((v10 + 128));
    if (v16)
    {
      panic("%s:%d: rdlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_executables/nx/obj.c", 3490, v16);
    }

    if (*(a1 + 88) != 3735928559)
    {
      sub_10003C964(v10, a1);
    }

    v17 = pthread_rwlock_unlock((v10 + 128));
    if (v17)
    {
      panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_executables/nx/obj.c", 3494, v17);
    }
  }

  result = 0;
  if ((v8 & 0xC8000000) == 0 && a3)
  {
    result = 0;
    v18 = *(a1 + 168);
    if (v18 <= a3)
    {
      v18 = a3;
    }

    *(a1 + 168) = v18;
  }

  return result;
}

void sub_10003B9B4(uint64_t a1, char a2)
{
  v4 = *a1;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 72);
    v7 = *(a1 + 80);
    if (v6)
    {
      *(v6 + 80) = v7;
    }

    *v7 = v6;
    *(a1 + 16) = v5 & 0xFFFFFFFFFFFFFFFELL;
  }

  v8 = atomic_load_explicit((a1 + 32), memory_order_acquire) & 0x10;
  if (*(a1 + 88) != 3735928559 || v8 != 0)
  {
    v10 = pthread_rwlock_wrlock((v4 + 128));
    if (v10)
    {
      panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_executables/nx/obj.c", 3080, v10);
    }

    v11 = *(a1 + 88);
    if (v11 == 3735928559)
    {
      goto LABEL_21;
    }

    v12 = *(a1 + 16);
    if ((v12 & 0x80000000) != 0)
    {
      v13 = *(a1 + 96);
      v14 = 768;
      if ((*(a1 + 16) & 0x8000000) == 0)
      {
        v14 = 752;
      }

      v15 = (v4 + v14);
      if (v11)
      {
        v15 = (v11 + 96);
      }

      *v15 = v13;
      *v13 = v11;
    }

    else
    {
      if ((*(a1 + 32) & 1) == 0)
      {
        sub_10003D748(a1);
LABEL_21:
        v16 = atomic_fetch_and_explicit((a1 + 32), 0xFFFFEFu, memory_order_relaxed);
        if ((v16 & 0x10) != 0)
        {
          *(*(v4 + 896) + 8 * HIBYTE(v16)) = 0;
        }

        v17 = pthread_rwlock_unlock((v4 + 128));
        if (v17)
        {
          panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_executables/nx/obj.c", 3108, v17);
        }

        goto LABEL_25;
      }

      if (*(v4 + 888) == a1)
      {
        *(v4 + 888) = v11;
      }

      v22 = *(a1 + 96);
      if ((v12 & 0x40000000) != 0)
      {
        v24 = (v4 + 848);
        if (v11)
        {
          v24 = (v11 + 96);
        }

        *v24 = v22;
        *v22 = v11;
        --*(v4 + 912);
      }

      else
      {
        v23 = (v4 + 832);
        if (v11)
        {
          v23 = (v11 + 96);
        }

        *v23 = v22;
        *v22 = v11;
        --*(v4 + 908);
      }
    }

    *(a1 + 88) = 3735928559;
    goto LABEL_21;
  }

LABEL_25:
  if ((a2 & 1) != 0 || !sub_10003D9FC(a1))
  {

    sub_10003DA44(a1, 1);
  }

  else
  {
    if (*(v4 + 728))
    {
      v18 = *(v4 + 736);
      v21 = *(v18 + 72);
      v19 = (v18 + 72);
      v20 = v21;
      *(a1 + 72) = v21;
      if (v21)
      {
        *(v20 + 80) = a1 + 72;
      }
    }

    else
    {
      v19 = (v4 + 728);
      *(a1 + 72) = 0;
    }

    *v19 = a1;
    *(a1 + 80) = v19;
    *(v4 + 736) = a1;
  }
}

uint64_t sub_10003BBDC(uint64_t a1, char a2)
{
  if (a2)
  {
    if (pthread_rwlock_rdlock((a1 + 176)))
    {
      panic("%s:%d: rdlock == 0 failed %d\n");
    }
  }

  else
  {
    if ((a2 & 2) == 0)
    {
      panic("invalid lock flags: 0x%x\n");
    }

    if (pthread_rwlock_wrlock((a1 + 176)))
    {
      panic("%s:%d: wrlock == 0 failed %d\n");
    }
  }

  return 0;
}

uint64_t sub_10003BC6C(void *a1, char a2, unint64_t a3)
{
  v6 = *a1;
  v7 = *(*a1 + 392);
  if (a1[1])
  {
    v8 = a1[1];
  }

  else
  {
    v8 = *(*a1 + 392);
  }

  v9 = a1[2];
  if ((v9 & 0x8000000) == 0)
  {
    if (*(v7 + 627))
    {
      return 30;
    }

    if (!sub_10004D1DC(*(*a1 + 392), a3))
    {
      return 22;
    }

    v9 = a1[2];
  }

  if ((v9 & 0x10000000000) != 0)
  {
    if (*(v8 + 36) == 13)
    {
      v15 = (v8 + 4040);
    }

    else
    {
      v15 = (*(v8 + 384) + 212);
    }

    sub_100012178("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x can't modify object before read completes\n", "obj_modify", 5740, v15, a1[14], v9, *(a1 + 8), *(a1 + 9), *(a1 + 10));
    return 22;
  }

  v11 = a1[8];
  if (v11 && v11 == a1[7])
  {
    v12 = *(a1 + 12);
    v13 = sub_100012214(v12, *(v6 + 952));
    sub_10003DD88((v6 + 976), v9, v13, v12);
    sub_10003DD88((qword_100070590 + 136), v9, v13, v12);
    if (!v13)
    {
      return 12;
    }

    for (i = (a1 + 4); (atomic_fetch_or_explicit(i, 8u, memory_order_acquire) & 8) != 0; i = (a1 + 4))
    {
      pthread_mutex_lock((v6 + 328));
      pthread_mutex_unlock((v6 + 328));
    }

    v16 = a1[8];
    if (v16 && (v17 = a1[7], v16 == v17))
    {
      memcpy(v13, v17, v12);
      a1[8] = v13;
      atomic_fetch_and_explicit(a1 + 8, 0xFFFFFFF7, memory_order_release);
    }

    else
    {
      atomic_fetch_and_explicit(a1 + 8, 0xFFFFFFF7, memory_order_release);
      sub_10003518C(v13, v12, a1[2], v6);
    }
  }

  v18 = a1[2];
  if ((v18 & 0x80000000) != 0)
  {
    return 0;
  }

  if ((v18 & 0x40000000) == 0)
  {
    if ((v18 & 0xC00000000) != 0 || a1[15] == a3)
    {
      return 0;
    }

    pthread_mutex_lock(v6);
    while (1)
    {
      v19 = a1[2];
      if ((v19 & 0xC00000000) != 0 || a1[15] == a3)
      {
        break;
      }

      v20 = *(*(v7 + 376) + 36);
      v21 = *(a1 + 12);
      v39 = 0;
      if ((v19 & 0x100000000) == 0)
      {
        a1[2] = v19 | &_mh_execute_header;
        v26 = (v20 + v21 - 1) / v20;
        sub_1000357DC(v6);
        v10 = sub_10004B638(v8, 0x48u, v26, a3, &v39);
        pthread_mutex_lock(v6);
        v27 = a1[2];
        a1[2] = v27 & 0xFFFFFFFCFFFFFFFFLL;
        if (v10)
        {
          if (*(v8 + 36) == 13)
          {
            v28 = (v8 + 4040);
          }

          else
          {
            v28 = (*(v8 + 384) + 212);
          }

          sub_100012178("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error reserving %d blocks of space: %d\n", "obj_modify", 5856, v28, a1[14], v27 & 0xFFFFFFFCFFFFFFFFLL, *(a1 + 8), *(a1 + 9), *(a1 + 10), v26, v10);
        }

        else
        {
          v29 = 0x800000000;
          if ((v39 & 0x10) == 0)
          {
            v29 = 0x400000000;
          }

          a1[2] = v29 & 0xFFFFEFFFFFFFFFFFLL | ((((v39 & 0x10000) >> 16) & 1) << 44) | v27 & 0xFFFFFFFCFFFFFFFFLL;
        }

        sub_1000357DC(v6);
        if ((v27 & 0x200000000) != 0)
        {
          j__pthread_cond_broadcast((v6 + 1328));
        }

        return v10;
      }

      a1[2] = v19 | 0x200000000;
      sub_100011A68((v6 + 1328), v6, 2, 0);
    }

    goto LABEL_42;
  }

  if (a2 & 2) == 0 || (a1[4])
  {
    return 0;
  }

  pthread_mutex_lock(v6);
  if (a1[4])
  {
LABEL_42:
    sub_1000357DC(v6);
    return 0;
  }

  v22 = a1[19];
  if (v22)
  {
LABEL_41:
    sub_10003CDB8(a1, a3, v22);
    goto LABEL_42;
  }

  if (a1[15] == a3)
  {
    v22 = a1[16];
    goto LABEL_41;
  }

  v24 = (*(*(v7 + 376) + 36) + *(a1 + 12) - 1) / *(*(v7 + 376) + 36);
  atomic_fetch_or_explicit(a1 + 8, 1u, memory_order_relaxed);
  sub_1000357DC(v6);
  if ((*(a1 + 19) & 0x10) != 0)
  {
    v38 = 0;
  }

  else
  {
    if (*(a1 + 18) == 11 || *(a1 + 20) == 11)
    {
      v25 = 2;
    }

    else
    {
      v25 = 1;
    }

    v38 = v25;
  }

  v30 = sub_100046AE4(v8, 72, v24, a3, &v38, 0);
  if (v30)
  {
    v31 = v30;
    if (*(v8 + 36) == 13)
    {
      v32 = (v8 + 4040);
    }

    else
    {
      v32 = (*(v8 + 384) + 212);
    }

    v37 = *(a1 + 8);
    v36 = a1 + 4;
    sub_100012178("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error allocating new location %d\n", "obj_modify", 5914, v32, v36[10], *(v36 - 2), v37, *(v36 + 1), *(v36 + 2), v30);
    pthread_mutex_lock(v6);
    atomic_fetch_and_explicit(v36, 0xFFFFFFFE, memory_order_relaxed);
    sub_1000357DC(v6);
    return v31;
  }

  else
  {
    pthread_mutex_lock(v6);
    v33 = a1[16];
    atomic_fetch_and_explicit(a1 + 8, 0xFFFFFFFE, memory_order_relaxed);
    sub_10003CDB8(a1, a3, v38);
    sub_1000357DC(v6);
    v34 = sub_10004A66C(v8, 64, v33, v24, a3);
    v10 = v34;
    if (v34)
    {
      if (*(v8 + 36) == 13)
      {
        v35 = (v8 + 4040);
      }

      else
      {
        v35 = (*(v8 + 384) + 212);
      }

      sub_100012178("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error freeing old space @ 0x%llx: %d\n", "obj_modify", 5932, v35, a1[14], a1[2], *(a1 + 8), *(a1 + 9), *(a1 + 10), v33, v34);
    }
  }

  return v10;
}

uint64_t sub_10003C190(uint64_t a1, char a2)
{
  if (a2)
  {
    if (pthread_rwlock_unlock((a1 + 176)))
    {
      goto LABEL_7;
    }
  }

  else
  {
    if ((a2 & 2) == 0)
    {
      panic("invalid unlock flags: 0x%x\n");
    }

    if (pthread_rwlock_unlock((a1 + 176)))
    {
LABEL_7:
      panic("%s:%d: unlock == 0 failed %d\n");
    }
  }

  return 0;
}

uint64_t sub_10003C214(pthread_mutex_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unint64_t a7, uint64_t a8, uint64_t *a9)
{
  v51 = a7;
  v52 = a5;
  v49 = 0;
  if (!a4)
  {
    return 22;
  }

  if (*(a4 + 12) < 0x178u)
  {
    return 22;
  }

  v10 = *(a4 + 8);
  if (!v10)
  {
    return 22;
  }

  v12 = *(*(*a1[6].__opaque + 376) + 36);
  if (v10 % v12)
  {
    return 22;
  }

  LODWORD(v16) = a6;
  v50 = 0xAAAAAAAAAAAAAAAALL;
  v20 = a2 | (*(a4 + 2) << 16);
  pthread_mutex_lock(a1);
  v47 = v20;
  v21 = sub_100039008(a1, *(a4 + 12), *a4, *(a4 + 8), v20, 0, &v50);
  if (v21)
  {
    v13 = v21;
    goto LABEL_51;
  }

  v22 = *(a4 + 4);
  v23 = *a4 | v20 & 0xFFFF0000;
  v24 = v50;
  *(v50 + 36) = v23;
  *(v24 + 40) = v22;
  *(v24 + 112) = a3;
  *(v24 + 120) = a8;
  *(v24 + 16) |= v20 & 0xA000FC00 | (a2 << 34) & 0x80000000000 | 0x2000000002;
  *(v24 + 128) = a5;
  if ((~atomic_fetch_add_explicit((v24 + 24), 1uLL, memory_order_relaxed) & 0xFFFFFF) == 0)
  {
    panic("Reference count overflowed for object %p!\n", v24);
  }

  sub_1000357DC(a1);
  if ((v10 + v12 - 1) / v12 <= a7)
  {
    v35 = sub_10003B340(v24, 0, 0, 0);
    goto LABEL_28;
  }

  v25 = *(v24 + 56);
  v26 = (v10 + v12 - 1) / v12;
  do
  {
    if (v51 >= v26)
    {
      v27 = v26;
    }

    else
    {
      v27 = v51;
    }

    v28 = sub_100050964(*(*(*v24 + 392) + 384));
    if (v28)
    {
      v13 = v28;
      goto LABEL_36;
    }

    v26 -= v27;
    if (!v26)
    {
      goto LABEL_25;
    }

    v31 = *a1[6].__opaque;
    v32 = *(v31 + 376);
    if (v16 + v27 >= (*(v32 + 108) & 0x7FFFFFFFu))
    {
      v16 = 0;
    }

    else
    {
      v16 = (v16 + v27);
    }

    v25 += v27 * *(v32 + 36);
    v33 = sub_100011290(v31, v16, &v52, &v51);
  }

  while (v26 >= 1 && v33 == 0);
  v13 = v33;
  if (v33)
  {
LABEL_36:
    pthread_mutex_lock(a1);
    goto LABEL_49;
  }

LABEL_25:
  if ((*(v24 + 18) & 0x8002000) != 0)
  {
    pthread_mutex_lock(a1);
    goto LABEL_29;
  }

  v35 = sub_10003C604(v24, v29, v30);
LABEL_28:
  v13 = v35;
  pthread_mutex_lock(a1);
  if (v13)
  {
LABEL_49:
    v43 = *(v24 + 16);
    v41 = *(v24 + 48);
    v42 = a1;
    goto LABEL_50;
  }

LABEL_29:
  if ((*(v24 + 18) & 0x8002000) == 0)
  {
    v44 = *(v24 + 56);
    if (*(v44 + 24) != *(v24 + 36) || *(v44 + 28) != *(v24 + 40) || *(v44 + 8) != a3 || *(v44 + 16) != a8)
    {
      v13 = sub_1000033FC(*a1[6].__opaque);
      if (v13)
      {
        goto LABEL_49;
      }
    }
  }

  v36 = (*a1[11].__opaque + 8 * (*(v24 + 112) & LODWORD(a1[11].__sig)));
  v37 = *v36;
  *(v24 + 72) = *v36;
  if (v37)
  {
    *(v37 + 80) = v24 + 72;
  }

  *v36 = v24;
  *(v24 + 80) = v36;
  v38 = *(v24 + 16) | 1;
  *(v24 + 88) = 0;
  *(v24 + 16) = v38;
  v39 = *&a1[11].__opaque[40];
  *(v24 + 96) = v39;
  *v39 = v24;
  *&a1[11].__opaque[40] = v24 + 88;
  v40 = sub_100039ABC(*(v24 + 36), &v49);
  if (v40)
  {
    v13 = v40;
    goto LABEL_34;
  }

  v45 = *(v49 + 8);
  if (v45 && (v46 = v45(v24, 0), v46))
  {
    v13 = v46;
    v38 = *(v24 + 16);
LABEL_34:
    v41 = *(v24 + 48);
    v42 = a1;
    LODWORD(v43) = v38;
LABEL_50:
    sub_100035774(v42, v43, v41, -1);
    atomic_fetch_add_explicit((v24 + 24), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
    sub_10003B9B4(v24, 0);
LABEL_51:
    sub_1000357DC(a1);
  }

  else
  {
    sub_100039A7C(v24, v47);
    sub_1000357DC(a1);
    v13 = 0;
    *a9 = v24;
  }

  return v13;
}

unint64_t sub_10003C604(uint64_t a1, int8x16_t a2, int8x16_t a3)
{
  v4 = *(*a1 + 392);
  v5 = *(a1 + 56);
  v6 = *(a1 + 48);
  result = sub_10001C718(v5, (v5 + 1), (v6 - 8), 0, a2, a3);
  if (result)
  {
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = (v8 + 4040);
    }

    else
    {
      v9 = (*(*(*a1 + 392) + 384) + 212);
    }

    sub_100012178("%s:%d: %s failed: cksum 0x%016llx, oid 0x%llx, o_xid 0x%llx, o_type 0x%x, o_subtype 0x%x, size %d\n", "obj_checksum_verify", 7004, v9, *v5, v5[1], v5[2], *(v5 + 6), *(v5 + 7), v6);
    atomic_fetch_add_explicit((*(v4 + 376) + 992), 1uLL, memory_order_relaxed);
    if (*(v4 + 625) == 1)
    {
      v10 = *(v4 + 616);
      if (v10)
      {
        v10(a1);
      }
    }

    return sub_1000033FC(v4);
  }

  return result;
}

uint64_t sub_10003C714(uint64_t a1)
{
  v2 = *a1;
  v7 = 0;
  pthread_mutex_lock(v2);
  while (1)
  {
    v3 = *(v2 + 1376);
    if (!v3)
    {
LABEL_8:
      if (*(a1 + 21))
      {
        v5 = 2;
      }

      else
      {
        v5 = *(a1 + 52);
      }

      sub_1000357DC(v2);
      return v5;
    }

    while (*(v3 + 136) != a1)
    {
      v3 = *(v3 + 104);
      if (!v3)
      {
        goto LABEL_8;
      }
    }

    v4 = *(a1 + 16);
    if ((v4 & 0x8000000000) == 0)
    {
      break;
    }

    *(a1 + 16) = v4 | 4;
    sub_100011A68((v2 + 1328), v2, 2, 0);
  }

  sub_10003C7D8(v3, &v7);
  if (v7 == 1)
  {
    sub_1000357DC(v2);
  }

  return *(a1 + 52);
}

uint64_t sub_10003C7D8(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 136);
  v3 = v2[2];
  if ((v3 & 0x10000000000) != 0)
  {
    v5 = *v2;
    while ((v3 & 0x8000000000) != 0)
    {
      v2[2] = v3 | 4;
      *a2 = 1;
      result = sub_100011A68((v5 + 1328), v5, 2, 0);
      v3 = v2[2];
      if ((v3 & 0x10000000000) == 0)
      {
        return result;
      }
    }

    v2[2] = v3 | 0x8000000000;
    sub_1000357DC(v5);
    *a2 = 0;
    v6 = *(*(*v2 + 392) + 384);

    return sub_100050A38(v6);
  }

  return result;
}

atomic_ullong *sub_10003C894(atomic_ullong *result)
{
  if ((~atomic_fetch_add_explicit(result + 3, 1uLL, memory_order_relaxed) & 0xFFFFFF) == 0)
  {
    panic("Reference count overflowed for object %p!\n", result);
  }

  return result;
}

uint64_t sub_10003C8DC(uint64_t result)
{
  v1 = *(result + 16);
  if ((v1 & 0x80000000) == 0)
  {
    panic("obj %p oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x refs 0x%llx is not ephemeral\n", result, *(result + 112), v1, *(result + 32), *(result + 36), *(result + 40), *(result + 24));
  }

  if ((~atomic_fetch_add_explicit((result + 24), 1uLL, memory_order_relaxed) & 0xFFFFFF) == 0)
  {
    panic("Reference count overflowed for object %p!\n", result);
  }

  return result;
}

uint64_t sub_10003C964(uint64_t result, uint64_t a2)
{
  if ((atomic_fetch_or_explicit((a2 + 32), 0x10u, memory_order_relaxed) & 0x10) == 0)
  {
    v2 = result;
    add_explicit = atomic_fetch_add_explicit((result + 904), 1u, memory_order_relaxed);
    if (add_explicit >= 0x100)
    {
      v7 = a2;
      do
      {
        atomic_fetch_add_explicit((v2 + 904), 0xFFFFFFFF, memory_order_relaxed);
        v4 = pthread_rwlock_unlock((v2 + 128));
        if (v4)
        {
          panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_executables/nx/obj.c", 496, v4);
        }

        v5 = pthread_rwlock_wrlock((v2 + 128));
        if (v5)
        {
          panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_executables/nx/obj.c", 497, v5);
        }

        sub_10003D5DC(v2);
        v6 = pthread_rwlock_unlock((v2 + 128));
        if (v6)
        {
          panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_executables/nx/obj.c", 503, v6);
        }

        result = pthread_rwlock_rdlock((v2 + 128));
        if (result)
        {
          panic("%s:%d: rdlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_executables/nx/obj.c", 506, result);
        }

        add_explicit = atomic_fetch_add_explicit((v2 + 904), 1u, memory_order_relaxed);
      }

      while (add_explicit > 0xFF);
      a2 = v7;
    }

    *(*(v2 + 896) + 8 * add_explicit) = a2;
    atomic_fetch_or_explicit((a2 + 32), add_explicit << 24, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_10003CAB4(uint64_t a1, int a2)
{
  if ((*(a1 + 19) & 0x80) == 0)
  {
    return 22;
  }

  v5 = *a1;
  pthread_mutex_lock(*a1);
  v6 = *(a1 + 16);
  if ((a2 != 0) != ((v6 & 0x8000000) == 0))
  {
    sub_100035774(v5, v6, *(a1 + 48), -1);
    v8 = *(a1 + 88);
    v9 = *(a1 + 96);
    v7 = a1 + 88;
    v10 = (v8 + 96);
    if (a2)
    {
      if (!v8)
      {
        v10 = v5 + 12;
      }

      v10->__sig = v9;
      *v9 = v8;
      v11 = *(a1 + 16);
      *(a1 + 16) = v11 & 0xFFFFFFFFF7FFFFFFLL;
      *(a1 + 36) &= ~0x8000000u;
      if ((v11 & 0x80020000000) == 0)
      {
        *(*(a1 + 56) + 24) &= ~0x8000000u;
      }

      v12 = *&v5[11].__opaque[40];
      *(a1 + 88) = 0;
      *(a1 + 96) = v12;
      *v12 = a1;
      *&v5[11].__opaque[40] = v7;
      v13 = *(a1 + 48);
      atomic_fetch_add_explicit(&v5[19].__opaque[32], -v13, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5[19].__opaque[48], v13, memory_order_relaxed);
      atomic_fetch_add_explicit(v5[20].__opaque, 1uLL, memory_order_relaxed);
      v14 = qword_100070590;
      v15 = *(a1 + 48);
      atomic_fetch_add_explicit((qword_100070590 + 416), -v15, memory_order_relaxed);
      atomic_fetch_add_explicit((v14 + 432), v15, memory_order_relaxed);
      atomic_fetch_add_explicit((v14 + 448), 1uLL, memory_order_relaxed);
      v16 = &v5[18].__opaque[48];
      if (*(a1 + 56))
      {
        v17 = *(a1 + 48);
        atomic_fetch_add_explicit(v16, v17, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5[19].__sig, v17, memory_order_relaxed);
        v18 = 3;
      }

      else
      {
        v18 = 5;
      }

      atomic_fetch_add_explicit(&v16[v18], 1uLL, memory_order_relaxed);
      v27 = qword_100070590;
      v28 = (qword_100070590 + 368);
      if (*(a1 + 56))
      {
        v29 = *(a1 + 48);
        atomic_fetch_add_explicit(v28, v29, memory_order_relaxed);
        v30 = (v27 + 376);
LABEL_23:
        atomic_fetch_add_explicit(v30, v29, memory_order_relaxed);
        v32 = 3;
LABEL_25:
        atomic_fetch_add_explicit(&v28[v32], 1uLL, memory_order_relaxed);
        sub_100035774(v5, *(a1 + 16), *(a1 + 48), 1);
        goto LABEL_26;
      }
    }

    else
    {
      if (!v8)
      {
        v10 = (v5 + 752);
      }

      v10->__sig = v9;
      *v9 = v8;
      v19 = *(a1 + 16);
      *(a1 + 16) = v19 | 0x8000000;
      *(a1 + 36) |= 0x8000000u;
      if ((v19 & 0x80020000000) == 0)
      {
        *(*(a1 + 56) + 24) |= 0x8000000u;
      }

      sig = v5[12].__sig;
      *(a1 + 88) = 0;
      *(a1 + 96) = sig;
      *sig = a1;
      v5[12].__sig = v7;
      v21 = *(a1 + 48);
      atomic_fetch_add_explicit(&v5[18].__opaque[48], -v21, memory_order_relaxed);
      atomic_fetch_add_explicit(v5[19].__opaque, v21, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5[19].__opaque[16], 1uLL, memory_order_relaxed);
      v22 = qword_100070590;
      v23 = *(a1 + 48);
      atomic_fetch_add_explicit((qword_100070590 + 368), -v23, memory_order_relaxed);
      atomic_fetch_add_explicit((v22 + 384), v23, memory_order_relaxed);
      atomic_fetch_add_explicit((v22 + 400), 1uLL, memory_order_relaxed);
      v24 = &v5[19].__opaque[32];
      if (*(a1 + 56))
      {
        v25 = *(a1 + 48);
        atomic_fetch_add_explicit(v24, v25, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5[19].__opaque[40], v25, memory_order_relaxed);
        v26 = 3;
      }

      else
      {
        v26 = 5;
      }

      atomic_fetch_add_explicit(&v24[v26], 1uLL, memory_order_relaxed);
      v31 = qword_100070590;
      v28 = (qword_100070590 + 416);
      if (*(a1 + 56))
      {
        v29 = *(a1 + 48);
        atomic_fetch_add_explicit(v28, v29, memory_order_relaxed);
        v30 = (v31 + 424);
        goto LABEL_23;
      }
    }

    v32 = 5;
    goto LABEL_25;
  }

LABEL_26:
  sub_1000357DC(v5);
  return 0;
}

uint64_t sub_10003CD64(uint64_t a1, int a2)
{
  v3 = a2 != 0;
  v4 = *a1;
  pthread_mutex_lock(*a1);
  *(a1 + 16) = *(a1 + 16) & 0xFFFFFFBFFFFFFFFFLL | (v3 << 38);
  sub_1000357DC(v4);
  return 0;
}

uint64_t sub_10003CDB8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *result;
  v7 = *(result + 16);
  if ((v7 & 0x10) != 0)
  {
    panic("deleted object @ %p can not be dirtied!! (flags: 0x%llx)\n", result, v7);
  }

  if ((v7 & 0x80000000000) != 0)
  {
    panic("ciphertext object @ %p can not be dirtied!! (flags: 0x%llx)\n", result, v7);
  }

  if ((v7 & 0x8000000) == 0)
  {
    result = sub_10004D1DC(*(v6 + 392), a2);
    if (!result)
    {
      v8 = *(v5 + 112);
      panic("oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x bad dirty xid: 0x%llx\n", v8, *(v5 + 16), *(v5 + 32), *(v5 + 36), *(v5 + 40), a2);
    }
  }

  v9 = *(v5 + 64);
  if (v9 && v9 == *(v5 + 56))
  {
    panic("oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x object not prepared before dirtying\n", *(v5 + 112), *(v5 + 16), *(v5 + 32), *(v5 + 36), *(v5 + 40));
  }

  v10 = *(v5 + 16);
  if ((v10 & 0x80000000) != 0)
  {
    *(v5 + 144) = a2;
  }

  else if (atomic_fetch_or_explicit((v5 + 32), 1u, memory_order_relaxed))
  {
    if (a3 && *(v5 + 152) != a3)
    {
      v28 = *(v5 + 152);
      panic("new address mismatch on redirty 0x%llx 0x%llx\n");
    }
  }

  else
  {
    v11 = *(v5 + 36);
    if ((v10 & 0xC00000000) == 0 && !(v11 >> 30))
    {
      v12 = *(v5 + 120);
      if (v12 != a2 && *(v5 + 144) != a2)
      {
        panic("virtual object not prepared before dirtying: oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x xid 0x%llx 0x%llx 0x%llx\n", *(v5 + 112), v10, *(v5 + 32), v11, *(v5 + 40), v12, *(v5 + 144), a2);
      }
    }

    *(v5 + 168) = 0;
    if (v11 >> 30 == 1)
    {
      v13 = *(v5 + 16);
      if ((v13 & 0x40) == 0)
      {
        v14 = *(v5 + 120);
        if (v14 != a2)
        {
          v15 = *(v5 + 144);
          if (v14 != v15 && !(*(v5 + 152) | a3))
          {
            panic("physical object not prepared before dirtying: oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x xid 0x%llx 0x%llx 0x%llx naddr 0x%llx 0x%llx\n", *(v5 + 112), v13, *(v5 + 32), v11, *(v5 + 40), v14, v15, a2, 0, 0);
          }
        }
      }
    }

    v16 = *(v5 + 152);
    if (v16)
    {
      if (v16 != a3)
      {
        if (a3)
        {
          v17 = *(v5 + 36);
          if ((v17 & 0xC0000000) == 0x40000000)
          {
            panic("physical object new address mismatch: oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x xid 0x%llx 0x%llx 0x%llx naddr 0x%llx 0x%llx\n", *(v5 + 112), *(v5 + 16), *(v5 + 32), v17, *(v5 + 40), *(v5 + 120), *(v5 + 144), a2, *(v5 + 152), a3);
          }
        }
      }
    }

    else
    {
      *(v5 + 152) = a3;
      if (a3 && (*(v5 + 16) & 0x40000000) != 0 && *(v5 + 112) != a3)
      {
        v18 = *(v5 + 72);
        v19 = *(v5 + 80);
        if (v18)
        {
          *(v18 + 80) = v19;
        }

        *v19 = v18;
        *(v5 + 112) = a3;
        v20 = (*(v6 + 712) + 8 * (*(v6 + 704) & a3));
        v21 = *v20;
        *(v5 + 72) = *v20;
        if (v21)
        {
          *(v21 + 80) = v5 + 72;
        }

        *v20 = v5;
        *(v5 + 80) = v20;
      }
    }

    *(v5 + 144) = a2;
    v22 = pthread_rwlock_wrlock((v6 + 128));
    if (v22)
    {
      panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_executables/nx/obj.c", 6038, v22);
    }

    v23 = (v5 + 88);
    if (*(v5 + 88) != 3735928559)
    {
      sub_10003D748(v5);
    }

    v24 = atomic_fetch_and_explicit((v5 + 32), 0xFFFFEFu, memory_order_relaxed);
    if ((v24 & 0x10) != 0)
    {
      *(*(v6 + 896) + 8 * HIBYTE(v24)) = 0;
    }

    if (*v23 != 3735928559)
    {
      panic("obj %p oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x dirty object on the free list?!\n", v5, *(v5 + 112), *(v5 + 16), *(v5 + 32), *(v5 + 36), *(v5 + 40));
    }

    v25 = *(v5 + 16);
    *(v5 + 88) = 0;
    if ((v25 & 0x40000000) != 0)
    {
      v27 = *(v6 + 848);
      *(v5 + 96) = v27;
      *v27 = v5;
      *(v6 + 848) = v23;
      ++*(v6 + 912);
    }

    else
    {
      v26 = *(v6 + 832);
      *(v5 + 96) = v26;
      *v26 = v5;
      *(v6 + 832) = v23;
      ++*(v6 + 908);
    }

    result = pthread_rwlock_unlock((v6 + 128));
    if (result)
    {
      panic("%s:%d: unlock == 0 failed %d\n");
    }
  }

  return result;
}