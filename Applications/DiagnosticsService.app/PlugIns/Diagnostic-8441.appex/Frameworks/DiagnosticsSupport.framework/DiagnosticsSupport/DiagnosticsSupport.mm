const char *IOReturnName(int a1)
{
  if (a1 <= -536870202)
  {
    if (a1 > -536870207)
    {
      if (a1 == -536870206)
      {
        return "kIOReturnBadArgument";
      }

      if (a1 == -536870203)
      {
        return "kIOReturnExclusiveAccess";
      }
    }

    else
    {
      if (a1 == -536870212)
      {
        return "kIOReturnError";
      }

      if (a1 == -536870207)
      {
        return "kIOReturnNotPrivileged";
      }
    }
  }

  else if (a1 <= -536870199)
  {
    if (a1 == -536870201)
    {
      return "kIOReturnUnsupported";
    }

    if (a1 == -536870199)
    {
      return "kIOReturnInternalError";
    }
  }

  else
  {
    switch(a1)
    {
      case -536870198:
        return "kIOReturnIOError";
      case -536870174:
        return "kIOReturnNotPermitted";
      case 0:
        return "kIOReturnSuccess";
    }
  }

  return "unknown error";
}

uint64_t callIOFunction(int a1, mach_port_t a2, const void *a3, void *a4)
{
  v8 = DiagnosticLogHandleForCategory(6);
  v9 = v8;
  if (a1 == 2)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13[0]) = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "SMC::callIOFunction kSMCHandleYPCEvent command", v13, 2u);
    }

    v13[0] = 168;
    v10 = IOConnectCallStructMethod(a2, 2u, a3, 0xA8uLL, a4, v13);
    v11 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v15 = v10;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "SMC::callIOFunction IOConnectCallStructMethod result = %d", buf, 8u);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      callIOFunction_cold_1(a1, v9);
    }

    return 3758097084;
  }

  return v10;
}

uint64_t smckSMCMakeUInt32Key(const char *a1)
{
  v2 = strlen(a1);
  v3 = 0;
  LODWORD(v4) = 0;
  v5 = 24;
  do
  {
    if (v2 <= v3)
    {
      v6 = 32;
    }

    else
    {
      v6 = a1[v3];
    }

    v4 = (v6 << v5) | v4;
    ++v3;
    v5 -= 8;
  }

  while (v3 != 4);
  return v4;
}

