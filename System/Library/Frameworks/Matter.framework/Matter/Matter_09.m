unint64_t sub_238F2F9DC(uint64_t a1, uint64_t a2)
{
  if (sub_2393C5C40(a1) == 20)
  {
    v4 = 0;
    v5 = 0;
    if (*(a2 + 8) == 1)
    {
      *(a2 + 8) = 0;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 1;
    v6 = sub_2393C6064(a1, a2);
    v5 = v6 & 0xFFFFFFFF00000000;
    if (v6)
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }

    if (!v6)
    {
      v5 = 0;
    }
  }

  return v5 | v4;
}

unint64_t sub_238F2FA70(uint64_t a1, uint64_t a2)
{
  if (sub_2393C5C40(a1) == 20)
  {
    v4 = 0;
    v5 = 0;
    if (*(a2 + 64) == 1)
    {
      *(a2 + 64) = 0;
    }
  }

  else
  {
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 64) = 1;
    v6 = sub_238F31D84(a2, a1);
    v5 = v6 & 0xFFFFFFFF00000000;
    if (v6)
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }

    if (!v6)
    {
      v5 = 0;
    }
  }

  return v5 | v4;
}

unint64_t sub_238F2FB0C(uint64_t a1, uint64_t a2)
{
  if (sub_2393C5C40(a1) == 20)
  {
    v4 = 0;
    v5 = 0;
    if (*(a2 + 32) == 1)
    {
      *(a2 + 32) = 0;
    }
  }

  else
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 1;
    v6 = sub_238F36378(a2, a1);
    v5 = v6 & 0xFFFFFFFF00000000;
    if (v6)
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }

    if (!v6)
    {
      v5 = 0;
    }
  }

  return v5 | v4;
}

