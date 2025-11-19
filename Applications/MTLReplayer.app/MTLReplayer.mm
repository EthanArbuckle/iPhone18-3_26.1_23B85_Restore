void sub_1000011B0(void *a1, void *a2)
{
  v25 = a2;
  v3 = a1;
  v4 = a1;
  [v4 bytes];
  [v4 length];

  GTHarvesterGetMetadata();
  if (GTHarvesterGetTexturePlaneCount() == 1)
  {
    TexturePlane = GTHarvesterGetTexturePlane();
    v6 = *TexturePlane - 30;
    v7 = v6 > 0x3E;
    v8 = (1 << v6) & 0x5000000840800001;
    if (v7 || v8 == 0)
    {
      v11 = TexturePlane;
      v10 = [[NSData alloc] initWithBytesNoCopy:GTHarvesterGetData() length:TexturePlane[5] freeWhenDone:0];
      v12 = *v11;
      v24 = *(v11 + 1);
      v13 = v11[4];
      v14 = CGDataProviderCreateWithCFData(v10);
      v15 = 5;
      v16 = 4;
      switch(v12)
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
        case 15:
        case 16:
        case 17:
        case 18:
        case 19:
        case 21:
        case 26:
        case 27:
        case 28:
        case 29:
        case 30:
        case 31:
        case 32:
        case 33:
        case 34:
        case 35:
        case 36:
        case 37:
        case 38:
        case 39:
        case 44:
        case 45:
        case 46:
        case 47:
        case 48:
        case 49:
        case 50:
        case 51:
        case 52:
        case 56:
        case 57:
        case 58:
        case 59:
        case 61:
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
        case 77:
        case 78:
        case 79:
        case 80:
        case 81:
        case 82:
        case 83:
        case 84:
        case 85:
        case 86:
        case 87:
        case 88:
        case 89:
        case 95:
        case 96:
        case 97:
        case 98:
        case 99:
        case 100:
        case 101:
        case 102:
        case 106:
        case 107:
        case 108:
        case 109:
        case 111:
        case 116:
        case 117:
        case 118:
        case 119:
        case 120:
        case 121:
        case 122:
          goto LABEL_12;
        case 20:
        case 22:
        case 23:
        case 24:
        case 25:
        case 60:
        case 62:
        case 63:
        case 64:
        case 65:
        case 110:
        case 112:
        case 113:
        case 114:
        case 115:
          v15 = 16;
          goto LABEL_17;
        case 40:
        case 41:
        case 43:
          goto LABEL_17;
        case 42:
LABEL_20:
          v17 = 16;
          goto LABEL_26;
        case 53:
        case 54:
        case 55:
        case 103:
        case 104:
        case 105:
        case 123:
        case 124:
        case 125:
          goto LABEL_16;
        case 90:
        case 91:
        case 92:
        case 93:
        case 94:
          v15 = 10;
          goto LABEL_17;
        default:
          if (v12 == 252)
          {
LABEL_16:
            v15 = 32;
          }

          else
          {
LABEL_12:
            v15 = 8;
          }

LABEL_17:
          v16 = v15;
          v17 = 8;
          if (v12 > 251)
          {
            if ((v12 - 552) < 2)
            {
LABEL_24:
              v17 = 64;
            }

            else if (v12 != 253)
            {
LABEL_19:
              v17 = 32;
            }
          }

          else
          {
            switch(v12)
            {
              case 1:
              case 10:
              case 11:
              case 12:
              case 13:
              case 14:
                break;
              case 20:
              case 22:
              case 23:
              case 24:
              case 25:
              case 30:
              case 31:
              case 32:
              case 33:
              case 34:
              case 40:
              case 41:
              case 42:
              case 43:
                goto LABEL_20;
              case 103:
              case 104:
              case 105:
              case 110:
              case 112:
              case 113:
              case 114:
              case 115:
                goto LABEL_24;
              case 123:
              case 124:
              case 125:
                v17 = 128;
                break;
              default:
                goto LABEL_19;
            }
          }

LABEL_26:
          if ((v12 - 10) > 0x3D)
          {
            goto LABEL_29;
          }

          if (((1 << (v12 - 10)) & 0x200000008009) != 0)
          {
            goto LABEL_30;
          }

          if (v12 == 71)
          {
            goto LABEL_32;
          }

LABEL_29:
          if ((v12 - 252) >= 2)
          {
            if (v12 == 81)
            {
LABEL_32:
              DeviceRGB = CGColorSpaceCreateWithName(kCGColorSpaceSRGB);
            }

            else
            {
              DeviceRGB = CGColorSpaceCreateDeviceRGB();
            }
          }

          else
          {
LABEL_30:
            DeviceRGB = CGColorSpaceCreateDeviceGray();
          }

          v19 = DeviceRGB;
          v20 = 7;
          switch(v12)
          {
            case 1:
              goto LABEL_49;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 21:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 56:
            case 57:
            case 58:
            case 59:
            case 61:
            case 66:
            case 67:
            case 68:
            case 69:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 82:
            case 83:
            case 84:
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 95:
            case 96:
            case 97:
            case 98:
            case 99:
            case 100:
            case 101:
            case 102:
            case 106:
            case 107:
            case 108:
            case 109:
            case 111:
            case 116:
            case 117:
            case 118:
            case 119:
            case 120:
            case 121:
            case 122:
              goto LABEL_35;
            case 20:
            case 22:
            case 23:
            case 24:
            case 40:
            case 60:
            case 62:
            case 63:
            case 64:
              v20 = 4096;
              goto LABEL_49;
            case 25:
            case 65:
              v20 = 4352;
              goto LABEL_49;
            case 41:
            case 42:
              v20 = 4100;
              goto LABEL_49;
            case 43:
            case 110:
            case 112:
            case 113:
            case 114:
              v20 = 4099;
              goto LABEL_49;
            case 53:
            case 54:
            case 103:
            case 104:
              goto LABEL_41;
            case 55:
            case 92:
            case 93:
            case 105:
            case 123:
            case 124:
              v20 = 8448;
              goto LABEL_49;
            case 70:
            case 71:
            case 72:
            case 73:
            case 74:
              v20 = 3;
              goto LABEL_49;
            case 80:
            case 81:
              v20 = 8196;
              goto LABEL_49;
            case 90:
            case 91:
              v20 = 204803;
              goto LABEL_49;
            case 94:
              v20 = 16387;
              goto LABEL_49;
            case 115:
              v20 = 4355;
              goto LABEL_49;
            case 125:
              v20 = 8451;
              goto LABEL_49;
            default:
              if (v12 == 252)
              {
LABEL_41:
                v20 = 0x2000;
              }

              else
              {
LABEL_35:
                v20 = 0;
              }

LABEL_49:
              v21 = CGImageCreate(v24, *(&v24 + 1), v16, v17, v13, DeviceRGB, v20, v14, 0, 1, kCGRenderingIntentDefault);
              CGColorSpaceRelease(v19);
              CGDataProviderRelease(v14);
              v22 = [UIImage imageWithCGImage:v21];
              v23 = UIImagePNGRepresentation(v22);

              [v23 writeToURL:v25 atomically:0];
              CGImageRelease(v21);

              break;
          }

          break;
      }
    }

    else
    {
      v10 = [v25 path];
      NSLog(@"SaveTexture Can't handle floating point textures: url:%@", v10);
    }
  }
}

uint64_t start(int a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (qword_10001CC60 != -1)
  {
    dispatch_once(&qword_10001CC60, &stru_100014BE0);
  }

  v5 = off_100019798;
  if (os_signpost_enabled(off_100019798))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Replayer-1-serial", "MTLReplayer main() inited!", &buf, 2u);
  }

  if (dword_10001CC88++)
  {
    goto LABEL_6;
  }

  if (byte_10001CC70++)
  {
LABEL_11:
    *&buf = 0;
    if (!sub_100007330(&buf, 0))
    {
      *(buf + 80) = "apr_initialize";
    }

    goto LABEL_6;
  }

  qword_10001CC78 = 0;
  v13 = sub_100006D90(0xC8uLL);
  if (!v13)
  {
LABEL_22:
    byte_10001CC70 = 0;
    goto LABEL_6;
  }

  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 192) = 0;
  *(v13 + 160) = 0u;
  *(v13 + 176) = 0u;
  *(v13 + 128) = 0u;
  *(v13 + 144) = 0u;
  *(v13 + 96) = 0u;
  *(v13 + 112) = 0u;
  *(v13 + 64) = 0u;
  *(v13 + 80) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  qword_10001CC78 = v13;
  *(v13 + 8) = vdupq_n_s64(0x8000uLL);
  if (sub_100007330(&qword_10001CC80, v13))
  {
    v14 = 0;
    v15 = qword_10001CC78;
    v16 = qword_10001CC78 + 40;
    do
    {
      while (1)
      {
        v17 = *(v16 + 8 * v14);
        if (!v17)
        {
          break;
        }

        *(v16 + 8 * v14) = *v17;
        vm_deallocate(mach_task_self_, v17, ((*(v17 + 16) << 12) + 4096));
      }

      ++v14;
    }

    while (v14 != 20);
    vm_deallocate(mach_task_self_, v15, 0xC8uLL);
    qword_10001CC78 = 0;
    goto LABEL_22;
  }

  v34 = qword_10001CC80;
  *(qword_10001CC80 + 80) = "apr_global_pool";
  if (qword_10001CC68)
  {
LABEL_106:
    *&buf = 0;
    if (sub_1000075CC(&buf, v34))
    {
      goto LABEL_6;
    }

    v38 = qword_10001CC78;
    v39 = qword_10001CC80;
    *(qword_10001CC78 + 24) = buf;
    *(v38 + 32) = v39;
    goto LABEL_11;
  }

  v35 = sub_100007430(v34, 0x38uLL);
  qword_10001CC68 = v35;
  v36 = *(v34 + 40);
  if (v36)
  {
    *(v34 + 40) = *v36;
  }

  else
  {
    v36 = sub_100007430(v34, 0x20uLL);
  }

  v37 = 0;
  v36[1] = v35;
  v36[2] = sub_100007160;
  v36[3] = sub_1000075C4;
  *v36 = *(v34 + 32);
  *(v34 + 32) = v36;
  while (!sub_1000075CC((qword_10001CC68 + v37), v34))
  {
    v37 += 8;
    if (v37 == 56)
    {
      v34 = qword_10001CC80;
      goto LABEL_106;
    }
  }

