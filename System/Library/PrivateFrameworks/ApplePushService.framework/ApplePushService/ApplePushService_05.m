void sub_1000EA6DC()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000EA7C0(unsigned __int8 *a1)
{
  sub_1000E7868(a1, __stack_chk_guard);
  sub_1000E7820();
  sub_100012CA0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xEu);
}

void sub_1000EA860(uint64_t *a1)
{
  v1 = *a1;
  sub_1000E7848();
  sub_100012D0C();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000EA990()
{
  sub_100051FEC();
  sub_100012CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000EA9CC()
{
  sub_100051FEC();
  sub_100012CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000EAA34()
{
  sub_1000E7834();
  sub_100012D0C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x14u);
}

void sub_1000EAAB0()
{
  sub_1000E7820();
  sub_100012CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_1000EAB28()
{
  sub_1000E7848();
  sub_100012D0C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void uaps::SerialState::_reportError(uaps::SerialState *this)
{
  v2 = libuaps_logger;
  if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_ERROR))
  {
    sub_1000EABF0(this, v2);
  }
}

void sub_1000EABF0(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 8);
  v4[0] = 67109378;
  v4[1] = v2;
  v5 = 2080;
  v6 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "SERIAL ERROR (%d) %s", v4, 0x12u);
}

void sub_1000EAC7C()
{
  sub_100012CC8();
  sub_100012CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000EACEC()
{
  sub_100012CC8();
  sub_100012CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000EAD5C()
{
  sub_100012CC8();
  sub_100012CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000EADCC()
{
  sub_100012CC8();
  sub_100012CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000EAE3C()
{
  sub_100012CC8();
  sub_100012CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000EAEAC()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_100012CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1000EAFE8(unsigned __int8 *a1)
{
  v6 = *a1;
  sub_100012D0C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xEu);
}

void sub_1000EB06C()
{
  sub_100012CC8();
  sub_100012CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000EB18C()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_100012CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1000EB220()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_100012CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1000EB2B4()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_100012CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1000EB3A0()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_100012CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1000EB434()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_100012CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1000EB4C8()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_100012CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1000EB5B4(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "OBJECT", buf, 2u);
}

void sub_1000EB620(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 134217984;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "BLOB %zu []", buf, 0xCu);
}

void *SbfExportFuncsInitJson(void *result)
{
  result[8] = sub_1000EB880;
  result[7] = sub_1000EB958;
  result[9] = sub_1000EBAA4;
  result[10] = sub_1000EBB1C;
  result[11] = sub_1000EBB68;
  result[12] = sub_1000EBBF8;
  return result;
}

void *sub_1000EB880(void *a1, uint64_t a2, uint64_t a3)
{
  SbfExportBuf(a1, "[", 1uLL);
  if (a2 && a3)
  {
    v6 = 0;
    do
    {
      v7 = *(a2 + v6);
      if (v6 >= a3 - 1)
      {
        v8 = "";
      }

      else
      {
        v8 = ",";
      }

      snprintf(__str, 6uLL, "%u%s", *(a2 + v6), v8);
      v9 = strlen(__str);
      SbfExportBuf(a1, __str, v9);
      ++v6;
    }

    while (a3 != v6);
  }

  return SbfExportBuf(a1, "]", 1uLL);
}

void *sub_1000EB958(void *a1, double a2)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v5 = snprintf(__str, 0x20uLL, "%.17g", a2);
    return SbfExportBuf(a1, __str, v5);
  }

  else
  {
    if (fabs(a2) == INFINITY)
    {
      if (a2 >= 0.0)
      {
        v3 = "Infinity";
        v4 = 8;
      }

      else
      {
        v3 = "-Infinity";
        v4 = 9;
      }
    }

    else
    {
      v3 = "NaN";
      v4 = 3;
    }

    return SbfExportBuf(a1, v3, v4);
  }
}

void *sub_1000EBAA4(void *a1, char *a2, uint64_t a3)
{
  SbfExportBuf(a1, "", 1uLL);
  if (a2 && a3)
  {
    SbfExportECMAString(a1, a2, a3);
  }

  return SbfExportBuf(a1, "", 1uLL);
}

void *sub_1000EBB1C(void *a1, int a2)
{
  if (a2)
  {
    v3 = "{";
  }

  else
  {
    v3 = "[";
  }

  result = SbfExportBuf(a1, v3, 1uLL);
  ++a1[1];
  return result;
}

void *sub_1000EBB68(uint64_t a1, int a2)
{
  --*(a1 + 8);
  if ((*(a1 + 80) & 1) == 0)
  {
    if (*(*a1 + 40))
    {
      SbfExportBuf(a1, "\n", 1uLL);
    }

    SbfExportIndent(a1);
  }

  if (a2)
  {
    v4 = "}";
  }

  else
  {
    v4 = "]";
  }

  return SbfExportBuf(a1, v4, 1uLL);
}

void *sub_1000EBBF8(_BYTE *a1, char *a2)
{
  v4 = *(*a1 + 40);
  if ((a1[80] & 1) == 0)
  {
    SbfExportBuf(a1, ",", 1uLL);
  }

  if (v4)
  {
    SbfExportBuf(a1, "\n", 1uLL);
  }

  result = SbfExportIndent(a1);
  if (a2)
  {
    SbfExportBuf(a1, "", 1uLL);
    v6 = strlen(a2);
    SbfExportECMAString(a1, a2, v6 + 1);
    if (v4)
    {
      v7 = ": ";
    }

    else
    {
      v7 = ":";
    }

    if (v4)
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    return SbfExportBuf(a1, v7, v8);
  }

  return result;
}

BOOL SbfValidUtf8(char *a1, unint64_t a2)
{
  do
  {
    v3 = a2;
    if (!a2)
    {
      break;
    }

    v6 = 0;
    v4 = sub_1000EBD4C(a1, a2, &v6);
    a1 += v6;
    a2 = v3 - v6;
  }

  while (!v4);
  return v3 == 0;
}

uint64_t sub_1000EBD4C(char *a1, unint64_t a2, uint64_t *a3)
{
  *a3 = 0;
  if (!a2)
  {
    sub_1000ED398();
  }

  v4 = *a1;
  if ((v4 & 0x80000000) == 0)
  {
    v5 = 1;
LABEL_4:
    result = 0;
    *a3 = v5;
    return result;
  }

  if ((v4 & 0xC0) == 0x80)
  {
    return 1;
  }

  if ((v4 & 0xE0) != 0xC0)
  {
    if ((v4 & 0xF0) == 0xE0)
    {
      if (a2 >= 3)
      {
        v7 = a1[1];
        if ((v7 & 0xC0) == 0x80 && (a1[2] & 0xC0) == 0x80)
        {
          v8 = v7 & 0x3F | ((v4 & 0xF) << 6);
          if (v8 >= 0x20)
          {
            v5 = 3;
            if ((v4 & 0xF) << 6 > 0x37Fu || v8 <= 0x35F)
            {
              goto LABEL_4;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      if ((v4 & 0xF8) != 0xF0)
      {
        return 1;
      }

      if (a2 >= 4)
      {
        v9 = a1[1];
        if ((v9 & 0xC0) == 0x80 && (a1[2] & 0xC0) == 0x80 && (a1[3] & 0xC0) == 0x80 && (v9 & 0x30 | ((v4 & 7) << 6)) - 272 >= 0xFFFFFF00)
        {
          v5 = 4;
          goto LABEL_4;
        }

        return 1;
      }
    }

    return 2;
  }

  if (a2 == 1)
  {
    return 2;
  }

  result = 1;
  if ((v4 & 0x1E) != 0 && (a1[1] & 0xC0) == 0x80)
  {
    v5 = 2;
    goto LABEL_4;
  }

  return result;
}

uint64_t SbfImportJson(uint64_t a1, uint64_t a2)
{
  v2 = __chkstk_darwin(a1, a2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v2;
  if (!v7)
  {
    v8 = SbfRoot(v2);
    v6 = 0;
  }

  SbfClearImportContext(v9);
  v10 = *(v4 + 8);
  if (v10 == -1)
  {
    v10 = strlen(*v4);
  }

  *(v4 + 8) = v10;
  bzero(&v20, 0x1060uLL);
  v19[0] = v9;
  v19[1] = v6;
  v19[2] = v8;
  v19[3] = v4;
  v26 = SbfDepth(v9, v8);
  v18 = 0u;
  memset(v17, 0, sizeof(v17));
  SbfImportFuncsInit(v17);
  bzero(v15, 0x208uLL);
  v15[65] = v9;
  v15[66] = v8;
  v16 = *(v4 + 32);
  v24 = v17;
  v25 = v15;
  if (!*(v4 + 8))
  {
    v11 = "no input data given";
    v12 = 2;
LABEL_16:
    SbfImportSetError(v19, 79, v12, v11);
    goto LABEL_17;
  }

  SbfImportInit(v19);
  if (!(v23 - &v21[v22] + v20))
  {
    *(v9 + 88) = 2;
    goto LABEL_17;
  }

  if ((v17[0](v15) & 1) == 0)
  {
    v11 = "import control aborted importing";
    v12 = 1;
    goto LABEL_16;
  }

  if (sub_1000EC120(v19, v6))
  {
    if (!(v23 - &v21[v22] + v20) || !*v21)
    {
      (v17[1])(v15, 1);
      SbfClearImportContext(v9);
      *(v9 + 78) = 3;
      return v15[0];
    }

    (*(&v18 + 1))(v15, 7, v19, v6);
  }

  (v17[1])(v15, 0);
LABEL_17:
  if ((v23 - &v21[v22] + v20) >= 8)
  {
    v13 = 8;
  }

  else
  {
    v13 = v23 - &v21[v22] + v20;
  }

  SbfSetImportContext(v9, v8, v6, v21, v13);
  return 0;
}

uint64_t sub_1000EC120(uint64_t a1, uint64_t a2)
{
  sub_1000ECC40(a1);
  v4 = *(a1 + 40);
  if (!(*(a1 + 72) - &v4[*(a1 + 64)] + *(a1 + 32)))
  {
    if (!SbfImportFillBuffer(a1))
    {
      goto LABEL_28;
    }

    v4 = *(a1 + 40);
  }

  v5 = *v4;
  if (v5 > 0x48)
  {
    if (*v4 > 0x5Cu)
    {
      v8 = v5 - 93;
      if (v8 > 0x20)
      {
        goto LABEL_73;
      }

      if (((1 << (v5 - 93)) & 0x820200) != 0)
      {
        goto LABEL_41;
      }

      if (((1 << (v5 - 93)) & 0x100000001) != 0)
      {
        if (*(a1 + 4217) == 1)
        {
          v9 = 7;
        }

        else
        {
          v9 = 9;
        }

        (*(*(a1 + 80) + 88))(*(a1 + 88), v9, a1, a2);
        return 0;
      }

      if (v8 != 30)
      {
        goto LABEL_73;
      }

      v23 = v4 + 1;
      v25 = a1 + 80;
      v24 = *(a1 + 80);
      *(a1 + 40) = v23;
      v13 = (a1 + 4200);
      v26 = *(a1 + 4200) + 1;
      *(a1 + 4200) = v26;
      v28 = (a1 + 88);
      v27 = *(a1 + 88);
      if (v26 < 0x40)
      {
        if ((*(v24 + 72))(v27, a2, 1))
        {
          if (sub_1000ECC40(a1) == 125)
          {
            goto LABEL_96;
          }

          while (sub_1000ECC40(a1) == 34)
          {
            ++*(a1 + 40);
            if (!sub_1000192B8(a1, 0, 0))
            {
              goto LABEL_184;
            }

            if (sub_1000ECC40(a1) != 58)
            {
              (*(*(a1 + 80) + 88))(*(a1 + 88), 5, a1, 0);
              goto LABEL_184;
            }

            ++*(a1 + 40);
            if (!sub_1000EC120(a1, a1 + 96))
            {
              goto LABEL_184;
            }

            v38 = *(a1 + 40);
            if (!(*(a1 + 72) - &v38[*(a1 + 64)] + *(a1 + 32)))
            {
              if (!SbfImportFillBuffer(a1))
              {
                goto LABEL_194;
              }

              v38 = *(a1 + 40);
            }

            if (*v38 != 44)
            {
LABEL_194:
              if (sub_1000ECF30(a1, 0) != 125)
              {
                v50 = *(a1 + 88);
                v51 = *(*(a1 + 80) + 88);
                if (sub_1000ECF30(a1, 0))
                {
                  v52 = 3;
                }

                else
                {
                  v52 = 2;
                }

                goto LABEL_170;
              }

LABEL_96:
              ++*(a1 + 40);
LABEL_100:
              (*(*v25 + 80))(*v28, 1);
              --*v13;
              goto LABEL_90;
            }

            *(a1 + 40) = v38 + 1;
          }

          v50 = *(a1 + 88);
          v51 = *(*(a1 + 80) + 88);
          if (sub_1000ECF30(a1, 0))
          {
            v52 = 4;
          }

          else
          {
            v52 = 2;
          }

LABEL_170:
          v51(v50, v52, a1, 0);
LABEL_184:
          (*(*v25 + 80))(*v28, 0);
        }
      }

      else
      {
        (*(v24 + 88))(v27, 13, a1, a2);
      }

      result = 0;
      v14 = *v13 - 1;
LABEL_186:
      *v13 = v14;
      return result;
    }

    if (v5 == 73 || v5 == 78)
    {
      goto LABEL_41;
    }

    if (v5 != 91)
    {
      goto LABEL_73;
    }

    *(a1 + 40) = v4 + 1;
    v12 = *(a1 + 4217);
    v13 = (a1 + 4200);
    v14 = *(a1 + 4200);
    *(a1 + 4200) = v14 + 1;
    if ((v14 + 1) >= 0x40)
    {
      *(*a1 + 92) = 34;
LABEL_111:
      result = 0;
      *(a1 + 4217) = v12;
      goto LABEL_186;
    }

    v25 = a1 + 80;
    v28 = (a1 + 88);
    if (((*(*(a1 + 80) + 72))(*(a1 + 88), a2, 0) & 1) == 0)
    {
      v14 = *v13 - 1;
      goto LABEL_111;
    }

    if (sub_1000ECC40(a1) == 93)
    {
LABEL_99:
      ++*(a1 + 40);
      *(a1 + 4217) = v12;
      goto LABEL_100;
    }

    *(a1 + 4217) = 1;
    if (sub_1000EC120(a1, 0))
    {
      while (1)
      {
        v49 = *(a1 + 40);
        if (!(*(a1 + 72) - &v49[*(a1 + 64)] + *(a1 + 32)))
        {
          if (!SbfImportFillBuffer(a1))
          {
            break;
          }

          v49 = *(a1 + 40);
        }

        if (*v49 != 44)
        {
          break;
        }

        *(a1 + 40) = v49 + 1;
        if ((sub_1000EC120(a1, 0) & 1) == 0)
        {
          goto LABEL_183;
        }
      }

      if (sub_1000ECF30(a1, 0) == 93)
      {
        goto LABEL_99;
      }

      v56 = *(a1 + 88);
      v57 = *(*(a1 + 80) + 88);
      if (sub_1000ECF30(a1, 0))
      {
        v58 = 3;
      }

      else
      {
        v58 = 2;
      }

      v57(v56, v58, a1, 0);
    }

LABEL_183:
    *(a1 + 4217) = v12;
    goto LABEL_184;
  }

  if (*v4 <= 0x2Cu)
  {
    if (*v4)
    {
      if (v5 == 34)
      {
        *(a1 + 40) = v4 + 1;
        if (sub_1000192B8(a1, 1, a2))
        {
          goto LABEL_90;
        }

        return 0;
      }

      if (v5 == 43)
      {
LABEL_67:
        (*(*(a1 + 80) + 88))(*(a1 + 88), 10, a1, a2);
        return 0;
      }

LABEL_73:
      (*(*(a1 + 80) + 88))(*(a1 + 88), 1, a1, a2);
      return 0;
    }

LABEL_28:
    (*(*(a1 + 80) + 88))(*(a1 + 88), 2, a1, a2);
    return 0;
  }

  if (v5 - 48 >= 0xA && v5 != 45)
  {
    if (v5 == 46)
    {
      goto LABEL_67;
    }

    goto LABEL_73;
  }

  if (!(*(a1 + 72) - &v4[*(a1 + 64)] + *(a1 + 32)))
  {
    if (!SbfImportFillBuffer(a1))
    {
      goto LABEL_88;
    }

    v4 = *(a1 + 40);
    v5 = *v4;
  }

  if (v5 != 45)
  {
    v7 = v5;
    goto LABEL_30;
  }

  if (*(a1 + 72) - &v4[*(a1 + 64)] + *(a1 + 32) > 1uLL || (v6 = SbfImportFillBuffer(a1), v4 = *(a1 + 40), v6 >= 2))
  {
    if (v4[1] == 73)
    {
LABEL_41:
      if (sub_1000ECF8C(a1, a2))
      {
        goto LABEL_90;
      }

      return 0;
    }
  }

  *(a1 + 40) = ++v4;
  if (!(*(a1 + 72) - *(a1 + 64) - v4 + *(a1 + 32)))
  {
    if (!SbfImportFillBuffer(a1))
    {
      goto LABEL_88;
    }

    v4 = *(a1 + 40);
  }

  v7 = *v4;
LABEL_30:
  if (v7 == 48)
  {
    v10 = v4 + 1;
    *(a1 + 40) = v10;
    if (!(*(a1 + 72) - &v10[*(a1 + 64)] + *(a1 + 32)))
    {
      v11 = SbfImportFillBuffer(a1);
      if (!v11)
      {
        v7 = 0;
        goto LABEL_87;
      }

      v10 = *(a1 + 40);
    }

    LODWORD(v11) = *v10;
    if ((v11 - 48) < 0xA)
    {
      goto LABEL_88;
    }

    v7 = *v10;
LABEL_87:
    v34 = __tolower(v11);
    if (v34 == 120)
    {
      goto LABEL_88;
    }

    if (v7 != 46 && v34 != 101)
    {
      v37 = (*(*(a1 + 80) + 40))(*(a1 + 88), a2, 0);
      goto LABEL_144;
    }

    goto LABEL_44;
  }

  if ((v7 - 48) >= 0xA)
  {
    goto LABEL_88;
  }

LABEL_44:
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  while (1)
  {
    v19 = v7 - 48;
    if (v19 <= 9)
    {
      if (v18 || v15 > 0x1999999999999999 || v15 == 0x1999999999999999 && v7 >= 54)
      {
        if (v7 != 48)
        {
          v18 = 1;
        }

        v16 += (v17 & 1) == 0;
      }

      else
      {
        v18 = 0;
        v15 = 10 * v15 + v19;
        v16 -= v17 & 1;
      }

      goto LABEL_61;
    }

    if (v7 != 46)
    {
      break;
    }

    if ((v17 & 1) == 0)
    {
      v20 = *(a1 + 40);
      if ((*(a1 + 72) - (*(a1 + 64) + v20) + *(a1 + 32)) <= 1)
      {
        if (SbfImportFillBuffer(a1) < 2)
        {
          goto LABEL_88;
        }

        v20 = *(a1 + 40);
      }

      if (*(v20 + 1) - 48 >= 0xA)
      {
        goto LABEL_88;
      }
    }

    v17 = 1;
LABEL_61:
    v21 = *(a1 + 32);
    v22 = (*(a1 + 40) + 1);
    *(a1 + 40) = v22;
    if (*(a1 + 72) - &v22[*(a1 + 64)] + v21)
    {
      goto LABEL_64;
    }

    LOBYTE(v7) = 0;
    if (SbfImportFillBuffer(a1))
    {
      v22 = *(a1 + 40);
LABEL_64:
      LOBYTE(v7) = *v22;
    }
  }

  if (__tolower(v7) != 101)
  {
LABEL_138:
    if (v15 && (v16 || v18))
    {
      v29.n128_f64[0] = v15;
      if (v16)
      {
        if (v16 >= 0)
        {
          v45 = v16;
        }

        else
        {
          v45 = -v16;
        }

        if (v45 > 0x134)
        {
          v46 = 0;
          v47 = &qword_10015E118;
          while (1)
          {
            v48 = *v47;
            if (*v47 == 0.0)
            {
              goto LABEL_189;
            }

            if (v45)
            {
              if (v16 < 0)
              {
                v46 = 1;
                v29.n128_f64[0] = v29.n128_f64[0] / v48;
              }

              else
              {
                v29.n128_f64[0] = v29.n128_f64[0] * v48;
                v46 = 1;
              }
            }

            ++v47;
            v45 = v45 >> 1;
            if (!v45)
            {
              if (v46)
              {
                goto LABEL_188;
              }

              goto LABEL_190;
            }
          }
        }

        v53 = 1.0;
        v54 = &qword_10015E118;
        do
        {
          if (*v54 == 0.0)
          {
            sub_1000ED3C4();
          }

          if (v45)
          {
            v53 = v53 * *v54;
          }

          ++v54;
          v55 = v45 >= 2;
          v45 >>= 1;
        }

        while (v55);
        if (v16 < 0)
        {
          v29.n128_f64[0] = v29.n128_f64[0] / v53;
        }

        else
        {
          v29.n128_f64[0] = v53 * v29.n128_f64[0];
        }

LABEL_188:
        if ((v29.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_189;
        }
      }

LABEL_190:
      if (v5 == 45)
      {
        v29.n128_f64[0] = -v29.n128_f64[0];
      }

      if (((*(*(a1 + 80) + 48))(*(a1 + 88), a2, v29) & 1) == 0)
      {
        return 0;
      }

LABEL_90:
      sub_1000ECC40(a1);
      return 1;
    }

    v44 = *(a1 + 80);
    v43 = *(a1 + 88);
    if (v5 == 45)
    {
      v37 = (*(v44 + 32))(v43, a2, -v15);
    }

    else
    {
      v37 = (*(v44 + 40))(v43, a2, v15);
    }

LABEL_144:
    if (v37)
    {
      goto LABEL_90;
    }

    return 0;
  }

  v30 = *(a1 + 32);
  v31 = (*(a1 + 40) + 1);
  *(a1 + 40) = v31;
  if (!(*(a1 + 72) - *(a1 + 64) - v31 + v30))
  {
    if (SbfImportFillBuffer(a1))
    {
      v31 = *(a1 + 40);
      goto LABEL_78;
    }

    goto LABEL_88;
  }

LABEL_78:
  v32 = *v31;
  if (v32 == 45 || v32 == 43)
  {
    v33 = v32 == 45;
    *(a1 + 40) = ++v31;
    if (!(*(a1 + 72) - &v31[*(a1 + 64)] + *(a1 + 32)))
    {
      if (!SbfImportFillBuffer(a1))
      {
        goto LABEL_88;
      }

      v31 = *(a1 + 40);
    }

    LOBYTE(v32) = *v31;
  }

  else
  {
    v33 = 0;
  }

  if ((v32 - 48) > 9)
  {
LABEL_88:
    v35 = (*(*(a1 + 80) + 88))(*(a1 + 88), 10, a1, a2);
  }

  else
  {
    v39 = 0;
    while (1)
    {
      v40 = v32 - 48;
      if (v39 > 0xCCCCCCCCCCCCCCCLL || v39 == 0xCCCCCCCCCCCCCCCLL && v40 > 7)
      {
        break;
      }

      v39 = 10 * v39 + v40;
      *(a1 + 40) = ++v31;
      if (!(*(a1 + 72) - &v31[*(a1 + 64)] + *(a1 + 32)))
      {
        if (!SbfImportFillBuffer(a1))
        {
          goto LABEL_122;
        }

        v31 = *(a1 + 40);
      }

      LOBYTE(v32) = *v31;
      if ((*v31 - 48) >= 0xA)
      {
LABEL_122:
        if (v33 && v16 < 0 && v39 < (0x8000000000000000 - v16))
        {
          break;
        }

        if (!v33 && v16 >= 1 && v39 > (v16 ^ 0x7FFFFFFFFFFFFFFFLL))
        {
          break;
        }

        v41 = v33 ? -v39 : v39;
        v16 += v41;
        if ((v16 - 617) < 0xFFFFFFFFFFFFFB31)
        {
          break;
        }

        if ((v17 & 1) == 0 && !v18 && v16 >= 1)
        {
          do
          {
            v42 = v15;
            v16 = (__PAIR128__(v16, v15) - 0x1999999999999999) >> 64;
            if (v15 >= 0x1999999999999999)
            {
              break;
            }

            v15 *= 10;
          }

          while (v16);
          v18 = v42 >= 0x1999999999999999;
        }

        goto LABEL_138;
      }
    }

LABEL_189:
    v35 = (*(*(a1 + 80) + 88))(*(a1 + 88), 11, a1, a2);
  }

  if (v35)
  {
    goto LABEL_90;
  }

  return 0;
}

uint64_t SbfCheckJson(uint64_t a1, uint64_t a2)
{
  v2 = __chkstk_darwin(a1, a2);
  v4 = v3;
  v5 = v2;
  if (v3 == -1)
  {
    v4 = strlen(v2);
  }

  bzero(v11, 0x1080uLL);
  v8[0] = v5;
  v8[1] = v4;
  v9 = 0u;
  v10 = 0u;
  v11[3] = v8;
  SbfImportInit(v11);
  v6 = sub_1000ECC40(v11);
  if (memchr("{[-0123456789ftnNI/", v6, 0x15uLL))
  {
    return 0;
  }

  else
  {
    return 79;
  }
}

uint64_t sub_1000ECC40(void *a1)
{
  v2 = 0;
  v3 = a1[5];
  while (1)
  {
    if (!(a1[9] - &v3[a1[8]] + a1[4]))
    {
      v4 = SbfImportFillBuffer(a1);
      v3 = a1[5];
      if (!v4)
      {
        break;
      }
    }

    v5 = *v3;
    if (!*v3)
    {
      break;
    }

    if (v2 > 2)
    {
      ++v3;
      if (v2 == 3)
      {
        a1[5] = v3;
        if (v5 == 42)
        {
          v7 = 3;
        }

        else
        {
          v7 = 2;
        }

        if (v5 == 47)
        {
          v2 = 0;
        }

        else
        {
          v2 = v7;
        }
      }

      else if (v2 == 4)
      {
        a1[5] = v3;
        if (v5 == 128)
        {
          v2 = 5;
        }

        else
        {
          v2 = 1;
        }
      }

      else
      {
        a1[5] = v3;
        v2 = (v5 & 0xFE) != 168;
      }
    }

    else if (v2)
    {
      ++v3;
      if (v2 == 1)
      {
        a1[5] = v3;
        if (v5 == 226)
        {
          v6 = 4;
        }

        else
        {
          v6 = 1;
        }

        if (v5 == 10)
        {
          v2 = 0;
        }

        else
        {
          v2 = v6;
        }
      }

      else
      {
        a1[5] = v3;
        if (v5 == 42)
        {
          v2 = 3;
        }

        else
        {
          v2 = 2;
        }
      }
    }

    else
    {
      switch(v5)
      {
        case 0x23:
          ++v3;
LABEL_40:
          a1[5] = v3;
          v2 = 1;
          break;
        case 0x2F:
          if (a1[9] - &v3[a1[8]] + a1[4] > 1uLL || (v8 = SbfImportFillBuffer(a1), v3 = a1[5], v8 >= 2))
          {
            if (v3[1] == 47)
            {
              v3 += 2;
              goto LABEL_40;
            }
          }

          if (a1[9] - &v3[a1[8]] + a1[4] <= 1uLL)
          {
            v9 = SbfImportFillBuffer(a1);
            v3 = a1[5];
            if (v9 < 2)
            {
              goto LABEL_56;
            }
          }

          if (v3[1] != 42)
          {
            goto LABEL_56;
          }

          v3 += 2;
          a1[5] = v3;
          v2 = 2;
          break;
        case 0xB:
          goto LABEL_56;
        default:
          if ((v5 & 0x80) != 0)
          {
            if (!__maskrune(*v3, 0x4000uLL))
            {
              goto LABEL_46;
            }

LABEL_24:
            v2 = 0;
            v3 = (a1[5] + 1);
            a1[5] = v3;
          }

          else
          {
            if ((_DefaultRuneLocale.__runetype[v5] & 0x4000) != 0)
            {
              goto LABEL_24;
            }

LABEL_46:
            v3 = a1[5];
            if (v5 != 226)
            {
              goto LABEL_56;
            }

            if (a1[9] - &v3[a1[8]] + a1[4] <= 1uLL)
            {
              v10 = SbfImportFillBuffer(a1);
              v3 = a1[5];
              if (v10 < 2)
              {
                goto LABEL_56;
              }
            }

            if (v3[1] != 128)
            {
              goto LABEL_56;
            }

            if (a1[9] - &v3[a1[8]] + a1[4] <= 2uLL)
            {
              v11 = SbfImportFillBuffer(a1);
              v3 = a1[5];
              if (v11 < 3)
              {
                goto LABEL_56;
              }
            }

            if (v3[2] >= -116 && (v3[2] - 168 > 7 || ((1 << (v3[2] + 88)) & 0x83) == 0))
            {
              goto LABEL_56;
            }

            v2 = 0;
            v3 += 3;
            a1[5] = v3;
          }

          break;
      }
    }
  }

LABEL_56:
  if (a1[9] - &v3[a1[8]] + a1[4])
  {
    return *v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000ECF30(void *a1, unint64_t a2)
{
  v3 = a1[5];
  if (a1[9] - (a1[8] + v3) + a1[4] > a2)
  {
    return *(v3 + a2);
  }

  if (SbfImportFillBuffer(a1) > a2)
  {
    v3 = a1[5];
    return *(v3 + a2);
  }

  return 0;
}

uint64_t sub_1000ECF8C(void *a1, uint64_t a2)
{
  v4 = a1[5];
  if (!(a1[9] - &v4[a1[8]] + a1[4]))
  {
    if (!SbfImportFillBuffer(a1))
    {
      return 0;
    }

    v4 = a1[5];
  }

  v5 = *v4;
  if (v5 <= 101)
  {
    if (v5 == 45)
    {
      if (sub_1000ED2C8(a1, "-Infinity"))
      {
        v7 = a1[11];
        v8 = *(a1[10] + 48);
        v9 = 0xFFF0000000000000;
        goto LABEL_24;
      }
    }

    else if (v5 == 73)
    {
      if (sub_1000ED2C8(a1, "Infinity"))
      {
        v7 = a1[11];
        v8 = *(a1[10] + 48);
        v9 = 0x7FF0000000000000;
        goto LABEL_24;
      }
    }

    else if (v5 == 78 && sub_1000ED2C8(a1, "NaN"))
    {
      v7 = a1[11];
      v8 = *(a1[10] + 48);
      v9 = 0x7FF8000000000000;
LABEL_24:
      v6.n128_u64[0] = v9;

      return v8(v7, a2, v6);
    }

    return 0;
  }

  if (v5 == 116)
  {
    if (!sub_1000ED2C8(a1, "true"))
    {
      return 0;
    }

    v10 = a1[11];
    v11 = *(a1[10] + 24);
    v12 = a2;
    v13 = 1;
    goto LABEL_19;
  }

  if (v5 != 110)
  {
    if (v5 != 102 || !sub_1000ED2C8(a1, "false"))
    {
      return 0;
    }

    v10 = a1[11];
    v11 = *(a1[10] + 24);
    v12 = a2;
    v13 = 0;
LABEL_19:

    return v11(v10, v12, v13);
  }

  if (!sub_1000ED2C8(a1, "null"))
  {
    return 0;
  }

  v15 = a1[11];
  v16 = *(a1[10] + 16);

  return v16(v15, a2);
}

void *sub_1000ED148(void *result, int a2, void *__src, unint64_t a4)
{
  if (a4 >= 0x1000)
  {
    sub_1000ED3F0();
  }

  v4 = a4;
  v6 = result;
  v7 = result + 524;
  v8 = result[524];
  v9 = result - v8 + 4192;
  if (v9 < a4 && a2 != 0)
  {
    v11 = result + 12;
    (*(result[10] + 56))(result[11], 0, 1, result + 12, v8 - (result + 12));
    v6[524] = v11;
    *(v6 + 96) = 0;
LABEL_11:
    result = memcpy(v11, __src, v4);
    *v7 += v4;
    return result;
  }

  if (v9 < a4)
  {
    v4 = result - v8 + 4192;
  }

  if (v4)
  {
    v11 = result[524];
    goto LABEL_11;
  }

  return result;
}

void *sub_1000ED200(void *a1, int a2, unsigned int a3)
{
  if (a3 > 0x7F)
  {
    if (a3 > 0x7FF)
    {
      if (HIWORD(a3))
      {
        __src = (a3 >> 18) & 7 | 0xF0;
        v6 = (a3 >> 12) & 0x3F | 0x80;
        v7 = (a3 >> 6) & 0x3F | 0x80;
        v8 = a3 & 0x3F | 0x80;
        v3 = 4;
      }

      else
      {
        __src = (a3 >> 12) | 0xE0;
        v6 = (a3 >> 6) & 0x3F | 0x80;
        v7 = a3 & 0x3F | 0x80;
        v3 = 3;
      }
    }

    else
    {
      __src = (a3 >> 6) | 0xC0;
      v6 = a3 & 0x3F | 0x80;
      v3 = 2;
    }
  }

  else
  {
    __src = a3;
    v3 = 1;
  }

  return sub_1000ED148(a1, a2, &__src, v3);
}

BOOL sub_1000ED2C8(void *a1, _BYTE *a2)
{
  v4 = a1[5];
  if (!(a1[9] - &v4[a1[8]] + a1[4]))
  {
    if (!SbfImportFillBuffer(a1))
    {
      v5 = 0;
      return !*a2 || v5 == *a2;
    }

    v4 = a1[5];
  }

  v5 = *v4;
  if (v5)
  {
    while (1)
    {
      v6 = a2;
      if (v5 != *a2)
      {
        break;
      }

      v7 = a1[4];
      v8 = (a1[5] + 1);
      a1[5] = v8;
      if (!(a1[9] - a1[8] - v8 + v7))
      {
        if (!SbfImportFillBuffer(a1))
        {
          goto LABEL_10;
        }

        v8 = a1[5];
      }

      ++a2;
      v5 = *v8;
      if (!v5)
      {
LABEL_10:
        v5 = 0;
        a2 = v6 + 1;
        break;
      }
    }
  }

  return !*a2 || v5 == *a2;
}

uint64_t SbfExportPlistb(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  if (!a3 || a3[11])
  {
    return 22;
  }

  v38 = v4;
  v39 = v5;
  v8 = a2;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v28[0] = a3;
  v28[1] = 0;
  v10 = a3[1];
  v29 = v10;
  v30 = v10;
  if (v10)
  {
    v10 += a3[2];
  }

  v31 = v10;
  v32 = 0;
  v33 = a1;
  v34 = 0;
  v36 = 0;
  if (!a2)
  {
    v8 = *(a1 + 16);
  }

  if (SbfCheckAtom(a1, v8))
  {
    return 22;
  }

  __src = 0u;
  *v27 = 0u;
  v25[0] = 1;
  SbfIterate(a1, v8, 3, sub_1000EDFB8, v25, 0);
  v11 = v25[0];
  *(&__src + 1) = v25[0];
  if (v25[0] <= 0xFF)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  if (v25[0] >> 16)
  {
    v13 = 4;
  }

  else
  {
    v13 = v12;
  }

  if (v25[0] >> 32)
  {
    v14 = 8;
  }

  else
  {
    v14 = v13;
  }

  BYTE7(__src) = v14;
  v25[0] = v28;
  v25[1] = &__src;
  v15 = malloc_type_malloc(8 * v11, 0x100004000313F17uLL);
  v25[2] = v15;
  if (v15)
  {
    SbfExportBuf(v28, "bplist00", 8uLL);
    if (sub_1000ED6D0(v25, v8))
    {
      v16 = (v30 - v29 + v32);
      v27[1] = v16;
      if (*(&__src + 1) == 1)
      {
        v17 = 0;
        v18 = 8;
      }

      else
      {
        v19 = 0;
        v18 = 8;
        do
        {
          v20 = v15[v19];
          v15[v19] = v18;
          v18 += v20;
          ++v19;
          v17 = *(&__src + 1) - 1;
        }

        while (v19 < *(&__src + 1) - 1);
      }

      v15[v17] = v18;
      v21 = v16 >> 16;
      if (v16 <= 0xFF)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21)
      {
        v23 = 4;
      }

      else
      {
        v23 = v22;
      }

      BYTE6(__src) = v23;
      sub_1000EDCDC(v28, v23, v15, *(&__src + 1));
      SbfExportBuf(v28, &__src, 5uLL);
      SbfExportBuf(v28, &__src + 5, 1uLL);
      SbfExportBuf(v28, &__src + 6, 1uLL);
      SbfExportBuf(v28, &__src + 7, 1uLL);
      sub_1000EDCDC(v28, 8u, &__src + 1, 1);
      sub_1000EDCDC(v28, 8u, v27, 1);
      sub_1000EDCDC(v28, 8u, &v27[1], 1);
      v24 = SbfExportFlush(v28);
      if (a4)
      {
        if (!v24)
        {
          *a4 = v32;
        }
      }
    }

    else
    {
      *(a1 + 88) = 1;
    }
  }

  else
  {
    *(a1 + 88) = 1;
    LODWORD(v35) = 12;
  }

  free(v15);
  return v35;
}

BOOL sub_1000ED6D0(uint64_t **a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a2 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((HIBYTE(v5) & 0xFu) <= 5)
  {
    if ((HIBYTE(v5) & 0xFu) <= 2)
    {
      if (v6 == 1)
      {
        LOBYTE(v59[0]) = 0;
      }

      else
      {
        if (v6 != 2)
        {
          goto LABEL_52;
        }

        if (*(a2 + 24))
        {
          v13 = 9;
        }

        else
        {
          v13 = 8;
        }

        LOBYTE(v59[0]) = v13;
      }

      SbfExportBuf(v4, v59, 1uLL);
      v11 = v4[7];
      a1[2][v11] = 1;
      goto LABEL_49;
    }

    switch(v6)
    {
      case 3:
        v59[0] = *(a2 + 24);
        v7 = 19;
        goto LABEL_45;
      case 4:
        sub_1000EDFFC(a1, *(a2 + 24));
        return *(v4 + 16) == 0;
      case 5:
        v59[0] = *(a2 + 24);
        v7 = 35;
LABEL_45:
        LOBYTE(__src) = v7;
        SbfExportBuf(v4, &__src, 1uLL);
        sub_1000EDCDC(v4, 8u, v59, 1);
        v10 = a1[2];
        v11 = v4[7];
        v12 = 9;
LABEL_46:
        v10[v11] = v12;
LABEL_49:
        v4[7] = v11 + 1;
        return *(v4 + 16) == 0;
    }

LABEL_52:
    *(v4 + 16) = 79;
    return *(v4 + 16) == 0;
  }

  if ((v6 - 6) < 2)
  {
    v55 = *(v4 + 4);
    v56 = *(v4 + 6);
    v54 = *(v4 + 10);
    v57 = v5 & 0xF00000000000000;
    v14 = *(a2 + 28) & 0xFFFFFFLL;
    if ((v5 & 0xF00000000000000) == 0x600000000000000)
    {
      sub_1000EE3D0(a1, 208, v14);
      ++v4[7];
      LODWORD(v15) = *(a2 + 24);
      if (v15)
      {
        v16 = 0;
        v17 = 0;
        v18 = 1;
        do
        {
          if (v17 <= 0x1F)
          {
            v19 = 31;
          }

          else
          {
            v19 = v17;
          }

          if (v18)
          {
            do
            {
              if (v19 == v17)
              {
                sub_1000EE47C();
              }

              *(v59 + v17++) = v15;
              v15 = *(a2 + 32 * v15);
              v20 = v15 << 38;
              LODWORD(v15) = (v15 << 6) >> 6;
            }

            while (v20);
          }

          --v17;
          v21 = *(v59 + v17);
          if (v21)
          {
            v22 = (a2 + 32 * v21);
          }

          else
          {
            v22 = &sbfSentinel;
          }

          v23 = *v22;
          v24 = **v4;
          if (((*(v4[6] + 60) & 0x10) != 0 || v22[2] > v24) && (v24 || (*(v22 + 15) & 0xF) != 0))
          {
            __src = v4[7] + v16;
            sub_1000EDCDC(*a1, *(a1[1] + 7), &__src, 1);
            ++v16;
          }

          v15 = v23 << 12 >> 38;
          v25 = (v23 << 12) >> 38;
          v18 = v25 != 0;
        }

        while (v17 || v25);
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      sub_1000EE3D0(a1, 160, v14);
      v16 = 0;
      ++v4[7];
    }

    LODWORD(v31) = *(a2 + 24);
    if (v31)
    {
      v32 = 0;
      v33 = 1;
      do
      {
        if (v32 <= 0x1F)
        {
          v34 = 31;
        }

        else
        {
          v34 = v32;
        }

        if (v33)
        {
          do
          {
            if (v34 == v32)
            {
              sub_1000EE4A8();
            }

            *(v59 + v32++) = v31;
            v31 = *(a2 + 32 * v31);
            v35 = v31 << 38;
            LODWORD(v31) = (v31 << 6) >> 6;
          }

          while (v35);
        }

        --v32;
        v36 = *(v59 + v32);
        if (v36)
        {
          v37 = (a2 + 32 * v36);
        }

        else
        {
          v37 = &sbfSentinel;
        }

        v38 = *v37;
        v39 = **v4;
        if (((*(v4[6] + 60) & 0x10) != 0 || v37[2] > v39) && (v39 || (*(v37 + 15) & 0xF) != 0))
        {
          __src = v4[7] + v16;
          sub_1000EDCDC(*a1, *(a1[1] + 7), &__src, 1);
          __src = 1;
          SbfIterate(v4[6], v37, 3, sub_1000EDFB8, &__src, 0);
          v16 += __src;
        }

        v31 = v38 << 12 >> 38;
        v40 = (v38 << 12) >> 38;
        v33 = v40 != 0;
      }

      while (v32 || v40);
    }

    a1[2][v4[7] - 1] = (*(v4 + 6) - *(v4 + 4) + *(v4 + 10)) - (v56 - v55 + v54);
    LODWORD(v41) = *(a2 + 24);
    if (v57 == 0x600000000000000 && v41)
    {
      v42 = 0;
      v43 = 1;
      do
      {
        if (v43)
        {
          if (v42 >= 0x1F)
          {
            sub_1000EE4D4();
          }

          *(v59 + v42++) = v41;
          v44 = *(a2 + 32 * v41) << 38;
        }

        else
        {
          --v42;
          v45 = *(v59 + v42);
          if (v45)
          {
            v46 = (a2 + 32 * v45);
          }

          else
          {
            v46 = &sbfSentinel;
          }

          v44 = *v46 << 12;
          v47 = **v4;
          if (((*(v4[6] + 60) & 0x10) != 0 || v46[2] > v47) && (v47 || (*(v46 + 15) & 0xF) != 0))
          {
            sub_1000EE0F8(a1, v46 + 32);
          }
        }

        v41 = v44 >> 38;
        v43 = v44 >> 38 != 0;
      }

      while (v42 || v44 >> 38);
      LODWORD(v41) = *(a2 + 24);
    }

    if (v41)
    {
      v48 = 0;
      v49 = 1;
      do
      {
        if (v49)
        {
          if (v48 >= 0x1F)
          {
            sub_1000EE500();
          }

          *(v59 + v48++) = v41;
          v50 = *(a2 + 32 * v41) << 38;
        }

        else
        {
          --v48;
          v51 = *(v59 + v48);
          if (v51)
          {
            v52 = (a2 + 32 * v51);
          }

          else
          {
            v52 = &sbfSentinel;
          }

          v50 = *v52 << 12;
          v53 = **v4;
          if (((*(v4[6] + 60) & 0x10) != 0 || v52[2] > v53) && (v53 || (*(v52 + 15) & 0xF) != 0))
          {
            sub_1000ED6D0(a1);
          }
        }

        v41 = v50 >> 38;
        v49 = v50 >> 38 != 0;
      }

      while (v48 || v50 >> 38);
    }
  }

  else
  {
    if (v6 != 8)
    {
      if (v6 == 9)
      {
        v8 = *(a2 + 28);
        v9 = *(a2 + 24) << 6;
        sub_1000EE3D0(a1, 64, v8);
        if (v9)
        {
          SbfExportBuf(v4, (a2 + 32 * (v9 >> 6) + 8), v8);
        }

        v10 = a1[2];
        v11 = v4[7];
        v12 = v10[v11] + v8;
        goto LABEL_46;
      }

      goto LABEL_52;
    }

    v26 = *(a2 + 24);
    v27 = v26 << 6;
    v28 = a2 + 32 * (v26 << 38 >> 38) + 8;
    if (v27)
    {
      v29 = v28;
    }

    else
    {
      v29 = "";
    }

    sub_1000EE0F8(a1, v29);
  }

  return *(v4 + 16) == 0;
}

void *sub_1000EDCDC(void *result, unsigned int a2, unint64_t *a3, uint64_t a4)
{
  v46 = result;
  if (a4)
  {
    v4 = a4;
    if (a2 <= 8)
    {
      v7 = a2;
    }

    else
    {
      v7 = 16;
    }

    v45 = v7;
    if (a2 >= 8)
    {
      v8 = 8;
    }

    else
    {
      v8 = a2;
    }

    v9 = 9;
    if (a2 <= 8)
    {
      v9 = 1;
    }

    v41 = v9;
    v42 = a2 > 8;
    if (a2 <= 8)
    {
      v10 = 2;
    }

    else
    {
      v10 = 10;
    }

    v11 = 3;
    if (a2 > 8)
    {
      v11 = 11;
    }

    v39 = v11;
    v40 = v10;
    if (a2 <= 8)
    {
      v12 = 4;
    }

    else
    {
      v12 = 12;
    }

    v13 = 5;
    if (a2 > 8)
    {
      v13 = 13;
    }

    v37 = v13;
    v38 = v12;
    if (a2 <= 8)
    {
      v14 = 6;
    }

    else
    {
      v14 = 14;
    }

    v15 = 7;
    if (a2 > 8)
    {
      v15 = 15;
    }

    v35 = v15;
    v36 = v14;
    v16 = vdupq_n_s64(v8 - 1);
    v17 = vdupq_n_s32(v8);
    *v16.i8 = vmovn_s16(vuzp1q_s16(vuzp1q_s32(vcgeq_u64(v16, xmmword_10015C990), vcgeq_u64(v16, xmmword_10015E190)), vuzp1q_s32(vcgeq_u64(v16, xmmword_10015E180), vcgeq_u64(v16, xmmword_10015E170))));
    v18 = vaddq_s32(v17, xmmword_10015E1B0);
    v44 = v16.i8[0];
    v19 = vaddq_s32(v17, xmmword_10015E1A0);
    v34 = 8 * v18.i8[0];
    v43 = v16.i8[1];
    v33 = 8 * v18.i8[4];
    v20 = v16.i8[2];
    v32 = 8 * v18.i8[8];
    v21 = v16.i8[3];
    v31 = 8 * v18.i8[12];
    v22 = v16.i8[4];
    v23 = v16.i8[5];
    v24 = v16.i8[6];
    v29 = 8 * v19.i8[4];
    v30 = 8 * v19.i8[0];
    v28 = 8 * v19.i8[8];
    v25 = v16.i8[7];
    v27 = 8 * v19.i8[12];
    do
    {
      __src[0] = 0;
      __src[1] = 0;
      if (!a2)
      {
        goto LABEL_37;
      }

      v26 = *a3;
      if (v44)
      {
        LOBYTE(__src[v42]) = v26 >> v34;
      }

      if (v43)
      {
        *(__src + v41) = v26 >> v33;
        if ((v20 & 1) == 0)
        {
LABEL_31:
          if ((v21 & 1) == 0)
          {
            goto LABEL_32;
          }

          goto LABEL_41;
        }
      }

      else if ((v20 & 1) == 0)
      {
        goto LABEL_31;
      }

      *(__src + v40) = v26 >> v32;
      if ((v21 & 1) == 0)
      {
LABEL_32:
        if ((v22 & 1) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_42;
      }

LABEL_41:
      *(__src + v39) = v26 >> v31;
      if ((v22 & 1) == 0)
      {
LABEL_33:
        if (v23)
        {
          goto LABEL_43;
        }

        goto LABEL_34;
      }

LABEL_42:
      *(__src + v38) = v26 >> v30;
      if (v23)
      {
LABEL_43:
        *(__src + v37) = v26 >> v29;
        if (v24)
        {
LABEL_44:
          *(__src + v36) = v26 >> v28;
          if ((v25 & 1) == 0)
          {
            goto LABEL_37;
          }

LABEL_36:
          *(__src + v35) = v26 >> v27;
          goto LABEL_37;
        }

        goto LABEL_35;
      }

LABEL_34:
      if (v24)
      {
        goto LABEL_44;
      }

LABEL_35:
      if (v25)
      {
        goto LABEL_36;
      }

LABEL_37:
      result = SbfExportBuf(v46, __src, v45);
      ++a3;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1000EDFB8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 && (v3 = *(a2 + 8) << 38) != 0)
  {
    v4 = (*(a2 - (v3 >> 33) + 8) & 0xF00000000000000) == 0x600000000000000;
    v5 = *a3;
    if (v4)
    {
      ++v5;
    }
  }

  else
  {
    v5 = *a3;
  }

  *a3 = v5 + 1;
  return 0;
}

void *sub_1000EDFFC(uint64_t a1, unint64_t a2)
{
  v14 = a2;
  v3 = *a1;
  if (a2 <= 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (a2 >> 16)
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  if (HIDWORD(a2))
  {
    v6 = 8;
  }

  else
  {
    v6 = v5;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 16;
  }

  __src = 16;
  HIDWORD(v9) = v7 - 2;
  LODWORD(v9) = v7 - 2;
  v8 = v9 >> 1;
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      v10 = 19;
      goto LABEL_22;
    }

    if (v8 == 7)
    {
      v10 = 20;
      goto LABEL_22;
    }
  }

  else
  {
    if (!v8)
    {
      v10 = 17;
      goto LABEL_22;
    }

    if (v8 == 1)
    {
      v10 = 18;
LABEL_22:
      __src = v10;
    }
  }

  SbfExportBuf(v3, &__src, 1uLL);
  result = sub_1000EDCDC(v3, v7, &v14, 1);
  v12 = v3[7];
  *(*(a1 + 16) + 8 * v12) = v7 + 1;
  v3[7] = v12 + 1;
  return result;
}

void *sub_1000EE0F8(uint64_t **a1, char *__s)
{
  v4 = *a1;
  v5 = strlen(__s);
  v6 = v5;
  if (!v5)
  {
    goto LABEL_38;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  do
  {
    v10 = &__s[v9];
    if ((__s[v9] & 0x80000000) == 0)
    {
      v11 = 1;
LABEL_7:
      v13 = 1;
      goto LABEL_8;
    }

    v12 = __s[v9];
    if ((v12 & 0xE0) == 0xC0)
    {
      v11 = 2;
      goto LABEL_7;
    }

    if ((v12 & 0xF0) == 0xE0)
    {
      v14 = ((v12 & 0xF) << 12) | ((v10[1] & 0x3F) << 6);
      v11 = 3;
    }

    else
    {
      if ((v12 & 0xF8) != 0xF0)
      {
        sub_1000EE52C();
      }

      v14 = (2 * v12) & 0x2E | ((v10[1] & 0x3F) << 12) | ((v10[2] & 0x3F) << 6);
      v11 = 4;
    }

    if (v14 >> 11 < 0x1B || (v14 & 0x3E000) == 0xE000)
    {
      goto LABEL_7;
    }

    if (v14 - 0x10000 >= 0x100000)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

LABEL_8:
    v7 += v13;
    v9 += v11;
    v8 |= v11 > 1;
  }

  while (v9 < v5);
  if ((v8 & 1) == 0)
  {
LABEL_38:
    sub_1000EE3D0(a1, 80, v5);
    result = SbfExportBuf(v4, __s, v6);
    v25 = v4[7];
    a1[2][v25] += v6;
    v17 = v4 + 7;
    goto LABEL_41;
  }

  sub_1000EE3D0(a1, 96, v7);
  v15 = 0;
  v16 = a1[2];
  v17 = v4 + 7;
  v16[v4[7]] += 2 * v7;
  do
  {
    v18 = &__s[v15];
    v19 = __s[v15];
    if ((__s[v15] & 0x80000000) == 0)
    {
      v20 = 1;
LABEL_31:
      __src[0] = bswap32(v19) >> 16;
LABEL_32:
      v23 = 1;
      goto LABEL_33;
    }

    if ((v19 & 0xE0) == 0xC0)
    {
      v19 = v18[1] & 0x3F | ((v19 & 0x1F) << 6);
      v20 = 2;
      goto LABEL_31;
    }

    if ((v19 & 0xF0) == 0xE0)
    {
      v21 = ((v19 & 0xF) << 12) | ((v18[1] & 0x3F) << 6);
      v22 = 2;
      v20 = 3;
    }

    else
    {
      if ((v19 & 0xF8) != 0xF0)
      {
        sub_1000EE52C();
      }

      v21 = (2 * v19) & 0x2E | ((v18[1] & 0x3F) << 12) | ((v18[2] & 0x3F) << 6);
      v22 = 3;
      v20 = 4;
    }

    v19 = v21 | v18[v22] & 0x3F;
    if (v21 >> 11 <= 0x1A || (v21 & 0x3E000) == 0xE000)
    {
      goto LABEL_31;
    }

    if ((v21 - 0x10000) >> 20)
    {
      __src[0] = -3;
      goto LABEL_32;
    }

    __src[0] = __rev16((v21 >> 10) | 0xD800);
    __src[1] = __rev16(v19 & 0x3FF | 0xDC00);
    v23 = 2;
LABEL_33:
    result = SbfExportBuf(v4, __src, 2 * v23);
    v7 -= v23;
    v15 += v20;
    v6 -= v20;
  }

  while (v6);
  if (v7)
  {
    sub_1000EE558();
  }

  v25 = *v17;
LABEL_41:
  *v17 = v25 + 1;
  return result;
}

void *sub_1000EE3D0(void *a1, char a2, unint64_t a3)
{
  v5 = *a1;
  if (a3 > 0xE)
  {
    __src = a2 | 0xF;
    SbfExportBuf(v5, &__src, 1uLL);
    result = sub_1000EDFFC(a1, a3);
    v7 = v5[7] - 1;
    v5[7] = v7;
    ++*(a1[2] + 8 * v7);
  }

  else
  {
    __src = a3 | a2;
    result = SbfExportBuf(v5, &__src, 1uLL);
    *(a1[2] + 8 * v5[7]) = 1;
  }

  return result;
}

uint64_t SbfCheckPlistb(uint64_t a1, uint64_t a2)
{
  memset(v14, 0, sizeof(v14));
  v11 = 0u;
  v13 = 0;
  v9 = 0u;
  v10 = 0u;
  v6 = 0u;
  v7 = 0;
  v3[0] = a1;
  v3[1] = a2;
  v4 = 0u;
  v5 = 0u;
  v8 = v3;
  v12 = v14;
  SbfImportInit(&v6);
  if (sub_100018A28(&v6))
  {
    return 0;
  }

  else
  {
    return 79;
  }
}

unint64_t sub_1000EE5E8(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(a1 + 40) = v1 + 1;
  if (*v1 == 35)
  {
    v2 = 0;
    v3 = 0.0;
    v4 = 56;
    do
    {
      *&v3 |= v1[v2 + 1] << v4;
      v4 -= 8;
      ++v2;
    }

    while (v2 != 8);
    *(a1 + 40) = v1 + 9;
    v6 = *(a1 + 8);
    v5 = *(a1 + 16);
    v7 = *a1;

    return SbfAddDouble(v7, v5, v6, v3);
  }

  else
  {
    SbfImportSetError(a1, 22, 12, "real size must be 8 bytes (0x23)");
    return 0;
  }
}

void *sub_1000EE6B0(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = v2 + 1;
  v3 = *v2 & 0xF;
  if ((*v2 & 0xF) == 0xF)
  {
    v3 = 0;
    v4 = 1 << (v2[1] & 0xF);
    v5 = v2 + 2;
    *(a1 + 40) = v5;
    if (v4 >= 8)
    {
      v6 = 8;
    }

    else
    {
      v6 = v4;
    }

    v7 = 8 * v6 - 8;
    v8 = v5;
    do
    {
      v9 = *v8++;
      v3 |= v9 << v7;
      v7 -= 8;
    }

    while (v7 != -8);
    *(a1 + 40) = &v5[v4];
  }

  if (!sub_1000190E0(a1, 2 * v3))
  {
    return 0;
  }

  v10 = *(a1 + 40);
  if (v3)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = (v10 + 2 * v11);
      v14 = bswap32(*v13) >> 16;
      if ((v14 & 0xFC00) == 0xDC00)
      {
        v18 = 1;
        v19 = 3;
      }

      else if ((v14 & 0xFC00) == 0xD800)
      {
        v15 = v3 - v11 > 1;
        v16 = (v13[1] & 0xFC) == 220;
        v17 = !v15 || !v16;
        if (v15 && v16)
        {
          v18 = 2;
        }

        else
        {
          v18 = 1;
        }

        if (v17)
        {
          v19 = 3;
        }

        else
        {
          v19 = 4;
        }
      }

      else if (v14 >= 0x80)
      {
        if (v14 < 0x800)
        {
          v19 = 2;
        }

        else
        {
          v19 = 3;
        }

        v18 = 1;
      }

      else
      {
        v18 = 1;
        v19 = 1;
      }

      v12 += v19;
      v11 = v18 + v11;
    }

    while (v11 < v3);
  }

  else
  {
    v12 = 0;
  }

  result = SbfAddStringSpace(*a1, *(a1 + 16), *(a1 + 8), v12);
  v21 = *(result + 6);
  v22 = v21 << 6;
  v23 = &result[4 * (v21 << 38 >> 38)];
  if (v22)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (v12)
  {
    v25 = 0;
    v26 = 0;
    v27 = v24 + 1;
    v28 = v24 + 9;
    v29 = v24 + 10;
    while (1)
    {
      v30 = v26;
      v31 = (v10 + 2 * v26);
      v32 = bswap32(*v31) >> 16;
      if ((v32 & 0xFC00) == 0xDC00)
      {
        break;
      }

      if ((v32 & 0xFC00) != 0xD800)
      {
        v39 = v27 + v25;
        if (v32 <= 0x7F)
        {
          *v39 = v32;
          v37 = 1;
          v38 = 1;
          goto LABEL_46;
        }

        if (v32 <= 0x7FF)
        {
          *v39 = (v32 >> 6) | 0xC0;
          v39[1] = v32 & 0x3F | 0x80;
          v37 = 1;
          v38 = 2;
          goto LABEL_46;
        }

        goto LABEL_41;
      }

      if (v3 - v30 < 2)
      {
        break;
      }

      v33 = bswap32(v31[1]) >> 16;
      if ((v33 & 0xFC00) != 0xDC00)
      {
        break;
      }

      v34 = ((v32 & 0x3FF) << 10) + 0x10000;
      v35 = v33 & 0x3C0 | (v32 << 10);
      v36 = v27 + v25;
      *v36 = (v34 >> 18) | 0xF0;
      v36[1] = (v34 >> 12) & 0x3F | 0x80;
      v36[2] = (v35 >> 6) & 0x3F | 0x80;
      v36[3] = v33 & 0x3F | 0x80;
      v37 = 2;
      v38 = 4;
LABEL_46:
      v26 = v37 + v30;
      v25 = v38 + v25;
      if (v25 >= v12)
      {
        return result;
      }
    }

    v39 = v27 + v25;
    v32 = 65533;
LABEL_41:
    *v39 = (v32 >> 12) | 0xE0;
    *(v28 + v25) = (v32 >> 6) & 0x3F | 0x80;
    *(v29 + v25) = v32 & 0x3F | 0x80;
    v37 = 1;
    v38 = 3;
    goto LABEL_46;
  }

  return result;
}

uint64_t SbfExportPlistd(uint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  if (!a3)
  {
    return 22;
  }

  v6 = a2;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v13[0] = a3;
  v13[1] = 0;
  v8 = a3[1];
  v13[2] = v8;
  v13[3] = v8;
  if (v8)
  {
    v8 += a3[2];
  }

  v13[4] = v8;
  v14 = 0;
  v15 = a1;
  v16 = 1;
  v18 = 0;
  if (!a2)
  {
    v6 = *(a1 + 16);
  }

  if (SbfCheckAtom(a1, v6))
  {
    return 22;
  }

  v10 = *a3;
  if (((*(a1 + 60) & 0x10) != 0 || *(v6 + 16) > v10) && (v10 || (*(v6 + 15) & 0xF) != 0))
  {
    v20 = 1;
    v11 = sub_1000EEDB0(v13, v6);
    sub_1000EEEC4(v13, 112, 0, v11 + 3);
    __src[0] = 258;
    memset(&__src[1], 0, 14);
    SbfExportBuf(v13, __src, 2uLL);
    SbfExportBuf(v13, &v20, 1uLL);
    sub_1000EEAF8(v13, v6);
  }

  v12 = SbfExportFlush(v13);
  if (a4)
  {
    if (!v12)
    {
      *a4 = v14;
    }
  }

  return v17;
}

_DWORD *sub_1000EEAF8(_DWORD *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 15) & 0xF;
  if (v4 <= 4)
  {
    if ((*(a2 + 15) & 0xFu) <= 1)
    {
      if ((*(a2 + 15) & 0xF) == 0)
      {
        return result;
      }

      LOBYTE(__src) = 5;
      *(&__src + 1) = 0;
      *(&__src + 1) = 0;
      p_src = &__src;
      v11 = 2;
    }

    else
    {
      if (v4 != 2)
      {
        if (v4 == 3)
        {
          v5 = *(a2 + 24);
          v6 = 1;
          goto LABEL_31;
        }

        if (v4 == 4)
        {
          v5 = *(a2 + 24);
          v6 = 0;
LABEL_31:
          v19 = sub_1000EEFD8(v5, v6, __dst);
          return sub_1000EEEC4(v3, 2, __dst, v19);
        }

        goto LABEL_42;
      }

      if (*(a2 + 24))
      {
        v12 = -1;
      }

      else
      {
        v12 = 0;
      }

      __dst[0] = v12;
      LOWORD(__src) = 257;
      *(&__src + 2) = 0;
      *(&__src + 1) = 0;
      SbfExportBuf(result, &__src, 2uLL);
      p_src = __dst;
      result = v3;
      v11 = 1;
    }

    return SbfExportBuf(result, p_src, v11);
  }

  if ((*(a2 + 15) & 0xFu) <= 6)
  {
    if (v4 == 5)
    {
      LOWORD(__src) = 2242;
      *(&__src + 2) = 0;
      *(&__src + 1) = 0;
      SbfExportBuf(result, &__src, 2uLL);
      p_src = (a2 + 24);
      result = v3;
      v11 = 8;
      return SbfExportBuf(result, p_src, v11);
    }

    if (v4 == 6)
    {
      v7 = sub_1000EF0FC(result, a2);
      v8 = v3;
      v9 = -80;
      goto LABEL_17;
    }

LABEL_42:
    result[16] = 79;
    return result;
  }

  switch(v4)
  {
    case 9u:
      v14 = *(a2 + 24);
      v13 = *(a2 + 28);
      v15 = v14 << 6;
      v16 = a2 + 32 * (v14 << 38 >> 38) + 8;
      if (v15)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v18 = 4;
      break;
    case 8u:
      v20 = *(a2 + 24);
      v21 = *(a2 + 28);
      v22 = v20 << 6;
      v23 = a2 + 32 * (v20 << 38 >> 38) + 8;
      if (v22)
      {
        v17 = v23;
      }

      else
      {
        v17 = 0;
      }

      if (v21)
      {
        v13 = (v21 - 1);
      }

      else
      {
        v13 = 0;
      }

      v18 = 12;
      break;
    case 7u:
      v7 = sub_1000EF0FC(result, a2);
      v8 = v3;
      v9 = 48;
LABEL_17:
      sub_1000EEEC4(v8, v9, 0, v7);

      return sub_1000EF2C8(v3, a2);
    default:
      goto LABEL_42;
  }

  return sub_1000EEEC4(result, v18, v17, v13);
}

uint64_t sub_1000EEDB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 15) & 0xF;
  if ((*(a2 + 15) & 0xFu) <= 5)
  {
    if ((*(a2 + 15) & 0xFu) <= 2)
    {
      if (v2 == 1)
      {
        v3 = 0;
        return v3 + v2 + 1;
      }

      if (v2 != 2)
      {
        goto LABEL_27;
      }

      v3 = 1;
    }

    else
    {
      if (v2 == 3)
      {
        v2 = 1;
        v3 = sub_1000EEFD8(*(a2 + 24), 1, 0);
        return v3 + v2 + 1;
      }

      if (v2 != 4)
      {
        if (v2 == 5)
        {
          v2 = 1;
          v3 = 8;
          return v3 + v2 + 1;
        }

LABEL_27:
        sub_1000EF4A0();
      }

      v3 = sub_1000EEFD8(*(a2 + 24), 0, 0);
    }

LABEL_24:
    v2 = 1;
    return v3 + v2 + 1;
  }

  if ((v2 - 6) < 2)
  {
    v3 = sub_1000EF0FC();
  }

  else if (v2 == 8)
  {
    v4 = *(a2 + 28);
    if (!v4)
    {
      sub_1000EF474();
    }

    v3 = (v4 - 1);
  }

  else
  {
    if (v2 != 9)
    {
      goto LABEL_27;
    }

    v3 = *(a2 + 28);
  }

  if (v3 < 0x80)
  {
    goto LABEL_24;
  }

  v2 = 1;
  v5 = v3;
  do
  {
    ++v2;
    v6 = v5 > 0xFF;
    v5 >>= 8;
  }

  while (v6);
  return v3 + v2 + 1;
}

_DWORD *sub_1000EEEC4(_DWORD *result, char a2, char *a3, size_t a4)
{
  v6 = result;
  __src[0] = a2;
  memset(&__src[1], 0, 15);
  if (a4 >= 0x80)
  {
    v8 = 0;
    v9 = -8;
    v10 = a4;
    do
    {
      v9 += 8;
      ++v8;
      v11 = v10 >= 0x100;
      v10 >>= 8;
    }

    while (v11);
    if (v8 > 7)
    {
      result[16] = 34;
      return result;
    }

    __src[1] = v8 | 0x80;
    v7 = &__src[2];
    do
    {
      *v7++ = a4 >> v9;
      v9 -= 8;
    }

    while (v9 != -8);
  }

  else
  {
    __src[1] = a4;
    v7 = &__src[2];
  }

  result = SbfExportBuf(result, __src, v7 - __src);
  if (a3)
  {
    return SbfExportBuf(v6, a3, a4);
  }

  return result;
}

uint64_t sub_1000EEFD8(unint64_t a1, int a2, char *__dst)
{
  v18 = 0;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  if (a1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 7;
    v7 = 56;
    do
    {
      *(&v18 + v4) = a1 >> v7;
      v8 = (a1 >> v7) == 0;
      if (v3)
      {
        v8 = ~(a1 >> v7) == 0;
      }

      if (v8)
      {
        v9 = v6;
      }

      else
      {
        v9 = v4;
      }

      v10 = !v8;
      if (v5)
      {
        v5 = 1;
      }

      else
      {
        v6 = v9;
        v5 = v10;
      }

      v7 -= 8;
    }

    while (v4++ < 7);
  }

  else
  {
    v6 = 7;
  }

  v12 = *(&v18 + v6);
  v13 = v6;
  v14 = v12 >= 0;
  v15 = v12 < 0;
  if (v3)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  if (__dst)
  {
    if (v16)
    {
      *__dst++ = v3 << 31 >> 31;
    }

    memcpy(__dst, &v18 + v13, (8 - v13));
  }

  return (v16 - v13 + 8);
}

uint64_t sub_1000EF0FC(uint64_t a1, uint64_t a2)
{
  LODWORD(v2) = *(a2 + 24);
  if (!v2)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = 1;
  do
  {
    if (v6 <= 0x1F)
    {
      v8 = 31;
    }

    else
    {
      v8 = v6;
    }

    if (v7)
    {
      do
      {
        if (v8 == v6)
        {
          sub_1000EF4CC();
        }

        v24[v6++] = v2;
        v2 = *(a2 + 32 * v2);
        v9 = v2 << 38;
        LODWORD(v2) = (v2 << 6) >> 6;
      }

      while (v9);
    }

    v10 = v24[--v6];
    if (v10)
    {
      v11 = (a2 + 32 * v10);
    }

    else
    {
      v11 = &sbfSentinel;
    }

    v12 = *v11;
    v13 = **a1;
    if (((*(*(a1 + 48) + 60) & 0x10) != 0 || v11[2] > v13) && (v13 || (*(v11 + 15) & 0xF) != 0))
    {
      v14 = sub_1000EEDB0(a1, v11);
      if ((*(a2 + 8) & 0xF00000000000000) == 0x600000000000000)
      {
        v15 = strlen(v11 + 32);
        v16 = 1;
        if (v15 >= 0x80)
        {
          v17 = v15;
          do
          {
            ++v16;
            v18 = v17 > 0xFF;
            v17 >>= 8;
          }

          while (v18);
        }

        v19 = v14 + v15 + v16 + 1;
        v20 = 1;
        if (v19 >= 0x80)
        {
          v21 = v19;
          do
          {
            ++v20;
            v18 = v21 > 0xFF;
            v21 >>= 8;
          }

          while (v18);
        }

        v14 = v19 + v20 + 1;
      }

      v5 += v14;
    }

    v2 = v12 << 12 >> 38;
    v22 = (v12 << 12) >> 38;
    v7 = v22 != 0;
  }

  while (v6 || v22);
  return v5;
}

_DWORD *sub_1000EF2C8(_DWORD *result, uint64_t a2)
{
  LODWORD(v2) = *(a2 + 24);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 1;
    do
    {
      if (v6)
      {
        if (v5 >= 0x1F)
        {
          sub_1000EF4F8();
        }

        v17[v5++] = v2;
        v7 = *(a2 + 32 * v2) << 38;
      }

      else
      {
        v8 = v17[--v5];
        if (v8)
        {
          v9 = (a2 + 32 * v8);
        }

        else
        {
          v9 = &sbfSentinel;
        }

        v10 = *v9;
        v11 = **v4;
        if ((*(*(v4 + 6) + 60) & 0x10) == 0 && v9[2] <= v11 || !v11 && (*(v9 + 15) & 0xF) == 0)
        {
          return result;
        }

        if ((*(a2 + 8) & 0xF00000000000000) == 0x600000000000000)
        {
          v12 = strlen(v9 + 32);
          v13 = sub_1000EEDB0(v4, v9);
          v14 = 1;
          if (v12 >= 0x80)
          {
            v15 = v12;
            do
            {
              ++v14;
              v16 = v15 > 0xFF;
              v15 >>= 8;
            }

            while (v16);
          }

          sub_1000EEEC4(v4, 48, 0, v12 + v13 + v14 + 1);
          sub_1000EEEC4(v4, 12, v9 + 32, v12);
        }

        v7 = v10 << 12;
        result = sub_1000EEAF8(v4);
      }

      v2 = v7 >> 38;
      v6 = v7 >> 38 != 0;
    }

    while (v5 || v7 >> 38);
  }

  return result;
}

void *SbfImportPlistd(uint64_t a1, uint64_t a2)
{
  v2 = __chkstk_darwin(a1, a2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v2;
  if (!v7)
  {
    v8 = SbfRoot(v2);
    v6 = 0;
  }

  SbfClearImportContext(v9);
  bzero(v16, 0x1040uLL);
  v15[0] = v9;
  v15[1] = v6;
  v15[2] = v8;
  v15[3] = v4;
  if (!*v4 || !v4[1])
  {
    v10 = "no input data given";
    goto LABEL_8;
  }

  SbfImportInit(v15);
  if (sub_1000EF6AC(v15))
  {
    v10 = "failed validation check";
LABEL_8:
    v11 = 1;
    goto LABEL_9;
  }

  v14 = sub_1000EF7E4(v15, v9, v8, v6);
  if (!v14)
  {
    goto LABEL_10;
  }

  if (!(v16[5] - (v16[4] + v16[1]) + v16[0]))
  {
    v12 = v14;
    SbfClearImportContext(v9);
    *(v9 + 78) = 5;
    return v12;
  }

  v10 = "extraneous data after EOI";
  v11 = 7;
LABEL_9:
  SbfImportSetError(v15, 79, v11, v10);
LABEL_10:
  SbfSetImportContext(v9, v8, v6, 0, 0);
  return 0;
}

uint64_t sub_1000EF6AC(uint64_t a1)
{
  if (!sub_1000F0088(a1))
  {
    return 79;
  }

  if (*(a1 + 80) < *(a1 + 72) - (*(a1 + 64) + *(a1 + 40)) + *(a1 + 32))
  {
    v2 = "length of first object doesn't match size of input";
LABEL_20:
    v3 = 79;
    SbfImportSetError(a1, 79, 1, v2);
    return v3;
  }

  v4 = *(a1 + 88);
  if (v4 == 48)
  {
    return 0;
  }

  if (v4 == 49)
  {
    if (!sub_1000F0088(a1) || *(a1 + 88) != 48)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (v4 != 112)
  {
LABEL_18:
    v2 = "unable to fetch initial object or array";
    goto LABEL_20;
  }

  if (!sub_1000F0088(a1) || *(a1 + 88) != 2 || *(a1 + 80) != 1 || !sub_1000F0200(a1, 1uLL) || **(a1 + 40) != 1)
  {
    v2 = "entitlement not followed by an integer version of 1";
    goto LABEL_20;
  }

  if (!sub_1000F0200(a1, 1uLL))
  {
    v2 = "EOI before entitlements processed";
    goto LABEL_20;
  }

  v3 = 0;
  ++*(a1 + 40);
  return v3;
}

void *sub_1000EF7E4(uint64_t a1, unsigned int *a2, unint64_t a3, char *a4)
{
  if (!sub_1000F0088(a1))
  {
    return 0;
  }

  v8 = *(a1 + 88);
  if (v8 > 0x2F)
  {
    if (*(a1 + 88) <= 0x6Fu)
    {
      if (v8 != 48)
      {
        if (v8 != 49)
        {
          goto LABEL_77;
        }

        goto LABEL_45;
      }
    }

    else if (v8 != 112)
    {
      if (v8 != 176)
      {
        if (v8 != 194)
        {
          goto LABEL_77;
        }

        if (*(a1 + 80) != 8)
        {
          v24 = "size of double is not 8 bytes";
          v40 = a1;
          v43 = 79;
          v41 = 10;
LABEL_133:
          SbfImportSetError(v40, v43, v41, v24);
LABEL_134:
          SbfSetImportContext(a2, a3, a4, 0, 0);
          return 0;
        }

        v20 = *(a1 + 40);
        if ((*(a1 + 72) - (*(a1 + 64) + v20) + *(a1 + 32)) <= 7)
        {
          if (SbfImportFillBuffer(a1) < 8)
          {
            v24 = "EOI processing double";
LABEL_124:
            v40 = a1;
            v43 = 79;
            v41 = 2;
            goto LABEL_133;
          }

          v20 = *(a1 + 40);
          v21 = *(a1 + 80);
        }

        __memcpy_chk();
        *(a1 + 40) = v20 + 8;
        v10 = SbfAddDouble(a2, a3, a4, 0.0);
        if (!v10)
        {
          v47 = SbfError(a2);
          SbfImportSetError(a1, v47, 1, "unable to SbfAddDouble");
        }

        goto LABEL_110;
      }

LABEL_45:
      if (!a4)
      {
        v38 = *(a3 + 15) & 0xF;
        if (v38 != 7)
        {
          if (v38 == 6)
          {
            v10 = a3;
            if (SbfRoot(a2) != a3)
            {
              v24 = "object has no name";
              goto LABEL_131;
            }

            goto LABEL_47;
          }

          v10 = a3;
          if ((*(a3 + 15) & 0xF) != 0)
          {
            goto LABEL_47;
          }
        }
      }

      v10 = SbfAddObject(a2, a3, a4);
      if (!v10)
      {
        v43 = SbfError(a2);
        v24 = "unable to SbfAddObject";
        goto LABEL_100;
      }

LABEL_47:
      v25 = *(a1 + 40) - *(a1 + 32) + *(a1 + 64) + *(a1 + 80);
      while (1)
      {
        v26 = *(a1 + 40) - *(a1 + 32) + *(a1 + 64);
        if (v26 >= v25)
        {
          break;
        }

        if (!sub_1000F0088(a1))
        {
          goto LABEL_134;
        }

        if (*(a1 + 88) != 48)
        {
          v24 = "object is not a constructed sequence";
          goto LABEL_131;
        }

        if (!sub_1000F0088(a1))
        {
          goto LABEL_134;
        }

        if (*(a1 + 88) != 12)
        {
          v24 = "expected UTF-8 string";
          goto LABEL_131;
        }

        v27 = *(a1 + 80);
        if (v27 >= 0x1000)
        {
          v24 = "string size too big";
          goto LABEL_131;
        }

        if (!(*(a1 + 72) - (*(a1 + 64) + *(a1 + 40)) + *(a1 + 32)))
        {
          SbfImportFillBuffer(a1);
          v27 = *(a1 + 80);
        }

        v28 = (a1 + 89);
        if (v27)
        {
          v28 = (a1 + 89);
          do
          {
            v30 = *(a1 + 32);
            v29 = *(a1 + 40);
            v31 = &v29[*(a1 + 64)];
            if (v27 >= *(a1 + 72) - v31 + v30)
            {
              v32 = *(a1 + 72) - v31 + v30;
            }

            else
            {
              v32 = v27;
            }

            memcpy(v28, v29, v32);
            v33 = *(a1 + 80);
            *(a1 + 40) += v32;
            v27 = v33 - v32;
            *(a1 + 80) = v27;
            if (v27)
            {
              if (!SbfImportFillBuffer(a1))
              {
                v24 = "EOI fetching data";
                goto LABEL_124;
              }

              v27 = *(a1 + 80);
            }

            v28 += v32;
          }

          while (v27);
        }

        *v28 = 0;
        if (!sub_1000EF7E4(a1, a2, v10, a1 + 89))
        {
          goto LABEL_134;
        }
      }

      if (v26 == v25)
      {
        return v10;
      }

      v24 = "object size mismatch";
      goto LABEL_131;
    }

    v34 = SbfAddArray(a2, a3, a4);
    if (!v34)
    {
      v43 = SbfError(a2);
      v24 = "unable to SbfAddArray";
      goto LABEL_100;
    }

    v10 = v34;
    v35 = *(a1 + 40) - *(a1 + 32) + *(a1 + 64) + *(a1 + 80);
    while (1)
    {
      v36 = *(a1 + 40) - *(a1 + 32) + *(a1 + 64);
      if (v36 >= v35)
      {
        break;
      }

      if (!sub_1000EF7E4(a1, a2, v10, 0))
      {
        goto LABEL_134;
      }
    }

    if (v36 != v35)
    {
      v24 = "array size mismatch";
      goto LABEL_131;
    }

LABEL_110:
    if (!v10)
    {
      goto LABEL_134;
    }

    return v10;
  }

  if (*(a1 + 88) <= 3u)
  {
    if (v8 == 1)
    {
      v37 = *(a1 + 80);
      if (*(a1 + 72) - (*(a1 + 64) + *(a1 + 40)) + *(a1 + 32) < v37)
      {
        if (SbfImportFillBuffer(a1) < v37)
        {
          v24 = "EOI processing BOOLean";
          goto LABEL_124;
        }

        v37 = *(a1 + 80);
      }

      if (v37 != 1 || (v46 = **(a1 + 40), **(a1 + 40)) && v46 != 255)
      {
        v24 = "bad BOOLean value";
        goto LABEL_131;
      }

      v42 = SbfAddBoolean(a2, a3, a4, v46 != 0);
      ++*(a1 + 40);
      if (!v42)
      {
        v43 = SbfError(a2);
        v24 = "unable to SbfAddBoolean";
        goto LABEL_100;
      }

      return v42;
    }

    if (v8 != 2)
    {
      goto LABEL_77;
    }

    v22 = *(a1 + 80);
    if (!v22)
    {
      v24 = "EOI while processing integer";
      goto LABEL_124;
    }

    v23 = *(a1 + 40);
    if (*(a1 + 72) - &v23[*(a1 + 64)] + *(a1 + 32) < v22)
    {
      if (SbfImportFillBuffer(a1) < v22)
      {
        v24 = "EOI processing integer";
        goto LABEL_124;
      }

      v22 = *(a1 + 80);
      v23 = *(a1 + 40);
    }

    if (v22 < 2 || *v23)
    {
      if (*v23 < 0)
      {
        if (v22 <= 8)
        {
          v48 = 1;
          goto LABEL_140;
        }

LABEL_138:
        v24 = "size of integer is out of range";
        v40 = a1;
        v43 = 79;
        v41 = 11;
        goto LABEL_133;
      }
    }

    else if ((v23[1] & 0x80000000) == 0)
    {
      v24 = "leading zeros is not minimal encoding";
      goto LABEL_131;
    }

    if (v22 < 0xA)
    {
      v48 = 0;
LABEL_140:
      v50 = *v23 >> 7;
      if (v22)
      {
        v51 = v23 + 1;
        do
        {
          v50 = *(v51 - 1) | (v50 << 8);
          *(a1 + 40) = v51++;
          --v22;
        }

        while (v22);
      }

      if (v48)
      {
        v52 = SbfAddInt64(a2, a3, a4, v50);
      }

      else
      {
        v52 = SbfAddUint64(a2, a3, a4, v50);
      }

      v10 = v52;
      if (v52)
      {
        return v10;
      }

      v43 = SbfError(a2);
      if (v48)
      {
        v24 = "unable to SbfAddInt64";
      }

      else
      {
        v24 = "unable to SbfAddUint64";
      }

LABEL_100:
      v40 = a1;
LABEL_132:
      v41 = 1;
      goto LABEL_133;
    }

    goto LABEL_138;
  }

  if (v8 == 4)
  {
    goto LABEL_7;
  }

  if (v8 == 5)
  {
    if (*(a1 + 80))
    {
      v24 = "null shouldn't have data";
LABEL_131:
      v40 = a1;
      v43 = 79;
      goto LABEL_132;
    }

    v42 = SbfAddNull(a2, a3, a4);
    if (!v42)
    {
      v43 = SbfError(a2);
      v24 = "unable to SbfAddNull";
      goto LABEL_100;
    }

    return v42;
  }

  if (v8 != 12)
  {
LABEL_77:
    v24 = "invalid/unknown tag";
    goto LABEL_131;
  }

LABEL_7:
  v9 = *(a1 + 80);
  if (v9)
  {
    if (!(*(a1 + 72) - (*(a1 + 64) + *(a1 + 40)) + *(a1 + 32)))
    {
      SbfImportFillBuffer(a1);
      v9 = *(a1 + 80);
    }

    v10 = 0;
    v11 = 1;
    while (1)
    {
      v13 = *(a1 + 32);
      v12 = *(a1 + 40);
      v14 = &v12[*(a1 + 64)];
      if (v9 >= *(a1 + 72) - v14 + v13)
      {
        v15 = *(a1 + 72) - v14 + v13;
      }

      else
      {
        v15 = v9;
      }

      if (v11)
      {
        if (v8 == 4)
        {
          v17 = SbfAddBlob(a2, a3, a4, v12, v15);
        }

        else
        {
          v17 = SbfAddString(a2, a3, a4, v12, v15);
        }

        v10 = v17;
        if (!v17)
        {
          v43 = SbfError(a2);
          v44 = "unable to SbfAddString";
          v45 = "unable to SbfAddBlob";
          goto LABEL_97;
        }
      }

      else
      {
        v16 = *(a1 + 40);
        if (v8 == 4)
        {
          appended = SbfAppendBlob(a2, v10, v16, v15);
        }

        else
        {
          appended = SbfAppendString(a2, v10, v16, v15);
        }

        v43 = appended;
        if (appended)
        {
          v44 = "unable to SbfAppendString";
          v45 = "unable to SbfAppendBlob";
          goto LABEL_97;
        }
      }

      v19 = *(a1 + 80);
      *(a1 + 40) += v15;
      v9 = v19 - v15;
      *(a1 + 80) = v9;
      if (v9)
      {
        if (!SbfImportFillBuffer(a1))
        {
          v24 = "EOI processing data";
          goto LABEL_124;
        }

        v9 = *(a1 + 80);
      }

      v11 = 0;
      if (!v9)
      {
        goto LABEL_110;
      }
    }
  }

  if (v8 == 4)
  {
    v39 = SbfAddBlob(a2, a3, a4, "", 0);
  }

  else
  {
    v39 = SbfAddString(a2, a3, a4, "", 0);
  }

  v10 = v39;
  if (!v39)
  {
    v43 = SbfError(a2);
    v44 = "unable to SbfAddString empty";
    v45 = "unable to SbfAddBlob empty";
LABEL_97:
    if (v8 == 4)
    {
      v24 = v45;
    }

    else
    {
      v24 = v44;
    }

    goto LABEL_100;
  }

  return v10;
}

uint64_t SbfCheckPlistd(uint64_t a1, uint64_t a2)
{
  v3 = __chkstk_darwin(a1, a2);
  result = 79;
  if (v3 && v2)
  {
    if (v2 >= 0x20)
    {
      v5 = 32;
    }

    else
    {
      v5 = v2;
    }

    __memcpy_chk();
    bzero(v9, 0x1060uLL);
    v6[0] = v3;
    v6[1] = v5;
    v7 = 0u;
    v8 = 0u;
    v9[3] = v6;
    SbfImportInit(v9);
    return sub_1000EF6AC(v9);
  }

  return result;
}

uint64_t sub_1000F0088(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 72) - &v2[*(a1 + 64)] + *(a1 + 32) <= 1uLL)
  {
    if (SbfImportFillBuffer(a1) < 2)
    {
      v4 = "minimum tag size not met";
      goto LABEL_11;
    }

    v2 = *(a1 + 40);
  }

  *(a1 + 88) = *v2;
  *(a1 + 40) = v2 + 1;
  v3 = v2[1];
  *(a1 + 80) = v3;
  if (v3 == 128)
  {
    v4 = "variable size tag not supported";
    v5 = a1;
    v6 = 8;
LABEL_22:
    SbfImportSetError(v5, 79, v6, v4);
    return 0;
  }

  v7 = v2 + 2;
  *(a1 + 40) = v7;
  if ((v3 & 0x80) != 0)
  {
    if (*(a1 + 72) - *(a1 + 64) - v7 + *(a1 + 32) < (v3 & 0x7F) && SbfImportFillBuffer(a1) < (v3 & 0x7F))
    {
      v4 = "EOI processing multibyte tag";
LABEL_11:
      v5 = a1;
      v6 = 2;
      goto LABEL_22;
    }

    *(a1 + 80) = 0;
    v8 = v3 & 0x7F;
    if ((v3 & 0x7F) != 0)
    {
      v3 = 0;
      v9 = *(a1 + 40) + 1;
      do
      {
        v3 = *(v9 - 1) | (v3 << 8);
        *(a1 + 80) = v3;
        *(a1 + 40) = v9++;
        --v8;
      }

      while (v8);
    }

    else
    {
      v3 = 0;
    }
  }

  v10 = *(a1 + 88);
  if (((v10 - 48) < 2 || v10 == 176 || v10 == 112) && v3 == 1)
  {
    v4 = "set or constructed sequence too short";
    v5 = a1;
    v6 = 1;
    goto LABEL_22;
  }

  return 1;
}

void *(**sub_1000F0268(void *(**result)(void *a1)))(void *a1)
{
  result[7] = sub_1000F032C;
  result[3] = sub_1000F03A8;
  result[4] = sub_1000F03B8;
  result[5] = sub_1000F03DC;
  result[6] = sub_1000F0458;
  result[8] = sub_1000F04D4;
  result[9] = sub_1000F0544;
  result[10] = sub_1000F05BC;
  result[11] = sub_1000F060C;
  result[12] = sub_1000F0674;
  *result = sub_1000F06F8;
  result[1] = sub_1000F0708;
  return result;
}

void *sub_1000F03B8(void *a1, int a2)
{
  v2 = a2 == 0;
  if (a2)
  {
    v3 = "<true/>\n";
  }

  else
  {
    v3 = "<false/>\n";
  }

  if (v2)
  {
    v4 = 9;
  }

  else
  {
    v4 = 8;
  }

  return SbfExportBuf(a1, v3, v4);
}

void *sub_1000F04D4(void *a1, unsigned __int8 *a2, unint64_t a3)
{
  SbfExportBuf(a1, "<data>", 6uLL);
  SbfExportB64(a1, a2, a3);

  return SbfExportBuf(a1, "</data>\n", 8uLL);
}

void *sub_1000F0544(void *a1, char *a2, uint64_t a3)
{
  SbfExportBuf(a1, "<string>", 8uLL);
  if (a2 && a3)
  {
    sub_1000F0718(a1, a2, a3);
  }

  return SbfExportBuf(a1, "</string>\n", 0xAuLL);
}

void *sub_1000F05BC(void *a1, int a2)
{
  v3 = a2 == 0;
  if (a2)
  {
    v4 = "<dict>\n";
  }

  else
  {
    v4 = "<array>\n";
  }

  if (v3)
  {
    v5 = 8;
  }

  else
  {
    v5 = 7;
  }

  result = SbfExportBuf(a1, v4, v5);
  ++a1[1];
  return result;
}

void *sub_1000F060C(void *a1, int a2)
{
  --a1[1];
  SbfExportIndent(a1);
  if (a2)
  {
    v4 = "</dict>\n";
  }

  else
  {
    v4 = "</array>\n";
  }

  if (a2)
  {
    v5 = 8;
  }

  else
  {
    v5 = 9;
  }

  return SbfExportBuf(a1, v4, v5);
}

void *sub_1000F0674(void *a1, char *a2)
{
  result = SbfExportIndent(a1);
  if (a2)
  {
    SbfExportBuf(a1, "<key>", 5uLL);
    v5 = strlen(a2);
    sub_1000F0718(a1, a2, v5 + 1);

    return SbfExportBuf(a1, "</key>", 6uLL);
  }

  return result;
}

void *sub_1000F0718(void *result, char *a2, uint64_t a3)
{
  v3 = a2;
  v4 = result;
  v5 = &a2[a3 - 1];
  if (v5 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      if (v7 >= 32 && (v7 <= 0x3E ? (v8 = ((1 << v7) & 0x5000004000000000) == 0) : (v8 = 1), v8) || (result = snprintf(__str, 6uLL, "&#%u;", v7), !result))
      {
        ++v6;
      }

      else
      {
        if (v6 - v3 >= 1)
        {
          SbfExportBuf(v4, v3, v6 - v3);
        }

        ++v6;
        v9 = strlen(__str);
        result = SbfExportBuf(v4, __str, v9);
        v3 = v6;
      }
    }

    while (v6 < v5);
  }

  if (v6 - v3 >= 1)
  {
    return SbfExportBuf(v4, v3, v6 - v3);
  }

  return result;
}

void *SbfImportPlistx(uint64_t a1, uint64_t a2)
{
  v2 = __chkstk_darwin(a1, a2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v2;
  if (!v7)
  {
    v8 = SbfRoot(v2);
    v6 = 0;
  }

  SbfClearImportContext(v9);
  v10 = *(v4 + 8);
  if (v10 == -1)
  {
    v10 = strlen(*v4);
  }

  *(v4 + 8) = v10;
  bzero(&v22, 0x1070uLL);
  v21[0] = v9;
  v21[1] = v6;
  v21[2] = v8;
  v21[3] = v4;
  v28 = SbfDepth(v9, v8);
  if (*v4 && *(v4 + 8))
  {
    SbfImportInit(v21);
    if (sub_1000F0A60(v21))
    {
      v11 = 1;
LABEL_25:
      *(v9 + 88) = v11;
      goto LABEL_26;
    }

    v12 = sub_1000F0C78(v21, v9, v8, v6);
    if (v12)
    {
      v13 = v12;
      if (!sub_1000F12AC(v21) && v27 == 27)
      {
        for (i = v23; ; v23 = i)
        {
          if (!(v26 - &i[v25] + v22))
          {
            if (!SbfImportFillBuffer(v21))
            {
              break;
            }

            i = v23;
          }

          v15 = *i;
          v16 = v15 > 0x20;
          v17 = (1 << v15) & 0x100002600;
          if (v16 || v17 == 0)
          {
            break;
          }

          ++i;
        }

        SbfImportFillBuffer(v21);
        if (!(v26 - &v23[v25] + v22))
        {
          SbfClearImportContext(v9);
          *(v9 + 78) = 6;
          return v13;
        }
      }

      v11 = 7;
      goto LABEL_25;
    }
  }

  else
  {
    SbfImportSetError(v21, 79, 1, "no input data given");
  }

LABEL_26:
  if ((v24 - v23) >= 8)
  {
    v19 = 8;
  }

  else
  {
    v19 = v24 - v23;
  }

  SbfSetImportContext(v9, v8, v6, v23, v19);
  return 0;
}

uint64_t sub_1000F0A60(uint64_t a1)
{
  i = *(a1 + 40);
  if (*(a1 + 72) - (i + *(a1 + 64)) + *(a1 + 32) > 0x25uLL || (v3 = SbfImportFillBuffer(a1), i = *(a1 + 40), v3 >= 0x26))
  {
    if (!memcmp(i, "<?xml version=1.0 encoding=UTF-8?>", 0x26uLL))
    {
      for (i = (i + 38); ; i = (i + 1))
      {
        *(a1 + 40) = i;
        if (!(*(a1 + 72) - (i + *(a1 + 64)) + *(a1 + 32)))
        {
          v8 = SbfImportFillBuffer(a1);
          i = *(a1 + 40);
          if (!v8)
          {
            break;
          }
        }

        v9 = *i;
        v10 = v9 > 0x20;
        v11 = (1 << v9) & 0x100002600;
        if (v10 || v11 == 0)
        {
          break;
        }
      }
    }
  }

  if (*(a1 + 72) - (i + *(a1 + 64)) + *(a1 + 32) <= 0x17uLL)
  {
    if (SbfImportFillBuffer(a1) < 0x18)
    {
      goto LABEL_14;
    }

    i = *(a1 + 40);
  }

  if (*i == 0x505954434F44213CLL && i[1] == 0x207473696C702045 && i[2] == 0x222043494C425550)
  {
    for (j = (i + 3); ; ++j)
    {
      *(a1 + 40) = j;
      if (!(*(a1 + 72) - &j[*(a1 + 64)] + *(a1 + 32)))
      {
        v14 = SbfImportFillBuffer(a1);
        j = *(a1 + 40);
        if (!v14)
        {
          break;
        }
      }

      v15 = *j;
      if ((v15 | 2) == 0x3E)
      {
        goto LABEL_32;
      }
    }

    v15 = *j;
LABEL_32:
    if (v15 != 62)
    {
      return 79;
    }

    do
    {
      *(a1 + 40) = ++j;
      if (!(*(a1 + 72) - &j[*(a1 + 64)] + *(a1 + 32)))
      {
        if (!SbfImportFillBuffer(a1))
        {
          break;
        }

        j = *(a1 + 40);
      }

      v16 = *j;
      v10 = v16 > 0x20;
      v17 = (1 << v16) & 0x100002600;
    }

    while (!v10 && v17 != 0);
  }

LABEL_14:
  v6 = sub_1000F12AC(a1);
  result = 79;
  if (!v6)
  {
    if (*(a1 + 80) == 26)
    {
      return 0;
    }

    else
    {
      return 79;
    }
  }

  return result;
}

void *sub_1000F0C78(uint64_t a1, unsigned int *a2, unint64_t a3, char *a4)
{
  v8 = sub_1000F12AC(a1);
  a2[22] = v8;
  if (v8)
  {
LABEL_2:
    v9 = *(a1 + 40);
    if ((*(a1 + 48) - v9) >= 8)
    {
      v10 = 8;
    }

    else
    {
      v10 = *(a1 + 48) - v9;
    }

    SbfSetImportContext(a2, a3, a4, v9, v10);
    return 0;
  }

  v13 = *(a1 + 80);
  switch(*(a1 + 80))
  {
    case 3:
      if (a3)
      {
        v11 = SbfAddString(a2, a3, a4, "", 0);
        if (!v11)
        {
          goto LABEL_2;
        }
      }

      else
      {
        v11 = 0;
      }

      v40 = sub_1000F174C(a1, 4u);
      if (v11 && !v40 && !SbfSetString(a2, v11, (a1 + 104), *(a1 + 96)))
      {
        return v11;
      }

      goto LABEL_2;
    case 5:
      v19 = SbfAddString(a2, a3, a4, "", 0);
      goto LABEL_71;
    case 6:
      *&v43[0] = 0;
      v29 = *(a1 + 40);
      if (*(a1 + 72) - &v29[*(a1 + 64)] + *(a1 + 32))
      {
        goto LABEL_48;
      }

      if (!SbfImportFillBuffer(a1))
      {
        v11 = 0;
        v41 = 2;
        goto LABEL_103;
      }

      v29 = *(a1 + 40);
LABEL_48:
      if (*v29 == 45)
      {
        *(a1 + 40) = v29 + 1;
        if ((sub_1000F1534(a1, a2, v43, 1, 1) & 1) == 0)
        {
          goto LABEL_90;
        }

        v19 = SbfAddInt64(a2, a3, a4, *&v43[0]);
      }

      else
      {
        if ((sub_1000F1534(a1, a2, v43, 1, 0) & 1) == 0)
        {
          goto LABEL_90;
        }

        v19 = SbfAddUint64(a2, a3, a4, *&v43[0]);
      }

LABEL_71:
      v11 = v19;
      goto LABEL_111;
    case 8:
    case 0xB:
      if (sub_1000F12AC(a1))
      {
        goto LABEL_2;
      }

      v14 = v13 == 8 ? 9 : 12;
      if (v14 != *(a1 + 80))
      {
        goto LABEL_2;
      }

      v15 = v13 == 8;
      goto LABEL_17;
    case 0xA:
    case 0xD:
      v15 = v13 == 10;
LABEL_17:
      v18 = v15;
      v19 = SbfAddBoolean(a2, a3, a4, v18);
      goto LABEL_71;
    case 0xE:
      v19 = SbfAddNull(a2, a3, a4);
      goto LABEL_71;
    case 0xF:
    case 0x11:
      v20 = *(a1 + 88) + 1;
      *(a1 + 88) = v20;
      if (v20 == 64)
      {
        a2[23] = 34;
        v21 = a4;
        v11 = a3;
LABEL_105:
        v25 = *(a1 + 40);
        if ((*(a1 + 48) - v25) >= 8)
        {
          v26 = 8;
        }

        else
        {
          v26 = *(a1 + 48) - v25;
        }

        v27 = a2;
        v28 = v11;
        goto LABEL_109;
      }

      v11 = SbfAddArray(a2, a3, a4);
      if (!v11)
      {
        v21 = a4;
        goto LABEL_105;
      }

      if (*(a1 + 80) != 17)
      {
        v30 = sub_1000F12AC(a1);
        v31 = *(a1 + 80);
        v32 = v31 == 16 && v30 == 0;
        if (!v32 && *(a1 + 80))
        {
          while (1)
          {
            *(a1 + 81) = v31;
            *(a1 + 80) = 0;
            if (!sub_1000F0C78(a1, a2, v11, 0) || sub_1000F12AC(a1))
            {
              break;
            }

            v31 = *(a1 + 80);
            if (v31 == 16)
            {
              goto LABEL_110;
            }
          }

          v21 = 0;
          goto LABEL_105;
        }
      }

      goto LABEL_110;
    case 0x12:
    case 0x14:
      v16 = *(a3 + 15);
      v17 = *(a1 + 88) + 1;
      *(a1 + 88) = v17;
      if (v17 == 64)
      {
        a2[23] = 34;
        v11 = a3;
LABEL_40:
        v24 = a4;
        goto LABEL_41;
      }

      if (a4)
      {
        goto LABEL_28;
      }

      v39 = v16 & 0xF;
      if (v39 == 7)
      {
        goto LABEL_28;
      }

      if (v39 == 6)
      {
        v11 = a3;
        if (SbfRoot(a2) != a3)
        {
          v24 = 0;
          v11 = a3;
          goto LABEL_41;
        }
      }

      else
      {
        v11 = a3;
        if (!v39)
        {
LABEL_28:
          v11 = SbfAddObject(a2, a3, a4);
          if (!v11)
          {
            goto LABEL_40;
          }
        }
      }

      if (*(a1 + 80) == 20)
      {
        goto LABEL_110;
      }

      v22 = sub_1000F12AC(a1);
      v23 = *(a1 + 80);
      if (!v22 && v23 == 19)
      {
        goto LABEL_110;
      }

      v24 = (a1 + 104);
      while (v23 == 1 && !sub_1000F174C(a1, 2u))
      {
        if (!sub_1000F0C78(a1, a2, v11, a1 + 104))
        {
          goto LABEL_41;
        }

        if (sub_1000F12AC(a1))
        {
          goto LABEL_39;
        }

        v23 = *(a1 + 80);
        if (v23 == 19)
        {
          if (v11)
          {
            goto LABEL_110;
          }

LABEL_39:
          v24 = 0;
          goto LABEL_41;
        }
      }

      v24 = 0;
      a2[22] = 1;
LABEL_41:
      v25 = *(a1 + 40);
      if ((*(a1 + 48) - v25) >= 8)
      {
        v26 = 8;
      }

      else
      {
        v26 = *(a1 + 48) - v25;
      }

      v27 = a2;
      v28 = v11;
      v21 = v24;
LABEL_109:
      SbfSetImportContext(v27, v28, v21, v25, v26);
      v11 = 0;
LABEL_110:
      --*(a1 + 88);
LABEL_111:
      if (!v11)
      {
        goto LABEL_2;
      }

      return v11;
    case 0x15:
      if (a3)
      {
        v11 = SbfAddBlob(a2, a3, a4, 0, 0);
        if (!v11)
        {
          goto LABEL_111;
        }
      }

      else
      {
        v11 = 0;
      }

      memset(v43, 0, sizeof(v43));
      Base64StreamDecodeInit(v43);
      do
      {
        v33 = *(a1 + 32);
        v34 = *(a1 + 40);
        v35 = *(a1 + 72) - (v34 + *(a1 + 64));
        if (!(v35 + v33))
        {
          if (!SbfImportFillBuffer(a1))
          {
            break;
          }

          v33 = *(a1 + 32);
          v34 = *(a1 + 40);
          v35 = *(a1 + 72) - (v34 + *(a1 + 64));
        }

        v42 = 4096;
        v36 = v33 + v35;
        if (v36 >= 0x1558)
        {
          v37 = 5464;
        }

        else
        {
          v37 = v36;
        }

        v38 = memchr(v34, 60, v37);
        if (v38)
        {
          v37 = v38 - v34;
        }

        if (v37)
        {
          if (Base64StreamDecode(v43, v34, v37, (a1 + 104), 4096, &v42))
          {
            goto LABEL_101;
          }
        }

        else if (Base64StreamDecodeFinal(v43, (a1 + 104), 4096, &v42))
        {
LABEL_101:
          v41 = 8;
LABEL_103:
          a2[22] = v41;
          goto LABEL_111;
        }

        *(a1 + 40) += v37;
        if (SbfAppendBlob(a2, v11, (a1 + 104), v42))
        {
          goto LABEL_90;
        }
      }

      while (v37);
      if (sub_1000F12AC(a1) || *(a1 + 80) != 22)
      {
LABEL_90:
        v11 = 0;
        goto LABEL_111;
      }

      goto LABEL_111;
    case 0x17:
      v19 = SbfAddBlob(a2, a3, a4, "", 0);
      goto LABEL_71;
    case 0x18:
      *&v43[0] = 0;
      v11 = 0;
      if (!sub_1000F1534(a1, a2, v43, 0, 0))
      {
        goto LABEL_111;
      }

      v19 = SbfAddDouble(a2, a3, a4, *v43);
      goto LABEL_71;
    default:
      goto LABEL_2;
  }
}

uint64_t sub_1000F12AC(uint64_t a1)
{
  *(a1 + 80) = 0;
  v2 = *(a1 + 81);
  if (v2)
  {
    result = 0;
    *(a1 + 80) = v2;
    *(a1 + 81) = 0;
    return result;
  }

  v4 = 0;
  v5 = (a1 + 4208);
  while (1)
  {
    do
    {
      while (1)
      {
        while (1)
        {
          v6 = *(a1 + 40);
          if (!(*(a1 + 72) - &v6[*(a1 + 64)] + *(a1 + 32)))
          {
            if (!SbfImportFillBuffer(a1))
            {
              return 2;
            }

            v6 = *(a1 + 40);
          }

          v7 = *v6;
          if (!*v6)
          {
            return 2;
          }

          *(a1 + 40) = v6 + 1;
          if (v4 <= 2)
          {
            break;
          }

          if (v4 > 4)
          {
            if (v7 == 45)
            {
              v9 = 6;
            }

            else
            {
              v9 = 4;
            }

            if (v7 == 62)
            {
              v10 = 0;
            }

            else
            {
              v10 = v9;
            }

            if (v4 == 5)
            {
              v4 = v9;
            }

            else
            {
              v4 = v10;
            }
          }

          else if (v4 == 3)
          {
            v4 = 4;
LABEL_31:
            if (v7 != 45)
            {
              return 8;
            }
          }

          else if (v7 == 45)
          {
            v4 = 5;
          }

          else
          {
            v4 = 4;
          }
        }

        if (v4)
        {
          break;
        }

        if (v7 == 60)
        {
          *(a1 + 4200) = 0;
          *v5 = 0;
          v4 = 1;
        }

        else
        {
          v4 = 0;
          if (v7 == 62)
          {
            return 8;
          }
        }
      }

      if (v4 != 1)
      {
        v4 = 3;
        goto LABEL_31;
      }

      v4 = 2;
    }

    while (v7 == 33);
    if (v7 == 62)
    {
      break;
    }

    v8 = *(a1 + 4200);
    if (v8 > 0x1E)
    {
      return 8;
    }

    v5[v8] = v7;
    ++*(a1 + 4200);
    v4 = 1;
  }

  v5[*(a1 + 4200)] = 0;
  v11 = *(a1 + 4200);
  v12 = &byte_10018B3E8;
  v13 = 26;
  while (1)
  {
    v14 = *(v12 + 1);
    if (v14 >= v11)
    {
      if (v14 > v11)
      {
        return 8;
      }

      result = memcmp(*(v12 - 1), (a1 + 4208), v11);
      if (!result)
      {
        break;
      }
    }

    v12 += 24;
    result = 8;
    if (!--v13)
    {
      return result;
    }
  }

  *(a1 + 80) = *v12;
  return result;
}

uint64_t SbfCheckPlistx(uint64_t a1, uint64_t a2)
{
  v2 = __chkstk_darwin(a1, a2);
  v4 = v3;
  v5 = v2;
  if (v3 == -1)
  {
    v4 = strlen(v2);
  }

  bzero(v10, 0x1090uLL);
  v7[0] = v5;
  v7[1] = v4;
  v8 = 0u;
  v9 = 0u;
  v10[3] = v7;
  SbfImportInit(v10);
  return sub_1000F0A60(v10);
}

uint64_t sub_1000F1534(uint64_t a1, uint64_t a2, unint64_t *a3, int a4, int a5)
{
  v10 = *(a1 + 40);
  v11 = *(a1 + 72) - &v10[*(a1 + 64)] + *(a1 + 32);
  if (v11)
  {
    while (*v10 != 47)
    {
      ++v10;
      if (!--v11)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    SbfImportFillBuffer(a1);
    v10 = *(a1 + 40);
    v12 = *(a1 + 72) - &v10[*(a1 + 64)] + *(a1 + 32);
    if (!v12)
    {
      goto LABEL_35;
    }

    while (*v10 != 47)
    {
      ++v10;
      if (!--v12)
      {
        goto LABEL_35;
      }
    }
  }

  __endptr = v10;
  *__error() = 0;
  v13 = *(a1 + 40);
  if (a4)
  {
    if (a5)
    {
      v14 = strtoll(v13 - 1, &__endptr, 0);
    }

    else
    {
      v14 = strtoull(v13, &__endptr, 0);
    }

    *a3 = v14;
    v15 = __endptr;
    if (__endptr != *(a1 + 40) && (v14 || *__error() != 22))
    {
LABEL_17:
      v16 = *a3;
      if (a5)
      {
        if ((*&v16 - 0x7FFFFFFFFFFFFFFFLL) < 2)
        {
          goto LABEL_24;
        }
      }

      else if (v16 == NAN)
      {
LABEL_24:
        if (*__error() == 34)
        {
          goto LABEL_36;
        }

        v15 = __endptr;
LABEL_26:
        *(a1 + 40) = v15;
        if (*(a1 + 72) - &v15[*(a1 + 64)] + *(a1 + 32) >= 2uLL && *v15 == 60 && v15[1] == 47)
        {
          if (!sub_1000F12AC(a1))
          {
            return 1;
          }

          v18 = a4 ? 7 : 25;
          if (v18 == *(a1 + 80))
          {
            return 1;
          }

          goto LABEL_35;
        }

LABEL_36:
        v20 = 11;
        goto LABEL_37;
      }

      if (a4)
      {
        goto LABEL_26;
      }

      v17 = fabs(v16) == INFINITY;
      if (*a3 != 2.22507386e-308 && !v17)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }
  }

  else
  {
    *a3 = strtod(v13, &__endptr);
    v15 = __endptr;
    if (__endptr != *(a1 + 40))
    {
      goto LABEL_17;
    }
  }

LABEL_35:
  v20 = 10;
LABEL_37:
  result = 0;
  *(a2 + 88) = v20;
  return result;
}

uint64_t sub_1000F174C(uint64_t a1, unsigned __int8 a2)
{
  *(a1 + 96) = 0;
  v3 = a1 + 104;
  while (1)
  {
    v4 = *(a1 + 40);
    if (!(*(a1 + 72) - &v4[*(a1 + 64)] + *(a1 + 32)))
    {
      if (!SbfImportFillBuffer(a1))
      {
        return 1;
      }

      v4 = *(a1 + 40);
    }

    v5 = *v4;
    if (v5 == 38)
    {
      if (*(a1 + 72) - &v4[*(a1 + 64)] + *(a1 + 32) <= 3uLL)
      {
        if (SbfImportFillBuffer(a1) < 4)
        {
          return 1;
        }

        v4 = *(a1 + 40);
        if (*v4 != 38)
        {
          goto LABEL_30;
        }
      }

      if (v4[1] != 35)
      {
LABEL_30:
        v19 = *(a1 + 72) - &v4[*(a1 + 64)] + *(a1 + 32);
        if (v19 <= 5)
        {
          SbfImportFillBuffer(a1);
        }

        v20 = &byte_10018B360;
        v21 = "&gt;";
        while (1)
        {
          v22 = *(v20 - 1);
          if (v19 >= v22)
          {
            v23 = *(a1 + 40);
            if (!memcmp(v21, v23, *(v20 - 1)))
            {
              break;
            }
          }

          v21 = *(v20 + 1);
          v20 += 24;
          if (!v21)
          {
            return 1;
          }
        }

        *(a1 + 40) = &v23[v22];
        *(v3 + *(a1 + 96)) = *v20;
        goto LABEL_71;
      }

      v9 = 0;
      v12 = v4[2];
      v10 = v4 + 2;
      v11 = v12;
      v13 = v12 == 120;
      if (v12 == 120)
      {
        v14 = 16;
      }

      else
      {
        v14 = 10;
      }

      if (v13)
      {
        v15 = v10 + 1;
      }

      else
      {
        v15 = v10;
      }

      while (1)
      {
        *(a1 + 40) = v15;
        if (!(*(a1 + 72) - &v15[*(a1 + 64)] + *(a1 + 32)))
        {
          v16 = SbfImportFillBuffer(a1);
          v15 = *(a1 + 40);
          if (!v16)
          {
            break;
          }
        }

        v17 = *v15;
        if (v17 < 0)
        {
          break;
        }

        if ((_DefaultRuneLocale.__runetype[v17] & 0x10000) == 0)
        {
          break;
        }

        v18 = v17 - 48;
        if (v11 != 120 && v18 > 9)
        {
          break;
        }

        if (v18 > 9)
        {
          v18 = (__tolower(v17) - 97) + 10;
          v15 = *(a1 + 40);
        }

        v9 = v18 + v9 * v14;
        ++v15;
      }

      if (!(*(a1 + 72) - &v15[*(a1 + 64)] + *(a1 + 32)))
      {
        if (!SbfImportFillBuffer(a1))
        {
          goto LABEL_45;
        }

        v15 = *(a1 + 40);
      }

      *(a1 + 40) = v15 + 1;
      if (*v15 != 59)
      {
        return 1;
      }

LABEL_45:
      if (v9 <= 0xD && ((1 << v9) & 0x2600) != 0)
      {
        v25 = *(a1 + 96);
        v26 = (v3 + v25);
      }

      else
      {
        if ((v9 - 32) >> 5 >= 0x6BF && (v9 - 57344) >> 1 >= 0xFFF)
        {
          if (v9 - 0x10000 >= 0x100000)
          {
            return 6;
          }

          v39 = *(a1 + 96);
          if ((v39 - 4093) < 4)
          {
            return 1;
          }

          v40 = (v3 + v39);
          *v40 = (v9 >> 18) | 0xF0;
          v40[1] = (v9 >> 12) & 0x3F | 0x80;
          v40[2] = (v9 >> 6) & 0x3F | 0x80;
          v40[3] = v9 & 0x3F | 0x80;
          v27 = 3;
          goto LABEL_50;
        }

        v25 = *(a1 + 96);
        v26 = (v3 + v25);
        if (v9 > 0x7F)
        {
          if (v9 > 0x7FF)
          {
            if ((v25 - 4094) < 3)
            {
              return 1;
            }

            *v26 = (v9 >> 12) | 0xE0;
            v26[1] = (v9 >> 6) & 0x3F | 0x80;
            v26[2] = v9 & 0x3F | 0x80;
            v27 = 2;
          }

          else
          {
            if ((v25 - 4095) < 2)
            {
              return 1;
            }

            *v26 = (v9 >> 6) | 0xC0;
            v26[1] = v9 & 0x3F | 0x80;
            v27 = 1;
          }

          goto LABEL_50;
        }
      }

      if (v25 == 4096)
      {
        return 1;
      }

      v27 = 0;
      *v26 = v9;
LABEL_50:
      v28 = v27 + *(a1 + 96);
LABEL_70:
      *(a1 + 96) = v28;
      goto LABEL_71;
    }

    if (v5 == 60)
    {
      *(v3 + *(a1 + 96)) = 0;
      return sub_1000F12AC(a1) || *(a1 + 80) != a2;
    }

    v6 = *(a1 + 72) - &v4[*(a1 + 64)] + *(a1 + 32);
    if (v6 <= 3)
    {
      SbfImportFillBuffer(a1);
      v4 = *(a1 + 40);
      v5 = *v4;
      v6 = *(a1 + 72) - &v4[*(a1 + 64)] + *(a1 + 32);
    }

    if ((v5 & 0x80) != 0)
    {
      if ((v5 & 0xE0) == 0xC0)
      {
        if (v6 < 2)
        {
          return 6;
        }

        v24 = v4[1];
        if ((v24 & 0xC0) != 0x80)
        {
          return 6;
        }

        v7 = v24 & 0x3F | ((v5 & 0x1F) << 6);
        v8 = 2;
      }

      else if ((v5 & 0xF0) == 0xE0)
      {
        if (v6 < 3)
        {
          return 6;
        }

        v29 = v4[1];
        if ((v29 & 0xC0) != 0x80)
        {
          return 6;
        }

        v30 = v4[2];
        if ((v30 & 0xC0) != 0x80)
        {
          return 6;
        }

        v7 = ((v5 & 0xF) << 12) | ((v29 & 0x3F) << 6) | v30 & 0x3F;
        v8 = 3;
      }

      else
      {
        result = 6;
        if (v6 < 4)
        {
          return result;
        }

        if ((v5 & 0xF8) != 0xF0)
        {
          return result;
        }

        v32 = v4[1];
        if ((v32 & 0xC0) != 0x80)
        {
          return result;
        }

        v33 = v4[2];
        if ((v33 & 0xC0) != 0x80)
        {
          return result;
        }

        v34 = v4[3];
        if ((v34 & 0xC0) != 0x80)
        {
          return result;
        }

        v7 = ((v5 & 7) << 18) | ((v32 & 0x3F) << 12) | ((v33 & 0x3F) << 6) | v34 & 0x3F;
        v8 = 4;
      }
    }

    else
    {
      v7 = v5;
      v8 = 1;
    }

    v35 = v7 > 0xD || ((1 << v7) & 0x2600) == 0;
    if (v35 && (v7 - 32) >> 5 >= 0x6BF && (v7 - 57344) >> 1 >= 0xFFF && (v7 - 0x10000) >> 20 != 0)
    {
      return 6;
    }

    v36 = *(a1 + 96);
    if ((v5 & 0x80) != 0)
    {
      memcpy((v3 + v36), v4, v8);
      *(a1 + 40) += v8;
      v28 = v8 + *(a1 + 96) - 1;
      goto LABEL_70;
    }

    *(v3 + v36) = v5;
    ++*(a1 + 40);
LABEL_71:
    v37 = *(a1 + 96) + 1;
    *(a1 + 96) = v37;
    if (v37 >= 0x1000)
    {
      return 1;
    }
  }
}

uint64_t SbfExportRaw(const void **a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v6 = a2;
  v29 = 0u;
  v30 = 0u;
  v22 = a3;
  v23 = 0;
  v8 = a3[1];
  v9 = a3[2];
  v24 = v8;
  v25 = v8;
  v26 = v8 + v9;
  v27 = 0;
  v28 = a1;
  *&v30 = 0;
  if (!a2)
  {
    v6 = a1[2];
  }

  v10 = *a3;
  if (((*(a1 + 60) & 0x10) != 0 || *(v6 + 16) > v10) && (v10 || (*(v6 + 15) & 0xF) != 0))
  {
    if (*(a3 + 11) && SbfImportFormat(a1))
    {
      v11 = SbfImportFormat(a1);
      v12 = SbfFormatToName(v11, *(a3 + 11) > 1u);
      sub_1000F2118(&v22, "Import format is %s\n", v12);
    }

    SbfSetDelimiter(a1, 46);
    if (v6 == a1[2] && *(v22 + 11))
    {
      sub_1000F2654(&v22, "ref %p:\n", a1);
      ++v23;
      sub_1000F2654(&v22, "parent %p, ", *a1);
      sub_1000F2118(&v22, "dom %p, ", a1[1]);
      sub_1000F2118(&v22, "root %p\n", a1[2]);
      sub_1000F2654(&v22, "now %zu, ", a1[3]);
      sub_1000F2118(&v22, "vmid cid %p\n", a1[6]);
      sub_1000F2654(&v22, "flags 0x%02X", *(a1 + 15));
      sub_1000F26F0(&v22, *(a1 + 15));
      sub_1000F2118(&v22, "\n");
      sub_1000F2654(&v22, "use_count %d, ", *(a1 + 36));
      if (*(a1 + 74))
      {
        v21 = *(a1 + 74);
        sub_1000F2118(&v22, "delim '%c', ");
      }

      else
      {
        sub_1000F2118(&v22, "delim <none>, ");
      }

      sub_1000F2118(&v22, "error_latch %d\n", *(a1 + 79));
      sub_1000F2654(&v22, "import_context %p, ", a1[10]);
      sub_1000F2118(&v22, "import_error %d error %d\n", *(a1 + 22), *(a1 + 23));
      sub_1000F27BC(&v22, a1, 0x60uLL, 3u);
      --v23;
      v15 = a1[1];
      sub_1000F2654(&v22, "dom %p:\n", v15);
      ++v23;
      sub_1000F2654(&v22, "signature 0x%08X, ", *v15);
      sub_1000F2118(&v22, "version %d.%02d, ", *(v15 + 1) / 0x64u, *(v15 + 1) % 0x64u);
      sub_1000F2118(&v22, "flags 0x%08x ", *(v15 + 2));
      sub_1000F26F0(&v22, *(v15 + 2));
      sub_1000F2118(&v22, "\n");
      sub_1000F2654(&v22, "size %d (0x%x), ", *(v15 + 3), *(v15 + 3));
      sub_1000F2118(&v22, "end %d (0x%x), ", *(v15 + 5), *(v15 + 5));
      sub_1000F2118(&v22, "used %d (0x%x)\n", *(v15 + 4), *(v15 + 4));
      v16 = *(v15 + 7);
      sub_1000F2654(&v22, "space frags %d, start 0x%x\n", *(v15 + 6), v16);
      if (*(v22 + 11) >= 2u)
      {
        v17 = v23++;
        if (v16)
        {
          do
          {
            v18 = &v15[v16];
            sub_1000F2654(&v22, "size %d, next 0x%x\n", *(v18 + 1), *v18);
            v16 = *v18;
          }

          while (v16);
          v17 = v23 - 1;
        }

        v23 = v17;
      }

      sub_1000F27BC(&v22, v15, 0x40uLL, 3u);
      --v23;
    }

    sub_1000F21A0(&v22, a1, v6);
    v8 = v24;
    v14 = v25;
    v13 = v27 != 0;
  }

  else
  {
    v13 = 0;
    v14 = v8;
  }

  if ((v14 != v8 || v13) && !a3[3])
  {
    SbfExportBuf(&v22, byte_10015E200, 1uLL);
  }

  v19 = SbfExportFlush(&v22);
  if (a4 && !v19)
  {
    *a4 = v27;
  }

  return DWORD2(v29);
}

void *sub_1000F2118(void *a1, char *__format, ...)
{
  va_start(va, __format);
  v3 = vsnprintf(__str, 0x100uLL, __format, va);
  if (v3 <= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 255;
  }

  return SbfExportBuf(a1, __str, v4);
}

void *sub_1000F21A0(void *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = **result;
  if ((*(result[6] + 60) & 0x10) != 0 || *(a3 + 16) > v6)
  {
    v7 = *(a3 + 8);
    if (v6 | v7 & 0xF00000000000000)
    {
      v8 = (a3 - *(a2 + 16)) >> 5;
      v9 = SbfAtomTypeName(HIBYTE(v7) & 0xF);
      sub_1000F2654(v5, "atom #%ld %s", v8, v9);
      v10 = *(a3 + 8);
      if (v10 << 38 && (*(a3 - (v10 << 38 >> 33) + 8) & 0xF00000000000000) == 0x700000000000000)
      {
        sub_1000F2118(v5, " [%zu]");
      }

      else
      {
        sub_1000F2118(v5, " %s");
      }

      if (*(*v5 + 44))
      {
        v11 = *(a3 + 8) & 0xE00000000000000;
        if (v11 == 0x800000000000000 || v11 == 0x600000000000000)
        {
          v12 = sub_1000F2BA4(a3);
          sub_1000F2118(v5, ", size %zu", v12);
        }

        sub_1000F2118(v5, ", change %d", *a3 >> 52);
        sub_1000F2118(v5, ", ticks %zu", *(a3 + 16));
      }

      v13 = *(a3 + 8);
      v14 = HIBYTE(v13) & 0xF;
      if ((HIBYTE(v13) & 0xFu) <= 4)
      {
        if ((HIBYTE(v13) & 0xFu) <= 1)
        {
          if (v14)
          {
            sub_1000F2118(v5, ", null\n", v26);
          }

          else
          {
            sub_1000F2118(v5, ", <none>\n", v26);
          }

LABEL_49:

          return sub_1000F2A40(v5, a2, a3);
        }

        switch(v14)
        {
          case 2:
            *(a3 + 24);
            sub_1000F2118(v5, ", BOOL: %s\n");
            goto LABEL_49;
          case 3:
            v18 = *(a3 + 24);
            sub_1000F2118(v5, ", int: %zd\n");
            goto LABEL_49;
          case 4:
            v15 = *(a3 + 24);
            sub_1000F2118(v5, ", uint: %zu\n");
            goto LABEL_49;
        }

LABEL_48:
        sub_1000F2118(v5, "<invalid type 0x%x>\n");
        goto LABEL_49;
      }

      if ((v14 - 6) < 2)
      {
        sub_1000F2118(v5, ", container count %d", *(a3 + 28) & 0xFFFFFF);
        if (*(*v5 + 44))
        {
          sub_1000F2118(v5, ", tree %d", *(a3 + 24));
        }

        sub_1000F2118(v5, "\n");
        sub_1000F2A40(v5, a2, a3);
        ++v5[1];
        result = SbfFirst(a3);
        if (result)
        {
          v16 = result;
          do
          {
            sub_1000F21A0(v5, a2, v16);
            result = SbfNext(v16);
            v16 = result;
          }

          while (result);
        }

        goto LABEL_45;
      }

      if ((v14 - 8) >= 2)
      {
        if (v14 == 5)
        {
          v17 = *(a3 + 24);
          sub_1000F2118(v5, ", double: %g\n");
          goto LABEL_49;
        }

        goto LABEL_48;
      }

      if ((v13 & 0xF00000000000000) == 0x800000000000000)
      {
        __s = 0;
        if (!SbfStringPtr(a2, a3, &__s))
        {
          sub_1000F2118(v5, ", string: %.16s", __s);
          if (strlen(__s) >= 0x11)
          {
            sub_1000F2118(v5, "...", v27);
          }

          goto LABEL_40;
        }
      }

      else
      {
        __s = 0;
        if (!SbfBlobPtr(a2, a3, &__s))
        {
          v25 = SbfBlobSize(a2, a3);
          sub_1000F2118(v5, ", blob ");
          if (*(*v5 + 44))
          {
            ++v5[1];
            sub_1000F27BC(v5, __s, v25, 1u);
            --v5[1];
          }

          else
          {
            sub_1000F2118(v5, "(%zu bytes)");
          }

          goto LABEL_40;
        }
      }

      sub_1000F2118(v5, "(inaccessible)");
LABEL_40:
      sub_1000F2118(v5, "\n");
      result = sub_1000F2A40(v5, a2, a3);
      v20 = *v5;
      v19 = v5[1];
      v5[1] = v19 + 1;
      if (*(v20 + 44) < 2u)
      {
LABEL_46:
        v5[1] = v19;
        return result;
      }

      sub_1000F2654(v5, "data @%d, size %d, allocated %d, ", (*(a3 + 24) << 6) >> 6, *(a3 + 28), *(a3 + 32 * ((*(a3 + 24) << 38) >> 38)));
      v21 = *(a3 + 24);
      v22 = v21 << 6;
      v23 = a3 + 32 * (v21 << 38 >> 38) + 8;
      if (v22)
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      result = sub_1000F27BC(v5, v24, *(a3 + 28), 2u);
LABEL_45:
      v19 = v5[1] - 1;
      goto LABEL_46;
    }
  }

  return result;
}

void *sub_1000F2654(void *a1, char *__format, ...)
{
  va_start(va, __format);
  v3 = vsnprintf(__str, 0x100uLL, __format, va);
  SbfExportIndent(a1);
  if (v3 <= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 255;
  }

  return SbfExportBuf(a1, __str, v4);
}

void *sub_1000F26F0(void *result, int a2)
{
  if (!a2)
  {
    return result;
  }

  v2 = a2;
  v3 = result;
  sub_1000F2118(result, " {");
  if (v2)
  {
    sub_1000F2118(v3, " RDONLY");
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  sub_1000F2118(v3, " INIT");
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_15:
    sub_1000F2118(v3, " MEM_MAP");
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_14:
  sub_1000F2118(v3, " MEM_HEAP");
  if ((v2 & 8) != 0)
  {
    goto LABEL_15;
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    sub_1000F2118(v3, " NO_AUTO_TICKS");
  }

LABEL_8:

  return sub_1000F2118(v3, " }");
}

uint64_t sub_1000F27BC(uint64_t result, unsigned __int8 *a2, unint64_t a3, unsigned int a4)
{
  if (*(*result + 44) >= a4)
  {
    v6 = result;
    if (a3 >= 0x10000)
    {
      v7 = 0x10000;
    }

    else
    {
      v7 = a3;
    }

    __s1[0] = 0;
    __s1[1] = 0;
    if (a4 == 3)
    {
      sub_1000F2654(result, "");
    }

    result = sub_1000F2118(v6, "raw %zu (0x%zx) bytes:\n", v7, v7);
    v8 = v6[1];
    v6[1] = v8 + 1;
    if (a3)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = (v7 + 15) >> 4;
      __n = 0;
      while (1)
      {
        v13 = 16 * v10++;
        if (v10 < v12)
        {
          if (v7 - v13 >= 0x10)
          {
            v14 = 16;
          }

          else
          {
            v14 = v7 - v13;
          }

          if (__n == v14)
          {
            result = memcmp(__s1, a2, __n);
            if (!result)
            {
              if ((v11 & 1) == 0)
              {
                result = sub_1000F2654(v6, "****\n");
              }

              v11 = 1;
              goto LABEL_30;
            }
          }

          __memcpy_chk();
          __n = v14;
        }

        sub_1000F2654(v6, "%04zX: ", v13);
        v15 = 0;
        v16 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        do
        {
          if (v9 + v15 >= ((v7 + 15) & 0x3FFF0))
          {
            break;
          }

          if (v9 + v15 >= v7)
          {
            sub_1000F2118(v6, "   ");
            v19 = 32;
          }

          else
          {
            sub_1000F2118(v6, "%02X ", a2[v15]);
            v17 = a2[v15];
            v18 = v17 < 0 ? __maskrune(a2[v15], 0x40000uLL) : _DefaultRuneLocale.__runetype[v17] & 0x40000;
            v19 = v18 ? v17 : 46;
          }

          *((&v21 | v16 & 1) + v15) = v19;
          if (v15 == 7)
          {
            sub_1000F2118(v6, "- ");
            LOBYTE(v22) = 32;
            v16 = 1;
          }

          ++v15;
        }

        while (v15 != 16);
        a2 += v15;
        result = sub_1000F2118(v6, "| %s |\n", &v21);
        v11 = 0;
LABEL_30:
        v12 = (v7 + 15) >> 4;
        v9 += 16;
        if (v10 == v12)
        {
          v8 = v6[1] - 1;
          break;
        }
      }
    }

    v6[1] = v8;
  }

  return result;
}

void *sub_1000F2A40(void *result, uint64_t a2, uint64_t a3)
{
  if (*(*result + 44))
  {
    v5 = result;
    ++result[1];
    sub_1000F2654(result, "left +%d, right +%d, ", (*a3 << 6) >> 6, (*a3 >> 20) >> 6);
    sub_1000F2118(v5, "parent -%d (atom #%ld), ", (*(a3 + 8) << 6) >> 6, ((a3 - *(a2 + 16)) >> 5) - ((*(a3 + 8) << 38) >> 38));
    sub_1000F2118(v5, "level %d, ", *(a3 + 8) >> 26);
    sub_1000F2118(v5, "flags 0x%02X", *(a3 + 8) >> 60);
    v6 = *(a3 + 8) >> 60;
    if (v6)
    {
      sub_1000F2118(v5, " {");
      if (v6)
      {
        sub_1000F2118(v5, " HASNAME");
      }

      if ((v6 & 2) != 0)
      {
        sub_1000F2118(v5, " CHANGES");
      }

      sub_1000F2118(v5, " }");
    }

    sub_1000F2118(v5, "\n");
    v7 = sub_1000F2BA4(a3);
    result = sub_1000F27BC(v5, a3, v7, 3u);
    --v5[1];
  }

  return result;
}

uint64_t sub_1000F2BA4(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
    if (v1 << 38)
    {
      v2 = *(a1 - (v1 << 38 >> 33) + 8) & 0xF00000000000000;
      v3 = v1 & 0xF00000000000000;
      if (v2 != 0x600000000000000 && v3 != 0x800000000000000)
      {
        return 32;
      }

      return 64;
    }

    if ((v1 & 0xF00000000000000) == 0x800000000000000)
    {
      return 64;
    }
  }

  return 32;
}

uint64_t SbfExportSbf(uint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  if (!a3)
  {
    return 22;
  }

  v6 = a2;
  v7 = a1;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v24[0] = a3;
  v24[1] = 0;
  v8 = a3[1];
  v25 = v8;
  v26 = v8;
  if (v8)
  {
    v8 += a3[2];
  }

  LOBYTE(v33) = 0;
  v27 = v8;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  LODWORD(v31) = 0;
  if (!a2)
  {
    v6 = *(a1 + 16);
  }

  if (SbfCheckAtom(a1, v6))
  {
    return 22;
  }

  v10 = SbfRoot(v7);
  v11 = *(v7 + 60);
  if (v6 == v10 && (v11 & 0x11) != 0)
  {
    v12 = 0;
    v29 = v7;
LABEL_12:
    v13 = SbfDomDataRO(v7);
    v14 = SbfDomUsed(v29);
    SbfExportBuf(v24, v13, v14);
    goto LABEL_31;
  }

  if ((v11 & 0x10) == 0 && *(v6 + 16) <= *a3 && !a3[9])
  {
    v12 = 0;
    goto LABEL_31;
  }

  v15 = SbfCreate(0x20000000uLL);
  v12 = v15;
  if (!v15)
  {
    v22 = 12;
LABEL_30:
    LODWORD(v31) = v22;
    goto LABEL_31;
  }

  v29 = v15;
  v16 = SbfRoot(v15);
  if (!SbfAddAtom(v24, v12, v16, 0, v6))
  {
    v22 = *(v29 + 92);
    goto LABEL_30;
  }

  v17 = a3[9];
  if (v17)
  {
    v18 = a3[8];
    SbfSetDelimiter(v12, 46);
    v19 = SbfRoot(v12);
    if (!SbfType(v12, v19))
    {
      SbfAddObject(v12, 0, 0);
    }

    v20 = 0;
    while (SbfSearchName(v12, 0, (v18 + v20)) || SbfAddNone(v12, 0, (v18 + v20)))
    {
      v20 += strlen((v18 + v20)) + 1;
      if (v20 >= v17)
      {
        LODWORD(v31) = 0;
        goto LABEL_26;
      }
    }

    LODWORD(v31) = *(v12 + 92);
    if (v31)
    {
      goto LABEL_31;
    }
  }

LABEL_26:
  v21 = SbfRoot(v12);
  if (SbfType(v12, v21))
  {
    v7 = v29;
    goto LABEL_12;
  }

  v28 = 0;
  v26 = v25;
LABEL_31:
  v23 = SbfExportFlush(v24);
  if (a4 && !v23)
  {
    *a4 = v28;
  }

  if (v12)
  {
    SbfDestroy(v12);
  }

  return v31;
}

void *SbfAddAtom(unint64_t **a1, size_t a2, unint64_t a3, char *a4, uint64_t a5)
{
  v6 = a3;
  if (a1)
  {
    v9 = **a1;
    if ((*(a1[6] + 60) & 0x10) == 0 && *(a5 + 16) <= v9)
    {
      goto LABEL_46;
    }

    if (!v9 && (*(a5 + 15) & 0xF) == 0)
    {
      goto LABEL_46;
    }
  }

  v10 = *(a5 + 8);
  v11 = HIBYTE(v10) & 0xF;
  if (v11 > 9)
  {
    goto LABEL_45;
  }

  v12 = 1 << v11;
  if ((v12 & 0x33E) != 0)
  {
LABEL_8:
    v6 = SbfAddFromAtom(a2, a3, a4, a5);
    goto LABEL_9;
  }

  if ((v12 & 0xC0) == 0)
  {
    if (!a1)
    {
      if (a4)
      {
        v6 = SbfSearchName(a2, a3, a4);
      }

      if (v6)
      {
        SbfRemove(a2, v6);
      }

      goto LABEL_46;
    }

    goto LABEL_8;
  }

  if ((v10 & 0xF00000000000000) == 0x700000000000000)
  {
    v13 = SbfAddArray(a2, a3, a4);
    goto LABEL_22;
  }

  if (!a4)
  {
    v23 = *(a3 + 15) & 0xF;
    if (v23 != 7)
    {
      if (v23 != 6)
      {
        if ((*(a3 + 15) & 0xF) != 0)
        {
          goto LABEL_23;
        }

        goto LABEL_21;
      }

      if (*(a2 + 16) == a3)
      {
        goto LABEL_23;
      }

LABEL_45:
      v6 = 0;
      *(a2 + 92) = 22;
      goto LABEL_46;
    }
  }

LABEL_21:
  v13 = SbfAddObject(a2, a3, a4);
LABEL_22:
  v6 = v13;
  if (!v13)
  {
    goto LABEL_46;
  }

LABEL_23:
  LODWORD(v14) = *(a5 + 24);
  if (v14)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      if (v16)
      {
        if (v15 >= 0x1F)
        {
          sub_1000F33EC();
        }

        v25[v15++] = v14;
        v17 = *(a5 + 32 * v14) << 38;
      }

      else
      {
        v18 = v25[--v15];
        if (v18)
        {
          v19 = (a5 + 32 * v18);
        }

        else
        {
          v19 = &sbfSentinel;
        }

        v20 = *v19;
        if ((*(a5 + 8) & 0xF00000000000000) == 0x600000000000000)
        {
          v21 = v19 + 4;
        }

        else
        {
          v21 = 0;
        }

        if (!SbfAddAtom(a1, a2, v6, v21))
        {
          v6 = 0;
          goto LABEL_46;
        }

        v17 = v20 << 12;
      }

      v14 = v17 >> 38;
      v22 = v17 >> 38;
      v16 = v17 >> 38 != 0;
    }

    while (v15 || v22);
  }

LABEL_9:
  if (a1 && v6)
  {
    *v6 = *a5 & 0xFFF0000000000000 | *v6 & 0xFFFFFFFFFFFFFLL;
LABEL_47:
    v6[2] = *(a5 + 16);
    return v6;
  }

LABEL_46:
  if ((*(a2 + 60) & 0x10) != 0)
  {
    goto LABEL_47;
  }

  return v6;
}

void *SbfAddSbf(size_t a1, unint64_t a2, char *a3, uint64_t a4)
{
  v6 = a2;
  if (!a2)
  {
    v6 = SbfRoot(a1);
  }

  SbfClearImportContext(a1);
  result = SbfAddAtom(0, a1, v6, a3, a4);
  if (result)
  {
    *(a1 + 78) = 8;
  }

  return result;
}

uint64_t SbfCheckDom(unint64_t a1, unint64_t a2, int a3)
{
  if (!a1)
  {
    return 22;
  }

  v3 = 79;
  if (a2 >= 0x40 && (a1 & 7) == 0)
  {
    if (*a1 == -575689472 && (v4 = *(a1 + 12), v4 >= 0x40) && (v5 = *(a1 + 16), v5 <= v4) && (!a3 || v5 <= a2 && sub_1000F31D0(a1, a1 + 32, a1, a1 + v5)))
    {
      return 0;
    }

    else
    {
      return 79;
    }
  }

  return v3;
}

uint64_t sub_1000F31D0(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a2 < a3)
  {
    return 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = a4 - 32;
  if (a4 - 32 < a2)
  {
    return 0;
  }

  v10 = *(a2 + 8);
  v11 = HIBYTE(v10) & 0xF;
  if (v11 > 9)
  {
    return 0;
  }

  if (v10 << 38)
  {
    v13 = a2 - ((v10 << 38) >> 33);
    if (v13 < a3 || v13 > v9)
    {
      return 0;
    }
  }

  else if (a1 + 32 != a2)
  {
    return 0;
  }

  if ((HIBYTE(v10) & 0xE) == 6)
  {
    v16 = *(a2 + 24);
    if (v16)
    {
      v19 = 0;
      if (sub_1000F32F8(a1, a2, v16, a3, a4, &v19) && (*(a2 + 28) & 0xFFFFFF) == v19)
      {
        return 1;
      }
    }

    else if ((*(a2 + 28) & 0xFFFFFF) == 0)
    {
      return 1;
    }

    return 0;
  }

  if (v11 < 8)
  {
    return 1;
  }

  v17 = *(a2 + 24) << 6;
  if (!v17)
  {
    return 1;
  }

  v6 = 0;
  v18 = a2 + 32 * (v17 >> 6) + 8;
  if (v18 >= a1 + 33 && v18 <= a4 - 8)
  {
    return 1;
  }

  return v6;
}

uint64_t sub_1000F32F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  if (a3)
  {
    v11 = (a2 + 32 * a3);
  }

  else
  {
    v11 = &sbfSentinel;
  }

  v12 = *v11 << 38;
  if (!v12 || (result = sub_1000F32F8(a1, a2, v12 >> 38, a4, a5, a6), result))
  {
    result = sub_1000F31D0(a1, v11, a4, a5);
    if (result)
    {
      v14 = *(v11 + 3) & 0xFFFFFF;
      v15 = (*a6)++;
      if (v14 == v15)
      {
        if (((*v11 >> 26) & 0x3FFFFFF) == 0)
        {
          return 1;
        }

        result = sub_1000F32F8(a1, a2, *v11 << 12 >> 38, a4, a5, a6);
        if (result)
        {
          return 1;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t SbfExportTable(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  if (!a3)
  {
    return 22;
  }

  v6 = a2;
  v117 = 0;
  v118 = 0;
  v119 = 0;
  v110[0] = a3;
  v110[1] = 0;
  v8 = a3[1];
  v111 = v8;
  v112 = v8;
  if (v8)
  {
    v8 += a3[2];
  }

  v113 = v8;
  v114 = 0;
  v115 = a1;
  v116 = 0;
  v118 = 0;
  if (!a2)
  {
    v6 = *(a1 + 16);
  }

  if (SbfCheckAtom(a1, v6))
  {
    return 22;
  }

  v103[0] = 0;
  v104 = 0;
  v103[1] = v103;
  v105 = v6;
  *v106 = v110;
  *&v106[2] = a3;
  __b[0] = 0;
  __s = 0;
  __b[1] = 0;
  v108 = 0uLL;
  SbfSetDelimiter(a1, 46);
  v10 = a3[6];
  if (!v10)
  {
    v12 = 0;
    if (sub_1000F3F54(v103, 0))
    {
      goto LABEL_13;
    }

    v12 = 0;
LABEL_174:
    *(a1 + 88) = 1;
    goto LABEL_175;
  }

  v11 = a3[7];
  if (v11)
  {
    v100[0] = a3[6];
    v100[1] = v11;
    v101 = 0u;
    v102 = 0u;
    v10 = SbfCreateFromData(v100, v11, 1);
    a3[6] = v10;
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  v16 = *(v10 + 16);
  if (!v16)
  {
    v79 = "no formatter";
LABEL_173:
    v83 = *v106;
    *(**v106 + 80) = v79;
    *(v83 + 64) = 22;
    goto LABEL_174;
  }

  if ((*(v16 + 8) & 0xF00000000000000) != 0x600000000000000)
  {
    v79 = "expected style string root to contain only objects";
    goto LABEL_173;
  }

  v96 = a4;
  v17 = SbfFirst(v16);
  if (!v17)
  {
    v21 = 0;
    v20 = 0;
    goto LABEL_116;
  }

  v18 = v17;
  v94 = v12;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v98 = 0;
  v22 = 0;
  do
  {
    v23 = v21;
    v24 = v20;
    v25 = v19;
    if (!strcmp((v18 + 32), "include"))
    {
      if (v98)
      {
        v12 = v94;
        v79 = "cannot specify 'include' directive twice";
        goto LABEL_173;
      }

      if (v22)
      {
        v79 = "cannot specify 'include' directive, already have 'exclude'";
        goto LABEL_172;
      }

      v98 = v18;
    }

    else if (!strcmp((v18 + 32), "exclude"))
    {
      if (v22)
      {
        v79 = "cannot specify 'exclude' directive twice";
        goto LABEL_172;
      }

      if (v98)
      {
        v79 = "cannot specify 'exclude' directive, already have 'include'";
        goto LABEL_172;
      }

      v98 = 0;
      v22 = v18;
    }

    else if (!strcmp((v18 + 32), "format"))
    {
      v21 = v18;
      if (v23)
      {
        v79 = "cannot specify 'format' directive twice";
        goto LABEL_172;
      }
    }

    else if (!strcmp((v18 + 32), "title"))
    {
      v20 = v18;
      if (v24)
      {
        v79 = "cannot specify 'title' directive twice";
        goto LABEL_172;
      }
    }

    else
    {
      if (strcmp((v18 + 32), "index"))
      {
        v79 = "unknown / invalid directive";
        goto LABEL_172;
      }

      v19 = v18;
      if (v25)
      {
        v79 = "cannot specify 'index' directive twice";
LABEL_172:
        v12 = v94;
        goto LABEL_173;
      }
    }

    v18 = SbfNext(v18);
  }

  while (v18);
  if (v19)
  {
    v51 = *v106;
    if ((*(v19 + 8) & 0xF00000000000000) == 0x800000000000000)
    {
      SbfStringPtr(*(*v106 + 48), v19, &__s);
    }

    else
    {
      *(**v106 + 80) = "expected a string to following 'index' directive";
      *(v51 + 64) = 22;
    }
  }

  v12 = v94;
  if (!(v98 | v22))
  {
LABEL_116:
    v60 = sub_1000F3F54(v103, 0);
    v79 = 0;
    if (v60)
    {
      goto LABEL_117;
    }

    goto LABEL_173;
  }

  if (v98)
  {
    v58 = *(v98 + 8);
    if ((HIBYTE(v58) & 0xFu) - 7 > 1)
    {
      v59 = "expected a string or array following 'include' directive";
      goto LABEL_165;
    }

    if ((v58 & 0xF00000000000000) != 0x800000000000000)
    {
      v91 = SbfFirst(v98);
      if (!v91)
      {
        goto LABEL_166;
      }

      v92 = v91;
      while (sub_1000F47D8(v103, v92))
      {
        v92 = SbfNext(v92);
        if (!v92)
        {
          goto LABEL_166;
        }
      }

      goto LABEL_115;
    }

    if ((sub_1000F47D8(v103, v98) & 1) == 0)
    {
LABEL_115:
      v59 = 0;
LABEL_165:
      v80 = *v106;
      *(**v106 + 80) = v59;
      *(v80 + 64) = 22;
    }
  }

LABEL_166:
  if (!v22)
  {
    goto LABEL_117;
  }

  if ((*(v22 + 15) & 0xFu) - 7 > 1)
  {
    v81 = "expected a string or array following 'exclude' directive";
  }

  else
  {
    if (sub_1000F3F54(v103, v22))
    {
      goto LABEL_117;
    }

    v81 = 0;
  }

  v82 = *v106;
  *(**v106 + 80) = v81;
  *(v82 + 64) = 22;
LABEL_117:
  if (!v20)
  {
    goto LABEL_144;
  }

  if ((*(v20 + 8) & 0xF00000000000000) == 0x600000000000000)
  {
    v61 = SbfFirst(v20);
    if (!v61)
    {
      goto LABEL_144;
    }

    v62 = v61;
    while (1)
    {
      v120[0] = 0;
      if (SbfStringPtr(*(*v106 + 48), v62, v120))
      {
        break;
      }

      for (i = v103[0]; i; i = *(i + 6))
      {
        if (!strcmp(*(i + 4), (v62 + 32)))
        {
          *i = v120[0];
          *(i + 8) = 0;
        }
      }

      v62 = SbfNext(v62);
      if (!v62)
      {
        goto LABEL_144;
      }
    }

    v64 = "failed getting title string";
  }

  else
  {
    v64 = "expected an object following 'title' directive";
  }

  v71 = *v106;
  *(**v106 + 80) = v64;
  *(v71 + 64) = 22;
LABEL_144:
  if (!v21)
  {
    goto LABEL_159;
  }

  if ((*(v21 + 8) & 0xF00000000000000) == 0x600000000000000)
  {
    v72 = SbfFirst(v21);
    if (!v72)
    {
      goto LABEL_159;
    }

    v73 = v72;
    while (1)
    {
      v120[0] = 0;
      if (SbfStringPtr(*(*v106 + 48), v73, v120))
      {
        break;
      }

      v74 = v103[0];
      if (v103[0])
      {
        v75 = v120[0];
        do
        {
          if (!strcmp(*(v74 + 4), (v73 + 32)))
          {
            *(v74 + 2) = v75;
          }

          v74 = *(v74 + 6);
        }

        while (v74);
      }

      v73 = SbfNext(v73);
      if (!v73)
      {
        goto LABEL_159;
      }
    }

    v76 = "failed getting format string";
  }

  else
  {
    v76 = "expected an object following 'format' directive";
  }

  v77 = *v106;
  *(**v106 + 80) = v76;
  *(v77 + 64) = 22;
LABEL_159:
  v78 = v103[0];
  if (v103[0])
  {
    a4 = v96;
    do
    {
      v78[5] = strlen(*v78);
      v78 = v78[6];
    }

    while (v78);
  }

  else
  {
    a4 = v96;
  }

LABEL_13:
  if ((*(*&v106[2] + 40) & 8) != 0)
  {
    v26 = SbfCreate(0x20000000uLL);
    if (!v26)
    {
LABEL_207:
      if ((v112 != v111 || v114) && !a3[3])
      {
        SbfExportBuf(v110, byte_10015E202, 1uLL);
      }

      v90 = SbfExportFlush(v110);
      if (a4 && !v90)
      {
        *a4 = v114;
      }

      goto LABEL_175;
    }

    v27 = v26;
    v28 = SbfAddObject(v26, 0, 0);
    if (!v28 || (v29 = v28, (v30 = SbfAddArray(v27, v28, "include")) == 0) || (v31 = v30, (v99 = SbfAddObject(v27, v29, "title")) == 0) || (v93 = SbfAddObject(v27, v29, "format")) == 0)
    {
LABEL_206:
      SbfDestroy(v27);
      goto LABEL_207;
    }

    v32 = v103[0];
    if (v103[0])
    {
      v95 = v12;
      v97 = a4;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 1;
      do
      {
        v37 = *(v32 + 4);
        if ((v36 & 1) == 0 || *v37 != 46 || v37[1])
        {
          SbfAddString(v27, v31, 0, v37, 0xFFFFFFFFFFFFFFFFLL);
          v38 = *(v32 + 4);
          v39 = *v32;
          if (strcmp(v38, *v32))
          {
            SbfAddString(v27, v99, v38, v39, 0xFFFFFFFFFFFFFFFFLL);
            ++v34;
          }

          ++v35;
          v40 = *(v32 + 2);
          if (v40)
          {
            SbfAddString(v27, v93, *(v32 + 4), v40, 0xFFFFFFFFFFFFFFFFLL);
            ++v33;
          }
        }

        v36 = 0;
        v32 = *(v32 + 6);
      }

      while (v32);
      if (!v35)
      {
        SbfRemove(v27, v31);
      }

      if (!v34)
      {
        SbfRemove(v27, v99);
      }

      v12 = v95;
      a4 = v97;
      if (v33)
      {
        goto LABEL_203;
      }
    }

    else
    {
      SbfRemove(v27, v31);
      SbfRemove(v27, v99);
    }

    SbfRemove(v27, v93);
LABEL_203:
    if (__s)
    {
      SbfAddString(v27, v29, "index", __s, 0xFFFFFFFFFFFFFFFFLL);
    }

    SbfExportJson(v27, v29, *&v106[2], 0);
    goto LABEL_206;
  }

  BYTE8(v108) = 0;
  sub_1000F43C0(v103);
  v13 = v103[0];
  if (v103[0])
  {
    v14 = 0;
    do
    {
      v15 = v13[5];
      v13 = v13[6];
      if (v15 > v14)
      {
        v14 = v15;
      }
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  __b[0] = malloc_type_malloc(v14 + 1, 0x1F594CF3uLL);
  v41 = malloc_type_malloc(v14 + 1, 0x5426EDF2uLL);
  __b[1] = v41;
  if (__b[0])
  {
    v42 = v41 == 0;
  }

  else
  {
    v42 = 1;
  }

  if (!v42)
  {
    memset(__b[0], 32, v14);
    *(__b[0] + v14) = 0;
    *__b[1] = 0;
    *&v108 = v14;
    BYTE8(v108) = 1;
    v44 = *(*&v106[2] + 40);
    if ((v44 & 2) != 0)
    {
      v52 = v103[0];
      if (v103[0])
      {
        do
        {
          v53 = strlen(*v52);
          if (v53 >= v52[5])
          {
            v54 = v52[5];
          }

          else
          {
            v54 = v53;
          }

          SbfExportBuf(*v106, *v52, v54);
          if (v52[6])
          {
            v55 = ",";
          }

          else
          {
            v55 = "\n";
          }

          SbfExportBuf(*v106, v55, 1uLL);
          v52 = v52[6];
        }

        while (v52);
      }
    }

    else if ((v44 & 4) != 0)
    {
      if (v44)
      {
        v56 = "<!DOCTYPE html>\n<html>\n  <head></head>\n  <body>\n    <table border>\n      <tr>\n";
        v57 = 78;
      }

      else
      {
        v56 = "<!DOCTYPE html><html><head></head><body><table border><tr>";
        v57 = 58;
      }

      SbfExportBuf(*v106, v56, v57);
      v65 = *v106;
      v66 = v103[0];
      v67 = *(*v106 + 8) + 4;
      *(*v106 + 8) = v67;
      if (v66)
      {
        if (v44)
        {
          v68 = "</th>\n";
        }

        else
        {
          v68 = "</th>";
        }

        if (v44)
        {
          v69 = 6;
        }

        else
        {
          v69 = 5;
        }

        do
        {
          SbfExportIndent(*v106);
          SbfExportBuf(*v106, "<th>", 4uLL);
          v70 = strlen(*v66);
          SbfExportBuf(*v106, *v66, v70);
          SbfExportBuf(*v106, v68, v69);
          v66 = v66[6];
        }

        while (v66);
        v65 = *v106;
        v67 = *(*v106 + 8);
      }

      else if (v44)
      {
        v69 = 6;
      }

      else
      {
        v69 = 5;
      }

      v65[1] = v67 - 1;
      SbfExportIndent(v65);
      if (v44)
      {
        v86 = "</tr>\n";
      }

      else
      {
        v86 = "</tr>";
      }

      SbfExportBuf(*v106, v86, v69);
    }

    else
    {
      v45 = v103[0];
      if (v103[0])
      {
        do
        {
          v46 = *(v45 + 6);
          if (v46 == 7)
          {
            v47 = 1;
          }

          else
          {
            v47 = 3;
          }

          if (v46 == 6 || v46 == 8)
          {
            v49 = 1;
          }

          else
          {
            v49 = v47;
          }

          sub_1000F50A4(v103, *v45, v49, v45[5], v45[6] == 0);
          if (v45[6])
          {
            v50 = " ";
          }

          else
          {
            v50 = "\n";
          }

          SbfExportBuf(*v106, v50, 1uLL);
          v45 = v45[6];
        }

        while (v45);
      }
    }

    sub_1000F43C0(v103);
    v87 = *(*&v106[2] + 40);
    if ((v87 & 4) != 0)
    {
      if (v87)
      {
        v88 = "    </table>\n  </body>\n</html>\n";
        v89 = 31;
      }

      else
      {
        v88 = "</table></body></html>\n";
        v89 = 23;
      }

      SbfExportBuf(*v106, v88, v89);
    }

    goto LABEL_207;
  }

  v43 = *v106;
  *(**v106 + 80) = "can't allocate memory for internal buffers";
  *(v43 + 64) = 12;
LABEL_175:
  if (__b[0])
  {
    free(__b[0]);
  }

  if (__b[1])
  {
    free(__b[1]);
  }

  v84 = v103[0];
  if (v103[0])
  {
    do
    {
      v85 = v84;
      v84 = v84[6];
      if (*(v85 + 8) == 1 && *v85)
      {
        free(*v85);
      }

      free(v85);
    }

    while (v84);
  }

  if (v104)
  {
    SbfDestroy(v104);
  }

  if (v12)
  {
    SbfDestroy(v12);
  }

  return v117;
}

BOOL sub_1000F3F54(uint64_t *a1, uint64_t a2)
{
  v4 = SbfFirst(a1[3]);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = "can't generate format, row header types are not consistent.";
    do
    {
      if (v5 <= (*(v4 + 28) & 0xFFFFFFu))
      {
        v5 = *(v4 + 28) & 0xFFFFFF;
      }

      if (v6)
      {
        if (v6 != (*(v4 + 15) & 0xF))
        {
          goto LABEL_54;
        }
      }

      else
      {
        v6 = *(v4 + 15) & 0xF;
      }

      v4 = SbfNext(v4);
    }

    while (v4);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  if (a1[10])
  {
    v8 = malloc_type_calloc(1uLL, 0x38uLL, 0x1070040CD05D66BuLL);
    if (!v8)
    {
      v7 = "can't allocate memory for new column";
LABEL_54:
      v17 = 0;
      v37 = a1[4];
      *(*v37 + 80) = v7;
      v37[16] = 22;
      return v17;
    }

    v9 = v8;
    *a1[1] = v8;
    a1[1] = (v8 + 48);
    v10 = a1[10];
    *v9 = v10;
    v9[8] = 0;
    *(v9 + 6) = v6;
    *(v9 + 4) = ".";
    *(v9 + 5) = strlen(v10);
  }

  if (v6 != 6)
  {
    if (v6 == 7)
    {
      if (v5)
      {
        v11 = malloc_type_calloc(1uLL, 0x38uLL, 0x1070040CD05D66BuLL);
        if (v11)
        {
          v12 = v11;
          *a1[1] = v11;
          a1[1] = (v11 + 48);
          v13 = snprintf(0, 0, "%zu", 0);
          v14 = v13 + 1;
          v15 = malloc_type_malloc(v13 + 1, 0x520BE792uLL);
          if (v15)
          {
            v16 = v15;
            v17 = 1;
            v18 = 1;
            while (1)
            {
              v19 = v18;
              snprintf(v16, v14, "%zu", v18 - 1);
              *v12 = v16;
              v12[8] = 1;
              *(v12 + 6) = 0;
              *(v12 + 4) = v16;
              *(v12 + 5) = v13;
              if (v5 == v19)
              {
                return v17;
              }

              v20 = malloc_type_calloc(1uLL, 0x38uLL, 0x1070040CD05D66BuLL);
              if (!v20)
              {
                break;
              }

              v12 = v20;
              *a1[1] = v20;
              a1[1] = (v20 + 48);
              v13 = snprintf(0, 0, "%zu", v19);
              v14 = v13 + 1;
              v16 = malloc_type_malloc(v13 + 1, 0x520BE792uLL);
              v18 = v19 + 1;
              if (!v16)
              {
                v21 = "can't allocate memory for column title";
                goto LABEL_61;
              }
            }

            v21 = "can't allocate memory for new column";
LABEL_61:
            v40 = a1[4];
            *(*v40 + 80) = v21;
            v40[16] = 12;
            return v19 >= v5;
          }

          v25 = a1 + 4;
          v26 = "can't allocate memory for column title";
        }

        else
        {
          v25 = a1 + 4;
          v26 = "can't allocate memory for new column";
        }

LABEL_57:
        v38 = *v25;
        *(**v25 + 80) = v26;
        *(v38 + 64) = 12;
        return 0;
      }
    }

    else
    {
      v32 = *a1;
      v33 = SbfFirst(a1[3]);
      if (v33 || (v33 = a1[3]) != 0)
      {
        v25 = a1 + 4;
        v26 = "can't allocate memory for new column";
        do
        {
          v34 = v33 + 32;
          if (v32)
          {
            v35 = v32;
            while (strcmp(*(v35 + 32), (v33 + 32)))
            {
              v35 = *(v35 + 48);
              if (!v35)
              {
                goto LABEL_47;
              }
            }
          }

          else
          {
LABEL_47:
            if (!sub_1000F4704(*(*v25 + 48), (v33 + 32), a2))
            {
              v36 = malloc_type_calloc(1uLL, 0x38uLL, 0x1070040CD05D66BuLL);
              if (!v36)
              {
                goto LABEL_57;
              }

              *a1[1] = v36;
              a1[1] = (v36 + 48);
              *v36 = v34;
              v36[8] = 0;
              *(v36 + 6) = *(v33 + 15) & 0xF;
              *(v36 + 4) = v34;
              *(v36 + 5) = strlen((v33 + 32));
              if (!v32)
              {
                v32 = *a1;
              }
            }
          }

          v33 = SbfNext(v33);
        }

        while (v33);
      }
    }

    return 1;
  }

  v22 = *a1;
  v23 = SbfFirst(a1[3]);
  if (!v23)
  {
    return 1;
  }

  v24 = v23;
  v25 = a1 + 4;
  v26 = "can't allocate memory for new column";
  do
  {
    v27 = SbfFirst(v24);
    if (v27)
    {
      v28 = v27;
      do
      {
        v29 = v28 + 32;
        if (v22)
        {
          v30 = v22;
          while (strcmp(*(v30 + 32), (v28 + 32)))
          {
            v30 = *(v30 + 48);
            if (!v30)
            {
              goto LABEL_33;
            }
          }
        }

        else
        {
LABEL_33:
          if (!sub_1000F4704(*(*v25 + 48), (v28 + 32), a2))
          {
            v31 = malloc_type_calloc(1uLL, 0x38uLL, 0x1070040CD05D66BuLL);
            if (!v31)
            {
              goto LABEL_57;
            }

            *a1[1] = v31;
            a1[1] = (v31 + 48);
            *v31 = v29;
            v31[8] = 0;
            *(v31 + 6) = *(v28 + 15) & 0xF;
            *(v31 + 4) = v29;
            *(v31 + 5) = strlen((v28 + 32));
            if (!v22)
            {
              v22 = *a1;
            }
          }
        }

        v28 = SbfNext(v28);
      }

      while (v28);
    }

    v24 = SbfNext(v24);
    v17 = 1;
  }

  while (v24);
  return v17;
}

uint64_t sub_1000F43C0(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 40);
  result = SbfFirst(*(a1 + 24));
  v4 = result;
  if (result || (v4 = *(a1 + 24)) != 0)
  {
    v5 = 0;
    if (v2)
    {
      v6 = "<tr>\n";
    }

    else
    {
      v6 = "<tr>";
    }

    v7 = 4;
    if (v2)
    {
      v7 = 5;
    }

    v33 = v7;
    v34 = v6;
    if (v2)
    {
      v8 = "</tr>\n";
    }

    else
    {
      v8 = "</tr>";
    }

    v9 = 5;
    if (v2)
    {
      v9 = 6;
    }

    v31 = v9;
    v32 = v8;
    do
    {
      v10 = *(a1 + 32);
      v11 = **v10;
      if (((*(v10[6] + 60) & 0x10) != 0 || *(v4 + 16) > v11) && (v11 || (*(v4 + 15) & 0xF) != 0))
      {
        if (*(a1 + 72) == 1 && (*(*(a1 + 40) + 40) & 4) != 0)
        {
          SbfExportIndent(v10);
          v12 = *(a1 + 32);
          ++v12[1];
          SbfExportBuf(v12, v34, v33);
        }

        for (i = *a1; i; i = *(i + 48))
        {
          v14 = *(i + 32);
          if (*v14 != 46 || (v15 = v4, v14[1]))
          {
            v16 = strcmp(*(i + 32), (v4 + 32));
            v15 = v4;
            if (v16)
            {
              v15 = sub_1000F4894(*(*(a1 + 32) + 48), v4, v14);
            }
          }

          v17 = *(i + 48) == 0;
          v35 = 3;
          if (*(a1 + 72) == 1)
          {
            **(a1 + 56) = 0;
          }

          if (v15)
          {
            if (*(a1 + 72) == 1)
            {
              if (v15 == v4)
              {
                v18 = v5;
              }

              else
              {
                v18 = -1;
              }

              sub_1000F4A20(a1, i, v15, *(a1 + 56), v18, *(a1 + 64) + 1, &v35);
            }

            else
            {
              if (v15 == v4)
              {
                v19 = v5;
              }

              else
              {
                v19 = -1;
              }

              v20 = sub_1000F4A20(a1, i, v15, 0, v19, 0, &v35);
              if (v20 > *(i + 40))
              {
                *(i + 40) = v20;
              }
            }
          }

          if (*(a1 + 72) != 1)
          {
            continue;
          }

          v21 = *(a1 + 56);
          v22 = *(*(a1 + 40) + 40);
          if ((v22 & 2) != 0)
          {
            v25 = strlen(*(a1 + 56));
            SbfExportBuf(*(a1 + 32), v21, v25);
            if (!*(i + 48))
            {
              break;
            }

            v23 = *(a1 + 32);
            v24 = ",";
          }

          else
          {
            if ((v22 & 4) != 0)
            {
              SbfExportIndent(*(a1 + 32));
              SbfExportBuf(*(a1 + 32), "<td>", 4uLL);
              v27 = strlen(v21);
              SbfExportBuf(*(a1 + 32), v21, v27);
              v23 = *(a1 + 32);
              if (v22)
              {
                v24 = "</td>\n";
              }

              else
              {
                v24 = "</td>";
              }

              if (v22)
              {
                v26 = 6;
              }

              else
              {
                v26 = 5;
              }

              goto LABEL_53;
            }

            sub_1000F50A4(a1, *(a1 + 56), v35, *(i + 40), v17);
            if (!*(i + 48))
            {
              break;
            }

            v23 = *(a1 + 32);
            v24 = " ";
          }

          v26 = 1;
LABEL_53:
          SbfExportBuf(v23, v24, v26);
        }

        if (*(a1 + 72) == 1)
        {
          v28 = *(a1 + 32);
          if ((*(*(a1 + 40) + 40) & 4) != 0)
          {
            --v28[1];
            SbfExportIndent(v28);
            v28 = *(a1 + 32);
            v30 = v31;
            v29 = v32;
          }

          else
          {
            v29 = "\n";
            v30 = 1;
          }

          SbfExportBuf(v28, v29, v30);
        }

        ++v5;
      }

      result = SbfNext(v4);
      v4 = result;
    }

    while (result);
  }

  return result;
}

BOOL sub_1000F4704(uint64_t a1, const char *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  if ((*(a3 + 8) & 0xF00000000000000) == 0x800000000000000)
  {
    __s2 = 0;
    SbfStringPtr(a1, a3, &__s2);
    return strcmp(a2, __s2) == 0;
  }

  v6 = SbfFirst(a3);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  do
  {
    __s2 = 0;
    SbfStringPtr(a1, v7, &__s2);
    v8 = strcmp(a2, __s2);
    v5 = v8 == 0;
    if (!v8)
    {
      break;
    }

    v7 = SbfNext(v7);
  }

  while (v7);
  return v5;
}

uint64_t sub_1000F47D8(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0x38uLL, 0x1070040CD05D66BuLL);
  if (!v4)
  {
    v6 = "can't allocate new column";
    goto LABEL_5;
  }

  v5 = v4;
  **(a1 + 8) = v4;
  *(a1 + 8) = v4 + 6;
  if (SbfStringPtr(*(*(a1 + 32) + 48), a2, v4 + 4))
  {
    v6 = "failed getting string";
LABEL_5:
    result = 0;
    v8 = *(a1 + 32);
    *(*v8 + 80) = v6;
    v8[16] = 22;
    return result;
  }

  *(v5 + 6) = 0;
  *v5 = v5[4];
  *(v5 + 8) = 0;
  return 1;
}

uint64_t sub_1000F4894(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = a3;
  v4 = a2;
  v6 = *a3;
  if (v6 == 46)
  {
    v3 = a3 + 1;
    v6 = a3[1];
  }

  if (v6)
  {
    if (v6 != 42)
    {
      __strlcpy_chk();
      v12 = strlen(__s);
      v13 = 0;
      if (v12)
      {
        while (__s[v13] != 46)
        {
          if (v12 == ++v13)
          {
            v13 = v12;
            goto LABEL_19;
          }
        }

        __s[v13] = 0;
      }

LABEL_19:
      if (!strcmp(__s, v4 + 32))
      {
        if (!v3[v13])
        {
          return v4;
        }

        v14 = &v3[v13 + 1];
      }

      else
      {
        v4 = SbfSearchName(a1, v4, __s);
        if (!v4 || !v3[v13])
        {
          return v4;
        }

        v14 = &v3[v13];
      }

      return sub_1000F4894(a1, v4, v14);
    }

    v7 = v3 + 1;
    while (v6 != 46)
    {
      v8 = *v7++;
      v6 = v8;
      if (!v8)
      {
        --v7;
        break;
      }
    }

    v9 = SbfFirst(a2);
    if (v9)
    {
      v10 = v9;
      while (1)
      {
        v11 = sub_1000F4894(a1, v10, v7);
        if (v11)
        {
          break;
        }

        v10 = SbfNext(v10);
        if (!v10)
        {
          return 0;
        }
      }

      return v11;
    }

    return 0;
  }

  return v4;
}

uint64_t sub_1000F4A20(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, size_t a6, int *a7)
{
  result = 0;
  v10 = *(a3 + 8);
  v11 = HIBYTE(v10) & 0xF;
  v12 = 3;
  if (v11 <= 9)
  {
    if (((1 << v11) & 0x33E) != 0)
    {
      if ((0xC1uLL >> v11))
      {
        sub_1000F51C0();
      }

      result = qword_10018B650[v11](a3, a2, a4, a6);
      if ((*(a3 + 8) & 0xF00000000000000) == 0x800000000000000)
      {
        v12 = 1;
      }

      else
      {
        v12 = 3;
      }
    }

    else if (((1 << v11) & 0xC0) != 0)
    {
      if (a5 == -1)
      {
        v18 = v10 & 0xF00000000000000;
        if ((v10 & 0xF00000000000000) == 0x600000000000000)
        {
          v19 = "{";
        }

        else
        {
          v19 = "[";
        }

        if (v18 == 0x600000000000000)
        {
          v12 = 1;
        }

        else
        {
          v12 = 3;
        }

        v20 = snprintf(a4, a6, v19);
        if (a6 >= v20)
        {
          v21 = v20;
        }

        else
        {
          v21 = a6;
        }

        v22 = a6 - v21;
        v23 = &a4[v21];
        if (a4)
        {
          v24 = v23;
        }

        else
        {
          v24 = 0;
        }

        v25 = v20;
        v26 = SbfFirst(a3);
        if (v26)
        {
          v27 = v26;
          while (1)
          {
            if (v18 == 0x600000000000000)
            {
              v28 = snprintf(v24, v22, "%s:", (v27 + 32));
              if (v22 >= v28)
              {
                v29 = v28;
              }

              else
              {
                v29 = v22;
              }

              v22 -= v29;
              v30 = &v24[v29];
              if (v24)
              {
                v24 = v30;
              }

              else
              {
                v24 = 0;
              }

              v25 += v28;
            }

            if ((*(v27 + 8) & 0xF00000000000000) == 0x800000000000000)
            {
              v31 = snprintf(v24, v22, "");
              if (v22 >= v31)
              {
                v32 = v31;
              }

              else
              {
                v32 = v22;
              }

              v22 -= v32;
              v33 = &v24[v32];
              if (v24)
              {
                v24 = v33;
              }

              else
              {
                v24 = 0;
              }

              v25 += v31;
            }

            v34 = sub_1000F4A20(a1, a2, v27, v24, -1, v22, 0);
            if (v22 >= v34)
            {
              v35 = v34;
            }

            else
            {
              v35 = v22;
            }

            v22 -= v35;
            v36 = &v24[v35];
            if (v24)
            {
              v24 = v36;
            }

            else
            {
              v24 = 0;
            }

            v25 += v34;
            if ((*(v27 + 8) & 0xF00000000000000) == 0x800000000000000)
            {
              v37 = snprintf(v24, v22, "");
              if (v22 >= v37)
              {
                v38 = v37;
              }

              else
              {
                v38 = v22;
              }

              v22 -= v38;
              v39 = &v24[v38];
              if (v24)
              {
                v24 = v39;
              }

              else
              {
                v24 = 0;
              }

              v25 += v37;
            }

            v40 = SbfNext(v27);
            if (!v40)
            {
              break;
            }

            v27 = v40;
            if ((*(*(a1 + 40) + 40) & 2) != 0)
            {
              v41 = snprintf(v24, v22, ",");
            }

            else
            {
              v41 = snprintf(v24, v22, " ");
            }

            if (v22 >= v41)
            {
              v42 = v41;
            }

            else
            {
              v42 = v22;
            }

            if (v24)
            {
              v24 += v42;
            }

            else
            {
              v24 = 0;
            }

            v22 -= v42;
            v25 += v41;
          }
        }

        if (v18 == 0x600000000000000)
        {
          v43 = snprintf(v24, v22, "}");
        }

        else
        {
          v43 = snprintf(v24, v22, "]");
        }

        result = v25 + v43;
      }

      else
      {
        v17 = v10 << 38;
        if (v17 && (*(a3 - (v17 >> 33) + 8) & 0xF00000000000000) == 0x700000000000000)
        {
          LODWORD(result) = snprintf(a4, a6, "%zd");
        }

        else
        {
          LODWORD(result) = snprintf(a4, a6, "%s");
        }

        result = result;
      }
    }
  }

  if (a7)
  {
    *a7 = v12;
  }

  return result;
}

uint64_t sub_1000F4D64(uint64_t a1, uint64_t a2, char *__str, size_t __size)
{
  if (!a2)
  {
    goto LABEL_6;
  }

  v6 = *(a2 + 16);
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = *v6;
  if (v7 == 100)
  {
    return snprintf(__str, __size, "%d", *(a1 + 24));
  }

  if (v7 == 49)
  {
    v8 = "T";
    v9 = "F";
  }

  else
  {
LABEL_6:
    v8 = "true";
    v9 = "false";
  }

  if (*(a1 + 24))
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  return snprintf(__str, __size, v10);
}

uint64_t sub_1000F4E08(uint64_t a1, uint64_t a2, char *__str, size_t __size)
{
  if (a2)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      v5 = *v4;
      switch(v5)
      {
        case 'x':
          v13 = *(a1 + 24);
          return snprintf(__str, __size, "%zx");
        case 'o':
          v12 = *(a1 + 24);
          return snprintf(__str, __size, "%zo");
        case '0':
          v6 = v4[1];
          switch(v6)
          {
            case 'x':
              v10 = *(a2 + 40);
              v16 = *(a1 + 24);
              return snprintf(__str, __size, "%0*zx");
            case 'o':
              v9 = *(a2 + 40);
              v15 = *(a1 + 24);
              return snprintf(__str, __size, "%0*zo");
            case 'd':
              v7 = *(a2 + 40);
              v14 = *(a1 + 24);
              return snprintf(__str, __size, "%0*zd");
          }

          break;
      }
    }
  }

  v11 = *(a1 + 24);
  return snprintf(__str, __size, "%zd");
}

uint64_t sub_1000F4EF8(uint64_t a1, uint64_t a2, char *__str, size_t __size)
{
  if (a2)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      v5 = *v4;
      switch(v5)
      {
        case 'x':
          v13 = *(a1 + 24);
          return snprintf(__str, __size, "%zx");
        case 'o':
          v12 = *(a1 + 24);
          return snprintf(__str, __size, "%zo");
        case '0':
          v6 = v4[1];
          switch(v6)
          {
            case 'x':
              v10 = *(a2 + 40);
              v16 = *(a1 + 24);
              return snprintf(__str, __size, "%0*zx");
            case 'u':
              v9 = *(a2 + 40);
              v15 = *(a1 + 24);
              return snprintf(__str, __size, "%0*zu");
            case 'o':
              v7 = *(a2 + 40);
              v14 = *(a1 + 24);
              return snprintf(__str, __size, "%0*zo");
          }

          break;
      }
    }
  }

  v11 = *(a1 + 24);
  return snprintf(__str, __size, "%zu");
}

uint64_t sub_1000F5024(uint64_t a1, uint64_t a2, char *a3, size_t a4)
{
  v7 = 0;
  if (SbfStringPtr(0, a1, &v7))
  {
    return snprintf(a3, a4, "(string)");
  }

  else
  {
    return snprintf(a3, a4, "%s");
  }
}

void *sub_1000F50A4(uint64_t a1, char *__s, int a3, size_t a4, char a5)
{
  v10 = strlen(__s);
  if (v10 >= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = v10;
  }

  v12 = a4 - v11;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        result = SbfExportBuf(*(a1 + 32), __s, v11);
        if (a5)
        {
          return result;
        }

        v14 = *(a1 + 32);
        v15 = *(a1 + 48);
        v16 = v12;
        goto LABEL_13;
      }

LABEL_19:
      sub_1000F51EC(a3);
    }

    goto LABEL_12;
  }

  if (a3 != 2)
  {
    if (a3 != 3)
    {
      goto LABEL_19;
    }

    SbfExportBuf(*(a1 + 32), *(a1 + 48), v12);
LABEL_12:
    v14 = *(a1 + 32);
    v15 = __s;
    v16 = v11;
    goto LABEL_13;
  }

  SbfExportBuf(*(a1 + 32), *(a1 + 48), v12 >> 1);
  result = SbfExportBuf(*(a1 + 32), __s, v11);
  if (a5)
  {
    return result;
  }

  v14 = *(a1 + 32);
  v15 = *(a1 + 48);
  v16 = v12 - (v12 >> 1);
LABEL_13:

  return SbfExportBuf(v14, v15, v16);
}

void sub_1000F51EC(int a1)
{
  fprintf(__stderrp, "PANIC: %s:%d", "/Library/Caches/com.apple.xbs/Sources/AOP_MicroAPSD/src/libsbf/src/table/export.c", 865);
  fprintf(__stderrp, "invalid justification %d", a1);
  fputc(10, __stderrp);
  abort();
}

uint64_t SbfExportYaml(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  if (!a3)
  {
    sub_1000F5750();
  }

  *(a3 + 40) |= 1u;

  return SbfExportText(a1, a2, a3, a4, sub_1000F5290);
}

void *sub_1000F5290(void *result)
{
  result[7] = sub_1000F52F4;
  result[8] = sub_1000F5430;
  result[9] = sub_1000F5498;
  result[12] = sub_1000F5538;
  result[10] = sub_1000F5690;
  result[11] = sub_1000F56A0;
  return result;
}

void *sub_1000F52F4(void *a1, double a2)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v4 = snprintf(__str, 0x20uLL, "%.17g", a2);
    return SbfExportBuf(a1, __str, v4);
  }

  else
  {
    if (fabs(a2) == INFINITY)
    {
      if (a2 >= 0.0)
      {
        v3 = ".inf";
      }

      else
      {
        v3 = "-inf";
      }
    }

    else
    {
      v3 = ".nan";
    }

    return SbfExportBuf(a1, v3, 4uLL);
  }
}