uint64_t returnEnumForDataTypeStr(int a1)
{
  v2 = 5;
  if (a1 > 1936734262)
  {
    if (a1 <= 1936747106)
    {
      if (a1 <= 1936745321)
      {
        if (a1 <= 1936744756)
        {
          if (a1 > 1936734517)
          {
            if (a1 != 1936734518)
            {
              if (a1 == 1936734573)
              {
                v2 = 62;
                goto LABEL_182;
              }

              goto LABEL_141;
            }

            v2 = 46;
          }

          else
          {
            if (a1 != 1936734263)
            {
              if (a1 == 1936734318)
              {
                v2 = 61;
                goto LABEL_182;
              }

              goto LABEL_141;
            }

            v2 = 45;
          }
        }

        else if (a1 <= 1936745011)
        {
          if (a1 != 1936744757)
          {
            if (a1 == 1936744812)
            {
              v2 = 63;
              goto LABEL_182;
            }

            goto LABEL_141;
          }

          v2 = 47;
        }

        else
        {
          switch(a1)
          {
            case 1936745012:
              v2 = 48;
              break;
            case 1936745067:
              v2 = 64;
              break;
            case 1936745267:
              v2 = 49;
              goto LABEL_182;
            default:
              goto LABEL_141;
          }
        }
      }

      else if (a1 > 1936746031)
      {
        if (a1 <= 1936746341)
        {
          if (a1 != 1936746032)
          {
            if (a1 == 1936746087)
            {
              v2 = 68;
              goto LABEL_182;
            }

            goto LABEL_141;
          }

          v2 = 52;
        }

        else
        {
          switch(a1)
          {
            case 1936746342:
              v2 = 69;
              break;
            case 1936746597:
              v2 = 70;
              break;
            case 1936746852:
              v2 = 71;
              goto LABEL_182;
            default:
              goto LABEL_141;
          }
        }
      }

      else if (a1 <= 1936745576)
      {
        if (a1 != 1936745322)
        {
          if (a1 == 1936745522)
          {
            v2 = 50;
            goto LABEL_182;
          }

          goto LABEL_141;
        }

        v2 = 65;
      }

      else
      {
        switch(a1)
        {
          case 1936745577:
            v2 = 66;
            break;
          case 1936745777:
            v2 = 51;
            break;
          case 1936745832:
            v2 = 67;
            goto LABEL_182;
          default:
            goto LABEL_141;
        }
      }

      goto LABEL_182;
    }

    if (a1 <= 1936749362)
    {
      if (a1 <= 1936748087)
      {
        if (a1 > 1936747616)
        {
          if (a1 != 1936747617)
          {
            if (a1 == 1936747833)
            {
              v2 = 75;
              goto LABEL_182;
            }

            goto LABEL_141;
          }

          v2 = 74;
        }

        else
        {
          if (a1 != 1936747107)
          {
            if (a1 == 1936747362)
            {
              v2 = 73;
              goto LABEL_182;
            }

            goto LABEL_141;
          }

          v2 = 72;
        }
      }

      else if (a1 <= 1936748597)
      {
        if (a1 != 1936748088)
        {
          if (a1 == 1936748343)
          {
            v2 = 78;
            goto LABEL_182;
          }

          goto LABEL_141;
        }

        v2 = 76;
      }

      else
      {
        switch(a1)
        {
          case 1936748598:
            v2 = 79;
            break;
          case 1936748853:
            v2 = 80;
            break;
          case 1936749108:
            v2 = 81;
            goto LABEL_182;
          default:
            goto LABEL_141;
        }
      }

      goto LABEL_182;
    }

    if (a1 <= 1969828657)
    {
      if (a1 <= 1936749872)
      {
        if (a1 != 1936749363)
        {
          if (a1 == 1936749618)
          {
            v2 = 83;
            goto LABEL_182;
          }

          goto LABEL_141;
        }

        v2 = 82;
      }

      else
      {
        switch(a1)
        {
          case 1936749873:
            v2 = 84;
            break;
          case 1936750128:
            v2 = 85;
            break;
          case 1969828150:
            v2 = 3;
            goto LABEL_182;
          default:
            goto LABEL_141;
        }
      }

      goto LABEL_182;
    }

    if (a1 <= 1969829887)
    {
      if (a1 != 1969828658)
      {
        if (a1 == 1969829428)
        {
          v2 = 102;
          goto LABEL_182;
        }

        goto LABEL_141;
      }

      v2 = 31;
      goto LABEL_182;
    }

    if (a1 == 1969829888 || a1 == 1969829920)
    {
      goto LABEL_182;
    }

    v3 = 2071094646;
    goto LABEL_78;
  }

  if (a1 > 1936274225)
  {
    if (a1 <= 1936733026)
    {
      if (a1 <= 1936732277)
      {
        if (a1 > 1936275487)
        {
          if (a1 != 1936275488)
          {
            if (a1 == 1936732262)
            {
              v2 = 37;
              goto LABEL_182;
            }

            goto LABEL_141;
          }

          v2 = 6;
        }

        else
        {
          if (a1 != 1936274226)
          {
            if (a1 == 1936274996)
            {
              v2 = 101;
              goto LABEL_182;
            }

            goto LABEL_141;
          }

          v2 = 100;
        }
      }

      else if (a1 <= 1936732532)
      {
        if (a1 != 1936732278)
        {
          if (a1 == 1936732517)
          {
            v2 = 38;
            goto LABEL_182;
          }

          goto LABEL_141;
        }

        v2 = 53;
      }

      else
      {
        switch(a1)
        {
          case 1936732533:
            v2 = 54;
            break;
          case 1936732772:
            v2 = 39;
            break;
          case 1936732788:
            v2 = 55;
            goto LABEL_182;
          default:
            goto LABEL_141;
        }
      }
    }

    else if (a1 > 1936733552)
    {
      if (a1 <= 1936733807)
      {
        if (a1 != 1936733553)
        {
          if (a1 == 1936733753)
          {
            v2 = 43;
            goto LABEL_182;
          }

          goto LABEL_141;
        }

        v2 = 58;
      }

      else
      {
        switch(a1)
        {
          case 1936733808:
            v2 = 59;
            break;
          case 1936734008:
            v2 = 9;
            break;
          case 1936734063:
            v2 = 60;
            goto LABEL_182;
          default:
            goto LABEL_141;
        }
      }
    }

    else if (a1 <= 1936733281)
    {
      if (a1 != 1936733027)
      {
        if (a1 == 1936733043)
        {
          v2 = 56;
          goto LABEL_182;
        }

        goto LABEL_141;
      }

      v2 = 40;
    }

    else
    {
      switch(a1)
      {
        case 1936733282:
          v2 = 41;
          break;
        case 1936733298:
          v2 = 57;
          break;
        case 1936733537:
          v2 = 42;
          goto LABEL_182;
        default:
          goto LABEL_141;
      }
    }

    goto LABEL_182;
  }

  if (a1 <= 1718629729)
  {
    if (a1 > 1718383647)
    {
      if (a1 <= 1718628964)
      {
        if (a1 != 1718383648)
        {
          if (a1 == 1718628710)
          {
            v2 = 13;
            goto LABEL_182;
          }

          goto LABEL_141;
        }

        v2 = 91;
      }

      else
      {
        switch(a1)
        {
          case 1718628965:
            v2 = 14;
            break;
          case 1718629220:
            v2 = 15;
            break;
          case 1718629475:
            v2 = 18;
            goto LABEL_182;
          default:
            goto LABEL_141;
        }
      }

      goto LABEL_182;
    }

    if (a1 > 1667785073)
    {
      if (a1 != 1667785074)
      {
        if (a1 == 1718378855)
        {
          goto LABEL_182;
        }

        goto LABEL_141;
      }

      goto LABEL_95;
    }

    if (a1 == 1651076703)
    {
      v2 = 89;
      goto LABEL_182;
    }

    v3 = 1667774506;
LABEL_78:
    if (a1 != v3)
    {
      goto LABEL_141;
    }

LABEL_95:
    v2 = 88;
    goto LABEL_182;
  }

  if (a1 > 1718641459)
  {
    if (a1 <= 1751480414)
    {
      if (a1 != 1718641460)
      {
        if (a1 == 1718641970)
        {
          v2 = 19;
          goto LABEL_182;
        }

        goto LABEL_141;
      }

      v2 = 90;
      goto LABEL_182;
    }

    if (a1 != 1751480415)
    {
      if (a1 != 1768908404)
      {
        if (a1 == 1936273718)
        {
          v2 = 29;
          goto LABEL_182;
        }

        goto LABEL_141;
      }

      v2 = 103;
      goto LABEL_182;
    }

LABEL_141:
    v2 = 87;
    goto LABEL_182;
  }

  if (a1 <= 1718630200)
  {
    if (a1 != 1718629730)
    {
      if (a1 == 1718629985)
      {
        v2 = 12;
        goto LABEL_182;
      }

      goto LABEL_141;
    }

    v2 = 16;
  }

  else
  {
    switch(a1)
    {
      case 1718630201:
        v2 = 17;
        break;
      case 1718630456:
        v2 = 7;
        break;
      case 1718640950:
        v2 = 33;
        break;
      default:
        goto LABEL_141;
    }
  }

LABEL_182:
  v4 = DiagnosticLogHandleForCategory(6);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109632;
    v6[1] = a1;
    v7 = 1024;
    v8 = v2;
    v9 = 1024;
    v10 = 38;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "SMC::convertValue value %u result %d %d", v6, 0x14u);
  }

  return v2;
}

