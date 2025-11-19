void sub_100002708(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = *(a1 + 32);
  if (!v5 || [v5 containsObject:v7])
  {
    v6 = sub_10000278C(*(a1 + 48), a3);
    [*(a1 + 40) setObject:v6 forKeyedSubscript:v7];
  }
}

id sub_10000278C(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 _declaredTypeForColumnIndex:a2];
  v5 = 0;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v6 = [v3 UUIDForColumnIndex:a2];
      goto LABEL_17;
    }

    if (v4 == 4)
    {
      v6 = [v3 URLForColumnIndex:a2];
      goto LABEL_17;
    }

    if (v4 != 5)
    {
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  if (v4)
  {
    if (v4 == 1)
    {
      v6 = [v3 dateForColumnIndex:a2];
    }

    else
    {
      if (v4 != 2)
      {
        goto LABEL_18;
      }

      v6 = [v3 JSONObjectForColumnIndex:a2];
    }

    goto LABEL_17;
  }

  v7 = [v3 _columnTypeForColumnIndex:a2];
  if (v7 <= 2)
  {
    if (v7 == 1)
    {
      v6 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v3 int64ForColumnIndex:a2]);
      goto LABEL_17;
    }

    if (v7 == 2)
    {
      [v3 doubleForColumnIndex:a2];
      v6 = [NSNumber numberWithDouble:?];
      goto LABEL_17;
    }

LABEL_23:
    v6 = [v3 dataForColumnIndex:a2];
    goto LABEL_17;
  }

  if (v7 != 5)
  {
    if (v7 != 3)
    {
      goto LABEL_23;
    }

LABEL_9:
    v6 = [v3 stringForColumnIndex:a2];
LABEL_17:
    v5 = v6;
    goto LABEL_18;
  }

  v5 = 0;
LABEL_18:

  return v5;
}