void *sub_1000F5430(void *a1, unsigned __int8 *a2, unint64_t a3)
{
  SbfExportBuf(a1, "!!binary |\n", 0xBuLL);
  ++a1[1];
  result = SbfExportB64(a1, a2, a3);
  --a1[1];
  return result;
}

void *sub_1000F5498(void *a1, char *a2, uint64_t a3)
{
  result = sub_1000F56B0(a2);
  v7 = result;
  if (result)
  {
    result = SbfExportBuf(a1, "", 1uLL);
  }

  if (a2 && a3)
  {
    result = SbfExportECMAString(a1, a2, a3);
  }

  if (v7)
  {

    return SbfExportBuf(a1, "", 1uLL);
  }

  return result;
}

void *sub_1000F5538(uint64_t a1, char *a2, int a3)
{
  if ((*(a1 + 80) & 1) == 0)
  {
    SbfExportBuf(a1, "\n", 1uLL);
    --*(a1 + 8);
    SbfExportIndent(a1);
    ++*(a1 + 8);
  }

  if (a2)
  {
    if (sub_1000F56B0(a2))
    {
      SbfExportBuf(a1, "", 1uLL);
      v6 = strlen(a2);
      SbfExportECMAString(a1, a2, v6 + 1);
      v7 = ":";
      v8 = a1;
      v9 = 2;
    }

    else
    {
      v13 = strlen(a2);
      SbfExportECMAString(a1, a2, v13 + 1);
      v7 = ":";
      v8 = a1;
      v9 = 1;
    }

    SbfExportBuf(v8, v7, v9);
    if (a3)
    {
      SbfExportBuf(a1, "\n", 1uLL);

      return SbfExportIndent(a1);
    }

    v10 = " ";
    v11 = a1;
    v12 = 1;
  }

  else
  {
    v10 = "- ";
    v11 = a1;
    v12 = 2;
  }

  return SbfExportBuf(v11, v10, v12);
}