double convertKeyToValueMiniT(int a1, size_t __n, void *__src, double a4)
{
  __dst[1] = 0;
  v4 = -1.0;
  if (__n <= 8)
  {
    v5 = __n;
    __dst[0] = 0;
    if (__n)
    {
      memcpy(__dst, __src, __n);
    }

    switch(a1)
    {
      case 2:
        return 0.0;
      case 3:
      case 23:
        goto LABEL_5;
      case 5:
        goto LABEL_18;
      case 6:
        return SLOBYTE(__dst[0]);
      case 7:
        return vcvtd_n_f64_u32(LOWORD(__dst[0]), 8uLL);
      case 9:
      case 44:
        v9 = SLOWORD(__dst[0]);
        return vcvtd_n_f64_s32(v9, 8uLL);
      case 11:
        *&a4 = SLOWORD(__dst[0]);
        goto LABEL_57;
      case 12:
        return vcvtd_n_f64_u32(LOWORD(__dst[0]), 0xAuLL);
      case 13:
        return vcvtd_n_f64_u32(LOWORD(__dst[0]), 0xFuLL);
      case 14:
      case 22:
        return vcvtd_n_f64_u32(LOWORD(__dst[0]), 0xEuLL);
      case 15:
        return vcvtd_n_f64_u32(LOWORD(__dst[0]), 0xDuLL);
      case 16:
        return vcvtd_n_f64_u32(LOWORD(__dst[0]), 0xBuLL);
      case 17:
        return vcvtd_n_f64_u32(LOWORD(__dst[0]), 9uLL);
      case 18:
        return vcvtd_n_f64_u32(LOWORD(__dst[0]), 0xCuLL);
      case 19:
        return vcvtd_n_f64_u32(LOWORD(__dst[0]), 2uLL);
      case 20:
        a4 = vcvtd_n_f64_u32(LOWORD(__dst[0]), 2uLL);
        goto LABEL_85;
      case 21:
        *&a4 = vcvtd_n_f64_u32(LOWORD(__dst[0]), 2uLL);
        goto LABEL_57;
      case 24:
        a4 = vcvtd_n_f64_u32(LOWORD(__dst[0]), 8uLL);
LABEL_85:
        *&a4 = a4;
        goto LABEL_86;
      case 25:
        LOWORD(a4) = __dst[0];
        *&a4 = LODWORD(a4);
        v20 = 10000.0;
        return (*&a4 / v20);
      case 26:
        LOWORD(a4) = __dst[0];
        *&a4 = LODWORD(a4);
LABEL_57:
        v25 = 1148846080;
        goto LABEL_87;
      case 27:
        LOWORD(a4) = __dst[0];
        *&a4 = LODWORD(a4);
LABEL_86:
        v25 = 1120403456;
LABEL_87:
        v20 = *&v25;
        return (*&a4 / v20);
      case 29:
      case 52:
        return SLOWORD(__dst[0]);
      case 31:
      case 102:
        goto LABEL_113;
      case 33:
        return vcvtd_n_f64_u32(LOWORD(__dst[0]), 6uLL);
      case 36:
        v22 = DiagnosticLogHandleForCategory(6);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v30 = 67110912;
          v31 = LOBYTE(__dst[0]);
          v32 = 1024;
          v33 = BYTE1(__dst[0]);
          v34 = 1024;
          v35 = BYTE2(__dst[0]);
          v36 = 1024;
          v37 = BYTE3(__dst[0]);
          v38 = 1024;
          v39 = BYTE4(__dst[0]);
          v40 = 1024;
          v41 = BYTE5(__dst[0]);
          v42 = 1024;
          v43 = BYTE6(__dst[0]);
          v44 = 1024;
          v45 = HIBYTE(__dst[0]);
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Value = %c%c%c%c%c%c%c%c\n", &v30, 0x32u);
        }

        v23 = DiagnosticLogHandleForCategory(6);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v30 = 67109120;
          v31 = LOBYTE(__dst[0]);
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "Value2 = %c\n", &v30, 8u);
        }

        return v4;
      case 37:
        v27 = SLOWORD(__dst[0]);
        return vcvtd_n_f64_s32(v27, 0xFuLL);
      case 38:
        v24 = SLOWORD(__dst[0]);
        return vcvtd_n_f64_s32(v24, 0xEuLL);
      case 39:
        v14 = SLOWORD(__dst[0]);
        return vcvtd_n_f64_s32(v14, 0xDuLL);
      case 40:
        v19 = SLOWORD(__dst[0]);
        return vcvtd_n_f64_s32(v19, 0xCuLL);
      case 41:
        v18 = SLOWORD(__dst[0]);
        return vcvtd_n_f64_s32(v18, 0xBuLL);
      case 42:
        v28 = SLOWORD(__dst[0]);
        return vcvtd_n_f64_s32(v28, 0xAuLL);
      case 43:
        v11 = SLOWORD(__dst[0]);
        return vcvtd_n_f64_s32(v11, 9uLL);
      case 45:
        v26 = SLOWORD(__dst[0]);
        return vcvtd_n_f64_s32(v26, 7uLL);
      case 46:
        v16 = SLOWORD(__dst[0]);
        return vcvtd_n_f64_s32(v16, 6uLL);
      case 47:
        v15 = SLOWORD(__dst[0]);
        return vcvtd_n_f64_s32(v15, 5uLL);
      case 48:
        v21 = SLOWORD(__dst[0]);
        return vcvtd_n_f64_s32(v21, 4uLL);
      case 49:
        v12 = SLOWORD(__dst[0]);
        return vcvtd_n_f64_s32(v12, 3uLL);
      case 50:
        v17 = SLOWORD(__dst[0]);
        return vcvtd_n_f64_s32(v17, 2uLL);
      case 51:
        v13 = SLOWORD(__dst[0]);
        return vcvtd_n_f64_s32(v13, 1uLL);
      case 53:
        return vcvtd_n_f64_s32(__dst[0], 0x1FuLL);
      case 54:
        return vcvtd_n_f64_s32(__dst[0], 0x1EuLL);
      case 55:
        return vcvtd_n_f64_s32(__dst[0], 0x1DuLL);
      case 56:
        return vcvtd_n_f64_s32(__dst[0], 0x1CuLL);
      case 57:
        return vcvtd_n_f64_s32(__dst[0], 0x1BuLL);
      case 58:
        return vcvtd_n_f64_s32(__dst[0], 0x1AuLL);
      case 59:
        return vcvtd_n_f64_s32(__dst[0], 0x19uLL);
      case 60:
        return vcvtd_n_f64_s32(__dst[0], 0x18uLL);
      case 61:
        return vcvtd_n_f64_s32(__dst[0], 0x17uLL);
      case 62:
        return vcvtd_n_f64_s32(__dst[0], 0x16uLL);
      case 63:
        return (SLODWORD(__dst[0]) / 2097408.0);
      case 64:
        return vcvtd_n_f64_s32(__dst[0], 0x14uLL);
      case 65:
        return vcvtd_n_f64_s32(__dst[0], 0x13uLL);
      case 66:
        return vcvtd_n_f64_s32(__dst[0], 0x12uLL);
      case 67:
        return vcvtd_n_f64_s32(__dst[0], 0x11uLL);
      case 68:
        return vcvtd_n_f64_s32(__dst[0], 0x10uLL);
      case 69:
        v27 = __dst[0];
        return vcvtd_n_f64_s32(v27, 0xFuLL);
      case 70:
        v24 = __dst[0];
        return vcvtd_n_f64_s32(v24, 0xEuLL);
      case 71:
        v14 = __dst[0];
        return vcvtd_n_f64_s32(v14, 0xDuLL);
      case 72:
        v19 = __dst[0];
        return vcvtd_n_f64_s32(v19, 0xCuLL);
      case 73:
        v18 = __dst[0];
        return vcvtd_n_f64_s32(v18, 0xBuLL);
      case 74:
        v28 = __dst[0];
        return vcvtd_n_f64_s32(v28, 0xAuLL);
      case 75:
        v11 = __dst[0];
        return vcvtd_n_f64_s32(v11, 9uLL);
      case 76:
        v9 = __dst[0];
        return vcvtd_n_f64_s32(v9, 8uLL);
      case 78:
        v26 = __dst[0];
        return vcvtd_n_f64_s32(v26, 7uLL);
      case 79:
        v16 = __dst[0];
        return vcvtd_n_f64_s32(v16, 6uLL);
      case 80:
        v15 = __dst[0];
        return vcvtd_n_f64_s32(v15, 5uLL);
      case 81:
        v21 = __dst[0];
        return vcvtd_n_f64_s32(v21, 4uLL);
      case 82:
        v12 = __dst[0];
        return vcvtd_n_f64_s32(v12, 3uLL);
      case 83:
        v17 = __dst[0];
        return vcvtd_n_f64_s32(v17, 2uLL);
      case 84:
        v13 = __dst[0];
        return vcvtd_n_f64_s32(v13, 1uLL);
      case 85:
      case 100:
        return SLODWORD(__dst[0]);
      case 87:
        if (v5 <= 3)
        {
          if (v5 == 1)
          {
LABEL_18:
            LOBYTE(a4) = __dst[0];
          }

          else
          {
            if (v5 != 2)
            {
              return v4;
            }

LABEL_5:
            LOWORD(a4) = __dst[0];
          }

          return *&a4;
        }

        if (v5 == 4 || v5 == 8)
        {
LABEL_113:
          a4 = *__dst;
          return *&a4;
        }

        break;
      case 90:
        return vcvtd_n_f64_u32(LOWORD(__dst[0]), 4uLL);
      case 91:
        return *__dst;
      case 101:
        return __dst[0];
      case 103:
        return (__dst[0] * 0.0000152587891);
      default:
        return v4;
    }
  }

  return v4;
}