void sub_1000029BC(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1002ABDF0;
  off_1002ABDF0 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1002BD2C0;
  qword_1002BD2C0 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1002BD2C8;
  qword_1002BD2C8 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1002BD2D0;
  qword_1002BD2D0 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1002BD2D8;
  qword_1002BD2D8 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1002BD2E0;
  qword_1002BD2E0 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1002BD2E8;
  qword_1002BD2E8 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1002BD2F0;
  qword_1002BD2F0 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1002BD2F8;
  qword_1002BD2F8 = v17;

  qword_1002BD300 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

uint64_t sub_100002B2C(unsigned int *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v5 = (a1 + 5);
  v4 = a1[5];
  if ((v4 & 0x7F000000) != 0)
  {
    return 0;
  }

  v8 = a2;
  v10 = *a1;
  v11 = a1[1];
  v12 = (*a1 >> 10) & 0x7F;
  if (!a4)
  {
    if (v12 <= 0x3F)
    {
      if (((1 << v12) & 0x40016) != 0)
      {
        return 0;
      }

      if (v12 == 63)
      {
        if (*(a2 + 56))
        {
          *a1 = v10 & 0xFFFE03FF | 0xFC00;
          if ((*(a2 + 56))(a1))
          {
            v6 = 0;
            a1[1] = v11;
            a1[5] = a1[5] & 0x80FFFFFF | 0x7000000;
            return v6;
          }
        }

        return 0;
      }
    }

    *v5 = v4 | 0xB000000;
    return 1;
  }

  v13 = a3;
  v205 = 0;
  if (v12 == 45)
  {
    v14 = a3;
  }

  else
  {
    v14 = 0;
  }

  v200 = v14;
  if (v12 == 50)
  {
    v15 = a3;
  }

  else
  {
    v15 = 0;
  }

  v16 = v12 - 21;
  if (v12 == 16)
  {
    v17 = a3;
  }

  else
  {
    v17 = 0;
  }

  if (v16 >= 0xB)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v16 >= 0xB)
  {
    v19 = 0;
  }

  else
  {
    v19 = a3;
  }

  v202 = v19;
  v203 = v18;
  v20 = &a3[a4];
  v198 = &a3[a4 - 1];
  v21 = a3;
LABEL_21:
  v22 = *v21;
  if (v12 < 0x3B && ++v11 > dword_1002ABDF8)
  {
    v201 = v13;
    v184 = *v5 & 0x80FFFFFF | 0xC000000;
    *v5 = v184;
    goto LABEL_696;
  }

  while (2)
  {
    v23 = v15;
LABEL_24:
    v15 = v23;
    switch(v12)
    {
      case 1:
        LODWORD(v12) = 1;
        if (v22 == 10 || v22 == 13)
        {
          goto LABEL_652;
        }

        v201 = v13;
        v184 = *v5 & 0x80FFFFFF | 0xD000000;
        *v5 = v184;
        goto LABEL_791;
      case 2:
        LODWORD(v12) = 2;
        if (v22 == 10 || v22 == 13)
        {
          goto LABEL_652;
        }

        v68 = *a1;
        *a1 &= 0xDFFFFC03;
        *(a1 + 1) = -1;
        if (v22 != 72)
        {
          v69 = v68 & 0xDFFFFC00;
          LODWORD(v12) = 18;
LABEL_211:
          *a1 = v69;
          continue;
        }

        if ((*(v5 + 3) & 0x7F) != 0)
        {
          sub_1001F4E58();
        }

        if (*v8)
        {
          v141 = v68 & 0xDFFE0003 | 0xC00;
          goto LABEL_647;
        }

        LODWORD(v12) = 3;
LABEL_652:
        if (++v21 == v20)
        {
          v174 = v202;
          v175 = v203 != 0;
          if (v205)
          {
            ++v175;
          }

          if (v202)
          {
            ++v175;
          }

          if (v15)
          {
            ++v175;
          }

          if (v200)
          {
            ++v175;
          }

          if (v175 >= 2)
          {
            sub_1001F4F80();
          }

          v176 = *v5;
          if ((*v5 & 0x7F000000) != 0)
          {
            sub_1001F4EA4();
          }

          if (!v200)
          {
            goto LABEL_716;
          }

          if (!*(v8 + 24))
          {
            goto LABEL_715;
          }

          *a1 = *a1 & 0xFFFE03FF | ((v12 & 0x7F) << 10);
          v177 = (*(v8 + 24))(a1, v200, v20 - v200);
          v176 = a1[5];
          if (v177)
          {
            a1[1] = v11;
            v176 = v176 & 0x80FFFFFF | 0x3000000;
            a1[5] = v176;
          }

          if ((v176 & 0x7F000000) != 0)
          {
            return a4;
          }

          LODWORD(v12) = (*a1 >> 10) & 0x7F;
          v8 = a2;
LABEL_715:
          v174 = v202;
LABEL_716:
          if ((v176 & 0x7F000000) != 0)
          {
            sub_1001F4ED0();
          }

          if (v15)
          {
            if (*(v8 + 32))
            {
              *a1 = *a1 & 0xFFFE03FF | ((v12 & 0x7F) << 10);
              v178 = (*(v8 + 32))(a1, v15, v20 - v15);
              v176 = a1[5];
              if (v178)
              {
                a1[1] = v11;
                v176 = v176 & 0x80FFFFFF | 0x4000000;
                a1[5] = v176;
              }

              v174 = v202;
              if ((v176 & 0x7F000000) == 0)
              {
                LODWORD(v12) = (*a1 >> 10) & 0x7F;
                v8 = a2;
                goto LABEL_723;
              }

              return a4;
            }

            v174 = v202;
          }

LABEL_723:
          if ((v176 & 0x7F000000) != 0)
          {
            sub_1001F4EFC();
          }

          if (v174 && *(v8 + 8))
          {
            *a1 = *a1 & 0xFFFE03FF | ((v12 & 0x7F) << 10);
            v179 = (*(v8 + 8))(a1, v174, v20 - v174);
            v176 = a1[5];
            if (v179)
            {
              a1[1] = v11;
              v176 = v176 & 0x80FFFFFF | 0x2000000;
              a1[5] = v176;
            }

            if ((v176 & 0x7F000000) != 0)
            {
              return a4;
            }

            LODWORD(v12) = (*a1 >> 10) & 0x7F;
            v8 = a2;
          }

          if ((v176 & 0x7F000000) != 0)
          {
            sub_1001F4F28();
          }

          if (v205 && *(v8 + 48))
          {
            *a1 = *a1 & 0xFFFE03FF | ((v12 & 0x7F) << 10);
            v180 = (*(v8 + 48))(a1, v205, v20 - v205);
            v176 = a1[5];
            if (v180)
            {
              a1[1] = v11;
              v176 = v176 & 0x80FFFFFF | 0x6000000;
              a1[5] = v176;
            }

            if ((v176 & 0x7F000000) != 0)
            {
              return a4;
            }

            LODWORD(v12) = (*a1 >> 10) & 0x7F;
            v8 = a2;
          }

          if ((v176 & 0x7F000000) != 0)
          {
            sub_1001F4F54();
          }

          if (v203)
          {
            v181 = *a1;
            if (*(v8 + 16))
            {
              *a1 = v181 & 0xFFFE03FF | ((v12 & 0x7F) << 10);
              v182 = (*(v8 + 16))(a1, v203, v20 - v203);
              v183 = a1[5];
              if (v182)
              {
                a1[1] = v11;
                v183 = v183 & 0x80FFFFFF | 0x8000000;
                a1[5] = v183;
              }

              v6 = a4;
              if ((v183 & 0x7F000000) != 0)
              {
                return v6;
              }

              v181 = *a1;
              LODWORD(v12) = (*a1 >> 10) & 0x7F;
LABEL_749:
              *a1 = v181 & 0xFFFE03FF | ((v12 & 0x7F) << 10);
              a1[1] = v11;
              return v6;
            }
          }

          else
          {
            v181 = *a1;
          }

          v6 = a4;
          goto LABEL_749;
        }

        goto LABEL_21;
      case 3:
        if (v22 == 84)
        {
          *a1 = *a1 & 0xFFFFFFFC | 1;
LABEL_367:
          LODWORD(v12) = 6;
          goto LABEL_652;
        }

        if (v22 != 69)
        {
          v201 = v13;
          v184 = *v5 & 0x80FFFFFF | 0x1C000000;
          *v5 = v184;
          LOBYTE(v12) = 3;
          goto LABEL_696;
        }

        sub_1001F4E84(a1, v5);
        LODWORD(v12) = 19;
        goto LABEL_651;
      case 4:
        LODWORD(v12) = 4;
        if (v22 == 10 || v22 == 13)
        {
          goto LABEL_652;
        }

        v90 = *a1;
        *a1 &= 0xDFFFFC03;
        *(a1 + 1) = -1;
        v91 = a1[5];
        if (v22 != 72)
        {
          v201 = v13;
          v184 = v91 & 0x80FFFFFF | 0x1C000000;
          *v5 = v184;
          LOBYTE(v12) = 4;
          goto LABEL_696;
        }

        if ((v91 & 0x7F000000) != 0)
        {
          sub_1001F4E2C();
        }

        if (!*v8)
        {
          LODWORD(v12) = 5;
          goto LABEL_652;
        }

        v92 = v90 & 0xDFFE0003;
        v93 = 5120;
LABEL_646:
        v141 = v92 | v93;
LABEL_647:
        *a1 = v141;
        v170 = (*v8)(a1);
        v171 = a1[5];
        if (v170)
        {
          a1[1] = v11;
          v171 = v171 & 0x80FFFFFF | 0x1000000;
          a1[5] = v171;
        }

        if ((v171 & 0x7F000000) == 0)
        {
          goto LABEL_650;
        }

        goto LABEL_789;
      case 5:
        if (v22 == 84)
        {
          goto LABEL_367;
        }

        v201 = v13;
        v184 = *v5 & 0x80FFFFFF | 0x1E000000;
        *v5 = v184;
        LOBYTE(v12) = 5;
        goto LABEL_696;
      case 6:
        if (v22 == 84)
        {
          LODWORD(v12) = 7;
          goto LABEL_652;
        }

        v201 = v13;
        v184 = *v5 & 0x80FFFFFF | 0x1E000000;
        *v5 = v184;
        LOBYTE(v12) = 6;
        goto LABEL_696;
      case 7:
        if (v22 == 80)
        {
          LODWORD(v12) = 8;
          goto LABEL_652;
        }

        v201 = v13;
        v184 = *v5 & 0x80FFFFFF | 0x1E000000;
        *v5 = v184;
        LOBYTE(v12) = 7;
        goto LABEL_696;
      case 8:
        if (v22 == 47)
        {
          LODWORD(v12) = 9;
          goto LABEL_652;
        }

        v201 = v13;
        a1[1] = v11;
        v184 = a1[5] & 0x80FFFFFF | 0x1E000000;
        a1[5] = v184;
        LOBYTE(v12) = 8;
        goto LABEL_696;
      case 9:
        if ((v22 - 58) > 0xF5u)
        {
          *(a1 + 8) = v22 - 48;
          LODWORD(v12) = 10;
          goto LABEL_652;
        }

        v201 = v13;
        a1[1] = v11;
        v184 = a1[5] & 0x80FFFFFF | 0xE000000;
        a1[5] = v184;
        LOBYTE(v12) = 9;
        goto LABEL_696;
      case 10:
        if (v22 == 46)
        {
          LODWORD(v12) = 11;
          goto LABEL_652;
        }

        v201 = v13;
        a1[1] = v11;
        v184 = a1[5] & 0x80FFFFFF | 0xE000000;
        a1[5] = v184;
        LOBYTE(v12) = 10;
        goto LABEL_696;
      case 11:
        if ((v22 - 58) > 0xF5u)
        {
          *(a1 + 9) = v22 - 48;
          LODWORD(v12) = 12;
          goto LABEL_652;
        }

        v201 = v13;
        a1[1] = v11;
        v184 = a1[5] & 0x80FFFFFF | 0xE000000;
        a1[5] = v184;
        LOBYTE(v12) = 11;
        goto LABEL_696;
      case 12:
        if (v22 == 32)
        {
          goto LABEL_470;
        }

        v201 = v13;
        a1[1] = v11;
        v184 = a1[5] & 0x80FFFFFF | 0xE000000;
        a1[5] = v184;
        LOBYTE(v12) = 12;
        goto LABEL_696;
      case 13:
        if ((v22 - 48) < 0xAu)
        {
          *v5 = v22 & 0xF;
          goto LABEL_454;
        }

        if (v22 != 32)
        {
          v201 = v13;
          a1[1] = v11;
          v184 = a1[5] & 0x80FFFFFF | 0xF000000;
          a1[5] = v184;
          LOBYTE(v12) = 13;
          goto LABEL_696;
        }

LABEL_470:
        LODWORD(v12) = 13;
        goto LABEL_652;
      case 14:
        if ((v22 - 48) < 0xAu)
        {
          v139 = (10 * *v5 + v22 - 48);
          v140 = *v5 & 0xFFFF0000 | v139;
          *v5 = v140;
          if (v139 >= 0x3E8)
          {
            v201 = v13;
            a1[1] = v11;
LABEL_751:
            v184 = v140 & 0x80FFFFFF | 0xF000000;
            a1[5] = v184;
            LOBYTE(v12) = 14;
            goto LABEL_696;
          }

LABEL_454:
          LODWORD(v12) = 14;
          goto LABEL_652;
        }

        LODWORD(v12) = 15;
        if (v22 != 10 && v22 != 13)
        {
          if (v22 == 32)
          {
            goto LABEL_652;
          }

          v201 = v13;
          a1[1] = v11;
          v140 = a1[5];
          goto LABEL_751;
        }

        goto LABEL_24;
      case 15:
        v44 = v203;
        if (!v203)
        {
          v44 = v21;
        }

        v203 = v44;
        *a1 &= 0xE0FFFFFF;
        LODWORD(v12) = 16;
        if (v22 != 10 && v22 != 13)
        {
          goto LABEL_652;
        }

        goto LABEL_24;
      case 16:
        if (v22 == 10)
        {
          if ((*(v5 + 3) & 0x7F) != 0)
          {
            sub_1001F4DD4();
          }

          if (!v203)
          {
            v203 = 0;
LABEL_548:
            LODWORD(v12) = 44;
            goto LABEL_652;
          }

          LODWORD(v12) = 44;
          if (*(v8 + 16))
          {
LABEL_589:
            *a1 = *a1 & 0xFFFE03FF | ((v12 & 0x7F) << 10);
            v166 = (*(v8 + 16))(a1, v203, v21 - v203);
            v167 = a1[5];
            if (v166)
            {
              a1[1] = v11;
              v167 = v167 & 0x80FFFFFF | 0x8000000;
              a1[5] = v167;
            }

            if ((v167 & 0x7F000000) == 0)
            {
              v203 = 0;
              goto LABEL_650;
            }

            goto LABEL_789;
          }
        }

        else
        {
          if (v22 != 13)
          {
            LODWORD(v12) = 16;
            goto LABEL_652;
          }

          if ((*(v5 + 3) & 0x7F) != 0)
          {
            sub_1001F4E00();
          }

          if (!v203)
          {
            v203 = 0;
            LODWORD(v12) = 17;
            goto LABEL_652;
          }

          LODWORD(v12) = 17;
          if (*(v8 + 16))
          {
            goto LABEL_589;
          }
        }

        v203 = 0;
        goto LABEL_652;
      case 17:
        if (v22 == 10)
        {
          goto LABEL_548;
        }

        v201 = v13;
        a1[1] = v11;
        v184 = a1[5] & 0x80FFFFFF | 0x1E000000;
        a1[5] = v184;
        LOBYTE(v12) = 17;
        goto LABEL_696;
      case 18:
        LODWORD(v12) = 18;
        if (v22 == 10 || v22 == 13)
        {
          goto LABEL_652;
        }

        v85 = *a1;
        *a1 &= 0xDFFFFC03;
        *(a1 + 1) = -1;
        if (((v22 | 0x20) - 123) <= 0xE5u)
        {
          v201 = v13;
          a1[1] = v11;
          v197 = a1[5] & 0x80FFFFFF;
LABEL_824:
          v184 = v197 | 0x10000000;
          a1[5] = v197 | 0x10000000;
          LOBYTE(v12) = 18;
          goto LABEL_696;
        }

        v86 = a1[5];
        v87 = v86 & 0xFF00FFFF;
        a1[5] = v86 & 0xFF00FFFF;
        v88 = v85 & 0xC0FFFC03 | 0x1000000;
        *a1 = v88;
        v89 = 1245184;
        switch(v22)
        {
          case 'A':
            goto LABEL_642;
          case 'B':
            v89 = 0x100000;
            goto LABEL_642;
          case 'C':
            v89 = 327680;
            goto LABEL_642;
          case 'D':
            goto LABEL_643;
          case 'G':
            v89 = 0x10000;
            goto LABEL_642;
          case 'H':
            v89 = 0x20000;
            goto LABEL_642;
          case 'L':
            v89 = 589824;
            goto LABEL_642;
          case 'M':
            v89 = 655360;
            goto LABEL_642;
          case 'N':
            v89 = 1638400;
            goto LABEL_642;
          case 'O':
            v89 = 393216;
            goto LABEL_642;
          case 'P':
            v89 = 196608;
            goto LABEL_642;
          case 'R':
            v89 = 1310720;
            goto LABEL_642;
          case 'S':
            v89 = 1703936;
            goto LABEL_642;
          case 'T':
            v89 = 458752;
            goto LABEL_642;
          case 'U':
            v89 = 983040;
LABEL_642:
            v87 |= v89;
            *v5 = v87;
LABEL_643:
            if ((v87 & 0x7F000000) != 0)
            {
              sub_1001F4DA8();
            }

            if (!*v8)
            {
              LODWORD(v12) = 19;
              goto LABEL_652;
            }

            v92 = v88 & 0xC1FE0003;
            v93 = 19456;
            break;
          default:
            v201 = v13;
            a1[1] = v11;
            v197 = v86 & 0x8000FFFF;
            goto LABEL_824;
        }

        goto LABEL_646;
      case 19:
        if (v22)
        {
          v125 = a1[5];
          v126 = off_100277DE0[BYTE2(v125)];
          v127 = *a1;
          v128 = (v127 >> 24) & 0x1F;
          if (v22 == 32 && !v126[v128])
          {
            LODWORD(v12) = 20;
LABEL_667:
            *a1 = v127 & 0xE0FFFFFF | ((((v127 + 0x1000000) >> 24) & 0x1F) << 24);
            goto LABEL_652;
          }

          if (v126[v128] == v22)
          {
LABEL_666:
            LODWORD(v12) = 19;
            goto LABEL_667;
          }

          if (v22 == 45 || (v22 - 65) <= 0x19u)
          {
            v129 = v125 & 0xFF0000 | (v128 << 8) | v22;
            if (v129 <= 655694)
            {
              if (v129 <= 328007)
              {
                if (v129 > 196948)
                {
                  if (v129 == 196949)
                  {
                    v130 = 0x40000;
                    goto LABEL_665;
                  }

                  if (v129 == 262738)
                  {
                    v130 = 1900544;
                    goto LABEL_665;
                  }
                }

                else
                {
                  if (v129 == 196929)
                  {
                    v130 = 1835008;
                    goto LABEL_665;
                  }

                  if (v129 == 196946)
                  {
                    v130 = 786432;
                    goto LABEL_665;
                  }
                }
              }

              else if (v129 <= 590152)
              {
                if (v129 == 328008)
                {
                  v130 = 1441792;
                  goto LABEL_665;
                }

                if (v129 == 328272)
                {
                  v130 = 0x80000;
                  goto LABEL_665;
                }
              }

              else
              {
                switch(v129)
                {
                  case 590153:
                    v130 = 2031616;
                    goto LABEL_665;
                  case 655661:
                    v130 = 1572864;
                    goto LABEL_665;
                  case 655685:
                    v130 = 1507328;
                    goto LABEL_665;
                }
              }
            }

            else if (v129 > 983634)
            {
              if (v129 <= 1311297)
              {
                if (v129 == 983635)
                {
                  v130 = 1769472;
                  goto LABEL_665;
                }

                if (v129 == 983881)
                {
                  v130 = 0x200000;
                  goto LABEL_665;
                }
              }

              else
              {
                switch(v129)
                {
                  case 1311298:
                    v130 = 1114112;
                    goto LABEL_665;
                  case 1704261:
                    v130 = 917504;
                    goto LABEL_665;
                  case 1704271:
                    v130 = 2162688;
                    goto LABEL_665;
                }
              }
            }

            else if (v129 <= 656192)
            {
              if (v129 == 655695)
              {
                v130 = 720896;
                goto LABEL_665;
              }

              if (v129 == 655937)
              {
                v130 = 1376256;
                goto LABEL_665;
              }
            }

            else
            {
              switch(v129)
              {
                case 656193:
                  v130 = 1966080;
                  goto LABEL_665;
                case 787536:
                  v130 = 851968;
                  goto LABEL_665;
                case 983618:
                  v130 = 1179648;
LABEL_665:
                  *v5 = v125 & 0xFF00FFFF | v130;
                  goto LABEL_666;
              }
            }
          }

          v201 = v13;
          a1[1] = v11;
          v192 = v125 & 0x80FFFFFF;
        }

        else
        {
          v201 = v13;
          a1[1] = v11;
          v192 = a1[5] & 0x80FFFFFF;
        }

        v184 = v192 | 0x10000000;
        a1[5] = v192 | 0x10000000;
        LOBYTE(v12) = 19;
        goto LABEL_696;
      case 20:
        LODWORD(v12) = 20;
        if (v22 == 32)
        {
          goto LABEL_652;
        }

        v123 = v202;
        if (!v202)
        {
          v123 = v21;
        }

        v201 = v13;
        v202 = v123;
        v196 = *v5;
        if ((*v5 & 0xFF0000) == 0x50000)
        {
          v124 = 24;
        }

        else
        {
          v124 = 20;
        }

        LODWORD(v12) = sub_100005790(v124, v22);
        if (v12 != 1)
        {
          v13 = v201;
          goto LABEL_651;
        }

        a1[1] = v11;
        goto LABEL_812;
      case 21:
      case 22:
      case 23:
      case 24:
        if (v22 > 0x20u || ((1 << v22) & 0x100002400) == 0)
        {
          goto LABEL_223;
        }

        v201 = v13;
        a1[1] = v11;
        v184 = a1[5] & 0x80FFFFFF | 0x11000000;
        a1[5] = v184;
        goto LABEL_696;
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
        if (v22 == 10 || v22 == 13)
        {
          a1[4] = 589824;
          if (v22 == 13)
          {
            LODWORD(v12) = 43;
          }

          else
          {
            LODWORD(v12) = 44;
          }

          v71 = v202;
          if ((*(a1 + 23) & 0x7F) != 0)
          {
            sub_1001F4D50();
          }

          if (!v202 || !*(v8 + 8))
          {
            v202 = 0;
            goto LABEL_652;
          }

          v78 = *a1 & 0xFFFE03FF | (v12 << 10);
          goto LABEL_463;
        }

        if (v22 == 32)
        {
          v71 = v202;
          if ((*(v5 + 3) & 0x7F) != 0)
          {
            sub_1001F4D7C();
          }

          if (!v202 || !*(v8 + 8))
          {
            v202 = 0;
            LODWORD(v12) = 32;
            goto LABEL_652;
          }

          v78 = *a1 & 0xFFFE03FF | 0x8000;
LABEL_463:
          *a1 = v78;
          v142 = (*(v8 + 8))(a1, v71, v21 - v71);
          v143 = a1[5];
          if (v142)
          {
            a1[1] = v11;
            v143 = v143 & 0x80FFFFFF | 0x2000000;
            a1[5] = v143;
          }

          if ((v143 & 0x7F000000) != 0)
          {
            goto LABEL_789;
          }

          v202 = 0;
LABEL_650:
          LODWORD(v12) = (*a1 >> 10) & 0x7F;
          goto LABEL_651;
        }

LABEL_223:
        LODWORD(v12) = sub_100005790(v12, v22);
        if (v12 == 1)
        {
          v201 = v13;
          a1[1] = v11;
          v196 = a1[5];
LABEL_812:
          v184 = v196 & 0x80FFFFFF | 0x11000000;
          a1[5] = v184;
LABEL_791:
          LOBYTE(v12) = 1;
          goto LABEL_696;
        }

        goto LABEL_651;
      case 32:
        LODWORD(v12) = v22;
        if (v22 == 32)
        {
          goto LABEL_652;
        }

        if (v22 != 72)
        {
          if (v22 == 73)
          {
            v132 = *v5;
            if ((*v5 & 0xFF0000) == 0x210000)
            {
              LODWORD(v12) = 37;
              goto LABEL_652;
            }

            v201 = v13;
          }

          else
          {
            v201 = v13;
            v132 = *v5;
          }

          a1[1] = v11;
          v184 = v132 & 0x80FFFFFF | 0x1C000000;
          a1[5] = v184;
          LOBYTE(v12) = 32;
          goto LABEL_696;
        }

        LODWORD(v12) = 33;
        goto LABEL_652;
      case 33:
        if (v22 == 84)
        {
          LODWORD(v12) = 34;
          goto LABEL_652;
        }

        v201 = v13;
        a1[1] = v11;
        v184 = a1[5] & 0x80FFFFFF | 0x1E000000;
        a1[5] = v184;
        LOBYTE(v12) = 33;
        goto LABEL_696;
      case 34:
        if (v22 == 84)
        {
          LODWORD(v12) = 35;
          goto LABEL_652;
        }

        v201 = v13;
        a1[1] = v11;
        v184 = a1[5] & 0x80FFFFFF | 0x1E000000;
        a1[5] = v184;
        LOBYTE(v12) = 34;
        goto LABEL_696;
      case 35:
        if (v22 == 80)
        {
          goto LABEL_427;
        }

        v201 = v13;
        a1[1] = v11;
        v184 = a1[5] & 0x80FFFFFF | 0x1E000000;
        a1[5] = v184;
        LOBYTE(v12) = 35;
        goto LABEL_696;
      case 36:
        if (v22 == 47)
        {
          LODWORD(v12) = 39;
          goto LABEL_652;
        }

        v201 = v13;
        a1[1] = v11;
        v184 = a1[5] & 0x80FFFFFF | 0x1E000000;
        a1[5] = v184;
        LOBYTE(v12) = 36;
        goto LABEL_696;
      case 37:
        if (v22 == 67)
        {
          LODWORD(v12) = 38;
          goto LABEL_652;
        }

        v201 = v13;
        a1[1] = v11;
        v184 = a1[5] & 0x80FFFFFF | 0x1E000000;
        a1[5] = v184;
        LOBYTE(v12) = 37;
        goto LABEL_696;
      case 38:
        if (v22 == 69)
        {
LABEL_427:
          LODWORD(v12) = 36;
          goto LABEL_652;
        }

        v201 = v13;
        a1[1] = v11;
        v184 = a1[5] & 0x80FFFFFF | 0x1E000000;
        a1[5] = v184;
        LOBYTE(v12) = 38;
        goto LABEL_696;
      case 39:
        if ((v22 - 58) > 0xF5u)
        {
          *(a1 + 8) = v22 - 48;
          LODWORD(v12) = 40;
          goto LABEL_652;
        }

        v201 = v13;
        a1[1] = v11;
        v184 = a1[5] & 0x80FFFFFF | 0xE000000;
        a1[5] = v184;
        LOBYTE(v12) = 39;
        goto LABEL_696;
      case 40:
        if (v22 == 46)
        {
          LODWORD(v12) = 41;
          goto LABEL_652;
        }

        v201 = v13;
        a1[1] = v11;
        v184 = a1[5] & 0x80FFFFFF | 0xE000000;
        a1[5] = v184;
        LOBYTE(v12) = 40;
        goto LABEL_696;
      case 41:
        if ((v22 - 58) > 0xF5u)
        {
          *(a1 + 9) = v22 - 48;
          LODWORD(v12) = 42;
          goto LABEL_652;
        }

        v201 = v13;
        a1[1] = v11;
        v184 = a1[5] & 0x80FFFFFF | 0xE000000;
        a1[5] = v184;
        LOBYTE(v12) = 41;
        goto LABEL_696;
      case 42:
        if (v22 == 13)
        {
          LODWORD(v12) = 43;
          goto LABEL_652;
        }

        if (v22 != 10)
        {
          v201 = v13;
          a1[1] = v11;
          v184 = a1[5] & 0x80FFFFFF | 0xE000000;
          a1[5] = v184;
          LOBYTE(v12) = 42;
          goto LABEL_696;
        }

        goto LABEL_548;
      case 43:
        if (v22 == 10)
        {
          goto LABEL_548;
        }

        v201 = v13;
        a1[1] = v11;
        v184 = a1[5] & 0x80FFFFFF | 0x17000000;
        a1[5] = v184;
        LOBYTE(v12) = 43;
        goto LABEL_696;
      case 44:
        LODWORD(v12) = 57;
        if (v22 == 10)
        {
          goto LABEL_24;
        }

        if (v22 == 13)
        {
          goto LABEL_652;
        }

        if (v22 == 32 || (v74 = byte_1001FDC60[v22]) == 0)
        {
          v201 = v13;
          a1[1] = v11;
          v184 = a1[5] & 0x80FFFFFF | 0x18000000;
          a1[5] = v184;
          LOBYTE(v12) = 44;
          goto LABEL_696;
        }

        v75 = v200;
        if (!v200)
        {
          v75 = v21;
        }

        v200 = v75;
        v76 = *a1;
        *a1 &= 0xE0FFFFFF;
        v77 = v76 & 0xE001FFFF;
        if (v74 > 115)
        {
          if (v74 == 116)
          {
            v77 |= 0xE0000u;
          }

          else if (v74 == 117)
          {
            v77 |= 0x100000u;
          }
        }

        else if (v74 == 99)
        {
          v77 |= 0x20000u;
        }

        else if (v74 == 112)
        {
          v77 |= 0xA0000u;
        }

        *a1 = v77;
        LODWORD(v12) = 45;
        goto LABEL_652;
      case 45:
        v94 = dword_1002ABDF8;
        v27 = v21;
        if (v21 == v20)
        {
          goto LABEL_467;
        }

        do
        {
          v95 = *v27;
          if (v95 == 32)
          {
            v201 = v13;
            v11 += v27 - v21;
            if (v11 <= v94)
            {
LABEL_759:
              a1[1] = v11;
              v184 = a1[5] & 0x80FFFFFF | 0x18000000;
LABEL_760:
              a1[5] = v184;
              LOBYTE(v12) = 45;
              goto LABEL_695;
            }

LABEL_860:
            a1[1] = v11;
            v184 = a1[5] & 0x80FFFFFF | 0xC000000;
            goto LABEL_760;
          }

          v96 = byte_1001FDC60[*v27];
          if (!byte_1001FDC60[*v27])
          {
            v11 += v27 - v21;
            if (v11 <= v94)
            {
              if (v95 == 58)
              {
                if ((*(v5 + 3) & 0x7F) != 0)
                {
                  sub_1001F4D24();
                }

                if (v200)
                {
                  LODWORD(v12) = 46;
                  if (*(v8 + 24))
                  {
                    *a1 = *a1 & 0xFFFE03FF | 0xB800;
                    v168 = (*(v8 + 24))(a1, v200, v27 - v200);
                    v169 = a1[5];
                    if (v168)
                    {
                      a1[1] = v11;
                      v169 = v169 & 0x80FFFFFF | 0x3000000;
                      a1[5] = v169;
                    }

                    if ((v169 & 0x7F000000) != 0)
                    {
                      goto LABEL_814;
                    }

                    v200 = 0;
                    LODWORD(v12) = (*a1 >> 10) & 0x7F;
                    v21 = v27;
                    goto LABEL_651;
                  }

                  v200 = 0;
                }

                else
                {
                  v200 = 0;
                  LODWORD(v12) = 46;
                }

                v21 = v27;
                goto LABEL_652;
              }

              v201 = v13;
              goto LABEL_759;
            }

            v201 = v13;
            goto LABEL_860;
          }

          v97 = *a1;
          v98 = (*a1 >> 17) & 0x7F;
          if (v98 > 4)
          {
            if (v98 > 0xE)
            {
              goto LABEL_313;
            }

            if (((1 << v98) & 0x6600) != 0)
            {
              goto LABEL_301;
            }

            if (v98 == 7)
            {
              v121 = v97 + 0x1000000;
              v97 = v97 & 0xE0FFFFFF | ((BYTE3(v121) & 0x1F) << 24);
              *a1 = v97;
              v122 = (v121 >> 24) & 0x1F;
              if (v122 > 0x11 || v96 != aTransferEncodi[v122])
              {
                goto LABEL_301;
              }

              if (v122 == 16)
              {
                v112 = v97 & 0xFF03FFFF;
                v111 = 538574848;
                goto LABEL_328;
              }
            }

            else
            {
              if (v98 != 8)
              {
LABEL_313:
                if (v98 == 5)
                {
                  v119 = v97 + 0x1000000;
                  v97 = v97 & 0xE0FFFFFF | ((BYTE3(v119) & 0x1F) << 24);
                  *a1 = v97;
                  v120 = (v119 >> 24) & 0x1F;
                  if (v120 > 0x10 || v96 != aProxyConnectio[v120])
                  {
                    goto LABEL_301;
                  }

                  if (v120 == 15)
                  {
                    goto LABEL_339;
                  }
                }

                else
                {
                  if (v98 != 6)
                  {
LABEL_869:
                    sub_1001F4CF8();
                  }

                  v104 = v97 + 0x1000000;
                  v97 = v97 & 0xE0FFFFFF | ((BYTE3(v104) & 0x1F) << 24);
                  *a1 = v97;
                  v105 = (v104 >> 24) & 0x1F;
                  if (v105 > 0xE || v96 != aContentLength[v105])
                  {
                    goto LABEL_301;
                  }

                  if (v105 == 13)
                  {
                    v106 = 10;
                    goto LABEL_340;
                  }
                }

                goto LABEL_303;
              }

              v102 = v97 + 0x1000000;
              v97 = v97 & 0xE0FFFFFF | ((BYTE3(v102) & 0x1F) << 24);
              *a1 = v97;
              v103 = (v102 >> 24) & 0x1F;
              if (v103 > 7 || v96 != aUpgrade[v103])
              {
                goto LABEL_301;
              }

              if (v103 == 6)
              {
                v101 = v97 & 0xFF01FFFF | 0x1C0000;
                goto LABEL_302;
              }
            }
          }

          else
          {
            if (((*a1 >> 17) & 0x7F) > 1)
            {
              switch(v98)
              {
                case 2u:
                  v109 = (v97 + 0x1000000) & 0x1F000000;
                  v110 = v97 & 0xE001FFFF;
                  if (v96 == 110)
                  {
                    v111 = 393216;
                  }

                  else
                  {
                    v111 = 0;
                  }

                  v112 = v110 | v109;
LABEL_328:
                  v101 = v112 | v111;
                  break;
                case 3u:
                  v107 = v97 & 0xE0FFFFFF | ((((v97 + 0x1000000) >> 24) & 0x1F) << 24);
                  *a1 = v107;
                  v101 = v107 & 0xFF01FFFF;
                  v108 = v101 | 0xC0000;
                  if (v96 == 110)
                  {
                    v101 |= 0x80000u;
                  }

                  if (v96 == 116)
                  {
                    v101 = v108;
                  }

                  break;
                case 4u:
                  v99 = v97 + 0x1000000;
                  v97 = v97 & 0xE0FFFFFF | ((BYTE3(v99) & 0x1F) << 24);
                  *a1 = v97;
                  v100 = (v99 >> 24) & 0x1F;
                  if (v100 <= 0xA && v96 == aConnection_1[v100])
                  {
                    if (v100 != 9)
                    {
                      goto LABEL_303;
                    }

LABEL_339:
                    v106 = 9;
LABEL_340:
                    v101 = v97 & 0xFF01FFFF | ((v106 & 0x7F) << 17);
                  }

                  else
                  {
LABEL_301:
                    v101 = v97 & 0xFF01FFFF;
                  }

                  break;
                default:
                  goto LABEL_869;
              }

LABEL_302:
              *a1 = v101;
              goto LABEL_303;
            }

            if (v98)
            {
              v101 = v97 & 0xE001FFFF | ((v96 == 111) << 18) | (v97 + 0x1000000) & 0x1F000000;
              goto LABEL_302;
            }

            v113 = v20 - v27;
            if (v20 - v27 >= v94)
            {
              v113 = v94;
            }

            v114 = &v27[v113];
            v115 = v27 + 1;
            do
            {
              v116 = v115;
              if (v115 >= v114)
              {
                break;
              }

              v117 = *v115;
              if (v117 == 32)
              {
                break;
              }

              v118 = byte_1001FDC60[v117];
              v115 = v116 + 1;
            }

            while (v118);
            v27 = v116 - 1;
          }

LABEL_303:
          ++v27;
        }

        while (v27 != v20);
LABEL_467:
        v11 += v27 - 1 - v21;
        if (v11 <= v94)
        {
          LODWORD(v12) = 45;
          v21 = v27 - 1;
          goto LABEL_652;
        }

        v201 = v13;
        a1[1] = v11;
        v184 = a1[5] & 0x80FFFFFF | 0xC000000;
        a1[5] = v184;
        LOBYTE(v12) = 45;
        v21 = v27 - 1;
LABEL_696:
        if ((v184 & 0x7F000000) == 0)
        {
          *v5 = v184 | 0x20000000;
        }

        *a1 = *a1 & 0xFFFE03FF | ((v12 & 0x7F) << 10);
        a1[1] = v11;
        return v21 - v201;
      case 46:
        LODWORD(v12) = 46;
        if (v22 > 0xCu)
        {
          if (v22 == 32)
          {
            goto LABEL_652;
          }

          if (v22 == 13)
          {
            LODWORD(v12) = 47;
            goto LABEL_652;
          }
        }

        else
        {
          if (v22 == 9)
          {
            goto LABEL_652;
          }

          if (v22 == 10)
          {
LABEL_248:
            LODWORD(v12) = 48;
            goto LABEL_652;
          }
        }

LABEL_476:
        if (!v23)
        {
          v15 = v21;
        }

        v144 = *a1;
        *a1 &= 0xE0FFFFFF;
        v145 = (v144 >> 17) & 0x7F;
        LODWORD(v12) = 50;
        if (v145 > 0xC)
        {
          if (((v144 >> 17) & 0x7F) > 0xE)
          {
            if (v145 == 15 || v145 == 18)
            {
              goto LABEL_652;
            }

            goto LABEL_544;
          }

          if (v145 != 13)
          {
            if (v145 == 14)
            {
              v146 = v144 & 0xE001FF7F | 0x80;
LABEL_629:
              *a1 = v146;
              LODWORD(v12) = 50;
              goto LABEL_652;
            }

LABEL_544:
            v146 = v144 & 0xE001FFFF;
            goto LABEL_629;
          }

          v163 = v144 & 0xE001FFFF;
          if ((v22 | 0x20) == 0x63)
          {
            v146 = v163 | 0x200000;
            goto LABEL_629;
          }

          v165 = 2228224;
LABEL_628:
          v146 = v163 | v165;
          goto LABEL_629;
        }

        if (v145 == 9)
        {
          v163 = v144 & 0xE001FFFF;
          v164 = v22 | 0x20;
          switch(v164)
          {
            case 'c':
              v165 = 2621440;
              break;
            case 'u':
              v165 = 2752512;
              break;
            case 'k':
              v165 = 2490368;
              break;
            default:
              v165 = 2883584;
              break;
          }

          goto LABEL_628;
        }

        if (v145 != 10)
        {
          if (v145 == 12)
          {
            goto LABEL_652;
          }

          goto LABEL_544;
        }

        if ((v22 - 58) <= 0xF5u)
        {
          v201 = v13;
          a1[1] = v11;
          v193 = a1[5];
          v194 = 25;
        }

        else
        {
          if ((v144 & 0x200) == 0)
          {
            *(a1 + 1) = (v22 - 48);
            v163 = v144 & 0xE007FFFF;
            v165 = 1442304;
            goto LABEL_628;
          }

          v201 = v13;
          a1[1] = v11;
          v193 = a1[5];
          v194 = 26;
        }

        v184 = v193 & 0x80FFFFFF | ((v194 & 0x7F) << 24);
        a1[5] = v184;
        LOBYTE(v12) = 50;
        goto LABEL_696;
      case 47:
        if (v22 == 10)
        {
          goto LABEL_248;
        }

        v201 = v13;
        a1[1] = v11;
        v184 = a1[5] & 0x80FFFFFF | 0x1E000000;
        a1[5] = v184;
        LOBYTE(v12) = 47;
        goto LABEL_696;
      case 48:
        LODWORD(v12) = 46;
        if (v22 == 9 || v22 == 32)
        {
          goto LABEL_652;
        }

        v45 = *a1;
        v46 = (*a1 >> 17) & 0x7F;
        if (v46 > 0x18)
        {
          if (v46 == 26)
          {
            v47 = 32;
          }

          else
          {
            if (v46 != 25)
            {
              goto LABEL_168;
            }

            v47 = 16;
          }

          goto LABEL_167;
        }

        switch(v46)
        {
          case 0x17u:
            v47 = 4;
            goto LABEL_167;
          case 0x18u:
            v47 = 8;
LABEL_167:
            v45 |= v47;
            *a1 = v45;
            break;
          case 0xAu:
            v201 = v13;
            a1[1] = v11;
            v184 = a1[5] & 0x80FFFFFF | 0x19000000;
            a1[5] = v184;
            LOBYTE(v12) = 48;
            goto LABEL_696;
        }

LABEL_168:
        if (v15)
        {
          v61 = v15;
        }

        else
        {
          v61 = v21;
        }

        if ((*(v5 + 3) & 0x7F) != 0)
        {
          sub_1001F4C48();
        }

        v23 = 0;
        LODWORD(v12) = 44;
        if (!v61)
        {
          goto LABEL_24;
        }

        v23 = 0;
        LODWORD(v12) = 44;
        if (!*(v8 + 32))
        {
          goto LABEL_24;
        }

        *a1 = v45 & 0xFFFE03FF | 0xB000;
        v62 = (*(v8 + 32))(a1, v61, v21 - v61);
        v53 = a1[5];
        if (v62)
        {
          a1[1] = v11;
          v53 = v53 & 0x80FFFFFF | 0x4000000;
          a1[5] = v53;
        }

        v23 = 0;
        LODWORD(v12) = (*a1 >> 10) & 0x7F;
        goto LABEL_177;
      case 49:
        goto LABEL_476;
      case 50:
        v24 = *a1;
        v25 = (*a1 >> 17) & 0x7F;
        if (v21 == v20)
        {
          LODWORD(v12) = 50;
          v70 = -1;
          v27 = v21;
          goto LABEL_451;
        }

        v26 = dword_1002ABDF8;
        v27 = v21;
        while (2)
        {
          v28 = v25;
          v29 = *v27;
          if (v29 != 10)
          {
            if (v29 != 13)
            {
              if ((v10 & 0x80000000) != 0 || v29 == 9 || v29 >= 0x20 && v29 != 127)
              {
                v25 = 0;
                v30 = v29 | 0x20;
                switch(v28)
                {
                  case 0:
                    v36 = v20 - v27;
                    if (v20 - v27 >= v26)
                    {
                      v36 = v26;
                    }

                    if (!v36)
                    {
                      goto LABEL_99;
                    }

                    v37 = &v27[v36];
                    while (1)
                    {
                      v38 = *v27;
                      if (v38 == 13 || v38 == 10)
                      {
                        break;
                      }

                      if ((v10 & 0x80000000) == 0 && v38 != 9 && (v38 < 0x20 || v38 == 127))
                      {
                        goto LABEL_693;
                      }

                      ++v27;
                      if (!--v36)
                      {
                        v27 = v37;
                        goto LABEL_99;
                      }
                    }

                    --v27;
LABEL_99:
                    v25 = 0;
                    v27 -= v27 == v20;
                    goto LABEL_104;
                  case 9:
                  case 13:
                    sub_1001F4CCC();
                  case 10:
                    if (v29 != 32)
                    {
                      goto LABEL_77;
                    }

                    v25 = 10;
                    goto LABEL_104;
                  case 11:
                    if (v29 == 32)
                    {
                      goto LABEL_57;
                    }

LABEL_77:
                    if ((v29 - 58) > 0xF5u)
                    {
                      v40 = *(a1 + 1);
                      if (v40 < 0x1999999999999999)
                      {
                        *(a1 + 1) = 10 * v40 + (v29 - 48);
                        v25 = 11;
LABEL_104:
                        if (++v27 == v20)
                        {
                          LODWORD(v12) = 50;
                          v70 = -1;
LABEL_451:
                          *a1 = v24 & 0xFF01FFFF | ((v25 & 0x7F) << 17);
                          v11 += v27 + v70 - v21;
                          if (v11 <= dword_1002ABDF8)
                          {
                            v21 = &v27[v70];
                            goto LABEL_652;
                          }

                          v201 = v13;
                          a1[1] = v11;
                          v184 = a1[5] & 0x80FFFFFF | 0xC000000;
                          a1[5] = v184;
                          v21 = &v27[v70];
                          goto LABEL_696;
                        }

                        continue;
                      }
                    }

                    v201 = v13;
                    v184 = a1[5] & 0x80FFFFFF | 0x19000000;
                    a1[5] = v184;
                    v185 = v24 & 0xFF01FFFF | 0x160000;
LABEL_752:
                    *a1 = v185;
                    a1[1] = v11;
                    break;
                  case 12:
                    if (v29 != 32)
                    {
                      v201 = v13;
                      v184 = a1[5] & 0x80FFFFFF | 0x19000000;
                      a1[5] = v184;
                      v185 = v24 & 0xFF01FFFF | 0x180000;
                      goto LABEL_752;
                    }

LABEL_57:
                    v25 = 12;
                    goto LABEL_104;
                  case 15:
                    if (v30 == 32)
                    {
                      goto LABEL_94;
                    }

                    if (v30 == 99)
                    {
                      v25 = 16;
                    }

                    else
                    {
                      v25 = byte_1001FDC60[v30];
                      if (byte_1001FDC60[v30])
                      {
LABEL_101:
                        v25 = 17;
                      }
                    }

                    goto LABEL_104;
                  case 16:
                    v42 = v24 + 0x1000000;
                    v24 = v24 & 0xE0FFFFFF | ((BYTE3(v42) & 0x1F) << 24);
                    *a1 = v24;
                    v25 = (v42 >> 24) & 0x1F;
                    if (v25 > 7)
                    {
                      goto LABEL_101;
                    }

                    v32 = aChunked[v25];
                    v33 = 17;
                    v34 = v25 == 6;
                    LODWORD(v25) = 16;
                    v35 = 23;
                    goto LABEL_86;
                  case 17:
                    if (v29 != 44)
                    {
                      goto LABEL_101;
                    }

                    v24 &= 0xE0FFFFFF;
                    *a1 = v24;
LABEL_94:
                    v25 = 15;
                    goto LABEL_104;
                  case 18:
                    if (v30 > 106)
                    {
                      if (v30 == 107)
                      {
                        v25 = 19;
                        goto LABEL_104;
                      }

                      if (v30 == 117)
                      {
                        v25 = 21;
                        goto LABEL_104;
                      }
                    }

                    else
                    {
                      if (v30 == 32)
                      {
                        goto LABEL_47;
                      }

                      if (v30 == 99)
                      {
                        v25 = 20;
                        goto LABEL_104;
                      }
                    }

                    v25 = byte_1001FDC60[v30];
                    if (!byte_1001FDC60[v30])
                    {
                      goto LABEL_104;
                    }

                    goto LABEL_103;
                  case 19:
                    v41 = v24 + 0x1000000;
                    v24 = v24 & 0xE0FFFFFF | ((BYTE3(v41) & 0x1F) << 24);
                    *a1 = v24;
                    v25 = (v41 >> 24) & 0x1F;
                    if (v25 > 0xA)
                    {
                      goto LABEL_103;
                    }

                    v32 = aKeepAlive[v25];
                    v33 = 22;
                    v34 = v25 == 9;
                    LODWORD(v25) = 19;
                    v35 = 24;
                    goto LABEL_86;
                  case 20:
                    v43 = v24 + 0x1000000;
                    v24 = v24 & 0xE0FFFFFF | ((BYTE3(v43) & 0x1F) << 24);
                    *a1 = v24;
                    v25 = (v43 >> 24) & 0x1F;
                    if (v25 > 5)
                    {
                      goto LABEL_103;
                    }

                    v32 = aClose_1[v25];
                    v33 = 22;
                    v34 = v25 == 4;
                    LODWORD(v25) = 20;
                    v35 = 25;
                    goto LABEL_86;
                  case 21:
                    v31 = v24 + 0x1000000;
                    v24 = v24 & 0xE0FFFFFF | ((BYTE3(v31) & 0x1F) << 24);
                    *a1 = v24;
                    v25 = (v31 >> 24) & 0x1F;
                    if (v25 > 7)
                    {
                      goto LABEL_103;
                    }

                    v32 = aUpgrade[v25];
                    v33 = 22;
                    v34 = v25 == 6;
                    LODWORD(v25) = 21;
                    v35 = 26;
LABEL_86:
                    if (v34)
                    {
                      LODWORD(v25) = v35;
                    }

                    if (v30 == v32)
                    {
                      v25 = v25;
                    }

                    else
                    {
                      v25 = v33;
                    }

                    goto LABEL_104;
                  case 22:
                    if (v29 != 44)
                    {
                      goto LABEL_103;
                    }

                    v24 &= 0xE0FFFFFF;
                    goto LABEL_46;
                  case 23:
                    if (v29 == 32)
                    {
                      v25 = 23;
                    }

                    else
                    {
                      v25 = 17;
                    }

                    goto LABEL_104;
                  case 24:
                  case 25:
                  case 26:
                    if (v29 == 32)
                    {
                      v25 = v28;
                    }

                    else if (v29 == 44)
                    {
                      v24 = v24 & 0xE0FFFFFF | dword_1001FDE60[v28 - 24];
LABEL_46:
                      *a1 = v24;
LABEL_47:
                      v25 = 18;
                    }

                    else
                    {
LABEL_103:
                      v25 = 22;
                    }

                    goto LABEL_104;
                  default:
                    goto LABEL_104;
                }
              }

              else
              {
LABEL_693:
                v201 = v13;
                a1[1] = v11;
                v184 = a1[5] & 0x80FFFFFF | 0x18000000;
                a1[5] = v184;
              }

              LOBYTE(v12) = 50;
LABEL_695:
              v21 = v27;
              goto LABEL_696;
            }

            v24 = v24 & 0xFF01FFFF | ((v25 & 0x7F) << 17);
            *a1 = v24;
            if ((*(a1 + 23) & 0x7F) != 0)
            {
              sub_1001F4CA0();
            }

            if (!v15)
            {
              v70 = 0;
              LODWORD(v12) = 52;
              goto LABEL_451;
            }

            v70 = *(v8 + 32);
            LODWORD(v12) = 52;
            if (!v70)
            {
              v15 = 0;
              goto LABEL_451;
            }

            *a1 = v24 & 0xFFFE03FF | 0xD000;
            v72 = (*(v8 + 32))(a1, v15, v27 - v15);
            v73 = a1[5];
            if (v72)
            {
              a1[1] = v11;
              v73 = v73 & 0x80FFFFFF | 0x4000000;
              a1[5] = v73;
            }

            if ((v73 & 0x7F000000) == 0)
            {
              v70 = 0;
              v15 = 0;
              v24 = *a1;
              LODWORD(v12) = (*a1 >> 10) & 0x7F;
              LOBYTE(v25) = v28;
              v8 = a2;
              goto LABEL_451;
            }

LABEL_814:
            v191 = (v27 - v13);
            return (v191 + 1);
          }

          break;
        }

        v11 += v27 - v21;
        if (v11 > v26)
        {
          v201 = v13;
          a1[1] = v11;
          v184 = a1[5] & 0x80FFFFFF | 0xC000000;
          a1[5] = v184;
          LOBYTE(v12) = 52;
          goto LABEL_695;
        }

        v58 = v24 & 0xFF01FFFF | ((v25 & 0x7F) << 17);
        *a1 = v58;
        if ((*(a1 + 23) & 0x7F) != 0)
        {
          sub_1001F4C74();
        }

        v23 = 0;
        v22 = 10;
        LODWORD(v12) = 52;
        v21 = v27;
        if (v15)
        {
          v23 = 0;
          v22 = 10;
          LODWORD(v12) = 52;
          v21 = v27;
          if (*(v8 + 32))
          {
            *a1 = v58 & 0xFFFE03FF | 0xD000;
            v59 = (*(v8 + 32))(a1, v15, v27 - v15);
            v60 = a1[5];
            if (v59)
            {
              a1[1] = v11;
              v60 = v60 & 0x80FFFFFF | 0x4000000;
              a1[5] = v60;
            }

            v23 = 0;
            LODWORD(v12) = (*a1 >> 10) & 0x7F;
            v22 = 10;
            v21 = v27;
            v8 = a2;
            if ((v60 & 0x7F000000) != 0)
            {
              return v27 - v13;
            }
          }
        }

        goto LABEL_24;
      case 51:
        if (v22 == 32 || v22 == 9)
        {
          LODWORD(v12) = 49;
          if ((*a1 & 0xFE0000) != 0x160000)
          {
            goto LABEL_24;
          }

          v69 = *a1 & 0xFF01FFFF | 0x180000;
          LODWORD(v12) = 49;
        }

        else
        {
          v56 = *a1;
          v57 = (*a1 >> 17) & 0x7F;
          LODWORD(v12) = 44;
          if (v57 > 0x18)
          {
            if (v57 == 25)
            {
              v69 = v56 | 0x10;
            }

            else
            {
              if (v57 != 26)
              {
                goto LABEL_24;
              }

              v69 = v56 | 0x20;
            }
          }

          else if (v57 == 23)
          {
            v69 = v56 | 4;
          }

          else
          {
            if (v57 != 24)
            {
              goto LABEL_24;
            }

            v69 = v56 | 8;
          }

          LODWORD(v12) = 44;
        }

        goto LABEL_211;
      case 52:
        if (v22 == 10)
        {
          LODWORD(v12) = 51;
          goto LABEL_652;
        }

        v201 = v13;
        a1[1] = v11;
        v184 = a1[5] & 0x80FFFFFF | 0x17000000;
        a1[5] = v184;
        LOBYTE(v12) = 52;
        goto LABEL_696;
      case 53:
        if (v11 != 1)
        {
          sub_1001F4A90();
        }

        if ((*a1 & 4) == 0)
        {
          sub_1001F4ABC();
        }

        v131 = byte_1001FDD60[v22];
        if (v131 == -1)
        {
          v201 = v13;
          v11 = 1;
          a1[1] = 1;
          v184 = a1[5] & 0x80FFFFFF | 0x1B000000;
          a1[5] = v184;
          LOBYTE(v12) = 53;
          goto LABEL_696;
        }

        *(a1 + 1) = v131;
        v11 = 1;
        goto LABEL_490;
      case 54:
        if ((*a1 & 4) == 0)
        {
          sub_1001F4A64();
        }

        if (v22 == 13)
        {
          LODWORD(v12) = 56;
          goto LABEL_652;
        }

        v147 = byte_1001FDD60[v22];
        if (v147 == -1)
        {
          LODWORD(v12) = 55;
          if (v22 == 32 || v22 == 59)
          {
            goto LABEL_652;
          }

          v201 = v13;
          v195 = 452984832;
        }

        else
        {
          v148 = *(a1 + 1);
          if (v148 <= 0xFFFFFFFFFFFFFFELL)
          {
            *(a1 + 1) = v147 + 16 * v148;
LABEL_490:
            LODWORD(v12) = 54;
            goto LABEL_652;
          }

          v201 = v13;
          v195 = 419430400;
        }

        a1[1] = v11;
        v184 = a1[5] & 0x80FFFFFF | v195;
        a1[5] = v184;
        LOBYTE(v12) = 54;
        goto LABEL_696;
      case 55:
        if ((*a1 & 4) == 0)
        {
          sub_1001F4A38();
        }

        if (v22 == 13)
        {
          LODWORD(v12) = 56;
        }

        else
        {
          LODWORD(v12) = 55;
        }

        goto LABEL_652;
      case 56:
        v84 = *a1;
        if ((*a1 & 4) == 0)
        {
          sub_1001F4A0C();
        }

        if (v22 != 10)
        {
          v201 = v13;
          a1[1] = v11;
          v184 = a1[5] & 0x80FFFFFF | 0x1E000000;
          a1[5] = v184;
          LOBYTE(v12) = 56;
          goto LABEL_696;
        }

        a1[1] = 0;
        if (*(a1 + 1))
        {
          LODWORD(v12) = 59;
        }

        else
        {
          v84 |= 0x40u;
          *a1 = v84;
          LODWORD(v12) = 44;
        }

        if ((*(v5 + 3) & 0x7F) != 0)
        {
          sub_1001F49E0();
        }

        if (!*(v8 + 64))
        {
          goto LABEL_678;
        }

        *a1 = v84 & 0xFFFE03FF | (v12 << 10);
        v159 = (*(v8 + 64))(a1);
        v135 = a1[5];
        if (!v159)
        {
          goto LABEL_538;
        }

        a1[1] = 0;
        v136 = 9;
        goto LABEL_680;
      case 57:
        if (v22 != 10)
        {
          v201 = v13;
          a1[1] = v11;
          v184 = a1[5] & 0x80FFFFFF | 0x1E000000;
LABEL_746:
          a1[5] = v184;
          LOBYTE(v12) = 57;
          goto LABEL_696;
        }

        v54 = *a1;
        if ((*a1 & 0x40) != 0)
        {
          if ((*(v5 + 3) & 0x7F) != 0)
          {
            sub_1001F4C1C();
          }

          v22 = 10;
          LODWORD(v12) = 64;
          if (*(v8 + 72))
          {
            *a1 = v54 & 0xFFFE03FF | 0x10000;
            v55 = (*(v8 + 72))(a1);
            v53 = a1[5];
            if (v55)
            {
              a1[1] = v11;
              v53 = v53 & 0x80FFFFFF | 0xA000000;
              a1[5] = v53;
            }

            LODWORD(v12) = (*a1 >> 10) & 0x7F;
            v22 = 10;
LABEL_149:
            v23 = v15;
LABEL_177:
            v8 = a2;
            if ((v53 & 0x7F000000) != 0)
            {
              return v21 - v13;
            }
          }
        }

        else
        {
          if ((~v54 & 0x20000200) == 0)
          {
            if ((v54 & 4) != 0)
            {
              if ((v10 & 0x40000000) == 0)
              {
LABEL_757:
                v201 = v13;
                a1[1] = v11;
                v184 = a1[5] & 0x80FFFFFF | 0x1A000000;
                goto LABEL_746;
              }
            }

            else if ((v10 & 0x80000000) == 0)
            {
              goto LABEL_757;
            }
          }

          if ((~v54 & 0xA0) != 0)
          {
            v65 = *v5 & 0x7FFFFFFF | (((*v5 & 0xFF0000) == 327680) << 31);
          }

          else
          {
            if (*v5 == 101 || (*a1 & 3) == 0)
            {
              v64 = 0x80000000;
            }

            else
            {
              v64 = 0;
            }

            v65 = v64 & 0x80000000 | *v5 & 0x7FFFFFFF;
          }

          *v5 = v65;
          v66 = *(v8 + 40);
          if (v66)
          {
            v67 = v66(a1);
            v8 = a2;
            if (v67)
            {
              if (v67 != 1)
              {
                if (v67 != 2)
                {
                  a1[5] = a1[5] & 0x80FFFFFF | 0x5000000;
                  v186 = *a1 & 0xFFFE03FF | 0xE800;
LABEL_753:
                  a1[1] = v11;
LABEL_754:
                  *a1 = v186;
                  return v21 - v13;
                }

                *v5 |= 0x80000000;
              }

              *a1 |= 0x100u;
            }
          }

          v22 = 10;
          LODWORD(v12) = 58;
          v23 = v15;
          if ((*(v5 + 3) & 0x7F) != 0)
          {
            v186 = *a1 & 0xFFFE03FF | 0xE800;
            goto LABEL_753;
          }
        }

        goto LABEL_24;
      case 58:
        if (v22 != 10)
        {
          v201 = v13;
          a1[1] = v11;
          v184 = a1[5] & 0x80FFFFFF | 0x1E000000;
          a1[5] = v184;
          LOBYTE(v12) = 58;
          goto LABEL_696;
        }

        a1[1] = 0;
        v137 = *a1;
        v138 = (*a1 & 4) != 0 || (*(a1 + 1) - 1) < 0xFFFFFFFFFFFFFFFELL;
        v149 = *v5;
        if ((*v5 & 0x80000000) != 0)
        {
          if ((v149 & 0xFF0000) == 0x50000)
          {
            goto LABEL_777;
          }

          if ((v137 & 0x100) != 0)
          {
            v138 = 0;
          }

          if (!v138)
          {
LABEL_777:
            v187 = sub_100005A10(a1);
            if ((v137 & 3) != 0)
            {
              v188 = 4;
            }

            else
            {
              v188 = 18;
            }

            if (!v187)
            {
              v188 = 1;
            }

            if ((v149 & 0x7F000000) != 0)
            {
              sub_1001F4B6C();
            }

            if (*(a2 + 56))
            {
              *a1 = v137 & 0xFFFE03FF | (v188 << 10);
              v189 = (*(a2 + 56))(a1);
              v190 = a1[5];
              if (v189)
              {
                a1[1] = 0;
                v190 = v190 & 0x80FFFFFF | 0x7000000;
                a1[5] = v190;
              }

              if ((v190 & 0x7F000000) != 0)
              {
                goto LABEL_789;
              }

              v137 = *a1;
              v188 = (*a1 >> 10) & 0x7F;
            }

            *a1 = v137 & 0xFFFE03FF | ((v188 & 0x7F) << 10);
LABEL_789:
            v191 = (v21 - v13);
            return (v191 + 1);
          }
        }

        else if ((v137 & 0x100) != 0)
        {
          v150 = sub_100005A10(a1);
          if ((v137 & 3) != 0)
          {
            v151 = 4;
          }

          else
          {
            v151 = 18;
          }

          if (v150)
          {
            LODWORD(v12) = v151;
          }

          else
          {
            LODWORD(v12) = 1;
          }

          if (HIBYTE(v149))
          {
            sub_1001F4B98();
          }

          v8 = a2;
          if (*(a2 + 56))
          {
            v152 = v137 & 0xFFFE03FF;
LABEL_504:
            *a1 = v152 | (v12 << 10);
            v153 = (*(v8 + 56))(a1);
            v135 = a1[5];
            if (v153)
            {
              a1[1] = 0;
              v135 = v135 & 0x80FFFFFF | 0x7000000;
LABEL_681:
              a1[5] = v135;
            }

LABEL_538:
            if ((v135 & 0x7F000000) != 0)
            {
              goto LABEL_789;
            }

            v11 = 0;
            goto LABEL_650;
          }

          goto LABEL_678;
        }

        if ((v137 & 4) != 0)
        {
          v11 = 0;
          LODWORD(v12) = 53;
          goto LABEL_651;
        }

        if ((v137 & 0x20000000) != 0)
        {
          v11 = 0;
          LODWORD(v12) = 63;
          if ((v137 & 3) == 0)
          {
            v8 = a2;
            if ((v10 & 0x80000000) == 0)
            {
              a1[5] = v149 & 0x80FFFFFF | 0x21000000;
              v186 = v137 & 0xFFFE02F8 | 0xE800;
              a1[1] = 0;
              goto LABEL_754;
            }

            goto LABEL_652;
          }

LABEL_651:
          v8 = a2;
          goto LABEL_652;
        }

        v156 = *(a1 + 1);
        if (v156 == -1)
        {
          if (sub_100005A58(a1))
          {
            v11 = 0;
            LODWORD(v12) = 63;
            goto LABEL_651;
          }

          v172 = sub_100005A10(a1);
          if ((v137 & 3) != 0)
          {
            v173 = 4;
          }

          else
          {
            v173 = 18;
          }

          if (v172)
          {
            LODWORD(v12) = v173;
          }

          else
          {
            LODWORD(v12) = 1;
          }

          if ((v149 & 0x7F000000) != 0)
          {
            sub_1001F4BC4();
          }
        }

        else
        {
          if (v156)
          {
            v11 = 0;
            LODWORD(v12) = 62;
            goto LABEL_651;
          }

          v157 = sub_100005A10(a1);
          if ((v137 & 3) != 0)
          {
            v158 = 4;
          }

          else
          {
            v158 = 18;
          }

          if (v157)
          {
            LODWORD(v12) = v158;
          }

          else
          {
            LODWORD(v12) = 1;
          }

          if ((v149 & 0x7F000000) != 0)
          {
            sub_1001F4BF0();
          }
        }

        v8 = a2;
        if (*(a2 + 56))
        {
          v152 = v137 & 0xDFFE02FB;
          goto LABEL_504;
        }

LABEL_678:
        v11 = 0;
        goto LABEL_652;
      case 59:
        v80 = *(a1 + 1);
        v81 = v20 - v21;
        if (v80 >= v20 - v21)
        {
          v82 = v20 - v21;
        }

        else
        {
          v82 = *(a1 + 1);
        }

        if ((*a1 & 4) == 0)
        {
          sub_1001F49B4();
        }

        if (v80 + 1 <= 1)
        {
          sub_1001F4988();
        }

        v83 = v205;
        if (!v205)
        {
          v83 = v21;
        }

        v205 = v83;
        *(a1 + 1) = v80 - v82;
        v21 = &v21[v82 - 1];
        if (v80 > v81)
        {
          LODWORD(v12) = 59;
        }

        else
        {
          LODWORD(v12) = 60;
        }

        goto LABEL_652;
      case 60:
        if ((*a1 & 4) == 0)
        {
          sub_1001F495C();
        }

        if (*(a1 + 1))
        {
          sub_1001F4904();
        }

        if (v22 != 13)
        {
          v201 = v13;
          a1[1] = v11;
          v184 = a1[5] & 0x80FFFFFF | 0x1E000000;
          a1[5] = v184;
          LOBYTE(v12) = 60;
          goto LABEL_696;
        }

        if ((*(v5 + 3) & 0x7F) != 0)
        {
          sub_1001F4930();
        }

        if (!v205)
        {
          v205 = 0;
          LODWORD(v12) = 61;
          goto LABEL_652;
        }

        LODWORD(v12) = 61;
        if (!*(v8 + 48))
        {
          v205 = 0;
          goto LABEL_652;
        }

        *a1 = *a1 & 0xFFFE03FF | 0xF400;
        v161 = (*(v8 + 48))(a1, v205, v21 - v205);
        v162 = a1[5];
        if (v161)
        {
          a1[1] = v11;
          v162 = v162 & 0x80FFFFFF | 0x6000000;
          a1[5] = v162;
        }

        if ((v162 & 0x7F000000) != 0)
        {
          goto LABEL_789;
        }

        v205 = 0;
        goto LABEL_650;
      case 61:
        v133 = *a1;
        if ((*a1 & 4) == 0)
        {
          sub_1001F48D8();
        }

        if (v22 != 10)
        {
          v201 = v13;
          a1[1] = v11;
          v184 = a1[5] & 0x80FFFFFF | 0x1E000000;
          a1[5] = v184;
          LOBYTE(v12) = 61;
          goto LABEL_696;
        }

        a1[1] = 0;
        if ((*(a1 + 23) & 0x7F) != 0)
        {
          sub_1001F48AC();
        }

        LODWORD(v12) = 53;
        if (!*(v8 + 72))
        {
          goto LABEL_678;
        }

        *a1 = v133 & 0xFFFE03FF | 0xD400;
        v134 = (*(v8 + 72))(a1);
        v135 = a1[5];
        if (!v134)
        {
          goto LABEL_538;
        }

        a1[1] = 0;
        v136 = 10;
LABEL_680:
        v135 = v135 & 0x80FFFFFF | ((v136 & 0x7F) << 24);
        goto LABEL_681;
      case 62:
        v48 = *(a1 + 1);
        if (v48 + 1 <= 1)
        {
          sub_1001F4B14();
        }

        v49 = v20 - v21;
        if (v48 >= v20 - v21)
        {
          v50 = v20 - v21;
        }

        else
        {
          v50 = *(a1 + 1);
        }

        if (v205)
        {
          v51 = v205;
        }

        else
        {
          v51 = v21;
        }

        v21 = &v21[v50 - 1];
        *(a1 + 1) = v48 - v50;
        if (v48 > v49)
        {
          LODWORD(v12) = 62;
          v205 = v51;
          goto LABEL_652;
        }

        if ((*(v5 + 3) & 0x7F) != 0)
        {
          sub_1001F4B40();
        }

        v205 = 0;
        LODWORD(v12) = 64;
        v23 = v15;
        if (!v51)
        {
          goto LABEL_24;
        }

        v205 = 0;
        LODWORD(v12) = 64;
        v23 = v15;
        if (!*(v8 + 48))
        {
          goto LABEL_24;
        }

        *a1 = *a1 & 0xFFFE03FF | 0x10000;
        v52 = (*(v8 + 48))(a1);
        v53 = a1[5];
        if (v52)
        {
          a1[1] = v11;
          v53 = v53 & 0x80FFFFFF | 0x6000000;
          a1[5] = v53;
        }

        v205 = 0;
        LODWORD(v12) = (*a1 >> 10) & 0x7F;
        goto LABEL_149;
      case 63:
        v79 = v205;
        if (!v205)
        {
          v79 = v21;
        }

        v205 = v79;
        LODWORD(v12) = 63;
        v21 = v198;
        goto LABEL_652;
      case 64:
        if (sub_100005A10(a1))
        {
          if ((*a1 & 3) != 0)
          {
            LODWORD(v12) = 4;
          }

          else
          {
            LODWORD(v12) = 18;
          }
        }

        else
        {
          LODWORD(v12) = 1;
        }

        v8 = a2;
        v154 = *v5;
        if ((*v5 & 0x7F000000) != 0)
        {
          sub_1001F4AE8();
        }

        if (!*(a2 + 56))
        {
          goto LABEL_516;
        }

        *a1 = *a1 & 0xFFFE03FF | (v12 << 10);
        v155 = (*(a2 + 56))(a1);
        v154 = a1[5];
        if (v155)
        {
          a1[1] = v11;
          v154 = v154 & 0x80FFFFFF | 0x7000000;
          a1[5] = v154;
        }

        if ((v154 & 0x7F000000) != 0)
        {
          goto LABEL_789;
        }

        LODWORD(v12) = (*a1 >> 10) & 0x7F;
        v8 = a2;
LABEL_516:
        if ((v154 & 0x80000000) == 0)
        {
          goto LABEL_652;
        }

        *a1 = *a1 & 0xFFFE03FF | ((v12 & 0x7F) << 10);
        a1[1] = v11;
        goto LABEL_789;
      default:
        sub_1001F4FAC();
    }
  }
}