uint64_t sub_1000F56B0(_BYTE *a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v2 = a1 + 1;
  while ((v1 & 0x80) == 0)
  {
    v3 = _DefaultRuneLocale.__runetype[v1];
    if ((v3 & 0x500) == 0 && (v3 & 0x4000) == 0)
    {
      return 1;
    }

LABEL_10:
    v4 = *v2++;
    v1 = v4;
    if (!v4)
    {
      return 0;
    }
  }

  if (__maskrune(v1, 0x500uLL) || __maskrune(v1, 0x4000uLL))
  {
    goto LABEL_10;
  }

  return 1;
}

uint64_t SbfGetNow(uint64_t a1)
{
  if (!a1)
  {
    sub_1000F7314();
  }

  result = *(a1 + 24);
  if (!result)
  {
    return atomic_fetch_add(&dword_1001C0238, 1u) + 1;
  }

  return result;
}

uint64_t SbfSetNow(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    sub_1000F7340();
  }

  if (!a2)
  {
    a2 = atomic_fetch_add(&dword_1001C0238, 1u) + 1;
  }

  *(result + 24) = a2;
  return result;
}

size_t SbfFreeAtom(size_t result, uint64_t a2)
{
  if (!a2)
  {
    sub_1000F74CC();
  }

  v2 = result;
  if (!result)
  {
    sub_1000F74A0();
  }

  v4 = *(a2 + 8);
  if ((v4 & 0x1000000000000000) != 0)
  {
    result = strlen((a2 + 32));
    v5 = (result & 0xFFFFFFFFFFFFFFE0) + 32;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a2 + 24);
  if ((v4 & 0xE00000000000000) != 0x800000000000000 || v6 << 6 == 0)
  {
    goto LABEL_14;
  }

  v8 = (v6 << 6) >> 6;
  v9 = (a2 + 32 * (v6 << 38 >> 38));
  v10 = v5 + 32;
  if (v5 + 32 < 0)
  {
    v10 = v5 + 63;
  }

  v11 = (*v9 + 39) & 0xFFFFFFE0;
  if (v8 != v10 >> 5)
  {
    result = SbfFree(v2, v9, v11);
LABEL_14:
    v11 = 0;
  }

  if (*(v2 + 16) == a2)
  {
    if (v5)
    {
      v12 = v11 + v5;

      return SbfFree(v2, (a2 + 32), v12);
    }
  }

  else
  {
    result = SbfFree(v2, a2, v5 + v11 + 32);
    *(a2 + 8) |= 0xF00000000000000uLL;
  }

  return result;
}