uint64_t translateFloatToFixed(uint64_t result, char *__dst, size_t a3, float a4)
{
  __src[0] = 0;
  __src[1] = 0;
  switch(result)
  {
    case 1:
      return result;
    case 3:
    case 29:
      v8 = a4;
      v9 = a4 + 255;
      if (a4 >= 0)
      {
        BYTE1(v9) = a4 >> 8;
      }

      __dst[1] = BYTE1(v9);
      goto LABEL_36;
    case 5:
    case 6:
      __dst[3] = 0;
      *(__dst + 1) = 0;
      v8 = a4;
LABEL_36:
      *__dst = v8;
      goto LABEL_30;
    case 7:
    case 9:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 33:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 90:
    case 94:
    case 95:
    case 97:
    case 99:
      v5 = 0.0;
      if (result > 89)
      {
        if (result <= 94)
        {
          if (result == 90)
          {
LABEL_27:
            v5 = 4.0;
          }

          else if (result == 94)
          {
LABEL_16:
            v5 = 1.0;
          }
        }

        else
        {
          switch(result)
          {
            case '_':
LABEL_28:
              v5 = 3.0;
              break;
            case 'a':
LABEL_26:
              v5 = 5.0;
              break;
            case 'c':
LABEL_13:
              v5 = 7.0;
              break;
          }
        }
      }

      else
      {
        switch(result)
        {
          case 7:
          case 9:
          case 44:
            v5 = 8.0;
            break;
          case 12:
          case 42:
            v5 = 10.0;
            break;
          case 13:
          case 37:
            v5 = 15.0;
            break;
          case 14:
          case 38:
            v5 = 14.0;
            break;
          case 15:
          case 39:
            v5 = 13.0;
            break;
          case 16:
          case 41:
            v5 = 11.0;
            break;
          case 17:
          case 43:
            v5 = 9.0;
            break;
          case 18:
          case 40:
            v5 = 12.0;
            break;
          case 19:
          case 50:
            v5 = 2.0;
            break;
          case 33:
          case 46:
            v5 = 6.0;
            break;
          case 45:
            goto LABEL_13;
          case 47:
            goto LABEL_26;
          case 48:
            goto LABEL_27;
          case 49:
            goto LABEL_28;
          case 51:
            goto LABEL_16;
          default:
            break;
        }
      }

      v7 = exp2(v5) * a4;
      __src[0] = v7;
      *__dst = v7;
      goto LABEL_30;
    case 31:
    case 100:
      goto LABEL_8;
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
      v6 = 0.0;
      if ((result - 53) <= 0x1F)
      {
        v6 = dbl_10AE0[(result - 53)];
      }

      a4 = exp2(v6) * a4;
LABEL_8:
      __src[0] = a4;
      *__dst = a4;
      goto LABEL_30;
    case 87:
      __src[0] = a4;
      if (a3 >= 1)
      {
        if (a3 >= 8)
        {
          a3 = 8;
        }

        else
        {
          a3 = a3;
        }

        memcpy(__dst, __src, a3);
      }

      goto LABEL_30;
    case 91:
      *__dst = a4;
LABEL_30:
      result = 1;
      break;
    default:
      result = 0xFFFFFFFFLL;
      break;
  }

  return result;
}