LABEL_6:
  v40 = 0;
  sub_100007330(&v40, 0);
  GTMTLReplayController_init();
  if (a1 >= 2 && (v7 = a2 + 8, !strcmp("-CLI", *(a2 + 8))))
  {
    *(a2 + 8) = *a2;
    if (a1 == 2)
    {
      v10 = 1;
      GTMTLReplay_handleError();
    }

    else
    {
      v19 = *(a2 + 16);
      v18 = a2 + 16;
      v20 = a1 - 1;
      v61 = xmmword_1000145F0;
      v62 = unk_100014600;
      v63 = xmmword_100014610;
      v64 = unk_100014620;
      v57 = xmmword_1000145B0;
      v58 = unk_1000145C0;
      v59 = xmmword_1000145D0;
      v60 = unk_1000145E0;
      buf = xmmword_100014570;
      v54 = unk_100014580;
      v55 = xmmword_100014590;
      v56 = *&off_1000145A0;
      if (a1 != 3)
      {
        v21 = 2;
        while (1)
        {
          v22 = v21;
          v23 = *(v7 + 8 * v21);
          v24 = &off_100014630;
          v25 = 59;
          while (strcmp(v23, *v24))
          {
            v24 += 2;
            if (!--v25)
            {
LABEL_29:
              GTMTLReplay_handleError();
              goto LABEL_87;
            }
          }

          switch(*(v24 + 2))
          {
            case 1:
              v26 = DWORD2(v64) | 0x8000;
              goto LABEL_82;
            case 2:
            case 0x17:
              goto LABEL_87;
            case 3:
            case 0x1F:
              v26 = DWORD2(v64) | 0x200;
              goto LABEL_82;
            case 4:
              ++v21;
              *(&buf + 1) = *(v7 + 8 * (v22 + 1));
              goto LABEL_87;
            case 5:
              ++v21;
              *&buf = *(v7 + 8 * (v22 + 1));
              goto LABEL_87;
            case 6:
              ++v21;
              v28 = atoi(*(v7 + 8 * (v22 + 1)));
              if (v28 <= 1)
              {
                v29 = 1;
              }

              else
              {
                v29 = v28;
              }

              DWORD2(v54) = v29;
              goto LABEL_87;
            case 7:
              BYTE4(v55) = 1;
              goto LABEL_87;
            case 8:
              v26 = DWORD2(v64) | 0x100;
              goto LABEL_82;
            case 9:
              ++v21;
              *&v54 = atoi(*(v7 + 8 * (v22 + 1)));
              goto LABEL_87;
            case 0xA:
              ++v21;
              HIDWORD(v54) = atoi(*(v7 + 8 * (v22 + 1)));
              goto LABEL_87;
            case 0xB:
              ++v21;
              LODWORD(v55) = atoi(*(v7 + 8 * (v22 + 1)));
              goto LABEL_87;
            case 0xC:
              BYTE5(v55) = 1;
              goto LABEL_87;
            case 0xD:
              ++v21;
              *(&v55 + 1) = *(v7 + 8 * (v22 + 1));
              goto LABEL_87;
            case 0xE:
              ++v21;
              *&v56 = *(v7 + 8 * (v22 + 1));
              goto LABEL_87;
            case 0xF:
              ++v21;
              sscanf(*(v7 + 8 * (v22 + 1)), "%llu:%llu", &v63 + 8, &v64);
              goto LABEL_87;
            case 0x10:
              v26 = DWORD2(v64) | 1;
              goto LABEL_82;
            case 0x11:
              v26 = DWORD2(v64) | 2;
              goto LABEL_82;
            case 0x12:
              v26 = DWORD2(v64) | 4;
              goto LABEL_82;
            case 0x13:
              ++v21;
              HIDWORD(v62) = atoi(*(v7 + 8 * (v22 + 1)));
              goto LABEL_87;
            case 0x14:
              ++v21;
              LODWORD(v63) = atoi(*(v7 + 8 * (v22 + 1)));
              goto LABEL_87;
            case 0x15:
              v26 = DWORD2(v64) | 8;
              goto LABEL_82;
            case 0x16:
              v26 = DWORD2(v64) | 0x40;
              goto LABEL_82;
            case 0x18:
              ++v21;
              *(&v57 + 1) = *(v7 + 8 * (v22 + 1));
              goto LABEL_87;
            case 0x19:
              v27 = DWORD2(v64) | 0x800;
              goto LABEL_80;
            case 0x1A:
              v26 = DWORD2(v64) | 0x80;
              goto LABEL_82;
            case 0x1B:
              v27 = DWORD2(v64) | 0x100;
LABEL_80:
              DWORD2(v64) = v27;
              ++v21;
              *&v59 = *(v7 + 8 * (v22 + 1));
              goto LABEL_87;
            case 0x1C:
              DWORD2(v64) |= 0x2000u;
              ++v21;
              *(&v59 + 1) = *(v7 + 8 * (v22 + 1));
              goto LABEL_87;
            case 0x1D:
              ++v21;
              *&v60 = *(v7 + 8 * (v22 + 1));
              goto LABEL_87;
            case 0x1E:
              ++v21;
              *(&v60 + 1) = *(v7 + 8 * (v22 + 1));
              goto LABEL_87;
            case 0x20:
              ++v21;
              *(&v56 + 1) = *(v7 + 8 * (v22 + 1));
              goto LABEL_87;
            case 0x21:
              ++v21;
              *&v57 = *(v7 + 8 * (v22 + 1));
              goto LABEL_87;
            case 0x22:
              v26 = DWORD2(v64) | 0x1000;
              goto LABEL_82;
            case 0x23:
              DWORD2(v64) |= 0x80u;
              ++v21;
              *&v58 = *(v7 + 8 * (v22 + 1));
              goto LABEL_87;
            case 0x24:
              DWORD2(v64) |= 0x4000u;
              ++v21;
              *&v61 = *(v7 + 8 * (v22 + 1));
              goto LABEL_87;
            case 0x25:
              v26 = DWORD2(v64) | 0x10000;
              goto LABEL_82;
            case 0x27:
              g_runningInCI = 1;
              goto LABEL_87;
            case 0x28:
              g_runningValidationCI = 1;
              goto LABEL_87;
            case 0x29:
              ++v21;
              goto LABEL_87;
            case 0x2A:
              v26 = DWORD2(v64) | 0x20000;
              goto LABEL_82;
            case 0x2B:
              v26 = DWORD2(v64) | 0x10;
              goto LABEL_82;
            case 0x2C:
              v26 = DWORD2(v64) | 0x40000;
              goto LABEL_82;
            case 0x2D:
              v26 = DWORD2(v64) | 0x80000;
              goto LABEL_82;
            case 0x2E:
              v26 = DWORD2(v64) | 0x100000;
              goto LABEL_82;
            case 0x30:
              DWORD2(v64) |= 0x200000u;
              v30 = v21 + 1;
              v31 = *(v7 + 8 * v30);
              if (!v31 || *v31 == 45)
              {
                DWORD1(v63) = -1;
                goto LABEL_87;
              }

              if (!strcmp(*(v7 + 8 * v30), "max"))
              {
                v33 = 2;
LABEL_95:
                DWORD1(v63) = v33;
                goto LABEL_96;
              }

              if (!strcmp(v31, "med"))
              {
                v33 = 1;
                goto LABEL_95;
              }

              if (!strcmp(v31, "min"))
              {
                DWORD1(v63) = 0;
              }

              else
              {
                DWORD1(v63) = atoi(v31);
              }

LABEL_96:
              ++v21;
LABEL_87:
              if (++v21 >= v20)
              {
                goto LABEL_24;
              }

              break;
            case 0x31:
              DWORD2(v64) |= 0x800000u;
              ++v21;
              *(&v61 + 1) = *(v7 + 8 * (v22 + 1));
              goto LABEL_87;
            case 0x32:
              v32 = DWORD2(v64) | 0x1000000;
              goto LABEL_86;
            case 0x33:
              v32 = DWORD2(v64) | 0x2000000;
LABEL_86:
              DWORD2(v64) = v32;
              DWORD2(v62) = atoi(*(v18 + 8 * v21));
              v21 += 2;
              *&v62 = *(v7 + 8 * (v22 + 2));
              goto LABEL_87;
            case 0x34:
              v26 = DWORD2(v64) | 0x400000;
              goto LABEL_82;
            case 0x35:
              v26 = DWORD2(v64) | 0x20;
LABEL_82:
              DWORD2(v64) = v26;
              goto LABEL_87;
            default:
              goto LABEL_29;
          }
        }
      }

LABEL_24:
      v49 = v61;
      v50 = v62;
      v51 = v63;
      v52 = v64;
      v45 = v57;
      v46 = v58;
      v47 = v59;
      v48 = v60;
      v41 = buf;
      v42 = v54;
      v43 = v55;
      v44 = v56;
      v10 = GTMTLReplay_CLI();
    }
  }

  else
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = UIApplicationMain(a1, a2, 0, v9);
  }

  objc_autoreleasePoolPop(v4);
  return v10;
}

void sub_100002E88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10000362C(void *a1, float a2)
{
  v3 = [a1 newBufferWithLength:516 options:0];
  v4 = [v3 contents];
  *v5.i32 = (a2 + a2) * a2;
  v6 = vdup_lane_s32(v5, 0);
  v7 = (v4 + 4);
  v8 = xmmword_10000CC70;
  v9 = 0.0;
  v10 = 130;
  v11 = vdup_n_s32(0xC2800000);
  v18 = vdupq_n_s64(2uLL);
  v19 = vdupq_n_s64(0x81uLL);
  do
  {
    v22 = vmovn_s64(vcgtq_u64(v19, v8)).u8[0];
    v23 = v8;
    v12 = vadd_f32(vcvt_f32_f64(vcvtq_f64_u64(v8)), v11);
    v13 = vdiv_f32(vmul_f32(v12, vneg_f32(v12)), v6);
    v20 = v13.f32[0];
    v21 = expf(v13.f32[1]);
    *v14.i32 = expf(v20);
    *&v14.i32[1] = v21;
    if (v22)
    {
      *(v7 - 1) = *v14.i32;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x81uLL), *&v23)).i32[1])
    {
      *v7 = v21;
    }

    v15 = vbsl_s8(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x81uLL), v23)), v14, 0x8000000080000000);
    v9 = (v9 + *v15.i32) + *&v15.i32[1];
    v8 = vaddq_s64(v23, v18);
    v7 += 2;
    v10 -= 2;
  }

  while (v10);
  for (i = 0; i != 516; i += 4)
  {
    *&v4[i] = *&v4[i] / v9;
  }

  return v3;
}

void sub_1000040FC(uint64_t a1, void *a2, char a3, void *a4, uint64_t a5)
{
  v9 = a2;
  v10 = a4;
  v11 = *a1;
  *a1 = v9;
  v12 = v9;

  *(a1 + 24) = a3;
  v13 = *(a1 + 8);
  *(a1 + 8) = v10;

  *(a1 + 16) = a5;
}