uint64_t SbfGetNull(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    sub_1000F757C();
  }

  if ((*(a2 + 8) & 0xF00000000000000) == 0x100000000000000)
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

uint64_t SbfGetNullByName(uint64_t a1, unint64_t a2, char *a3)
{
  if (!a3)
  {
    sub_1000F75A8();
  }

  v3 = SbfSearchName(a1, a2, a3);
  if (!v3)
  {
    return 2;
  }

  if ((v3[1] & 0xF00000000000000) == 0x100000000000000)
  {
    return 0;
  }

  return 22;
}

uint64_t SbfGetBooleanByName(uint64_t a1, unint64_t a2, char *a3, BOOL *a4)
{
  if (!a3)
  {
    sub_1000F7658();
  }

  if (!a4)
  {
    sub_1000F762C();
  }

  v5 = SbfSearchName(a1, a2, a3);
  if (!v5)
  {
    return 2;
  }

  v6 = v5;
  if ((v5[1] & 0xF00000000000000) != 0x200000000000000)
  {
    return 22;
  }

  result = 0;
  *a4 = v6[3] != 0;
  return result;
}

uint64_t SbfGetInt64(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    sub_1000F76B0();
  }

  if (!a3)
  {
    sub_1000F7684();
  }

  v3 = *(a2 + 15) & 0xF;
  if ((v3 - 5) < 0xFFFFFFFE)
  {
    return 22;
  }

  v4 = *(a2 + 24);
  if (v3 == 4 && v4 < 0)
  {
    return 22;
  }

  result = 0;
  *a3 = v4;
  return result;
}