id DiagnosticLogHandleForCategory(uint64_t a1)
{
  if (DiagnosticLogHandleForCategory_onceToken != -1)
  {
    DiagnosticLogHandleForCategory_cold_1();
  }

  if (DiagnosticLogHandleForCategory_logHandles[a1])
  {
    v2 = DiagnosticLogHandleForCategory_logHandles[a1];
  }

  else
  {
    v2 = &_os_log_disabled;
  }

  return v2;
}

void sub_4E6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_5124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  objc_destroyWeak((v12 + 40));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v13 - 72));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id buttonHIDEventFilterCallback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = DiagnosticLogHandleForCategory(3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    buttonHIDEventFilterCallback_cold_1(a4, v6);
  }

  v7 = a2;
  v8 = v7;
  if (!v7 || ![v7 allowEvents])
  {
    goto LABEL_38;
  }

  if (IOHIDEventGetType() != 3)
  {
    if (IOHIDEventGetType() == 29)
    {
      v24 = [v8 _handlersForEvent:0x400000];
      if ([v24 count])
      {
        v25 = v8;
        v26 = v24;
        v27 = 0x400000;
LABEL_37:
        v34 = [v25 _triggerHandlers:v26 event:v27];
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    if (IOHIDEventGetType() == 32)
    {
      v24 = [v8 _handlersForEvent:0x800000];
      if ([v24 count])
      {
        v25 = v8;
        v26 = v24;
        v27 = 0x800000;
        goto LABEL_37;
      }

LABEL_39:
      v34 = 0;
      goto LABEL_40;
    }

LABEL_38:
    v24 = 0;
    goto LABEL_39;
  }

  IntegerValue = IOHIDEventGetIntegerValue();
  v10 = IOHIDEventGetIntegerValue();
  v11 = IOHIDEventGetIntegerValue();
  v12 = IOHIDEventGetIntegerValue();
  Phase = IOHIDEventGetPhase();
  v14 = v10 | (IntegerValue << 16);
  v15 = 1;
  if (v14 > 786527)
  {
    if (v14 <= 786665)
    {
      v28 = 0x10000;
      if (!v11)
      {
        v28 = 0x20000;
      }

      v29 = 4096;
      if (!v11)
      {
        v29 = 0x2000;
      }

      v30 = 64;
      if (!v11)
      {
        v30 = 128;
      }

      if (v14 == 786665)
      {
        v15 = v30;
        v31 = 1;
      }

      else
      {
        v31 = 0;
      }

      if (v14 == 786581)
      {
        v15 = v29;
        v31 = 1;
      }

      if (v14 == 786528)
      {
        v32 = v28;
      }

      else
      {
        v32 = v15;
      }

      if (v14 == 786528)
      {
        v33 = 1;
      }

      else
      {
        v33 = v31;
      }

      goto LABEL_68;
    }

    v16 = 786666;
    v17 = 256;
    if (!v11)
    {
      v17 = 512;
    }

    v18 = 786979;
    v19 = 0x100000;
    if (!v11)
    {
      v19 = 0x200000;
    }

    v20 = 9437217;
    v21 = v11 == 0;
    v22 = 0x1000000;
    v23 = 0x2000000;
  }

  else
  {
    if (v14 > 786435)
    {
      v16 = 786436;
      v17 = 0x40000;
      if (!v11)
      {
        v17 = 0x80000;
      }

      v18 = 786480;
      v19 = 16;
      if (v11)
      {
        v36 = 1;
      }

      else
      {
        v19 = 32;
        v36 = 2;
      }

      if (v14 == 786496)
      {
        v15 = v36;
        v37 = 1;
      }

      else
      {
        v37 = 0;
      }

      goto LABEL_59;
    }

    v16 = 65670;
    v17 = 0x4000;
    if (!v11)
    {
      v17 = 0x8000;
    }

    v18 = 720941;
    v19 = 0x10000000;
    if (!v11)
    {
      v19 = 0x20000000;
    }

    v20 = 720942;
    v21 = v11 == 0;
    v22 = 4;
    v23 = 8;
  }

  if (v21)
  {
    v22 = v23;
  }

  if (v14 == v20)
  {
    v15 = v22;
    v37 = 1;
  }

  else
  {
    v37 = 0;
  }

LABEL_59:
  if (v14 == v18)
  {
    v15 = v19;
    v38 = 1;
  }

  else
  {
    v38 = v37;
  }

  if (v14 == v16)
  {
    v32 = v17;
  }

  else
  {
    v32 = v15;
  }

  if (v14 == v16)
  {
    v33 = 1;
  }

  else
  {
    v33 = v38;
  }

LABEL_68:
  v39 = [v8 _handlersForEvent:v32];
  v24 = v39;
  if (v33)
  {
    v34 = 0;
    if ([v39 count] && !v12 && (Phase & 4) == 0)
    {
      v34 = [v8 _triggerHandlers:v24 event:v32];
    }
  }

  else
  {
    v34 = 0;
  }

  v40 = [v8 testAutomation];
  v41 = v33 & [v40 testAutomationEnabled];

  if (v41 == 1 && v34 && !v11)
  {
    UIAccessibilityPostNotification(0xFA2u, &off_1EE78);
    v34 = &dword_0 + 1;
  }

LABEL_40:

  return v34;
}

void sub_8654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_8C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_9A60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t DSArchiveWrite(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = [a2 dataBuffer];
  [v6 appendBytes:a3 length:a4];

  return a4;
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void callIOFunction_cold_1(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "SMC::callIOFunction unrecognized index: %d", v2, 8u);
}

void buttonHIDEventFilterCallback_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "[HID Event] %@", &v2, 0xCu);
}