uint64_t sub_100005790(int a1, unsigned int a2)
{
  if (a2 <= 0x20 && ((1 << a2) & 0x100003600) != 0)
  {
    return 1;
  }

  if (a1 > 25)
  {
    if (a1 <= 27)
    {
      if (a1 == 26)
      {
        if (a2 == 47)
        {
          return 27;
        }

        if (a2 != 63)
        {
          if (a2 == 64)
          {
            return 1;
          }

          goto LABEL_46;
        }

        return 28;
      }

      v3 = 27;
      v4 = byte_1001FDC40[a2 >> 3] >> (a2 & 7);
      if (a2 == 35)
      {
        v7 = 30;
      }

      else
      {
        v7 = 1;
      }

      if (a2 == 63)
      {
        v6 = 28;
      }

      else
      {
        v6 = v7;
      }
    }

    else
    {
      if ((a1 - 28) < 2)
      {
        v8 = byte_1001FDC40[a2 >> 3];
        v9 = a2 & 7;
        v3 = 29;
      }

      else
      {
        if (a1 != 30)
        {
          if (a1 != 31)
          {
            return 1;
          }

          v3 = 31;
          v4 = byte_1001FDC40[a2 >> 3] >> (a2 & 7);
          if (a2 == 35 || a2 == 63)
          {
            v6 = 31;
          }

          else
          {
            v6 = 1;
          }

          goto LABEL_59;
        }

        v8 = byte_1001FDC40[a2 >> 3];
        v9 = a2 & 7;
        v3 = 31;
      }

      v4 = v8 >> v9;
      if (a2 == 35)
      {
        v10 = 30;
      }

      else
      {
        v10 = 1;
      }

      if (a2 == 63)
      {
        v6 = v3;
      }

      else
      {
        v6 = v10;
      }
    }

LABEL_59:
    if (v4)
    {
      return v3;
    }

    else
    {
      return v6;
    }
  }

  if (a1 > 22)
  {
    if ((a1 - 24) >= 2)
    {
      if (a1 != 23 || a2 != 47)
      {
        return 1;
      }

      return 24;
    }

    if (a2 == 64)
    {
      return 26;
    }

    if (a2 != 63)
    {
      if (a2 == 47)
      {
        return 27;
      }

LABEL_46:
      result = 25;
      if (a2 - 48 >= 0xA && (a2 | 0x20u) - 97 >= 0x1A && (a2 - 33 > 0x3E || ((1 << (a2 - 33)) & 0x5400000016003FF9) == 0) && a2 != 126)
      {
        return 1;
      }

      return result;
    }

    return 28;
  }

  if (a1 == 20)
  {
    result = 27;
    if (a2 != 42 && a2 != 47)
    {
      if ((a2 | 0x20u) - 97 >= 0x1A)
      {
        return 1;
      }

      return 21;
    }
  }

  else
  {
    if (a1 != 21)
    {
      if (a1 == 22 && a2 == 47)
      {
        return 23;
      }

      return 1;
    }

    if ((a2 | 0x20u) - 97 < 0x1A)
    {
      return 21;
    }

    if (a2 != 58)
    {
      return 1;
    }

    return 22;
  }

  return result;
}