uint64_t SbfGetInt64ByName(uint64_t a1, unint64_t a2, char *a3, uint64_t *a4)
{
  if (!a3)
  {
    sub_1000F7708();
  }

  if (!a4)
  {
    sub_1000F76DC();
  }

  v5 = SbfSearchName(a1, a2, a3);
  if (!v5)
  {
    return 2;
  }

  v6 = *(v5 + 15) & 0xF;
  if ((v6 - 5) < 0xFFFFFFFE)
  {
    return 22;
  }

  v7 = v5[3];
  if (v6 == 4 && v7 < 0)
  {
    return 22;
  }

  result = 0;
  *a4 = v7;
  return result;
}

uint64_t SbfGetDouble(uint64_t a1, uint64_t a2, double *a3)
{
  if (!a2)
  {
    sub_1000F7810();
  }

  if (!a3)
  {
    sub_1000F77E4();
  }

  v3 = *(a2 + 15) & 0xF;
  switch(v3)
  {
    case 5:
      v4 = *(a2 + 24);
      goto LABEL_9;
    case 4:
      v4 = *(a2 + 24);
      goto LABEL_9;
    case 3:
      v4 = *(a2 + 24);
LABEL_9:
      result = 0;
      *a3 = v4;
      return result;
  }

  return 22;
}