unint64_t sub_238F2FBA4(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v8, *a2, a3);
  sub_238F2FC74(&v8, 0, a1);
  sub_238F2FD38(&v8, 1u, a1 + 16);
  sub_238F04044(&v8, 2u, (a1 + 32));
  sub_238F2FDF8(&v8, 3u, (a1 + 48));
  if (!v9)
  {
    v4 = *(a1 + 64);
    if (v4 == 4)
    {
      v9 = 0x5C00000587;
      v10 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
    }

    else
    {
      v9 = sub_2393C8140(v8, 4uLL, v4);
      v10 = v5;
      if (!v9)
      {
        v9 = sub_2393C7E38(v8, 5uLL, *(a1 + 65));
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F2FC74(unint64_t result, unsigned int a2, uint64_t a3)
{
  if (!*(result + 8))
  {
    v13 = v3;
    v14 = v4;
    v5 = result;
    v6 = *result;
    v7 = *a3;
    v8 = *(a3 + 8);
    v12 = 0;
    result = sub_2393C8CE0(v6, a2, 22, &v12);
    if (!result)
    {
      if (!v8)
      {
LABEL_8:
        result = sub_2393C8DE0(v6, v12);
        v10 = result & 0xFFFFFFFF00000000;
        if (!result)
        {
          v9 = 0;
          v10 = 0;
          result = 0;
        }

        goto LABEL_10;
      }

      v11 = 136 * v8;
      while (1)
      {
        result = sub_238F323B0(v7, v6, 0x100uLL);
        if (result)
        {
          break;
        }

        v7 += 136;
        v11 -= 136;
        if (!v11)
        {
          goto LABEL_8;
        }
      }
    }

    v10 = result & 0xFFFFFFFF00000000;
LABEL_10:
    *(v5 + 8) = result | v10;
    *(v5 + 16) = v9;
  }

  return result;
}

unint64_t sub_238F2FD38(unint64_t result, unsigned int a2, uint64_t a3)
{
  if (!*(result + 8))
  {
    v13 = v3;
    v14 = v4;
    v5 = result;
    v6 = *result;
    v7 = *a3;
    v8 = *(a3 + 8);
    v12 = 0;
    result = sub_2393C8CE0(v6, a2, 22, &v12);
    if (!result)
    {
      if (!v8)
      {
LABEL_8:
        result = sub_2393C8DE0(v6, v12);
        v10 = result & 0xFFFFFFFF00000000;
        if (!result)
        {
          v9 = 0;
          v10 = 0;
          result = 0;
        }

        goto LABEL_10;
      }

      v11 = v8 << 6;
      while (1)
      {
        result = sub_238F31C50(v7, v6, 0x100uLL);
        if (result)
        {
          break;
        }

        v7 += 64;
        v11 -= 64;
        if (!v11)
        {
          goto LABEL_8;
        }
      }
    }

    v10 = result & 0xFFFFFFFF00000000;
LABEL_10:
    *(v5 + 8) = result | v10;
    *(v5 + 16) = v9;
  }

  return result;
}

unint64_t sub_238F2FDF8(unint64_t result, unsigned int a2, unsigned __int8 **a3)
{
  if (!*(result + 8))
  {
    v12 = v3;
    v13 = v4;
    v5 = result;
    v6 = *result;
    v7 = *a3;
    v8 = a3[1];
    v11 = 0;
    result = sub_2393C8CE0(v6, a2, 22, &v11);
    if (!result)
    {
      if (!v8)
      {
LABEL_7:
        result = sub_2393C8DE0(v6, v11);
        v10 = result & 0xFFFFFFFF00000000;
        if (!result)
        {
          v9 = 0;
          v10 = 0;
          result = 0;
        }

        goto LABEL_9;
      }

      while (1)
      {
        result = sub_2393C7E38(v6, 0x100uLL, *v7);
        if (result)
        {
          break;
        }

        ++v7;
        if (!--v8)
        {
          goto LABEL_7;
        }
      }
    }

    v10 = result & 0xFFFFFFFF00000000;
LABEL_9:
    *(v5 + 8) = result | v10;
    *(v5 + 16) = v9;
  }

  return result;
}

unint64_t sub_238F2FEB4(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (v9 > 2u)
    {
      if (v9 != 3)
      {
        if (v9 == 4)
        {
          v4 = sub_238EA4D5C(a2, (a1 + 288));
        }

        else if (v9 == 5)
        {
          v4 = sub_2393C5CE4(a2, (a1 + 289));
        }

        goto LABEL_16;
      }

      v5 = a1 + 216;
      goto LABEL_15;
    }

    switch(v9)
    {
      case 0u:
        v5 = a1;
        goto LABEL_15;
      case 1u:
        v5 = a1 + 72;
        goto LABEL_15;
      case 2u:
        v5 = a1 + 144;
LABEL_15:
        v4 = sub_238F36BB4(v5, a2);
        break;
    }

LABEL_16:
    v6 = v4;
    if (v4)
    {
      v7 = v4 & 0xFFFFFFFF00000000;
      return v7 | v6;
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238F2FFA8(unsigned __int8 **a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(v5, *a2, a3);
  sub_238F04F08(v5, 0, a1);
  return sub_2394C38E0(v5);
}

unint64_t sub_238F2FFF4(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v6, a2, a3);
  if (!v7)
  {
    v7 = sub_2393C7E38(v6, 0, *a1);
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

unint64_t sub_238F30048(unsigned __int16 *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v9, *a2, a3);
  if (!v10)
  {
    v10 = sub_2393C818C(v9, 0, *a1);
    v11 = v4;
    if (!v10)
    {
      v5 = *(a1 + 2);
      if (v5 == 4)
      {
        v6 = 0x5C00000587;
        v7 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
      }

      else
      {
        v6 = sub_2393C8140(v9, 1uLL, v5);
      }

      v10 = v6;
      v11 = v7;
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F300D4(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    if (v8 == 1)
    {
      v4 = sub_238EA4D5C(a2, (a1 + 2));
    }

    else if (!v8)
    {
      v4 = sub_238F36E54(a2, a1);
      if (!v4)
      {
        v4 = 0;
      }
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238F30180(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  sub_238F2FC74(&v8, 0, a1);
  sub_238F2FD38(&v8, 1u, a1 + 16);
  sub_238F04044(&v8, 2u, (a1 + 32));
  sub_238F2FDF8(&v8, 3u, (a1 + 48));
  if (!v9)
  {
    v4 = *(a1 + 64);
    if (v4 == 4)
    {
      v9 = 0x5C00000587;
      v10 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
    }

    else
    {
      v9 = sub_2393C8140(v8, 4uLL, v4);
      v10 = v5;
      if (!v9)
      {
        v9 = sub_2393C7E38(v8, 5uLL, *(a1 + 65));
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F3024C(unsigned __int8 *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v9, *a2, a3);
  if (!v10)
  {
    v10 = sub_2393C7E38(v9, 0, *a1);
    v11 = v4;
    if (!v10)
    {
      v10 = sub_238F37028(v9, 1uLL, a1 + 1);
      v11 = v5;
      if (!v10)
      {
        v10 = sub_238F02628(v9, 2uLL, a1 + 3);
        v11 = v6;
        if (!v10)
        {
          v10 = sub_238F38984(v9, 3uLL, a1 + 5);
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F302EC(uint64_t a1, uint64_t a2)
{
  v11[0] = 0;
  v12 = a2;
  while (1)
  {
    v10 = 0;
    v4 = sub_2394C37B8(v11, &v10);
    if (v4)
    {
      break;
    }

    if (v10 > 1u)
    {
      if (v10 == 2)
      {
        *(a1 + 3) = 1;
        v4 = sub_2393C5ED0(a2, (a1 + 4));
      }

      else if (v10 == 3)
      {
        *(a1 + 5) = 1;
        *(a1 + 6) = 0;
        v4 = sub_238F00228(a2, (a1 + 6));
      }

      goto LABEL_13;
    }

    if (!v10)
    {
      v6 = a2;
      v5 = a1;
      goto LABEL_11;
    }

    if (v10 == 1)
    {
      *(a1 + 1) = 1;
      v5 = (a1 + 2);
      v6 = a2;
LABEL_11:
      v4 = sub_2393C5CE4(v6, v5);
    }

LABEL_13:
    v7 = v4;
    if (v4)
    {
      v8 = v4 & 0xFFFFFFFF00000000;
      return v8 | v7;
    }
  }

  v8 = v4 & 0xFFFFFFFF00000000;
  v7 = v4;
  if (v4 == 33)
  {
    v7 = 0;
    v8 = 0;
  }

  return v8 | v7;
}

unint64_t sub_238F303DC(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v6, a2, a3);
  if (!v7)
  {
    v7 = sub_238F31C50(a1, v6, 0);
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

unint64_t sub_238F30430(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (!v9)
    {
      v5 = sub_238F31D84(a1, a2);
      v6 = v5;
      if (v5)
      {
        v7 = v5 & 0xFFFFFFFF00000000;
        return v7 | v6;
      }
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238F304C4(unsigned __int8 *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v33, *a2, a3);
  if (!v34)
  {
    v34 = sub_2393C7E38(v33, 0, *a1);
    v35 = v4;
    if (!v34)
    {
      v34 = sub_238F2AA44(v33, 1uLL, a1 + 2);
      v35 = v5;
      if (!v34)
      {
        v34 = sub_2393C7E38(v33, 2uLL, a1[6]);
        v35 = v6;
        if (!v34)
        {
          v34 = sub_238F2AA44(v33, 3uLL, a1 + 8);
          v35 = v7;
          if (!v34)
          {
            v34 = sub_2393C7E38(v33, 4uLL, a1[12]);
            v35 = v8;
            if (!v34)
            {
              v34 = sub_238F37028(v33, 5uLL, a1 + 13);
              v35 = v9;
              if (!v34)
              {
                v34 = sub_238F2AA44(v33, 6uLL, a1 + 16);
                v35 = v10;
                if (!v34)
                {
                  v34 = sub_2393C7E38(v33, 7uLL, a1[20]);
                  v35 = v11;
                  if (!v34)
                  {
                    v34 = sub_238EFDC40(v33, 8uLL, a1 + 24);
                    v35 = v12;
                    if (!v34)
                    {
                      v34 = sub_2393C7E38(v33, 9uLL, a1[48]);
                      v35 = v13;
                      if (!v34)
                      {
                        v34 = sub_238EFDC40(v33, 0xAuLL, a1 + 56);
                        v35 = v14;
                        if (!v34)
                        {
                          v34 = sub_2393C7E38(v33, 0xBuLL, a1[80]);
                          v35 = v15;
                          if (!v34)
                          {
                            v34 = sub_238F37028(v33, 0xCuLL, a1 + 81);
                            v35 = v16;
                            if (!v34)
                            {
                              v34 = sub_238EFDC40(v33, 0xDuLL, a1 + 88);
                              v35 = v17;
                              if (!v34)
                              {
                                v34 = sub_2393C7E38(v33, 0xEuLL, a1[112]);
                                v35 = v18;
                                if (!v34)
                                {
                                  v34 = sub_238F38F5C(v33, 0xFuLL, a1 + 120);
                                  v35 = v19;
                                  if (!v34)
                                  {
                                    v34 = sub_2393C7E38(v33, 0x10uLL, a1[192]);
                                    v35 = v20;
                                    if (!v34)
                                    {
                                      v34 = sub_238F38F5C(v33, 0x11uLL, a1 + 200);
                                      v35 = v21;
                                      if (!v34)
                                      {
                                        v34 = sub_2393C7E38(v33, 0x12uLL, a1[272]);
                                        v35 = v22;
                                        if (!v34)
                                        {
                                          v34 = sub_238F37028(v33, 0x13uLL, a1 + 273);
                                          v35 = v23;
                                          if (!v34)
                                          {
                                            v34 = sub_238F38F5C(v33, 0x14uLL, a1 + 280);
                                            v35 = v24;
                                            if (!v34)
                                            {
                                              v34 = sub_2393C7E38(v33, 0x15uLL, a1[352]);
                                              v35 = v25;
                                              if (!v34)
                                              {
                                                v34 = sub_238F38FB0(v33, 0x16uLL, a1 + 360);
                                                v35 = v26;
                                                if (!v34)
                                                {
                                                  v34 = sub_2393C7E38(v33, 0x17uLL, a1[384]);
                                                  v35 = v27;
                                                  if (!v34)
                                                  {
                                                    v34 = sub_238F38FB0(v33, 0x18uLL, a1 + 392);
                                                    v35 = v28;
                                                    if (!v34)
                                                    {
                                                      v34 = sub_2393C7E38(v33, 0x19uLL, a1[416]);
                                                      v35 = v29;
                                                      if (!v34)
                                                      {
                                                        v34 = sub_238F37028(v33, 0x1AuLL, a1 + 417);
                                                        v35 = v30;
                                                        if (!v34)
                                                        {
                                                          v34 = sub_238F38FB0(v33, 0x1BuLL, a1 + 424);
                                                          v35 = v31;
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

  return sub_2394C38E0(&v33);
}

unint64_t sub_238F307A4(uint64_t a1, uint64_t a2)
{
  v15[0] = 0;
  v16 = a2;
  while (1)
  {
    v14 = 0;
    v4 = sub_2394C37B8(v15, &v14);
    if (v4)
    {
      break;
    }

    switch(v14)
    {
      case 0:
        v5 = a2;
        v6 = a1;
        goto LABEL_37;
      case 1:
        *(a1 + 2) = 1;
        *(a1 + 4) = 0;
        v9 = (a1 + 4);
        goto LABEL_26;
      case 2:
        v6 = (a1 + 6);
        goto LABEL_36;
      case 3:
        *(a1 + 8) = 1;
        *(a1 + 10) = 0;
        v9 = (a1 + 10);
        goto LABEL_26;
      case 4:
        v6 = (a1 + 12);
        goto LABEL_36;
      case 5:
        *(a1 + 13) = 1;
        v6 = (a1 + 14);
        goto LABEL_36;
      case 6:
        *(a1 + 16) = 1;
        *(a1 + 18) = 0;
        v9 = (a1 + 18);
LABEL_26:
        v4 = sub_2393C5F70(a2, v9);
        break;
      case 7:
        v6 = (a1 + 20);
        goto LABEL_36;
      case 8:
        *(a1 + 24) = 1;
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
        v10 = (a1 + 32);
        goto LABEL_30;
      case 9:
        v6 = (a1 + 48);
        goto LABEL_36;
      case 10:
        *(a1 + 56) = 1;
        *(a1 + 64) = 0;
        *(a1 + 72) = 0;
        v10 = (a1 + 64);
        goto LABEL_30;
      case 11:
        v6 = (a1 + 80);
        goto LABEL_36;
      case 12:
        *(a1 + 81) = 1;
        v6 = (a1 + 82);
        goto LABEL_36;
      case 13:
        *(a1 + 88) = 1;
        *(a1 + 96) = 0;
        *(a1 + 104) = 0;
        v10 = (a1 + 96);
LABEL_30:
        v4 = sub_2393C61E0(a2, v10);
        break;
      case 14:
        v6 = (a1 + 112);
        goto LABEL_36;
      case 15:
        *(a1 + 120) = 1;
        *(a1 + 128) = 0u;
        *(a1 + 144) = 0u;
        *(a1 + 160) = 0u;
        *(a1 + 176) = 0u;
        v8 = a1 + 128;
        goto LABEL_21;
      case 16:
        v6 = (a1 + 192);
        goto LABEL_36;
      case 17:
        *(a1 + 200) = 1;
        *(a1 + 208) = 0u;
        *(a1 + 224) = 0u;
        *(a1 + 240) = 0u;
        *(a1 + 256) = 0u;
        v8 = a1 + 208;
        goto LABEL_21;
      case 18:
        v6 = (a1 + 272);
        goto LABEL_36;
      case 19:
        *(a1 + 273) = 1;
        v6 = (a1 + 274);
        goto LABEL_36;
      case 20:
        *(a1 + 280) = 1;
        *(a1 + 288) = 0u;
        *(a1 + 304) = 0u;
        *(a1 + 320) = 0u;
        *(a1 + 336) = 0u;
        v8 = a1 + 288;
LABEL_21:
        v4 = sub_238F31D84(v8, a2);
        break;
      case 21:
        v6 = (a1 + 352);
        goto LABEL_36;
      case 22:
        v7 = (a1 + 360);
        goto LABEL_32;
      case 23:
        v6 = (a1 + 440);
        goto LABEL_36;
      case 24:
        v7 = (a1 + 448);
        goto LABEL_32;
      case 25:
        v6 = (a1 + 528);
        goto LABEL_36;
      case 26:
        *(a1 + 529) = 1;
        v6 = (a1 + 530);
LABEL_36:
        v5 = a2;
LABEL_37:
        v4 = sub_2393C5CE4(v5, v6);
        break;
      case 27:
        v7 = (a1 + 536);
LABEL_32:
        v4 = sub_238F06AB0(a2, v7);
        break;
      default:
        break;
    }

    v11 = v4;
    if (v4)
    {
      v12 = v4 & 0xFFFFFFFF00000000;
      return v12 | v11;
    }
  }

  v12 = v4 & 0xFFFFFFFF00000000;
  v11 = v4;
  if (v4 == 33)
  {
    v11 = 0;
    v12 = 0;
  }

  return v12 | v11;
}

unint64_t sub_238F309F8(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v6, a2, a3);
  if (!v7)
  {
    v7 = sub_238F32224(a1, v6, 0);
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

unint64_t sub_238F30A4C(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (!v9)
    {
      v5 = sub_238F322C0(a1, a2);
      v6 = v5;
      if (v5)
      {
        v7 = v5 & 0xFFFFFFFF00000000;
        return v7 | v6;
      }
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238F30AE0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(v5, a2, a3);
  sub_238F2FD38(v5, 0, a1);
  return sub_2394C38E0(v5);
}

unint64_t sub_238F30B28(unsigned __int8 *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v6, *a2, a3);
  if (!v7)
  {
    v7 = sub_238F31C50(a1, v6, 0);
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

unint64_t sub_238F30B80(unsigned __int8 **a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(v5, a2, a3);
  sub_238F04F08(v5, 0, a1);
  return sub_2394C38E0(v5);
}

unint64_t sub_238F30BC8(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v6, a2, a3);
  if (!v7)
  {
    v7 = sub_238F323B0(a1, v6, 0);
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

unint64_t sub_238F30C1C(_BYTE *a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (!v9)
    {
      v5 = sub_238F32474(a1, a2);
      v6 = v5;
      if (v5)
      {
        v7 = v5 & 0xFFFFFFFF00000000;
        return v7 | v6;
      }
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238F30CB0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(v5, a2, a3);
  sub_238F2FC74(v5, 0, a1);
  return sub_2394C38E0(v5);
}

unint64_t sub_238F30CF8(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v9, a2, a3);
  if (!v10)
  {
    v10 = sub_2393C818C(v9, 0, *a1);
    v11 = v4;
    if (!v10)
    {
      v5 = *(a1 + 2);
      if (v5 == 4)
      {
        v6 = 0x5C00000587;
        v7 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
      }

      else
      {
        v6 = sub_2393C8140(v9, 1uLL, v5);
      }

      v10 = v6;
      v11 = v7;
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F30D80(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v9, *a2, a3);
  if (!v10)
  {
    v10 = sub_238F362F4(a1, v9, 0);
    v11 = v4;
    if (!v10)
    {
      v5 = *(a1 + 32);
      if (v5 == 3)
      {
        v6 = 0x5C00000587;
        v7 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
      }

      else
      {
        v6 = sub_2393C8140(v9, 1uLL, v5);
      }

      v10 = v6;
      v11 = v7;
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F30E0C(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    if (v8 == 1)
    {
      v4 = sub_238EFD7D0(a2, (a1 + 32));
    }

    else if (!v8)
    {
      v4 = sub_238F36378(a1, a2);
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238F30EAC(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v6, a2, a3);
  if (!v7)
  {
    v7 = sub_238F38984(v6, 0, a1);
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

unint64_t sub_238F30F00(_BYTE *a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (!v9)
    {
      *a1 = 1;
      *(a1 + 1) = 0;
      v5 = sub_238F00228(a2, a1 + 1);
      v6 = v5;
      if (v5)
      {
        v7 = v5 & 0xFFFFFFFF00000000;
        return v7 | v6;
      }
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238F30FA8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v17, a2, a3);
  if (!v18)
  {
    v18 = sub_238EFD4A8(v17, 0, a1);
    v19 = v4;
    if (!v18)
    {
      v18 = sub_238F2AA44(v17, 1uLL, (a1 + 4));
      v19 = v5;
      if (!v18)
      {
        v18 = sub_238F37968(v17, 2uLL, (a1 + 8));
        v19 = v6;
        if (!v18)
        {
          v18 = sub_238F37AF8(v17, 3uLL, a1 + 16);
          v19 = v7;
          if (!v18)
          {
            v18 = sub_238EFDC40(v17, 4uLL, (a1 + 40));
            v19 = v8;
            if (!v18)
            {
              v18 = sub_238F1EE44(v17, 5uLL, (a1 + 64));
              v19 = v9;
              if (!v18)
              {
                v18 = sub_238F390B8(v17, 6uLL, (a1 + 96));
                v19 = v10;
                if (!v18)
                {
                  v18 = sub_238F38F5C(v17, 7uLL, (a1 + 168));
                  v19 = v11;
                  if (!v18)
                  {
                    v18 = sub_238F390E0(v17, 8uLL, (a1 + 240));
                    v19 = v12;
                    if (!v18)
                    {
                      v18 = sub_238F39138(v17, 9uLL, (a1 + 320));
                      v19 = v13;
                      if (!v18)
                      {
                        v18 = sub_238F38FB0(v17, 0xAuLL, (a1 + 344));
                        v19 = v14;
                        if (!v18)
                        {
                          v18 = sub_238F39210(v17, 0xBuLL, (a1 + 368));
                          v19 = v15;
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

  return sub_2394C38E0(&v17);
}

unint64_t sub_238F31104(uint64_t a1, uint64_t a2)
{
  v18[0] = 0;
  v19 = a2;
  v4 = (a1 + 488);
  v5 = a1 + 248;
  while (1)
  {
    v17 = 0;
    v6 = sub_2394C37B8(v18, &v17);
    if (v6)
    {
      break;
    }

    if (v17 > 5u)
    {
      if (v17 > 8u)
      {
        switch(v17)
        {
          case 9u:
            v13 = a1 + 320;
            v12 = a2;
            goto LABEL_28;
          case 0xAu:
            v6 = sub_238F06AB0(a2, (a1 + 400));
            break;
          case 0xBu:
            *(a1 + 480) = 1;
            *v4 = 0u;
            v4[1] = 0u;
            v4[2] = 0u;
            v4[3] = 0u;
            v4[4] = 0u;
            v12 = a2;
            v13 = v4;
LABEL_28:
            v6 = sub_238EFE808(v12, v13);
            break;
        }
      }

      else
      {
        switch(v17)
        {
          case 6u:
            v10 = a1 + 96;
            v9 = a2;
            goto LABEL_24;
          case 7u:
            *(a1 + 168) = 1;
            *(a1 + 176) = 0u;
            *(a1 + 192) = 0u;
            *(a1 + 208) = 0u;
            *(a1 + 224) = 0u;
            v6 = sub_238F31D84(a1 + 176, a2);
            break;
          case 8u:
            *(a1 + 240) = 1;
            *v5 = 0u;
            *(v5 + 16) = 0u;
            *(v5 + 32) = 0u;
            *(v5 + 48) = 0u;
            *(v5 + 64) = 0;
            v9 = a2;
            v10 = v5;
LABEL_24:
            v6 = sub_238F2FA70(v9, v10);
            break;
        }
      }
    }

    else if (v17 > 2u)
    {
      switch(v17)
      {
        case 3u:
          v11 = a1 + 16;
          goto LABEL_26;
        case 4u:
          *(a1 + 40) = 1;
          *(a1 + 48) = 0;
          *(a1 + 56) = 0;
          v6 = sub_2393C61E0(a2, (a1 + 48));
          break;
        case 5u:
          *(a1 + 64) = 1;
          *(a1 + 80) = 0;
          *(a1 + 88) = 0;
          *(a1 + 72) = 0;
          v11 = a1 + 72;
LABEL_26:
          v6 = sub_238F0BA3C(a2, v11);
          break;
      }
    }

    else
    {
      if (v17)
      {
        if (v17 == 1)
        {
          *(a1 + 4) = 1;
          *(a1 + 6) = 0;
          v6 = sub_2393C5F70(a2, (a1 + 6));
          goto LABEL_33;
        }

        *(a1 + 8) = 1;
        *(a1 + 10) = 0;
        v7 = (a1 + 10);
        v8 = a2;
      }

      else
      {
        v8 = a2;
        v7 = a1;
      }

      v6 = sub_238EFD714(v8, v7);
    }

LABEL_33:
    v14 = v6;
    if (v6)
    {
      v15 = v6 & 0xFFFFFFFF00000000;
      return v15 | v14;
    }
  }

  v15 = v6 & 0xFFFFFFFF00000000;
  v14 = v6;
  if (v6 == 33)
  {
    v14 = 0;
    v15 = 0;
  }

  return v15 | v14;
}

unint64_t sub_238F31310(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v10, a2, a3);
  if (!v11)
  {
    v11 = sub_2393C8140(v10, 0, *a1);
    v12 = v4;
    if (!v11)
    {
      v5 = a1[1];
      if (v5 == 4)
      {
        v6 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
        v7 = 0x5C00000587;
LABEL_7:
        v11 = v7;
        v12 = v6;
        return sub_2394C38E0(&v10);
      }

      v11 = sub_2393C8140(v10, 1uLL, v5);
      v12 = v8;
      if (!v11)
      {
        v7 = sub_2393C7E38(v10, 2uLL, a1[2]);
        goto LABEL_7;
      }
    }
  }

  return sub_2394C38E0(&v10);
}

unint64_t sub_238F313B0(_BYTE *a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    switch(v8)
    {
      case 2:
        v4 = sub_2393C5CE4(a2, a1 + 2);
        break;
      case 1:
        v4 = sub_238EA4D5C(a2, a1 + 1);
        break;
      case 0:
        v4 = sub_2393C5ED0(a2, a1);
        break;
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238F31468(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_2393C818C(v8, 0, *a1);
    v10 = v4;
    if (!v9)
    {
      v9 = sub_2393C818C(v8, 1uLL, a1[1]);
      v10 = v5;
      if (!v9)
      {
        v9 = sub_2393C8140(v8, 2uLL, *(a1 + 4));
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F314EC(uint64_t a1, uint64_t a2)
{
  v11[0] = 0;
  v12 = a2;
  while (1)
  {
    v10 = 0;
    v4 = sub_2394C37B8(v11, &v10);
    if (v4)
    {
      break;
    }

    switch(v10)
    {
      case 2:
        v4 = sub_2393C5ED0(a2, (a1 + 4));
        break;
      case 1:
        v6 = (a1 + 2);
        v5 = a2;
        goto LABEL_8;
      case 0:
        v5 = a2;
        v6 = a1;
LABEL_8:
        v4 = sub_2393C5F70(v5, v6);
        break;
    }

    v7 = v4;
    if (v4)
    {
      v8 = v4 & 0xFFFFFFFF00000000;
      return v8 | v7;
    }
  }

  v8 = v4 & 0xFFFFFFFF00000000;
  v7 = v4;
  if (v4 == 33)
  {
    v7 = 0;
    v8 = 0;
  }

  return v8 | v7;
}

unint64_t sub_238F315A0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v9, a2, a3);
  if (!v10)
  {
    v10 = sub_238F362F4(a1, v9, 0);
    v11 = v4;
    if (!v10)
    {
      v5 = *(a1 + 32);
      if (v5 == 3)
      {
        v6 = 0x5C00000587;
        v7 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
      }

      else
      {
        v6 = sub_2393C8140(v9, 1uLL, v5);
      }

      v10 = v6;
      v11 = v7;
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F31628(unsigned __int8 *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v7, *a2, a3);
  if (!v8)
  {
    v8 = sub_2393C8140(v7, 0, *a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_2393C8154(v7, 1uLL, *(a1 + 1));
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F31698(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    if (v8 == 1)
    {
      v4 = sub_2393C5F2C(a2, (a1 + 8));
    }

    else if (!v8)
    {
      v4 = sub_2393C5ED0(a2, a1);
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

uint64_t sub_238F31738(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v10 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v10);
  if (!result)
  {
    result = sub_2393C8140(a2, 1uLL, *a1);
    if (!result)
    {
      v6 = a1[1];
      if (v6 == 4)
      {
        return 0x5C00000587;
      }

      else
      {
        result = sub_2393C8140(a2, 2uLL, v6);
        if (!result)
        {
          result = sub_2393C7E38(a2, 3uLL, a1[2]);
          if (!result)
          {
            result = sub_238F31C50(a1 + 8, a2, 4uLL);
            if (!result)
            {
              v7 = *(a1 + 9);
              v8 = *(a1 + 10);
              v11 = 0;
              result = sub_2393C8CE0(a2, 5uLL, 22, &v11);
              if (!result)
              {
                if (v8)
                {
                  v9 = v8 << 6;
                  while (1)
                  {
                    result = sub_238F31C50(v7, a2, 0x100uLL);
                    if (result)
                    {
                      break;
                    }

                    v7 += 64;
                    v9 -= 64;
                    if (!v9)
                    {
                      goto LABEL_13;
                    }
                  }
                }

                else
                {
LABEL_13:
                  result = sub_2393C8DE0(a2, v11);
                  if (!result)
                  {
                    result = sub_238F3186C(a2, 6uLL, *(a1 + 11), *(a1 + 12));
                    if (!result)
                    {
                      return sub_2393C8DE0(a2, v10);
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

unint64_t sub_238F3186C(uint64_t a1, unint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v14 = 0;
  v7 = sub_2393C8CE0(a1, a2, 22, &v14);
  v8 = v7;
  if (v7)
  {
    v9 = v7 & 0xFFFFFFFF00000000;
  }

  else if (a4)
  {
    v8 = 1415;
    while (1)
    {
      v10 = *a3;
      if (v10 == 4)
      {
        v9 = 0x5C00000000;
        return v8 | v9;
      }

      v11 = sub_2393C8140(a1, 0x100uLL, v10);
      if (v11)
      {
        break;
      }

      ++a3;
      if (!--a4)
      {
        goto LABEL_8;
      }
    }

    v9 = v11 & 0xFFFFFFFF00000000;
    v8 = v11;
  }

  else
  {
LABEL_8:
    v12 = sub_2393C8DE0(a1, v14);
    v9 = v12 & 0xFFFFFFFF00000000;
    if (v12)
    {
      v8 = v12;
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }
  }

  return v8 | v9;
}

unint64_t sub_238F3194C(_BYTE *a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (v9 <= 3u)
    {
      switch(v9)
      {
        case 1u:
          v4 = sub_2393C5ED0(a2, a1);
          break;
        case 2u:
          v4 = sub_238EA4D5C(a2, a1 + 1);
          break;
        case 3u:
          v4 = sub_2393C5CE4(a2, a1 + 2);
          break;
      }

      goto LABEL_17;
    }

    switch(v9)
    {
      case 4u:
        v4 = sub_238F31D84((a1 + 8), a2);
        break;
      case 5u:
        v5 = (a1 + 72);
        goto LABEL_16;
      case 6u:
        v5 = (a1 + 144);
LABEL_16:
        v4 = sub_238F36BB4(v5, a2);
        break;
    }

LABEL_17:
    v6 = v4;
    if (v4)
    {
      v7 = v4 & 0xFFFFFFFF00000000;
      return v7 | v6;
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238F31A50(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v6 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v6);
  if (!result)
  {
    result = sub_2393C8140(a2, 0xFEuLL, *a1);
    if (!result)
    {
      return sub_2393C8DE0(a2, v6);
    }
  }

  return result;
}

unint64_t sub_238F31AB8(_BYTE *a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (v9 == 254)
    {
      v5 = sub_2393C5ED0(a2, a1);
      v6 = v5;
      if (v5)
      {
        v7 = v5 & 0xFFFFFFFF00000000;
        return v7 | v6;
      }
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238F31B50(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v6 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v6);
  if (!result)
  {
    result = sub_2393C8140(a2, 1uLL, *a1);
    if (!result)
    {
      return sub_2393C8DE0(a2, v6);
    }
  }

  return result;
}

unint64_t sub_238F31BB8(_BYTE *a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (v9 == 1)
    {
      v5 = sub_2393C5ED0(a2, a1);
      v6 = v5;
      if (v5)
      {
        v7 = v5 & 0xFFFFFFFF00000000;
        return v7 | v6;
      }
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238F31C50(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v16, a2, a3);
  if (!v17)
  {
    v17 = sub_2393C8140(v16, 0, *a1);
    v18 = v4;
    if (!v17)
    {
      v17 = sub_2393C7E38(v16, 1uLL, a1[1]);
      v18 = v5;
      if (!v17)
      {
        v6 = a1[2];
        if (v6 == 4)
        {
          v7 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
          v8 = 0x5C00000587;
LABEL_6:
          v17 = v8;
          v18 = v7;
          return sub_2394C38E0(&v16);
        }

        v17 = sub_2393C8140(v16, 2uLL, v6);
        v18 = v9;
        if (!v17)
        {
          v17 = sub_2393C8364(v16, 3uLL, *(a1 + 1), *(a1 + 2));
          v18 = v10;
          if (!v17)
          {
            v17 = sub_2393C85FC(v16, 4uLL, *(a1 + 3), *(a1 + 4));
            v18 = v11;
            if (!v17)
            {
              v17 = sub_2393C8140(v16, 5uLL, a1[40]);
              v18 = v12;
              if (!v17)
              {
                v17 = sub_2393C8344(v16, 6uLL, *(a1 + 11));
                v18 = v13;
                if (!v17)
                {
                  v17 = sub_2393C8354(v16, 7uLL, *(a1 + 6));
                  v18 = v14;
                  if (!v17)
                  {
                    v8 = sub_238F252D4(v16, 8uLL, a1 + 56);
                    goto LABEL_6;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v16);
}

unint64_t sub_238F31D84(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    if (v8 <= 3u)
    {
      if (v8 > 1u)
      {
        if (v8 == 2)
        {
          v4 = sub_238EA4D5C(a2, (a1 + 2));
        }

        else if (v8 == 3)
        {
          if (sub_2393C5C40(a2) == 16)
          {
            v4 = sub_2393C60CC(a2, (a1 + 8));
          }

          else
          {
            v4 = 0x500000002BLL;
          }
        }
      }

      else if (v8)
      {
        v4 = sub_2393C5CE4(a2, (a1 + 1));
      }

      else
      {
        v4 = sub_2393C5ED0(a2, a1);
      }
    }

    else if (v8 <= 5u)
    {
      if (v8 == 4)
      {
        v4 = sub_2393C61E0(a2, (a1 + 24));
      }

      else if (v8 == 5)
      {
        v4 = sub_238EA4DB4(a2, (a1 + 40));
      }
    }

    else
    {
      switch(v8)
      {
        case 6u:
          v4 = sub_2393C6020(a2, (a1 + 44));
          break;
        case 7u:
          v4 = sub_2393C6064(a2, (a1 + 48));
          break;
        case 8u:
          *(a1 + 56) = 1;
          v4 = sub_238EFD7D0(a2, (a1 + 57));
          break;
      }
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238F31F44(unsigned __int8 *a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  if (*a4 == 1)
  {
    v8 = *sub_238DE36D8(a4);
    v9 = a1[104];
    sub_2394C389C(&v18, a2, a3);
    if (v8 != v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    sub_2394C389C(&v18, a2, a3);
  }

  if (!v19)
  {
    v19 = sub_2393C8140(v18, 1uLL, *a1);
    v20 = v10;
    if (!v19)
    {
      v19 = sub_238F02628(v18, 2uLL, a1 + 1);
      v20 = v11;
      if (!v19)
      {
        v19 = sub_238F13404(v18, 3uLL, a1 + 3);
        v20 = v12;
        if (!v19)
        {
          v19 = sub_238F38984(v18, 4uLL, a1 + 5);
          v20 = v13;
          if (!v19)
          {
            v19 = sub_2393C85FC(v18, 5uLL, *(a1 + 1), *(a1 + 2));
            v20 = v14;
            if (!v19)
            {
              v19 = sub_238F31C50(a1 + 24, v18, 6uLL);
              v20 = v15;
            }
          }
        }
      }
    }
  }

  sub_238F04F08(&v18, 7u, a1 + 11);
LABEL_13:
  if (*a4 == 1 && !v19)
  {
    v19 = sub_2393C8140(v18, 0xFEuLL, a1[104]);
    v20 = v16;
  }

  return sub_2394C38E0(&v18);
}

unint64_t sub_238F320A4(unsigned __int8 *a1, uint64_t a2, unint64_t a3, char a4)
{
  v5[0] = 1;
  v5[1] = a4;
  return sub_238F31F44(a1, a2, a3, v5);
}

unint64_t sub_238F320D4(uint64_t a1, uint64_t a2)
{
  v12[0] = 0;
  v13 = a2;
  while (1)
  {
    v11 = 0;
    v4 = sub_2394C37B8(v12, &v11);
    if (v4)
    {
      break;
    }

    if (v11 > 4u)
    {
      if (v11 <= 6u)
      {
        if (v11 == 5)
        {
          v4 = sub_2393C61E0(a2, (a1 + 8));
        }

        else if (v11 == 6)
        {
          v4 = sub_238F31D84(a1 + 24, a2);
        }

        goto LABEL_25;
      }

      if (v11 == 7)
      {
        v4 = sub_238F36BB4(a1 + 88, a2);
        goto LABEL_25;
      }

      if (v11 == 254)
      {
        v5 = (a1 + 160);
LABEL_18:
        v7 = a2;
LABEL_20:
        v4 = sub_2393C5ED0(v7, v5);
      }
    }

    else if (v11 > 2u)
    {
      if (v11 == 3)
      {
        v6 = (a1 + 3);
        goto LABEL_23;
      }

      if (v11 == 4)
      {
        *(a1 + 5) = 1;
        *(a1 + 6) = 0;
        v6 = (a1 + 6);
LABEL_23:
        v4 = sub_238F00228(a2, v6);
      }
    }

    else
    {
      if (v11 == 1)
      {
        v7 = a2;
        v5 = a1;
        goto LABEL_20;
      }

      if (v11 == 2)
      {
        *(a1 + 1) = 1;
        v5 = (a1 + 2);
        goto LABEL_18;
      }
    }

LABEL_25:
    v8 = v4;
    if (v4)
    {
      v9 = v4 & 0xFFFFFFFF00000000;
      return v9 | v8;
    }
  }

  v9 = v4 & 0xFFFFFFFF00000000;
  v8 = v4;
  if (v4 == 33)
  {
    v8 = 0;
    v9 = 0;
  }

  return v9 | v8;
}

unint64_t sub_238F32224(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v9, a2, a3);
  if (!v10)
  {
    v10 = sub_2393C8140(v9, 0, *a1);
    v11 = v4;
    if (!v10)
    {
      v10 = sub_2393C7E38(v9, 1uLL, a1[1]);
      v11 = v5;
      if (!v10)
      {
        v10 = sub_238F31C50(a1 + 8, v9, 2uLL);
        v11 = v6;
        if (!v10)
        {
          v10 = sub_238F39268(v9, 3uLL, a1 + 72);
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F322C0(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    if (v8 > 1u)
    {
      if (v8 == 2)
      {
        v4 = sub_238F31D84(a1 + 8, a2);
      }

      else if (v8 == 3)
      {
        *(a1 + 72) = 1;
        *(a1 + 80) = 0u;
        *(a1 + 96) = 0u;
        v4 = sub_238F36378(a1 + 80, a2);
      }
    }

    else if (v8)
    {
      if (v8 == 1)
      {
        v4 = sub_2393C5CE4(a2, (a1 + 1));
      }
    }

    else
    {
      v4 = sub_2393C5ED0(a2, a1);
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238F323B0(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_2393C8140(v8, 0, *a1);
    v10 = v4;
    if (!v9)
    {
      v9 = sub_2393C7E38(v8, 1uLL, a1[1]);
      v10 = v5;
      if (!v9)
      {
        v9 = sub_238F31C50(a1 + 8, v8, 2uLL);
        v10 = v6;
      }
    }
  }

  sub_238F2FD38(&v8, 3u, (a1 + 72));
  sub_238F04E48(&v8, 4u, (a1 + 88));
  sub_238F1908C(&v8, 5u, a1 + 13);
  sub_238F04F08(&v8, 6u, a1 + 15);
  return sub_2394C38E0(&v8);
}

unint64_t sub_238F32474(_BYTE *a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (v9 <= 2u)
    {
      if (v9)
      {
        if (v9 == 1)
        {
          v4 = sub_2393C5CE4(a2, a1 + 1);
        }

        else if (v9 == 2)
        {
          v4 = sub_238F31D84((a1 + 8), a2);
        }
      }

      else
      {
        v4 = sub_2393C5ED0(a2, a1);
      }

      goto LABEL_19;
    }

    if (v9 > 4u)
    {
      if (v9 == 5)
      {
        v5 = (a1 + 216);
        goto LABEL_18;
      }

      if (v9 == 6)
      {
        v5 = (a1 + 288);
        goto LABEL_18;
      }
    }

    else
    {
      if (v9 == 3)
      {
        v5 = (a1 + 72);
        goto LABEL_18;
      }

      if (v9 == 4)
      {
        v5 = (a1 + 144);
LABEL_18:
        v4 = sub_238F36BB4(v5, a2);
      }
    }

LABEL_19:
    v6 = v4;
    if (v4)
    {
      v7 = v4 & 0xFFFFFFFF00000000;
      return v7 | v6;
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238F32588(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_2393C8154(v7, 0, *a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_2393C8364(v7, 1uLL, *(a1 + 8), *(a1 + 16));
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F325F4(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    if (v8 == 1)
    {
      if (sub_2393C5C40(a2) == 16)
      {
        v4 = sub_2393C60CC(a2, (a1 + 8));
      }

      else
      {
        v4 = 0x500000002BLL;
      }
    }

    else if (!v8)
    {
      v4 = sub_2393C5F2C(a2, a1);
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238F326C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 > 7)
  {
    if (v5 > 65528)
    {
      if (v5 > 65531)
      {
        if (v5 == 65532)
        {
          v7 = sub_2393C5FC8(a2, (a1 + 272));
          goto LABEL_42;
        }

        v6 = 0;
        LODWORD(v7) = 0;
        if (v5 != 65533)
        {
          return v7 | v6;
        }

        v7 = sub_2393C5F70(a2, (a1 + 276));
LABEL_42:
        v6 = v7 & 0xFFFFFFFF00000000;
        return v7 | v6;
      }

      if (v5 == 65529)
      {
        v10 = a1 + 128;
      }

      else
      {
        v6 = 0;
        LODWORD(v7) = 0;
        if (v5 != 65531)
        {
          return v7 | v6;
        }

        v10 = a1 + 200;
      }
    }

    else
    {
      if (v5 <= 9)
      {
        if (v5 != 8)
        {
          v7 = sub_238F36E54(a2, (a1 + 50));
          goto LABEL_42;
        }

        v13 = (a1 + 48);
LABEL_38:
        v7 = sub_2393C5ED0(a2, v13);
        goto LABEL_42;
      }

      if (v5 == 10)
      {
        v13 = (a1 + 52);
        goto LABEL_38;
      }

      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 65528)
      {
        return v7 | v6;
      }

      v10 = a1 + 56;
    }

    v7 = sub_238F36BB4(v10, a2);
    goto LABEL_42;
  }

  if (v5 > 3)
  {
    if (v5 > 5)
    {
      if (v5 == 6)
      {
        v12 = (a1 + 44);
      }

      else
      {
        v12 = (a1 + 46);
      }

      v7 = sub_238F00228(a2, v12);
    }

    else
    {
      if (v5 == 4)
      {
        v9 = (a1 + 40);
      }

      else
      {
        v9 = (a1 + 42);
      }

      v7 = sub_238F0C9D0(a2, v9);
    }

    goto LABEL_42;
  }

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v7 = sub_238EFD658(a2, a1 + 16);
      goto LABEL_42;
    }

    v8 = a1 + 32;
    goto LABEL_20;
  }

  if (!v5)
  {
    v11 = a2;
    v8 = a1;
    goto LABEL_30;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 1)
  {
    v8 = a1 + 8;
LABEL_20:
    v11 = a2;
LABEL_30:
    v7 = sub_238EFDEB0(v11, v8);
    goto LABEL_42;
  }

  return v7 | v6;
}

unint64_t sub_238F328CC(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_238F1EDEC(v7, 0, a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_238F02628(v7, 1uLL, a1 + 12);
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F32938(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    if (v8 == 1)
    {
      *(a1 + 12) = 1;
      v4 = sub_2393C5ED0(a2, (a1 + 13));
    }

    else if (!v8)
    {
      *a1 = 1;
      *(a1 + 4) = 0;
      v4 = sub_238EFDEB0(a2, a1 + 4);
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

uint64_t sub_238F329F0(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v7 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v7);
  if (!result)
  {
    v6 = *a1;
    if (v6 == 3)
    {
      return 0x5C00000587;
    }

    else
    {
      result = sub_2393C8140(a2, 0, v6);
      if (!result)
      {
        result = sub_238F02628(a2, 1uLL, a1 + 1);
        if (!result)
        {
          return sub_2393C8DE0(a2, v7);
        }
      }
    }
  }

  return result;
}

unint64_t sub_238F32A88(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    if (v8 == 1)
    {
      *(a1 + 1) = 1;
      v4 = sub_2393C5ED0(a2, (a1 + 2));
    }

    else if (!v8)
    {
      v4 = sub_238EFD7D0(a2, a1);
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238F32B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 > 65528)
  {
    if (v5 <= 65531)
    {
      if (v5 == 65529)
      {
        v8 = a1 + 104;
        goto LABEL_15;
      }

      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 == 65531)
      {
        v8 = a1 + 176;
LABEL_15:
        v7 = sub_238F36BB4(v8, a2);
        goto LABEL_20;
      }

      return v7 | v6;
    }

    if (v5 == 65532)
    {
      v7 = sub_2393C5FC8(a2, (a1 + 248));
      goto LABEL_20;
    }

    v6 = 0;
    LODWORD(v7) = 0;
    if (v5 != 65533)
    {
      return v7 | v6;
    }

    v7 = sub_2393C5F70(a2, (a1 + 252));
LABEL_20:
    v6 = v7 & 0xFFFFFFFF00000000;
    return v7 | v6;
  }

  if (!v5)
  {
    v7 = sub_2393C61E0(a2, a1);
    goto LABEL_20;
  }

  if (v5 == 1)
  {
    if (sub_2393C5C40(a2) == 16)
    {
      v7 = sub_2393C60CC(a2, (a1 + 16));
    }

    else
    {
      v7 = 0x500000002BLL;
    }

    goto LABEL_20;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 65528)
  {
    v8 = a1 + 32;
    goto LABEL_15;
  }

  return v7 | v6;
}

unint64_t sub_238F32C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 <= 4)
  {
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        if (v5 == 3)
        {
          v7 = sub_2393C5DA0(a2, (a1 + 8));
        }

        else
        {
          v7 = sub_2393C5ED0(a2, (a1 + 16));
        }

        goto LABEL_28;
      }

      v9 = (a1 + 2);
LABEL_24:
      v7 = sub_2393C5F70(a2, v9);
      goto LABEL_28;
    }

    if (v5)
    {
      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 1)
      {
        return v7 | v6;
      }

      v10 = (a1 + 1);
      v11 = a2;
    }

    else
    {
      v11 = a2;
      v10 = a1;
    }

    v7 = sub_238EA4DB4(v11, v10);
LABEL_28:
    v6 = v7 & 0xFFFFFFFF00000000;
    return v7 | v6;
  }

  if (v5 > 65530)
  {
    if (v5 == 65531)
    {
      v8 = a1 + 168;
      goto LABEL_27;
    }

    if (v5 != 65532)
    {
      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 65533)
      {
        return v7 | v6;
      }

      v9 = (a1 + 244);
      goto LABEL_24;
    }

    v7 = sub_2393C5FC8(a2, (a1 + 240));
    goto LABEL_28;
  }

  if (v5 == 5)
  {
    v7 = sub_238EFF894(a2, (a1 + 17));
    goto LABEL_28;
  }

  if (v5 == 65528)
  {
    v8 = a1 + 24;
    goto LABEL_27;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 65529)
  {
    v8 = a1 + 96;
LABEL_27:
    v7 = sub_238F36BB4(v8, a2);
    goto LABEL_28;
  }

  return v7 | v6;
}

unint64_t sub_238F32DCC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v6, a2, a3);
  if (!v7)
  {
    v7 = sub_238F32F1C(a1, v6, 0);
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

unint64_t sub_238F32E20(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (!v9)
    {
      v5 = sub_238F32FE8(a1, a2);
      v6 = v5;
      if (v5)
      {
        v7 = v5 & 0xFFFFFFFF00000000;
        return v7 | v6;
      }
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238F32EB4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v6);
  if (!result)
  {
    result = sub_238F32F1C(a1, a2, 0);
    if (!result)
    {
      return sub_2393C8DE0(a2, v6);
    }
  }

  return result;
}

unint64_t sub_238F32F1C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v11, a2, a3);
  if (!v12)
  {
    v12 = sub_2393C81D4(v11, 0, *a1);
    v13 = v4;
    if (!v12)
    {
      v12 = sub_238F37028(v11, 1uLL, (a1 + 4));
      v13 = v5;
      if (!v12)
      {
        v12 = sub_238F37028(v11, 2uLL, (a1 + 6));
        v13 = v6;
        if (!v12)
        {
          v12 = sub_238F2A888(v11, 3uLL, (a1 + 8));
          v13 = v7;
          if (!v12)
          {
            v12 = sub_238F02628(v11, 4uLL, (a1 + 12));
            v13 = v8;
            if (!v12)
            {
              v12 = sub_238F02628(v11, 5uLL, (a1 + 14));
              v13 = v9;
            }
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v11);
}

unint64_t sub_238F32FE8(uint64_t a1, uint64_t a2)
{
  v11[0] = 0;
  v12 = a2;
  while (1)
  {
    v10 = 0;
    v4 = sub_2394C37B8(v11, &v10);
    if (v4)
    {
      break;
    }

    if (v10 > 2u)
    {
      switch(v10)
      {
        case 3u:
          *(a1 + 8) = 1;
          *(a1 + 10) = 0;
          v4 = sub_2393C5E20(a2, (a1 + 10));
          break;
        case 4u:
          *(a1 + 12) = 1;
          v6 = (a1 + 13);
          goto LABEL_17;
        case 5u:
          *(a1 + 14) = 1;
          v6 = (a1 + 15);
LABEL_17:
          v4 = sub_2393C5ED0(a2, v6);
          break;
      }
    }

    else if (v10)
    {
      if (v10 == 1)
      {
        *(a1 + 4) = 1;
        v5 = (a1 + 5);
        goto LABEL_15;
      }

      if (v10 == 2)
      {
        *(a1 + 6) = 1;
        v5 = (a1 + 7);
LABEL_15:
        v4 = sub_2393C5CE4(a2, v5);
      }
    }

    else
    {
      v4 = sub_2393C5FC8(a2, a1);
    }

    v7 = v4;
    if (v4)
    {
      v8 = v4 & 0xFFFFFFFF00000000;
      return v8 | v7;
    }
  }

  v8 = v4 & 0xFFFFFFFF00000000;
  v7 = v4;
  if (v4 == 33)
  {
    v7 = 0;
    v8 = 0;
  }

  return v8 | v7;
}

unint64_t sub_238F33104(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v14, a2, a3);
  if (!v15)
  {
    v4 = *a1;
    if (v4 == 4)
    {
      v15 = 0x5C00000587;
      v16 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
    }

    else
    {
      v15 = sub_2393C8140(v14, 0, v4);
      v16 = v5;
      if (!v15)
      {
        v15 = sub_2393C818C(v14, 1uLL, *(a1 + 1));
        v16 = v6;
        if (!v15)
        {
          v15 = sub_238F37968(v14, 2uLL, a1 + 4);
          v16 = v7;
          if (!v15)
          {
            v15 = sub_238F37968(v14, 3uLL, a1 + 10);
            v16 = v8;
            if (!v15)
            {
              v15 = sub_238F392BC(v14, 4uLL, a1 + 16);
              v16 = v9;
              if (!v15)
              {
                v15 = sub_238EFDC40(v14, 5uLL, a1 + 40);
                v16 = v10;
                if (!v15)
                {
                  v15 = sub_238F37028(v14, 6uLL, a1 + 64);
                  v16 = v11;
                  if (!v15)
                  {
                    v15 = sub_238F39390(v14, 7uLL, a1 + 72);
                    v16 = v12;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v14);
}

unint64_t sub_238F33220(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (v9 > 3u)
    {
      if (v9 > 5u)
      {
        if (v9 == 6)
        {
          *(a1 + 120) = 1;
          v4 = sub_2393C5CE4(a2, (a1 + 121));
        }

        else if (v9 == 7)
        {
          *(a1 + 128) = 1;
          *(a1 + 136) = 0u;
          *(a1 + 152) = 0u;
          *(a1 + 168) = 0;
          v4 = sub_238F2E398((a1 + 136), a2);
        }
      }

      else if (v9 == 4)
      {
        v4 = sub_238F06AB0(a2, (a1 + 16));
      }

      else if (v9 == 5)
      {
        *(a1 + 96) = 1;
        *(a1 + 104) = 0;
        *(a1 + 112) = 0;
        v4 = sub_2393C61E0(a2, (a1 + 104));
      }

      goto LABEL_22;
    }

    if (v9 <= 1u)
    {
      if (v9)
      {
        v4 = sub_2393C5F70(a2, (a1 + 2));
      }

      else
      {
        v4 = sub_238EA4D5C(a2, a1);
      }

      goto LABEL_22;
    }

    if (v9 == 2)
    {
      *(a1 + 4) = 1;
      *(a1 + 6) = 0;
      v5 = (a1 + 6);
      goto LABEL_20;
    }

    if (v9 == 3)
    {
      *(a1 + 10) = 1;
      *(a1 + 12) = 0;
      v5 = (a1 + 12);
LABEL_20:
      v4 = sub_238EFD714(a2, v5);
    }

LABEL_22:
    v6 = v4;
    if (v4)
    {
      v7 = v4 & 0xFFFFFFFF00000000;
      return v7 | v6;
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238F3339C(unsigned __int8 *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v9, *a2, a3);
  if (!v10)
  {
    v10 = sub_2393C818C(v9, 0, *a1);
    v11 = v4;
    if (!v10)
    {
      v10 = sub_2393C7E38(v9, 1uLL, a1[2]);
      v11 = v5;
      if (!v10)
      {
        v10 = sub_238F37968(v9, 2uLL, a1 + 4);
        v11 = v6;
        if (!v10)
        {
          v10 = sub_238F37968(v9, 3uLL, a1 + 10);
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F3343C(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (v9 <= 1u)
    {
      if (v9)
      {
        if (v9 == 1)
        {
          v4 = sub_2393C5CE4(a2, (a1 + 2));
        }
      }

      else
      {
        v4 = sub_2393C5F70(a2, a1);
      }

      goto LABEL_13;
    }

    if (v9 == 2)
    {
      *(a1 + 4) = 1;
      *(a1 + 6) = 0;
      v5 = (a1 + 6);
      goto LABEL_12;
    }

    if (v9 == 3)
    {
      *(a1 + 10) = 1;
      *(a1 + 12) = 0;
      v5 = (a1 + 12);
LABEL_12:
      v4 = sub_238EFD714(a2, v5);
    }

LABEL_13:
    v6 = v4;
    if (v4)
    {
      v7 = v4 & 0xFFFFFFFF00000000;
      return v7 | v6;
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238F33528(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v17, a2, a3);
  if (!v18)
  {
    v18 = sub_238EFD4A8(v17, 0, a1);
    v19 = v4;
    if (!v18)
    {
      v18 = sub_2393C85FC(v17, 1uLL, *(a1 + 8), *(a1 + 16));
      v19 = v5;
      if (!v18)
      {
        v6 = *(a1 + 24);
        if (v6 == 4)
        {
          v7 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
          v8 = 0x5C00000587;
LABEL_6:
          v18 = v8;
          v19 = v7;
          return sub_2394C38E0(&v17);
        }

        v18 = sub_2393C8140(v17, 2uLL, v6);
        v19 = v9;
        if (!v18)
        {
          v18 = sub_2393C818C(v17, 3uLL, *(a1 + 26));
          v19 = v10;
          if (!v18)
          {
            v18 = sub_238F37968(v17, 4uLL, (a1 + 28));
            v19 = v11;
            if (!v18)
            {
              v18 = sub_238F37968(v17, 5uLL, (a1 + 34));
              v19 = v12;
              if (!v18)
              {
                v18 = sub_238F392BC(v17, 6uLL, (a1 + 40));
                v19 = v13;
                if (!v18)
                {
                  v18 = sub_238EFDC40(v17, 7uLL, (a1 + 64));
                  v19 = v14;
                  if (!v18)
                  {
                    v18 = sub_238F37028(v17, 8uLL, (a1 + 88));
                    v19 = v15;
                    if (!v18)
                    {
                      v8 = sub_238F39390(v17, 9uLL, (a1 + 96));
                      goto LABEL_6;
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

  return sub_2394C38E0(&v17);
}

unint64_t sub_238F33674(uint64_t a1, uint64_t a2)
{
  v12[0] = 0;
  v13 = a2;
  while (1)
  {
    v11 = 0;
    v4 = sub_2394C37B8(v12, &v11);
    if (v4)
    {
      break;
    }

    if (v11 > 4u)
    {
      if (v11 > 6u)
      {
        if (v11 != 7)
        {
          if (v11 == 8)
          {
            *(a1 + 144) = 1;
            v4 = sub_2393C5CE4(a2, (a1 + 145));
          }

          else if (v11 == 9)
          {
            *(a1 + 152) = 1;
            *(a1 + 160) = 0u;
            *(a1 + 176) = 0u;
            *(a1 + 192) = 0;
            v4 = sub_238F2E398((a1 + 160), a2);
          }

          goto LABEL_28;
        }

        *(a1 + 120) = 1;
        *(a1 + 128) = 0;
        *(a1 + 136) = 0;
        v6 = (a1 + 128);
        goto LABEL_25;
      }

      if (v11 != 5)
      {
        if (v11 == 6)
        {
          v4 = sub_238F06AB0(a2, (a1 + 40));
        }

        goto LABEL_28;
      }

      *(a1 + 34) = 1;
      *(a1 + 36) = 0;
      v5 = (a1 + 36);
LABEL_21:
      v7 = a2;
LABEL_22:
      v4 = sub_238EFD714(v7, v5);
      goto LABEL_28;
    }

    if (v11 <= 1u)
    {
      if (v11)
      {
        v6 = (a1 + 8);
LABEL_25:
        v4 = sub_2393C61E0(a2, v6);
        goto LABEL_28;
      }

      v7 = a2;
      v5 = a1;
      goto LABEL_22;
    }

    switch(v11)
    {
      case 2u:
        v4 = sub_238EA4D5C(a2, (a1 + 24));
        break;
      case 3u:
        v4 = sub_2393C5F70(a2, (a1 + 26));
        break;
      case 4u:
        *(a1 + 28) = 1;
        *(a1 + 30) = 0;
        v5 = (a1 + 30);
        goto LABEL_21;
    }

LABEL_28:
    v8 = v4;
    if (v4)
    {
      v9 = v4 & 0xFFFFFFFF00000000;
      return v9 | v8;
    }
  }

  v9 = v4 & 0xFFFFFFFF00000000;
  v8 = v4;
  if (v4 == 33)
  {
    v8 = 0;
    v9 = 0;
  }

  return v9 | v8;
}

unint64_t sub_238F33810(unsigned __int16 *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v8, *a2, a3);
  if (!v9)
  {
    v9 = sub_2393C818C(v8, 0, *a1);
    v10 = v4;
    if (!v9)
    {
      v9 = sub_238F37968(v8, 1uLL, a1 + 2);
      v10 = v5;
      if (!v9)
      {
        v9 = sub_238F37968(v8, 2uLL, a1 + 8);
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F33898(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (v9 == 2)
    {
      *(a1 + 8) = 1;
      *(a1 + 10) = 0;
      v5 = (a1 + 10);
    }

    else
    {
      if (v9 != 1)
      {
        if (!v9)
        {
          v4 = sub_2393C5F70(a2, a1);
        }

        goto LABEL_10;
      }

      *(a1 + 2) = 1;
      *(a1 + 4) = 0;
      v5 = (a1 + 4);
    }

    v4 = sub_238EFD714(a2, v5);
LABEL_10:
    v6 = v4;
    if (v4)
    {
      v7 = v4 & 0xFFFFFFFF00000000;
      return v7 | v6;
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238F33964(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v6, a2, a3);
  if (!v7)
  {
    v7 = sub_2393C818C(v6, 0, *a1);
    v8 = v4;
  }

  sub_238F339C8(&v6, 1u, a1 + 1);
  return sub_2394C38E0(&v6);
}

unint64_t sub_238F339C8(unint64_t result, unsigned int a2, uint64_t *a3)
{
  if (!*(result + 8))
  {
    v13 = v3;
    v14 = v4;
    v5 = result;
    v6 = *result;
    v7 = *a3;
    v8 = a3[1];
    v12 = 0;
    result = sub_2393C8CE0(v6, a2, 22, &v12);
    if (!result)
    {
      if (!v8)
      {
LABEL_8:
        result = sub_2393C8DE0(v6, v12);
        v10 = result & 0xFFFFFFFF00000000;
        if (!result)
        {
          v9 = 0;
          v10 = 0;
          result = 0;
        }

        goto LABEL_10;
      }

      v11 = 48 * v8;
      while (1)
      {
        result = sub_238F35CEC(v7, v6, 0x100uLL);
        if (result)
        {
          break;
        }

        v7 += 48;
        v11 -= 48;
        if (!v11)
        {
          goto LABEL_8;
        }
      }
    }

    v10 = result & 0xFFFFFFFF00000000;
LABEL_10:
    *(v5 + 8) = result | v10;
    *(v5 + 16) = v9;
  }

  return result;
}

unint64_t sub_238F33A8C(_WORD *a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    if (v8 == 1)
    {
      v4 = sub_238F36BB4((a1 + 4), a2);
    }

    else if (!v8)
    {
      v4 = sub_2393C5F70(a2, a1);
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238F33B2C(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v9, a2, a3);
  if (!v10)
  {
    v10 = sub_2393C818C(v9, 0, *a1);
    v11 = v4;
    if (!v10)
    {
      v5 = *(a1 + 2);
      if (v5 == 13)
      {
        v6 = 0x5C00000587;
        v7 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
      }

      else
      {
        v6 = sub_2393C8140(v9, 1uLL, v5);
      }

      v10 = v6;
      v11 = v7;
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F33BB4(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    if (v8 == 1)
    {
      v4 = sub_238F20120(a2, (a1 + 2));
    }

    else if (!v8)
    {
      v4 = sub_2393C5F70(a2, a1);
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238F33C54(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_2393C818C(v8, 0, *a1);
    v10 = v4;
    if (!v9)
    {
      v9 = sub_2393C8364(v8, 1uLL, *(a1 + 1), *(a1 + 2));
      v10 = v5;
      if (!v9)
      {
        v9 = sub_2393C8364(v8, 2uLL, *(a1 + 3), *(a1 + 4));
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F33CD8(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v9, a2, a3);
  if (!v10)
  {
    v10 = sub_2393C818C(v9, 0, *a1);
    v11 = v4;
    if (!v10)
    {
      v10 = sub_2393C85FC(v9, 1uLL, *(a1 + 1), *(a1 + 2));
      v11 = v5;
      if (!v10)
      {
        v10 = sub_238F392BC(v9, 2uLL, a1 + 24);
        v11 = v6;
        if (!v10)
        {
          v10 = sub_238EFDC40(v9, 3uLL, a1 + 48);
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F33D74(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (v9 > 1u)
    {
      if (v9 == 2)
      {
        v4 = sub_238F06AB0(a2, (a1 + 24));
        goto LABEL_13;
      }

      if (v9 == 3)
      {
        *(a1 + 104) = 1;
        *(a1 + 112) = 0;
        *(a1 + 120) = 0;
        v5 = (a1 + 112);
        goto LABEL_10;
      }
    }

    else
    {
      if (!v9)
      {
        v4 = sub_2393C5F70(a2, a1);
        goto LABEL_13;
      }

      if (v9 == 1)
      {
        v5 = (a1 + 8);
LABEL_10:
        v4 = sub_2393C61E0(a2, v5);
      }
    }

LABEL_13:
    v6 = v4;
    if (v4)
    {
      v7 = v4 & 0xFFFFFFFF00000000;
      return v7 | v6;
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238F33E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 <= 65527)
  {
    v6 = 0;
    LODWORD(v7) = 0;
    switch(v5)
    {
      case 0:
        v7 = sub_238F10D4C(a2, a1);
        goto LABEL_30;
      case 1:
        v7 = sub_238F10C94(a2, (a1 + 24));
        goto LABEL_30;
      case 2:
        v7 = sub_238F161A0(a2, (a1 + 26));
        goto LABEL_30;
      case 3:
        v7 = sub_238EFD714(a2, (a1 + 28));
        goto LABEL_30;
      case 4:
        v7 = sub_238F2C628(a2, (a1 + 32));
        goto LABEL_30;
      case 5:
        v10 = a1 + 36;
        goto LABEL_29;
      case 6:
        v10 = a1 + 44;
        goto LABEL_29;
      case 7:
        v10 = a1 + 52;
        goto LABEL_29;
      case 8:
        v10 = a1 + 60;
        goto LABEL_29;
      case 9:
        v10 = a1 + 68;
        goto LABEL_29;
      case 10:
        v10 = a1 + 76;
LABEL_29:
        v7 = sub_238EFDEB0(a2, v10);
        goto LABEL_30;
      case 11:
        v9 = a1 + 88;
        goto LABEL_19;
      case 12:
        v9 = a1 + 104;
LABEL_19:
        v7 = sub_238EFD658(a2, v9);
        goto LABEL_30;
      default:
        return v7 | v6;
    }
  }

  if (v5 <= 65530)
  {
    if (v5 == 65528)
    {
      v8 = a1 + 120;
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 65529)
      {
        return v7 | v6;
      }

      v8 = a1 + 192;
    }

LABEL_16:
    v7 = sub_238F36BB4(v8, a2);
    goto LABEL_30;
  }

  if (v5 == 65531)
  {
    v8 = a1 + 264;
    goto LABEL_16;
  }

  if (v5 == 65532)
  {
    v7 = sub_2393C5FC8(a2, (a1 + 336));
    goto LABEL_30;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 65533)
  {
    v7 = sub_2393C5F70(a2, (a1 + 340));
LABEL_30:
    v6 = v7 & 0xFFFFFFFF00000000;
  }

  return v7 | v6;
}

uint64_t sub_238F33FF8(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v7 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v7);
  if (!result)
  {
    v6 = *a1;
    if (v6 == 4)
    {
      return 0x5C00000587;
    }

    else
    {
      result = sub_2393C8140(a2, 0, v6);
      if (!result)
      {
        result = sub_2393C818C(a2, 1uLL, *(a1 + 1));
        if (!result)
        {
          return sub_2393C8DE0(a2, v7);
        }
      }
    }
  }

  return result;
}

unint64_t sub_238F34090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  if (v4 > 65528)
  {
    if (v4 <= 65531)
    {
      if (v4 == 65529)
      {
        v7 = a1 + 112;
        goto LABEL_15;
      }

      v5 = 0;
      LODWORD(v6) = 0;
      if (v4 == 65531)
      {
        v7 = a1 + 184;
LABEL_15:
        v6 = sub_238F36BB4(v7, a2);
        goto LABEL_18;
      }

      return v6 | v5;
    }

    if (v4 == 65532)
    {
      v6 = sub_2393C5FC8(a2, (a1 + 256));
      goto LABEL_18;
    }

    v5 = 0;
    LODWORD(v6) = 0;
    if (v4 != 65533)
    {
      return v6 | v5;
    }

    v6 = sub_2393C5F70(a2, (a1 + 260));
LABEL_18:
    v5 = v6 & 0xFFFFFFFF00000000;
    return v6 | v5;
  }

  if (!v4)
  {
    v6 = sub_238F10D4C(a2, a1);
    goto LABEL_18;
  }

  if (v4 == 1)
  {
    v6 = sub_238EFD658(a2, a1 + 24);
    goto LABEL_18;
  }

  v5 = 0;
  LODWORD(v6) = 0;
  if (v4 == 65528)
  {
    v7 = a1 + 40;
    goto LABEL_15;
  }

  return v6 | v5;
}

unint64_t sub_238F34194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 <= 65527)
  {
    v6 = 0;
    LODWORD(v7) = 0;
    switch(v5)
    {
      case 0:
        v7 = sub_238F34384(a2, a1);
        goto LABEL_40;
      case 1:
        v8 = (a1 + 2);
        goto LABEL_35;
      case 2:
        v8 = (a1 + 4);
        goto LABEL_35;
      case 3:
        v10 = (a1 + 6);
        goto LABEL_32;
      case 4:
        v10 = (a1 + 10);
        goto LABEL_32;
      case 5:
        v8 = (a1 + 14);
        goto LABEL_35;
      case 6:
        v8 = (a1 + 16);
        goto LABEL_35;
      case 7:
        v7 = sub_238EA4DB4(a2, (a1 + 18));
        goto LABEL_40;
      case 8:
        v11 = (a1 + 19);
        goto LABEL_26;
      case 9:
        v11 = (a1 + 21);
LABEL_26:
        v7 = sub_238F00228(a2, v11);
        goto LABEL_40;
      case 10:
        v7 = sub_238EA4DB4(a2, (a1 + 23));
        goto LABEL_40;
      case 11:
        v10 = (a1 + 24);
        goto LABEL_32;
      case 12:
        v10 = (a1 + 28);
        goto LABEL_32;
      case 13:
        v7 = sub_238F343E0(a2, (a1 + 32));
        goto LABEL_40;
      case 14:
        v10 = (a1 + 34);
        goto LABEL_32;
      case 15:
        v10 = (a1 + 38);
LABEL_32:
        v7 = sub_238EFD714(a2, v10);
        goto LABEL_40;
      case 16:
        v8 = (a1 + 42);
        goto LABEL_35;
      case 17:
        v8 = (a1 + 44);
        goto LABEL_35;
      case 18:
        v8 = (a1 + 46);
        goto LABEL_35;
      case 19:
        v8 = (a1 + 48);
        goto LABEL_35;
      case 23:
        v7 = sub_238EA4DB4(a2, (a1 + 50));
        goto LABEL_40;
      case 26:
        v7 = sub_238F36E54(a2, (a1 + 52));
        goto LABEL_40;
      default:
        return v7 | v6;
    }
  }

  if (v5 <= 65530)
  {
    if (v5 == 65528)
    {
      v9 = a1 + 56;
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 65529)
      {
        return v7 | v6;
      }

      v9 = a1 + 128;
    }

    goto LABEL_38;
  }

  if (v5 == 65531)
  {
    v9 = a1 + 200;
LABEL_38:
    v7 = sub_238F36BB4(v9, a2);
LABEL_40:
    v6 = v7 & 0xFFFFFFFF00000000;
    return v7 | v6;
  }

  if (v5 == 65532)
  {
    v7 = sub_2393C5FC8(a2, (a1 + 272));
    goto LABEL_40;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 65533)
  {
    v8 = (a1 + 276);
LABEL_35:
    v7 = sub_2393C5F70(a2, v8);
    goto LABEL_40;
  }

  return v7 | v6;
}

unint64_t sub_238F34384(uint64_t a1, _BYTE *a2)
{
  v3 = sub_238EA4DB4(a1, a2);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v3) = 0;
    v4 = 0;
    v5 = *a2;
    if ((v5 - 255) >= 0xFFFFFF0B)
    {
      LOBYTE(v5) = 10;
    }

    *a2 = v5;
  }

  return v4 | v3;
}

unint64_t sub_238F343E0(uint64_t a1, _BYTE *a2)
{
  v3 = sub_238EA4DB4(a1, a2);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v3) = 0;
    v4 = 0;
    v5 = *a2;
    if ((v5 - 255) >= 0xFFFFFF19)
    {
      LOBYTE(v5) = 24;
    }

    *a2 = v5;
  }

  return v4 | v3;
}

unint64_t sub_238F3443C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 <= 5)
  {
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        v8 = a1 + 80;
        goto LABEL_25;
      }

      if (v5 == 4)
      {
        v9 = (a1 + 152);
      }

      else
      {
        v9 = (a1 + 153);
      }
    }

    else
    {
      if (!v5)
      {
        v10 = a2;
        v9 = a1;
LABEL_28:
        v7 = sub_2393C5ED0(v10, v9);
        goto LABEL_29;
      }

      if (v5 != 1)
      {
        v6 = 0;
        LODWORD(v7) = 0;
        if (v5 == 2)
        {
          v8 = a1 + 8;
LABEL_25:
          v7 = sub_238F36BB4(v8, a2);
          goto LABEL_29;
        }

        return v7 | v6;
      }

      v9 = (a1 + 1);
    }

    v10 = a2;
    goto LABEL_28;
  }

  if (v5 > 65530)
  {
    if (v5 == 65531)
    {
      v8 = a1 + 304;
      goto LABEL_25;
    }

    if (v5 == 65532)
    {
      v7 = sub_2393C5FC8(a2, (a1 + 376));
      goto LABEL_29;
    }

    v6 = 0;
    LODWORD(v7) = 0;
    if (v5 != 65533)
    {
      return v7 | v6;
    }

    v7 = sub_2393C5F70(a2, (a1 + 380));
LABEL_29:
    v6 = v7 & 0xFFFFFFFF00000000;
    return v7 | v6;
  }

  if (v5 == 6)
  {
    v7 = sub_238F01D20((a1 + 154), a2);
    goto LABEL_29;
  }

  if (v5 == 65528)
  {
    v8 = a1 + 160;
    goto LABEL_25;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 65529)
  {
    v8 = a1 + 232;
    goto LABEL_25;
  }

  return v7 | v6;
}

unint64_t sub_238F345A0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v6, a2, a3);
  if (!v7)
  {
    v7 = sub_238F34AEC(a1, v6, 0);
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

unint64_t sub_238F345F4(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (!v9)
    {
      v5 = sub_238F34BA0(a1, a2);
      v6 = v5;
      if (v5)
      {
        v7 = v5 & 0xFFFFFFFF00000000;
        return v7 | v6;
      }
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238F34688(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_2393C818C(v7, 0, *a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_238F34AEC((a1 + 4), v7, 1uLL);
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F346F4(_WORD *a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    if (v8 == 1)
    {
      v4 = sub_238F34BA0((a1 + 4), a2);
    }

    else if (!v8)
    {
      v4 = sub_2393C5F70(a2, a1);
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238F34794(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v6, a2, a3);
  if (!v7)
  {
    v7 = sub_238F34E6C(a1, v6, 0);
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

unint64_t sub_238F347E8(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (!v9)
    {
      v5 = sub_238F34F38(a1, a2);
      v6 = v5;
      if (v5)
      {
        v7 = v5 & 0xFFFFFFFF00000000;
        return v7 | v6;
      }
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

uint64_t sub_238F3487C(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  v7 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v7);
  if (!result)
  {
    result = sub_2393C818C(a2, 0, *a1);
    if (!result)
    {
      v6 = *(a1 + 2);
      if (v6 == 1)
      {
        return 0x5C00000587;
      }

      else
      {
        result = sub_2393C8140(a2, 1uLL, v6);
        if (!result)
        {
          return sub_2393C8DE0(a2, v7);
        }
      }
    }
  }

  return result;
}

unint64_t sub_238F34914(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    if (v8 == 1)
    {
      v4 = sub_238F03FA8(a2, (a1 + 2));
    }

    else if (!v8)
    {
      v4 = sub_2393C5F70(a2, a1);
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

uint64_t sub_238F349B4(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  v7 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v7);
  if (!result)
  {
    result = sub_2393C818C(a2, 0, *a1);
    if (!result)
    {
      v6 = *(a1 + 2);
      if (v6 == 2)
      {
        return 0x5C00000587;
      }

      else
      {
        result = sub_2393C8140(a2, 1uLL, v6);
        if (!result)
        {
          return sub_2393C8DE0(a2, v7);
        }
      }
    }
  }

  return result;
}

unint64_t sub_238F34A4C(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    if (v8 == 1)
    {
      v4 = sub_238EFF894(a2, (a1 + 2));
    }

    else if (!v8)
    {
      v4 = sub_2393C5F70(a2, a1);
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238F34AEC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v10, a2, a3);
  if (!v11)
  {
    v11 = sub_2393C85FC(v10, 0, *a1, *(a1 + 8));
    v12 = v4;
    if (!v11)
    {
      v5 = *(a1 + 16);
      if (v5 == 3)
      {
        v6 = 0x5C00000587;
        v7 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
      }

      else
      {
        v6 = sub_2393C8140(v10, 1uLL, v5);
      }

      v11 = v6;
      v12 = v7;
    }
  }

  sub_238F1F920(&v10, 2u, a1 + 24);
  if (!v11)
  {
    v11 = sub_238EFDC40(v10, 3uLL, (a1 + 40));
    v12 = v8;
  }

  return sub_2394C38E0(&v10);
}

unint64_t sub_238F34BA0(uint64_t a1, uint64_t a2)
{
  v11[0] = 0;
  v12 = a2;
  while (1)
  {
    v10 = 0;
    v4 = sub_2394C37B8(v11, &v10);
    if (v4)
    {
      break;
    }

    if (v10 <= 1u)
    {
      if (v10)
      {
        if (v10 == 1)
        {
          v4 = sub_238EFD7D0(a2, (a1 + 16));
        }

        goto LABEL_13;
      }

      v6 = a2;
      v5 = a1;
      goto LABEL_11;
    }

    if (v10 == 2)
    {
      v4 = sub_238F36BB4(a1 + 24, a2);
      goto LABEL_13;
    }

    if (v10 == 3)
    {
      *(a1 + 96) = 1;
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      v5 = (a1 + 104);
      v6 = a2;
LABEL_11:
      v4 = sub_2393C61E0(v6, v5);
    }

LABEL_13:
    v7 = v4;
    if (v4)
    {
      v8 = v4 & 0xFFFFFFFF00000000;
      return v8 | v7;
    }
  }

  v8 = v4 & 0xFFFFFFFF00000000;
  v7 = v4;
  if (v4 == 33)
  {
    v7 = 0;
    v8 = 0;
  }

  return v8 | v7;
}

unint64_t sub_238F34C88(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v12, a2, a3);
  if (!v13)
  {
    v13 = sub_2393C818C(v12, 0, *a1);
    v14 = v4;
    if (!v13)
    {
      v5 = 0x5C00000587;
      v6 = a1[2];
      if (v6 == 1)
      {
        goto LABEL_4;
      }

      v13 = sub_2393C8140(v12, 1uLL, v6);
      v14 = v8;
      if (v13)
      {
        return sub_2394C38E0(&v12);
      }

      v10 = a1[3];
      if (v10 == 2)
      {
LABEL_4:
        v7 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
      }

      else
      {
        v13 = sub_2393C8140(v12, 2uLL, v10);
        v14 = v11;
        if (v13)
        {
          return sub_2394C38E0(&v12);
        }

        v5 = sub_238F393E4(v12, 3uLL, a1 + 8);
      }

      v13 = v5;
      v14 = v7;
    }
  }

  return sub_2394C38E0(&v12);
}

unint64_t sub_238F34D50(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    if (v8 > 1u)
    {
      if (v8 == 2)
      {
        v4 = sub_238EFF894(a2, (a1 + 3));
      }

      else if (v8 == 3)
      {
        *(a1 + 8) = 1;
        *(a1 + 16) = 0u;
        *(a1 + 32) = 0u;
        *(a1 + 48) = 0u;
        *(a1 + 64) = 0u;
        *(a1 + 80) = 0u;
        *(a1 + 96) = 0u;
        *(a1 + 112) = 0u;
        *(a1 + 128) = 0;
        sub_2393C5AAC(a1 + 40);
        sub_2393C5ADC(a1 + 40, 0, 0);
        *(a1 + 112) = 0;
        v4 = sub_238F34BA0(a1 + 16, a2);
      }
    }

    else if (v8)
    {
      if (v8 == 1)
      {
        v4 = sub_238F03FA8(a2, (a1 + 2));
      }
    }

    else
    {
      v4 = sub_2393C5F70(a2, a1);
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238F34E6C(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v11, a2, a3);
  if (!v12)
  {
    v12 = sub_2393C818C(v11, 0, *a1);
    v13 = v4;
    if (!v12)
    {
      v12 = sub_2393C81D4(v11, 1uLL, *(a1 + 1));
      v13 = v5;
      if (!v12)
      {
        v12 = sub_2393C81D4(v11, 2uLL, *(a1 + 2));
        v13 = v6;
        if (!v12)
        {
          v12 = sub_2393C81D4(v11, 3uLL, *(a1 + 3));
          v13 = v7;
          if (!v12)
          {
            v12 = sub_2393C81D4(v11, 4uLL, *(a1 + 4));
            v13 = v8;
            if (!v12)
            {
              v12 = sub_238F02628(v11, 5uLL, a1 + 20);
              v13 = v9;
            }
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v11);
}

unint64_t sub_238F34F38(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (v9 > 2u)
    {
      if (v9 == 3)
      {
        v5 = (a1 + 12);
      }

      else
      {
        if (v9 != 4)
        {
          if (v9 == 5)
          {
            *(a1 + 20) = 1;
            v4 = sub_2393C5ED0(a2, (a1 + 21));
          }

          goto LABEL_17;
        }

        v5 = (a1 + 16);
      }

      goto LABEL_16;
    }

    if (v9)
    {
      if (v9 == 1)
      {
        v5 = (a1 + 4);
        goto LABEL_16;
      }

      if (v9 == 2)
      {
        v5 = (a1 + 8);
LABEL_16:
        v4 = sub_2393C5FC8(a2, v5);
      }
    }

    else
    {
      v4 = sub_2393C5F70(a2, a1);
    }

LABEL_17:
    v6 = v4;
    if (v4)
    {
      v7 = v4 & 0xFFFFFFFF00000000;
      return v7 | v6;
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238F35038(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_238F2AA44(v7, 0, a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_2393C818C(v7, 1uLL, *(a1 + 4));
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F350A4(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    if (v8 == 1)
    {
      v4 = sub_2393C5F70(a2, (a1 + 4));
    }

    else if (!v8)
    {
      *a1 = 1;
      *(a1 + 2) = 0;
      v4 = sub_238F36E54(a2, (a1 + 2));
      if (!v4)
      {
        v4 = 0;
      }
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238F35164(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_2393C85FC(v7, 0, *a1, *(a1 + 8));
    v9 = v4;
    if (!v8)
    {
      v8 = sub_2393C8140(v7, 1uLL, *(a1 + 16));
      v9 = v5;
    }
  }

  sub_238F351E0(&v7, 2u, (a1 + 24));
  return sub_2394C38E0(&v7);
}

unint64_t sub_238F351E0(unint64_t result, unsigned int a2, uint64_t *a3)
{
  if (!*(result + 8))
  {
    v13 = v3;
    v14 = v4;
    v5 = result;
    v6 = *result;
    v7 = *a3;
    v8 = a3[1];
    v12 = 0;
    result = sub_2393C8CE0(v6, a2, 22, &v12);
    if (!result)
    {
      if (!v8)
      {
LABEL_8:
        result = sub_2393C8DE0(v6, v12);
        v10 = result & 0xFFFFFFFF00000000;
        if (!result)
        {
          v9 = 0;
          v10 = 0;
          result = 0;
        }

        goto LABEL_10;
      }

      v11 = 6 * v8;
      while (1)
      {
        result = sub_238F35038(v7, v6, 0x100uLL);
        if (result)
        {
          break;
        }

        v7 += 6;
        v11 -= 6;
        if (!v11)
        {
          goto LABEL_8;
        }
      }
    }

    v10 = result & 0xFFFFFFFF00000000;
LABEL_10:
    *(v5 + 8) = result | v10;
    *(v5 + 16) = v9;
  }

  return result;
}

unint64_t sub_238F352A4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v13, a2, a3);
  if (!v14)
  {
    v14 = sub_2393C8284(v13, 0, *a1);
    v15 = v4;
    if (!v14)
    {
      v14 = sub_2393C8284(v13, 1uLL, *(a1 + 8));
      v15 = v5;
      if (!v14)
      {
        v14 = sub_238F2AA44(v13, 2uLL, (a1 + 16));
        v15 = v6;
        if (!v14)
        {
          v14 = sub_238F2AA44(v13, 3uLL, (a1 + 20));
          v15 = v7;
          if (!v14)
          {
            v14 = sub_238F2AA44(v13, 4uLL, (a1 + 24));
            v15 = v8;
            if (!v14)
            {
              v14 = sub_238EFEFB0(v13, 5uLL, (a1 + 32));
              v15 = v9;
              if (!v14)
              {
                v14 = sub_238EFEFB0(v13, 6uLL, (a1 + 48));
                v15 = v10;
                if (!v14)
                {
                  v14 = sub_238EFEFB0(v13, 7uLL, (a1 + 64));
                  v15 = v11;
                }
              }
            }
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v13);
}

unint64_t sub_238F353A0(uint64_t a1, uint64_t a2)
{
  v13[0] = 0;
  v14 = a2;
  while (1)
  {
    v12 = 0;
    v4 = sub_2394C37B8(v13, &v12);
    if (v4)
    {
      break;
    }

    if (v12 > 3u)
    {
      if (v12 > 5u)
      {
        if (v12 == 6)
        {
          *(a1 + 48) = 1;
          *(a1 + 56) = 0;
          v7 = (a1 + 56);
          goto LABEL_23;
        }

        if (v12 == 7)
        {
          *(a1 + 64) = 1;
          *(a1 + 72) = 0;
          v7 = (a1 + 72);
          goto LABEL_23;
        }
      }

      else
      {
        if (v12 == 4)
        {
          *(a1 + 24) = 1;
          *(a1 + 26) = 0;
          v8 = (a1 + 26);
          goto LABEL_21;
        }

        if (v12 == 5)
        {
          *(a1 + 32) = 1;
          *(a1 + 40) = 0;
          v7 = (a1 + 40);
LABEL_23:
          v4 = sub_2393C5F2C(a2, v7);
        }
      }
    }

    else
    {
      if (v12 <= 1u)
      {
        if (v12)
        {
          v5 = (a1 + 8);
          v6 = a2;
        }

        else
        {
          v6 = a2;
          v5 = a1;
        }

        v4 = sub_2393C5DA0(v6, v5);
        goto LABEL_24;
      }

      if (v12 == 2)
      {
        *(a1 + 16) = 1;
        *(a1 + 18) = 0;
        v8 = (a1 + 18);
        goto LABEL_21;
      }

      if (v12 == 3)
      {
        *(a1 + 20) = 1;
        *(a1 + 22) = 0;
        v8 = (a1 + 22);
LABEL_21:
        v4 = sub_2393C5F70(a2, v8);
      }
    }

LABEL_24:
    v9 = v4;
    if (v4)
    {
      v10 = v4 & 0xFFFFFFFF00000000;
      return v10 | v9;
    }
  }

  v10 = v4 & 0xFFFFFFFF00000000;
  v9 = v4;
  if (v4 == 33)
  {
    v9 = 0;
    v10 = 0;
  }

  return v10 | v9;
}

unint64_t sub_238F35500(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v10, a2, a3);
  if (!v11)
  {
    v4 = *a1;
    if (v4 == 17)
    {
      v11 = 0x5C00000587;
      v12 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
    }

    else
    {
      v11 = sub_2393C818C(v10, 0, v4);
      v12 = v5;
      if (!v11)
      {
        v11 = sub_2393C7E38(v10, 1uLL, *(a1 + 2));
        v12 = v6;
        if (!v11)
        {
          v11 = sub_2393C8284(v10, 2uLL, *(a1 + 1));
          v12 = v7;
          if (!v11)
          {
            v11 = sub_2393C8284(v10, 3uLL, *(a1 + 2));
            v12 = v8;
          }
        }
      }
    }
  }

  sub_238F355CC(&v10, 4u, a1 + 3);
  return sub_2394C38E0(&v10);
}

unint64_t sub_238F355CC(unint64_t result, unsigned int a2, uint64_t *a3)
{
  if (!*(result + 8))
  {
    v13 = v3;
    v14 = v4;
    v5 = result;
    v6 = *result;
    v7 = *a3;
    v8 = a3[1];
    v12 = 0;
    result = sub_2393C8CE0(v6, a2, 22, &v12);
    if (!result)
    {
      if (!v8)
      {
LABEL_8:
        result = sub_2393C8DE0(v6, v12);
        v10 = result & 0xFFFFFFFF00000000;
        if (!result)
        {
          v9 = 0;
          v10 = 0;
          result = 0;
        }

        goto LABEL_10;
      }

      v11 = 80 * v8;
      while (1)
      {
        result = sub_238F352A4(v7, v6, 0x100uLL);
        if (result)
        {
          break;
        }

        v7 += 80;
        v11 -= 80;
        if (!v11)
        {
          goto LABEL_8;
        }
      }
    }

    v10 = result & 0xFFFFFFFF00000000;
LABEL_10:
    *(v5 + 8) = result | v10;
    *(v5 + 16) = v9;
  }

  return result;
}

unint64_t sub_238F35690(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (v9 <= 1u)
    {
      if (v9)
      {
        if (v9 == 1)
        {
          v4 = sub_2393C5CE4(a2, (a1 + 2));
        }
      }

      else
      {
        v4 = sub_238F15EF4(a2, a1);
      }

      goto LABEL_15;
    }

    if (v9 == 2)
    {
      v5 = (a1 + 8);
    }

    else
    {
      if (v9 != 3)
      {
        if (v9 == 4)
        {
          v4 = sub_238F36BB4(a1 + 24, a2);
        }

        goto LABEL_15;
      }

      v5 = (a1 + 16);
    }

    v4 = sub_2393C5DA0(a2, v5);
LABEL_15:
    v6 = v4;
    if (v4)
    {
      v7 = v4 & 0xFFFFFFFF00000000;
      return v7 | v6;
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238F35778(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_2393C8140(v8, 0, *a1);
    v10 = v4;
    if (!v9)
    {
      v9 = sub_238EFDC40(v8, 1uLL, a1 + 8);
      v10 = v5;
      if (!v9)
      {
        v9 = sub_238EFDC40(v8, 2uLL, a1 + 32);
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F357FC(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (v9 == 2)
    {
      *(a1 + 32) = 1;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      v5 = (a1 + 40);
    }

    else
    {
      if (v9 != 1)
      {
        if (!v9)
        {
          v4 = sub_2393C5ED0(a2, a1);
        }

        goto LABEL_10;
      }

      *(a1 + 8) = 1;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      v5 = (a1 + 16);
    }

    v4 = sub_2393C61E0(a2, v5);
LABEL_10:
    v6 = v4;
    if (v4)
    {
      v7 = v4 & 0xFFFFFFFF00000000;
      return v7 | v6;
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238F358C8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_2393C8284(v7, 0, *a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_238F26BBC((a1 + 8), v7, 1uLL);
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F35934(void *a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    if (v8 == 1)
    {
      v4 = sub_238F26C28((a1 + 1), a2);
    }

    else if (!v8)
    {
      v4 = sub_2393C5DA0(a2, a1);
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238F359D4(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v10, a2, a3);
  if (!v11)
  {
    v4 = *a1;
    if (v4 == 18)
    {
      v11 = 0x5C00000587;
      v12 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
    }

    else
    {
      v11 = sub_2393C818C(v10, 0, v4);
      v12 = v5;
      if (!v11)
      {
        v11 = sub_2393C7E38(v10, 1uLL, *(a1 + 2));
        v12 = v6;
        if (!v11)
        {
          v11 = sub_2393C8284(v10, 2uLL, *(a1 + 1));
          v12 = v7;
          if (!v11)
          {
            v11 = sub_2393C8284(v10, 3uLL, *(a1 + 2));
            v12 = v8;
          }
        }
      }
    }
  }

  sub_238F355CC(&v10, 4u, a1 + 3);
  return sub_2394C38E0(&v10);
}

unint64_t sub_238F35AA0(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (v9 <= 1u)
    {
      if (v9)
      {
        if (v9 == 1)
        {
          v4 = sub_2393C5CE4(a2, (a1 + 2));
        }
      }

      else
      {
        v4 = sub_238F35B88(a2, a1);
      }

      goto LABEL_15;
    }

    if (v9 == 2)
    {
      v5 = (a1 + 8);
    }

    else
    {
      if (v9 != 3)
      {
        if (v9 == 4)
        {
          v4 = sub_238F36BB4(a1 + 24, a2);
        }

        goto LABEL_15;
      }

      v5 = (a1 + 16);
    }

    v4 = sub_2393C5DA0(a2, v5);
LABEL_15:
    v6 = v4;
    if (v4)
    {
      v7 = v4 & 0xFFFFFFFF00000000;
      return v7 | v6;
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238F35B88(uint64_t a1, _WORD *a2)
{
  v3 = sub_238F36E54(a1, a2);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v3) = 0;
    v4 = 0;
    v5 = *a2;
    if (v5 >= 0x12)
    {
      LOWORD(v5) = 18;
    }

    *a2 = v5;
  }

  return v4 | v3;
}

unint64_t sub_238F35BE0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_2393C81D4(v7, 0, *a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_2393C8140(v7, 1uLL, *(a1 + 4));
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238F35C4C(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    if (v8 == 1)
    {
      v4 = sub_2393C5ED0(a2, (a1 + 4));
    }

    else if (!v8)
    {
      v4 = sub_2393C5FC8(a2, a1);
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238F35CEC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_2393C85FC(v8, 0, *a1, *(a1 + 8));
    v10 = v4;
    if (!v9)
    {
      v9 = sub_238F37AF8(v8, 1uLL, a1 + 16);
      v10 = v5;
      if (!v9)
      {
        v9 = sub_238EFD4A8(v8, 2uLL, (a1 + 40));
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F35D70(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    switch(v8)
    {
      case 2:
        v4 = sub_238EFD714(a2, (a1 + 40));
        break;
      case 1:
        v4 = sub_238F0BA3C(a2, a1 + 16);
        break;
      case 0:
        v4 = sub_2393C61E0(a2, a1);
        break;
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238F35E28(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  sub_238F1475C(&v8, 0, a1);
  if (!v9)
  {
    v9 = sub_238EFDC40(v8, 1uLL, (a1 + 16));
    v10 = v4;
    if (!v9)
    {
      v9 = sub_238EFDC40(v8, 2uLL, (a1 + 40));
      v10 = v5;
      if (!v9)
      {
        v9 = sub_238F2AA44(v8, 3uLL, (a1 + 64));
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F35EBC(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (v9 > 1u)
    {
      if (v9 != 2)
      {
        if (v9 == 3)
        {
          *(a1 + 120) = 1;
          *(a1 + 122) = 0;
          v4 = sub_2393C5F70(a2, (a1 + 122));
        }

        goto LABEL_13;
      }

      *(a1 + 96) = 1;
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      v5 = (a1 + 104);
      goto LABEL_12;
    }

    if (v9)
    {
      if (v9 == 1)
      {
        *(a1 + 72) = 1;
        *(a1 + 80) = 0;
        *(a1 + 88) = 0;
        v5 = (a1 + 80);
LABEL_12:
        v4 = sub_2393C61E0(a2, v5);
      }
    }

    else
    {
      v4 = sub_238F36BB4(a1, a2);
    }

LABEL_13:
    v6 = v4;
    if (v4)
    {
      v7 = v4 & 0xFFFFFFFF00000000;
      return v7 | v6;
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238F35FB0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_2393C85FC(v8, 0, *a1, *(a1 + 8));
    v10 = v4;
    if (!v9)
    {
      v9 = sub_238F2A5AC(v8, 1uLL, (a1 + 16));
      v10 = v5;
      if (!v9)
      {
        v9 = sub_238F39438(v8, 2uLL, (a1 + 20));
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F36034(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    switch(v8)
    {
      case 2:
        v4 = sub_238F360EC(a2, (a1 + 20));
        break;
      case 1:
        v4 = sub_238F0B738(a2, (a1 + 16));
        break;
      case 0:
        v4 = sub_2393C61E0(a2, a1);
        break;
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238F360EC(uint64_t a1, char *a2)
{
  if (sub_2393C5C40(a1) == 20)
  {
    LODWORD(v4) = 0;
    v5 = 0;
    if (a2[1] == 1)
    {
      a2[1] = 0;
    }
  }

  else
  {
    *a2 = 256;
    v4 = sub_238F394AC(a1, a2);
    if (v4)
    {
      v5 = v4 & 0xFFFFFFFF00000000;
    }

    else
    {
      if ((a2[1] & 1) == 0)
      {
        sub_238EA195C();
      }

      v6 = *a2;
      if (v6 == 255)
      {
        LODWORD(v4) = 1415;
      }

      else
      {
        LODWORD(v4) = 0;
      }

      if (v6 == 255)
      {
        v5 = 0xAF00000000;
      }

      else
      {
        v5 = 0;
      }
    }
  }

  return v5 | v4;
}

unint64_t sub_238F361A4(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_238F16720(v8, 0, a1);
    v10 = v4;
    if (!v9)
    {
      v9 = sub_238F16720(v8, 1uLL, a1 + 16);
      v10 = v5;
      if (!v9)
      {
        v9 = sub_238F37DA4(v8, 2uLL, a1 + 32);
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F36228(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    switch(v9)
    {
      case 2:
        v4 = sub_238F0C9D0(a2, (a1 + 32));
        break;
      case 1:
        *(a1 + 16) = 1;
        *(a1 + 24) = 0;
        v5 = (a1 + 24);
        goto LABEL_8;
      case 0:
        *a1 = 1;
        *(a1 + 8) = 0;
        v5 = (a1 + 8);
LABEL_8:
        v4 = sub_2393C5DA0(a2, v5);
        break;
    }

    v6 = v4;
    if (v4)
    {
      v7 = v4 & 0xFFFFFFFF00000000;
      return v7 | v6;
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238F362F4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_2393C85FC(v8, 0, *a1, *(a1 + 8));
    v10 = v4;
    if (!v9)
    {
      v9 = sub_238F39514(v8, 1uLL, a1 + 16);
      v10 = v5;
      if (!v9)
      {
        v9 = sub_238F39528(v8, 2uLL, (a1 + 24));
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238F36378(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    switch(v8)
    {
      case 2:
        *(a1 + 24) = 1;
        *(a1 + 25) = 0;
        v4 = sub_238F0C9D0(a2, (a1 + 25));
        break;
      case 1:
        v4 = sub_238F2F8B4(a2, a1 + 16);
        break;
      case 0:
        v4 = sub_2393C61E0(a2, a1);
        break;
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238F36444(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v9, a2, a3);
  if (!v10)
  {
    v10 = sub_2393C818C(v9, 0, *a1);
    v11 = v4;
    if (!v10)
    {
      v10 = sub_2393C818C(v9, 1uLL, a1[1]);
      v11 = v5;
      if (!v10)
      {
        v10 = sub_2393C818C(v9, 2uLL, a1[2]);
        v11 = v6;
        if (!v10)
        {
          v10 = sub_2393C818C(v9, 3uLL, a1[3]);
          v11 = v7;
        }
      }
    }
  }

  return sub_2394C38E0(&v9);
}

unint64_t sub_238F364E0(_WORD *a1, uint64_t a2)
{
  v13[0] = 0;
  v14 = a2;
  v4 = a1 + 3;
  v5 = a1 + 2;
  v6 = a1 + 1;
  while (1)
  {
    v12 = 0;
    v7 = sub_2394C37B8(v13, &v12);
    if (v7)
    {
      break;
    }

    if (v12 <= 1u)
    {
      v8 = a1;
      if (v12)
      {
        v8 = v6;
        if (v12 != 1)
        {
          goto LABEL_11;
        }
      }

      goto LABEL_10;
    }

    v8 = v5;
    if (v12 == 2)
    {
      goto LABEL_10;
    }

    if (v12 == 3)
    {
      v8 = v4;
LABEL_10:
      v7 = sub_2393C5F70(a2, v8);
    }

LABEL_11:
    v9 = v7;
    if (v7)
    {
      v10 = v7 & 0xFFFFFFFF00000000;
      return v10 | v9;
    }
  }

  v10 = v7 & 0xFFFFFFFF00000000;
  v9 = v7;
  if (v7 == 33)
  {
    v9 = 0;
    v10 = 0;
  }

  return v10 | v9;
}

unint64_t sub_238F365E0(unsigned __int16 *a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  sub_2394C389C(&v18, a2, a3);
  if (!v19)
  {
    v19 = sub_2393C818C(v18, 0, *a1);
    v20 = v6;
    if (!v19)
    {
      v19 = sub_2393C8154(v18, 1uLL, *(a1 + 1));
      v20 = v7;
      if (!v19)
      {
        v19 = sub_2393C818C(v18, 2uLL, a1[8]);
        v20 = v8;
        if (!v19)
        {
          v9 = *(a1 + 18);
          if (v9 == 4)
          {
            v10 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
            v11 = 0x5C00000587;
LABEL_7:
            v19 = v11;
            v20 = v10;
            return sub_2394C38E0(&v18);
          }

          v19 = sub_2393C8140(v18, 3uLL, v9);
          v20 = v12;
          if (!v19)
          {
            v19 = sub_238EFD4A8(v18, 4uLL, a1 + 10);
            v20 = v13;
            if (!v19)
            {
              v19 = sub_238EFD4A8(v18, 5uLL, a1 + 12);
              v20 = v14;
              if (!v19)
              {
                v16 = sub_2393C7E38(v18, 6uLL, *(a1 + 28));
                v19 = v16;
                v20 = v17;
                if (*a4 == 1 && !v16)
                {
                  v11 = sub_2393C8140(v18, 0xFEuLL, *(a1 + 29));
                  goto LABEL_7;
                }
              }
            }
          }
        }
      }
    }
  }

  return sub_2394C38E0(&v18);
}

unint64_t sub_238F36710(unsigned __int16 *a1, uint64_t a2, unint64_t a3, char a4)
{
  v5[0] = 1;
  v5[1] = a4;
  return sub_238F365E0(a1, a2, a3, v5);
}

unint64_t sub_238F36740(uint64_t a1, uint64_t a2)
{
  v12[0] = 0;
  v13 = a2;
  while (1)
  {
    v11 = 0;
    v4 = sub_2394C37B8(v12, &v11);
    if (v4)
    {
      break;
    }

    if (v11 > 3u)
    {
      if (v11 > 5u)
      {
        if (v11 == 6)
        {
          v4 = sub_2393C5CE4(a2, (a1 + 28));
        }

        else if (v11 == 254)
        {
          v4 = sub_2393C5ED0(a2, (a1 + 29));
        }

        goto LABEL_23;
      }

      if (v11 == 4)
      {
        v5 = (a1 + 20);
        goto LABEL_19;
      }

      if (v11 == 5)
      {
        v5 = (a1 + 24);
LABEL_19:
        v4 = sub_238EFD714(a2, v5);
      }
    }

    else
    {
      if (v11 > 1u)
      {
        if (v11 != 2)
        {
          if (v11 == 3)
          {
            v4 = sub_238EA4D5C(a2, (a1 + 18));
          }

          goto LABEL_23;
        }

        v7 = (a1 + 16);
        v6 = a2;
        goto LABEL_21;
      }

      if (!v11)
      {
        v6 = a2;
        v7 = a1;
LABEL_21:
        v4 = sub_2393C5F70(v6, v7);
        goto LABEL_23;
      }

      v4 = sub_2393C5F2C(a2, (a1 + 8));
    }

LABEL_23:
    v8 = v4;
    if (v4)
    {
      v9 = v4 & 0xFFFFFFFF00000000;
      return v9 | v8;
    }
  }

  v9 = v4 & 0xFFFFFFFF00000000;
  v8 = v4;
  if (v4 == 33)
  {
    v8 = 0;
    v9 = 0;
  }

  return v9 | v8;
}

BOOL sub_238F3687C(int a1, unsigned int a2)
{
  if (a1 <= 259)
  {
    if (a1 > 152)
    {
      if (a1 == 153)
      {
        return a2 - 1 < 7;
      }

      else
      {
        if (a1 != 257)
        {
          return 0;
        }

        v2 = 1;
        if ((a2 > 0x29 || ((1 << a2) & 0x3C42400000BLL) == 0) && (a2 - 323551232 > 4 || a2 == 323551233))
        {
          return 0;
        }
      }
    }

    else
    {
      v7 = a2 < 3;
      if (a1 != 60)
      {
        v7 = 0;
      }

      if (a1 == -918523)
      {
        return ((a2 - 18) & 0xFFFFFFF7) == 0;
      }

      else
      {
        return v7;
      }
    }
  }

  else
  {
    v2 = a2 - 3 < 2;
    v3 = a2 < 2;
    v4 = 0xDu >> (a2 & 0xF);
    if (a2 >= 4)
    {
      LOBYTE(v4) = 0;
    }

    if (a1 != 1294)
    {
      LOBYTE(v4) = 0;
    }

    if (a1 != 1107)
    {
      v3 = v4;
    }

    if (a1 != 1106)
    {
      v2 = v3;
    }

    v5 = a2 - 1 < 2;
    v6 = a2 < 2;
    if (a1 != 261)
    {
      v6 = 0;
    }

    if (a1 != 260)
    {
      v5 = v6;
    }

    if (a1 <= 1105)
    {
      return v5;
    }
  }

  return v2;
}

uint64_t sub_238F3699C(int a1, unsigned int a2)
{
  if (a1 > 69)
  {
    if (a1 > 1362)
    {
      v2 = 0x56D5u >> a2;
      if (a2 >= 0xF)
      {
        LOBYTE(v2) = 0;
      }

      v9 = a2 ^ 1;
      if (a2 >= 5)
      {
        v9 = 0;
      }

      if (a1 != 2050)
      {
        v9 = 0;
      }

      if (a1 != 2049)
      {
        LOBYTE(v2) = v9;
      }

      v4 = 0x75u >> a2;
      if (a2 >= 7)
      {
        LOBYTE(v4) = 0;
      }

      v10 = 0x7Du >> a2;
      if (a2 >= 7)
      {
        LOBYTE(v10) = 0;
      }

      if (a1 != 1365)
      {
        LOBYTE(v10) = 0;
      }

      if (a1 != 1363)
      {
        LOBYTE(v4) = v10;
      }

      v6 = a1 <= 2048;
    }

    else
    {
      LOBYTE(v2) = a2 < 2;
      v3 = a2 < 4;
      if (a1 != 1294)
      {
        v3 = 0;
      }

      if (a1 != 151)
      {
        LOBYTE(v2) = v3;
      }

      LOBYTE(v4) = (a2 & 0xFFFFFFFD) == 0;
      v5 = a2 < 7 || a2 == 64;
      if (a1 != 98)
      {
        v5 = 0;
      }

      if (a1 != 70)
      {
        LOBYTE(v4) = v5;
      }

      v6 = a1 <= 150;
    }

LABEL_46:
    if (v6)
    {
      LOBYTE(v2) = v4;
    }

    return v2 & 1;
  }

  if (a1 > 47)
  {
    v2 = 0x1280u >> a2;
    if (a2 >= 0xD)
    {
      LOBYTE(v2) = 0;
    }

    v7 = 0x1Bu >> a2;
    if (a2 >= 5)
    {
      LOBYTE(v7) = 0;
    }

    if (a1 != 63)
    {
      LOBYTE(v7) = 0;
    }

    if (a1 != 62)
    {
      LOBYTE(v2) = v7;
    }

    LOBYTE(v4) = a2 == 4;
    v8 = a2 == 1;
    if (a1 != 56)
    {
      v8 = 0;
    }

    if (a1 != 48)
    {
      LOBYTE(v4) = v8;
    }

    v6 = a1 <= 61;
    goto LABEL_46;
  }

  v11 = a2 < 6;
  v12 = a2 == 0;
  if (a1 != 31)
  {
    v12 = 0;
  }

  if (a1 != 4)
  {
    v11 = v12;
  }

  if (a1 == -918523)
  {
    LOBYTE(v2) = a2 == 26;
  }

  else
  {
    LOBYTE(v2) = v11;
  }

  return v2 & 1;
}

BOOL sub_238F36B08(int a1, unsigned int a2)
{
  v2 = a2 & 0xFFFFFFFE;
  if (a1 == 149 && v2 == 2)
  {
    return 1;
  }

  if (a1 == 1361 && v2 == 12)
  {
    return 1;
  }

  if (a1 == 1363 && !a2)
  {
    return 1;
  }

  if (a1 == 1363 && a2 - 1 < 6)
  {
    return 1;
  }

  if (a1 == 1364 && a2 < 4)
  {
    return 1;
  }

  v3 = a2 < 2 || v2 == 6;
  v4 = v3;
  if (a1 == 1365 && v4 || a1 == 2049 && a2 < 0xF || a1 == 2050 && a2 < 5)
  {
    return 1;
  }

  return a1 == -918523 && a2 == 26;
}

uint64_t sub_238F36BB4(uint64_t a1, uint64_t a2)
{
  if (sub_2393C5C40(a2) != 22)
  {
    return 0x4D0000008ELL;
  }

  v10 = 0;
  v4 = sub_2393C6A2C(a2, &v10);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    *a1 = *a2;
    v7 = *(a2 + 16);
    v8 = *(a2 + 32);
    v9 = *(a2 + 48);
    *(a1 + 63) = *(a2 + 63);
    *(a1 + 32) = v8;
    *(a1 + 48) = v9;
    *(a1 + 16) = v7;
    v4 = sub_2393C6A98(a2, v10);
    v5 = v4 & 0xFFFFFFFF00000000;
    if (!v4)
    {
      LODWORD(v4) = 0;
      v5 = 0;
    }
  }

  return v5 | v4;
}

unint64_t sub_238F36C68(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if ((*(a3 + 16) & 1) == 0)
  {
    return sub_2393C8948(a1, a2);
  }

  v4 = *a3;
  v5 = *(a3 + 8);
  v8 = 0;
  result = sub_2393C8CE0(a1, a2, 22, &v8);
  if (!result)
  {
    if (v5)
    {
      v7 = 8 * v5;
      while (1)
      {
        result = sub_2393C8154(a1, 0x100uLL, *v4);
        if (result)
        {
          break;
        }

        ++v4;
        v7 -= 8;
        if (!v7)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      result = sub_2393C8DE0(a1, v8);
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_238F36D08(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if ((*(a3 + 16) & 1) == 0)
  {
    return sub_2393C8948(a1, a2);
  }

  v4 = *a3;
  v5 = *(a3 + 8);
  v8 = 0;
  result = sub_2393C8CE0(a1, a2, 22, &v8);
  if (!result)
  {
    if (v5)
    {
      v7 = 20 * v5;
      while (1)
      {
        result = sub_238EFE394(v4, a1, 0x100uLL);
        if (result)
        {
          break;
        }

        v4 += 20;
        v7 -= 20;
        if (!v7)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      result = sub_2393C8DE0(a1, v8);
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_238F36DAC(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    *(a1 + 72) = 0;
  }

  sub_2393C5AAC(a1);
  sub_2393C5ADC(v2, 0, 0);
  *(a1 + 72) = 1;
  return a1;
}

unint64_t sub_238F36DFC(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE3698(a3);
  return sub_2393C81D4(a1, a2, *v5);
}

unint64_t sub_238F36E54(uint64_t a1, _WORD *a2)
{
  v6 = 0;
  v3 = sub_2393C5F70(a1, &v6);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v3) = 0;
    v4 = 0;
    *a2 = v6;
  }

  return v4 | v3;
}

unint64_t sub_238F36EB0(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE36B8(a3);
  return sub_238F19B48(v5, a1, a2);
}

unint64_t sub_238F36F04(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  if ((a3[1] & 1) == 0)
  {
    v5 = sub_2393C8948(a1, a2);
LABEL_8:
    v4 = v5 & 0xFFFFFFFF00000000;
    return v5 | v4;
  }

  v3 = *a3;
  if (v3 == 21)
  {
    v5 = 0x5C00000587;
    goto LABEL_8;
  }

  if (v3 != 255)
  {
    v5 = sub_2393C8140(a1, a2, v3);
    goto LABEL_8;
  }

  v4 = 0xD000000000;
  LODWORD(v5) = 1415;
  return v5 | v4;
}

unint64_t sub_238F36F78(uint64_t a1, _BYTE *a2)
{
  v3 = sub_238EA4DB4(a1, a2);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v3) = 0;
    v4 = 0;
    v5 = *a2;
    if (v5 >= 0x15)
    {
      LOBYTE(v5) = 21;
    }

    *a2 = v5;
  }

  return v4 | v3;
}

unint64_t sub_238F36FD0(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE36D8(a3);
  return sub_2393C827C(a1, a2, *v5);
}

unint64_t sub_238F37028(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE36D8(a3);
  return sub_2393C7E38(a1, a2, *v5);
}

unint64_t sub_238F37080(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v15 = v3;
  v16 = v4;
  v7 = sub_238DE36B8(a3);
  v8 = *v7;
  v9 = *(v7 + 1);
  v14 = 0;
  v10 = sub_2393C8CE0(a1, a2, 22, &v14);
  if (!v10)
  {
    if (!v9)
    {
LABEL_9:
      v10 = sub_2393C8DE0(a1, v14);
      v11 = v10 & 0xFFFFFFFF00000000;
      if (!v10)
      {
        v11 = 0;
        LODWORD(v10) = 0;
      }

      return v10 | v11;
    }

    v13 = 112 * v9;
    while (1)
    {
      v10 = sub_238F064AC(v8, a1, 0x100uLL);
      if (v10)
      {
        break;
      }

      v8 += 56;
      v13 -= 112;
      if (!v13)
      {
        goto LABEL_9;
      }
    }
  }

  v11 = v10 & 0xFFFFFFFF00000000;
  return v10 | v11;
}

unint64_t sub_238F37154(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE36B8(a3);
  return sub_238F06B08(v5, a1, a2);
}

unint64_t sub_238F371A8(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v15 = v3;
  v16 = v4;
  v7 = sub_238DE36B8(a3);
  v8 = *v7;
  v9 = v7[1];
  v14 = 0;
  v10 = sub_2393C8CE0(a1, a2, 22, &v14);
  if (!v10)
  {
    if (!v9)
    {
LABEL_9:
      v10 = sub_2393C8DE0(a1, v14);
      v11 = v10 & 0xFFFFFFFF00000000;
      if (!v10)
      {
        v11 = 0;
        LODWORD(v10) = 0;
      }

      return v10 | v11;
    }

    v13 = 32 * v9;
    while (1)
    {
      v10 = sub_238F06280(v8, a1, 0x100uLL);
      if (v10)
      {
        break;
      }

      v8 += 32;
      v13 -= 32;
      if (!v13)
      {
        goto LABEL_9;
      }
    }
  }

  v11 = v10 & 0xFFFFFFFF00000000;
  return v10 | v11;
}

unint64_t sub_238F37278(uint64_t a1, _DWORD *a2)
{
  v6 = 0;
  v3 = sub_2393C5FC8(a1, &v6);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v3) = 0;
    v4 = 0;
    *a2 = v6;
  }

  return v4 | v3;
}

unint64_t sub_238F372D4(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = *sub_238DE36D8(a3);
  if (v5 == 4)
  {
    return 0x5C00000587;
  }

  else
  {
    return sub_2393C8140(a1, a2, v5);
  }
}

unint64_t sub_238F37348(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v15 = v3;
  v16 = v4;
  v7 = sub_238DE36B8(a3);
  v8 = *v7;
  v9 = v7[1];
  v14 = 0;
  v10 = sub_2393C8CE0(a1, a2, 22, &v14);
  if (!v10)
  {
    if (!v9)
    {
LABEL_9:
      v10 = sub_2393C8DE0(a1, v14);
      v11 = v10 & 0xFFFFFFFF00000000;
      if (!v10)
      {
        v11 = 0;
        LODWORD(v10) = 0;
      }

      return v10 | v11;
    }

    v13 = v8 + 16 * v9;
    while (1)
    {
      v10 = sub_2393C85FC(a1, 0x100uLL, *v8, *(v8 + 8));
      if (v10)
      {
        break;
      }

      v8 += 16;
      if (v8 == v13)
      {
        goto LABEL_9;
      }
    }
  }

  v11 = v10 & 0xFFFFFFFF00000000;
  return v10 | v11;
}

unint64_t sub_238F37418(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE36B8(a3);
  return sub_238F37470(a1, a2, v5);
}

unint64_t sub_238F37470(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a3 + 32))
  {
    return sub_238F06280(a3, a1, a2);
  }

  else
  {
    return sub_2393C8948(a1, a2);
  }
}

unint64_t sub_238F37498(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v15 = v3;
  v16 = v4;
  v7 = sub_238DE36B8(a3);
  v8 = *v7;
  v9 = v7[1];
  v14 = 0;
  v10 = sub_2393C8CE0(a1, a2, 22, &v14);
  if (!v10)
  {
    if (!v9)
    {
LABEL_9:
      v10 = sub_2393C8DE0(a1, v14);
      v11 = v10 & 0xFFFFFFFF00000000;
      if (!v10)
      {
        v11 = 0;
        LODWORD(v10) = 0;
      }

      return v10 | v11;
    }

    v13 = 40 * v9;
    while (1)
    {
      v10 = sub_238F06390(v8, a1, 0x100uLL);
      if (v10)
      {
        break;
      }

      v8 += 40;
      v13 -= 40;
      if (!v13)
      {
        goto LABEL_9;
      }
    }
  }

  v11 = v10 & 0xFFFFFFFF00000000;
  return v10 | v11;
}

unint64_t sub_238F3756C(uint64_t a1, uint64_t a2)
{
  if (sub_2393C5C40(a1) == 20)
  {
    v4 = 0;
    v5 = 0;
    if (*(a2 + 32) == 1)
    {
      *(a2 + 32) = 0;
    }
  }

  else
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 1;
    v6 = sub_238F062EC(a2, a1);
    v5 = v6 & 0xFFFFFFFF00000000;
    if (v6)
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }

    if (!v6)
    {
      v5 = 0;
    }
  }

  return v5 | v4;
}

_BYTE *sub_238F37604(_BYTE *a1)
{
  *a1 = 1;
  v1 = a1 + 8;
  sub_2393C5AAC((a1 + 8));
  sub_2393C5ADC(v2, 0, 0);
  return v1;
}

unint64_t sub_238F37644(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE36B8(a3);
  return sub_238F3769C(a1, a2, v5);
}

unint64_t sub_238F3769C(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (a3[56])
  {
    return sub_238F06B08(a3, a1, a2);
  }

  else
  {
    return sub_2393C8948(a1, a2);
  }
}

unint64_t sub_238F376C4(uint64_t a1, uint64_t a2)
{
  if (sub_2393C5C40(a1) == 20)
  {
    v4 = 0;
    v5 = 0;
    if (*(a2 + 56) == 1)
    {
      *(a2 + 56) = 0;
    }
  }

  else
  {
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 56) = 1;
    v6 = sub_238F06B8C(a2, a1);
    v5 = v6 & 0xFFFFFFFF00000000;
    if (v6)
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }

    if (!v6)
    {
      v5 = 0;
    }
  }

  return v5 | v4;
}

unint64_t sub_238F37764(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = *sub_238DE36D8(a3);
  if (v5 == 5)
  {
    return 0x5C00000587;
  }

  else
  {
    return sub_2393C8140(a1, a2, v5);
  }
}

unint64_t sub_238F377D8(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE36D8(a3);
  return sub_238F37830(a1, a2, v5);
}

unint64_t sub_238F37830(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  if ((a3[1] & 1) == 0)
  {
    v5 = sub_2393C8948(a1, a2);
LABEL_8:
    v4 = v5 & 0xFFFFFFFF00000000;
    return v5 | v4;
  }

  v3 = *a3;
  if (v3 == 6)
  {
    v5 = 0x5C00000587;
    goto LABEL_8;
  }

  if (v3 != 255)
  {
    v5 = sub_2393C8140(a1, a2, v3);
    goto LABEL_8;
  }

  v4 = 0xD000000000;
  LODWORD(v5) = 1415;
  return v5 | v4;
}

unint64_t sub_238F378A4(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE36D8(a3);
  return sub_238F378FC(a1, a2, v5);
}

unint64_t sub_238F378FC(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  if (a3[1])
  {
    return sub_2393C7E38(a1, a2, *a3);
  }

  else
  {
    return sub_2393C8948(a1, a2);
  }
}

unint64_t sub_238F37910(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE36D8(a3);
  return sub_238F1EE9C(a1, a2, v5);
}

unint64_t sub_238F37968(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238E0A934(a3);
  return sub_238EFD4A8(a1, a2, v5);
}

unint64_t sub_238F379C0(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v15 = v3;
  v16 = v4;
  v7 = sub_238DE36B8(a3);
  v8 = *v7;
  v9 = v7[1];
  v14 = 0;
  v10 = sub_2393C8CE0(a1, a2, 22, &v14);
  if (!v10)
  {
    if (!v9)
    {
LABEL_9:
      v10 = sub_2393C8DE0(a1, v14);
      v11 = v10 & 0xFFFFFFFF00000000;
      if (!v10)
      {
        v11 = 0;
        LODWORD(v10) = 0;
      }

      return v10 | v11;
    }

    v13 = 48 * v9;
    while (1)
    {
      v10 = sub_238F0AFB8(v8, a1, 0x100uLL);
      if (v10)
      {
        break;
      }

      v8 += 48;
      v13 -= 48;
      if (!v13)
      {
        goto LABEL_9;
      }
    }
  }

  v11 = v10 & 0xFFFFFFFF00000000;
  return v10 | v11;
}

uint64_t sub_238F37A94(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    *(a1 + 80) = 0;
  }

  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_2393C5AAC(a1 + 8);
  sub_2393C5ADC(a1 + 8, 0, 0);
  *(a1 + 80) = 1;
  return a1;
}

unint64_t sub_238F37AF8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    return sub_2393C85FC(a1, a2, *a3, *(a3 + 8));
  }

  else
  {
    return sub_2393C8948(a1, a2);
  }
}

unint64_t sub_238F37B10(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE36B8(a3);
  return sub_238F37B68(a1, a2, v5);
}

unint64_t sub_238F37B68(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  if (a3[32])
  {
    return sub_238F0BE10(a3, a1, a2);
  }

  else
  {
    return sub_2393C8948(a1, a2);
  }
}

unint64_t sub_238F37B90(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE36D8(a3);
  return sub_238F0BCE8(v5, a1, a2);
}

unint64_t sub_238F37BE4(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238E0A934(a3);
  return sub_238F0BBBC(v5, a1, a2);
}

unint64_t sub_238F37C38(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE36B8(a3);
  return sub_238F361A4(v5, a1, a2);
}

unint64_t sub_238F37C8C(uint64_t a1, uint64_t a2)
{
  if (sub_2393C5C40(a1) == 20)
  {
    v4 = 0;
    v5 = 0;
    if (*(a2 + 32) == 1)
    {
      *(a2 + 32) = 0;
    }
  }

  else
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 1;
    v6 = sub_238F0BEB4(a2, a1);
    v5 = v6 & 0xFFFFFFFF00000000;
    if (v6)
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }

    if (!v6)
    {
      v5 = 0;
    }
  }

  return v5 | v4;
}

unint64_t sub_238F37D24(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238E0A934(a3);
  return sub_238F37D7C(a1, a2, v5);
}

unint64_t sub_238F37D7C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a3 + 4))
  {
    return sub_238F26BBC(a3, a1, a2);
  }

  else
  {
    return sub_2393C8948(a1, a2);
  }
}

unint64_t sub_238F37DA4(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  if ((a3[1] & 1) == 0)
  {
    v5 = sub_2393C8948(a1, a2);
LABEL_8:
    v4 = v5 & 0xFFFFFFFF00000000;
    return v5 | v4;
  }

  v3 = *a3;
  if (v3 == 3)
  {
    v5 = 0x5C00000587;
    goto LABEL_8;
  }

  if (v3 != 255)
  {
    v5 = sub_2393C8140(a1, a2, v3);
    goto LABEL_8;
  }

  v4 = 0xD000000000;
  LODWORD(v5) = 1415;
  return v5 | v4;
}

unint64_t sub_238F37E18(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE36B8(a3);
  return sub_238F0D954(v5, a1, a2);
}

unint64_t sub_238F37E6C(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE36B8(a3);
  return sub_238F0DEFC(v5, a1, a2);
}

unint64_t sub_238F37EC0(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE36B8(a3);
  v6 = *v5;
  v7 = *(v5 + 1);
  v15 = 0;
  v8 = sub_2393C8CE0(a1, a2, 22, &v15);
  v9 = v8;
  if (v8)
  {
    v10 = v8 & 0xFFFFFFFF00000000;
  }

  else if (v7)
  {
    v9 = 1415;
    while (1)
    {
      v12 = *v6;
      if (v12 == 18)
      {
        v10 = 0x5C00000000;
        return v9 | v10;
      }

      v13 = sub_2393C8140(a1, 0x100uLL, v12);
      if (v13)
      {
        break;
      }

      ++v6;
      if (!--v7)
      {
        goto LABEL_10;
      }
    }

    v10 = v13 & 0xFFFFFFFF00000000;
    v9 = v13;
  }

  else
  {
LABEL_10:
    v14 = sub_2393C8DE0(a1, v15);
    v10 = v14 & 0xFFFFFFFF00000000;
    if (v14)
    {
      v9 = v14;
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }
  }

  return v9 | v10;
}

unint64_t sub_238F37FC8(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v15 = v3;
  v16 = v4;
  v7 = sub_238DE36B8(a3);
  v8 = *v7;
  v9 = v7[1];
  v14 = 0;
  v10 = sub_2393C8CE0(a1, a2, 22, &v14);
  if (!v10)
  {
    if (!v9)
    {
LABEL_9:
      v10 = sub_2393C8DE0(a1, v14);
      v11 = v10 & 0xFFFFFFFF00000000;
      if (!v10)
      {
        v11 = 0;
        LODWORD(v10) = 0;
      }

      return v10 | v11;
    }

    v13 = 48 * v9;
    while (1)
    {
      v10 = sub_238F0D7F0(v8, a1, 0x100uLL);
      if (v10)
      {
        break;
      }

      v8 += 48;
      v13 -= 48;
      if (!v13)
      {
        goto LABEL_9;
      }
    }
  }

  v11 = v10 & 0xFFFFFFFF00000000;
  return v10 | v11;
}

unint64_t sub_238F3809C(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE36B8(a3);
  return sub_238F0D69C(v5, a1, a2);
}

unint64_t sub_238F380F0(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE36B8(a3);
  return sub_238F0DDA0(v5, a1, a2);
}

unint64_t sub_238F38144(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if ((*(a3 + 16) & 1) == 0)
  {
    return sub_2393C8948(a1, a2);
  }

  v4 = *a3;
  v5 = *(a3 + 8);
  v8 = 0;
  result = sub_2393C8CE0(a1, a2, 22, &v8);
  if (!result)
  {
    if (v5)
    {
      v7 = 24 * v5;
      while (1)
      {
        result = sub_238F0F320(v4, a1, 0x100uLL);
        if (result)
        {
          break;
        }

        v4 += 24;
        v7 -= 24;
        if (!v7)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      result = sub_2393C8DE0(a1, v8);
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_238F381E8(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v15 = v3;
  v16 = v4;
  v7 = sub_238DE36B8(a3);
  v8 = *v7;
  v9 = *(v7 + 1);
  v14 = 0;
  v10 = sub_2393C8CE0(a1, a2, 22, &v14);
  if (!v10)
  {
    if (!v9)
    {
LABEL_9:
      v10 = sub_2393C8DE0(a1, v14);
      v11 = v10 & 0xFFFFFFFF00000000;
      if (!v10)
      {
        v11 = 0;
        LODWORD(v10) = 0;
      }

      return v10 | v11;
    }

    v13 = 16 * v9;
    while (1)
    {
      v10 = sub_238F0F178(v8, a1, 0x100uLL);
      if (v10)
      {
        break;
      }

      v8 += 16;
      v13 -= 16;
      if (!v13)
      {
        goto LABEL_9;
      }
    }
  }

  v11 = v10 & 0xFFFFFFFF00000000;
  return v10 | v11;
}

unint64_t sub_238F382B8(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  if ((a3[1] & 1) == 0)
  {
    v5 = sub_2393C8948(a1, a2);
LABEL_8:
    v4 = v5 & 0xFFFFFFFF00000000;
    return v5 | v4;
  }

  v3 = *a3;
  if (v3 == 2)
  {
    v5 = 0x5C00000587;
    goto LABEL_8;
  }

  if (v3 != 255)
  {
    v5 = sub_2393C8140(a1, a2, v3);
    goto LABEL_8;
  }

  v4 = 0xD000000000;
  LODWORD(v5) = 1415;
  return v5 | v4;
}

unint64_t sub_238F3832C(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  if ((a3[1] & 1) == 0)
  {
    v5 = sub_2393C8948(a1, a2);
LABEL_8:
    v4 = v5 & 0xFFFFFFFF00000000;
    return v5 | v4;
  }

  v3 = *a3;
  if (v3 == 10)
  {
    v5 = 0x5C00000587;
    goto LABEL_8;
  }

  if (v3 != 255)
  {
    v5 = sub_2393C8140(a1, a2, v3);
    goto LABEL_8;
  }

  v4 = 0xD000000000;
  LODWORD(v5) = 1415;
  return v5 | v4;
}

unint64_t sub_238F383A0(uint64_t a1, _BYTE *a2)
{
  v3 = sub_238EA4DB4(a1, a2);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v3) = 0;
    v4 = 0;
    v5 = *a2;
    if (v5 >= 0xA)
    {
      LOBYTE(v5) = 10;
    }

    *a2 = v5;
  }

  return v4 | v3;
}

unint64_t sub_238F383F8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if ((*(a3 + 16) & 1) == 0)
  {
    return sub_2393C8948(a1, a2);
  }

  v4 = *a3;
  v5 = *(a3 + 8);
  v8 = 0;
  result = sub_2393C8CE0(a1, a2, 22, &v8);
  if (!result)
  {
    if (v5)
    {
      v7 = 4 * v5;
      while (1)
      {
        result = sub_238F14270(v4, a1, 0x100uLL);
        if (result)
        {
          break;
        }

        v4 += 4;
        v7 -= 4;
        if (!v7)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      result = sub_2393C8DE0(a1, v8);
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_238F38498(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  if (a3[4])
  {
    return sub_238F14270(a3, a1, a2);
  }

  else
  {
    return sub_2393C8948(a1, a2);
  }
}

unint64_t sub_238F384C0(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  if (a3[4])
  {
    return sub_238F14144(a3, a1, a2);
  }

  else
  {
    return sub_2393C8948(a1, a2);
  }
}

unint64_t sub_238F384E8(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE36B8(a3);
  return sub_238EFD454(a1, a2, v5);
}

unint64_t sub_238F38540(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a3 + 48))
  {
    return sub_238F1E678(a3, a1, a2);
  }

  else
  {
    return sub_2393C8948(a1, a2);
  }
}

unint64_t sub_238F38568(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v15 = v3;
  v16 = v4;
  v7 = sub_238DE36B8(a3);
  v8 = *v7;
  v9 = *(v7 + 1);
  v14 = 0;
  v10 = sub_2393C8CE0(a1, a2, 22, &v14);
  if (!v10)
  {
    if (!v9)
    {
LABEL_9:
      v10 = sub_2393C8DE0(a1, v14);
      v11 = v10 & 0xFFFFFFFF00000000;
      if (!v10)
      {
        v11 = 0;
        LODWORD(v10) = 0;
      }

      return v10 | v11;
    }

    v13 = 32 * v9;
    while (1)
    {
      v10 = sub_238F1F030(v8, a1, 0x100uLL);
      if (v10)
      {
        break;
      }

      v8 += 32;
      v13 -= 32;
      if (!v13)
      {
        goto LABEL_9;
      }
    }
  }

  v11 = v10 & 0xFFFFFFFF00000000;
  return v10 | v11;
}

unint64_t sub_238F38638(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v15 = v3;
  v16 = v4;
  v7 = sub_238DE36B8(a3);
  v8 = *v7;
  v9 = *(v7 + 1);
  v14 = 0;
  v10 = sub_2393C8CE0(a1, a2, 22, &v14);
  if (!v10)
  {
    if (!v9)
    {
LABEL_9:
      v10 = sub_2393C8DE0(a1, v14);
      v11 = v10 & 0xFFFFFFFF00000000;
      if (!v10)
      {
        v11 = 0;
        LODWORD(v10) = 0;
      }

      return v10 | v11;
    }

    v13 = 48 * v9;
    while (1)
    {
      v10 = sub_238F20F70(v8, a1, 0x100uLL);
      if (v10)
      {
        break;
      }

      v8 += 48;
      v13 -= 48;
      if (!v13)
      {
        goto LABEL_9;
      }
    }
  }

  v11 = v10 & 0xFFFFFFFF00000000;
  return v10 | v11;
}

unint64_t sub_238F3870C(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v15 = v3;
  v16 = v4;
  v7 = sub_238DE36B8(a3);
  v8 = *v7;
  v9 = *(v7 + 1);
  v14 = 0;
  v10 = sub_2393C8CE0(a1, a2, 22, &v14);
  if (!v10)
  {
    if (!v9)
    {
LABEL_9:
      v10 = sub_2393C8DE0(a1, v14);
      v11 = v10 & 0xFFFFFFFF00000000;
      if (!v10)
      {
        v11 = 0;
        LODWORD(v10) = 0;
      }

      return v10 | v11;
    }

    v13 = v9 << 6;
    while (1)
    {
      v10 = sub_238F20D08(v8, a1, 0x100uLL);
      if (v10)
      {
        break;
      }

      v8 += 32;
      v13 -= 64;
      if (!v13)
      {
        goto LABEL_9;
      }
    }
  }

  v11 = v10 & 0xFFFFFFFF00000000;
  return v10 | v11;
}

unint64_t sub_238F387DC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if ((*(a3 + 4) & 1) == 0)
  {
    v5 = sub_2393C8948(a1, a2);
LABEL_6:
    v4 = v5 & 0xFFFFFFFF00000000;
    return v5 | v4;
  }

  v3 = *a3;
  if (v3 != 0x80000000)
  {
    v5 = sub_2393C827C(a1, a2, v3);
    goto LABEL_6;
  }

  v4 = 0xD000000000;
  LODWORD(v5) = 1415;
  return v5 | v4;
}

unint64_t sub_238F38834(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE3698(a3);
  return sub_238F25410(v5, a1, a2);
}

unint64_t sub_238F38888(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE36B8(a3);
  return sub_238F388E0(a1, a2, v5);
}

unint64_t sub_238F388E0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if ((*(a3 + 16) & 1) == 0)
  {
    return sub_2393C8948(a1, a2);
  }

  v4 = *a3;
  v5 = *(a3 + 8);
  v8 = 0;
  result = sub_2393C8CE0(a1, a2, 22, &v8);
  if (!result)
  {
    if (v5)
    {
      v7 = 6 * v5;
      while (1)
      {
        result = sub_238F25578(v4, a1, 0x100uLL);
        if (result)
        {
          break;
        }

        v4 += 6;
        v7 -= 6;
        if (!v7)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      result = sub_2393C8DE0(a1, v8);
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_238F38984(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE36D8(a3);
  return sub_238F13404(a1, a2, v5);
}

unint64_t sub_238F389DC(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE36B8(a3);
  return sub_238F25894(v5, a1, a2);
}

unint64_t sub_238F38A30(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE36B8(a3);
  return sub_238F25C44(v5, a1, a2);
}

unint64_t sub_238F38A84(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v15 = v3;
  v16 = v4;
  v7 = sub_238DE36B8(a3);
  v8 = *v7;
  v9 = v7[1];
  v14 = 0;
  v10 = sub_2393C8CE0(a1, a2, 22, &v14);
  if (!v10)
  {
    if (!v9)
    {
LABEL_9:
      v10 = sub_2393C8DE0(a1, v14);
      v11 = v10 & 0xFFFFFFFF00000000;
      if (!v10)
      {
        v11 = 0;
        LODWORD(v10) = 0;
      }

      return v10 | v11;
    }

    v13 = 24 * v9;
    while (1)
    {
      v10 = sub_238F2760C(v8, a1, 0x100uLL);
      if (v10)
      {
        break;
      }

      v8 += 24;
      v13 -= 24;
      if (!v13)
      {
        goto LABEL_9;
      }
    }
  }

  v11 = v10 & 0xFFFFFFFF00000000;
  return v10 | v11;
}

unint64_t sub_238F38B58(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v14 = v3;
  v15 = v4;
  v7 = sub_238DE36B8(a3);
  v8 = *v7;
  v9 = *(v7 + 1);
  v13 = 0;
  v10 = sub_2393C8CE0(a1, a2, 22, &v13);
  if (!v10)
  {
    if (!v9)
    {
LABEL_8:
      v10 = sub_2393C8DE0(a1, v13);
      v11 = v10 & 0xFFFFFFFF00000000;
      if (!v10)
      {
        v11 = 0;
        LODWORD(v10) = 0;
      }

      return v10 | v11;
    }

    while (1)
    {
      v10 = sub_2393C8140(a1, 0x100uLL, *v8);
      if (v10)
      {
        break;
      }

      ++v8;
      if (!--v9)
      {
        goto LABEL_8;
      }
    }
  }

  v11 = v10 & 0xFFFFFFFF00000000;
  return v10 | v11;
}

unint64_t sub_238F38C24(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE3698(a3);
  return sub_2393C827C(a1, a2, *v5);
}

unint64_t sub_238F38C7C(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  if ((a3[1] & 1) == 0)
  {
    v5 = sub_2393C8948(a1, a2);
LABEL_8:
    v4 = v5 & 0xFFFFFFFF00000000;
    return v5 | v4;
  }

  v3 = *a3;
  if (v3 == 7)
  {
    v5 = 0x5C00000587;
    goto LABEL_8;
  }

  if (v3 != 255)
  {
    v5 = sub_2393C8140(a1, a2, v3);
    goto LABEL_8;
  }

  v4 = 0xD000000000;
  LODWORD(v5) = 1415;
  return v5 | v4;
}

unint64_t sub_238F38CF0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a3 + 24))
  {
    return sub_238F35FB0(a3, a1, a2);
  }

  else
  {
    return sub_2393C8948(a1, a2);
  }
}

unint64_t sub_238F38D18(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  if (a3[3])
  {
    return sub_238F27D34(a3, a1, a2);
  }

  else
  {
    return sub_2393C8948(a1, a2);
  }
}

unint64_t sub_238F38D40(uint64_t a1, unint64_t a2, char *a3)
{
  if ((a3[1] & 1) == 0)
  {
    v5 = sub_2393C8948(a1, a2);
LABEL_6:
    v4 = v5 & 0xFFFFFFFF00000000;
    return v5 | v4;
  }

  v3 = *a3;
  if (v3 != -128)
  {
    v5 = sub_2393C827C(a1, a2, v3);
    goto LABEL_6;
  }

  v4 = 0xD000000000;
  LODWORD(v5) = 1415;
  return v5 | v4;
}

unint64_t sub_238F38D94(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = *sub_238DE36D8(a3);
  if (v5 == 17)
  {
    return 0x5C00000587;
  }

  else
  {
    return sub_2393C8140(a1, a2, v5);
  }
}

unint64_t sub_238F38E08(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    return sub_238F0A480(a3, a1, a2);
  }

  else
  {
    return sub_2393C8948(a1, a2);
  }
}

unint64_t sub_238F38E30(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v15 = v3;
  v16 = v4;
  v7 = sub_238DE36B8(a3);
  v8 = *v7;
  v9 = v7[1];
  v14 = 0;
  v10 = sub_2393C8CE0(a1, a2, 22, &v14);
  if (!v10)
  {
    if (!v9)
    {
LABEL_9:
      v10 = sub_2393C8DE0(a1, v14);
      v11 = v10 & 0xFFFFFFFF00000000;
      if (!v10)
      {
        v11 = 0;
        LODWORD(v10) = 0;
      }

      return v10 | v11;
    }

    v13 = v8 + 16 * v9;
    while (1)
    {
      v10 = sub_2393C8364(a1, 0x100uLL, *v8, *(v8 + 8));
      if (v10)
      {
        break;
      }

      v8 += 16;
      if (v8 == v13)
      {
        goto LABEL_9;
      }
    }
  }

  v11 = v10 & 0xFFFFFFFF00000000;
  return v10 | v11;
}

unint64_t sub_238F38F00(uint64_t a1, void *a2)
{
  v6 = 0;
  v3 = sub_2393C5F2C(a1, &v6);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v3) = 0;
    v4 = 0;
    *a2 = v6;
  }

  return v4 | v3;
}

unint64_t sub_238F38F5C(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE36B8(a3);
  return sub_238F31C50(v5, a1, a2);
}

unint64_t sub_238F38FB0(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE36B8(a3);
  v6 = *v5;
  v7 = *(v5 + 1);
  v15 = 0;
  v8 = sub_2393C8CE0(a1, a2, 22, &v15);
  v9 = v8;
  if (v8)
  {
    v10 = v8 & 0xFFFFFFFF00000000;
  }

  else if (v7)
  {
    v9 = 1415;
    while (1)
    {
      v12 = *v6;
      if (v12 == 4)
      {
        v10 = 0x5C00000000;
        return v9 | v10;
      }

      v13 = sub_2393C8140(a1, 0x100uLL, v12);
      if (v13)
      {
        break;
      }

      ++v6;
      if (!--v7)
      {
        goto LABEL_10;
      }
    }

    v10 = v13 & 0xFFFFFFFF00000000;
    v9 = v13;
  }

  else
  {
LABEL_10:
    v14 = sub_2393C8DE0(a1, v15);
    v10 = v14 & 0xFFFFFFFF00000000;
    if (v14)
    {
      v9 = v14;
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }
  }

  return v9 | v10;
}

unint64_t sub_238F390B8(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  if (a3[64])
  {
    return sub_238F31C50(a3, a1, a2);
  }

  else
  {
    return sub_2393C8948(a1, a2);
  }
}

unint64_t sub_238F390E0(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE36B8(a3);
  return sub_238F390B8(a1, a2, v5);
}

unint64_t sub_238F39138(uint64_t a1, unint64_t a2, unsigned __int8 **a3)
{
  if ((a3[2] & 1) == 0)
  {
    v6 = sub_2393C8948(a1, a2);
    goto LABEL_12;
  }

  v4 = *a3;
  v5 = a3[1];
  v10 = 0;
  v6 = sub_2393C8CE0(a1, a2, 22, &v10);
  if (v6)
  {
LABEL_12:
    v7 = v6;
    return v6 & 0xFFFFFFFF00000000 | v7;
  }

  if (v5)
  {
    v7 = 1415;
    while (1)
    {
      v8 = *v4;
      if (v8 == 4)
      {
        break;
      }

      v6 = sub_2393C8140(a1, 0x100uLL, v8);
      if (v6)
      {
        goto LABEL_12;
      }

      ++v4;
      if (!--v5)
      {
        goto LABEL_8;
      }
    }

    v6 = 0x5C00000000;
  }

  else
  {
LABEL_8:
    v6 = sub_2393C8DE0(a1, v10);
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }
  }

  return v6 & 0xFFFFFFFF00000000 | v7;
}

unint64_t sub_238F39210(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE36B8(a3);
  return sub_238F39138(a1, a2, v5);
}

unint64_t sub_238F39268(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE36B8(a3);
  return sub_238F362F4(v5, a1, a2);
}

unint64_t sub_238F392BC(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v15 = v3;
  v16 = v4;
  v7 = sub_238DE36B8(a3);
  v8 = *v7;
  v9 = v7[1];
  v14 = 0;
  v10 = sub_2393C8CE0(a1, a2, 22, &v14);
  if (!v10)
  {
    if (!v9)
    {
LABEL_9:
      v10 = sub_2393C8DE0(a1, v14);
      v11 = v10 & 0xFFFFFFFF00000000;
      if (!v10)
      {
        v11 = 0;
        LODWORD(v10) = 0;
      }

      return v10 | v11;
    }

    v13 = 72 * v9;
    while (1)
    {
      v10 = sub_238F35E28(v8, a1, 0x100uLL);
      if (v10)
      {
        break;
      }

      v8 += 72;
      v13 -= 72;
      if (!v13)
      {
        goto LABEL_9;
      }
    }
  }

  v11 = v10 & 0xFFFFFFFF00000000;
  return v10 | v11;
}

unint64_t sub_238F39390(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE36B8(a3);
  return sub_238F33C54(v5, a1, a2);
}

unint64_t sub_238F393E4(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE36B8(a3);
  return sub_238F34AEC(v5, a1, a2);
}

unint64_t sub_238F39438(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  if ((a3[1] & 1) == 0)
  {
    v5 = sub_2393C8948(a1, a2);
LABEL_8:
    v4 = v5 & 0xFFFFFFFF00000000;
    return v5 | v4;
  }

  v3 = *a3;
  if (v3 == 40)
  {
    v5 = 0x5C00000587;
    goto LABEL_8;
  }

  if (v3 != 255)
  {
    v5 = sub_2393C8140(a1, a2, v3);
    goto LABEL_8;
  }

  v4 = 0xD000000000;
  LODWORD(v5) = 1415;
  return v5 | v4;
}

unint64_t sub_238F394AC(uint64_t a1, char *a2)
{
  v3 = sub_238EA4DB4(a1, a2);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = *a2;
    if (v5 > 0x5F)
    {
      v6 = 40;
    }

    else
    {
      v6 = byte_23959073C[v5];
    }

    LODWORD(v3) = 0;
    v4 = 0;
    *a2 = v6;
  }

  return v4 | v3;
}

unint64_t sub_238F39514(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a3 + 4))
  {
    return sub_2393C81D4(a1, a2, *a3);
  }

  else
  {
    return sub_2393C8948(a1, a2);
  }
}

unint64_t sub_238F39528(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE36D8(a3);
  return sub_238F37DA4(a1, a2, v5);
}

uint64_t sub_238F39580(__int16 a1, int a2, int a3)
{
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/reporting/reporting.cpp", 32);
  v6 = sub_2394C7C20();
  result = sub_2394C9128(v6);
  if (result)
  {
    v8[0] = a2;
    v8[1] = a3;
    v9 = a1;
    v10 = -1;
    return (*(*result + 88))(result, v8);
  }

  return result;
}

uint64_t sub_238F3960C(__int16 *a1)
{
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/reporting/reporting.cpp", 44);
  v2 = sub_2394C7C20();
  result = sub_2394C9128(v2);
  if (result)
  {
    v4 = *a1;
    v5 = *(a1 + 2);
    v6 = v4;
    v7 = -1;
    return (*(*result + 88))(result, &v5);
  }

  return result;
}

uint64_t sub_238F39690(__int16 a1)
{
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/reporting/reporting.cpp", 56);
  v2 = sub_2394C7C20();
  result = sub_2394C9128(v2);
  if (result)
  {
    v4 = -1;
    v5 = a1;
    v6 = -1;
    return (*(*result + 88))(result, &v4);
  }

  return result;
}

void sub_238F3999C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

unint64_t sub_238F399D0(void *a1, _OWORD *a2, _OWORD *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v14[0] = 0;
  v14[1] = 0;
  v13[0] = 0;
  v13[1] = 0;
  v12[0] = 0;
  v12[1] = 0;
  v5 = a1;
  sub_238DB6950(buf, [v5 bytes], objc_msgSend(v5, "length"));

  v11 = *buf;
  v6 = sub_2394A6260(&v11, a2, a3, v14, v13, v12);
  if (v6)
  {
    v7 = sub_2393D9044(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = sub_2393C9138();
      *buf = 138412546;
      *&buf[4] = v5;
      *&buf[12] = 2080;
      *&buf[14] = v8;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Failed to parse csrElementsTLV %@: %s", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0, 1);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_238F39C48(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_238F39CF4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_238F3A768(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 controller:*(a1 + 32) suspendedChangedTo:*(a1 + 40)];
  }
}

void sub_238F3C140(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2);

  _Unwind_Resume(a1);
}

void sub_238F3C170(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 devicesChangedForController:*(a1 + 32)];
  }
}

void sub_238F3C43C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2);

  _Unwind_Resume(a1);
}

void sub_238F3C670(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 devicesChangedForController:*(a1 + 32)];
  }
}

void sub_238F3CA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_238F3F7E4(va);

  _Unwind_Resume(a1);
}

void sub_238F3D690(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  _Unwind_Resume(a1);
}

void sub_238F3D758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  objc_sync_exit(v11);
  _Unwind_Resume(a1);
}

void sub_238F3D810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_238F3D898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_238F3D918(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_238F3D9AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_238F3DA84(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 controller:*(a1 + 32) statusUpdate:*(a1 + 40)];
  }
}

void sub_238F3DBE0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 controller:*(a1 + 32) commissioningSessionEstablishmentDone:*(a1 + 40)];
  }
}

void sub_238F3DDA0(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 controller:a1[4] commissioningComplete:a1[5] nodeID:a1[6] metrics:a1[7]];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v3 controller:a1[4] commissioningComplete:a1[5] nodeID:a1[6]];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v3 controller:a1[4] commissioningComplete:a1[5]];
  }
}

void sub_238F3DF4C(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v5 controller:*(a1 + 32) readCommissioneeInfo:*(a1 + 40)];
  }

  else if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) productIdentity];
    [v5 controller:v3 readCommissioningInfo:v4];
  }
}

void sub_238F3E0F0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 controller:*(a1 + 32) commissioneeHasReceivedNetworkCredentials:*(a1 + 40)];
  }
}

void sub_238F3E9BC(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7)
{
  v16 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = [[MTROperationalCertificateChain alloc] initWithOperationalCertificate:v16 intermediateCertificate:v12 rootCertificate:v13 adminSubject:v14];
  (*(*(a1 + 32) + 16))();
  if (a7)
  {
    *a7 = 0;
  }
}

uint64_t *sub_238F3F7E4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = 1;
  v6 = v2;
  v7 = *v3;
  v8 = 3;
  sub_23948BD20(&v5);
  return a1;
}

void sub_238F3F92C()
{
  v3[9] = *MEMORY[0x277D85DE8];
  word_27DF775B0 = 0;
  v0 = &xmmword_27DF71962;
  v1 = 254;
  do
  {
    memset(&v3[6], 0, 23);
    memset(&v3[3], 0, 23);
    memset(v3, 0, 22);
    *(v0 - 25) = -1;
    *(v0 - 3) = *&v3[6];
    *(v0 - 33) = *(&v3[7] + 7);
    *(v0 - 10) = 0;
    *(v0 - 25) = *&v3[3];
    *(v0 - 1) = -1;
    *(v0 + 14) = 0;
    *v0 = *v3;
    v0 = (v0 + 72);
    --v1;
  }

  while (v1);
  v2 = *MEMORY[0x277D85DE8];
}