BOOL sub_100005A10(uint64_t a1)
{
  if (*(a1 + 16) && *(a1 + 18))
  {
    if ((*a1 & 0x10) != 0)
    {
      return 0;
    }
  }

  else if ((*a1 & 8) == 0)
  {
    return 0;
  }

  return !sub_100005A58(a1);
}

BOOL sub_100005A58(int *a1)
{
  v1 = *a1;
  if ((*a1 & 3) == 0)
  {
    return 0;
  }

  result = 0;
  if ((v1 & 0x100) == 0)
  {
    v4 = *(a1 + 10);
    if (v4 != 304 && v4 != 204 && (v4 - 200) <= 0xFFFFFF9B)
    {
      result = (v1 & 0x20000004) == 0x20000000;
      if ((v1 & 0x20000004) != 0x20000000 && (v1 & 4) == 0)
      {
        return *(a1 + 1) == -1;
      }
    }
  }

  return result;
}

const char *sub_100005AC4(unsigned int a1)
{
  if (a1 > 0x21)
  {
    return "<unknown>";
  }

  else
  {
    return off_100277DE0[a1];
  }
}

const char *sub_100005AE8(int a1)
{
  if (a1 <= 399)
  {
    if (a1 <= 206)
    {
      if (a1 > 201)
      {
        if (a1 <= 203)
        {
          if (a1 == 202)
          {
            return "Accepted";
          }

          else
          {
            return "Non-Authoritative Information";
          }
        }

        else if (a1 == 204)
        {
          return "No Content";
        }

        else if (a1 == 205)
        {
          return "Reset Content";
        }

        else
        {
          return "Partial Content";
        }
      }

      if (a1 <= 101)
      {
        if (a1 == 100)
        {
          return "Continue";
        }

        if (a1 == 101)
        {
          return "Switching Protocols";
        }
      }

      else
      {
        switch(a1)
        {
          case 102:
            return "Processing";
          case 200:
            return "OK";
          case 201:
            return "Created";
        }
      }
    }

    else if (a1 <= 301)
    {
      if (a1 <= 225)
      {
        if (a1 == 207)
        {
          return "Multi-Status";
        }

        if (a1 == 208)
        {
          return "Already Reported";
        }
      }

      else
      {
        switch(a1)
        {
          case 226:
            return "IM Used";
          case 300:
            return "Multiple Choices";
          case 301:
            return "Moved Permanently";
        }
      }
    }

    else
    {
      if (a1 <= 304)
      {
        if (a1 == 302)
        {
          return "Found";
        }

        if (a1 == 303)
        {
          return "See Other";
        }

        return "Not Modified";
      }

      switch(a1)
      {
        case 305:
          return "Use Proxy";
        case 307:
          return "Temporary Redirect";
        case 308:
          return "Permanent Redirect";
      }
    }

    return "<unknown>";
  }

  if (a1 > 499)
  {
    if (a1 <= 504)
    {
      if (a1 <= 501)
      {
        if (a1 == 500)
        {
          return "Internal Server Error";
        }

        else
        {
          return "Not Implemented";
        }
      }

      else if (a1 == 502)
      {
        return "Bad Gateway";
      }

      else if (a1 == 503)
      {
        return "Service Unavailable";
      }

      else
      {
        return "Gateway Timeout";
      }
    }

    if (a1 <= 507)
    {
      if (a1 == 505)
      {
        return "HTTP Version Not Supported";
      }

      if (a1 == 506)
      {
        return "Variant Also Negotiates";
      }

      return "Insufficient Storage";
    }

    switch(a1)
    {
      case 508:
        return "Loop Detected";
      case 510:
        return "Not Extended";
      case 511:
        return "Network Authentication Required";
    }

    return "<unknown>";
  }

  switch(a1)
  {
    case 400:
      result = "Bad Request";
      break;
    case 401:
      result = "Unauthorized";
      break;
    case 402:
      result = "Payment Required";
      break;
    case 403:
      result = "Forbidden";
      break;
    case 404:
      result = "Not Found";
      break;
    case 405:
      result = "Method Not Allowed";
      break;
    case 406:
      result = "Not Acceptable";
      break;
    case 407:
      result = "Proxy Authentication Required";
      break;
    case 408:
      result = "Request Timeout";
      break;
    case 409:
      result = "Conflict";
      break;
    case 410:
      result = "Gone";
      break;
    case 411:
      result = "Length Required";
      break;
    case 412:
      result = "Precondition Failed";
      break;
    case 413:
      result = "Payload Too Large";
      break;
    case 414:
      result = "URI Too Long";
      break;
    case 415:
      result = "Unsupported Media Type";
      break;
    case 416:
      result = "Range Not Satisfiable";
      break;
    case 417:
      result = "Expectation Failed";
      break;
    case 421:
      result = "Misdirected Request";
      break;
    case 422:
      result = "Unprocessable Entity";
      break;
    case 423:
      result = "Locked";
      break;
    case 424:
      result = "Failed Dependency";
      break;
    case 426:
      result = "Upgrade Required";
      break;
    case 428:
      result = "Precondition Required";
      break;
    case 429:
      result = "Too Many Requests";
      break;
    case 431:
      result = "Request Header Fields Too Large";
      break;
    case 451:
      result = "Unavailable For Legal Reasons";
      break;
    default:
      return "<unknown>";
  }

  return result;
}

uint64_t sub_100006014(uint64_t result, int a2)
{
  v2 = *(result + 24);
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 24) = v2;
  if (a2 == 1)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 2048;
  }

  if (!a2)
  {
    v3 = 18432;
  }

  *result = v3 & 0xFFFFFFFC | a2 & 3;
  *(result + 20) &= 0x80FFFFFF;
  return result;
}