uint64_t SbfGetDoubleByName(uint64_t a1, unint64_t a2, char *a3, double *a4)
{
  if (!a3)
  {
    sub_1000F7868();
  }

  if (!a4)
  {
    sub_1000F783C();
  }

  v5 = SbfSearchName(a1, a2, a3);
  if (!v5)
  {
    return 2;
  }

  v6 = *(v5 + 15) & 0xF;
  switch(v6)
  {
    case 5:
      v7 = *(v5 + 3);
      goto LABEL_11;
    case 4:
      v7 = v5[3];
      goto LABEL_11;
    case 3:
      v7 = v5[3];
LABEL_11:
      result = 0;
      *a4 = v7;
      return result;
  }

  return 22;
}

uint64_t SbfChangeCount(uint64_t a1, void *a2)
{
  if (!a2)
  {
    sub_1000F7894();
  }

  return *a2 >> 52;
}

uint64_t SbfStringPtrByName(uint64_t a1, unint64_t a2, char *a3, const char **a4)
{
  if (!a3)
  {
    sub_1000F7944();
  }

  if (!a4)
  {
    sub_1000F7918();
  }

  v5 = SbfSearchName(a1, a2, a3);
  if (!v5)
  {
    return 2;
  }

  v6 = v5;
  if ((v5[1] & 0xF00000000000000) != 0x800000000000000)
  {
    return 22;
  }

  result = 0;
  v8 = *(v6 + 6);
  v9 = &v6[4 * (v8 << 38 >> 38)];
  if (!(v8 << 6))
  {
    v9 = 0;
  }

  v10 = (v9 + 1);
  if (!(v8 << 6))
  {
    v10 = "";
  }

  *a4 = v10;
  return result;
}