void sub_10000486C(id a1, MTLTextureDescriptor *a2)
{
  v2 = a2;
  [(MTLTextureDescriptor *)v2 setUsage:[(MTLTextureDescriptor *)v2 usage]| 1];
}

void sub_100004B94(id a1, MTLTextureDescriptor *a2)
{
  v2 = a2;
  [(MTLTextureDescriptor *)v2 setUsage:[(MTLTextureDescriptor *)v2 usage]| 1];
}

void sub_100004EF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 data];

  if (v4)
  {
    v5 = +[GTReplayUnarchiver rootResponseClassSet];
    objc_opt_class();
    v6 = [v3 data];
    v31 = 0;
    v7 = GTUnarchivedObjectOfClassesExpectingClass();
    v8 = 0;

    if (v7)
    {
      v9 = qword_10001CC50;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000528C;
      block[3] = &unk_100014A78;
      v26 = v7;
      v24 = *(a1 + 40);
      v10 = *(&v24 + 1);
      v11 = *(a1 + 56);
      v12 = *(a1 + 64);
      *&v13 = v11;
      *(&v13 + 1) = v12;
      v27 = v24;
      v28 = v13;
      v30 = *(a1 + 72);
      v29 = *(a1 + 32);
      dispatch_async(v9, block);
    }

    else
    {
      v17 = sub_100006F30(0x10u);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v35 = v8;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Display service failed to deserialize replayer fetch response (%@)", buf, 0xCu);
      }

      v18 = GTTransportErrorDomain;
      v32 = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithFormat:@"Deserialization failed for %@", @"replayer fetchInto response"];
      v33 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v21 = [NSError errorWithDomain:v18 code:10 userInfo:v20];
      [*(a1 + 32) setError:v21];

      v22 = *(a1 + 32);
      (*(*(a1 + 72) + 16))();
    }
  }

  else
  {
    v14 = sub_100006F30(0x10u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v23 = [v3 error];
      *buf = 138412290;
      v35 = v23;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to fetch resources for displaying (%@)", buf, 0xCu);
    }

    v15 = [v3 error];
    [*(a1 + 32) setError:v15];

    v16 = *(a1 + 32);
    (*(*(a1 + 72) + 16))();
  }
}

void sub_10000528C(uint64_t a1)
{
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"info"];
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"data"];
  [*(a1 + 40) processFetchTextureResponse:v4 data:v2 forRequest:*(a1 + 48)];
  [*(a1 + 40) processFetchWireframeResponse:v4 data:v2 forRequest:*(a1 + 56)];
  [*(a1 + 40) processFetchRenderMaskResponse:v4 data:v2 forRequest:*(a1 + 64)];
  [*(a1 + 40) encodeRenderPass];
  v3 = *(a1 + 72);
  (*(*(a1 + 80) + 16))();
}

void sub_100005784(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 data];

  if (v4)
  {
    v5 = +[GTReplayUnarchiver rootResponseClassSet];
    objc_opt_class();
    v6 = [v3 data];
    v31 = 0;
    v7 = GTUnarchivedObjectOfClassesExpectingClass();
    v8 = 0;

    if (v7)
    {
      if ([v7 count] == *(a1 + 80))
      {
        v9 = qword_10001CC50;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100005BB8;
        block[3] = &unk_100014A78;
        block[4] = *(a1 + 40);
        v25 = v7;
        v26 = *(a1 + 48);
        v27 = *(a1 + 56);
        v28 = *(a1 + 64);
        v30 = *(a1 + 72);
        v29 = *(a1 + 32);
        dispatch_async(v9, block);

LABEL_13:
        goto LABEL_14;
      }

      v18 = sub_100006F30(0x10u);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v22 = [v7 count];
        v23 = *(a1 + 80);
        *buf = 134218240;
        v35 = v22;
        v36 = 2048;
        v37 = v23;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Replayer fetchInto request returned %lu responses, expected %lu", buf, 0x16u);
      }

      v19 = GTTransportErrorDomain;
      v32 = NSLocalizedDescriptionKey;
      v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Unexpected number of responses. Expected %lu Received %lu", *(a1 + 80), [v7 count]);
      v33 = v14;
      v15 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v16 = v19;
      v17 = 11;
    }

    else
    {
      v12 = sub_100006F30(0x10u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v35 = v8;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Display service failed to deserialize replayer fetchInto response (%@)", buf, 0xCu);
      }

      v13 = GTTransportErrorDomain;
      v38 = NSLocalizedDescriptionKey;
      v14 = [NSString stringWithFormat:@"Deserialization failed for %@", @"replayer fetchInto response"];
      v39 = v14;
      v15 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      v16 = v13;
      v17 = 10;
    }

    v20 = [NSError errorWithDomain:v16 code:v17 userInfo:v15];
    [*(a1 + 32) setError:v20];

    v21 = *(a1 + 32);
    (*(*(a1 + 72) + 16))();
    goto LABEL_13;
  }

  v10 = [v3 error];
  [*(a1 + 32) setError:v10];

  v11 = *(a1 + 32);
  (*(*(a1 + 72) + 16))();
LABEL_14:
}

uint64_t sub_100005BB8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectAtIndexedSubscript:0];
  [v2 processFetchIntoTextureResponse:v3 forRequest:*(a1 + 48)];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) objectAtIndexedSubscript:1];
  [v4 processFetchIntoWireframeResponse:v5 forRequest:*(a1 + 56)];

  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) objectAtIndexedSubscript:2];
  [v6 processFetchIntoRenderMaskResponse:v7 forRequest:*(a1 + 64)];

  [*(a1 + 32) encodeRenderPass];
  v8 = *(a1 + 72);
  v9 = *(*(a1 + 80) + 16);

  return v9();
}

void sub_1000062EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = sub_100006F30(0x10u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [v3 error];
      v7 = [v6 localizedDescription];
      v8 = 138412290;
      v9 = v7;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "fetchInto failed (%@) falling back to fetch", &v8, 0xCu);
    }

    [*(a1 + 32) showUsingFetch:*(a1 + 40) replayer:*(a1 + 48) completionHandler:*(a1 + 56)];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_100006498(uint64_t a1)
{
  v2 = MTLCreateSystemDefaultDevice();
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  [*(*(a1 + 32) + 16) setDevice:*(*(a1 + 32) + 24)];
  *(*(a1 + 32) + 57) = 1;
  v5 = [*(*(a1 + 32) + 24) newCommandQueue];
  v6 = *(a1 + 32);
  v7 = *(v6 + 152);
  *(v6 + 152) = v5;

  v8 = [[GTDisplayOutlineGenerator alloc] initWithDevice:*(*(a1 + 32) + 24)];
  v9 = *(a1 + 32);
  v10 = *(v9 + 160);
  *(v9 + 160) = v8;

  v11 = *(a1 + 32);
  v12 = *(v11 + 152);
  v13 = *(v11 + 24);
  v14 = v12;
  if (os_variant_allows_internal_security_policies())
  {
    v15 = [v13 newBufferWithLength:40000 options:0];
    v16 = [v15 contents];
    v17 = 0;
    v18 = v16 + 18180;
    v19 = vdupq_n_s64(2uLL);
    do
    {
      v20 = v18;
      v21 = 10;
      v22 = xmmword_10000CC70;
      do
      {
        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), v22)).u8[0])
        {
          *v20 = -1;
        }

        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), *&v22)).i32[1])
        {
          v20[400] = -1;
        }

        v22 = vaddq_s64(v22, v19);
        v20 += 800;
        v21 -= 2;
      }

      while (v21);
      ++v17;
      v18 += 4;
    }

    while (v17 != 10);
    v23 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:70 width:100 height:100 mipmapped:0, 0.0, *v19.i64, *v22.i64];
    v24 = [v13 newTextureWithDescriptor:v23];
    v25 = [v14 commandBuffer];
    v26 = [v25 blitCommandEncoder];
    v30 = vdupq_n_s64(0x64uLL);
    v31 = 1;
    memset(v29, 0, sizeof(v29));
    [v26 copyFromBuffer:v15 sourceOffset:0 sourceBytesPerRow:400 sourceBytesPerImage:0 sourceSize:&v30 toTexture:v24 destinationSlice:0 destinationLevel:0 destinationOrigin:v29];
    [v26 endEncoding];
    [v25 commit];
    [v25 waitUntilCompleted];
  }

  else
  {
    v24 = 0;
  }

  v27 = *(a1 + 32);
  v28 = *(v27 + 144);
  *(v27 + 144) = v24;
}

void sub_10000678C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    MessageRemoteRoutingInfoGet();
    memset(v6, 0, sizeof(v6));
    v5 = [[GTRelayedXPCConnection alloc] initWithConnection:WeakRetained routingInfo:v6];
    [WeakRetained dispatchMessage:v3 replyConnection:v5];
  }
}

vm_address_t sub_100006D90(memory_object_size_t a1)
{
  address = 0;
  object_handle = 0;
  size = a1;
  memory_entry_64 = mach_make_memory_entry_64(mach_task_self_, &size, 0, 139267, &object_handle, 0);
  if (memory_entry_64)
  {
    v3 = memory_entry_64;
    v4 = sub_100006F30(3u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = mach_error_string(v3);
      *buf = 67109378;
      v15 = v3;
      v16 = 2080;
      v17 = v5;
      v6 = "warning: failed to create memory entry error 0x%x (%s)";
LABEL_10:
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, v6, buf, 0x12u);
    }
  }

  else
  {
    v7 = vm_map(mach_task_self_, &address, a1, 0, 1, object_handle, 0, 0, 3, 3, 1u);
    if (!v7)
    {
      mach_port_deallocate(mach_task_self_, object_handle);
      return address;
    }

    v8 = v7;
    v4 = sub_100006F30(3u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = mach_error_string(v8);
      *buf = 67109378;
      v15 = v8;
      v16 = 2080;
      v17 = v10;
      v6 = "warning: failed to map memory error 0x%x (%s)";
      goto LABEL_10;
    }
  }

  return 0;
}