double sub_100006058(_OWORD *a1)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

char *sub_10000606C(unsigned int a1)
{
  if (a1 >= 0x22)
  {
    sub_1001F4FD8();
  }

  return off_100277EF0[2 * a1];
}

char *sub_100006098(unsigned int a1)
{
  if (a1 >= 0x22)
  {
    sub_1001F5004();
  }

  return off_100277EF0[2 * a1 + 1];
}

double sub_1000060C4(_OWORD *a1)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1000060D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  *a4 = 0;
  if (a2 < 1)
  {
    return a3 != 0;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = a1 + a2;
  if (a3)
  {
    LODWORD(result) = 24;
  }

  else
  {
    LODWORD(result) = 20;
  }

  v12 = a4 + 4;
  v13 = 7;
  do
  {
    result = sub_100005790(result, *(a1 + v7));
    if (result <= 25)
    {
      if (result <= 21)
      {
        if (result != 21)
        {
          if (result != 1)
          {
LABEL_123:
            sub_1001F505C();
          }

          return result;
        }

        v14 = 0;
        goto LABEL_26;
      }

      if ((result - 22) < 3)
      {
        goto LABEL_29;
      }

      if (result != 25)
      {
        goto LABEL_123;
      }

      goto LABEL_24;
    }

    if (result > 28)
    {
      switch(result)
      {
        case 0x1D:
          v14 = 4;
          break;
        case 0x1E:
          goto LABEL_29;
        case 0x1F:
          v14 = 5;
          break;
        default:
          goto LABEL_123;
      }

      goto LABEL_26;
    }

    if (result == 26)
    {
      v9 = 1;
LABEL_24:
      v14 = 1;
      goto LABEL_26;
    }

    if (result != 27)
    {
      goto LABEL_29;
    }

    v14 = 3;
LABEL_26:
    if (v14 == v13)
    {
      ++*(v12 + 4 * v13 + 2);
    }

    else
    {
      v15 = (v12 + 4 * v14);
      *v15 = v7;
      v15[1] = 1;
      v8 |= 1 << v14;
      *a4 = v8;
      v13 = v14;
    }

LABEL_29:
    ++v7;
  }

  while (a1 + v7 < v10);
  if (v9)
  {
    v16 = 2;
  }

  else
  {
    v16 = 4;
  }

  if ((v8 & 3) == 1)
  {
    return 1;
  }

  if ((v8 & 2) != 0)
  {
    v17 = *(a4 + 10);
    v18 = *(a4 + 8);
    *(a4 + 10) = 0;
    if (v17)
    {
      v19 = 0;
      v20 = a1 + v18 + v17;
      result = 1;
      do
      {
        v21 = *(a1 + v18);
        if (v16 <= 6)
        {
          if (v16 > 4)
          {
            if (v16 == 5)
            {
              goto LABEL_61;
            }

            if ((v21 | 0x20u) - 97 >= 0x1A && (v21 - 48) >= 0xA && (v21 - 45) >= 2)
            {
LABEL_41:
              if (v21 != 58)
              {
                return 1;
              }

              v16 = 11;
              goto LABEL_103;
            }

            goto LABEL_94;
          }

          if ((v16 - 2) >= 2)
          {
            if (v21 != 91)
            {
              if ((v21 | 0x20u) - 97 >= 0x1A && (v21 - 48) >= 0xA && (v21 - 45) >= 2)
              {
                return 1;
              }

              *(a4 + 8) = v18;
LABEL_94:
              *(a4 + 10) = ++v19;
              v16 = 6;
              goto LABEL_103;
            }

            v16 = 5;
          }

          else if (v21 == 64)
          {
            v16 = 4;
          }

          else
          {
            v25 = (v21 - 48) >= 0xA && (v21 | 0x20u) - 97 >= 0x1A;
            if (v25 && ((v21 - 33) > 0x3E || ((1 << (v21 - 33)) & 0x4000000016003FF9) == 0) && v21 != 126)
            {
              return 1;
            }

            if (v16 == 3)
            {
              v26 = *(a4 + 30) + 1;
            }

            else
            {
              *(a4 + 28) = v18;
              v8 |= 0x40u;
              *a4 = v8;
              v26 = 1;
            }

            *(a4 + 30) = v26;
            v16 = 3;
          }
        }

        else
        {
          if (v16 > 9)
          {
            if ((v16 - 11) < 2)
            {
              if ((v21 - 48) >= 0xA)
              {
                return 1;
              }

              if (v16 == 12)
              {
                v22 = *(a4 + 14) + 1;
              }

              else
              {
                *(a4 + 12) = v18;
                v8 |= 4u;
                *a4 = v8;
                v22 = 1;
              }

              *(a4 + 14) = v22;
              v16 = 12;
              goto LABEL_103;
            }

            if (v21 != 93)
            {
              goto LABEL_67;
            }
          }

          else
          {
            if (v16 != 7)
            {
              if (v16 == 8)
              {
                goto LABEL_41;
              }

LABEL_67:
              if ((v21 - 48) >= 0xA && (v21 | 0x20u) - 97 >= 0x1A)
              {
                v16 = 10;
                if (((v21 - 37) > 0x3A || ((1 << (v21 - 37)) & 0x400000000000301) == 0) && v21 != 126)
                {
                  return 1;
                }
              }

              else
              {
                v16 = 10;
              }

LABEL_102:
              *(a4 + 10) = ++v19;
              goto LABEL_103;
            }

            if (v21 != 93)
            {
LABEL_61:
              if ((v21 - 48) < 0xA)
              {
                goto LABEL_62;
              }

              if ((v21 | 0x20u) < 0x61)
              {
                if (v21 == 46 || v21 == 58)
                {
LABEL_62:
                  if (v16 != 7)
                  {
                    *(a4 + 8) = v18;
                  }

                  *(a4 + 10) = ++v19;
                  v16 = 7;
                  goto LABEL_103;
                }
              }

              else if ((v21 | 0x20u) < 0x67)
              {
                goto LABEL_62;
              }

              if (v16 != 7 || v21 != 37)
              {
                return result;
              }

              v16 = 9;
              goto LABEL_102;
            }
          }

          v16 = 8;
        }

LABEL_103:
        ++v18;
      }

      while (a1 + v18 < v20);
    }

    if (v16 - 2) < 0xA && ((0x3AFu >> (v16 - 2)))
    {
      return 1;
    }
  }

  if (a3)
  {
    if (v8 != 6)
    {
      return 1;
    }
  }

  else if ((v8 & 4) == 0)
  {
    return 0;
  }

  v27 = *(a4 + 12);
  v28 = *(a4 + 14);
  if (v28 + v27 > a2)
  {
    sub_1001F5030();
  }

  if (*(a4 + 14))
  {
    v29 = 0;
    v30 = (a1 + v27);
    v31 = &v30[v28];
    while (1)
    {
      v29 = *v30 + 10 * v29 - 48;
      if (v29 >> 16)
      {
        return 1;
      }

      if (++v30 >= v31)
      {
        goto LABEL_125;
      }
    }
  }

  LOWORD(v29) = 0;
LABEL_125:
  result = 0;
  *(a4 + 2) = v29;
  return result;
}

uint64_t sub_1000065B4(uint64_t result, int a2)
{
  v2 = *(result + 20);
  v3 = HIBYTE(v2) & 0x7F;
  if (v3 != 31 && v3 != 0)
  {
    sub_1001F5088();
  }

  if (a2)
  {
    v5 = 520093696;
  }

  else
  {
    v5 = 0;
  }

  *(result + 20) = v2 & 0x80FFFFFF | v5;
  return result;
}

void sub_100006848(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v5 && *(a1 + 48) == 1)
  {
    *(*(a1 + 32) + 24) = 0;
    objc_storeStrong((*(a1 + 32) + 16), a3);
  }

  (*(*(a1 + 40) + 16))();
}

_BYTE *sub_100006940(char a1)
{
  result = malloc_type_malloc(1uLL, 0x100004077774924uLL);
  *result = a1;
  return result;
}

BOOL sub_100006980(atomic_uchar *a1, int a2, unsigned __int8 a3)
{
  v3 = a2;
  atomic_compare_exchange_strong(a1, &v3, a3);
  return v3 == a2;
}

BOOL sub_1000069D0(atomic_uchar *a1, int a2, unsigned __int8 a3)
{
  v3 = a2;
  atomic_compare_exchange_strong(a1, &v3, a3);
  return v3 == a2;
}

_WORD *sub_100006A18(__int16 a1)
{
  result = malloc_type_malloc(2uLL, 0x1000040BDFB0063uLL);
  *result = a1;
  return result;
}

BOOL sub_100006A54(atomic_ushort *a1, int a2, unsigned __int16 a3)
{
  v3 = a2;
  atomic_compare_exchange_strong(a1, &v3, a3);
  return v3 == a2;
}

_DWORD *sub_100006AA4(int a1)
{
  result = malloc_type_malloc(4uLL, 0x100004052888210uLL);
  *result = a1;
  return result;
}

BOOL sub_100006AE0(atomic_uint *a1, int a2, unsigned int a3)
{
  v3 = a2;
  atomic_compare_exchange_strong(a1, &v3, a3);
  return v3 == a2;
}

void *sub_100006B20(uint64_t a1)
{
  result = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  *result = a1;
  return result;
}

BOOL sub_100006B5C(atomic_ullong *a1, uint64_t a2, unint64_t a3)
{
  v3 = a2;
  atomic_compare_exchange_strong(a1, &v3, a3);
  return v3 == a2;
}

BOOL sub_100006BC0(atomic_ushort *a1, int a2, unsigned __int16 a3)
{
  v3 = a2;
  atomic_compare_exchange_strong(a1, &v3, a3);
  return v3 == a2;
}

void sub_100006F30(id a1)
{
  v13 = 0;
  v1 = container_system_path_for_identifier();
  if (v1)
  {
    v3 = v1;
    v4 = [NSURL fileURLWithFileSystemRepresentation:v1 isDirectory:1 relativeToURL:0];
    v5 = qword_1002BD310;
    qword_1002BD310 = v4;

    free(v3);
  }

  else
  {
    if (qword_1002BD368 != -1)
    {
      sub_1001F50B4();
    }

    v2 = qword_1002BD358;
    if (os_log_type_enabled(qword_1002BD358, OS_LOG_TYPE_FAULT))
    {
      sub_1001F524C(&v13, v2);
    }
  }

  if (qword_1002BD310)
  {
    v26[0] = @".";
    v24[0] = NSURLIsExcludedFromBackupKey;
    v24[1] = NSURLFileProtectionKey;
    v25[0] = &__kCFBooleanFalse;
    v25[1] = NSURLFileProtectionNone;
    v6 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
    v27[0] = v6;
    v26[1] = @"Documents";
    v22[0] = NSURLIsExcludedFromBackupKey;
    v22[1] = NSURLFileProtectionKey;
    v23[0] = &__kCFBooleanTrue;
    v23[1] = NSURLFileProtectionNone;
    v7 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
    v27[1] = v7;
    v26[2] = @"Library";
    v20[0] = NSURLIsExcludedFromBackupKey;
    v20[1] = NSURLFileProtectionKey;
    v21[0] = &__kCFBooleanFalse;
    v21[1] = NSURLFileProtectionNone;
    v8 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
    v27[2] = v8;
    v26[3] = @"Library/Caches";
    v18[0] = NSURLIsExcludedFromBackupKey;
    v18[1] = NSURLFileProtectionKey;
    v19[0] = &__kCFBooleanTrue;
    v19[1] = NSURLFileProtectionNone;
    v9 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
    v27[3] = v9;
    v26[4] = @"Library/Preferences";
    v16[0] = NSURLIsExcludedFromBackupKey;
    v16[1] = NSURLFileProtectionKey;
    v17[0] = &__kCFBooleanTrue;
    v17[1] = NSURLFileProtectionCompleteUntilFirstUserAuthentication;
    v10 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
    v27[4] = v10;
    v26[5] = @"tmp";
    v14[0] = NSURLIsExcludedFromBackupKey;
    v14[1] = NSURLFileProtectionKey;
    v15[0] = &__kCFBooleanTrue;
    v15[1] = NSURLFileProtectionNone;
    v11 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
    v27[5] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:6];

    [v12 enumerateKeysAndObjectsUsingBlock:&stru_100278180];
  }
}

void sub_100007204(id a1, NSString *a2, NSDictionary *a3, BOOL *a4)
{
  v5 = qword_1002BD310;
  v6 = a3;
  v7 = [v5 URLByAppendingPathComponent:a2];
  v10 = 0;
  v8 = [v7 setResourceValues:v6 error:&v10];

  v9 = v10;
  if ((v8 & 1) == 0)
  {
    if (qword_1002BD368 != -1)
    {
      sub_1001F50B4();
    }

    if (os_log_type_enabled(qword_1002BD358, OS_LOG_TYPE_FAULT))
    {
      sub_1001F52C8();
    }
  }
}

void sub_1000072CC(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1002ABE00;
  off_1002ABE00 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1002BD320;
  qword_1002BD320 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1002BD328;
  qword_1002BD328 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1002BD330;
  qword_1002BD330 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1002BD338;
  qword_1002BD338 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1002BD340;
  qword_1002BD340 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1002BD348;
  qword_1002BD348 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1002BD350;
  qword_1002BD350 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1002BD358;
  qword_1002BD358 = v17;

  qword_1002BD360 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_100007454(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

uint64_t sub_100007630(uint64_t a1)
{
  v2 = sqlite3_step(*(a1 + 48));
  if (v2 == 100)
  {
    (*(*(a1 + 40) + 16))();
  }

  return v2;
}

void sub_100007734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_10000774C(void *result, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a2)
  {
    v5 = result;
    result = [a2 int64ForColumnIndex:0];
    *(*(v5[4] + 8) + 24) = result;
  }

  *a4 = 1;
  return result;
}

void sub_10000787C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100007894(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000078AC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a2)
  {
    v6 = [a2 numberForColumnIndex:0];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  *a4 = 1;
}

void sub_1000079A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000079BC(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  *a4 = 1;
  return result;
}

void sub_100007A68(void *a1, uint64_t a2, void *a3)
{
  v9 = a1;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 bindArray:v5 atPosition:a2];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 bindDictionary:v5 atPosition:a2];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 bindString:v5 atPosition:a2];
    goto LABEL_10;
  }

  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v9 bindNullAtPosition:a2];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 timeIntervalSinceReferenceDate];
LABEL_15:
    [v9 bindDouble:a2 atPosition:?];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 bindData:v5 atPosition:a2];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 bindUUID:v5 atPosition:a2];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v5 absoluteString];
        [v9 bindString:v6 atPosition:a2];
      }

      else
      {
        v7 = [v5 objCType];
        v8 = *v7;
        if ((v8 == 102 || v8 == 100) && !v7[1])
        {
          [v5 doubleValue];
          goto LABEL_15;
        }

        [v9 bindInt64:objc_msgSend(v5 atPosition:{"longLongValue"), a2}];
      }
    }
  }

LABEL_10:
}

__CFString *sub_100007CA8(uint64_t a1)
{
  if (a1)
  {
    v2 = [[NSMutableString alloc] initWithCapacity:3 * a1 + 1];
    [v2 appendString:@"?"];
    v3 = a1 - 1;
    if (a1 != 1)
    {
      do
      {
        [v2 appendString:{@", ?"}];
        --v3;
      }

      while (v3);
    }

    v4 = [v2 copy];
  }

  else
  {
    v4 = &stru_100296B10;
  }

  return v4;
}

void sub_100008978(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithLongLong:a2];
  [v2 addObject:v3];
}

void sub_100008BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100008E6C(uint64_t a1, void *a2)
{
  v5 = 1;
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 predicate];
  [v4 applyBinding:v3 atIndex:&v5];
}

void sub_100008F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100008F90(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) entityClass];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000902C;
  v4[3] = &unk_1002782A0;
  v6 = v2;
  v5 = *(a1 + 32);
  [v5 enumeratePersistentIDsUsingBlock:v4];
  return *(*(*(a1 + 40) + 8) + 24);
}

void sub_10000902C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [objc_alloc(*(a1 + 48)) initWithPersistentID:a2 onConnection:*(*(a1 + 32) + 8)];
  *(*(*(a1 + 40) + 8) + 24) = [v6 deleteFromDatabase];
  *a4 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
}

void sub_100009288(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(*(a1 + 40));
  [v4 setDatabaseID:a2];
  (*(*(a1 + 32) + 16))();
}

void sub_100009308(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = objc_alloc_init(v5);
  [v7 setDatabaseID:a2];
  [v7 setValuesWithDictionary:v6];

  (*(*(a1 + 32) + 16))();
}

void sub_100009544(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14 = 1;
  [a1[4] applyBinding:v5 atIndex:&v14];
  v7 = [a1[5] count];
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100009668;
  v8[3] = &unk_100278390;
  v12 = v7;
  v9 = a1[5];
  v10 = a1[6];
  v11 = v13;
  [v5 enumerateRowsUsingBlock:v8];

  _Block_object_dispose(v13, 8);
}

void sub_100009650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100009668(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [NSMutableDictionary dictionaryWithCapacity:a1[7]];
  v9 = v8;
  if (v5)
  {
    v10 = a1[4];
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_1000097BC;
    v18 = &unk_100278368;
    v11 = v8;
    v19 = v11;
    v12 = v5;
    v20 = v12;
    [v10 enumerateObjectsUsingBlock:&v15];
    v13 = a1[5];
    v14 = [v12 int64ForColumnIndex:{0, v15, v16, v17, v18}];
    ++*(*(a1[6] + 8) + 24);
    (*(v13 + 16))(v13, v14, v11);
  }

  objc_autoreleasePoolPop(v7);
}

void sub_1000097BC(uint64_t a1, void *a2, int a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = sub_10000278C(v5, (a3 + 1));
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

void sub_10000A1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000A1C8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000A1E0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [objc_alloc(*(a1 + 48)) initWithPersistentID:a2 onConnection:*(a1 + 32)];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  *a4 = 1;
}

void sub_10000A39C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000A3B4(uint64_t a1, uint64_t a2)
{
  v3 = [objc_alloc(*(a1 + 48)) initWithPersistentID:a2 onConnection:*(a1 + 32)];
  [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
}

void sub_10000A844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000A86C(uint64_t a1, void *a2)
{
  v7 = 1;
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 predicate];
  [v5 applyBinding:v4 atIndex:&v7];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000A92C;
  v6[3] = &unk_1002781F0;
  v6[4] = *(a1 + 40);
  [v4 enumerateRowsUsingBlock:v6];
}

void sub_10000A92C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = sub_10000278C(a2, 0);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  *a4 = 1;
}

void sub_10000AAA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000AE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000AE70(uint64_t a1, void *a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000AF08;
  v5[3] = &unk_100278480;
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  [a2 enumerateRowsUsingBlock:v5];
}