uint64_t SbfGetString(int a1, uint64_t a2, char *__dst, unint64_t a4)
{
  if (!a2)
  {
    sub_1000F799C();
  }

  if (!__dst)
  {
    sub_1000F7970();
  }

  if ((*(a2 + 8) & 0xF00000000000000) != 0x800000000000000)
  {
    return 22;
  }

  v8 = *(a2 + 24);
  v7 = *(a2 + 28);
  if (v7 >= a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = *(a2 + 28);
  }

  v10 = v8 << 6;
  v11 = (a2 + 32 * (v8 << 38 >> 38));
  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v9)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v16 = *v12;
    v14 = v12 + 2;
    v15 = v16;
    if (v16 >= v9)
    {
      v17 = v9;
    }

    else
    {
      v17 = v15;
    }

    memcpy(__dst, v14, v17);
    v7 = *(a2 + 28);
  }

  if (v7 <= a4)
  {
    return 0;
  }

  __dst[v9 - 1] = 0;
  return 34;
}

uint64_t SbfGetStringByName(uint64_t a1, unint64_t a2, char *a3, char *a4, unint64_t a5)
{
  if (!a3)
  {
    sub_1000F79F4();
  }

  if (!a4)
  {
    sub_1000F79C8();
  }

  v7 = SbfSearchName(a1, a2, a3);
  if (!v7)
  {
    return 2;
  }

  return SbfGetString(v7, v7, a4, a5);
}