id sub_100006F30(unsigned int a1)
{
  v1 = (&unk_1000197A0 + 24 * a1);
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_100007024;
  v9 = &unk_100014D98;
  LODWORD(v11) = a1;
  v10 = v1;
  if (*v1 != -1)
  {
    dispatch_once(&unk_1000197A0 + 3 * a1, &v6);
  }

  if (v1[1] && (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults", v6, v7, v8, v9, v10, v11), v2 = objc_claimAutoreleasedReturnValue(), v3 = [v2 BOOLForKey:v1[1]], v2, !v3))
  {
    v4 = &_os_log_disabled;
  }

  else
  {
    v4 = v1[2];
  }

  return v4;
}

uint64_t sub_100007024(uint64_t a1)
{
  v2 = &(&off_100014C00)[3 * *(a1 + 40)];
  v3 = *(v2 + 16);
  if (v3 == 1)
  {
    v4 = [NSString stringWithFormat:@"%s.%s.enableLog", *v2, v2[1]];
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong((*(a1 + 32) + 8), v4);
  if (v3)
  {
  }

  v5 = os_log_create(*v2, v2[1]);
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  *(v6 + 16) = v5;

  return _objc_release_x1();
}

void sub_1000070DC(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 BOOLForKey:@"GPUToolsPerfLogging"];

  if (v2)
  {
    off_100019798 = os_log_create("com.apple.gputools.perf", "");

    _objc_release_x1();
  }
}

uint64_t sub_100007160(uint64_t a1)
{
  if (qword_10001CC68 == a1)
  {
    qword_10001CC68 = 0;
  }

  return 0;
}

uint64_t **sub_10000717C(unint64_t *a1, unint64_t a2)
{
  if (a2 >= 0xFD9)
  {
    v2 = (a2 + 4135) & 0xFFFFFFFFFFFFF000;
  }

  else
  {
    v2 = 0x2000;
  }

  if (((a2 + 4135) & 0xFFFFFFFFFFFFF000) < a2 || v2 == 0)
  {
    return 0;
  }

  v4 = v2 >> 12;
  v5 = (v2 >> 12) - 1;
  if (HIDWORD(v5))
  {
    return 0;
  }

  v8 = a1[3];
  if (v8)
  {
    pthread_mutex_lock((v8 + 8));
  }

  v10 = (a1 + 5);
  v9 = *a1;
  if (v5 <= *a1)
  {
    v13 = &v10[v5];
    v6 = *v13;
    v14 = *v13 == 0;
    v15 = v5 < v9;
    if (*v13)
    {
      v16 = 1;
    }

    else
    {
      v16 = v5 >= v9;
    }

    if (!v16)
    {
      do
      {
        v17 = v13[1];
        ++v13;
        v6 = v17;
        v14 = v17 == 0;
        v15 = v4 < v9;
        if (v17)
        {
          v18 = 1;
        }

        else
        {
          v18 = v4 >= v9;
        }

        ++v4;
      }

      while (!v18);
    }

    if (v14)
    {
      goto LABEL_28;
    }

    v21 = *v6;
    *v13 = *v6;
    if (v21 == 0 && !v15)
    {
      v22 = v13 - 1;
      do
      {
        if (*v22--)
        {
          v24 = 1;
        }

        else
        {
          v24 = v9 == 1;
        }

        --v9;
      }

      while (!v24);
      *a1 = v9;
    }

    v12 = (*(v6 + 4) + 1);
LABEL_41:
    v25 = a1[2] + v12;
    if (v25 >= a1[1])
    {
      v25 = a1[1];
    }

    a1[2] = v25;
    v26 = a1[3];
    if (v26)
    {
      pthread_mutex_unlock((v26 + 8));
    }

    goto LABEL_45;
  }

  v6 = *v10;
  if (!*v10)
  {
    goto LABEL_28;
  }

  v11 = *(v6 + 4);
  if (v5 <= v11)
  {
LABEL_17:
    *v10 = *v6;
    v12 = (v11 + 1);
    goto LABEL_41;
  }

  while (1)
  {
    v10 = v6;
    v6 = *v6;
    if (!v6)
    {
      break;
    }

    v11 = *(v6 + 4);
    if (v5 <= v11)
    {
      goto LABEL_17;
    }
  }

LABEL_28:
  v19 = a1[3];
  if (v19)
  {
    pthread_mutex_unlock((v19 + 8));
  }

  v20 = sub_100006D90(v2);
  v6 = v20;
  if (v20)
  {
    *(v20 + 16) = v5;
    *(v20 + 32) = v20 + v2;
LABEL_45:
    *v6 = 0;
    v6[3] = (v6 + 5);
  }

  return v6;
}

uint64_t sub_100007330(uint64_t **a1, unint64_t *a2)
{
  v2 = a2;
  *a1 = 0;
  v4 = qword_10001CC80;
  if (qword_10001CC80)
  {
    v5 = *(qword_10001CC80 + 64);
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = 0;
  if (!a2)
  {
LABEL_3:
    v2 = *(qword_10001CC80 + 48);
  }

LABEL_4:
  v6 = sub_10000717C(v2, 0x1FD8uLL);
  if (v6)
  {
    *v6 = v6;
    v6[1] = v6;
    v7 = v6[3];
    v6[3] = v7 + 15;
    v7[12] = v6;
    v7[13] = (v7 + 15);
    v7[14] = 0;
    v7[6] = v2;
    v7[7] = 0;
    v7[4] = 0;
    v7[5] = 0;
    v7[10] = 0;
    v7[11] = v6;
    v7[8] = v5;
    v7[9] = 0;
    *v7 = v4;
    v7[1] = 0;
    if (v4)
    {
      v8 = *(*(v4 + 48) + 24);
      if (v8)
      {
        pthread_mutex_lock((v8 + 8));
      }

      v11 = *(v4 + 8);
      v10 = (v4 + 8);
      v9 = v11;
      v7[2] = v11;
      if (v11)
      {
        *(v9 + 24) = v7 + 2;
      }

      *v10 = v7;
      v7[3] = v10;
      if (v8)
      {
        pthread_mutex_unlock((v8 + 8));
      }
    }

    else
    {
      v7[2] = 0;
      v7[3] = 0;
    }

    v12 = 0;
    *a1 = v7;
  }

  else
  {
    v12 = 12;
    if (v5)
    {
      v5(12);
    }
  }

  return v12;
}

uint64_t *sub_100007430(uint64_t a1, unint64_t a2)
{
  v3 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v3 < a2)
  {
LABEL_2:
    v4 = *(a1 + 64);
    if (v4)
    {
      v4(12);
    }

    return 0;
  }

  v6 = *(a1 + 88);
  result = v6[3];
  if (v3 <= v6[4] - result)
  {
    v6[3] = (result + v3);
    return result;
  }

  v7 = *v6;
  if (v3 <= (*v6)[4] - (*v6)[3])
  {
    v8 = *v7;
    *v7[1] = *v7;
    v8[1] = v7[1];
  }

  else
  {
    v7 = sub_10000717C(*(a1 + 48), (a2 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (!v7)
    {
      goto LABEL_2;
    }
  }

  *(v7 + 5) = 0;
  result = v7[3];
  v7[3] = (result + v3);
  v9 = v6[1];
  v7[1] = v9;
  *v9 = v7;
  *v7 = v6;
  v6[1] = v7;
  *(a1 + 88) = v7;
  v10 = (v6[4] - v6[3]) >> 12;
  *(v6 + 5) = v10;
  if (v10 < *(*v6 + 5))
  {
    v11 = *v6;
    do
    {
      v11 = *v11;
    }

    while (*(v11 + 5) > v10);
    *v7 = *v6;
    (*v6)[1] = v6[1];
    v12 = v11[1];
    v6[1] = v12;
    *v12 = v6;
    *v6 = v11;
    v11[1] = v6;
  }

  return result;
}

uint64_t *sub_100007558(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v7 = result;
    result = result[5];
    if (result)
    {
      *(v7 + 40) = *result;
    }

    else
    {
      result = sub_100007430(v7, 0x20uLL);
    }

    result[2] = a3;
    result[3] = a4;
    *result = *(v7 + 32);
    result[1] = a2;
    *(v7 + 32) = result;
  }

  return result;
}

uint64_t sub_1000075CC(uint64_t ***a1, uint64_t a2)
{
  v4 = sub_100007430(a2, 0x48uLL);
  v5 = v4;
  if (v4)
  {
    *(v4 + 7) = 0u;
    *(v4 + 5) = 0u;
    *(v4 + 3) = 0u;
    *(v4 + 1) = 0u;
  }

  *v4 = a2;
  result = pthread_mutex_init((v4 + 1), 0);
  if (!result)
  {
    sub_100007558(*v5, v5, sub_100007668, sub_1000075C4);
    result = 0;
    *a1 = v5;
  }

  return result;
}

id sub_100007670(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = a1;
  v14 = a4;
  v15 = a5;
  v16 = a3;
  v17 = objc_opt_new();
  [v17 setObject:v16 forKeyedSubscript:NSLocalizedDescriptionKey];

  if (v14)
  {
    [v17 setObject:v14 forKeyedSubscript:NSUnderlyingErrorKey];
  }

  if (v15)
  {
    v18 = [[NSString alloc] initWithFormat:v15 arguments:&a9];
    [v17 setObject:v18 forKeyedSubscript:NSLocalizedFailureReasonErrorKey];
  }

  v19 = [NSError errorWithDomain:v13 code:a2 userInfo:v17];

  return v19;
}

uint64_t sub_1000077AC(__int16 a1)
{
  __key = a1;
  v1 = *(bsearch(&__key, &unk_100019938, 0x129uLL, 0x2CuLL, sub_10000781C) + 6) - 2;
  if (v1 > 6)
  {
    return 1;
  }

  else
  {
    return qword_10000CD08[v1];
  }
}

void sub_10000782C(void *a1, void *a2, void *a3)
{
  v6 = a1;
  v7 = a2;
  v8 = +[NSFileManager defaultManager];
  v9 = [v7 path];
  v10 = [v8 fileExistsAtPath:v9];

  if (v10)
  {
    v183[0] = 0;
    v11 = [v6 newLibraryWithURL:v7 error:v183];
    v12 = v183[0];
    if (v12)
    {
      v16 = v12;
    }

    else
    {
      objc_storeStrong(&qword_10001CCA0, a1);
      v20 = objc_opt_new();
      v182 = 0;
      v21 = [v11 newFunctionWithName:@"RenderToTextureVertex" constantValues:v20 error:&v182];
      v16 = v182;
      v22 = qword_10001CCA8;
      qword_10001CCA8 = v21;

      v23 = [@"com.apple.gputools.TextureProcessorCore.function - " stringByAppendingString:@"RenderToTextureVertex"];
      [qword_10001CCA8 setLabel:v23];

      if (!v16)
      {
        v24 = objc_opt_new();
        v181 = 0;
        v25 = [v11 newFunctionWithName:@"RenderToTextureFragment_float" constantValues:v24 error:&v181];
        v16 = v181;
        v26 = qword_10001CCB0;
        qword_10001CCB0 = v25;

        v27 = [@"com.apple.gputools.TextureProcessorCore.function - " stringByAppendingString:@"RenderToTextureFragment_float"];
        [qword_10001CCB0 setLabel:v27];

        if (!v16)
        {
          v28 = objc_opt_new();
          v180 = 0;
          v29 = [v11 newFunctionWithName:@"RenderToTextureFragment_alpha" constantValues:v28 error:&v180];
          v16 = v180;
          v30 = qword_10001CCB8;
          qword_10001CCB8 = v29;

          v31 = [@"com.apple.gputools.TextureProcessorCore.function - " stringByAppendingString:@"RenderToTextureFragment_alpha"];
          [qword_10001CCB8 setLabel:v31];

          if (!v16)
          {
            v32 = objc_opt_new();
            v179 = 0;
            v33 = [v11 newFunctionWithName:@"RenderToTextureFragment_uint" constantValues:v32 error:&v179];
            v16 = v179;
            v34 = qword_10001CCC0;
            qword_10001CCC0 = v33;

            v35 = [@"com.apple.gputools.TextureProcessorCore.function - " stringByAppendingString:@"RenderToTextureFragment_uint"];
            [qword_10001CCC0 setLabel:v35];

            if (!v16)
            {
              v36 = objc_opt_new();
              v178 = 0;
              v37 = [v11 newFunctionWithName:@"RenderToTextureFragment_int" constantValues:v36 error:&v178];
              v16 = v178;
              v38 = qword_10001CCC8;
              qword_10001CCC8 = v37;

              v39 = [@"com.apple.gputools.TextureProcessorCore.function - " stringByAppendingString:@"RenderToTextureFragment_int"];
              [qword_10001CCC8 setLabel:v39];

              if (!v16)
              {
                v40 = objc_opt_new();
                v177 = 0;
                v41 = [v11 newFunctionWithName:@"RenderToTextureFragment_depth" constantValues:v40 error:&v177];
                v16 = v177;
                v42 = qword_10001CCD0;
                qword_10001CCD0 = v41;

                v43 = [@"com.apple.gputools.TextureProcessorCore.function - " stringByAppendingString:@"RenderToTextureFragment_depth"];
                [qword_10001CCD0 setLabel:v43];

                if (!v16)
                {
                  v44 = objc_opt_new();
                  v176 = 0;
                  v45 = [v11 newFunctionWithName:@"RenderToTextureFragment_stencil" constantValues:v44 error:&v176];
                  v16 = v176;
                  v46 = qword_10001CCD8;
                  qword_10001CCD8 = v45;

                  v47 = [@"com.apple.gputools.TextureProcessorCore.function - " stringByAppendingString:@"RenderToTextureFragment_stencil"];
                  [qword_10001CCD8 setLabel:v47];

                  if (!v16)
                  {
                    v48 = -4;
                    v153 = &unk_10001CD48;
                    v49 = &GTTransportServiceDaemonConnectionNew_ptr;
                    while (1)
                    {
                      v151 = v48;
                      v152 = v48 + 5;
                      v50 = [v49[161] stringWithFormat:@"MinMaxReduction_float%d", v48 + 5];
                      v51 = objc_opt_new();
                      v52 = [@"com.apple.gputools.TextureProcssorCore.PipelineState - " stringByAppendingString:v50];
                      [v51 setLabel:v52];

                      v53 = v50;
                      v54 = objc_opt_new();
                      v175 = 0;
                      v55 = [v11 newFunctionWithName:v53 constantValues:v54 error:&v175];
                      v16 = v175;
                      [v51 setComputeFunction:v55];

                      v56 = [@"com.apple.gputools.TextureProcessorCore.function - " stringByAppendingString:v53];
                      v57 = [v51 computeFunction];
                      [v57 setLabel:v56];

                      if (v16)
                      {
                        break;
                      }

                      v174 = 0;
                      v61 = [v6 newComputePipelineStateWithDescriptor:v51 options:0 reflection:0 error:&v174];
                      v16 = v174;
                      v62 = *(v153 - 13);
                      *(v153 - 13) = v61;

                      if (v16)
                      {
                        goto LABEL_48;
                      }

                      v150 = v152;
                      v66 = [NSString stringWithFormat:@"MinMaxReduction_uint%d"];
                      v51 = objc_opt_new();
                      v67 = [@"com.apple.gputools.TextureProcssorCore.PipelineState - " stringByAppendingString:v66];
                      [v51 setLabel:v67];

                      v53 = v66;
                      v68 = objc_opt_new();
                      v173 = 0;
                      v69 = [v11 newFunctionWithName:v53 constantValues:v68 error:&v173];
                      v16 = v173;
                      [v51 setComputeFunction:v69];

                      v70 = [@"com.apple.gputools.TextureProcessorCore.function - " stringByAppendingString:v53];
                      v71 = [v51 computeFunction];
                      [v71 setLabel:v70];

                      if (v16)
                      {
                        break;
                      }

                      v172 = 0;
                      v72 = [v6 newComputePipelineStateWithDescriptor:v51 options:0 reflection:0 error:&v172];
                      v16 = v172;
                      v73 = *(v153 - 9);
                      *(v153 - 9) = v72;

                      if (v16)
                      {
                        goto LABEL_48;
                      }

                      v150 = v152;
                      v74 = [NSString stringWithFormat:@"MinMaxReduction_int%d"];
                      v51 = objc_opt_new();
                      v75 = [@"com.apple.gputools.TextureProcssorCore.PipelineState - " stringByAppendingString:v74];
                      [v51 setLabel:v75];

                      v53 = v74;
                      v76 = objc_opt_new();
                      v171 = 0;
                      v77 = [v11 newFunctionWithName:v53 constantValues:v76 error:&v171];
                      v16 = v171;
                      [v51 setComputeFunction:v77];

                      v78 = [@"com.apple.gputools.TextureProcessorCore.function - " stringByAppendingString:v53];
                      v79 = [v51 computeFunction];
                      [v79 setLabel:v78];

                      if (v16)
                      {
                        break;
                      }

                      v170 = 0;
                      v80 = [v6 newComputePipelineStateWithDescriptor:v51 options:0 reflection:0 error:&v170];
                      v16 = v170;
                      v81 = *(v153 - 5);
                      *(v153 - 5) = v80;

                      if (v16)
                      {
                        goto LABEL_48;
                      }

                      v150 = v152;
                      v82 = [NSString stringWithFormat:@"TonemappingRange_float%d"];
                      v51 = objc_opt_new();
                      v83 = [@"com.apple.gputools.TextureProcssorCore.PipelineState - " stringByAppendingString:v82];
                      [v51 setLabel:v83];

                      v53 = v82;
                      v84 = objc_opt_new();
                      v169 = 0;
                      v85 = [v11 newFunctionWithName:v53 constantValues:v84 error:&v169];
                      v16 = v169;
                      [v51 setComputeFunction:v85];

                      v86 = [@"com.apple.gputools.TextureProcessorCore.function - " stringByAppendingString:v53];
                      v87 = [v51 computeFunction];
                      [v87 setLabel:v86];

                      if (v16)
                      {
                        break;
                      }

                      v168 = 0;
                      v88 = [v6 newComputePipelineStateWithDescriptor:v51 options:0 reflection:0 error:&v168];
                      v16 = v168;
                      v89 = *v153;
                      *v153 = v88;

                      if (v16)
                      {
                        goto LABEL_48;
                      }

                      v150 = v152;
                      v90 = [NSString stringWithFormat:@"TonemappingRange_uint%d"];
                      v51 = objc_opt_new();
                      v91 = [@"com.apple.gputools.TextureProcssorCore.PipelineState - " stringByAppendingString:v90];
                      [v51 setLabel:v91];

                      v53 = v90;
                      v92 = objc_opt_new();
                      v167 = 0;
                      v93 = [v11 newFunctionWithName:v53 constantValues:v92 error:&v167];
                      v16 = v167;
                      [v51 setComputeFunction:v93];

                      v94 = [@"com.apple.gputools.TextureProcessorCore.function - " stringByAppendingString:v53];
                      v95 = [v51 computeFunction];
                      [v95 setLabel:v94];

                      if (v16)
                      {
                        break;
                      }

                      v166 = 0;
                      v96 = [v6 newComputePipelineStateWithDescriptor:v51 options:0 reflection:0 error:&v166];
                      v16 = v166;
                      v97 = v153[4];
                      v153[4] = v96;

                      if (v16)
                      {
                        goto LABEL_48;
                      }

                      v150 = v152;
                      v98 = [NSString stringWithFormat:@"TonemappingRange_int%d"];
                      v51 = objc_opt_new();
                      v99 = [@"com.apple.gputools.TextureProcssorCore.PipelineState - " stringByAppendingString:v98];
                      [v51 setLabel:v99];

                      v53 = v98;
                      v100 = objc_opt_new();
                      v165 = 0;
                      v101 = [v11 newFunctionWithName:v53 constantValues:v100 error:&v165];
                      v16 = v165;
                      [v51 setComputeFunction:v101];

                      v102 = [@"com.apple.gputools.TextureProcessorCore.function - " stringByAppendingString:v53];
                      v103 = [v51 computeFunction];
                      [v103 setLabel:v102];

                      if (v16)
                      {
                        break;
                      }

                      v164 = 0;
                      v104 = [v6 newComputePipelineStateWithDescriptor:v51 options:0 reflection:0 error:&v164];
                      v16 = v164;
                      v105 = v153[8];
                      v153[8] = v104;

                      if (v16)
                      {
                        goto LABEL_48;
                      }

                      v150 = v152;
                      v106 = [NSString stringWithFormat:@"Histogram_float%d"];
                      v51 = objc_opt_new();
                      v107 = [@"com.apple.gputools.TextureProcssorCore.PipelineState - " stringByAppendingString:v106];
                      [v51 setLabel:v107];

                      v53 = v106;
                      v108 = objc_opt_new();
                      v163 = 0;
                      v109 = [v11 newFunctionWithName:v53 constantValues:v108 error:&v163];
                      v16 = v163;
                      [v51 setComputeFunction:v109];

                      v110 = [@"com.apple.gputools.TextureProcessorCore.function - " stringByAppendingString:v53];
                      v111 = [v51 computeFunction];
                      [v111 setLabel:v110];

                      if (v16)
                      {
                        break;
                      }

                      v162 = 0;
                      v112 = [v6 newComputePipelineStateWithDescriptor:v51 options:0 reflection:0 error:&v162];
                      v16 = v162;
                      v113 = v153[12];
                      v153[12] = v112;

                      if (v16)
                      {
                        goto LABEL_48;
                      }

                      v150 = v152;
                      v114 = [NSString stringWithFormat:@"Histogram_uint%d"];
                      v51 = objc_opt_new();
                      v115 = [@"com.apple.gputools.TextureProcssorCore.PipelineState - " stringByAppendingString:v114];
                      [v51 setLabel:v115];

                      v53 = v114;
                      v116 = objc_opt_new();
                      v161 = 0;
                      v117 = [v11 newFunctionWithName:v53 constantValues:v116 error:&v161];
                      v16 = v161;
                      [v51 setComputeFunction:v117];

                      v118 = [@"com.apple.gputools.TextureProcessorCore.function - " stringByAppendingString:v53];
                      v119 = [v51 computeFunction];
                      [v119 setLabel:v118];

                      if (v16)
                      {
                        break;
                      }

                      v160 = 0;
                      v120 = [v6 newComputePipelineStateWithDescriptor:v51 options:0 reflection:0 error:&v160];
                      v16 = v160;
                      v121 = v153[16];
                      v153[16] = v120;

                      if (v16)
                      {
                        goto LABEL_48;
                      }

                      v150 = v152;
                      v122 = [NSString stringWithFormat:@"Histogram_int%d"];
                      v51 = objc_opt_new();
                      v123 = [@"com.apple.gputools.TextureProcssorCore.PipelineState - " stringByAppendingString:v122];
                      [v51 setLabel:v123];

                      v53 = v122;
                      v124 = objc_opt_new();
                      v159 = 0;
                      v125 = [v11 newFunctionWithName:v53 constantValues:v124 error:&v159];
                      v16 = v159;
                      [v51 setComputeFunction:v125];

                      v126 = [@"com.apple.gputools.TextureProcessorCore.function - " stringByAppendingString:v53];
                      v127 = [v51 computeFunction];
                      [v127 setLabel:v126];

                      if (v16)
                      {
                        break;
                      }

                      v158 = 0;
                      v128 = [v6 newComputePipelineStateWithDescriptor:v51 options:0 reflection:0 error:&v158];
                      v16 = v158;
                      v129 = v153[20];
                      v153[20] = v128;

                      if (v16)
                      {
LABEL_48:
                        if (a3)
                        {
                          *a3 = sub_100007670(@"com.apple.gputools.TextureProcessorCore", 256, @"Error during the execution of the Metal methods", v16, 0, v63, v64, v65, v150);
                        }

LABEL_50:

                        goto LABEL_15;
                      }

                      ++v153;
                      v48 = v151 + 1;
                      v49 = &GTTransportServiceDaemonConnectionNew_ptr;
                      if (v151 == -1)
                      {
                        v130 = objc_opt_new();
                        v131 = [@"com.apple.gputools.TextureProcssorCore.PipelineState - " stringByAppendingString:@"MinMaxReduction_alpha"];
                        [v130 setLabel:v131];

                        v132 = objc_opt_new();
                        v157 = 0;
                        v133 = [v11 newFunctionWithName:@"MinMaxReduction_alpha" constantValues:v132 error:&v157];
                        v16 = v157;
                        [v130 setComputeFunction:v133];

                        v134 = [@"com.apple.gputools.TextureProcessorCore.function - " stringByAppendingString:@"MinMaxReduction_alpha"];
                        v135 = [v130 computeFunction];
                        [v135 setLabel:v134];

                        if (v16)
                        {
                          goto LABEL_42;
                        }

                        v156 = 0;
                        v139 = [v6 newComputePipelineStateWithDescriptor:v130 options:0 reflection:0 error:&v156];
                        v16 = v156;
                        v140 = qword_10001CD40;
                        qword_10001CD40 = v139;

                        if (v16)
                        {
                          goto LABEL_42;
                        }

                        v130 = objc_opt_new();
                        v141 = [@"com.apple.gputools.TextureProcssorCore.PipelineState - " stringByAppendingString:@"Histogram_alpha"];
                        [v130 setLabel:v141];

                        v142 = objc_opt_new();
                        v155 = 0;
                        v143 = [v11 newFunctionWithName:@"Histogram_alpha" constantValues:v142 error:&v155];
                        v16 = v155;
                        [v130 setComputeFunction:v143];

                        v144 = [@"com.apple.gputools.TextureProcessorCore.function - " stringByAppendingString:@"Histogram_alpha"];
                        v145 = [v130 computeFunction];
                        [v145 setLabel:v144];

                        if (v16 || (v154 = 0, v146 = [v6 newComputePipelineStateWithDescriptor:v130 options:0 reflection:0 error:&v154], v16 = v154, v147 = qword_10001CE08, qword_10001CE08 = v146, v147, v16))
                        {
LABEL_42:
                          if (a3)
                          {
                            *a3 = sub_100007670(@"com.apple.gputools.TextureProcessorCore", 256, @"Error during the execution of the Metal methods", v16, 0, v136, v137, v138, v152);
                          }
                        }

                        else
                        {

                          v148 = [[NSMutableDictionary alloc] initWithCapacity:8];
                          v16 = qword_10001CE10;
                          qword_10001CE10 = v148;
                        }

LABEL_15:

LABEL_16:
                        goto LABEL_17;
                      }
                    }

                    if (a3)
                    {
                      *a3 = sub_100007670(@"com.apple.gputools.TextureProcessorCore", 256, @"Error during the execution of the Metal methods", v16, 0, v58, v59, v60, v150);
                    }

                    goto LABEL_50;
                  }
                }
              }
            }
          }
        }
      }
    }

    if (a3)
    {
      *a3 = sub_100007670(@"com.apple.gputools.TextureProcessorCore", 256, @"Error during the execution of the Metal methods", v16, 0, v13, v14, v15, v149);
    }

    goto LABEL_15;
  }

  if (a3)
  {
    v11 = [v7 path];
    *a3 = sub_100007670(@"com.apple.gputools.TextureProcessorCore", 251, @"The TextureProcessorMetal library was not found in the bundle", 0, @"The library could not be found at the expected path '%@'. Make sure that your project depends on 'TextureProcessorMetal' and that you have it listed in your 'Copy Bundle Resources' build phase", v17, v18, v19, v11);
    goto LABEL_16;
  }

LABEL_17:
}

uint64_t sub_100008AF4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100008B0C(void *a1)
{
  v2 = *(*(a1[6] + 8) + 40);
  if (!v2)
  {
    v3 = a1[4];
    if (v3)
    {
      v4 = [v3 URLForResource:@"TextureProcessorMetal" withExtension:@"metallib"];
      v5 = *(a1[6] + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;

      v2 = *(*(a1[6] + 8) + 40);
    }

    else
    {
      v2 = 0;
    }
  }

  v7 = a1[5];
  v10 = 0;
  sub_10000782C(v7, v2, &v10);
  v8 = v10;
  v9 = v10;
  if (v9)
  {
    objc_storeStrong(&qword_10001CC90, v8);
  }
}

id *sub_100008BC0(void *a1)
{
  v2 = MTLCreateSystemDefaultDevice();
  v3 = +[NSBundle mainBundle];
  v4 = v2;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = sub_100008AF4;
  v26[4] = sub_100008B04;
  v27 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008B0C;
  block[3] = &unk_100014DC0;
  v25 = v26;
  v5 = v3;
  v23 = v5;
  v6 = v4;
  v24 = v6;
  if (qword_10001CC98 != -1)
  {
    dispatch_once(&qword_10001CC98, block);
  }

  if (!qword_10001CC90)
  {
    v10 = 0;
    goto LABEL_20;
  }

  v7 = qword_10001CC90;
  v8 = [v7 domain];

  if (v8 == @"com.apple.gputools.TextureProcessorCore")
  {
    v11 = [v7 code];
    if (v11 > 254)
    {
      if (v11 == 255)
      {
        v15 = [v7 userInfo];
        v16 = 604;
        goto LABEL_18;
      }

      if (v11 == 256)
      {
        v15 = [v7 userInfo];
        v16 = 606;
        goto LABEL_18;
      }
    }

    else
    {
      if (v11 == 251)
      {
        v15 = [v7 userInfo];
        v16 = 600;
        goto LABEL_18;
      }

      if (v11 == 254)
      {
        v15 = [v7 userInfo];
        v16 = 603;
LABEL_18:
        v10 = [NSError errorWithDomain:@"com.apple.gputools.TextureProcessor" code:v16 userInfo:v15];

        goto LABEL_19;
      }
    }

    v9 = sub_100007670(@"com.apple.gputools.TextureProcessor", 607, @"Error in the Core layer of TextureProcessor", v7, 0, v12, v13, v14, v21);
    goto LABEL_6;
  }

  v9 = v7;
LABEL_6:
  v10 = v9;
LABEL_19:

  v17 = v10;
LABEL_20:

  _Block_object_dispose(v26, 8);
  v18 = v10;
  if (v18)
  {
    if (a1)
    {
      v18 = v18;
      v19 = 0;
      *a1 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = &qword_10001CCA0;
  }

  return v19;
}

uint64_t sub_100008EB8(__int16 a1)
{
  __key = a1;
  v1 = bsearch(&__key, &unk_100019938, 0x129uLL, 0x2CuLL, sub_10000781C);
  if (!v1)
  {
    return 1;
  }

  if (v1[6] == 6)
  {
    return 7;
  }

  if (v1[5] - 5 < 2)
  {
    return 2;
  }

  if (v1[4] - 1 > 4)
  {
    return 5;
  }

  return dword_10000CDA8[(v1[4] - 1)];
}

void sub_100008F60(void *a1, void *a2, uint64_t a3, int a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a5;
  v14 = a6;
  if (a4 > 3)
  {
    switch(a4)
    {
      case 4:
        v27 = [v11 device];
        v18 = [v27 newBufferWithBytes:&v31 length:16 options:0];

        v19 = [v11 blitCommandEncoder];
        [v19 setLabel:@"com.apple.gputools.TextureProcessor.UpdateTonemappingDataWithStrategy - blit command encoder"];
        [v19 waitForFence:v13];
        [v19 copyFromBuffer:v18 sourceOffset:0 toBuffer:v12 destinationOffset:4 size:16];
        v20 = v19;
        v21 = v12;
        v22 = 52;
        v23 = v12;
        v24 = 20;
        v25 = 16;
        break;
      case 5:
        v18 = [v11 blitCommandEncoder];
        [v18 setLabel:@"com.apple.gputools.TextureProcessor.UpdateTonemappingDataWithStrategy - blit command encoder"];
        [v18 waitForFence:v13];
        [v18 copyFromBuffer:v12 sourceOffset:36 toBuffer:v12 destinationOffset:4 size:32];
        [v18 updateFence:v14];
        [v18 endEncoding];
        goto LABEL_16;
      case 6:
        LOWORD(v31) = a3;
        v16 = bsearch(&v31, &unk_100019938, 0x129uLL, 0x2CuLL, sub_10000781C);
        v17 = [v11 device];
        v18 = [v17 newBufferWithBytes:v16 + 12 length:32 options:0];

        v19 = [v11 blitCommandEncoder];
        [v19 setLabel:@"com.apple.gputools.TextureProcessor.UpdateTonemappingDataWithStrategy - blit command encoder"];
        [v19 waitForFence:v13];
        v20 = v19;
        v21 = v18;
        v22 = 0;
        v23 = v12;
        v24 = 4;
        v25 = 32;
        break;
      default:
        goto LABEL_17;
    }

    [v20 copyFromBuffer:v21 sourceOffset:v22 toBuffer:v23 destinationOffset:v24 size:v25];
    [v19 updateFence:v14];
    [v19 endEncoding];

LABEL_16:
    goto LABEL_17;
  }

  if (a4)
  {
    if (a4 == 2)
    {
      v15 = &xmmword_10000CD68;
      goto LABEL_14;
    }

    if (a4 == 3)
    {
      v15 = &xmmword_10000CD88;
LABEL_14:
      v28 = [v11 device];
      v29 = [v28 newBufferWithBytes:&v31 length:32 options:0];

      v30 = [v11 blitCommandEncoder];
      [v30 setLabel:@"com.apple.gputools.TextureProcessor.UpdateTonemappingDataWithStrategy - blit command encoder"];
      [v30 waitForFence:v13];
      [v30 copyFromBuffer:v29 sourceOffset:0 toBuffer:v12 destinationOffset:4 size:32];
      [v30 updateFence:v14];
      [v30 endEncoding];
    }
  }

  else
  {
    v26 = sub_100008EB8(a3);
    sub_100008F60(v11, v12, a3, v26, v13, v14);
  }

LABEL_17:
}

double sub_1000092A8(uint64_t a1, __int16 a2, int a3)
{
  switch(a3)
  {
    case 6:
      __key = a2;
      v10 = bsearch(&__key, &unk_100019938, 0x129uLL, 0x2CuLL, sub_10000781C);
      *a1 = 1;
      *(a1 + 4) = *(v10 + 12);
      _Q0 = *(v10 + 28);
      goto LABEL_8;
    case 3:
      *a1 = 1;
      __asm { FMOV            V0.4S, #-1.0 }

      *(a1 + 4) = _Q0;
      goto LABEL_6;
    case 2:
      *a1 = 1;
      *(a1 + 12) = 0;
      *(a1 + 4) = 0;
LABEL_6:
      __asm { FMOV            V0.4S, #1.0 }

LABEL_8:
      *(a1 + 20) = _Q0;
      result = 0.0;
      *(a1 + 36) = 0u;
      *(a1 + 52) = 0u;
      return result;
  }

  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

id sub_100009378(uint64_t a1)
{
  if (*(a1 + 8) == 2 && *(a1 + 20) == 1 && *(a1 + 22) == 1)
  {
    v19 = 0;
    v2 = sub_100008BC0(&v19);
    v3 = v19;
    v4 = *v2;
    v5 = objc_opt_new();
    [v5 setTextureType:*(a1 + 8)];
    [v5 setPixelFormat:*(a1 + 10)];
    [v5 setWidth:*(a1 + 12)];
    [v5 setHeight:*(a1 + 16)];
    [v5 setDepth:*(a1 + 20)];
    [v5 setSampleCount:*(a1 + 22)];
    [v5 setUsage:1];
    if ([v5 pixelFormat] - 261 > 1)
    {
      v11 = [v4 newTextureWithDescriptor:v5];
    }

    else
    {
      v6 = [v5 copy];
      v7 = [v5 pixelFormat];
      v8 = 255;
      if (v7 != 262)
      {
        v8 = v7;
      }

      if (v7 == 261)
      {
        v9 = 260;
      }

      else
      {
        v9 = v8;
      }

      [v6 setPixelFormat:v9];
      [v6 setUsage:{objc_msgSend(v6, "usage") | 0x10}];
      v10 = [v4 newTextureWithDescriptor:v6];
      [v10 setLabel:@"com.apple.gputools.TextureProcessor.loadTextureFromData - parent texture (in texture requires view)"];
      v11 = [v10 newTextureViewWithPixelFormat:objc_msgSend(v5, "pixelFormat")];
    }

    [v11 setLabel:@"com.apple.gputools.TextureProcessor.loadTextureFromData - in texture"];
    v13 = *(a1 + 20);
    memset(v16, 0, sizeof(v16));
    v14 = *(a1 + 12);
    *&v15 = v14;
    *(&v15 + 1) = HIDWORD(v14);
    v17 = v15;
    v18 = v13;
    [v11 replaceRegion:v16 mipmapLevel:0 slice:0 withBytes:objc_msgSend(*a1 bytesPerRow:"bytes") bytesPerImage:{*(a1 + 24), *(a1 + 28)}];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id sub_100009590(void *a1, unint64_t a2, void *a3)
{
  v5 = a1;
  v6 = objc_retainBlock(a3);
  v7 = v5;
  v151 = 0;
  v8 = sub_100008BC0(&v151);
  v9 = v151;
  v10 = *v8;
  v11 = [v7 device];

  if (v11 == v10)
  {
    __key.i16[0] = [v7 pixelFormat];
    if (bsearch(&__key, &unk_100019938, 0x129uLL, 0x2CuLL, sub_10000781C))
    {
      if ([v7 textureType] == 2 && objc_msgSend(v7, "depth") == 1 && objc_msgSend(v7, "sampleCount") == 1)
      {
        v14 = HIDWORD(a2);
        v15 = [v10 newCommandQueue];
        [v15 setLabel:@"com.apple.gputools.TextureProcessor.process - command queue"];
        v144 = [v15 commandBuffer];
        [v144 setLabel:@"com.apple.gputools.TextureProcessor.process - command buffer"];

        if (!HIDWORD(a2))
        {
          LODWORD(v14) = sub_100008EB8([v7 pixelFormat]);
        }

        v146 = v14;
        if (v14 > 7 || ((1 << v14) & 0xB0) == 0)
        {
          v158 = 0;
          v156 = 0u;
          v157 = 0u;
          __key = 0u;
          v155 = 0u;
          v148 = [v10 newBufferWithBytes:&__key length:68 options:{0, sub_1000092A8(&__key, objc_msgSend(v7, "pixelFormat"), v14)}];
          [v148 setLabel:@"com.apple.gputools.TextureProcessor.process - tonemapping buffer"];
          v139 = 0;
          goto LABEL_44;
        }

        v141 = [v10 newBufferWithLength:12 * sub_1000077AC(objc_msgSend(v7 options:{"pixelFormat")), 32}];
        [v141 setLabel:@"com.apple.gputools.TextureProcessor.process - intermediate buffer"];
        v16 = [v10 newBufferWithLength:68 options:32];
        [v16 setLabel:@"com.apple.gputools.TextureProcessor.process - tonemapping buffer"];
        v17 = [v10 newFence];
        [v17 setLabel:@"com.apple.gputools.TextureProcessor.process - post tonemapping fence"];
        v133 = v144;
        v18 = v7;
        v148 = v16;
        v19 = v141;
        v20 = v17;
        v21 = v18;
        v138 = v20;
        v22 = 3 * sub_1000077AC([v18 pixelFormat]);
        v142 = v19;
        v136 = v21;
        if ([v19 length] < 4 * v22)
        {
          v129 = sub_100007670(@"com.apple.gputools.TextureProcessorCore", 253, @"The buffer+offset has not enough length to fit all required for it", 0, @"Intermediate buffer is not large enough to fit all data needed.", v23, v24, v25, v118);
          v26 = v129;
          v27 = v148;
          v28 = v142;
LABEL_41:

          v131 = v129;
          v52 = v138;
          v139 = v52;
          if (v146 != 7)
          {
            v53 = v27;
            v54 = [v10 newFence];
            [v54 setLabel:@"com.apple.gputools.TextureProcessor.process - post update tonemapping strategy fence"];
            v139 = v54;
            sub_100008F60(v133, v53, [v136 pixelFormat], v146, v52, v54);
          }

          v9 = v131;
LABEL_44:
          v55 = v7;
          __key.i16[0] = [v55 pixelFormat];
          v56 = *(bsearch(&__key, &unk_100019938, 0x129uLL, 0x2CuLL, sub_10000781C) + 5);
          v57 = [v55 pixelFormat];

          v58 = sub_1000077AC(v57);
          if (v58 == 2)
          {
            if ((a2 & 1) == 0)
            {
              v59 = v56 == 2;
              v60 = 30;
              goto LABEL_50;
            }
          }

          else if (v58 == 1)
          {
            v59 = v56 == 2;
            v60 = 10;
LABEL_50:
            if (v59)
            {
              v61 = v60 + 1;
            }

            else
            {
              v61 = v60;
            }

            v62 = +[MTLTextureDescriptor texture2DDescriptorWithPixelFormat:width:height:mipmapped:](MTLTextureDescriptor, "texture2DDescriptorWithPixelFormat:width:height:mipmapped:", v61, [v55 width], objc_msgSend(v55, "height"), 0);
            [v62 setUsage:4];
            if (v6)
            {
              v6[2](v6, v62);
            }

            v63 = [v10 newTextureWithDescriptor:v62];
            [v63 setLabel:@"com.apple.gputools.TextureProcessor.process - out texture"];

            v64 = v148;
            if (v146 == 1)
            {
              v64 = 0;
            }

            v65 = v64;
            v145 = v144;
            v66 = v55;
            v67 = v63;
            v68 = v65;
            v147 = v139;
            v143 = v68;
            if (([v66 usage] & 1) == 0 && (objc_msgSend(v66, "isFramebufferOnly") & 1) == 0)
            {
              v79 = sub_100007670(@"com.apple.gputools.TextureProcessorCore", 255, @"The passed texture has incorrect texture usage parameter set", 0, @"Source texture must have 'ShaderRead' texture usage.", v69, v70, v71, v118);
              v86 = v79;
              v75 = v145;
              goto LABEL_97;
            }

            v75 = v145;
            if (([v67 usage] & 4) == 0)
            {
              v76 = @"The passed texture has incorrect texture usage parameter set";
              v77 = @"Destination texture must have 'RenderTarget' texture usage.";
              v78 = 255;
LABEL_64:
              v79 = sub_100007670(@"com.apple.gputools.TextureProcessorCore", v78, v76, 0, v77, v72, v73, v74, v118);
              v80 = v79;
LABEL_97:

              v105 = v79;
              [v75 commit];
              [v75 waitUntilCompleted];
              v106 = v67;
              *v149 = v106;
              memset(v150, 0, sizeof(v150));
              v107 = [v66 pixelFormat];
              v108 = sub_1000077AC(v107);
              v109 = 0;
              v110 = &v150[24];
              v111 = v107 - 41;
              v112 = v107 - 586;
              while (v111 <= 0x35)
              {
                if (((1 << v111) & 0x26000000000000) != 0)
                {
                  goto LABEL_105;
                }

                if (((1 << v111) & 5) != 0)
                {
                  if (v109 == 3)
                  {
                    LODWORD(v113) = 2;
                  }

                  else
                  {
                    LODWORD(v113) = 32;
                  }

                  goto LABEL_114;
                }

                if (((1 << v111) & 0xA) == 0)
                {
                  break;
                }

                LODWORD(v113) = 16;
LABEL_114:
                *v110 = v113;
                if (v109 * 8)
                {
                  *(v110 - 4) = *(v110 - 1) + *(v110 - 5);
                }

                ++v109;
                ++v110;
                if (v108 == v109)
                {

                  v9 = v105;
                  goto LABEL_3;
                }
              }

              if (v112 > 0x2B || ((1 << v112) & 0xC0000000003) == 0)
              {
                if (v107 == 40)
                {
                  v113 = qword_10000CCE8[v109];
                }

                else
                {
                  LODWORD(v113) = 256;
                }

                goto LABEL_114;
              }

LABEL_105:
              if (v109 == 3)
              {
                LODWORD(v113) = 4;
              }

              else
              {
                LODWORD(v113) = 256;
              }

              goto LABEL_114;
            }

            if (v68 && [v68 length] <= 0x43)
            {
              v76 = @"The buffer+offset has not enough length to fit all required for it";
              v77 = @"Processing output buffer is not large enough to fit all data needed.";
              v78 = 253;
              goto LABEL_64;
            }

            v134 = [v67 pixelFormat];
            v81 = v66;
            v82 = [v81 pixelFormat];
            v137 = v81;
            v83 = [v81 device];
            __key = 0u;
            v155 = 0u;
            v156 = 0u;
            *&v157 = 0;
            MTLPixelFormatGetInfoForDevice();
            if (__key.i8[8])
            {
              if (v82 <= 500)
              {
                if (v82 == 141 || v82 == 143)
                {
                  __key.i32[2] &= ~0x800u;
                }

                goto LABEL_78;
              }

              v84 = v82 + 11;
              if ((v82 - 501) <= 0x3E)
              {
                if (((1 << v84) & 0x2000000000100001) != 0)
                {
                  v85 = 2;
                  goto LABEL_74;
                }

                if (((1 << v84) & 0x4000000000800008) != 0)
                {
                  goto LABEL_71;
                }
              }

              if (v82 == 590)
              {
LABEL_71:
                v85 = 4;
LABEL_74:
                *(&v155 + 1) = v85;
              }
            }

LABEL_78:
            v132 = v66;
            v140 = v67;

            v87 = [NSNumber numberWithUnsignedInteger:&v134[0x10000 * v82]];
            v88 = [v8[46] objectForKeyedSubscript:v87];
            if (!v88)
            {
              v128 = v87;
              v89 = objc_opt_new();
              [v89 setVertexFunction:v8[1]];
              [v89 colorAttachments];
              v90 = v125 = v82;
              v91 = [v90 objectAtIndexedSubscript:0];
              [v91 setPixelFormat:v134];

              if (v125 == 1)
              {
                v92 = 24;
              }

              else
              {
                v93 = 56;
                v94 = 32;
                v95 = 40;
                if ((__key.i32[2] & 0x40000) == 0)
                {
                  v95 = 16;
                }

                if ((__key.i32[2] & 0x80000) == 0)
                {
                  v94 = v95;
                }

                if ((__key.i8[8] & 0x40) == 0)
                {
                  v93 = v94;
                }

                if ((__key.i8[8] & 0x20) != 0)
                {
                  v92 = 48;
                }

                else
                {
                  v92 = v93;
                }
              }

              [v89 setFragmentFunction:*(v8 + v92)];
              Name = MTLPixelFormatGetName();
              v97 = [NSString stringWithFormat:@"com.apple.gputools.TextureProcessorCore.RenderPipelineDescriptor - %s -> %s", Name, MTLPixelFormatGetName()];
              [v89 setLabel:v97];

              v98 = [v137 device];
              v152.i64[0] = 0;
              v99 = v89;
              v88 = [v98 newRenderPipelineStateWithDescriptor:v89 error:&v152];
              v100 = v152.i64[0];

              v87 = v128;
              [v8[46] setObject:v88 forKeyedSubscript:v128];
            }

            v101 = objc_opt_new();
            v102 = [v101 colorAttachments];
            v103 = [v102 objectAtIndexedSubscript:0];
            [v103 setTexture:v140];

            v75 = v145;
            v104 = [v145 renderCommandEncoderWithDescriptor:v101];
            [v104 setLabel:@"com.apple.gputools.TextureProcessorCore.RenderTexture - render command encoder"];
            v135 = v88;
            [v104 setRenderPipelineState:v88];
            [v104 setFragmentTexture:v137 atIndex:0];
            if (v143)
            {
              [v104 setFragmentBuffer:v143 offset:0 atIndex:0];
            }

            else
            {
              v158 = 0;
              v156 = 0u;
              v157 = 0u;
              __key = 0u;
              v155 = 0u;
              [v104 setFragmentBytes:&__key length:68 atIndex:0];
            }

            v66 = v132;
            v67 = v140;
            if (v147)
            {
              [v104 waitForFence:v147 beforeStages:2];
            }

            [v104 drawPrimitives:3 vertexStart:0 vertexCount:3];
            [v104 endEncoding];

            v79 = v9;
            goto LABEL_97;
          }

          v59 = v56 == 2;
          v60 = 70;
          goto LABEL_50;
        }

        if ([v148 length] <= 0x43)
        {
          v129 = sub_100007670(@"com.apple.gputools.TextureProcessorCore", 253, @"The buffer+offset has not enough length to fit all required for it", 0, @"Tonemapping buffer is not large enough to fit all data needed.", v29, v30, v31, v118);
          v32 = v129;
LABEL_40:
          v28 = v142;
          v27 = v148;
          goto LABEL_41;
        }

        __key.i16[0] = [v21 pixelFormat];
        v33 = *(bsearch(&__key, &unk_100019938, 0x129uLL, 0x2CuLL, sub_10000781C) + 4);
        v124 = sub_1000077AC([v21 pixelFormat]);
        v34 = [v133 computeCommandEncoder];
        [v34 setLabel:@"com.apple.gputools.TextureProcessorCore.tonemapping - Compute command encoder"];
        v123 = v34;
        v122 = v33;
        if ([v21 pixelFormat] == 1)
        {
          v35 = v8 + 20;
          v36 = v124;
LABEL_28:
          v130 = *v35;
          v126 = [v130 threadExecutionWidth];
          v119 = [v130 maxTotalThreadsPerThreadgroup];
          v38 = [v130 device];

          v39 = (12 * v36 + 19) & 0xF0;
          v40 = [v38 maxThreadgroupMemoryLength] / v39;

          v41 = v119;
          if (v119 >= v40)
          {
            v41 = v40;
          }

          v42 = v41 / v126;
          v121 = v126 * v39 * (v41 / v126);
          v43 = v136;
          v120 = [v43 width];
          v44 = [v43 height];

          v45 = v42;
          v46 = (v120 + v126 - 1) / v126;
          v47 = v44 + v42 - 1;
          if (v46 == 1)
          {
            v48 = v120;
          }

          else
          {
            v48 = v126;
          }

          v49 = v47 / v45;
          if (v47 / v45 == 1)
          {
            v45 = v44;
          }

          v127 = v45;
          v159[0] = v46;
          v159[1] = v49;
          v34 = v123;
          [v123 pushDebugGroup:@"MinMaxReduction"];
          [v123 setComputePipelineState:v130];
          [v123 setTexture:v43 atIndex:0];
          [v123 setBuffer:v142 offset:0 atIndex:0];
          [v123 setBytes:v159 length:8 atIndex:1];
          [v123 setThreadgroupMemoryLength:v121 atIndex:0];
          __key = vdupq_n_s64(1uLL);
          *&v155 = 1;
          v152.i64[0] = v48;
          v152.i64[1] = v127;
          v153 = 1;
          [v123 dispatchThreadgroups:&__key threadsPerThreadgroup:&v152];
          [v123 popDebugGroup];

          v50 = v9;
          if ((v122 - 1) <= 4)
          {
            v51 = *(&v8[v124 - 1] + qword_10000CD40[(v122 - 1)]);
            [v123 pushDebugGroup:@"TonemappingRange"];
            [v123 setComputePipelineState:v51];
            [v123 setBuffer:v148 offset:0 atIndex:1];
            [v123 setThreadgroupMemoryLength:0 atIndex:0];
            __key = vdupq_n_s64(1uLL);
            *&v155 = 1;
            v152 = __key;
            v153 = 1;
            [v123 dispatchThreadgroups:&__key threadsPerThreadgroup:&v152];
            if (v138)
            {
              [v123 updateFence:?];
            }

            [v123 popDebugGroup];

            [v123 endEncoding];
            v50 = v9;
          }

          goto LABEL_39;
        }

        if (v33 > 3)
        {
          v37 = v124;
          if (v33 == 4)
          {
            v35 = &v8[v124 + 15];
            goto LABEL_27;
          }

          if (v33 != 5)
          {
            goto LABEL_118;
          }
        }

        else
        {
          v37 = v124;
          if ((v33 - 1) >= 2)
          {
            if (v33 == 3)
            {
              v35 = &v8[v124 + 11];
LABEL_27:
              v36 = v37;
              goto LABEL_28;
            }

LABEL_118:
            [v21 pixelFormat];
            v114 = MTLPixelFormatGetName();
            v50 = sub_100007670(@"com.apple.gputools.TextureProcessorCore", 254, @"Unsupported texture pixel format", 0, @"Texture pixel type '%s' not supported yet by the library.", v115, v116, v117, v114);
LABEL_39:
            v129 = v50;

            goto LABEL_40;
          }
        }

        v35 = &v8[v37 + 7];
        goto LABEL_27;
      }
    }
  }

  memset(v150, 0, sizeof(v150));
  *v149 = 0u;
LABEL_3:

  v12 = v149[0];
  return v149[0];
}