void sub_10000AF08(uint64_t a1, void *a2, uint64_t a3, unsigned __int8 *a4)
{
  v7 = [a2 stringForColumnName:@"name"];
  v6 = [v7 isEqualToString:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = v6;
  *a4 = v6;
}

void sub_10000B028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000B040(uint64_t a1, void *a2)
{
  result = [a2 firstInt64Value];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_10000B150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000B168(uint64_t a1)
{
  v2 = [[SQLiteSchemaMigration alloc] initWithConnection:*(*(a1 + 32) + 8)];
  if (qword_1002BD3B8 != -1)
  {
    sub_1001F5330();
  }

  v3 = qword_1002BD3A0;
  if (os_log_type_enabled(qword_1002BD3A0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 32) + 8);
    v5 = v3;
    v6 = [v4 options];
    v7 = [v6 databasePath];
    v8 = *(a1 + 56);
    v12 = 138543618;
    v13 = v7;
    v14 = 2048;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Migrating %{public}@ to %llu", &v12, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  *(*(*(a1 + 48) + 8) + 24) = [(SQLiteSchemaMigration *)v2 success];
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    [*(a1 + 32) _setUserVersion:*(a1 + 56)];
  }

  else
  {
    if (qword_1002BD3B8 != -1)
    {
      sub_1001F5344();
    }

    v9 = qword_1002BD3A0;
    if (os_log_type_enabled(qword_1002BD3A0, OS_LOG_TYPE_ERROR))
    {
      sub_1001F536C(a1 + 32, v9, a1);
    }
  }

  v10 = *(*(*(a1 + 48) + 8) + 24);

  return v10;
}

void sub_10000B428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000B440(uint64_t a1, void *a2)
{
  result = [a2 hasRows];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_10000B4EC(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1002ABF28;
  off_1002ABF28 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1002BD370;
  qword_1002BD370 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1002BD378;
  qword_1002BD378 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1002BD380;
  qword_1002BD380 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1002BD388;
  qword_1002BD388 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1002BD390;
  qword_1002BD390 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1002BD398;
  qword_1002BD398 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1002BD3A0;
  qword_1002BD3A0 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1002BD3A8;
  qword_1002BD3A8 = v17;

  qword_1002BD3B0 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

uint64_t sub_10000B920(int a1, msghdr *a2, unsigned int a3, int a4)
{
  if (!a2 || (a3 & 0x80000000) != 0)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  else if (a3)
  {
    v5 = a2;
    v7 = 0;
    v8 = a3;
    while (1)
    {
      v9 = sendmsg(a1, v5, a4);
      if (v9 < 0)
      {
        break;
      }

      LODWORD(v5[1].msg_name) = v9;
      ++v7;
      v5 = (v5 + 56);
      if (v8 == v7)
      {
        return v8;
      }
    }

    if (v7)
    {
      return v7;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000B9DC(uint64_t a1)
{
  if (!a1)
  {
    sub_1001F5444();
  }

  if (*(a1 + 40) < 0xCu)
  {
    return 0;
  }

  else
  {
    return *(a1 + 32);
  }
}

char *sub_10000BA0C(uint64_t a1, unsigned int *a2)
{
  if (!a1)
  {
    sub_1001F549C();
  }

  if (!a2)
  {
    sub_1001F5470();
  }

  if (a2 + ((*a2 + 3) & 0x1FFFFFFFCLL) + 12 <= *(a1 + 32) + *(a1 + 40))
  {
    return a2 + ((*a2 + 3) & 0x1FFFFFFFCLL);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000BA58(uint64_t a1)
{
  if (!a1)
  {
    sub_1001F54C8();
  }

  return a1 + 12;
}

uint64_t sub_10000BA74(uint64_t a1)
{
  if (!a1)
  {
    sub_1001F54F4();
  }

  return a1 + 12;
}

void sub_10000BCCC(uint64_t a1)
{
  [*(a1 + 32) _performMigrationIfNeededForStore:*(a1 + 40)];
  v2 = [objc_opt_class() storeDescriptor];
  [*(a1 + 32) _modifyUsingTransactionClass:objc_msgSend(v2 withBlock:{"transactionClass"), *(a1 + 48)}];
}

id sub_10000BE04(uint64_t a1)
{
  [*(a1 + 32) _performMigrationIfNeededForStore:*(a1 + 40)];
  v2 = *(a1 + 32);
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);

  return [v2 _modifyUsingTransactionClass:v3 withBlock:v4];
}

void sub_10000BF08(uint64_t a1)
{
  [*(a1 + 32) _performMigrationIfNeededForStore:*(a1 + 40)];
  v3 = [objc_opt_class() storeDescriptor];
  v2 = [objc_alloc(objc_msgSend(v3 "sessionClass"))];
  [*(a1 + 32) _readUsingSession:v2 withBlock:*(a1 + 48)];
}

id sub_10000C28C(void *a1)
{
  result = [*(a1[4] + 8) tableExists:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void sub_10000C330(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) options];
  v3 = [v2 databasePath];

  if ([*(*(a1 + 32) + 8) tableExists:@"schema_version"])
  {
    if (qword_1002BD408 != -1)
    {
      sub_1001F5520();
    }

    v4 = qword_1002BD3F0;
    if (os_log_type_enabled(qword_1002BD3F0, OS_LOG_TYPE_INFO))
    {
      v6 = 138543362;
      v7 = v3;
      v5 = "Database opened at: %{public}@";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, v5, &v6, 0xCu);
    }
  }

  else
  {
    if (qword_1002BD408 != -1)
    {
      sub_1001F5520();
    }

    v4 = qword_1002BD3F0;
    if (os_log_type_enabled(qword_1002BD3F0, OS_LOG_TYPE_INFO))
    {
      v6 = 138543362;
      v7 = v3;
      v5 = "Database created at: %{public}@";
      goto LABEL_10;
    }
  }
}

void sub_10000C77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000C9CC(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1002ABF90;
  off_1002ABF90 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1002BD3C0;
  qword_1002BD3C0 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1002BD3C8;
  qword_1002BD3C8 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1002BD3D0;
  qword_1002BD3D0 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1002BD3D8;
  qword_1002BD3D8 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1002BD3E0;
  qword_1002BD3E0 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1002BD3E8;
  qword_1002BD3E8 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1002BD3F0;
  qword_1002BD3F0 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1002BD3F8;
  qword_1002BD3F8 = v17;

  qword_1002BD400 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_10000CC60(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_1002BD410;
  qword_1002BD410 = v1;

  v3 = qword_1002BD410;
  v4 = [NSTimeZone timeZoneForSecondsFromGMT:0];
  [v3 setTimeZone:v4];

  v5 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
  [qword_1002BD410 setLocale:v5];

  v6 = qword_1002BD410;

  [v6 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss'Z'"];
}

id sub_10000E0F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 16);
  if (a3)
  {
    return [v3 setObject:a3 forKey:a2];
  }

  else
  {
    return [v3 removeObjectForKey:a2];
  }
}

uint64_t sub_100011448(uint64_t a1)
{
  [*(*(a1 + 32) + 8) executeStatement:@"PRAGMA user_version = 1;" error:0];
  [*(*(a1 + 32) + 8) executeStatement:@"CREATE TABLE IF NOT EXISTS schema_version (schema_name TEXT error:{schema_version INTEGER DEFAULT 0, PRIMARY KEY(schema_name));", 0}];
  return 1;
}

void sub_100011550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100011568(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  [v4 bindString:v3 atPosition:1];
  v5 = [v4 firstInt64Value];

  *(*(*(a1 + 40) + 8) + 24) = v5;
}

void sub_1000116E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000116F8(uint64_t a1, void *a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100011790;
  v5[3] = &unk_100278480;
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  [a2 enumerateRowsUsingBlock:v5];
}

void sub_100011790(uint64_t a1, void *a2, uint64_t a3, unsigned __int8 *a4)
{
  v7 = [a2 stringForColumnName:@"name"];
  v6 = [v7 isEqualToString:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = v6;
  *a4 = v6;
}

id sub_1000118B0(void *a1)
{
  v2 = [[SQLiteDatabaseStoreMigrator alloc] initWithConnection:*(a1[4] + 8)];
  (*(a1[5] + 16))();
  if ([(SQLiteDatabaseStoreMigrator *)v2 success])
  {
    v3 = a1[4];
    v4 = *(v3 + 8);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100011990;
    v8[3] = &unk_100278778;
    v5 = a1[6];
    v8[4] = v3;
    v8[5] = v5;
    v6 = [v4 executeStatement:@"INSERT OR REPLACE INTO schema_version (schema_name error:schema_version) VALUES (? bindings:{?)", 0, v8}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_100011990(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  [v4 bindString:v3 atPosition:1];
  [v4 bindInt64:*(a1 + 40) atPosition:2];
}

void sub_100011AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100011AE8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindString:v3 atPosition:1];
  LOBYTE(v3) = [v4 hasRows];

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

id sub_100011CA8(unsigned int a1)
{
  if (qword_1002BD420 != -1)
  {
    sub_1001F5698();
  }

  v2 = *(&off_1002ABF98 + a1);

  return v2;
}

void sub_1000128BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000128D4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindString:v3 atPosition:1];
  LOBYTE(v3) = [v4 hasRows];

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

void sub_100013120(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_1000133D0(sqlite3_context *a1)
{
  +[NSDate timeIntervalSinceReferenceDate];

  sqlite3_result_int64(a1, v2);
}

void sub_10001364C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100013664(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10001367C(uint64_t a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 16), *(a1 + 48), -1, &ppStmt, 0);
  if (sub_1000143F0(v2))
  {
    v3 = [SQLiteStatement alloc];
    v4 = [(SQLiteStatement *)v3 initWithStatement:ppStmt onConnection:*(a1 + 32)];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  else
  {
    sqlite3_finalize(ppStmt);
  }

  return v2;
}

void sub_100013D64(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1002ABF98;
  off_1002ABF98 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1002ABFA0;
  qword_1002ABFA0 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1002ABFA8;
  qword_1002ABFA8 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1002ABFB0;
  qword_1002ABFB0 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1002ABFB8;
  qword_1002ABFB8 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1002ABFC0;
  qword_1002ABFC0 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1002ABFC8;
  qword_1002ABFC8 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1002ABFD0;
  qword_1002ABFD0 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1002ABFD8;
  qword_1002ABFD8 = v17;

  qword_1002ABFE0 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_100013ECC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

uint64_t sub_100013F14(sqlite3 *a1, void *a2)
{
  v3 = a2;
  sqlite3_extended_result_codes(a1, 1);
  v4 = [v3 encryptionKeyId];

  if (v4)
  {
    [v3 encryptionKeyId];
  }

  v5 = sqlite3_exec(a1, "PRAGMA journal_mode=WAL", 0, 0, 0);
  if (!v5)
  {
    v6 = [[NSString alloc] initWithFormat:@"PRAGMA cache_size=%ld", objc_msgSend(v3, "cacheSize")];
    v5 = sqlite3_exec(a1, [v6 UTF8String], 0, 0, 0);
  }

  return v5;
}

id sub_10001400C(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSFileManager);
  v3 = sub_1000140BC(v1, 0);
  [v2 removeItemAtPath:v3 error:0];

  v4 = sub_1000140BC(v1, 1);
  [v2 removeItemAtPath:v4 error:0];

  v5 = [v2 removeItemAtPath:v1 error:0];
  return v5;
}

id sub_1000140BC(void *a1, uint64_t a2)
{
  v4 = a1;
  v5 = v4;
  if (a2)
  {
    if (a2 != 1)
    {
      goto LABEL_6;
    }

    v6 = @"-wal";
  }

  else
  {
    v6 = @"-shm";
  }

  v2 = [v4 stringByAppendingString:v6];
LABEL_6:

  return v2;
}

id sub_100014134(sqlite3 *a1)
{
  v2 = sqlite3_errcode(a1);
  if (v2)
  {
    v3 = v2;
    v4 = sqlite3_errmsg(a1);
    if (v4)
    {
      v5 = [[NSString alloc] initWithUTF8String:v4];
      v4 = [[NSDictionary alloc] initWithObjectsAndKeys:{v5, NSLocalizedDescriptionKey, 0}];
    }

    v6 = [NSError errorWithDomain:@"SQLiteErrorDomain" code:v3 userInfo:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_10001420C(sqlite3 **a1, void *a2)
{
  v3 = a2;
  ppDb = 0;
  v4 = [v3 databasePath];
  if ([v3 isReadOnly])
  {
    v5 = 2;
  }

  else
  {
    v6 = objc_alloc_init(NSFileManager);
    v7 = [v4 stringByDeletingLastPathComponent];
    [v6 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:0];

    v5 = 6;
  }

  v8 = [v3 protectionType];
  v9 = v8;
  if (v8)
  {
    v5 |= sub_100014338(v8);
  }

  v10 = sqlite3_open_v2([v4 fileSystemRepresentation], &ppDb, v5, 0);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = sub_100013F14(ppDb, v3);
    if (!v11)
    {
      *a1 = ppDb;
      goto LABEL_12;
    }
  }

  if (ppDb)
  {
    sqlite3_close(ppDb);
  }

LABEL_12:

  return v11;
}

uint64_t sub_100014338(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 isEqualToString:NSFileProtectionNone])
    {
      v3 = 0x400000;
    }

    else if ([v2 isEqualToString:NSFileProtectionComplete])
    {
      v3 = 0x100000;
    }

    else if ([v2 isEqualToString:NSFileProtectionCompleteUnlessOpen])
    {
      v3 = 0x200000;
    }

    else if ([v2 isEqualToString:NSFileProtectionCompleteUntilFirstUserAuthentication])
    {
      v3 = 3145728;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL sub_10001440C(void *a1)
{
  ppDb = 0;
  if (sqlite3_open_v2([a1 fileSystemRepresentation], &ppDb, 2, 0))
  {
    return 0;
  }

  v3 = 129;
  v1 = sqlite3_file_control(ppDb, 0, 101, &v3) == 0;
  sqlite3_close(ppDb);
  return v1;
}

void sub_1000147F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001480C(uint64_t a1)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000148B4;
  v7[3] = &unk_100278B50;
  v10 = *(a1 + 56);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v8 = v3;
  v9 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v7];
  v5 = *(*(*(a1 + 48) + 8) + 24);

  return v5;
}

BOOL sub_1000148B4(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [SQLiteEntity _insertValues:a3 intoTable:a2 withPersistentID:a1[6] onConnection:a1[4]];
  if (!result)
  {
    *(*(a1[5] + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

uint64_t sub_100014B88(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() databaseTable];
  *(*(*(a1 + 40) + 8) + 24) = [v2 _deleteRowFromTable:v3 usingColumn:@"ROWID"];

  [objc_opt_class() foreignDatabaseTablesToDelete];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [objc_opt_class() foreignKeyColumnForTable:{v9, v15}];
        if (v10)
        {
          *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _deleteRowFromTable:v9 usingColumn:v10];
          if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
          {

            goto LABEL_12;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v11 = *(a1 + 32);
    v12 = *(v11 + 8);
    *(v11 + 8) = 0;

    v13 = *(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

void sub_100014D58(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  v5 = @"SQLiteUserInfoKeyPersistentID";
  v3 = [NSNumber numberWithLongLong:*(a1 + 32)];
  v6 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  [v2 postNotificationName:@"SQLiteDidDeleteEntityNotification" object:0 userInfo:v4];
}

void sub_100014F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100014F54(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  [v4 bindInt64:v3 atPosition:1];
  LOBYTE(v3) = [v4 hasRows];

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

void sub_100015330(id *a1, void *a2, uint64_t a3)
{
  v5 = a1[6];
  v6 = a2;
  v8 = [v5 disambiguatedSQLForProperty:v6];
  if (a3)
  {
    [a1[4] appendString:{@", "}];
  }

  [a1[4] appendString:v8];
  v7 = [a1[6] joinClauseForProperty:v6];

  if (v7)
  {
    [a1[5] addObject:v7];
  }
}

void sub_1000153E4(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  [v4 bindInt64:v3 atPosition:1];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000154AC;
  v5[3] = &unk_100278C10;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  [v4 enumerateRowsUsingBlock:v5];
}

void sub_1000154AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if (v5)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100015588;
    v9[3] = &unk_100278368;
    v8 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v5;
    [v8 enumerateObjectsUsingBlock:v9];
  }

  objc_autoreleasePoolPop(v7);
}

void sub_100015588(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = sub_10000278C(v5, a3);
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

void sub_1000157E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100015804(uint64_t a1)
{
  v2 = [*(a1 + 32) _copyTableClusteredValuesWithValues:*(a1 + 40)];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000158C8;
  v7[3] = &unk_100278CB0;
  v11 = *(a1 + 64);
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v8 = v3;
  v9 = v4;
  v10 = *(a1 + 56);
  [v2 enumerateKeysAndObjectsUsingBlock:v7];
  v5 = *(*(*(a1 + 56) + 8) + 24);

  return v5;
}

void sub_1000158C8(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 56) foreignKeyColumnForTable:v7];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = @"ROWID";
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 1;
  if (([v7 isEqualToString:*(a1 + 32)] & 1) == 0)
  {
    v11 = [[NSMutableString alloc] initWithString:@"SELECT 1 FROM "];
    [v11 appendString:v7];
    [v11 appendString:@" WHERE "];
    [v11 appendString:v10];
    [v11 appendString:@" =  ? LIMIT 1;"];
    v12 = *(a1 + 40);
    v13 = *(v12 + 8);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100015C74;
    v30[3] = &unk_100278430;
    v30[4] = v12;
    v30[5] = &v31;
    [v13 executeQuery:v11 withResults:v30];
  }

  if (v32[3])
  {
    v14 = objc_alloc_init(NSMutableArray);
    v15 = [[NSMutableString alloc] initWithString:@"UPDATE "];
    [v15 appendString:v7];
    [v15 appendString:@" SET "];
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v29 = 0;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100015CD4;
    v24[3] = &unk_100278C60;
    v27 = v28;
    v16 = v15;
    v25 = v16;
    v17 = v14;
    v26 = v17;
    [v8 enumerateKeysAndObjectsUsingBlock:v24];
    [v16 appendString:@" WHERE "];
    [v16 appendString:v7];
    [v16 appendString:@"."];
    [v16 appendString:v10];
    [v16 appendString:@" = ?;"];
    v18 = *(*(a1 + 40) + 8);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100015D84;
    v21[3] = &unk_100278C88;
    v19 = v17;
    v20 = *(a1 + 40);
    v22 = v19;
    v23 = v20;
    *(*(*(a1 + 48) + 8) + 24) = [v18 executeStatement:v16 error:0 bindings:v21];

    _Block_object_dispose(v28, 8);
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = [SQLiteEntity _insertValues:v8 intoTable:v7 withPersistentID:*(*(a1 + 40) + 16) onConnection:*(*(a1 + 40) + 8)];
  }

  *a4 = *(*(*(a1 + 48) + 8) + 24) ^ 1;
  _Block_object_dispose(&v31, 8);
}

void sub_100015C74(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  [v4 bindInt64:v3 atPosition:1];
  LOBYTE(v3) = [v4 hasRows];

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

void sub_100015CD4(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    [*(a1 + 32) appendString:{@", "}];
  }

  [*(a1 + 32) appendString:v6];
  [*(a1 + 32) appendString:@" = ?"];
  *(*(*(a1 + 48) + 8) + 24) = 1;
  [*(a1 + 40) addObject:v5];
}

void sub_100015D84(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    v8 = 1;
    do
    {
      v9 = 0;
      v10 = v8;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v8 = (v10 + 1);
        sub_100007A68(v3, v10, *(*(&v11 + 1) + 8 * v9));
        v9 = v9 + 1;
        v10 = v8;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 1;
  }

  [v3 bindInt64:*(*(a1 + 40) + 16) atPosition:{v8, v11}];
}

void sub_1000162CC(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 bindInt64:*(a1 + 40) atPosition:1];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    v8 = 2;
    do
    {
      v9 = 0;
      v10 = v8;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v8 = (v10 + 1);
        v11 = [*(a1 + 32) objectForKeyedSubscript:{*(*(&v12 + 1) + 8 * v9), v12}];
        sub_100007A68(v3, v10, v11);

        v9 = v9 + 1;
        v10 = v8;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

void sub_10001650C(id *a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (([v10 isEqualToString:@"ROWID"] & 1) == 0)
  {
    v6 = [a1[6] foreignDatabaseTableForProperty:v10];
    if (v6)
    {
      v7 = v6;
      v8 = [a1[6] foreignDatabaseColumnForProperty:v10];
    }

    else
    {
      v8 = v10;
      v7 = a1[4];
    }

    v9 = [a1[5] objectForKey:v7];
    if (!v9)
    {
      v9 = objc_alloc_init(NSMutableDictionary);
      [a1[5] setObject:v9 forKey:v7];
    }

    [v9 setObject:v5 forKey:v8];
  }
}

void sub_10001698C(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1002AC400;
  off_1002AC400 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1002BD428;
  qword_1002BD428 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1002BD430;
  qword_1002BD430 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1002BD438;
  qword_1002BD438 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1002BD440;
  qword_1002BD440 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1002BD448;
  qword_1002BD448 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1002BD450;
  qword_1002BD450 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1002BD458;
  qword_1002BD458 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1002BD460;
  qword_1002BD460 = v17;

  qword_1002BD468 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_100016BA8(id a1)
{
  v1 = qword_1002BD478;
  qword_1002BD478 = &off_100299A28;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_1001F6738();
  sub_10001A278();
  v5 = v4;
  __chkstk_darwin(v6, v7);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F6768();
  sub_10001A278();
  v12 = v11;
  __chkstk_darwin(v13, v14);
  v16 = aBlock - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  qword_1002E6040 = [objc_allocWithZone(type metadata accessor for OctaneXPCServiceDelegate()) init];
  qword_1002E6048 = [objc_opt_self() serviceListener];
  [qword_1002E6048 setDelegate:qword_1002E6040];
  sub_100019C0C(0, &qword_1002AC600);
  sub_100019C0C(0, &qword_1002BA630);
  v17 = sub_1001F7318();
  v18 = sub_1001F7368();

  qword_1002E6050 = v18;
  swift_getObjectType();
  aBlock[4] = sub_100017094;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000172C0;
  aBlock[3] = &unk_10027DDD0;
  v19 = _Block_copy(aBlock);
  sub_1001F6758();
  sub_10001731C();
  sub_1001F7378();
  _Block_release(v19);
  (*(v5 + 8))(v9, v3);
  (*(v12 + 8))(v16, v10);
  swift_getObjectType();
  sub_1001F7388();
  [qword_1002E6048 activate];
  return 0;
}

void sub_100017094()
{
  if (qword_1002AC510 != -1)
  {
    swift_once();
  }

  v0 = sub_1001F6688();
  sub_100019C94(v0, qword_1002E6180);
  v1 = sub_1001F6668();
  v2 = sub_1001F72B8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Stopping Octane server", v3, 2u);
  }

  if (qword_1002AC468 != -1)
  {
    swift_once();
  }

  sub_1000E56A0();
  [qword_1002E6048 invalidate];
  exit(0);
}

uint64_t sub_1000172C0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100017304(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001731C()
{
  sub_1001F6738();
  sub_100019B78(&qword_1002BA610, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000183C4(&qword_1002AC880);
  sub_100019C4C(&qword_1002BA620, &qword_1002AC880);
  return sub_1001F7708();
}

uint64_t sub_10001744C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1001F7B48();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

double variable initialization expression of ByteToMessageHandler.buffer@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 47) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

double Channel.syncOptions.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t variable initialization expression of MultiThreadedEventLoopGroup.index()
{
  sub_1000183C4(&qword_1002AC618);
  swift_bufferAllocate();
  v0 = swift_unknownObjectRetain();
  sub_100006B94((v0 + 16), 0);
  swift_unknownObjectRelease();

  return swift_dynamicCastClassUnconditional();
}

uint64_t sub_100017604(void (*a1)(void *, uint64_t, void *))
{
  v1 = _swiftEmptyArrayStorage;
  if (!(_swiftEmptyArrayStorage >> 62))
  {
    return v1;
  }

  v4 = sub_1001F7B48();
  if (!v4)
  {
    return v1;
  }

  v5 = v4;
  v1 = sub_100017E88();
  a1(v1 + 4, v5, _swiftEmptyArrayStorage);
  v7 = v6;

  if (v7 == v5)
  {
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001768C()
{
  sub_1000183C4(&qword_1002AC608);
  sub_10001840C();

  return sub_1001F69B8();
}

unint64_t variable initialization expression of EmbeddedChannelCore.pendingOutboundBuffer@<X0>(uint64_t a1@<X8>)
{
  result = sub_10002EC00(0x10uLL);
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  return result;
}

uint64_t sub_1000177A0(void (*a1)(void), uint64_t a2, uint64_t (*a3)(void))
{
  a1(0);
  swift_allocObject();
  return a3();
}

uint64_t sub_1000177F4@<X0>(uint64_t *a1@<X8>)
{
  result = variable initialization expression of MessageToByteHandler.state();
  *a1 = result;
  return result;
}

uint64_t sub_10001781C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000EC36C(*a1, *v2);
  *a2 = result;
  return result;
}

void sub_100017888(uint64_t a1@<X8>)
{
  sub_1000178BC();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

uint64_t sub_1000178C4()
{
  v1 = sub_10001A234();
  result = debugOnly(_:)(v1, v2, v3, v4, v5, v6);
  *v0 = result;
  return result;
}

Swift::Int sub_100017990()
{
  sub_1001F8068();
  swift_getWitnessTable();
  sub_1001F6648();
  return sub_1001F80D8();
}

_DWORD *sub_1000179F8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_100017A2C()
{
  swift_getWitnessTable();

  return sub_1001F6638();
}

void *sub_100017B1C()
{
  sub_10001A228();
  if (!v0)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000183C4(&qword_1002AC818);
  v1 = sub_10001A2A4();
  sub_10001A20C(v1);
  sub_10001A19C(v2);
  return v0;
}

void *sub_100017B94()
{
  sub_10001A228();
  if (!v0)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10001A250(v1, v2, v3);
  v4 = sub_10001A2A4();
  sub_10001A20C(v4);
  sub_10001A19C(v5);
  return v0;
}

void *sub_100017C08(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000183C4(&qword_1002AC7C0);
  v4 = *(sub_1000183C4(&qword_1002AC7C8) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100017D24()
{
  sub_10001A228();
  if (!v0)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10001A250(v1, v2, v3);
  v4 = sub_10001A2A4();
  sub_10001A20C(v4);
  sub_10001A19C(v5);
  return v0;
}

void *sub_100017D98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10001A250(a1, a2, a3);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = v5;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100017E88()
{
  sub_10001A228();
  if (!v0)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = v1;
  sub_1000183C4(&unk_1002B3460);
  v3 = sub_10001A2A4();
  sub_10001A20C(v3);
  *(v0 + 16) = v2;
  *(v0 + 24) = (2 * (v4 / 8)) | 1;
  return v0;
}

void *sub_100017EF8()
{
  sub_10001A228();
  if (!v0)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000183C4(&qword_1002AC850);
  v1 = swift_allocObject();
  sub_10001A20C(v1);
  sub_10001A19C(v2);
  return v0;
}

uint64_t sub_10001823C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1001F7B48();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_10001744C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for ScheduledTask();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_100019C4C(&qword_1002AC878, &qword_1002AC870);
        for (i = 0; i != v7; ++i)
        {
          sub_1000183C4(&qword_1002AC870);
          v9 = sub_1001DB328(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000183C4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10001840C()
{
  result = qword_1002AC610;
  if (!qword_1002AC610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AC610);
  }

  return result;
}

uint64_t sub_10001858C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1001F7B48();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_10001744C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for EmbeddedScheduledTask();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_100019C4C(&qword_1002AC860, &qword_1002AC858);
        for (i = 0; i != v7; ++i)
        {
          sub_1000183C4(&qword_1002AC858);
          v9 = sub_1001DB260(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100018734(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100018788(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100018804(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 sub_100018834(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100018840(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return sub_10001A144(a1);
  }

  else
  {
    return static _UInt24.min.getter();
  }
}

uint64_t sub_100018854(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 sub_100018894(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1000188A8(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return sub_10001A144(a1);
  }

  else
  {
    return static _UInt24.min.getter();
  }
}

uint64_t sub_1000188BC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

__n128 sub_100018908(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10001891C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001893C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

uint64_t sub_100018998(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return sub_10001A144(a1);
  }

  else
  {
    return static _UInt24.min.getter();
  }
}

uint64_t storeEnumTagSinglePayload for HTTPVersion(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1000189F0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 0x2000))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100018A14(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8184) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 4344) = 0u;
    *(result + 4328) = 0u;
    *(result + 4312) = 0u;
    *(result + 4296) = 0u;
    *(result + 4280) = 0u;
    *(result + 4264) = 0u;
    *(result + 4248) = 0u;
    *(result + 4232) = 0u;
    *(result + 4216) = 0u;
    *(result + 4200) = 0u;
    *(result + 4184) = 0u;
    *(result + 4168) = 0u;
    *(result + 4152) = 0u;
    *(result + 4136) = 0u;
    *(result + 4120) = 0u;
    *(result + 4104) = 0u;
    *(result + 4088) = 0u;
    *(result + 4072) = 0u;
    *(result + 4056) = 0u;
    *(result + 4040) = 0u;
    *(result + 4024) = 0u;
    *(result + 4008) = 0u;
    *(result + 3992) = 0u;
    *(result + 3976) = 0u;
    *(result + 3960) = 0u;
    *(result + 3944) = 0u;
    *(result + 3928) = 0u;
    *(result + 3912) = 0u;
    *(result + 3896) = 0u;
    *(result + 3880) = 0u;
    *(result + 3864) = 0u;
    *(result + 3848) = 0u;
    *(result + 3832) = 0u;
    *(result + 3816) = 0u;
    *(result + 3800) = 0u;
    *(result + 3784) = 0u;
    *(result + 3768) = 0u;
    *(result + 3752) = 0u;
    *(result + 3736) = 0u;
    *(result + 3720) = 0u;
    *(result + 3704) = 0u;
    *(result + 3688) = 0u;
    *(result + 3672) = 0u;
    *(result + 3656) = 0u;
    *(result + 3640) = 0u;
    *(result + 3624) = 0u;
    *(result + 3608) = 0u;
    *(result + 3592) = 0u;
    *(result + 3576) = 0u;
    *(result + 3560) = 0u;
    *(result + 3544) = 0u;
    *(result + 3528) = 0u;
    *(result + 3512) = 0u;
    *(result + 3496) = 0u;
    *(result + 3480) = 0u;
    *(result + 3464) = 0u;
    *(result + 3448) = 0u;
    *(result + 3432) = 0u;
    *(result + 3416) = 0u;
    *(result + 3400) = 0u;
    *(result + 3384) = 0u;
    *(result + 3368) = 0u;
    *(result + 3352) = 0u;
    *(result + 3336) = 0u;
    *(result + 3320) = 0u;
    *(result + 3304) = 0u;
    *(result + 3288) = 0u;
    *(result + 3272) = 0u;
    *(result + 3256) = 0u;
    *(result + 3240) = 0u;
    *(result + 3224) = 0u;
    *(result + 3208) = 0u;
    *(result + 3192) = 0u;
    *(result + 3176) = 0u;
    *(result + 3160) = 0u;
    *(result + 3144) = 0u;
    *(result + 3128) = 0u;
    *(result + 3112) = 0u;
    *(result + 3096) = 0u;
    *(result + 3080) = 0u;
    *(result + 3064) = 0u;
    *(result + 3048) = 0u;
    *(result + 3032) = 0u;
    *(result + 3016) = 0u;
    *(result + 3000) = 0u;
    *(result + 2984) = 0u;
    *(result + 2968) = 0u;
    *(result + 2952) = 0u;
    *(result + 2936) = 0u;
    *(result + 2920) = 0u;
    *(result + 2904) = 0u;
    *(result + 2888) = 0u;
    *(result + 2872) = 0u;
    *(result + 2856) = 0u;
    *(result + 2840) = 0u;
    *(result + 2824) = 0u;
    *(result + 2808) = 0u;
    *(result + 2792) = 0u;
    *(result + 2776) = 0u;
    *(result + 2760) = 0u;
    *(result + 2744) = 0u;
    *(result + 2728) = 0u;
    *(result + 2712) = 0u;
    *(result + 2696) = 0u;
    *(result + 2680) = 0u;
    *(result + 2664) = 0u;
    *(result + 2648) = 0u;
    *(result + 2632) = 0u;
    *(result + 2616) = 0u;
    *(result + 2600) = 0u;
    *(result + 2584) = 0u;
    *(result + 2568) = 0u;
    *(result + 2552) = 0u;
    *(result + 2536) = 0u;
    *(result + 2520) = 0u;
    *(result + 2504) = 0u;
    *(result + 2488) = 0u;
    *(result + 2472) = 0u;
    *(result + 2456) = 0u;
    *(result + 2440) = 0u;
    *(result + 2424) = 0u;
    *(result + 2408) = 0u;
    *(result + 2392) = 0u;
    *(result + 2376) = 0u;
    *(result + 2360) = 0u;
    *(result + 2344) = 0u;
    *(result + 2328) = 0u;
    *(result + 2312) = 0u;
    *(result + 2296) = 0u;
    *(result + 2280) = 0u;
    *(result + 2264) = 0u;
    *(result + 2248) = 0u;
    *(result + 2232) = 0u;
    *(result + 2216) = 0u;
    *(result + 2200) = 0u;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 536) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 8168) = 0u;
    *(result + 8152) = 0u;
    *(result + 8136) = 0u;
    *(result + 8120) = 0u;
    *(result + 8104) = 0u;
    *(result + 8088) = 0u;
    *(result + 8072) = 0u;
    *(result + 8056) = 0u;
    *(result + 8040) = 0u;
    *(result + 8024) = 0u;
    *(result + 8008) = 0u;
    *(result + 7992) = 0u;
    *(result + 7976) = 0u;
    *(result + 7960) = 0u;
    *(result + 7944) = 0u;
    *(result + 7928) = 0u;
    *(result + 7912) = 0u;
    *(result + 7896) = 0u;
    *(result + 7880) = 0u;
    *(result + 7864) = 0u;
    *(result + 7848) = 0u;
    *(result + 7832) = 0u;
    *(result + 7816) = 0u;
    *(result + 7800) = 0u;
    *(result + 7784) = 0u;
    *(result + 7768) = 0u;
    *(result + 7752) = 0u;
    *(result + 7736) = 0u;
    *(result + 7720) = 0u;
    *(result + 7704) = 0u;
    *(result + 7688) = 0u;
    *(result + 7672) = 0u;
    *(result + 7656) = 0u;
    *(result + 7640) = 0u;
    *(result + 7624) = 0u;
    *(result + 7608) = 0u;
    *(result + 7592) = 0u;
    *(result + 7576) = 0u;
    *(result + 7560) = 0u;
    *(result + 7544) = 0u;
    *(result + 7528) = 0u;
    *(result + 7512) = 0u;
    *(result + 7496) = 0u;
    *(result + 7480) = 0u;
    *(result + 7464) = 0u;
    *(result + 7448) = 0u;
    *(result + 7432) = 0u;
    *(result + 7416) = 0u;
    *(result + 7400) = 0u;
    *(result + 7384) = 0u;
    *(result + 7368) = 0u;
    *(result + 7352) = 0u;
    *(result + 7336) = 0u;
    *(result + 7320) = 0u;
    *(result + 7304) = 0u;
    *(result + 7288) = 0u;
    *(result + 7272) = 0u;
    *(result + 7256) = 0u;
    *(result + 7240) = 0u;
    *(result + 7224) = 0u;
    *(result + 7208) = 0u;
    *(result + 7192) = 0u;
    *(result + 7176) = 0u;
    *(result + 7160) = 0u;
    *(result + 7144) = 0u;
    *(result + 7128) = 0u;
    *(result + 7112) = 0u;
    *(result + 7096) = 0u;
    *(result + 7080) = 0u;
    *(result + 7064) = 0u;
    *(result + 7048) = 0u;
    *(result + 7032) = 0u;
    *(result + 7016) = 0u;
    *(result + 7000) = 0u;
    *(result + 6984) = 0u;
    *(result + 6968) = 0u;
    *(result + 6952) = 0u;
    *(result + 6936) = 0u;
    *(result + 6920) = 0u;
    *(result + 6904) = 0u;
    *(result + 6888) = 0u;
    *(result + 6872) = 0u;
    *(result + 6856) = 0u;
    *(result + 6840) = 0u;
    *(result + 6824) = 0u;
    *(result + 6808) = 0u;
    *(result + 6792) = 0u;
    *(result + 6776) = 0u;
    *(result + 6760) = 0u;
    *(result + 6744) = 0u;
    *(result + 6728) = 0u;
    *(result + 6712) = 0u;
    *(result + 6696) = 0u;
    *(result + 6680) = 0u;
    *(result + 6664) = 0u;
    *(result + 6648) = 0u;
    *(result + 6632) = 0u;
    *(result + 6616) = 0u;
    *(result + 6600) = 0u;
    *(result + 6584) = 0u;
    *(result + 6568) = 0u;
    *(result + 6552) = 0u;
    *(result + 6536) = 0u;
    *(result + 6520) = 0u;
    *(result + 6504) = 0u;
    *(result + 6488) = 0u;
    *(result + 6472) = 0u;
    *(result + 6456) = 0u;
    *(result + 6440) = 0u;
    *(result + 6424) = 0u;
    *(result + 6408) = 0u;
    *(result + 6392) = 0u;
    *(result + 6376) = 0u;
    *(result + 6360) = 0u;
    *(result + 6344) = 0u;
    *(result + 6328) = 0u;
    *(result + 6312) = 0u;
    *(result + 6296) = 0u;
    *(result + 6280) = 0u;
    *(result + 6264) = 0u;
    *(result + 6248) = 0u;
    *(result + 6232) = 0u;
    *(result + 6216) = 0u;
    *(result + 6200) = 0u;
    *(result + 6184) = 0u;
    *(result + 6168) = 0u;
    *(result + 6152) = 0u;
    *(result + 6136) = 0u;
    *(result + 6120) = 0u;
    *(result + 6104) = 0u;
    *(result + 6088) = 0u;
    *(result + 6072) = 0u;
    *(result + 6056) = 0u;
    *(result + 6040) = 0u;
    *(result + 6024) = 0u;
    *(result + 6008) = 0u;
    *(result + 5992) = 0u;
    *(result + 5976) = 0u;
    *(result + 5960) = 0u;
    *(result + 5944) = 0u;
    *(result + 5928) = 0u;
    *(result + 5912) = 0u;
    *(result + 5896) = 0u;
    *(result + 5880) = 0u;
    *(result + 5864) = 0u;
    *(result + 5848) = 0u;
    *(result + 5832) = 0u;
    *(result + 5816) = 0u;
    *(result + 5800) = 0u;
    *(result + 5784) = 0u;
    *(result + 5768) = 0u;
    *(result + 5752) = 0u;
    *(result + 5736) = 0u;
    *(result + 5720) = 0u;
    *(result + 5704) = 0u;
    *(result + 5688) = 0u;
    *(result + 5672) = 0u;
    *(result + 5656) = 0u;
    *(result + 5640) = 0u;
    *(result + 5624) = 0u;
    *(result + 5608) = 0u;
    *(result + 5592) = 0u;
    *(result + 5576) = 0u;
    *(result + 5560) = 0u;
    *(result + 5544) = 0u;
    *(result + 5528) = 0u;
    *(result + 5512) = 0u;
    *(result + 5496) = 0u;
    *(result + 5480) = 0u;
    *(result + 5464) = 0u;
    *(result + 5448) = 0u;
    *(result + 5432) = 0u;
    *(result + 5416) = 0u;
    *(result + 5400) = 0u;
    *(result + 5384) = 0u;
    *(result + 5368) = 0u;
    *(result + 5352) = 0u;
    *(result + 5336) = 0u;
    *(result + 5320) = 0u;
    *(result + 5304) = 0u;
    *(result + 5288) = 0u;
    *(result + 5272) = 0u;
    *(result + 5256) = 0u;
    *(result + 5240) = 0u;
    *(result + 5224) = 0u;
    *(result + 5208) = 0u;
    *(result + 5192) = 0u;
    *(result + 5176) = 0u;
    *(result + 5160) = 0u;
    *(result + 5144) = 0u;
    *(result + 5128) = 0u;
    *(result + 5112) = 0u;
    *(result + 5096) = 0u;
    *(result + 5080) = 0u;
    *(result + 5064) = 0u;
    *(result + 5048) = 0u;
    *(result + 5032) = 0u;
    *(result + 5016) = 0u;
    *(result + 5000) = 0u;
    *(result + 4984) = 0u;
    *(result + 4968) = 0u;
    *(result + 4952) = 0u;
    *(result + 4936) = 0u;
    *(result + 4920) = 0u;
    *(result + 4904) = 0u;
    *(result + 4888) = 0u;
    *(result + 4872) = 0u;
    *(result + 4856) = 0u;
    *(result + 4840) = 0u;
    *(result + 4824) = 0u;
    *(result + 4808) = 0u;
    *(result + 4792) = 0u;
    *(result + 4776) = 0u;
    *(result + 4760) = 0u;
    *(result + 4744) = 0u;
    *(result + 4728) = 0u;
    *(result + 4712) = 0u;
    *(result + 4696) = 0u;
    *(result + 4680) = 0u;
    *(result + 4664) = 0u;
    *(result + 4648) = 0u;
    *(result + 4632) = 0u;
    *(result + 4616) = 0u;
    *(result + 4600) = 0u;
    *(result + 4584) = 0u;
    *(result + 4568) = 0u;
    *(result + 4552) = 0u;
    *(result + 4536) = 0u;
    *(result + 4520) = 0u;
    *(result + 4504) = 0u;
    *(result + 4488) = 0u;
    *(result + 4472) = 0u;
    *(result + 4456) = 0u;
    *(result + 4440) = 0u;
    *(result + 4424) = 0u;
    *(result + 4408) = 0u;
    *(result + 4392) = 0u;
    *(result + 4376) = 0u;
    *(result + 4360) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 0x2000) = v3;
  return result;
}

__n128 sub_100019338(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 sub_1000193A8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000193C4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000193E4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 56) = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for OctaneConfigurationVersion(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t storeEnumTagSinglePayload for OctaneConfigurationVersion(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_100019498(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return sub_10001A144(a1);
  }

  else
  {
    return static _UInt24.min.getter();
  }
}

uint64_t storeEnumTagSinglePayload for NIOFileHandle.Flags(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_10001955C(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return static _UInt24.min.getter();
  }

  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if ((a2 + 0xFFFF) < 0xFF0000)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 0xFFFF;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        return static _UInt24.min.getter();
      }

      return (*a1 | (v4 << 16)) - 0xFFFF;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 0xFFFF;
    }
  }

  return static _UInt24.min.getter();
}

uint64_t sub_1000195CC(uint64_t result, int a2, int a3)
{
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((a3 + 0xFFFF) < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        return result;
      case 2:
        *(result + 2) = v6;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *(result + 2) = v6;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *(result + 2) = 0;
      break;
    case 2:
      *(result + 2) = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x100019680);
    case 4:
      *(result + 2) = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000196F8(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return static _UInt24.min.getter();
  }

  if ((a2 + 255) >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 255) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 255;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        return static _UInt24.min.getter();
      }

      return (*a1 | (v4 << 8)) - 255;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 255;
    }
  }

  return static _UInt24.min.getter();
}

_BYTE *sub_100019760(_BYTE *result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        return result;
      case 2:
        *(result + 1) = v6;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *(result + 1) = v6;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      result[1] = 0;
      break;
    case 2:
      *(result + 1) = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x100019814);
    case 4:
      *(result + 1) = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100019858(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100019878(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 128) = v3;
  return result;
}

uint64_t sub_1000198F4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 112))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100019914(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 112) = v3;
  return result;
}

uint64_t sub_1000199AC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 106))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000199CC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 106) = v3;
  return result;
}

__n128 sub_100019A3C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_100019A50(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 28))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100019A70(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 28) = v3;
  return result;
}

__n128 sub_100019AB4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100019AC0(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return sub_10001A144(a1);
  }

  else
  {
    return static _UInt24.min.getter();
  }
}

uint64_t sub_100019B78(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100019BC4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100019C0C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100019C4C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100019BC4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100019C94(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100019CCC(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

__n128 sub_100019D68(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_100019D7C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100019D9C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 20) = v3;
  return result;
}

__n128 sub_100019DDC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100019DF0(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100019E44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100019F8C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_100019FA0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100019FC0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 12) = v3;
  return result;
}

void sub_10001A014(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_10001A0CC(unint64_t *a1)
{

  return sub_100019C4C(a1, v1);
}

uint64_t sub_10001A16C()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_10001A250(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_1000183C4(a3);
}

uint64_t sub_10001A28C()
{

  return sub_1000183C4(v0);
}

uint64_t sub_10001A2A4()
{

  return swift_allocObject();
}

uint64_t sub_10001A2D8()
{
  v5 = 0;
  sub_1001F6248(0);
  v1 = sub_1001F6B48();

  v2 = [v0 fileExistsAtPath:v1 isDirectory:&v5];

  if (v5)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return v3 | v2;
}

uint64_t sub_10001A38C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_1001F7EA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x444970756F7267 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1001F7EA8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int ChannelPipelineError.hashValue.getter(char a1)
{
  sub_1001F8068();
  sub_1001F8088(a1 & 1);
  return sub_1001F80D8();
}

uint64_t sub_10001A4D4(char a1)
{
  if (a1)
  {
    return 0x444970756F7267;
  }

  else
  {
    return 0x4449656C646E7562;
  }
}

Swift::Int sub_10001A528()
{
  v1 = *v0;
  sub_1001F8068();
  NIOHTTPObjectAggregatorEvent.hash(into:)(v3, v1);
  return sub_1001F80D8();
}

uint64_t sub_10001A574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10001A38C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10001A5BC@<X0>(_BYTE *a1@<X8>)
{
  result = static NIOHTTPObjectAggregatorError.endingIgnoredMessage.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10001A5E4(uint64_t a1)
{
  v2 = sub_10001AF3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001A620(uint64_t a1)
{
  v2 = sub_10001AF3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001A65C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[0] = a4;
  v15[1] = a5;
  v7 = sub_1000183C4(&qword_1002AC9E8);
  sub_10001A278();
  v9 = v8;
  __chkstk_darwin(v10, v11);
  v13 = v15 - v12;
  sub_10001AE68(a1, a1[3]);
  sub_10001AF3C();
  sub_1001F8198();
  v17 = 0;
  sub_1001F7D88();
  if (!v5)
  {
    v16 = 1;
    sub_1001F7D88();
  }

  return (*(v9 + 8))(v13, v7);
}

uint64_t sub_10001A7C8(void *a1)
{
  sub_1000183C4(&qword_1002AC9D8);
  sub_10001A278();
  __chkstk_darwin(v3, v4);
  v5 = a1[4];
  sub_10001AE68(a1, a1[3]);
  sub_10001AF3C();
  sub_1001F8178();
  if (!v1)
  {
    v5 = sub_1001F7C78();
    sub_1001F7C78();
    v7 = sub_10001B260();
    v8(v7);
  }

  sub_100019CCC(a1);
  return v5;
}

uint64_t sub_10001A988@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10001A7C8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

double sub_10001A9D8@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1001EFDF8();
  if (v3)
  {
    sub_10001AA8C(v2, v3, v4, v5);

    v6 = 3;
  }

  else
  {
    v6 = 21;
  }

  type metadata accessor for HTTPResponseHead._Storage();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = v6;
  *(v7 + 40) = 65537;
  *a1 = v7;
  *(a1 + 8) = _swiftEmptyArrayStorage;
  *(a1 + 16) = 2;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 55) = 0;
  return result;
}

void sub_10001AA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10001AE68((v4 + 88), *(v4 + 112));
  sub_10001B250();
  sub_10008ACA8();
  sub_10001B270();
  sub_10001B250();
  if (sub_10008ACA8())
  {
    sub_10001B270();
    v7 = sub_10001B250();
    sub_10008AEDC(v7, v8);
    if (qword_1002AC510 != -1)
    {
      sub_10001B230();
    }

    v9 = sub_1001F6688();
    sub_100019C94(v9, qword_1002E6180);
    osloga = sub_1001F6668();
    v10 = sub_1001F72B8();
    if (os_log_type_enabled(osloga, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, osloga, v10, "Resolved transactions in billing error.", v11, 2u);
    }
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      sub_10001B230();
    }

    v12 = sub_1001F6688();
    sub_100019C94(v12, qword_1002E6180);
    v13 = sub_1001F6668();
    v14 = sub_1001F72B8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Did not find any transactions in billing error. Purchasing last transaction.", v15, 2u);
    }

    sub_10001B270();
    sub_1000183C4(&qword_1002AC7E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001FE9E0;
    *(inited + 32) = a3;
    *(inited + 40) = a4;

    sub_10008B3C8();
    v18 = v17;
    swift_setDeallocating();
    sub_1001E56B4();
    if (sub_10013B560(v18))
    {
      sub_1001C19A8(0, (v18 & 0xC000000000000001) == 0, v18);
      if ((v18 & 0xC000000000000001) != 0)
      {
        v19 = sub_1001F7808();
      }

      else
      {
        v19 = *(v18 + 32);
      }

      v20 = v19;

      sub_10001B270();
      sub_10008BF94(v20, 0, v21, v22, v23, v24, v25, v26, v29, oslog, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
      v28 = v27;
    }

    else
    {
    }
  }
}

unint64_t sub_10001AD5C(Swift::String a1, uint64_t a2, void *a3)
{
  sub_1001F6CA8(a1);
  v6._countAndFlagsBits = 38;
  v6._object = 0xE100000000000000;
  sub_1001F6CA8(v6);
  v7._countAndFlagsBits = 6580578;
  v7._object = 0xE300000000000000;
  sub_1001F6CA8(v7);
  v8._countAndFlagsBits = 61;
  v8._object = 0xE100000000000000;
  sub_1001F6CA8(v8);
  v9._countAndFlagsBits = a2;
  v9._object = a3;
  sub_1001F6CA8(v9);
  return 0xD000000000000013;
}

uint64_t sub_10001ADFC()
{
  v0 = sub_100082E38();
  sub_100019CCC(v0 + 88);

  return swift_deallocClassInstance();
}

void *sub_10001AE68(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10001AEAC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001AEEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10001AF3C()
{
  result = qword_1002AC9E0;
  if (!qword_1002AC9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AC9E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BillingErrorHelperRoute.Request.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BillingErrorHelperRoute.Request.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10001B0E4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10001B12C()
{
  result = qword_1002AC9F0;
  if (!qword_1002AC9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AC9F0);
  }

  return result;
}

unint64_t sub_10001B184()
{
  result = qword_1002AC9F8;
  if (!qword_1002AC9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AC9F8);
  }

  return result;
}

unint64_t sub_10001B1DC()
{
  result = qword_1002ACA00;
  if (!qword_1002ACA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ACA00);
  }

  return result;
}

uint64_t sub_10001B230()
{

  return swift_once();
}

void *sub_10001B270()
{
  v2 = *(v0 + 112);

  return sub_10001AE68((v0 + 88), v2);
}

uint64_t sub_10001B288(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100279478;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10001B2E0(char a1)
{
  if (!a1)
  {
    return 0x702D6C72752D3276;
  }

  if (a1 == 1)
  {
    return 0x657070616D2D3276;
  }

  return 0xD000000000000014;
}

uint64_t sub_10001B378@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001B288(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_10001B3A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001B2E0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10001B3DC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10001B288(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10001B410(uint64_t a1)
{
  v2 = sub_10001DFE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001B44C(uint64_t a1)
{
  v2 = sub_10001DFE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10001B488()
{
  sub_10001E850();
  v11 = v1;
  v3 = v2;
  v4 = sub_1000183C4(&qword_1002ACB88);
  sub_10001A278();
  v6 = v5;
  sub_10001E844();
  __chkstk_darwin(v7, v8);
  v10 = &v11 - v9;
  sub_10001AE68(v3, v3[3]);
  sub_10001DFE0();
  sub_1001F8198();
  v12 = 0;
  sub_1000183C4(&qword_1002ACA10);
  sub_10001E708(&qword_1002ACB30);
  sub_10001E7A0();
  if (!v0)
  {
    v12 = 1;
    sub_1000183C4(&qword_1002ACB78);
    sub_10001E034(&qword_1002ACB90);
    sub_1001F7DC8();
    v12 = 2;
    sub_10001E7A0();
  }

  (*(v6 + 8))(v10, v4);
  sub_10001E868();
}

void sub_10001B664()
{
  sub_10001E850();
  v2 = v1;
  sub_1000183C4(&qword_1002ACB68);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v3, v4);
  sub_10001AE68(v2, v2[3]);
  sub_10001DFE0();
  sub_10001E838();
  sub_1001F8178();
  if (!v0)
  {
    sub_1000183C4(&qword_1002ACA10);
    sub_10001E73C(&qword_1002ACB50);
    sub_10001E7E8();
    sub_1001F7CB8();
    sub_1000183C4(&qword_1002ACB78);
    sub_10001E034(&qword_1002ACB80);
    sub_1001F7CB8();
    sub_10001E7E8();
    sub_1001F7C48();
    v5 = sub_10001E72C();
    v6(v5);
  }

  sub_100019CCC(v2);
  sub_10001E868();
}

void sub_10001B8E0(void *a1@<X8>)
{
  sub_10001B664();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
  }
}

uint64_t sub_10001B930@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, __int128 *a4@<X4>, uint64_t *a5@<X8>)
{
  a5[17] = 100;
  v10 = type metadata accessor for BagResponse();
  v29 = a5 + v10[19];
  v11 = *(a3 + 8);
  v12 = (a5 + v10[17]);
  *v12 = *a3;
  v12[1] = v11;
  v32 = *(a3 + 48);
  sub_10001C790();

  v13 = sub_1001F75D8();
  v14 = (a5 + v10[21]);
  *v14 = v13;
  v14[1] = v15;
  v17 = *(a3 + 32);
  v16 = *(a3 + 40);

  sub_10001C7E4(a3);
  v18 = (a5 + v10[18]);
  *v18 = v17;
  v18[1] = v16;
  v32 = *a4;
  v19 = sub_1001F75F8();
  v21 = v20;
  v31 = a4[1];
  sub_10001C838(&v31);
  v30 = *(a4 + 4);
  sub_10001C88C(&v30);
  sub_10001C838(&v32);
  v22 = (a5 + v10[22]);
  *v22 = v19;
  v22[1] = v21;
  v33._countAndFlagsBits = a1;
  v33._object = a2;
  sub_1001F6CA8(v33);
  v34._countAndFlagsBits = 58;
  v34._object = 0xE100000000000000;
  sub_1001F6CA8(v34);
  v35._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v35);

  sub_10001E788();
  v36._countAndFlagsBits = 0xD00000000000002ELL;
  v36._object = 0x80000001002239C0;
  sub_1001F6CA8(v36);
  sub_1000183C4(&qword_1002AC7E0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1001FEBE0;
  *(v23 + 32) = a1;
  *(v23 + 40) = a2;
  swift_bridgeObjectRetain_n();
  v37._countAndFlagsBits = 58;
  v37._object = 0xE100000000000000;
  sub_1001F6CA8(v37);
  v38._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v38);

  *(v23 + 48) = a1;
  *(v23 + 56) = a2;
  *a5 = v23;
  sub_1001F64F8();
  v39._countAndFlagsBits = 58;
  v39._object = 0xE100000000000000;
  sub_1001F6CA8(v39);
  v40._countAndFlagsBits = sub_1001F7E28();
  object = v40._object;
  sub_1001F6CA8(v40);

  sub_10001E82C(a1);
  *v29 = 0;
  v29[8] = 0;
  *(a5 + v10[23]) = 40;
  *(a5 + v10[26]) = _swiftEmptyArrayStorage;
  *(a5 + v10[24]) = 900;
  *(a5 + v10[25]) = 900;
  sub_10001E788();
  v41._countAndFlagsBits = 0xD00000000000002ELL;
  v41._object = 0x80000001002239C0;
  sub_1001F6CA8(v41);

  a5[1] = a1;
  a5[2] = a2;
  sub_10001E6E0();
  v42._countAndFlagsBits = 0xD00000000000002DLL;
  v42._object = (object | 0x8000000000000000);
  sub_1001F6CA8(v42);
  a5[3] = a1;
  a5[4] = a2;
  sub_10001E6E0();
  v43._countAndFlagsBits = 0xD000000000000027;
  v43._object = (object | 0x8000000000000000);
  sub_1001F6CA8(v43);
  a5[5] = a1;
  a5[6] = a2;
  sub_10001E6E0();
  v44._countAndFlagsBits = 0xD000000000000021;
  v44._object = (object | 0x8000000000000000);
  sub_1001F6CA8(v44);
  a5[7] = a1;
  a5[8] = a2;
  sub_10001E6E0();
  v45._countAndFlagsBits = 0xD000000000000031;
  v45._object = (object | 0x8000000000000000);
  sub_1001F6CA8(v45);
  a5[9] = a1;
  a5[10] = a2;
  sub_10001E788();
  v46._countAndFlagsBits = 0x2F737070416E692FLL;
  v46._object = 0xEF79726F74736968;
  sub_1001F6CA8(v46);
  a5[11] = a1;
  a5[12] = a2;
  sub_10001E6E0();
  v47._countAndFlagsBits = 0xD000000000000038;
  v47._object = (object | 0x8000000000000000);
  sub_1001F6CA8(v47);
  a5[13] = a1;
  a5[14] = a2;
  sub_10001E6E0();
  v48._countAndFlagsBits = 0xD000000000000015;
  v48._object = (object | 0x8000000000000000);
  sub_1001F6CA8(v48);
  a5[15] = a1;
  a5[16] = a2;
  sub_10001E6E0();
  v49._countAndFlagsBits = 0xD000000000000038;
  v49._object = (object | 0x8000000000000000);
  sub_1001F6CA8(v49);
  a5[18] = a1;
  a5[19] = a2;
  sub_10001E6E0();
  v50._countAndFlagsBits = 0xD000000000000035;
  v50._object = (object | 0x8000000000000000);
  sub_1001F6CA8(v50);
  a5[20] = a1;
  a5[21] = a2;
  sub_10001E788();
  v51._countAndFlagsBits = 0x2F646E756665722FLL;
  v51._object = 0xEF74736575716572;
  sub_1001F6CA8(v51);
  sub_10001E82C(a1);
  sub_10001E788();
  v52._countAndFlagsBits = 0x697263736275732FLL;
  v52._object = 0xEE00736E6F697470;
  sub_1001F6CA8(v52);
  sub_10001E82C(a1);
  sub_10001E788();
  v53._countAndFlagsBits = 0x6D65656465722FLL;
  v53._object = 0xE700000000000000;
  sub_1001F6CA8(v53);
  sub_10001E82C(a1);
  sub_1001F69B8();
  v25 = (a5 + v10[30]);
  v25[2] = _swiftEmptyArrayStorage;
  *v25 = &off_1002794E0;
  sub_1000183C4(&qword_1002AC840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001FEBE0;
  strcpy((inited + 32), "/subscriptions");
  *(inited + 47) = -18;
  sub_1001F77B8(16);

  v54._countAndFlagsBits = 0x697263736275732FLL;
  v54._object = 0xEE00736E6F697470;
  sub_1001F6CA8(v54);
  *(inited + 48) = 0x2F2F3A70747468;
  *(inited + 56) = 0xE700000000000000;
  *(inited + 64) = 0xD00000000000001ALL;
  *(inited + 72) = 0x80000001002239F0;
  sub_1001F77B8(28);

  v55._countAndFlagsBits = 0xD00000000000001ALL;
  v55._object = 0x80000001002239F0;
  sub_1001F6CA8(v55);
  *(inited + 80) = 0x2F2F3A70747468;
  *(inited + 88) = 0xE700000000000000;
  v27 = sub_1001F69B8();

  v25[1] = v27;
  return result;
}

unint64_t sub_10001BF8C(char a1)
{
  result = 0x2F737070416E692FLL;
  switch(a1)
  {
    case 1:
      sub_10001E880();
      result = v9 - 11;
      break;
    case 2:
      sub_10001E880();
      result = v6 - 17;
      break;
    case 3:
      sub_10001E880();
      result = v7 - 23;
      break;
    case 4:
      sub_10001E880();
      result = v4 - 7;
      break;
    case 5:
      result = 0xD000000000000038;
      break;
    case 6:
      result = 0xD000000000000038;
      break;
    case 7:
      sub_10001E880();
      result = v8 - 3;
      break;
    case 8:
      return result;
    case 9:
      sub_10001E880();
      result = v5 - 35;
      break;
    case 10:
      result = 0x2F646E756665722FLL;
      break;
    case 11:
      result = 0x697263736275732FLL;
      break;
    case 12:
      result = 0x6D65656465722FLL;
      break;
    default:
      sub_10001E880();
      result = v3 - 10;
      break;
  }

  return result;
}

uint64_t sub_10001C194()
{
  v0 = sub_1001F7F58();

  if (v0 >= 0x1B)
  {
    return 27;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_10001C1F4(char a1)
{
  result = 0x4464657473757274;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
    case 18:
      sub_10001E818();
      result = v10 + 1;
      break;
    case 3:
      result = 0x75646F7250797562;
      break;
    case 4:
      result = 0x70612D6E692D3270;
      break;
    case 5:
      sub_10001E818();
      result = v7 + 9;
      break;
    case 6:
      sub_10001E818();
      result = v9 + 17;
      break;
    case 7:
      sub_10001E818();
      result = v5 | 0xC;
      break;
    case 8:
    case 9:
      sub_10001E818();
      result = v11 + 13;
      break;
    case 10:
      result = 0x6D617473656D6974;
      break;
    case 11:
      sub_10001E818();
      result = v3 + 16;
      break;
    case 12:
      result = 0x6F726665726F7473;
      break;
    case 13:
      sub_10001E818();
      result = v8 + 15;
      break;
    case 14:
    case 20:
      sub_10001E818();
      result = v6 + 5;
      break;
    case 15:
      result = 0x437972746E756F63;
      break;
    case 16:
      result = 0x65676175676E616CLL;
      break;
    case 17:
      result = 0x7369487070416E69;
      break;
    case 19:
    case 23:
      sub_10001E818();
      result = v13 + 7;
      break;
    case 21:
      result = 0xD00000000000001BLL;
      break;
    case 22:
      sub_10001E818();
      result = v12 | 8;
      break;
    case 24:
      result = 0xD000000000000011;
      break;
    case 25:
      sub_10001E818();
      result = v4 - 1;
      break;
    case 26:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}