uint64_t SbfGetBlob(int a1, uint64_t a2, void *__dst, unint64_t a4)
{
  if (!a2)
  {
    sub_1000F7A4C();
  }

  if (!__dst)
  {
    sub_1000F7A20();
  }

  if ((*(a2 + 8) & 0xF00000000000000) != 0x900000000000000)
  {
    return 22;
  }

  if (*(a2 + 28) > a4)
  {
    return 34;
  }

  result = 0;
  v5 = *(a2 + 24);
  v6 = v5 << 6;
  v7 = (a2 + 32 * (v5 << 38 >> 38));
  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (a4 && v8)
  {
    v11 = *v8;
    v9 = v8 + 2;
    v10 = v11;
    if (v11 >= a4)
    {
      v10 = a4;
    }

    memcpy(__dst, v9, v10);
    return 0;
  }

  return result;
}

uint64_t SbfGetBlobByName(uint64_t a1, unint64_t a2, char *a3, void *a4, unint64_t a5)
{
  if (!a3)
  {
    sub_1000F7AA4();
  }

  if (!a4)
  {
    sub_1000F7A78();
  }

  v7 = SbfSearchName(a1, a2, a3);
  if (!v7)
  {
    return 2;
  }

  return SbfGetBlob(v7, v7, a4, a5);
}

uint64_t SbfBlobPtrByName(uint64_t a1, unint64_t a2, char *a3, void *a4)
{
  if (!a3)
  {
    sub_1000F7B54();
  }

  if (!a4)
  {
    sub_1000F7B28();
  }

  v5 = SbfSearchName(a1, a2, a3);
  if (!v5)
  {
    return 2;
  }

  v6 = v5;
  if ((v5[1] & 0xF00000000000000) != 0x900000000000000)
  {
    return 22;
  }

  v7 = *(v5 + 6) << 6;
  if (!v7)
  {
    return 22;
  }

  result = 0;
  *a4 = &v6[4 * (v7 >> 6) + 1];
  return result;
}

uint64_t SbfStringLengthByName(uint64_t a1, unint64_t a2, char *a3)
{
  if (!a3)
  {
    sub_1000F7BD8();
  }

  v4 = SbfSearchName(a1, a2, a3);
  if (v4)
  {

    return SbfStringLength(a1, v4);
  }

  else
  {
    *(a1 + 92) = 2;
    return -1;
  }
}

uint64_t SbfBlobSizeByName(uint64_t a1, unint64_t a2, char *a3)
{
  if (!a3)
  {
    sub_1000F7C5C();
  }

  v4 = SbfSearchName(a1, a2, a3);
  if (v4)
  {

    return SbfBlobSize(a1, v4);
  }

  else
  {
    *(a1 + 92) = 2;
    return -1;
  }
}

uint64_t SbfGetArray(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    sub_1000F7CB4();
  }

  if (!a3)
  {
    sub_1000F7C88();
  }

  if ((*(a2 + 8) & 0xF00000000000000) != 0x700000000000000)
  {
    return 22;
  }

  result = 0;
  *a3 = a2;
  return result;
}

uint64_t SbfGetObject(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    sub_1000F7D64();
  }

  if (!a3)
  {
    sub_1000F7D38();
  }

  if ((*(a2 + 8) & 0xF00000000000000) != 0x600000000000000)
  {
    return 22;
  }

  result = 0;
  *a3 = a2;
  return result;
}

uint64_t SbfGetObjectByName(uint64_t a1, unint64_t a2, char *a3, uint64_t **a4)
{
  if (!a3)
  {
    sub_1000F7DBC();
  }

  if (!a4)
  {
    sub_1000F7D90();
  }

  v5 = SbfSearchName(a1, a2, a3);
  if (!v5)
  {
    return 2;
  }

  v6 = v5;
  if ((v5[1] & 0xF00000000000000) != 0x600000000000000)
  {
    return 22;
  }

  result = 0;
  *a4 = v6;
  return result;
}