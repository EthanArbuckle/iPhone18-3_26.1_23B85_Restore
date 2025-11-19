uint64_t sub_8F8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, int *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = DerivedStorage;
  v15 = *a2;
  v16 = 2003332927;
  if (*a2 <= 1819173228)
  {
    if (v15 > 1668641651)
    {
      if (v15 <= 1735354733)
      {
        if (v15 == 1668641652)
        {
          *a6 = 12;
          if (a5 <= 0xB)
          {
            v16 = 561211770;
            sub_C378();
          }

          else
          {
            v16 = 0;
            a7[2] = 0;
            *a7 = *"tppawwar";
          }

          return v16;
        }

        if (v15 == 1684236338)
        {
          if (a5 <= 7)
          {
            v16 = 561211770;
            sub_C3A0();
            return v16;
          }

          v16 = 0;
          *a7 = 0x200000001;
          v19 = 8;
          goto LABEL_151;
        }

        v17 = 1684434036;
      }

      else
      {
        if (v15 > 1818850925)
        {
          if (v15 == 1818850926)
          {
            *a6 = 4;
            if (a5 < 4)
            {
              return 561211770;
            }

            v16 = 0;
            v20 = *(DerivedStorage + 84) == 0;
            goto LABEL_107;
          }

          if (v15 != 1819107691)
          {
            return v16;
          }

          *a6 = 8;
          if (a5 < 8)
          {
            return 561211770;
          }

          v31 = @"Apple, Inc.";
          goto LABEL_74;
        }

        if (v15 == 1735354734)
        {
          *a6 = 4;
          if (a5 < 4)
          {
            return 561211770;
          }

          v16 = 0;
          v20 = *(DerivedStorage + 80) > 0;
          goto LABEL_107;
        }

        v17 = 1751737454;
      }

      if (v15 != v17)
      {
        return v16;
      }

      goto LABEL_59;
    }

    if (v15 <= 1668047218)
    {
      switch(v15)
      {
        case 1634429294:
          *a6 = 4;
          if (a5 < 4)
          {
            return 0;
          }

          v16 = 0;
          v20 = *DerivedStorage;
          break;
        case 1634758772:
          *a6 = 4;
          if (a5 < 4)
          {
            return 561211770;
          }

          v16 = 0;
          v20 = *(DerivedStorage + 44);
          break;
        case 1650682995:
          *a6 = 4;
          if (a5 < 4)
          {
            return 561211770;
          }

          v16 = 0;
          v20 = 1634689642;
          break;
        default:
          return v16;
      }

LABEL_107:
      *a7 = v20;
      return v16;
    }

    if (v15 == 1668047219)
    {
      *a6 = 4;
      if (a5 < 4)
      {
        return 561211770;
      }

      v16 = 0;
      v20 = 1633969526;
      goto LABEL_107;
    }

    if (v15 == 1668049764)
    {
      goto LABEL_59;
    }

    if (v15 != 1668575852)
    {
      return v16;
    }

    v21 = a5 >> 2;
    v22 = a2[1];
    switch(v22)
    {
      case 1869968496:
        goto LABEL_35;
      case 1768845428:
        v21 = 0;
        break;
      case 1735159650:
LABEL_35:
        v24 = *(DerivedStorage + 64);
        v23 = *(DerivedStorage + 72);
        v25 = v24 != 0;
        if (v23)
        {
          ++v25;
        }

        if (v21 >= v25)
        {
          v21 = v25;
        }

        if (!v21)
        {
          break;
        }

        if (!v24)
        {
          v26 = 0;
LABEL_148:
          if (v23)
          {
            a7[v26] = sub_1DF8(v23);
          }

          break;
        }

        *a7 = sub_1DF8(*(v14 + 64));
        if (v21 != 1)
        {
          v23 = *(v14 + 72);
          v26 = 1;
          goto LABEL_148;
        }

        break;
    }

    v16 = 0;
    v19 = 4 * v21;
    goto LABEL_151;
  }

  if (v15 > 1935763059)
  {
    if (v15 > 1937007733)
    {
      if (v15 > 1953653101)
      {
        if (v15 == 1953653102)
        {
          *a6 = 4;
          if (a5 < 4)
          {
            return 561211770;
          }

          v16 = 0;
          v20 = *(DerivedStorage + 40);
          goto LABEL_107;
        }

        v27 = 1969841184;
LABEL_71:
        if (v15 != v27)
        {
          return v16;
        }

        *a6 = 8;
        if (a5 < 8)
        {
          return 561211770;
        }

        v31 = *(DerivedStorage + 24);
        if (!v31)
        {
LABEL_75:
          v16 = 0;
          *a7 = v31;
          return v16;
        }

LABEL_74:
        v31 = CFRetain(v31);
        goto LABEL_75;
      }

      if (v15 == 1937007734)
      {
        *a6 = 4;
        if (a5 < 4)
        {
          return 561211770;
        }

        v16 = 0;
        v20 = 1;
        goto LABEL_107;
      }

      if (v15 != 1937009955)
      {
        return v16;
      }

      v18 = a2[1];
      if (v18 != 1869968496)
      {
        if (v18 == 1768845428)
        {
          goto LABEL_124;
        }

        if (v18 != 1735159650)
        {
          v19 = a5 & 0xFFFFFFFC;
          goto LABEL_141;
        }
      }

      if (a5 >= 4)
      {
        *a7 = sub_1DF8(*(DerivedStorage + 56));
        v19 = 4;
LABEL_141:
        v16 = 0;
        goto LABEL_151;
      }

LABEL_124:
      v19 = 0;
      goto LABEL_141;
    }

    if (v15 != 1935763060 && v15 != 1936092276)
    {
      if (v15 == 1936879204)
      {
        v28 = *(*(DerivedStorage + 48) + 44);
        v29 = 20 * v28 + 12;
        if (v29 > a5)
        {
          v16 = 561211770;
          sub_C38C();
        }

        else
        {
          bzero(a7, (20 * v28 + 12));
          v16 = 0;
          if (v28 == 1)
          {
            v30 = 6553601;
          }

          else
          {
            v30 = 6619138;
          }

          *a7 = v30;
          *a6 = v29;
        }
      }

      return v16;
    }

LABEL_59:
    *a6 = 4;
    if (a5 >= 4)
    {
      v16 = 0;
      *a7 = 0;
      return v16;
    }

    return 561211770;
  }

  if (v15 > 1853059618)
  {
    if (v15 <= 1870098019)
    {
      if (v15 == 1853059619)
      {
        v16 = 0;
        *a6 = 0;
        return v16;
      }

      if (v15 != 1853059700)
      {
        return v16;
      }

      *a6 = 8;
      if (a5 >= 8)
      {
        v16 = 0;
        *a7 = *(*(DerivedStorage + 48) + 16);
        return v16;
      }

      return 561211770;
    }

    if (v15 != 1870098020)
    {
      if (v15 != 1919512167)
      {
        return v16;
      }

      *a6 = 4;
      if (a5 < 4)
      {
        return 561211770;
      }

      v16 = 0;
      v20 = 11025;
      goto LABEL_107;
    }

    LODWORD(v32) = a5 >> 2;
    v33 = a2[1];
    if (v33 == 1869968496)
    {
      if (*(DerivedStorage + 64))
      {
        v44 = 2;
      }

      else
      {
        v44 = 1;
      }

      if (*(DerivedStorage + 72))
      {
        ++v44;
      }

      if (v32 >= v44)
      {
        v35 = v44;
      }

      else
      {
        v35 = a5 >> 2;
      }

      if (a5 >= 4)
      {
        *a7 = sub_1DF8(*(DerivedStorage + 56));
        if (v35 >= 2)
        {
          v45 = *(v14 + 64);
          if (v45)
          {
            a7[1] = sub_1DF8(v45);
            v46 = 2;
            LODWORD(v32) = 2;
            if (v35 == 2)
            {
              goto LABEL_139;
            }
          }

          else
          {
            v46 = 1;
          }

          v47 = *(v14 + 72);
          if (v47)
          {
            a7[v46] = sub_1DF8(v47);
          }

          goto LABEL_159;
        }

        goto LABEL_146;
      }
    }

    else if (v33 != 1768845428)
    {
      if (v33 != 1735159650)
      {
        goto LABEL_139;
      }

      if (*(DerivedStorage + 64))
      {
        v34 = 2;
      }

      else
      {
        v34 = 1;
      }

      if (*(DerivedStorage + 72))
      {
        ++v34;
      }

      v35 = v32 >= v34 ? v34 : a5 >> 2;
      if (a5 >= 4)
      {
        *a7 = sub_1DF8(*(DerivedStorage + 56));
        if (v35 >= 2)
        {
          v36 = *(v14 + 64);
          if (!v36)
          {
            v32 = 1;
            goto LABEL_157;
          }

          a7[1] = sub_1DF8(v36);
          v32 = 2;
          if (v35 != 2)
          {
LABEL_157:
            v48 = *(v14 + 72);
            if (v48)
            {
              a7[v32] = sub_1DF8(v48);
            }

LABEL_159:
            LODWORD(v32) = v35;
          }

LABEL_139:
          v16 = 0;
          v19 = 4 * v32;
LABEL_151:
          *a6 = v19;
          return v16;
        }

LABEL_146:
        LODWORD(v32) = 1;
        goto LABEL_139;
      }
    }

    LODWORD(v32) = 0;
    goto LABEL_139;
  }

  if (v15 == 1819173229)
  {
    v42 = *(DerivedStorage + 32);
    if (!v42 || (v43 = CFRetain(v42)) == 0)
    {
      v43 = CFRetain(@"No Name Endpoint");
    }

    *a6 = 8;
    if (a5 < 8)
    {
      v16 = 561211770;
    }

    else
    {
      v16 = 0;
      *a7 = CFRetain(v43);
    }

    if (v43)
    {
      CFRelease(v43);
    }

    return v16;
  }

  if (v15 != 1819569763)
  {
    v27 = 1836411236;
    goto LABEL_71;
  }

  v37 = *(DerivedStorage + 56);
  VTable = CMBaseObjectGetVTable();
  v39 = *(*(VTable + 16) + 40);
  if (!v39)
  {
    return 4294954514;
  }

  v40 = *(VTable + 16) + 40;

  return v39(v37, a2, a3, a4, a5, a6, a7);
}

BOOL sub_117C(uint64_t a1, int *a2)
{
  result = 0;
  v3 = *a2;
  if (*a2 <= 1819173228)
  {
    if (v3 <= 1668641651)
    {
      if (v3 > 1668047218)
      {
        v5 = v3 == 1668047219 || v3 == 1668049764;
        v6 = 1668575852;
      }

      else
      {
        v5 = v3 == 1634429294 || v3 == 1634758772;
        v6 = 1650682995;
      }

      if (v5 || v3 == v6)
      {
        return 1;
      }
    }

    else
    {
      if (v3 > 1735354733)
      {
        if (v3 > 1818850925)
        {
          if (v3 == 1818850926)
          {
            return 1;
          }

          v4 = 1819107691;
        }

        else
        {
          if (v3 == 1735354734)
          {
            return 1;
          }

          v4 = 1751737454;
        }

        goto LABEL_57;
      }

      if (v3 == 1668641652)
      {
        return 1;
      }

      if (v3 == 1684236338 || v3 == 1684434036)
      {
        goto LABEL_45;
      }
    }
  }

  else
  {
    if (v3 <= 1935763059)
    {
      if (v3 > 1853059618)
      {
        if (v3 <= 1870098019)
        {
          if (v3 != 1853059619)
          {
            v4 = 1853059700;
            goto LABEL_57;
          }

          return 1;
        }

        if (v3 == 1870098020)
        {
          return 1;
        }

        v4 = 1919512167;
LABEL_57:
        if (v3 != v4)
        {
          return result;
        }

        return 1;
      }

      if (v3 == 1819173229)
      {
        return 1;
      }

      if (v3 != 1819569763)
      {
        v4 = 1836411236;
        goto LABEL_57;
      }

      goto LABEL_45;
    }

    if (v3 > 1937007733)
    {
      if (v3 > 1953653101)
      {
        if (v3 == 1969841184)
        {
          return 1;
        }

        v4 = 1953653102;
      }

      else
      {
        if (v3 == 1937007734)
        {
          return 1;
        }

        v4 = 1937009955;
      }

      goto LABEL_57;
    }

    if (v3 == 1935763060 || v3 == 1936092276 || v3 == 1936879204)
    {
LABEL_45:
      v10 = a2[1];
      return v10 == 1768845428 || v10 == 1869968496;
    }
  }

  return result;
}

uint64_t sub_13D4(const __CFAllocator *a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v22 = 0;
  v21 = 0;
  cf = 0;
  FigHALAudioDeviceGetClassID();
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    v17 = v8;
    sub_C164();
    goto LABEL_17;
  }

  v9 = FigHALAudioObjectMapperAddMapping();
  if (v9)
  {
    v17 = v9;
    sub_C18C();
    goto LABEL_17;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 1) = a3;
  *(DerivedStorage + 2) = a2;
  *DerivedStorage = v21;
  DerivedStorage[10] = 1634300528;
  if (qword_18238 != -1)
  {
    sub_C1B4();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    *(DerivedStorage + 6) = Instance;
  }

  else if ((sub_C1DC(&v23) & 1) == 0)
  {
    v17 = v23;
    goto LABEL_17;
  }

  *(DerivedStorage + 3) = CFRetain(@"ap:ha:nd:of:fd:ev-screen");
  DerivedStorage[11] = 1885433953;
  *(DerivedStorage + 4) = CFRetain(@"AirPlayHandoffDevice");
  v12 = *(DerivedStorage + 6);
  v23 = 0;
  DescriptionArray = APAudioFormatCreateDescriptionArray();
  if (DescriptionArray)
  {
    v17 = DescriptionArray;
    sub_C27C(DescriptionArray, &v23);
  }

  else
  {
    *(v12 + 64) = v23;
    if (dword_18000 <= 50 && (dword_18000 != -1 || _LogCategory_Initialize()))
    {
      v19 = *DerivedStorage;
      LogPrintF();
    }

    v14 = sub_24D8(a1, a2, v21, a3, *(DerivedStorage + 6), DerivedStorage + 7);
    if (v14)
    {
      v17 = v14;
      sub_C2D8();
    }

    else
    {
      v15 = sub_B3E4(a1, &cf);
      if (v15)
      {
        v17 = v15;
        sub_C300();
      }

      else
      {
        v16 = sub_B444(a1, a2, a3, v21, cf, DerivedStorage + 8);
        if (v16)
        {
          v17 = v16;
          sub_C328();
        }

        else
        {
          v17 = sub_B530(a1, a2, a3, v21, cf, DerivedStorage + 9);
          if (v17)
          {
            sub_C350();
          }

          else
          {
            *a4 = v22;
            v22 = 0;
          }
        }
      }
    }
  }

LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return v17;
}

void sub_16A0()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage[3];
  if (v1)
  {
    CFRelease(v1);
    DerivedStorage[3] = 0;
  }

  v2 = DerivedStorage[4];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[4] = 0;
  }

  v3 = DerivedStorage[7];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[7] = 0;
  }

  v4 = DerivedStorage[6];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[6] = 0;
  }

  v5 = DerivedStorage[8];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[8] = 0;
  }

  v6 = DerivedStorage[9];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[9] = 0;
  }
}

uint64_t sub_17A4(uint64_t a1, int *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 0;
  v5 = *a2;
  if (*a2 <= 1819173228)
  {
    if (v5 > 1668641651)
    {
      if (v5 == 1819107691)
      {
        v9 = 8;
      }

      else
      {
        v9 = 0;
      }

      if (v5 == 1818850926)
      {
        v10 = 4;
      }

      else
      {
        v10 = v9;
      }

      if (v5 == 1751737454)
      {
        v11 = 4;
      }

      else
      {
        v11 = 0;
      }

      if (v5 == 1735354734)
      {
        v12 = 4;
      }

      else
      {
        v12 = v11;
      }

      if (v5 <= 1818850925)
      {
        v13 = v12;
      }

      else
      {
        v13 = v10;
      }

      if (v5 == 1684434036)
      {
        v14 = 4;
      }

      else
      {
        v14 = 0;
      }

      if (v5 == 1684236338)
      {
        v15 = 8;
      }

      else
      {
        v15 = v14;
      }

      if (v5 == 1668641652)
      {
        v16 = 12;
      }

      else
      {
        v16 = v15;
      }

      if (v5 <= 1735354733)
      {
        return v16;
      }

      else
      {
        return v13;
      }
    }

    if (v5 > 1668047218)
    {
      if (v5 != 1668047219 && v5 != 1668049764)
      {
        if (v5 == 1668575852)
        {
          v19 = vmovn_s64(vtstq_s64(DerivedStorage[4], DerivedStorage[4]));
          return 4 * ((v19.i8[4] & 1u) - v19.i32[0]);
        }

        return result;
      }
    }

    else if (v5 != 1634429294 && v5 != 1634758772 && v5 != 1650682995)
    {
      return result;
    }

    return 4;
  }

  if (v5 > 1935763059)
  {
    if (v5 <= 1937007733)
    {
      if (v5 != 1935763060 && v5 != 1936092276)
      {
        if (v5 == 1936879204)
        {
          return (20 * *(DerivedStorage[3].i64[0] + 44) + 12);
        }

        return result;
      }
    }

    else
    {
      if (v5 > 1953653101)
      {
        v6 = 1953653102;
        v7 = 4;
        v8 = 1969841184;
LABEL_67:
        if (v5 == v8)
        {
          v21 = 8;
        }

        else
        {
          v21 = 0;
        }

LABEL_70:
        if (v5 == v6)
        {
          return v7;
        }

        else
        {
          return v21;
        }
      }

      if (v5 != 1937007734)
      {
        if (v5 != 1937009955)
        {
          return result;
        }

        v17 = a2[1];
        v18 = v17 == 1869968496 || v17 == 1735159650;
        goto LABEL_63;
      }
    }

    return 4;
  }

  if (v5 <= 1853059618)
  {
    v6 = 1819173229;
    v7 = 8;
    if (v5 == 1836411236)
    {
      v20 = 8;
    }

    else
    {
      v20 = 0;
    }

    if (v5 == 1819569763)
    {
      v21 = 4;
    }

    else
    {
      v21 = v20;
    }

    goto LABEL_70;
  }

  if (v5 <= 1870098019)
  {
    v6 = 1853059619;
    v7 = 32;
    v8 = 1853059700;
    goto LABEL_67;
  }

  if (v5 != 1870098020)
  {
    v18 = v5 == 1919512167;
LABEL_63:
    if (v18)
    {
      return 4;
    }

    else
    {
      return 0;
    }
  }

  v22 = a2[1];
  if (v22 != 1869968496 && v22 != 1735159650)
  {
    return 0;
  }

  v23 = vmovn_s64(vtstq_s64(DerivedStorage[4], DerivedStorage[4]));
  return 4 * ((v23.i8[4] & 1u) - v23.i32[0]) + 4;
}

uint64_t sub_1B10(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, int a5, double *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v34 = 0;
  v35 = 0;
  if (*a2 != 1853059700)
  {
    v24 = 2003332927;
    goto LABEL_22;
  }

  v10 = DerivedStorage;
  memset(__s2, 0, 40);
  v11 = *(DerivedStorage + 48);
  v12 = *(v11 + 32);
  v30 = *(v11 + 16);
  v31 = v12;
  v32 = *(v11 + 48);
  if (a5 != 8)
  {
    v24 = 561211770;
LABEL_21:
    APSLogErrorAt();
    goto LABEL_22;
  }

  v13 = *a6;
  if (*a6 == *&v30)
  {
LABEL_19:
    v24 = 0;
    goto LABEL_22;
  }

  v14 = *(DerivedStorage + 56);
  CMBaseObject = FigHALAudioStreamGetCMBaseObject();
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v16)
  {
    v24 = 4294954514;
    goto LABEL_21;
  }

  v17 = v16(CMBaseObject, kFigHALAudioStreamProperty_SupportedPCMFormats, kCFAllocatorDefault, &v34);
  if (v17)
  {
    v24 = v17;
    goto LABEL_21;
  }

  v18 = v34;
  Length = CFDataGetLength(v34);
  if (Length < 0x70)
  {
    v24 = 4294967246;
LABEL_28:
    sub_C3B4();
  }

  else
  {
    v20 = Length / 0x38;
    BytePtr = CFDataGetBytePtr(v18);
    v22 = 0;
    do
    {
      if (*(BytePtr + 5) <= v13 && *(BytePtr + 6) >= v13)
      {
        v22 = BytePtr;
        if (*(BytePtr + 7) == HIDWORD(v31))
        {
          v22 = BytePtr;
          if (*(BytePtr + 8) >= v32)
          {
            v22 = BytePtr;
            goto LABEL_14;
          }
        }
      }

      BytePtr += 56;
      --v20;
    }

    while (v20);
    if (!v22)
    {
      v24 = 1970171760;
      goto LABEL_28;
    }

LABEL_14:
    *__s2 = v13;
    v23 = *(v22 + 24);
    *(__s2 + 8) = *(v22 + 8);
    *(&__s2[1] + 8) = v23;
    if (!memcmp(&v30, __s2, 0x28uLL))
    {
      goto LABEL_19;
    }

    sub_1DF8(*(v10 + 7));
    v24 = FigHALAudioConfigChangeCreateRecord();
    if (v24)
    {
      APSLogErrorAt();
    }

    else
    {
      v25 = v35;
      v26 = __s2[1];
      *(v35 + 16) = __s2[0];
      *(v25 + 32) = v26;
      *(v25 + 48) = *&__s2[2];
      v27 = *(v10 + 1);
      v28 = *v10;
      FigHALAudioConfigChangeSendRequest();
      v35 = 0;
    }
  }

LABEL_22:
  FigHALAudioConfigChangeDisposeRecord();
  if (v34)
  {
    CFRelease(v34);
  }

  return v24;
}

uint64_t sub_1DF8(uint64_t a1)
{
  VTable = CMBaseObjectGetVTable();
  v3 = *(*(VTable + 16) + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = *(VTable + 16) + 8;

  return v3(a1);
}

CFTypeRef sub_1E90()
{
  result = *(CMBaseObjectGetDerivedStorage() + 24);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

uint64_t sub_1EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 != 1718579821)
  {
    fig_log_get_emitter();
    v11 = FigSignalErrorAtGM();
    goto LABEL_9;
  }

  v6 = DerivedStorage;
  v7 = *(DerivedStorage + 56);
  VTable = CMBaseObjectGetVTable();
  v9 = *(*(VTable + 24) + 16);
  if (!v9)
  {
    v11 = 4294954514;
LABEL_8:
    APSLogErrorAt();
    goto LABEL_9;
  }

  v10 = *(VTable + 24) + 16;
  v11 = v9(v7, 1718579821, a3);
  if (v11)
  {
    goto LABEL_8;
  }

  v12 = *(v6 + 1);
  v13 = *v6;
  FigHALAudioPropertySendChanges();
LABEL_9:
  FigHALAudioConfigChangeDisposeRecord();
  return v11;
}

uint64_t sub_203C()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage;
  if (*(DerivedStorage + 84))
  {
    if (sub_C404(&v17))
    {
      return 0;
    }

    v2 = v17;
  }

  else
  {
    if (*(DerivedStorage + 80))
    {
      return 0;
    }

    v4 = *(DerivedStorage + 48);
    v5 = *(v4 + 32);
    *(v4 + 104) = *(v4 + 16);
    *(v4 + 120) = v5;
    *(v4 + 136) = *(v4 + 48);
    v6 = *(DerivedStorage + 48);
    v7 = *(DerivedStorage + 56);
    v8 = *(v6 + 128);
    v9 = *(v6 + 104);
    *(v6 + 172) = 0;
    *(v6 + 176) = v9;
    *(v6 + 180) = v8;
    *(v6 + 200) = 0;
    VTable = CMBaseObjectGetVTable();
    v11 = *(*(VTable + 24) + 32);
    if (v11)
    {
      v12 = *(VTable + 24) + 32;
      v2 = v11(v7);
      if (!v2)
      {
        *(*(v1 + 48) + 184) = 1;
        *(v1 + 80) = 1;
        return v2;
      }
    }

    else
    {
      v2 = 4294954514;
    }

    APSLogErrorAt();
  }

  v13 = *(v1 + 56);
  v14 = CMBaseObjectGetVTable();
  v15 = *(*(v14 + 24) + 40);
  if (v15)
  {
    v16 = *(v14 + 24) + 40;
    v15(v13);
  }

  return v2;
}

uint64_t sub_21C8()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 80) >= 1)
  {
    v1 = DerivedStorage;
    *(DerivedStorage + 80) = 0;
    v2 = *(DerivedStorage + 56);
    VTable = CMBaseObjectGetVTable();
    v4 = *(*(VTable + 24) + 40);
    if (v4)
    {
      v5 = *(VTable + 24) + 40;
      v4(v2);
    }

    *(*(v1 + 48) + 184) = 0;
  }

  return 0;
}

uint64_t sub_226C(uint64_t a1, double *a2, uint64_t *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(*(DerivedStorage + 48) + 184))
  {
    v8 = DerivedStorage;
    v9 = mach_absolute_time();
    v10 = *(v8 + 48);
    v11 = *(v10 + 176);
    if (*(v10 + 172) != v11)
    {
      *(v10 + 172) = v11;
      v12 = UpTicksPerSecond();
      v10 = *(v8 + 48);
      *(v10 + 192) = (11025 * v12 / *(v10 + 172));
    }

    v13 = *(v10 + 200);
    if (!v13)
    {
      v13 = *(v10 + 192) + v9;
      *(v10 + 200) = v13;
      *(v10 + 208) = v9;
      *(v10 + 216) = 0;
    }

    if (v9 >= v13)
    {
      *(v10 + 200) = *(v10 + 192) + v13;
      *(v10 + 208) = v13;
      v14 = *(v10 + 216) + 11025.0;
      *(v10 + 216) = v14;
    }

    else
    {
      v14 = *(v10 + 216);
      v13 = *(v10 + 208);
    }

    result = 0;
    *a2 = v14;
    *a3 = v13;
    *a4 = 0;
  }

  else
  {
    sub_C48C();
    return 1937010544;
  }

  return result;
}

uint64_t sub_2360(uint64_t a1, int a2, BOOL *a3, BOOL *a4)
{
  if (*(*(CMBaseObjectGetDerivedStorage() + 48) + 184))
  {
    result = 0;
    *a3 = a2 == 1919513701;
    *a4 = a2 == 1919513701;
  }

  else
  {
    sub_C4A0();
    return 1937010544;
  }

  return result;
}

uint64_t sub_23CC()
{
  if (*(*(CMBaseObjectGetDerivedStorage() + 48) + 184))
  {
    return 0;
  }

  sub_C4B4();
  return 1937010544;
}

uint64_t sub_2404()
{
  if (*(*(CMBaseObjectGetDerivedStorage() + 48) + 184))
  {
    return 0;
  }

  sub_C4C8();
  return 1937010544;
}

void sub_243C(id a1)
{
  qword_18248 = 0;
  unk_18250 = "APHALHandoffAudioSharedState";
  qword_18258 = sub_249C;
  unk_18260 = 0;
  qword_18268 = sub_24C0;
  unk_18270 = 0u;
  unk_18280 = 0u;
  qword_18240 = _CFRuntimeRegisterClass();
}

double sub_249C(_OWORD *a1)
{
  result = 0.0;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void sub_24C0(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_24D8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, const void *a5, uint64_t *a6)
{
  FigHALAudioStreamGetClassID();
  v10 = CMDerivedObjectCreate();
  if (v10)
  {
    v14 = v10;
    sub_C4DC();
    return v14;
  }

  v11 = FigHALAudioObjectMapperAddMapping();
  if (v11)
  {
    v14 = v11;
    sub_C504();
    return v14;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = 0;
  *(DerivedStorage + 1) = a4;
  DerivedStorage[4] = a3;
  DerivedStorage[5] = 50;
  v13 = CFRetain(a5);
  *(DerivedStorage + 4) = v13;
  *(DerivedStorage + 24) = 1;
  if (CFDataGetLength(v13[8]) < 0x38)
  {
    if ((sub_C52C(&v19) & 1) == 0)
    {
      return v19;
    }
  }

  else
  {
    sub_C5CC(DerivedStorage + 4);
  }

  *a6 = 0;
  if (dword_18070 <= 50)
  {
    if (dword_18070 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return 0;
      }

      v16 = *a6;
    }

    v17 = *DerivedStorage;
    v18 = DerivedStorage[4];
    LogPrintF();
    return 0;
  }

  return 0;
}

void sub_2674()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 32);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 32) = 0;
  }
}

uint64_t sub_26F4(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    v7 = DerivedStorage;
    if (CFEqual(a2, kFigHALAudioStreamProperty_SupportedPCMFormats))
    {
      v8 = *(*(v7 + 32) + 64);
      if (v8)
      {
        v9 = CFRetain(v8);
      }

      else
      {
        v9 = 0;
      }

      result = 0;
      *a4 = v9;
    }

    else
    {
      return 4294954509;
    }
  }

  else
  {
    sub_C618();
    return 4294954516;
  }

  return result;
}

uint64_t sub_2798(uint64_t a1, int *a2)
{
  result = 0;
  v3 = *a2;
  if (*a2 <= 1935762291)
  {
    if (v3 > 1870098019)
    {
      v4 = v3 == 1870098020 || v3 == 1885762592;
      v5 = 1885762657;
    }

    else
    {
      v4 = v3 == 1650682995 || v3 == 1668047219;
      v5 = 1819569763;
    }
  }

  else if (v3 <= 1936092512)
  {
    v4 = v3 == 1935762292 || v3 == 1935894638;
    v5 = 1935960434;
  }

  else if (v3 > 1937007733)
  {
    v4 = v3 == 1952805485;
    v5 = 1937007734;
  }

  else
  {
    v4 = v3 == 1936092513;
    v5 = 1936092532;
  }

  if (v4 || v3 == v5)
  {
    return 1;
  }

  return result;
}

uint64_t sub_28BC(uint64_t a1, int *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 0;
  v5 = *a2;
  if (*a2 > 1935894637)
  {
    if (v5 <= 1936092531)
    {
      if (v5 == 1935894638 || v5 == 1935960434)
      {
        return 4;
      }

      if (v5 != 1936092513)
      {
        return result;
      }

      return 56 * (CFDataGetLength(*(*(DerivedStorage + 32) + 64)) / 0x38uLL);
    }

    if (v5 != 1936092532)
    {
      if (v5 == 1937007734)
      {
        return 4;
      }

      v7 = 1952805485;
LABEL_21:
      if (v5 != v7)
      {
        return result;
      }

      return 4;
    }

    return 40;
  }

  if (v5 > 1885762591)
  {
    if (v5 != 1885762592)
    {
      if (v5 != 1885762657)
      {
        v7 = 1935762292;
        goto LABEL_21;
      }

      return 56 * (CFDataGetLength(*(*(DerivedStorage + 32) + 64)) / 0x38uLL);
    }

    return 40;
  }

  if (v5 != 1650682995 && v5 != 1668047219)
  {
    v7 = 1819569763;
    goto LABEL_21;
  }

  return 4;
}

uint64_t sub_2A0C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, unsigned int a5, _DWORD *a6, int *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = *a2;
  result = 2003332927;
  if (*a2 <= 1935894637)
  {
    if (v12 <= 1885762591)
    {
      switch(v12)
      {
        case 1650682995:
          *a6 = 4;
          if (a5 >= 4)
          {
            result = 0;
            v14 = 1634689642;
            goto LABEL_37;
          }

          break;
        case 1668047219:
          *a6 = 4;
          if (a5 >= 4)
          {
            result = 0;
            v14 = 1634956402;
            goto LABEL_37;
          }

          break;
        case 1819569763:
          v14 = *(DerivedStorage + 20);
          *a6 = 4;
          if (a5 >= 4)
          {
            result = 0;
LABEL_37:
            *a7 = v14;
            return result;
          }

          break;
        default:
          return result;
      }

      return 561211770;
    }

    if (v12 != 1885762592)
    {
      if (v12 != 1885762657)
      {
        if (v12 != 1935762292)
        {
          return result;
        }

        *a6 = 4;
        if (a5 >= 4)
        {
          result = 0;
          v14 = *(DerivedStorage + 24);
          goto LABEL_37;
        }

        return 561211770;
      }

LABEL_23:
      v15 = 56 * (CFDataGetLength(*(*(DerivedStorage + 32) + 64)) / 0x38uLL);
      *a6 = v15;
      if (v15 <= a5)
      {
        BytePtr = CFDataGetBytePtr(*(*(DerivedStorage + 32) + 64));
        memcpy(a7, BytePtr, v15);
        return 0;
      }

      return 561211770;
    }

LABEL_25:
    *a6 = 40;
    if (a5 >= 0x28)
    {
      result = 0;
      v17 = *(DerivedStorage + 32);
      v18 = *(v17 + 16);
      v19 = *(v17 + 32);
      *(a7 + 4) = *(v17 + 48);
      *a7 = v18;
      *(a7 + 1) = v19;
      return result;
    }

    return 561211770;
  }

  if (v12 > 1936092531)
  {
    if (v12 != 1936092532)
    {
      if (v12 == 1937007734)
      {
        *a6 = 4;
        if (a5 >= 4)
        {
          result = 0;
          v14 = *(DerivedStorage + 16);
          goto LABEL_37;
        }
      }

      else
      {
        if (v12 != 1952805485)
        {
          return result;
        }

        *a6 = 4;
        if (a5 >= 4)
        {
          result = 0;
          v14 = 1936747378;
          goto LABEL_37;
        }
      }

      return 561211770;
    }

    goto LABEL_25;
  }

  switch(v12)
  {
    case 1935894638:
      *a6 = 4;
      if (a5 >= 4)
      {
        result = 0;
        v14 = 1;
        goto LABEL_37;
      }

      return 561211770;
    case 1935960434:
      *a6 = 4;
      if (a5 >= 4)
      {
        result = 0;
        *a7 = 0;
        return result;
      }

      return 561211770;
    case 1936092513:
      goto LABEL_23;
  }

  return result;
}

uint64_t sub_2CD0(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, int a5, __int128 *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v27 = 0;
  if (dword_18070 <= 40 && (dword_18070 != -1 || _LogCategory_Initialize()))
  {
    sub_C62C(a2);
  }

  v10 = *a2;
  if (*a2 != 1885762592 && v10 != 1936092532)
  {
    if (v10 != 1935762292)
    {
      v14 = 2003332927;
      goto LABEL_22;
    }

    if (a5 == 4)
    {
      v20 = *a6 != 0;
      if (*(DerivedStorage + 24) != v20)
      {
        *(DerivedStorage + 24) = v20;
        v21 = *(DerivedStorage + 1);
        v22 = *DerivedStorage;
        FigHALAudioPropertySendChanges();
      }

      goto LABEL_17;
    }

    v14 = 561211770;
LABEL_21:
    APSLogErrorAt();
    goto LABEL_22;
  }

  if (a5 != 40)
  {
    v14 = 561211770;
    goto LABEL_21;
  }

  v12 = a6[1];
  v24 = *a6;
  v25 = v12;
  v26 = *(a6 + 4);
  if (!memcmp(&v24, (*(DerivedStorage + 4) + 16), 0x28uLL))
  {
LABEL_17:
    v14 = 0;
    goto LABEL_22;
  }

  v13 = *DerivedStorage;
  v14 = FigHALAudioConfigChangeCreateRecord();
  if (v14)
  {
    APSLogErrorAt();
  }

  else
  {
    v16 = v26;
    v15 = v27;
    v17 = v25;
    *(v27 + 16) = v24;
    *(v15 + 32) = v17;
    *(v15 + 48) = v16;
    v18 = *(DerivedStorage + 1);
    v19 = DerivedStorage[4];
    FigHALAudioConfigChangeSendRequest();
    v27 = 0;
  }

LABEL_22:
  FigHALAudioConfigChangeDisposeRecord();
  return v14;
}

uint64_t sub_2EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 == 1718579821)
  {
    v6 = DerivedStorage;
    v8 = DerivedStorage + 32;
    v7 = *(DerivedStorage + 32);
    v9 = *(a3 + 16);
    v10 = *(a3 + 32);
    *(v7 + 48) = *(a3 + 48);
    *(v7 + 16) = v9;
    *(v7 + 32) = v10;
    if (dword_18070 <= 40 && (dword_18070 != -1 || _LogCategory_Initialize()))
    {
      sub_C674(v8);
    }

    v11 = *(v6 + 1);
    v12 = *v6;
    FigHALAudioPropertySendChanges();
    v13 = 0;
  }

  else
  {
    fig_log_get_emitter();
    v13 = FigSignalErrorAtGM();
  }

  FigHALAudioConfigChangeDisposeRecord();
  return v13;
}

uint64_t sub_2FC4()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_18070 <= 40 && (dword_18070 != -1 || _LogCategory_Initialize()))
  {
    sub_C6CC(DerivedStorage);
  }

  if (*(DerivedStorage + 24))
  {
    *(*(DerivedStorage + 32) + 152) = 0;
  }

  return 0;
}

uint64_t sub_3040()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_18070 <= 40)
  {
    v1 = DerivedStorage;
    if (dword_18070 != -1 || _LogCategory_Initialize())
    {
      sub_C708(v1);
    }
  }

  return 0;
}

uint64_t sub_30AC(uint64_t a1, int a2, unsigned int a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_18070 <= 40 && (dword_18070 != -1 || _LogCategory_Initialize()))
  {
    sub_C744(DerivedStorage);
  }

  v8 = *(DerivedStorage + 32);
  if (*(v8 + 184))
  {
    if (a2 == 1919513701)
    {
      result = 0;
      *(v8 + 152) = *(a4 + 144) + a3;
    }

    else
    {
      sub_C780(&v10);
      return v10;
    }
  }

  else
  {
    sub_C800();
    return 1937010544;
  }

  return result;
}

uint64_t sub_3188(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  if (a2)
  {
    v5 = *(DerivedStorage + 32);
    v6 = *(v5 + 16);
    v7 = *(v5 + 32);
    *(a2 + 32) = *(v5 + 48);
    *a2 = v6;
    *(a2 + 16) = v7;
  }

  if (dword_18070 <= 40 && (dword_18070 != -1 || _LogCategory_Initialize()))
  {
    sub_C814(v4);
  }

  return 0;
}

unsigned int *sub_3208(unsigned int *result)
{
  v1 = *result;
  v2 = *(result + 24);
  return result;
}

uint64_t sub_321C()
{

  return LogPrintF();
}

uint64_t sub_3234(uint64_t a1, uint64_t a2, int a3, const void *a4, uint64_t a5, const void *a6, CFTypeRef *a7)
{
  cf = 0;
  v32 = 0;
  kdebug_trace();
  FigHALAudioStreamGetClassID();
  v12 = CMDerivedObjectCreate();
  if (v12)
  {
    v25 = v12;
    sub_C86C();
    goto LABEL_27;
  }

  v13 = FigHALAudioObjectMapperAddMapping();
  if (v13)
  {
    v25 = v13;
    sub_C894();
    goto LABEL_27;
  }

  if (a4)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListeners();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = DerivedStorage;
  *DerivedStorage = v32;
  *(DerivedStorage + 16) = a3;
  *(DerivedStorage + 8) = a5;
  if (!a4)
  {
    *(DerivedStorage + 24) = 0;
    v16 = (DerivedStorage + 32);
LABEL_8:
    *v16 = *&kCMTimeInvalid.value;
    epoch = kCMTimeInvalid.epoch;
    goto LABEL_10;
  }

  v17 = CFRetain(a4);
  *(v15 + 3) = v17;
  v16 = v15 + 8;
  if (!v17)
  {
    goto LABEL_8;
  }

  APSGetFBOPropertyCMTime();
  *v16 = v30;
  epoch = v31;
LABEL_10:
  *(v16 + 2) = epoch;
  *(v15 + 8) = CFRetain(a6);
  v19 = v15 + 16;
  *(v15 + 56) = 1;
  *(v15 + 14) = 0;
  APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator();
  Typed = CFAllocatorAllocateTyped();
  *(v15 + 12) = Typed;
  if (!Typed)
  {
    sub_CACC();
    v25 = 4294954510;
    goto LABEL_27;
  }

  bzero(Typed, 0x800uLL);
  IntWithDefault = APSSettingsGetIntWithDefault();
  *(v15 + 80) = IntWithDefault;
  *(v15 + 81) = 0;
  if (IntWithDefault)
  {
    v22 = CM8021ASClockCreate();
    if (v22)
    {
      v25 = v22;
      sub_C8BC();
      goto LABEL_27;
    }
  }

  if (CFDataGetLength(*(*v19 + 64)) < 0x38)
  {
    if ((sub_C8E4(&v30) & 1) == 0)
    {
      v25 = v30;
      goto LABEL_27;
    }
  }

  else
  {
    sub_C97C(v15 + 8);
  }

  if (APSSettingsGetIntWithDefault())
  {
    v23 = IsAppleInternalBuild();
    *(v15 + 72) = v23 != 0;
    if (v23)
    {
      v24 = *v19;
      v25 = APRealTimeAudioFileWriterCreate();
      if (dword_180E0 <= 50 && (dword_180E0 != -1 || _LogCategory_Initialize()))
      {
        sub_CA88((v15 + 16));
      }
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
    *(v15 + 72) = 0;
  }

  APSAsyncLoggerGetSharedLogger();
  *a7 = cf;
  cf = 0;
  if (dword_180E0 <= 40)
  {
    if (dword_180E0 != -1)
    {
LABEL_25:
      v29 = v15[4];
      v28 = *v15;
      LogPrintF();
      goto LABEL_27;
    }

    if (_LogCategory_Initialize())
    {
      v27 = *a7;
      goto LABEL_25;
    }

LABEL_27:
    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v25;
}

void sub_358C()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  kdebug_trace();
  if (*(DerivedStorage + 24))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v1 = *(DerivedStorage + 24);
    FigNotificationCenterRemoveWeakListeners();
    v2 = *(DerivedStorage + 24);
    if (v2)
    {
      CFRelease(v2);
      *(DerivedStorage + 24) = 0;
    }
  }

  v3 = *(DerivedStorage + 64);
  if (*(DerivedStorage + 72))
  {
    v4 = v3[12];
    APRealTimeAudioFileWriterInvalidate();
    v3 = *(DerivedStorage + 64);
    if (v3[12])
    {
      CFRelease(v3[12]);
      v3 = *(DerivedStorage + 64);
      v3[12] = 0;
    }

    goto LABEL_8;
  }

  if (v3)
  {
LABEL_8:
    CFRelease(v3);
    *(DerivedStorage + 64) = 0;
  }

  if (*(DerivedStorage + 80))
  {
    v5 = *(DerivedStorage + 88);
    if (v5)
    {
      CFRelease(v5);
      *(DerivedStorage + 88) = 0;
    }
  }

  *(DerivedStorage + 80) = 0;
  if (*(DerivedStorage + 96))
  {
    DefaultAirPlayMallocZoneCFAllocator = APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator();
    CFAllocatorDeallocate(DefaultAirPlayMallocZoneCFAllocator, *(DerivedStorage + 96));
  }

  v8 = *(DerivedStorage + 104);
  v7 = (DerivedStorage + 104);
  if (v8)
  {
    APSAudioStats_TerminateSession();
    if (dword_180E0 <= 50 && (dword_180E0 != -1 || _LogCategory_Initialize()))
    {
      sub_CAF8(v7);
    }

    if (*v7)
    {
      CFRelease(*v7);
      *v7 = 0;
    }
  }
}

CFStringRef sub_36CC()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 3);
  return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"APHALAudioStream ID %d Owner %d AudioEngine %p AudioSource %p", *DerivedStorage, DerivedStorage[4], v1, *(*(DerivedStorage + 8) + 144));
}

uint64_t sub_3728(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    v7 = DerivedStorage;
    if (CFEqual(a2, kFigHALAudioStreamProperty_SupportedPCMFormats))
    {
      v8 = *(*(v7 + 64) + 64);
      if (v8)
      {
        v9 = CFRetain(v8);
      }

      else
      {
        v9 = 0;
      }

      result = 0;
      *a4 = v9;
    }

    else
    {
      return 4294954509;
    }
  }

  else
  {
    sub_CB38();
    return 4294954516;
  }

  return result;
}

uint64_t sub_37CC(uint64_t a1, int *a2)
{
  result = 0;
  v3 = *a2;
  if (*a2 <= 1935762291)
  {
    if (v3 > 1870098019)
    {
      v4 = v3 == 1870098020 || v3 == 1885762592;
      v5 = 1885762657;
    }

    else
    {
      v4 = v3 == 1650682995 || v3 == 1668047219;
      v5 = 1819569763;
    }
  }

  else if (v3 <= 1936092512)
  {
    v4 = v3 == 1935762292 || v3 == 1935894638;
    v5 = 1935960434;
  }

  else if (v3 > 1937007733)
  {
    v4 = v3 == 1952805485;
    v5 = 1937007734;
  }

  else
  {
    v4 = v3 == 1936092513;
    v5 = 1936092532;
  }

  if (v4 || v3 == v5)
  {
    return 1;
  }

  return result;
}

uint64_t sub_38F0(uint64_t a1, int *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 0;
  v5 = *a2;
  if (*a2 > 1935894637)
  {
    if (v5 <= 1936092531)
    {
      if (v5 == 1935894638 || v5 == 1935960434)
      {
        return 4;
      }

      if (v5 != 1936092513)
      {
        return result;
      }

      return 56 * (CFDataGetLength(*(*(DerivedStorage + 64) + 64)) / 0x38uLL);
    }

    if (v5 != 1936092532)
    {
      if (v5 == 1937007734)
      {
        return 4;
      }

      v7 = 1952805485;
LABEL_21:
      if (v5 != v7)
      {
        return result;
      }

      return 4;
    }

    return 40;
  }

  if (v5 > 1885762591)
  {
    if (v5 != 1885762592)
    {
      if (v5 != 1885762657)
      {
        v7 = 1935762292;
        goto LABEL_21;
      }

      return 56 * (CFDataGetLength(*(*(DerivedStorage + 64) + 64)) / 0x38uLL);
    }

    return 40;
  }

  if (v5 != 1650682995 && v5 != 1668047219)
  {
    v7 = 1819569763;
    goto LABEL_21;
  }

  return 4;
}

uint64_t sub_3A40(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, unsigned int a5, _DWORD *a6, int *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = *a2;
  result = 2003332927;
  if (*a2 > 1935894637)
  {
    if (v12 <= 1936092531)
    {
      if (v12 == 1935894638)
      {
        *a6 = 4;
        if (a5 < 4)
        {
          return 561211770;
        }

        result = 0;
        v16 = 1;
        goto LABEL_37;
      }

      if (v12 == 1935960434)
      {
        *a6 = 4;
        if (a5 >= 4)
        {
          result = 0;
          *a7 = 0;
          return result;
        }

        return 561211770;
      }

      if (v12 != 1936092513)
      {
        return result;
      }

LABEL_23:
      v17 = 56 * (CFDataGetLength(*(*(DerivedStorage + 64) + 64)) / 0x38uLL);
      *a6 = v17;
      if (v17 <= a5)
      {
        BytePtr = CFDataGetBytePtr(*(*(DerivedStorage + 64) + 64));
        memcpy(a7, BytePtr, v17);
        return 0;
      }

      return 561211770;
    }

    if (v12 != 1936092532)
    {
      if (v12 == 1937007734)
      {
        *a6 = 4;
        if (a5 >= 4)
        {
          result = 0;
          v16 = *(DerivedStorage + 16);
          goto LABEL_37;
        }

        return 561211770;
      }

      if (v12 != 1952805485)
      {
        return result;
      }

      *a6 = 4;
      if (a5 < 4)
      {
        return 561211770;
      }

      result = 0;
      v16 = 1936747378;
LABEL_37:
      *a7 = v16;
      return result;
    }

LABEL_25:
    *a6 = 40;
    if (a5 >= 0x28)
    {
      result = 0;
      v19 = *(DerivedStorage + 64);
      v20 = *(v19 + 16);
      v21 = *(v19 + 32);
      *(a7 + 4) = *(v19 + 48);
      *a7 = v20;
      *(a7 + 1) = v21;
      return result;
    }

    return 561211770;
  }

  if (v12 > 1885762591)
  {
    if (v12 != 1885762592)
    {
      if (v12 != 1885762657)
      {
        if (v12 != 1935762292)
        {
          return result;
        }

        *a6 = 4;
        if (a5 < 4)
        {
          return 561211770;
        }

        result = 0;
        v16 = *(DerivedStorage + 56);
        goto LABEL_37;
      }

      goto LABEL_23;
    }

    goto LABEL_25;
  }

  if (v12 == 1650682995)
  {
    *a6 = 4;
    if (a5 < 4)
    {
      return 561211770;
    }

    result = 0;
    v16 = 1634689642;
    goto LABEL_37;
  }

  if (v12 != 1668047219)
  {
    if (v12 != 1819569763)
    {
      return result;
    }

    v14 = *(*(DerivedStorage + 64) + 16);
    v22 = *(DerivedStorage + 32);
    CMTimeConvertScale(&v23, &v22, v14, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    if ((v23.flags & 0x1D) == 1)
    {
      value = v23.value;
    }

    else
    {
      if (dword_180E0 <= 50 && (dword_180E0 != -1 || _LogCategory_Initialize()))
      {
        sub_CB4C();
      }

      value = kCMTimeZero.value;
    }

    *a6 = 4;
    if (a5 >= 4)
    {
      result = 0;
      *a7 = value;
      return result;
    }

    return 561211770;
  }

  *a6 = 4;
  if (a5 >= 4)
  {
    result = 0;
    v16 = 1634956402;
    goto LABEL_37;
  }

  return 561211770;
}

uint64_t sub_3D98(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, int a5, __int128 *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v28 = 0;
  if (dword_180E0 <= 40 && (dword_180E0 != -1 || _LogCategory_Initialize()))
  {
    sub_CB7C(a2);
  }

  v10 = *a2;
  if (*a2 != 1885762592 && v10 != 1936092532)
  {
    if (v10 != 1935762292)
    {
      v21 = 2003332927;
      goto LABEL_27;
    }

    if (a5 == 4)
    {
      v18 = *a6 != 0;
      if (*(DerivedStorage + 56) != v18)
      {
        *(DerivedStorage + 56) = v18;
        v19 = *(DerivedStorage + 1);
        v20 = *DerivedStorage;
        FigHALAudioPropertySendChanges();
      }

      goto LABEL_19;
    }

    v21 = 561211770;
LABEL_23:
    APSLogErrorAt();
    goto LABEL_27;
  }

  if (a5 != 40)
  {
    v21 = 561211770;
    goto LABEL_23;
  }

  v12 = a6[1];
  __s1 = *a6;
  v26 = v12;
  v27 = *(a6 + 4);
  if (!memcmp(&__s1, (*(DerivedStorage + 8) + 16), 0x28uLL))
  {
LABEL_19:
    v21 = 0;
    goto LABEL_27;
  }

  v13 = *DerivedStorage;
  v14 = FigHALAudioConfigChangeCreateRecord();
  if (v14)
  {
    v21 = v14;
    APSLogErrorAt();
  }

  else
  {
    v16 = v27;
    v15 = v28;
    v17 = v26;
    *(v28 + 16) = __s1;
    *(v15 + 32) = v17;
    *(v15 + 48) = v16;
    if (dword_180E0 <= 50 && (dword_180E0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v22 = *(DerivedStorage + 1);
    v23 = DerivedStorage[4];
    FigHALAudioConfigChangeSendRequest();
    v21 = 0;
    v28 = 0;
  }

LABEL_27:
  FigHALAudioConfigChangeDisposeRecord();
  return v21;
}

uint64_t sub_3FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 3))
  {
    sub_CD20(&v20);
    goto LABEL_31;
  }

  if (a2 == 1818326115)
  {
    memset(&v20, 0, sizeof(v20));
    APSGetFBOPropertyCMTime();
    if (dword_180E0 <= 50 && (dword_180E0 != -1 || _LogCategory_Initialize()))
    {
      time = *(DerivedStorage + 8);
      CMTimeGetSeconds(&time);
      time = v20;
      CMTimeGetSeconds(&time);
      LogPrintF();
    }

    *(DerivedStorage + 8) = v20;
    v16 = *(DerivedStorage + 1);
    v17 = *DerivedStorage;
    FigHALAudioPropertySendChanges();
    goto LABEL_25;
  }

  if (a2 != 1718579821)
  {
    fig_log_get_emitter();
    value_low = FigSignalErrorAtGM();
    goto LABEL_26;
  }

  v7 = (DerivedStorage + 16);
  v6 = *(DerivedStorage + 8);
  v8 = *(a3 + 16);
  v9 = *(a3 + 32);
  *(v6 + 48) = *(a3 + 48);
  *(v6 + 16) = v8;
  *(v6 + 32) = v9;
  if (dword_180E0 <= 50 && (dword_180E0 != -1 || _LogCategory_Initialize()))
  {
    sub_CBC4((DerivedStorage + 16));
  }

  v10 = *(DerivedStorage + 1);
  v11 = *DerivedStorage;
  FigHALAudioPropertySendChanges();
  if (*(*(DerivedStorage + 8) + 72))
  {
    CompatibleTransportFromPCMAndSetDefault = APSAudioFormatDescriptionListFindCompatibleTransportFromPCMAndSetDefault();
    if (dword_180E0 > 50 || dword_180E0 == -1 && !_LogCategory_Initialize())
    {
      if (!CompatibleTransportFromPCMAndSetDefault)
      {
        goto LABEL_12;
      }

      goto LABEL_29;
    }

    sub_CC1C((DerivedStorage + 16));
    if (CompatibleTransportFromPCMAndSetDefault)
    {
LABEL_29:
      sub_CC6C(CompatibleTransportFromPCMAndSetDefault, &v20);
LABEL_31:
      value_low = LODWORD(v20.value);
      goto LABEL_26;
    }
  }

LABEL_12:
  if (!*(DerivedStorage + 72))
  {
LABEL_25:
    value_low = 0;
    goto LABEL_26;
  }

  v13 = *(*v7 + 96);
  APRealTimeAudioFileWriterInvalidate();
  v14 = *(*v7 + 96);
  if (v14)
  {
    CFRelease(v14);
    *(*v7 + 96) = 0;
  }

  value_low = APRealTimeAudioFileWriterCreate();
  if (dword_180E0 <= 50 && (dword_180E0 != -1 || _LogCategory_Initialize()))
  {
    sub_CCDC(v7);
  }

LABEL_26:
  FigHALAudioConfigChangeDisposeRecord();
  return value_low;
}

uint64_t sub_4308()
{
  v4 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  kdebug_trace();
  if (*(DerivedStorage + 24))
  {
    if (dword_180E0 <= 40 && (dword_180E0 != -1 || _LogCategory_Initialize()))
    {
      sub_CD94(DerivedStorage);
    }

    if (*(DerivedStorage + 56))
    {
      *(*(DerivedStorage + 64) + 152) = 0;
      if (IsAppleInternalBuild())
      {
        if (FigGetCFPreferenceNumberWithDefault())
        {
          v1 = CFStringCreateF();
          v2 = *(DerivedStorage + 64);
          v4 = APSAudioStatsCreate();
          if (v4)
          {
            sub_CDD0();
          }

          else
          {
            CFRelease(v1);
          }
        }
      }
    }
  }

  else
  {
    sub_CDF8(&v4);
  }

  kdebug_trace();
  return v4;
}

uint64_t sub_4458()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  kdebug_trace();
  if (dword_180E0 <= 40 && (dword_180E0 != -1 || _LogCategory_Initialize()))
  {
    sub_CE6C(DerivedStorage);
  }

  v2 = *(DerivedStorage + 104);
  v1 = (DerivedStorage + 104);
  if (v2)
  {
    APSAudioStats_TerminateSession();
    if (dword_180E0 <= 50 && (dword_180E0 != -1 || _LogCategory_Initialize()))
    {
      sub_CEA8(v1);
    }

    if (*v1)
    {
      CFRelease(*v1);
      *v1 = 0;
    }
  }

  kdebug_trace();
  return 0;
}

uint64_t sub_4560(CMTimeValue a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v89 = *&kCMTimeInvalid.value;
  *&v91.value = *&kCMTimeInvalid.value;
  epoch = kCMTimeInvalid.epoch;
  v91.epoch = epoch;
  kdebug_trace();
  if (dword_180E0 <= 40 && (dword_180E0 != -1 || _LogCategory_Initialize()))
  {
    sub_CEE8(DerivedStorage);
  }

  v12 = *(DerivedStorage + 64);
  if (!*(v12 + 184))
  {
    sub_D198();
    value_low = 1937010544;
    goto LABEL_42;
  }

  if (a2 != 1919513701)
  {
    sub_CF24(&v96);
LABEL_87:
    value_low = LODWORD(v96.value);
    goto LABEL_42;
  }

  if (!*(DerivedStorage + 24))
  {
    sub_D124(&v96);
    goto LABEL_87;
  }

  if (!*(DerivedStorage + 56))
  {
    value_low = 0;
LABEL_42:
    kdebug_trace();
    return value_low;
  }

  if (*(DerivedStorage + 104))
  {
    v13 = *(v12 + 180);
    APSAudioStats_ProcessAudioBuffer();
    v12 = *(DerivedStorage + 64);
  }

  v87 = epoch;
  if (*(v12 + 96))
  {
    v97[0] = 0.0;
    v96.value = a1;
    *&v96.timescale = 0;
    v96.timescale = *(v12 + 180) * a3;
    v96.epoch = *(a4 + 144);
    APSAsyncLoggerGetSharedLogger();
    APSAsyncLoggerLogMessage();
    v14 = *(DerivedStorage + 64);
    v15 = *(v14 + 96);
    v16 = *(v14 + 180);
    v17 = *(a4 + 144);
    APRealTimeAudioFileWriterWriteAudioBytes();
  }

  v18 = CMBaseObjectGetDerivedStorage();
  v19 = v18 + 64;
  v88 = a5;
  if (*(*(v18 + 64) + 152) == 0.0)
  {
    goto LABEL_39;
  }

  v20 = v18;
  v21 = *(a4 + 144);
  v22 = CMBaseObjectGetDerivedStorage();
  memset(&v94, 0, sizeof(v94));
  memset(time, 0, sizeof(time));
  v23 = *(v22 + 64);
  v24 = v21 - *(v23 + 152);
  if (v24 == 0.0)
  {
    goto LABEL_39;
  }

  v25 = v22;
  v90 = a4;
  atomic_fetch_add_explicit((v23 + 160), 1uLL, memory_order_relaxed);
  v96.value = a1;
  v26 = *(v22 + 64);
  v27 = *(v26 + 152);
  *&v96.timescale = v24 / *(v26 + 16) * 1000.0;
  v96.epoch = v27;
  v97[0] = v21;
  APSAsyncLoggerGetSharedLogger();
  APSAsyncLoggerLogMessage();
  if (*(*(v25 + 64) + 88))
  {
    if (APSRingBufferGetBytesUsed() >= 0x121)
    {
      v28 = *(*(v25 + 64) + 88);
      APSRingBufferGetBytesUsed();
      if (APSRingBufferDequeueBytes())
      {
        goto LABEL_22;
      }
    }

    v29 = 12;
    do
    {
      v30 = *(*(v25 + 64) + 88);
      if (APSRingBufferGetBytesUsed() < 0x18)
      {
        break;
      }

      v31 = *(*(v25 + 64) + 88);
      if (APSRingBufferDequeueBytes())
      {
        goto LABEL_22;
      }

      *time = a1;
      *&time[8] = v94;
      APSAsyncLoggerGetSharedLogger();
      APSAsyncLoggerLogMessage();
      --v29;
    }

    while (v29);
  }

  sub_CF98(&v96.timescale, &v96.epoch, v97);
LABEL_22:
  v32 = *v19;
  if (*(*v19 + 80))
  {
    goto LABEL_39;
  }

  v33 = v24 / *(v32 + 16);
  if (v33 <= 0.0 || v33 >= 3.94)
  {
    if (v24 >= 0.0 || -v24 >= a3)
    {
      v43 = 0;
      *(v32 + 168) = 1;
    }

    else
    {
      v43 = -v24;
    }

    goto LABEL_40;
  }

  v34 = v24;
  if (!v24)
  {
LABEL_39:
    v43 = 0;
    goto LABEL_40;
  }

  v86 = DerivedStorage;
  v35 = *(v32 + 152);
  while (1)
  {
    v36 = *(v20 + 64);
    v37 = *(v36 + 180);
    v38 = v34 >= 0x800 / v37 ? 0x800 / v37 : v34;
    v39 = *(v36 + 144);
    v40 = *(v20 + 96);
    v41 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (!v41)
    {
      break;
    }

    v42 = v41(v39, v40, v38 * v37, v35);
    if (v42)
    {
      goto LABEL_81;
    }

    v35 += v38;
    v34 -= v38;
    if (!v34)
    {
      goto LABEL_33;
    }
  }

  v42 = 4294954514;
LABEL_81:
  sub_CFDC(v42, v19);
LABEL_33:
  v43 = 0;
  DerivedStorage = v86;
  a4 = v90;
LABEL_40:
  v45 = *(DerivedStorage + 64);
  if (*(v45 + 80))
  {
    v46 = *(v45 + 180);
    FigHALAudioConduitDeviceHALSendAudio();
    value_low = 0;
    *(*(DerivedStorage + 64) + 152) = *(a4 + 144) + a3;
    goto LABEL_42;
  }

  v48 = CMBaseObjectGetDerivedStorage();
  *&v96.value = v89;
  v96.epoch = v87;
  v49 = (*(v48 + 64) + 168);
  __swp(v49, v49);
  if (v49)
  {
    v50 = v48;
    Default = APSRealTimeAllocatorGetDefault();
    Mutable = CFDictionaryCreateMutable(Default, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v53 = Mutable;
      CMTimeMake(&v96, *(a4 + 144), *(*(v50 + 64) + 176));
      v54 = APSRealTimeAllocatorGetDefault();
      *time = v96;
      v55 = CMTimeCopyAsDictionary(time, v54);
      if (v55)
      {
        v56 = v55;
        CFDictionarySetValue(v53, kFigEndpointStreamAudioEngineFlushOption_AnchorTime, v55);
        CFDictionarySetValue(v53, kFigEndpointStreamAudioEngineFlushOption_TimelineReset, kCFBooleanTrue);
        v57 = *(*(v50 + 64) + 144);
        v58 = *(*(CMBaseObjectGetVTable() + 16) + 128);
        if (v58)
        {
          v58(v57);
        }

        v59 = *(v50 + 24);
        v60 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v60)
        {
          v60(v59, v53);
        }

        CFRelease(v53);
        CFRelease(v56);
        v43 = 0;
      }

      else
      {
        sub_D01C(v53);
      }
    }

    else
    {
      sub_D05C();
    }
  }

  v61 = *(DerivedStorage + 64);
  if (*(v61 + 152) == 0.0)
  {
    CMTimeMake(&v91, *(a4 + 144), *(v61 + 176));
    v62 = APSRealTimeAllocatorGetDefault();
    v96 = v91;
    v63 = CMTimeCopyAsDictionary(&v96, v62);
    if (!v63)
    {
      sub_D0F8();
      value_low = 4294954510;
      goto LABEL_42;
    }

    v64 = v63;
    v65 = *(DerivedStorage + 24);
    CMBaseObject = FigEndpointStreamAudioEngineGetCMBaseObject();
    v67 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v67)
    {
      v68 = v67(CMBaseObject, kAPAudioEngineProperty_AudioSourceFirstFrameAnchorTime, v64);
      if (!v68)
      {
        v61 = *(DerivedStorage + 64);
        goto LABEL_58;
      }

      value_low = v68;
    }

    else
    {
      value_low = 4294954514;
    }

    sub_D0B4();
LABEL_78:
    CFRelease(v64);
    return value_low;
  }

  v64 = 0;
LABEL_58:
  v69 = *(a4 + 144);
  *(v61 + 152) = v69 + a3;
  v70 = *(v61 + 180);
  v71 = a3;
  v72 = v70 * a3;
  if (*(DerivedStorage + 80))
  {
    v73 = DerivedStorage;
    v74 = CMBaseObjectGetDerivedStorage();
    v95 = 0;
    *time = *&kCMTimeZero.value;
    *&time[16] = kCMTimeZero.epoch;
    v94 = *time;
    if (v72 >= 8)
    {
      v75 = v74;
      if (!*(v74 + 81))
      {
        v76 = v72 >> 3;
        v77 = v88;
        while (!*v77)
        {
          ++v77;
          if (!--v76)
          {
            goto LABEL_67;
          }
        }

        *(v74 + 81) = 1;
        HostTimeClock = CMClockGetHostTimeClock();
        CMClockGetTime(time, HostTimeClock);
        v79 = *(v75 + 88);
        v96 = *time;
        CM8021ASClockGetClockTimeForHostTime();
        v96.value = *(v75 + 88);
        v93 = *time;
        *&v96.timescale = CMTimeGetSeconds(&v93);
        v93 = v94;
        v96.epoch = CMTimeGetSeconds(&v93);
        v97[0] = *&v95;
        APSAsyncLoggerGetSharedLogger();
        APSAsyncLoggerLogMessage();
      }
    }

LABEL_67:
    v61 = *(v73 + 64);
    v70 = *(v61 + 180);
  }

  else
  {
    v73 = DerivedStorage;
  }

  v80 = v43 * v70;
  if (v72 < v80)
  {
    sub_D088();
    value_low = 4294960587;
  }

  else
  {
    v81 = v73;
    if (*(v73 + 112))
    {
      v82 = mach_absolute_time() - *(v73 + 112);
      value_low = 0;
      if (v82 > 60 * UpTicksPerSecond())
      {
        *(v81 + 112) = 0;
      }
    }

    else
    {
      v83 = *(v61 + 144);
      v84 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (v84)
      {
        value_low = v84(v83, v88 + v80, v72 - v80, v43 + v69);
        v85 = CMBaseObjectGetDerivedStorage();
        if (value_low == -6710)
        {
          v96.value = (((*(*(v85 + 64) + 16) & 0xFFFFFFFF80000000) != 0) << 63) | ((*(*(v85 + 64) + 16) & 0x7FFFFFFF) << 32) | *(*(v85 + 64) + 180) & 0x7FFFFFFF | *(*(v85 + 64) + 180) & 0x80000000;
          *&v96.timescale = v43 & 0x7FFFFFFF | (v71 << 32) | (((v43 & 0xFFFFFFFF80000000) != 0) << 31);
          v96.epoch = v80;
          v97[0] = *&v72;
          APSAsyncLoggerGetSharedLogger();
          APSAsyncLoggerLogMessage();
          *(v73 + 112) = mach_absolute_time();
          value_low = 4294960586;
        }
      }

      else
      {
        CMBaseObjectGetDerivedStorage();
        value_low = 4294954514;
      }
    }
  }

  kdebug_trace();
  if (v64)
  {
    goto LABEL_78;
  }

  return value_low;
}

uint64_t sub_4FA4(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  if (a2)
  {
    v5 = *(DerivedStorage + 64);
    v6 = *(v5 + 16);
    v7 = *(v5 + 32);
    *(a2 + 32) = *(v5 + 48);
    *a2 = v6;
    *(a2 + 16) = v7;
  }

  if (dword_180E0 <= 40 && (dword_180E0 != -1 || _LogCategory_Initialize()))
  {
    sub_D1AC(v4);
  }

  return 0;
}

uint64_t sub_5024(uint64_t result)
{
  if (dword_180E0 <= 40)
  {
    v1 = result;
    if (dword_180E0 != -1)
    {
      return sub_D204(v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_D204(v1);
    }
  }

  return result;
}

uint64_t sub_5094(uint64_t result)
{
  if (dword_180E0 <= 50)
  {
    v1 = result;
    if (dword_180E0 != -1)
    {
      return sub_D250(v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_D250(v1);
    }
  }

  return result;
}

uint64_t sub_5104(uint64_t result)
{
  if (dword_180E0 <= 50)
  {
    v1 = result;
    if (dword_180E0 != -1)
    {
      return sub_D2A8(v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_D2A8(v1);
    }
  }

  return result;
}

uint64_t sub_5174(uint64_t result)
{
  if (dword_180E0 <= 50)
  {
    v1 = result;
    if (dword_180E0 != -1)
    {
      return sub_D308(v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_D308(v1);
    }
  }

  return result;
}

void sub_51E4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = CFStringCreateF();
  if (dword_180E0 <= 50 && (dword_180E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  APSTapToRadarInvoke();
  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t sub_5334()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_180E0 <= 50 && (dword_180E0 != -1 || _LogCategory_Initialize()))
  {
    v5 = *(DerivedStorage + 3);
    LogPrintF();
  }

  v1 = *DerivedStorage;
  if (FigHALAudioConfigChangeCreateRecord())
  {
    return sub_D384();
  }

  v2 = *(DerivedStorage + 1);
  v3 = DerivedStorage[4];
  return FigHALAudioConfigChangeSendRequest();
}

unsigned int *sub_5420(unsigned int *result)
{
  v1 = *result;
  v2 = *(result + 56);
  return result;
}

uint64_t sub_5434()
{

  return LogPrintF();
}

uint64_t sub_5458(uint64_t a1, CFTypeRef *a2)
{
  cf = 0;
  LogSetAppID();
  sub_C0F0();
  v3 = APGetEndpointManager();
  if (v3)
  {
    sub_D4E8(v3, &cf);
  }

  else
  {
    *a2 = cf;
  }

  return v3;
}

uint64_t sub_54CC(const __CFAllocator *a1, float a2, uint64_t a3, CFDataRef *a4)
{
  *bytes = a2;
  v9 = a2 <= -144.0;
  v5 = CFDataCreate(a1, bytes, 8);
  if (v5)
  {
    v6 = v5;
    result = 0;
    *a4 = v6;
  }

  else
  {
    sub_D528(&v10);
    return v10;
  }

  return result;
}

uint64_t sub_5538(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const void *a5, const void *a6, void *a7)
{
  FigHALAudioObjectGetClassID();
  v12 = CMDerivedObjectCreate();
  if (v12)
  {
    v17 = v12;
    sub_D590();
  }

  else
  {
    v13 = FigHALAudioObjectMapperAddMapping();
    if (v13)
    {
      v17 = v13;
      sub_D5B8();
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *DerivedStorage = a3;
      *(DerivedStorage + 8) = 0;
      *(DerivedStorage + 12) = a4;
      if (a5)
      {
        v15 = CFRetain(a5);
      }

      else
      {
        v15 = 0;
      }

      *(DerivedStorage + 24) = v15;
      if (a6)
      {
        v16 = CFRetain(a6);
      }

      else
      {
        v16 = 0;
      }

      *(DerivedStorage + 16) = v16;
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterAddListener();
      if (dword_18158 <= 50 && (dword_18158 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v17 = 0;
      *a7 = 0;
    }
  }

  return v17;
}

uint64_t sub_56D8()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  BytePtr = CFDataGetBytePtr(*(DerivedStorage + 16));
  result = APSGetFBOPropertyDouble();
  v4 = v3;
  if (dword_18158 <= 40)
  {
    if (dword_18158 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_D5E0(BytePtr);
    }
  }

  if (*(BytePtr + 1))
  {
    v5 = v4 == -144.0;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    if (dword_18158 <= 50)
    {
      if (dword_18158 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_16;
        }

        v9 = *(BytePtr + 1);
      }

      v10 = *BytePtr;
      LogPrintF();
    }

LABEL_16:
    *BytePtr = v4;
    v6 = *DerivedStorage;
    v7 = *(DerivedStorage + 8);
    FigHALAudioPropertySendChanges();
    CMNotificationCenterGetDefaultLocalCenter();
    v8 = *(DerivedStorage + 16);
    return CMNotificationCenterPostNotification();
  }

  if (dword_18158 <= 50)
  {
    if (dword_18158 != -1)
    {
      return sub_D648();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_D648();
    }
  }

  return result;
}

uint64_t sub_58DC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const void *a5, const void *a6, CFTypeRef *a7)
{
  cf = 0;
  FigHALAudioObjectGetClassID();
  v12 = CMDerivedObjectCreate();
  if (v12)
  {
    v19 = v12;
    sub_D684();
  }

  else
  {
    v13 = FigHALAudioObjectMapperAddMapping();
    if (v13)
    {
      v19 = v13;
      sub_D6AC();
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *DerivedStorage = a3;
      *(DerivedStorage + 8) = 0;
      *(DerivedStorage + 12) = a4;
      if (a5)
      {
        v15 = CFRetain(a5);
      }

      else
      {
        v15 = 0;
      }

      *(DerivedStorage + 24) = v15;
      if (a6)
      {
        v16 = CFRetain(a6);
      }

      else
      {
        v16 = 0;
      }

      *(DerivedStorage + 16) = v16;
      CMNotificationCenterGetDefaultLocalCenter();
      v17 = *(DerivedStorage + 16);
      CMNotificationCenterAddListener();
      CMNotificationCenterGetDefaultLocalCenter();
      v18 = *(DerivedStorage + 24);
      CMNotificationCenterAddListener();
      if (dword_18158 <= 50 && (dword_18158 != -1 || _LogCategory_Initialize()))
      {
        sub_D6D4(&cf, (DerivedStorage + 24));
      }

      v19 = 0;
      *a7 = cf;
    }
  }

  return v19;
}

uint64_t sub_5A8C(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = CFDataGetBytePtr(*(DerivedStorage + 16));
  v5 = result;
  if (dword_18158 <= 50)
  {
    if (dword_18158 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_D718(v5);
    }
  }

  if (*(v5 + 4) && *v5 > -30.0)
  {

    return sub_6B98(a2, 0);
  }

  return result;
}

uint64_t sub_5B48(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  BytePtr = CFDataGetBytePtr(*(DerivedStorage + 16));
  v5 = *(DerivedStorage + 24);
  v6 = APSGetFBOPropertyInt64();
  if (dword_18158 <= 50 && (dword_18158 != -1 || _LogCategory_Initialize()))
  {
    sub_D77C(BytePtr);
  }

  return sub_6B98(a2, v6 != 0);
}

void sub_5C14()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 24))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v1 = *(DerivedStorage + 24);
    CMNotificationCenterRemoveListener();
    v2 = *(DerivedStorage + 24);
    CMBaseObject = FigEndpointGetCMBaseObject();
    v4 = *(CMBaseObjectGetVTable() + 8);
    if (*v4 >= 2uLL)
    {
      v5 = v4[8];
      if (v5)
      {
        v6 = v4[8];
        v5(CMBaseObject);
      }
    }
  }

  v7 = *(DerivedStorage + 16);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 16) = 0;
  }

  v8 = *(DerivedStorage + 24);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 24) = 0;
  }
}

CFStringRef sub_5D18()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  BytePtr = CFDataGetBytePtr(*(DerivedStorage + 16));
  if (*(BytePtr + 1))
  {
    v2 = " MUTED";
  }

  else
  {
    v2 = "";
  }

  return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"APAudioVolumeControl ID %d Owner %d VolumeDB %f%s", *(DerivedStorage + 8), *(DerivedStorage + 12), *BytePtr, v2);
}

uint64_t sub_5DBC(uint64_t a1, int *a2)
{
  result = 0;
  v3 = *a2;
  if (*a2 <= 1818453105)
  {
    if (v3 > 1668047218)
    {
      v8 = v3 == 1668047219;
      v9 = 1668506480;
    }

    else
    {
      v8 = v3 == 1650682995;
      v9 = 1667591277;
    }

    goto LABEL_16;
  }

  if (v3 > 1818456931)
  {
    v8 = v3 == 1818456932 || v3 == 1937007734;
    v9 = 1818456950;
LABEL_16:
    if (v8 || v3 == v9)
    {
      return 1;
    }

    return result;
  }

  v4 = v3 - 1818453106;
  v5 = v4 > 4;
  v6 = (1 << v4) & 0x13;
  if (!v5 && v6 != 0)
  {
    return 1;
  }

  return result;
}

uint64_t sub_5EA0(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (*a2 > 1818453106)
  {
    if (v2 <= 1818456931)
    {
      if (v2 != 1818453107 && v2 != 1818453110)
      {
        return 0;
      }

      return 4;
    }

    if (v2 == 1818456932 || v2 == 1818456950)
    {
      return 4;
    }

    v6 = 1937007734;
LABEL_18:
    if (v2 == v6)
    {
      return 4;
    }

    else
    {
      return 0;
    }
  }

  if (v2 <= 1668047218)
  {
    if (v2 == 1650682995)
    {
      return 4;
    }

    v6 = 1667591277;
    goto LABEL_18;
  }

  if (v2 == 1668047219)
  {
    return 4;
  }

  if (v2 == 1818453106)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  if (v2 == 1668506480)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_5F8C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, unsigned int a5, _DWORD *a6, int *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  BytePtr = CFDataGetBytePtr(*(DerivedStorage + 16));
  v13 = *a2;
  if (*a2 <= 1818453106)
  {
    if (v13 <= 1668047218)
    {
      if (v13 != 1650682995)
      {
        if (v13 == 1667591277)
        {
          *a6 = 4;
          if (a5 >= 4)
          {
            v14 = 0;
            *a7 = 0;
            return v14;
          }

          return 561211770;
        }

        return 2003332927;
      }

      *a6 = 4;
      if (a5 < 4)
      {
        return 561211770;
      }

      v14 = 0;
      v15 = 1818588780;
    }

    else
    {
      switch(v13)
      {
        case 1668047219:
          *a6 = 4;
          if (a5 < 4)
          {
            return 561211770;
          }

          v14 = 0;
          v15 = 1986817381;
          break;
        case 1668506480:
          *a6 = 4;
          if (a5 < 4)
          {
            return 561211770;
          }

          v14 = 0;
          v15 = 1869968496;
          break;
        case 1818453106:
          *a6 = 16;
          if (a5 >= 0x10)
          {
            v14 = 0;
            *a7 = xmmword_F3C0;
            return v14;
          }

          return 561211770;
        default:
          return 2003332927;
      }
    }

LABEL_33:
    *a7 = v15;
    return v14;
  }

  if (v13 <= 1818456931)
  {
    if (v13 != 1818453107)
    {
      if (v13 != 1818453110)
      {
        return 2003332927;
      }

      if (*(BytePtr + 1))
      {
        v16 = -144.0;
      }

      else
      {
        v21 = *(DerivedStorage + 24);
        APSGetFBOPropertyDouble();
        v16 = v22;
      }

      *a6 = 4;
      if (a5 < 4)
      {
        v24 = 561211770;
        goto LABEL_47;
      }

      goto LABEL_45;
    }

    if (a5 != 4)
    {
      v24 = 561211770;
      goto LABEL_47;
    }

    v17 = *a7;
    v24 = 0;
    APSVolumeConvertDBToSliderValue();
  }

  else
  {
    if (v13 != 1818456932)
    {
      if (v13 != 1818456950)
      {
        if (v13 != 1937007734)
        {
          return 2003332927;
        }

        *a6 = 4;
        if (a5 < 4)
        {
          return 561211770;
        }

        v14 = 0;
        v15 = *(DerivedStorage + 12);
        goto LABEL_33;
      }

      v16 = 0.0;
      if (!*(BytePtr + 1))
      {
        v20 = *(DerivedStorage + 24);
        APSGetFBOPropertyDouble();
        APSVolumeConvertDBToSliderValue();
      }

      *a6 = 4;
      if (a5 < 4)
      {
        v24 = 561211770;
LABEL_47:
        APSLogErrorAt();
        return v24;
      }

LABEL_45:
      *a7 = v16;
      return 0;
    }

    if (a5 != 4)
    {
      v24 = 561211770;
      goto LABEL_47;
    }

    v19 = *a7;
    v24 = 0;
    APSVolumeConvertSliderValueToDB();
  }

  *a6 = 4;
  *a7 = v18;
  return v24;
}

uint64_t sub_6314(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, int a5, int *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  BytePtr = CFDataGetBytePtr(*(DerivedStorage + 16));
  v11 = BytePtr;
  v24 = *(a2 + 1);
  if (*a2 != 1818453110)
  {
    if (*a2 != 1818456950)
    {
      return 2003332927;
    }

    if (a5 == 4)
    {
      v12 = *a6;
      APSVolumeConvertSliderValueToDB();
      *v11 = v13;
      if (dword_18158 <= 50)
      {
        if (dword_18158 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_18;
          }

          v15 = *v11;
        }

        v23 = *a2;
        goto LABEL_10;
      }

      goto LABEL_18;
    }

    v14 = 561211770;
LABEL_14:
    APSLogErrorAt();
    return v14;
  }

  if (a5 != 4)
  {
    v14 = 561211770;
    goto LABEL_14;
  }

  *BytePtr = *a6;
  if (dword_18158 <= 50)
  {
    if (dword_18158 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_18;
      }

      v21 = *a2;
      v22 = *v11;
    }

LABEL_10:
    LogPrintF();
  }

LABEL_18:
  if (*(v11 + 1))
  {
    v14 = 0;
  }

  else
  {
    v16 = *(DerivedStorage + 24);
    v17 = *v11;
    v14 = APSSetFBOPropertyDouble();
  }

  v18 = *DerivedStorage;
  v19 = *(DerivedStorage + 8);
  FigHALAudioPropertySendChanges();
  return v14;
}

void sub_657C()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_18158 <= 50 && (dword_18158 != -1 || _LogCategory_Initialize()))
  {
    sub_D83C();
  }

  if (*(DerivedStorage + 16))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v1 = *(DerivedStorage + 16);
    CMNotificationCenterRemoveListener();
    CMNotificationCenterGetDefaultLocalCenter();
    v2 = *(DerivedStorage + 24);
    CMNotificationCenterRemoveListener();
    v3 = *(DerivedStorage + 24);
    CMBaseObject = FigEndpointGetCMBaseObject();
    v5 = *(CMBaseObjectGetVTable() + 8);
    if (*v5 >= 2uLL)
    {
      v6 = v5[8];
      if (v6)
      {
        v7 = v5[8];
        v6(CMBaseObject);
      }
    }

    v8 = *(DerivedStorage + 16);
    if (v8)
    {
      CFRelease(v8);
      *(DerivedStorage + 16) = 0;
    }
  }

  v9 = *(DerivedStorage + 24);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 24) = 0;
  }
}

CFStringRef sub_66E4()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(CFDataGetBytePtr(*(DerivedStorage + 16)) + 1))
  {
    v1 = "";
  }

  else
  {
    v1 = "Not ";
  }

  return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"APAudioMuteControl ID %d Owner %d %sMuted", *(DerivedStorage + 8), *(DerivedStorage + 12), v1);
}

uint64_t sub_6760(uint64_t a1, int *a2)
{
  result = 0;
  v3 = *a2;
  if (*a2 > 1668047218)
  {
    v4 = v3 == 1668047219 || v3 == 1937007734;
    v5 = 1668506480;
  }

  else
  {
    v4 = v3 == 1650682995 || v3 == 1650685548;
    v5 = 1667591277;
  }

  if (v4 || v3 == v5)
  {
    return 1;
  }

  return result;
}

uint64_t sub_67E4(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (*a2 > 1668047218)
  {
    if (v2 != 1937007734 && v2 != 1668506480 && v2 != 1668047219)
    {
      return 0;
    }

    return 4;
  }

  if (v2 == 1650682995)
  {
    return 4;
  }

  if (v2 == 1667591277)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  if (v2 == 1650685548)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_6874(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, unsigned int a5, _DWORD *a6, int *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = *a2;
  result = 2003332927;
  if (*a2 > 1668047218)
  {
    if (v12 == 1668047219)
    {
      *a6 = 4;
      if (a5 > 3)
      {
        v14 = 1836414053;
        goto LABEL_21;
      }

      return 561211770;
    }

    if (v12 == 1668506480)
    {
      *a6 = 4;
      if (a5 > 3)
      {
        v14 = 1869968496;
        goto LABEL_21;
      }

      return 561211770;
    }

    if (v12 != 1937007734)
    {
      return result;
    }

    *a6 = 4;
    if (a5 < 4)
    {
      return 561211770;
    }

    v15 = (DerivedStorage + 12);
    goto LABEL_18;
  }

  if (v12 != 1650682995)
  {
    if (v12 != 1650685548)
    {
      if (v12 != 1667591277)
      {
        return result;
      }

      *a6 = 4;
      if (a5 > 3)
      {
        v14 = 0;
LABEL_21:
        result = 0;
        *a7 = v14;
        return result;
      }

      return 561211770;
    }

    *a6 = 4;
    if (a5 < 4)
    {
      return 561211770;
    }

    v15 = CFDataGetBytePtr(*(DerivedStorage + 16)) + 4;
LABEL_18:
    v14 = *v15;
    goto LABEL_21;
  }

  *a6 = 4;
  if (a5 > 3)
  {
    v14 = 1953458028;
    goto LABEL_21;
  }

  return 561211770;
}

uint64_t sub_69E4(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, int a5, int *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  BytePtr = CFDataGetBytePtr(*(DerivedStorage + 16));
  if (*a2 != 1650685548)
  {
    return 2003332927;
  }

  if (a5 != 4)
  {
    v19 = 561211770;
    goto LABEL_16;
  }

  v12 = *a6;
  if (v12 != *(BytePtr + 1))
  {
    if (dword_18158 <= 50 && (dword_18158 != -1 || _LogCategory_Initialize()))
    {
      sub_D878();
    }

    v13 = *(DerivedStorage + 24);
    if (v12)
    {
      v14 = &kCFBooleanTrue;
    }

    else
    {
      v14 = &kCFBooleanFalse;
    }

    v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v15)
    {
      v16 = v15(v13, kAPEndpointProperty_IsHALMuted, *v14);
      if (!v16)
      {
        goto LABEL_12;
      }

      v19 = v16;
    }

    else
    {
      v19 = 4294954514;
    }

LABEL_16:
    APSLogErrorAt();
    return v19;
  }

LABEL_12:
  v17 = a2[1];
  v18 = a2[2];
  sub_6B98(a1, v12);
  return 0;
}

uint64_t sub_6B98(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = CFDataGetBytePtr(*(DerivedStorage + 16));
  v5 = result;
  if (dword_18158 <= 50)
  {
    if (dword_18158 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_D8D0(v5);
    }
  }

  if (*(v5 + 4) != a2)
  {
    *(v5 + 4) = a2;
    v6 = *DerivedStorage;
    v7 = *(DerivedStorage + 8);

    return FigHALAudioPropertySendOneChange();
  }

  return result;
}

uint64_t sub_6C78(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5, CFDictionaryRef theDict, CFTypeRef *a7)
{
  v113 = 0;
  v114 = 0;
  v111 = 0;
  v112 = 0;
  if (!theDict)
  {
    sub_E018();
    v50 = 0;
    v49 = 0;
    v22 = 0;
    v20 = 0;
    v30 = 4294950576;
    goto LABEL_167;
  }

  *label = 0;
  v119 = 0;
  cf = 0;
  v116 = 0;
  v117 = 0;
  v115 = 0;
  Value = CFDictionaryGetValue(theDict, kAPHALAudioDeviceCreationOption_AudioStreamOverride);
  v13 = kFigHALAudioConduitDeviceBrokeredDeviceCreationOption_Conduit;
  v14 = CFDictionaryGetValue(theDict, kFigHALAudioConduitDeviceBrokeredDeviceCreationOption_Conduit);
  v106 = a7;
  v109 = a1;
  if (!v14)
  {
    if (a4)
    {
      v20 = CFRetain(a4);
    }

    else
    {
      v20 = 0;
    }

    v21 = CFRetain(theDict);
    if (!Value)
    {
      if (a5)
      {
        v22 = CFRetain(a5);
      }

      else
      {
        v22 = 0;
      }

      MutableCopy = v21;
      v107 = 0;
      v26 = 0;
      v24 = kCFAllocatorDefault;
      goto LABEL_22;
    }

    if (dword_181C8 <= 50 && (dword_181C8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v22 = CFRetain(Value);
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v32)
    {
      MutableCopy = v21;
      v24 = kCFAllocatorDefault;
      v33 = v32(CMBaseObject, kFigEndpointStreamProperty_AudioEngineClone, kCFAllocatorDefault, &v119);
      if (v33)
      {
        v30 = v33;
      }

      else
      {
        v34 = FigEndpointStreamAudioEngineGetCMBaseObject();
        v35 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v35)
        {
          v36 = v35(v34, kAPEndpointStreamAudioEngineProperty_StartupOptions, kCFAllocatorDefault, &cf);
          if (!v36)
          {
            v107 = cf;
            cf = 0;
            v26 = 1;
            goto LABEL_22;
          }

          v30 = v36;
        }

        else
        {
          v30 = 4294954514;
        }
      }
    }

    else
    {
      v30 = 4294954514;
      MutableCopy = v21;
    }

    APSLogErrorAt();
LABEL_39:
    v107 = 0;
    v26 = 0;
    goto LABEL_40;
  }

  v15 = v14;
  v16 = sub_7F80(v14, kFigHALAudioConduitDeviceProperty_DeviceUID, "Default DeviceUID", &v116);
  if (v16)
  {
    v30 = v16;
    sub_D934();
    v20 = 0;
    v22 = 0;
    MutableCopy = 0;
    goto LABEL_39;
  }

  v17 = sub_7F80(v15, kFigHALAudioConduitDeviceProperty_ModelUID, "Default ModelUID", &v115);
  v18 = a2;
  if (v17)
  {
    v30 = v17;
    sub_D944();
LABEL_201:
    v20 = 0;
    v22 = 0;
    MutableCopy = 0;
    v107 = 0;
    v26 = 0;
    goto LABEL_41;
  }

  v19 = sub_7F80(v15, kFigHALAudioConduitDeviceProperty_DeviceName, "Default DeviceName", &v117);
  if (v19)
  {
    v30 = v19;
    sub_D954();
    goto LABEL_201;
  }

  if (dword_181C8 <= 50 && (dword_181C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v23 = APEndpointStreamAudioAVCCreate();
  if (v23)
  {
    v30 = v23;
    sub_D964();
    goto LABEL_201;
  }

  v24 = kCFAllocatorDefault;
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    sub_D98C();
    v20 = 0;
    v22 = 0;
    v107 = 0;
    v26 = 0;
    v30 = 4294960568;
    goto LABEL_41;
  }

  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  v20 = 0;
  v107 = 0;
  v26 = 0;
  v22 = *label;
  *label = 0;
LABEL_22:
  v27 = FigEndpointStreamGetCMBaseObject();
  v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v28)
  {
    v30 = 4294954514;
LABEL_27:
    APSLogErrorAt();
LABEL_40:
    v18 = a2;
    goto LABEL_41;
  }

  v29 = v28(v27, kFigEndpointStreamProperty_ID, v24, &v112);
  if (v29)
  {
    v30 = v29;
    goto LABEL_27;
  }

  v18 = a2;
  if (v112)
  {
    v30 = 0;
  }

  else
  {
    sub_D9B8(&v120);
    v30 = v120;
  }

LABEL_41:
  if (*label)
  {
    CFRelease(*label);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v119)
  {
    CFRelease(v119);
  }

  if (v116)
  {
    CFRelease(v116);
  }

  if (v115)
  {
    CFRelease(v115);
  }

  if (v117)
  {
    CFRelease(v117);
  }

  if (v30)
  {
    sub_DA2C();
LABEL_193:
    v49 = 0;
    v50 = 0;
    Intersection = 0;
    goto LABEL_160;
  }

  FigHALAudioDeviceGetClassID();
  v37 = CMDerivedObjectCreate();
  if (v37)
  {
    v30 = v37;
    sub_DA54();
    goto LABEL_193;
  }

  v38 = FigHALAudioObjectMapperAddMapping();
  if (v38)
  {
    v30 = v38;
    sub_DA7C();
    goto LABEL_193;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 8) = a3;
  *(DerivedStorage + 16) = v18;
  *DerivedStorage = 0;
  if (v20)
  {
    v40 = CFRetain(v20);
  }

  else
  {
    v40 = 0;
  }

  *(DerivedStorage + 96) = v40;
  if (v22)
  {
    v41 = CFRetain(v22);
  }

  else
  {
    v41 = 0;
  }

  *(DerivedStorage + 104) = v41;
  *(DerivedStorage + 89) = v26;
  *(DerivedStorage + 88) = 0;
  *(DerivedStorage + 24) = v112;
  v112 = 0;
  *(DerivedStorage + 64) = 0;
  if (qword_182C8 != -1)
  {
    sub_DAA4();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    *(Instance + 160) = 0;
    *(Instance + 168) = 0;
    *(DerivedStorage + 120) = Instance;
  }

  else if ((sub_DACC(label) & 1) == 0)
  {
    v49 = 0;
    v50 = 0;
    Intersection = 0;
    v30 = *label;
    goto LABEL_160;
  }

  SNPrintF();
  v43 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 160) = v43;
  if (!v43)
  {
    sub_DFA4(&v119);
    v49 = 0;
    v50 = 0;
    Intersection = 0;
    v30 = v119;
    goto LABEL_160;
  }

  v44 = CFDictionaryGetValue(theDict, v13);
  *(*(DerivedStorage + 120) + 80) = v44;
  if (v44)
  {
    CFRetain(v44);
  }

  v45 = FigEndpointStreamGetCMBaseObject();
  v46 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v46)
  {
    v30 = 4294954514;
LABEL_75:
    APSLogErrorAt();
    v49 = 0;
    v50 = 0;
    Intersection = 0;
LABEL_160:
    v60 = v107;
    goto LABEL_161;
  }

  v47 = v46(v45, kFigEndpointStreamProperty_AudioEngineClone, kCFAllocatorDefault, DerivedStorage + 112);
  if (v47)
  {
    v30 = v47;
    goto LABEL_75;
  }

  if (*(DerivedStorage + 89))
  {
    v105 = *(DerivedStorage + 112);
    v48 = APAudioEngineBufferedAdapterCreate();
    if (v48)
    {
      v30 = v48;
      sub_DB64();
LABEL_204:
      v49 = 0;
LABEL_210:
      Intersection = 0;
      goto LABEL_105;
    }
  }

  else
  {
    v105 = 0;
  }

  if (dword_181C8 <= 50 && (dword_181C8 != -1 || _LogCategory_Initialize()))
  {
    sub_DB8C(&v114, (DerivedStorage + 112));
  }

  v52 = APSRealTimeWritableCreate();
  if (v52)
  {
    v30 = v52;
    sub_DBD0();
    goto LABEL_204;
  }

  v53 = CFDictionaryGetValue(MutableCopy, kAPHALAudioDeviceCreationOption_AudioDeviceType);
  if (!v53 || (v54 = CFRetain(v53)) == 0)
  {
    sub_DF78();
    v49 = 0;
    Intersection = 0;
    v30 = 4294950576;
    goto LABEL_105;
  }

  v49 = v54;
  v55 = CFDictionaryGetValue(MutableCopy, kAPHALAudioDeviceCreationOption_NetworkClockType);
  if (v55)
  {
    v55 = CFRetain(v55);
  }

  *(DerivedStorage + 72) = v55;
  v56 = CFDictionaryGetValue(MutableCopy, kAPHALAudioDeviceCreationOption_EndpointName);
  if (v56)
  {
    v56 = CFRetain(v56);
  }

  *(DerivedStorage + 32) = v56;
  v57 = CFDictionaryGetValue(MutableCopy, kAPHALAudioDeviceCreationOption_ModelUID);
  if (v57)
  {
    v57 = CFRetain(v57);
  }

  *(DerivedStorage + 40) = v57;
  if (FigCFDictionaryGetInt32IfPresent())
  {
    *(DerivedStorage + 48) = 0;
  }

  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetFloatIfPresent();
  if (-999.0 == -999 && dword_181C8 <= 60 && (dword_181C8 != -1 || _LogCategory_Initialize()))
  {
    sub_DBF8(&v114);
  }

  if (FigCFEqual())
  {
    v58 = 1668506482;
  }

  else
  {
    v58 = 1634300528;
  }

  *(DerivedStorage + 80) = v58;
  if (FigCFEqual())
  {
    v59 = 1885433975;
  }

  else if (FigCFEqual())
  {
    v59 = 1885433971;
  }

  else if (FigCFEqual())
  {
    v59 = 1885433953;
  }

  else
  {
    v61 = FigCFEqual();
    v59 = 1885433964;
    if (!v61)
    {
      if (!FigCFEqual())
      {
        goto LABEL_110;
      }

      v59 = 1885565807;
    }
  }

  *(DerivedStorage + 84) = v59;
LABEL_110:
  v62 = *(DerivedStorage + 104);
  v63 = kFigEndpointStreamProperty_SupportedAudioFormatDescriptions;
  v64 = FigEndpointStreamGetCMBaseObject();
  v103 = MutableCopy;
  v104 = v20;
  if (sub_80CC(v64, v63, kCFAllocatorDefault, &v111) != -12784)
  {
    v70 = *(DerivedStorage + 120);
    v71 = APSAudioFormatDescriptionListCreateWithFigEndpointStreamAudioFormatDescriptionArray();
    if (v71)
    {
      v30 = v71;
      sub_DC3C();
      goto LABEL_210;
    }

    if (*(*(DerivedStorage + 120) + 72))
    {
      if (APSAudioFormatDescriptionListGetFormatCount())
      {
        v72 = *(*(DerivedStorage + 120) + 72);
        v73 = *(DerivedStorage + 84);
        APSSettingsGetIntWithDefault();
        v74 = *(DerivedStorage + 84);
        Intersection = APSAudioFormatDescriptionListCreateIntersection();
        if (APSAudioFormatDescriptionListGetFormatCount())
        {
          v75 = *(DerivedStorage + 120);
          ASRDArrayPCM = APSAudioFormatDescriptionListCreateASRDArrayPCM();
          if (ASRDArrayPCM)
          {
            v30 = ASRDArrayPCM;
            sub_DC64();
            goto LABEL_105;
          }

          v77 = *(DerivedStorage + 120);
          v78 = *(v77 + 72);
          *(v77 + 72) = Intersection;
          if (Intersection)
          {
            CFRetain(Intersection);
          }

          if (v78)
          {
            CFRelease(v78);
          }

          v79 = *(*(DerivedStorage + 120) + 72);
          DefaultFormat = APSAudioFormatDescriptionListGetDefaultFormat();
          *(*(DerivedStorage + 120) + 56) = DefaultFormat;
          if (DefaultFormat)
          {
            PCMASBD = APSAudioFormatDescriptionGetPCMASBD();
            if (!PCMASBD)
            {
              goto LABEL_130;
            }

            v30 = PCMASBD;
            sub_DC8C();
LABEL_223:
            v20 = v104;
            goto LABEL_105;
          }

          APSLogErrorAt();
          if (dword_181C8 <= 90 && (dword_181C8 != -1 || _LogCategory_Initialize()))
          {
            sub_DCB4(&v114);
          }

LABEL_215:
          v30 = 4294960579;
          goto LABEL_105;
        }

        v87 = *(DerivedStorage + 104);
        v88 = kFigEndpointStreamProperty_SupportedPCMFormats;
        v89 = *(DerivedStorage + 120);
        v90 = FigEndpointStreamGetCMBaseObject();
        v91 = sub_80CC(v90, v88, kCFAllocatorDefault, v89 + 64);
        if (v91)
        {
          v30 = v91;
          sub_DCF0();
          goto LABEL_223;
        }
      }

      else
      {
        v82 = *(DerivedStorage + 104);
        v83 = kFigEndpointStreamProperty_SupportedPCMFormats;
        v84 = *(DerivedStorage + 120);
        v85 = FigEndpointStreamGetCMBaseObject();
        v86 = sub_80CC(v85, v83, kCFAllocatorDefault, v84 + 64);
        if (v86)
        {
          v30 = v86;
          sub_DD18();
          Intersection = 0;
          goto LABEL_223;
        }

        Intersection = 0;
      }

      v92 = *(*(DerivedStorage + 120) + 72);
      if (v92)
      {
        CFRelease(v92);
        *(*(DerivedStorage + 120) + 72) = 0;
      }

      goto LABEL_130;
    }

    APSLogErrorAt();
    if (dword_181C8 <= 90 && (dword_181C8 != -1 || _LogCategory_Initialize()))
    {
      sub_DD40(&v114);
    }

    Intersection = 0;
    goto LABEL_215;
  }

  v65 = *(DerivedStorage + 104);
  v66 = kFigEndpointStreamProperty_SupportedPCMFormats;
  v67 = *(DerivedStorage + 120);
  v68 = FigEndpointStreamGetCMBaseObject();
  v69 = sub_80CC(v68, v66, kCFAllocatorDefault, v67 + 64);
  if (v69)
  {
    v30 = v69;
    sub_DD7C();
    Intersection = 0;
    v20 = v104;
    goto LABEL_105;
  }

  Intersection = 0;
LABEL_130:
  v93 = *(*(DerivedStorage + 120) + 64);
  if (v93)
  {
    Length = CFDataGetLength(v93);
    BytePtr = CFDataGetBytePtr(*(*(DerivedStorage + 120) + 64));
    if (Length >= 0x38)
    {
      v96 = BytePtr;
      v97 = 0;
      do
      {
        if (dword_181C8 <= 50 && (dword_181C8 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        ++v97;
        v96 += 56;
      }

      while (Length / 0x38 != v97);
    }
  }

  if (*(*(DerivedStorage + 120) + 72))
  {
    v119 = 0;
    MutableCopy = v103;
    v20 = v104;
    v98 = a2;
    if (dword_181C8 > 50)
    {
      goto LABEL_151;
    }

    if (dword_181C8 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_151;
      }

      v102 = *(*(DerivedStorage + 120) + 72);
    }

    APSAudioFormatDescriptionListCopyDebugString();
    if (dword_181C8 <= 50 && (dword_181C8 != -1 || _LogCategory_Initialize()))
    {
      sub_DDA4(&v114, &v119);
    }

    if (v119)
    {
      CFRelease(v119);
    }
  }

  else
  {
    MutableCopy = v103;
    v20 = v104;
    v98 = a2;
    if (dword_181C8 <= 50 && (dword_181C8 != -1 || _LogCategory_Initialize()))
    {
      sub_DDE4(&v114);
    }
  }

LABEL_151:
  v99 = sub_3234(v109, v98, 0, *(DerivedStorage + 112), a3, *(DerivedStorage + 120), (DerivedStorage + 136));
  if (v99)
  {
    v30 = v99;
    sub_DE20();
  }

  else
  {
    if (dword_181C8 <= 50 && (dword_181C8 != -1 || _LogCategory_Initialize()))
    {
      sub_DE48(&v114, (DerivedStorage + 136));
    }

    v100 = sub_7E7C();
    if (!v100)
    {
      v50 = v105;
      if (dword_181C8 <= 50 && (dword_181C8 != -1 || _LogCategory_Initialize()))
      {
        sub_DF28(&v114, (DerivedStorage + 104));
      }

      v30 = 0;
      *v106 = v114;
      v114 = 0;
      goto LABEL_160;
    }

    v30 = v100;
    sub_DF00();
  }

LABEL_105:
  v60 = v107;
  v50 = v105;
LABEL_161:
  if (v60)
  {
    CFRelease(v60);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (Intersection)
  {
    CFRelease(Intersection);
  }

LABEL_167:
  if (v111)
  {
    CFRelease(v111);
  }

  if (v112)
  {
    CFRelease(v112);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  if (v113)
  {
    CFRelease(v113);
  }

  if (v114)
  {
    CFRelease(v114);
  }

  return v30;
}

uint64_t sub_7E7C()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  v1 = *(DerivedStorage + 104);
  v2 = FigNotificationCenterAddWeakListener();
  if (v2)
  {
    v4 = v2;
    sub_E02C();
  }

  else
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v3 = *(DerivedStorage + 104);
    v4 = FigNotificationCenterAddWeakListener();
    if (v4)
    {
      sub_E03C();
    }

    else
    {
      CMNotificationCenterGetDefaultLocalCenter();
      v5 = *(DerivedStorage + 112);
      v6 = FigNotificationCenterAddWeakListener();
      if (v6)
      {
        v8 = v6;
        sub_E04C();
        return v8;
      }
    }
  }

  return v4;
}

uint64_t sub_7F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = FigHALAudioConduitDeviceCopyProperty();
  if (v6)
  {
    sub_E05C();
  }

  else
  {
    if (dword_181C8 <= 50 && (dword_181C8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    *a4 = CFStringCreateF();
  }

  return v6;
}

uint64_t sub_80CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  VTable = CMBaseObjectGetVTable();
  v9 = *(*(VTable + 8) + 48);
  if (!v9)
  {
    return 4294954514;
  }

  v10 = *(VTable + 8) + 48;

  return v9(a1, a2, a3, a4);
}

void sub_8188()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  v2 = *(v1 + 104);
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  v3 = *(v1 + 104);
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  v4 = *(v1 + 112);
  FigNotificationCenterRemoveWeakListener();
  sub_8440();
  v5 = DerivedStorage[3];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[3] = 0;
  }

  v6 = DerivedStorage[5];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[5] = 0;
  }

  v7 = DerivedStorage[4];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[4] = 0;
  }

  v8 = DerivedStorage[7];
  if (v8)
  {
    CFRelease(v8);
    DerivedStorage[7] = 0;
  }

  v9 = DerivedStorage[12];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[12] = 0;
  }

  v10 = DerivedStorage[13];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[13] = 0;
  }

  v11 = DerivedStorage[14];
  if (v11)
  {
    CFRelease(v11);
    DerivedStorage[14] = 0;
  }

  if (dword_181C8 <= 50 && (dword_181C8 != -1 || _LogCategory_Initialize()))
  {
    v20 = DerivedStorage[17];
    LogPrintF();
  }

  v12 = DerivedStorage[17];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[17] = 0;
  }

  v13 = DerivedStorage[18];
  if (v13)
  {
    CFRelease(v13);
    DerivedStorage[18] = 0;
  }

  v14 = DerivedStorage[19];
  if (v14)
  {
    CFRelease(v14);
    DerivedStorage[19] = 0;
  }

  v15 = DerivedStorage[22];
  if (v15)
  {
    CFRelease(v15);
    DerivedStorage[22] = 0;
  }

  v16 = DerivedStorage[9];
  if (v16)
  {
    CFRelease(v16);
    DerivedStorage[9] = 0;
  }

  v17 = DerivedStorage[16];
  if (v17)
  {
    CFRelease(v17);
    DerivedStorage[16] = 0;
  }

  v18 = DerivedStorage[20];
  if (v18)
  {
    dispatch_release(v18);
    DerivedStorage[20] = 0;
  }

  v19 = DerivedStorage[15];
  if (v19)
  {
    if (v19[10])
    {
      CFRelease(v19[10]);
      v19 = DerivedStorage[15];
      v19[10] = 0;
    }

    CFRelease(v19);
    DerivedStorage[15] = 0;
  }

  if (dword_181C8 <= 50 && (dword_181C8 != -1 || _LogCategory_Initialize()))
  {
    sub_E128();
  }
}

uint64_t sub_8440()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  mach_absolute_time();
  if (*(DerivedStorage + 168) < 1)
  {
    return 0;
  }

  *(DerivedStorage + 168) = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v2 = *(*(DerivedStorage + 120) + 160);
    CFDictionarySetInt64();
  }

  v3 = *(DerivedStorage + 112);
  v4 = FigEndpointStreamAudioEngineSuspendSync();
  v5 = v4;
  if (v4)
  {
    if (v4 == -15486)
    {
      if (dword_181C8 <= 90 && (dword_181C8 != -1 || _LogCategory_Initialize()))
      {
        sub_E164();
      }

      v5 = 0;
    }

    else if (dword_181C8 <= 90 && (dword_181C8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  v6 = *(DerivedStorage + 136);
  v7 = *(*(CMBaseObjectGetVTable() + 24) + 40);
  if (v7)
  {
    v7(v6);
  }

  v8 = *(*(DerivedStorage + 120) + 144);
  if (v8)
  {
    CFRelease(v8);
    *(*(DerivedStorage + 120) + 144) = 0;
  }

  v9 = *(DerivedStorage + 176);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 176) = 0;
  }

  v10 = *(DerivedStorage + 56);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 56) = 0;
  }

  v11 = *(DerivedStorage + 120);
  v12 = *(v11 + 88);
  if (v12)
  {
    CFRelease(v12);
    v11 = *(DerivedStorage + 120);
    *(v11 + 88) = 0;
  }

  *(v11 + 184) = 0;
  if (dword_181C8 <= 50 && (dword_181C8 != -1 || _LogCategory_Initialize()))
  {
    sub_E1A0();
    if (!Mutable)
    {
      return v5;
    }

    goto LABEL_29;
  }

  if (Mutable)
  {
LABEL_29:
    CFRelease(Mutable);
  }

  return v5;
}

uint64_t sub_86BC()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 20);
  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  *(DerivedStorage + 172) = 1;
  v2 = *(DerivedStorage + 17);
  if (v2)
  {
    v3 = *(DerivedStorage + 2);
    v4 = *(DerivedStorage + 17);
    VTable = CMBaseObjectGetVTable();
    v6 = *(*(VTable + 16) + 8);
    if (v6)
    {
      v7 = *(VTable + 16) + 8;
      v6(v2);
    }

    FigHALAudioObjectMapperRemoveMapping();
  }

  v8 = *(DerivedStorage + 2);
  v9 = *DerivedStorage;

  return FigHALAudioObjectMapperRemoveMapping();
}

uint64_t sub_87BC()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 112);
  v2 = APSGetFBOPropertyInt64();
  result = 0;
  *(DerivedStorage + 64) = v2;
  if (dword_181C8 <= 50)
  {
    if (dword_181C8 != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

BOOL sub_88A4(uint64_t a1, int *a2)
{
  result = 0;
  v4 = *a2;
  if (*a2 > 1818850925)
  {
    if (v4 <= 1919512166)
    {
      if (v4 > 1836411235)
      {
        if (v4 > 1853059699)
        {
          if (v4 == 1853059700)
          {
            return 1;
          }

          v5 = 1870098020;
        }

        else
        {
          if (v4 == 1836411236)
          {
            return 1;
          }

          v5 = 1853059619;
        }

        goto LABEL_61;
      }

      if (v4 <= 1819173228)
      {
        if (v4 == 1818850926)
        {
          return 1;
        }

        v5 = 1819107691;
        goto LABEL_61;
      }

      if (v4 == 1819173229)
      {
        return 1;
      }

      v6 = 1819569763;
      goto LABEL_51;
    }

    if (v4 > 1937007733)
    {
      if (v4 > 1953653101)
      {
        if (v4 != 1953653102)
        {
          if (v4 == 1987012963)
          {

            return sub_A05C();
          }

          v5 = 1969841184;
          goto LABEL_61;
        }

        return 1;
      }

      if (v4 == 1937007734)
      {
        return 1;
      }

      v5 = 1937009955;
      goto LABEL_61;
    }

    if (v4 <= 1936092275)
    {
      if (v4 == 1919512167)
      {
        return 1;
      }

      v6 = 1935763060;
      goto LABEL_51;
    }

    if (v4 != 1936092276)
    {
      v6 = 1936879204;
LABEL_51:
      if (v4 != v6)
      {
        return result;
      }
    }

LABEL_52:
    v7 = a2[1];
    return v7 == 1768845428 || v7 == 1869968496;
  }

  if (v4 > 1668510817)
  {
    if (v4 <= 1684434035)
    {
      if (v4 <= 1668641651)
      {
        if (v4 == 1668510818)
        {
          return 1;
        }

        v5 = 1668575852;
        goto LABEL_61;
      }

      if (v4 == 1668641652)
      {
        return 1;
      }

      v6 = 1684236338;
      goto LABEL_51;
    }

    if (v4 > 1735354733)
    {
      if (v4 == 1735354734)
      {
        return 1;
      }

      v5 = 1751737454;
      goto LABEL_61;
    }

    if (v4 != 1684434036)
    {
      if (v4 == 1718383987)
      {

        return sub_9F6C();
      }

      return result;
    }

    goto LABEL_52;
  }

  if (v4 > 1651798131)
  {
    if (v4 <= 1668047218)
    {
      if (v4 != 1651798132)
      {
        if (v4 == 1667658618)
        {
          return sub_A158() != 0;
        }

        return result;
      }

      return 1;
    }

    if (v4 == 1668047219)
    {
      return 1;
    }

    v5 = 1668049764;
  }

  else if (v4 > 1634759531)
  {
    if (v4 == 1634759532)
    {
      return 1;
    }

    v5 = 1650682995;
  }

  else
  {
    if (v4 == 1634429294)
    {
      return 1;
    }

    v5 = 1634758772;
  }

LABEL_61:
  if (v4 == v5)
  {
    return 1;
  }

  return result;
}

uint64_t sub_8C40(uint64_t a1, int *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 0;
  v5 = *a2;
  if (*a2 > 1818850925)
  {
    if (v5 > 1919512166)
    {
      if (v5 > 1937007733)
      {
        if (v5 > 1953653101)
        {
          v6 = 1953653102;
          v7 = 4;
          if (v5 == 1987012963)
          {
            v8 = 4;
          }

          else
          {
            v8 = 0;
          }

          if (v5 == 1969841184)
          {
            v9 = 8;
          }

          else
          {
            v9 = v8;
          }

LABEL_65:
          if (v5 == v6)
          {
            return v7;
          }

          else
          {
            return v9;
          }
        }

        if (v5 != 1937007734)
        {
          if (v5 != 1937009955)
          {
            return result;
          }

          v21 = a2[1];
          v22 = v21 == 1869968496 || v21 == 1735159650;
          goto LABEL_70;
        }

        return 4;
      }

      if (v5 <= 1936092275)
      {
        v6 = 1919512167;
        v7 = 4;
        v10 = 1935763060;
        goto LABEL_32;
      }

      if (v5 == 1936092276)
      {
        return 4;
      }

      if (v5 == 1936879204)
      {
        return (20 * *(DerivedStorage[7].i64[1] + 44) + 12);
      }

      return result;
    }

    if (v5 <= 1836411235)
    {
      v12 = 1819173228;
      if (v5 == 1819569763)
      {
        v13 = 4;
      }

      else
      {
        v13 = 0;
      }

      if (v5 == 1819173229)
      {
        v14 = 8;
      }

      else
      {
        v14 = v13;
      }

      v15 = 1818850926;
      v16 = 1819107691;
LABEL_40:
      if (v5 == v16)
      {
        v19 = 8;
      }

      else
      {
        v19 = 0;
      }

      if (v5 == v15)
      {
        v20 = 4;
      }

      else
      {
        v20 = v19;
      }

      if (v5 <= v12)
      {
        return v20;
      }

      else
      {
        return v14;
      }
    }

    if (v5 > 1853059699)
    {
      if (v5 == 1853059700)
      {
        return 8;
      }

      if (v5 == 1870098020)
      {
        v23 = a2[1];
        if (v23 == 1869968496 || v23 == 1735159650)
        {
          v24 = vmovn_s64(vtstq_s64(DerivedStorage[9], DerivedStorage[9]));
          return 4 * ((v24.i8[4] & 1u) - v24.i32[0]) + 4;
        }

        else
        {
          return 0;
        }
      }

      return result;
    }

    v6 = 1836411236;
    v7 = 8;
    v17 = v5 == 1853059619;
    v9 = 32;
    goto LABEL_63;
  }

  if (v5 > 1668510817)
  {
    if (v5 > 1684434035)
    {
      v12 = 1735354733;
      if (v5 == 1751737454)
      {
        v18 = 4;
      }

      else
      {
        v18 = 0;
      }

      if (v5 == 1735354734)
      {
        v14 = 4;
      }

      else
      {
        v14 = v18;
      }

      v15 = 1684434036;
      v16 = 1718383987;
      goto LABEL_40;
    }

    if (v5 <= 1668641651)
    {
      if (v5 == 1668510818)
      {
        return 4;
      }

      if (v5 == 1668575852)
      {
        v11 = vmovn_s64(vtstq_s64(DerivedStorage[9], DerivedStorage[9]));
        return 4 * ((v11.i8[4] & 1u) - v11.i32[0]);
      }

      return result;
    }

    v6 = 1668641652;
    v7 = 60;
    v17 = v5 == 1684236338;
    v9 = 8;
LABEL_63:
    if (!v17)
    {
      v9 = 0;
    }

    goto LABEL_65;
  }

  if (v5 > 1651798131)
  {
    if (v5 > 1668047218)
    {
      if (v5 != 1668047219)
      {
        v22 = v5 == 1668049764;
LABEL_70:
        if (v22)
        {
          return 4;
        }

        else
        {
          return 0;
        }
      }

      return 4;
    }

    v6 = 1651798132;
    v7 = 40;
    v10 = 1667658618;
    goto LABEL_32;
  }

  if (v5 <= 1634759531)
  {
    v6 = 1634429294;
    v7 = 4;
    v10 = 1634758772;
LABEL_32:
    v17 = v5 == v10;
    v9 = 4;
    goto LABEL_63;
  }

  if (v5 == 1634759532 || v5 == 1650682995)
  {
    return 4;
  }

  return result;
}

uint64_t sub_9048(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int *a6, uint64_t a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = DerivedStorage;
  v13 = *a2;
  if (*a2 <= 1818850925)
  {
    if (v13 <= 1668510817)
    {
      if (v13 <= 1651798131)
      {
        if (v13 > 1634759531)
        {
          if (v13 == 1634759532)
          {
            *a6 = 4;
            if (a5 >= 4)
            {
              v14 = 0;
              v15 = *(DerivedStorage + 48);
              goto LABEL_136;
            }

            return 561211770;
          }

          if (v13 == 1650682995)
          {
            *a6 = 4;
            if (a5 >= 4)
            {
              v14 = 0;
              v15 = 1634689642;
              goto LABEL_136;
            }

            return 561211770;
          }
        }

        else
        {
          if (v13 == 1634429294)
          {
            *a6 = 4;
            if (a5 < 4)
            {
              return 0;
            }

            v14 = 0;
            v15 = *DerivedStorage;
            goto LABEL_136;
          }

          if (v13 == 1634758772)
          {
            *a6 = 4;
            if (a5 >= 4)
            {
              v14 = 0;
              v15 = *(DerivedStorage + 84);
              goto LABEL_136;
            }

            return 561211770;
          }
        }

        return 2003332927;
      }

      if (v13 > 1668047218)
      {
        if (v13 == 1668047219)
        {
          *a6 = 4;
          if (a5 >= 4)
          {
            v14 = 0;
            v15 = 1633969526;
            goto LABEL_136;
          }

          return 561211770;
        }

        v23 = 1668049764;
        goto LABEL_81;
      }

      if (v13 == 1651798132)
      {
        v34 = *(CMBaseObjectGetDerivedStorage() + 128);
        APSRealTimeWritableRead();
        *a6 = 40;
        if (a5 < 0x28)
        {
          return 561211770;
        }

        v14 = 0;
        *a7 = 0;
        *(a7 + 8) = 0uLL;
        __asm { FMOV            V0.2D, #1.0 }

        *(a7 + 24) = _Q0;
      }

      else
      {
        if (v13 != 1667658618)
        {
          return 2003332927;
        }

        *a6 = 4;
        if (a5 < 4)
        {
          return 561211770;
        }

        v14 = 0;
        *a7 = sub_A158();
      }

      return v14;
    }

    if (v13 > 1684434035)
    {
      if (v13 > 1735354733)
      {
        if (v13 == 1735354734)
        {
          *a6 = 4;
          if (a5 >= 4)
          {
            v14 = 0;
            v15 = *(DerivedStorage + 168) > 0;
            goto LABEL_136;
          }

          return 561211770;
        }

        v23 = 1751737454;
        goto LABEL_81;
      }

      if (v13 == 1684434036)
      {
        goto LABEL_82;
      }

      if (v13 != 1718383987)
      {
        return 2003332927;
      }

      return 1970171760;
    }

    if (v13 > 1668641651)
    {
      if (v13 != 1668641652)
      {
        if (v13 != 1684236338)
        {
          return 2003332927;
        }

        if (a5 <= 7)
        {
          v14 = 561211770;
          sub_E254();
          return v14;
        }

        v14 = 0;
        *a7 = 0x200000001;
        v28 = 8;
LABEL_171:
        *a6 = v28;
        return v14;
      }

      *a6 = 60;
      if (a5 <= 0x3B)
      {
        v14 = 561211770;
        sub_E22C();
      }

      else
      {
        v14 = 0;
        *a7 = *"tppawwar";
        *(a7 + 16) = *"wwar";
        *(a7 + 32) = xmmword_F420;
        *(a7 + 44) = *(&xmmword_F420 + 12);
      }

      return v14;
    }

    if (v13 == 1668510818)
    {
      goto LABEL_82;
    }

    if (v13 != 1668575852)
    {
      return 2003332927;
    }

    v16 = a5 >> 2;
    v17 = a2[1];
    switch(v17)
    {
      case 1869968496:
        goto LABEL_24;
      case 1768845428:
        v16 = 0;
        break;
      case 1735159650:
LABEL_24:
        v19 = *(DerivedStorage + 144);
        v18 = *(DerivedStorage + 152);
        v20 = v19 != 0;
        if (v18)
        {
          ++v20;
        }

        if (v16 >= v20)
        {
          v16 = v20;
        }

        if (!v16)
        {
          break;
        }

        if (!v19)
        {
          v21 = 0;
LABEL_168:
          if (v18)
          {
            *(a7 + 4 * v21) = sub_1DF8(v18);
          }

          break;
        }

        *a7 = sub_1DF8(v12[18]);
        if (v16 != 1)
        {
          v18 = v12[19];
          v21 = 1;
          goto LABEL_168;
        }

        break;
    }

    v14 = 0;
    v28 = 4 * v16;
    goto LABEL_171;
  }

  if (v13 > 1919512166)
  {
    if (v13 > 1937007733)
    {
      if (v13 > 1953653101)
      {
        if (v13 == 1953653102)
        {
          *a6 = 4;
          if (a5 >= 4)
          {
            v14 = 0;
            v15 = *(DerivedStorage + 80);
            goto LABEL_136;
          }

          return 561211770;
        }

        if (v13 != 1969841184)
        {
          if (v13 == 1987012963)
          {
            *a6 = 4;
            if (a5 >= 4)
            {
              v14 = 0;
              v15 = *(DerivedStorage + 88);
LABEL_136:
              *a7 = v15;
              return v14;
            }

            return 561211770;
          }

          return 2003332927;
        }

LABEL_123:
        *a6 = 8;
        if (a5 < 8)
        {
          return 561211770;
        }

        v22 = v12[3];
        if (!v22)
        {
          goto LABEL_126;
        }

        goto LABEL_125;
      }

      if (v13 == 1937007734)
      {
        *a6 = 4;
        if (a5 >= 4)
        {
          v14 = 0;
          v15 = 1;
          goto LABEL_136;
        }

        return 561211770;
      }

      if (v13 != 1937009955)
      {
        return 2003332927;
      }

      v27 = a2[1];
      if (v27 != 1869968496)
      {
        if (v27 == 1768845428)
        {
          goto LABEL_139;
        }

        if (v27 != 1735159650)
        {
          v28 = a5 & 0xFFFFFFFC;
          goto LABEL_148;
        }
      }

      if (a5 >= 4)
      {
        *a7 = sub_1DF8(*(DerivedStorage + 136));
        v28 = 4;
LABEL_148:
        v14 = 0;
        goto LABEL_171;
      }

LABEL_139:
      v28 = 0;
      goto LABEL_148;
    }

    if (v13 <= 1936092275)
    {
      if (v13 == 1919512167)
      {
        *a6 = 4;
        if (a5 >= 4)
        {
          v14 = 0;
          v15 = 11025;
          goto LABEL_136;
        }

        return 561211770;
      }

      v23 = 1935763060;
LABEL_81:
      if (v13 != v23)
      {
        return 2003332927;
      }

      goto LABEL_82;
    }

    if (v13 != 1936092276)
    {
      if (v13 != 1936879204)
      {
        return 2003332927;
      }

      v24 = *(*(DerivedStorage + 120) + 44);
      v25 = 20 * v24 + 12;
      if (v25 > a5)
      {
        v14 = 561211770;
        sub_E240();
      }

      else
      {
        bzero(a7, (20 * v24 + 12));
        if (v24 == 8)
        {
          *(a7 + 8) = 0x100000008;
          *(a7 + 32) = 2;
          *(a7 + 52) = 3;
          *(a7 + 72) = 4;
          *(a7 + 92) = 5;
          *(a7 + 112) = 6;
          *(a7 + 132) = 49;
          *(a7 + 152) = 51;
        }

        else
        {
          if (v24 == 1)
          {
            v26 = 6553601;
          }

          else
          {
            v26 = 6619138;
          }

          *a7 = v26;
        }

        v14 = 0;
        *a6 = v25;
      }

      return v14;
    }

LABEL_82:
    *a6 = 4;
    if (a5 < 4)
    {
      return 561211770;
    }

    v14 = 0;
    *a7 = 0;
    return v14;
  }

  if (v13 <= 1836411235)
  {
    if (v13 > 1819173228)
    {
      if (v13 == 1819173229)
      {
        v40 = *(DerivedStorage + 32);
        if (!v40 || (v41 = CFRetain(v40)) == 0)
        {
          v41 = CFRetain(@"No Name Endpoint");
        }

        *a6 = 8;
        if (a5 < 8)
        {
          v14 = 561211770;
        }

        else
        {
          v14 = 0;
          *a7 = CFRetain(v41);
        }

        if (v41)
        {
          CFRelease(v41);
        }

        return v14;
      }

      v23 = 1819569763;
      goto LABEL_81;
    }

    if (v13 == 1818850926)
    {
      *a6 = 4;
      if (a5 >= 4)
      {
        v14 = 0;
        v15 = *(DerivedStorage + 172) == 0;
        goto LABEL_136;
      }

      return 561211770;
    }

    if (v13 != 1819107691)
    {
      return 2003332927;
    }

    *a6 = 8;
    if (a5 < 8)
    {
      return 561211770;
    }

    v22 = @"Apple, Inc.";
LABEL_125:
    v22 = CFRetain(v22);
LABEL_126:
    v14 = 0;
    *a7 = v22;
    return v14;
  }

  if (v13 > 1853059699)
  {
    if (v13 == 1853059700)
    {
      *a6 = 8;
      if (a5 < 8)
      {
        return 561211770;
      }

      v14 = 0;
      *a7 = *(*(DerivedStorage + 120) + 16);
      return v14;
    }

    if (v13 != 1870098020)
    {
      return 2003332927;
    }

    LODWORD(v29) = a5 >> 2;
    v30 = a2[1];
    if (v30 == 1869968496)
    {
      if (*(DerivedStorage + 144))
      {
        v42 = 2;
      }

      else
      {
        v42 = 1;
      }

      if (*(DerivedStorage + 152))
      {
        ++v42;
      }

      if (v29 >= v42)
      {
        v32 = v42;
      }

      else
      {
        v32 = a5 >> 2;
      }

      if (a5 >= 4)
      {
        *a7 = sub_1DF8(*(DerivedStorage + 136));
        if (v32 >= 2)
        {
          v43 = v12[18];
          if (v43)
          {
            *(a7 + 4) = sub_1DF8(v43);
            v44 = 2;
            LODWORD(v29) = 2;
            if (v32 == 2)
            {
              goto LABEL_159;
            }
          }

          else
          {
            v44 = 1;
          }

          v46 = v12[19];
          if (v46)
          {
            *(a7 + 4 * v44) = sub_1DF8(v46);
          }

          goto LABEL_179;
        }

        goto LABEL_166;
      }
    }

    else if (v30 != 1768845428)
    {
      if (v30 != 1735159650)
      {
        goto LABEL_159;
      }

      if (*(DerivedStorage + 144))
      {
        v31 = 2;
      }

      else
      {
        v31 = 1;
      }

      if (*(DerivedStorage + 152))
      {
        ++v31;
      }

      v32 = v29 >= v31 ? v31 : a5 >> 2;
      if (a5 >= 4)
      {
        *a7 = sub_1DF8(*(DerivedStorage + 136));
        if (v32 >= 2)
        {
          v33 = v12[18];
          if (!v33)
          {
            v29 = 1;
            goto LABEL_177;
          }

          *(a7 + 4) = sub_1DF8(v33);
          v29 = 2;
          if (v32 != 2)
          {
LABEL_177:
            v47 = v12[19];
            if (v47)
            {
              *(a7 + 4 * v29) = sub_1DF8(v47);
            }

LABEL_179:
            LODWORD(v29) = v32;
          }

LABEL_159:
          v14 = 0;
          v28 = 4 * v29;
          goto LABEL_171;
        }

LABEL_166:
        LODWORD(v29) = 1;
        goto LABEL_159;
      }
    }

    LODWORD(v29) = 0;
    goto LABEL_159;
  }

  if (v13 == 1836411236)
  {
    v22 = *(DerivedStorage + 40);
    if (!v22)
    {
      goto LABEL_123;
    }

    *a6 = 8;
    if (a5 < 8)
    {
      return 561211770;
    }

    goto LABEL_125;
  }

  if (v13 != 1853059619)
  {
    return 2003332927;
  }

  v14 = 0;
  *a6 = 0;
  return v14;
}

uint64_t sub_9A04(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, int a5, double *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = DerivedStorage;
  v45 = 0;
  v46 = 0;
  v11 = *a2;
  if (*a2 == 1718383987)
  {
    if (sub_9F6C())
    {
      v25 = 0;
      *(*(v10 + 15) + 168) = 1;
    }

    else
    {
      v25 = 1970171760;
      sub_E2A4();
    }

    goto LABEL_44;
  }

  if (v11 == 1987012963)
  {
    if (!sub_A05C())
    {
      v25 = 1970171760;
      sub_E290();
      goto LABEL_44;
    }

    if (a5 == 4)
    {
      v29 = *a6;
      *(v10 + 88) = *a6;
      v30 = CMBaseObjectGetDerivedStorage();
      v31 = v30;
      *&__s2[0] = 0;
      if (v29)
      {
        v32 = &kCFBooleanTrue;
      }

      else
      {
        v32 = &kCFBooleanFalse;
      }

      v33 = *(v30 + 104);
      CMBaseObject = FigEndpointStreamGetCMBaseObject();
      v35 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v35 || v35(CMBaseObject, kFigEndpointStreamProperty_Type, kCFAllocatorDefault, __s2))
      {
        sub_E268();
      }

      else if (FigCFEqual())
      {
        if (dword_181C8 <= 50 && (dword_181C8 != -1 || _LogCategory_Initialize()))
        {
          v40 = *(v31 + 104);
          LogPrintF();
        }

        v36 = *(v31 + 104);
        v37 = FigEndpointStreamGetCMBaseObject();
        v38 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v38)
        {
          v38(v37, kAPEndpointStreamProperty_IsHomeTheaterFaceTime, *v32);
        }
      }

      if (*&__s2[0])
      {
        CFRelease(*&__s2[0]);
      }

      goto LABEL_43;
    }

    v25 = 561211770;
LABEL_36:
    APSLogErrorAt();
    goto LABEL_44;
  }

  if (v11 != 1853059700)
  {
    v25 = 2003332927;
    goto LABEL_44;
  }

  memset(__s2, 0, 40);
  v12 = *(DerivedStorage + 120);
  v13 = *(v12 + 32);
  __s1 = *(v12 + 16);
  v42 = v13;
  v43 = *(v12 + 48);
  if (a5 != 8)
  {
    v25 = 561211770;
    goto LABEL_36;
  }

  v14 = *a6;
  if (*a6 == *&__s1)
  {
LABEL_43:
    v25 = 0;
    goto LABEL_44;
  }

  v15 = *(DerivedStorage + 136);
  v16 = FigHALAudioStreamGetCMBaseObject();
  v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v17)
  {
    v25 = 4294954514;
    goto LABEL_36;
  }

  v18 = v17(v16, kFigHALAudioStreamProperty_SupportedPCMFormats, kCFAllocatorDefault, &v45);
  if (v18)
  {
    v25 = v18;
    goto LABEL_36;
  }

  v19 = v45;
  Length = CFDataGetLength(v45);
  if (Length < 0x70)
  {
    v25 = 4294967246;
LABEL_52:
    sub_E2B8();
  }

  else
  {
    v21 = Length / 0x38;
    BytePtr = CFDataGetBytePtr(v19);
    v23 = 0;
    do
    {
      if (*(BytePtr + 5) <= v14 && *(BytePtr + 6) >= v14)
      {
        v23 = BytePtr;
        if (*(BytePtr + 7) == HIDWORD(v42))
        {
          v23 = BytePtr;
          if (*(BytePtr + 8) >= v43)
          {
            v23 = BytePtr;
            goto LABEL_16;
          }
        }
      }

      BytePtr += 56;
      --v21;
    }

    while (v21);
    if (!v23)
    {
      v25 = 1970171760;
      goto LABEL_52;
    }

LABEL_16:
    *__s2 = v14;
    v24 = *(v23 + 24);
    *(__s2 + 8) = *(v23 + 8);
    *(&__s2[1] + 8) = v24;
    if (!memcmp(&__s1, __s2, 0x28uLL))
    {
      goto LABEL_43;
    }

    sub_1DF8(*(v10 + 17));
    v25 = FigHALAudioConfigChangeCreateRecord();
    if (v25)
    {
      APSLogErrorAt();
    }

    else
    {
      v26 = v46;
      *(v46 + 16) = __s2[0];
      *(v26 + 32) = __s2[1];
      *(v26 + 48) = *&__s2[2];
      v27 = *(v10 + 1);
      v28 = *v10;
      FigHALAudioConfigChangeSendRequest();
      v46 = 0;
    }
  }

LABEL_44:
  FigHALAudioConfigChangeDisposeRecord();
  if (v45)
  {
    CFRelease(v45);
  }

  return v25;
}

BOOL sub_9F6C()
{
  cf1 = 0;
  v0 = *(CMBaseObjectGetDerivedStorage() + 104);
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v3 = *(*(VTable + 8) + 48);
  if (!v3 || (v4 = *(VTable + 8) + 48, v3(CMBaseObject, kFigEndpointStreamProperty_Type, kCFAllocatorDefault, &cf1)))
  {
    sub_E308();
    v5 = 1;
  }

  else
  {
    v5 = CFEqual(cf1, kFigEndpointStreamType_LowLatencyAudio) == 0;
  }

  if (cf1)
  {
    CFRelease(cf1);
  }

  return v5;
}

BOOL sub_A05C()
{
  cf1 = 0;
  v0 = *(CMBaseObjectGetDerivedStorage() + 104);
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v2 || v2(CMBaseObject, kFigEndpointStreamProperty_Type, kCFAllocatorDefault, &cf1))
  {
    sub_E35C();
  }

  else
  {
    if (cf1)
    {
      v3 = CFEqual(cf1, kFigEndpointStreamType_LowLatencyAudio) != 0;
      goto LABEL_5;
    }

    sub_E330();
  }

  v3 = 0;
LABEL_5:
  if (cf1)
  {
    CFRelease(cf1);
  }

  return v3;
}

uint64_t sub_A158()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf1 = 0;
  v1 = *(DerivedStorage + 104);
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3 || v3(CMBaseObject, kFigEndpointStreamProperty_Type, kCFAllocatorDefault, &cf1))
  {
    sub_E384();
    v5 = 0;
  }

  else
  {
    if (CFEqual(cf1, kFigEndpointStreamType_LowLatencyAudio) && !*(DerivedStorage + 88))
    {
      UInt32 = 128;
    }

    else if (*(*(DerivedStorage + 120) + 80))
    {
      if (FigHALAudioConduitDeviceCopyProperty())
      {
        if (dword_181C8 <= 90 && (dword_181C8 != -1 || _LogCategory_Initialize()))
        {
          v8 = *(*(DerivedStorage + 120) + 80);
          LogPrintF();
          UInt32 = 480;
        }

        else
        {
          UInt32 = 480;
        }
      }

      else
      {
        UInt32 = FigCFNumberGetUInt32();
        if (dword_181C8 <= 50 && (dword_181C8 != -1 || _LogCategory_Initialize()))
        {
          v9 = *(*(DerivedStorage + 120) + 80);
          LogPrintF();
        }
      }
    }

    else
    {
      UInt32 = 0;
    }

    IntWithDefault = APSSettingsGetIntWithDefault();
    if (IntWithDefault)
    {
      v5 = IntWithDefault;
      if (dword_181C8 <= 50 && (dword_181C8 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    else
    {
      if (dword_181C8 <= 50 && (dword_181C8 != -1 || _LogCategory_Initialize()))
      {
        *(DerivedStorage + 88);
        LogPrintF();
      }

      v5 = UInt32;
    }
  }

  if (cf1)
  {
    CFRelease(cf1);
  }

  return v5;
}

uint64_t sub_A490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 8);
  result = VTable + 8;
  v9 = *(v8 + 56);
  if (v9)
  {

    return v9(CMBaseObject, a2, a3);
  }

  return result;
}

CFTypeRef sub_A544()
{
  result = *(CMBaseObjectGetDerivedStorage() + 24);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

uint64_t sub_A57C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage;
  if (a2 != 1818326115 && a2 != 1718579821)
  {
    fig_log_get_emitter();
    v11 = FigSignalErrorAtGM();
    goto LABEL_10;
  }

  if (!a3)
  {
    sub_E3AC(&v17);
    v11 = v17;
    goto LABEL_10;
  }

  v15 = *(a3 + 4);
  v16 = *(a3 + 12);
  v7 = *(DerivedStorage + 136);
  VTable = CMBaseObjectGetVTable();
  v9 = *(*(VTable + 24) + 16);
  if (!v9)
  {
    v11 = 4294954514;
    goto LABEL_8;
  }

  v10 = *(VTable + 24) + 16;
  v11 = v9(v7, a2, a3);
  if (v11)
  {
LABEL_8:
    APSLogErrorAt();
    goto LABEL_10;
  }

  v12 = *(v6 + 1);
  v13 = *v6;
  FigHALAudioPropertySendChanges();
LABEL_10:
  FigHALAudioConfigChangeDisposeRecord();
  return v11;
}

uint64_t sub_A728()
{
  v52[0] = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v50 = kCMTimeInvalid;
  v51 = 0;
  v49 = v50;
  v47 = 0;
  v48 = 0;
  *bytes = 0u;
  v46 = 0u;
  mach_absolute_time();
  if (!*(DerivedStorage + 112))
  {
    sub_E7C8(v52, &time);
    goto LABEL_100;
  }

  if (*(DerivedStorage + 172))
  {
    sub_E424(v52, &time);
LABEL_100:
    Mutable = 0;
    SInt32 = 0;
    v3 = 0;
    if (!LODWORD(time.value))
    {
      goto LABEL_76;
    }

    goto LABEL_65;
  }

  APSRealTimeAllocatorGetDefault();
  if (*(DerivedStorage + 168))
  {
LABEL_4:
    Mutable = 0;
LABEL_5:
    SInt32 = 0;
    v3 = 0;
    goto LABEL_64;
  }

  v5 = DerivedStorage + 120;
  v4 = *(DerivedStorage + 120);
  v6 = *(v4 + 32);
  *(v4 + 104) = *(v4 + 16);
  *(v4 + 120) = v6;
  *(v4 + 136) = *(v4 + 48);
  v7 = *(DerivedStorage + 120);
  v8 = *(v7 + 128);
  v9 = *(v7 + 104);
  *(v7 + 172) = 0;
  *(v7 + 176) = v9;
  *(v7 + 180) = v8;
  *(v7 + 168) = 0;
  *(*(DerivedStorage + 120) + 160) = 0;
  v11 = (DerivedStorage + 176);
  v10 = *(DerivedStorage + 176);
  if (v10)
  {
    CFRelease(v10);
    *v11 = 0;
  }

  v12 = *(DerivedStorage + 72);
  if (FigCFEqual())
  {
    v13 = kCFAllocatorDefault;
    v52[0] = CMTimeSyncClockCreateForSystemDomainClockIdentifier();
    if (v52[0])
    {
      sub_E4AC();
      goto LABEL_4;
    }

    v14 = v51;
  }

  else
  {
    HostTimeClock = CMClockGetHostTimeClock();
    if (HostTimeClock)
    {
      v14 = CFRetain(HostTimeClock);
    }

    else
    {
      v14 = 0;
    }

    v51 = v14;
    v13 = kCFAllocatorDefault;
  }

  v52[0] = CMTimebaseCreateWithSourceClock(v13, v14, (DerivedStorage + 176));
  if (v52[0])
  {
    sub_E4D4();
    goto LABEL_4;
  }

  CMClockGetTime(&v50, v51);
  v16 = v51;
  v17 = CMClockGetHostTimeClock();
  time = v50;
  CMSyncConvertTime(&v49, &time, v16, v17);
  v18 = *v11;
  time = kCMTimeZero;
  immediateSourceTime = v50;
  v52[0] = CMTimebaseSetRateAndAnchorTime(v18, 1.0, &time, &immediateSourceTime);
  if (v52[0])
  {
    sub_E4FC();
    goto LABEL_4;
  }

  v19 = *v5;
  v52[0] = APAudioSourceConduitCreate();
  if (v52[0])
  {
    sub_E524();
    goto LABEL_4;
  }

  if (IsAppleInternalBuild())
  {
    v20 = *v5;
    APSRingBufferCreate();
  }

  v21 = *(DerivedStorage + 136);
  v22 = *(*(CMBaseObjectGetVTable() + 24) + 32);
  if (!v22)
  {
    v52[0] = -12782;
    goto LABEL_92;
  }

  v52[0] = v22(v21);
  if (v52[0])
  {
LABEL_92:
    sub_E7A0();
    goto LABEL_4;
  }

  Mutable = CFDictionaryCreateMutable(v13, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    time = v49;
    v52[0] = FigCFDictionarySetCMTime();
    if (v52[0])
    {
      sub_E54C();
      goto LABEL_5;
    }

    v23 = *(*v5 + 144);
    FigCFDictionarySetValue();
    if (*(*v5 + 56))
    {
      ASBD = APSAudioFormatDescriptionGetASBD();
      v3 = CFDataCreate(v13, ASBD, 40);
      if (v3)
      {
        FigCFDictionarySetValue();
        if (dword_181C8 <= 50 && (dword_181C8 != -1 || _LogCategory_Initialize()))
        {
          sub_E574(DerivedStorage + 120);
        }

        goto LABEL_39;
      }

      sub_E5C8(v52);
    }

    else
    {
      if (*(DerivedStorage + 84) != 1885433964 || *(*v5 + 44) < 3u)
      {
        v3 = 0;
        goto LABEL_39;
      }

      v52[0] = ASBDToAPAudioFormat();
      if (v52[0])
      {
        sub_E608();
        goto LABEL_5;
      }

      APAudioFormatGetTransportAudioFormatForPCMFormatSender();
      v52[0] = APAudioFormatToASBD();
      if (v52[0])
      {
        sub_E630();
        goto LABEL_5;
      }

      v3 = CFDataCreate(v13, bytes, 40);
      if (v3)
      {
        FigCFDictionarySetValue();
        if (dword_181C8 <= 50 && (dword_181C8 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

LABEL_39:
        if (*(DerivedStorage + 89))
        {
          v25 = *(DerivedStorage + 104);
          FigCFDictionarySetValue();
        }

        v26 = *(DerivedStorage + 112);
        v52[0] = FigEndpointStreamAudioEngineResumeSync();
        if (v52[0])
        {
          sub_E658();
          SInt32 = 0;
          goto LABEL_64;
        }

        mach_absolute_time();
        SInt32 = FigCFNumberCreateSInt32();
        sub_A490(*(DerivedStorage + 104), kFigEndpointStreamProperty_SubStreamResumptionTimeOutMs, SInt32);
        v28 = *(DerivedStorage + 104);
        v27 = *(DerivedStorage + 112);
        v29 = FigEndpointStreamAudioEngineSetEndpointStreamSync();
        v52[0] = v29;
        if (v29 <= 200400)
        {
          if (v29 == -15486)
          {
            if (dword_181C8 <= 90 && (dword_181C8 != -1 || _LogCategory_Initialize()))
            {
              sub_E6BC();
            }

            goto LABEL_53;
          }

          if (!v29)
          {
            goto LABEL_55;
          }
        }

        else if (v29 == 200401 || v29 == 200470)
        {
          if (dword_181C8 <= 90 && (dword_181C8 != -1 || _LogCategory_Initialize()))
          {
            sub_E680();
          }

LABEL_53:
          v52[0] = 0;
LABEL_55:
          mach_absolute_time();
          v30 = *(DerivedStorage + 112);
          v31 = APSGetFBOPropertyInt64();
          if (v52[0])
          {
            v32 = 0;
          }

          else
          {
            v32 = v31;
          }

          *(DerivedStorage + 64) = v32;
          if (dword_181C8 <= 50 && (dword_181C8 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          APSSettingsGetDouble();
          v33 = *(*(DerivedStorage + 120) + 176);
          v34 = *(DerivedStorage + 176);
          v52[0] = APSZTSControllerCreate();
          if (v52[0])
          {
            sub_E6F8();
          }

          else
          {
            *(*(DerivedStorage + 120) + 184) = 1;
            *(DerivedStorage + 168) = 1;
          }

          goto LABEL_64;
        }

        APSLogErrorAt();
        if (dword_181C8 <= 90 && (dword_181C8 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

LABEL_64:
        if (!v52[0])
        {
          goto LABEL_76;
        }

        goto LABEL_65;
      }

      sub_E720(v52);
    }
  }

  else
  {
    sub_E760(v52);
    v3 = 0;
  }

  SInt32 = 0;
LABEL_65:
  v35 = *(DerivedStorage + 136);
  v36 = *(*(CMBaseObjectGetVTable() + 24) + 40);
  if (v36)
  {
    v36(v35);
  }

  v37 = *(*(DerivedStorage + 120) + 144);
  if (v37)
  {
    CFRelease(v37);
    *(*(DerivedStorage + 120) + 144) = 0;
  }

  v38 = *(DerivedStorage + 176);
  if (v38)
  {
    CFRelease(v38);
    *(DerivedStorage + 176) = 0;
  }

  v39 = *(DerivedStorage + 56);
  if (v39)
  {
    CFRelease(v39);
    *(DerivedStorage + 56) = 0;
  }

  v40 = *(DerivedStorage + 112);
  if (v40)
  {
    v41 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v41)
    {
      v41(v40, 0, 0, 0);
    }
  }

LABEL_76:
  if (v51)
  {
    CFRelease(v51);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (SInt32)
  {
    CFRelease(SInt32);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  mach_absolute_time();
  if (dword_181C8 <= 50)
  {
    if (dword_181C8 != -1 || _LogCategory_Initialize())
    {
      sub_E850();
    }

    if (dword_181C8 <= 50 && (dword_181C8 != -1 || _LogCategory_Initialize()))
    {
      sub_E8AC();
    }
  }

  return v52[0];
}

uint64_t sub_B0D8(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *(DerivedStorage + 64);
  if (*(*(DerivedStorage + 120) + 184))
  {
    v9 = DerivedStorage;
    mach_absolute_time();
    v10 = *(v9 + 56);
    ZeroTimeStamp = APSZTSControllerGetZeroTimeStamp();
    if (ZeroTimeStamp)
    {
      v14 = ZeroTimeStamp;
      sub_E908();
    }

    else
    {
      *a2 = 0;
      *a3 = 0;
      *a4 = 0;
      if (*(*(v9 + 120) + 88))
      {
        v16 = *a3;
        APSRingBufferEnqueueBytes();
      }

      v12 = *a2;
      v13 = *a3;
      kdebug_trace();
      return 0;
    }
  }

  else
  {
    sub_E930();
    return 1937010544;
  }

  return v14;
}

uint64_t sub_B1F4(uint64_t a1, int a2, BOOL *a3, BOOL *a4)
{
  if (*(*(CMBaseObjectGetDerivedStorage() + 120) + 184))
  {
    result = 0;
    *a3 = a2 == 1919513701;
    *a4 = a2 == 1919513701;
  }

  else
  {
    sub_E944();
    return 1937010544;
  }

  return result;
}

uint64_t sub_B260()
{
  if (*(*(CMBaseObjectGetDerivedStorage() + 120) + 184))
  {
    return 0;
  }

  sub_E958();
  return 1937010544;
}

uint64_t sub_B298()
{
  if (*(*(CMBaseObjectGetDerivedStorage() + 120) + 184))
  {
    return 0;
  }

  sub_E96C();
  return 1937010544;
}

void sub_B2D0(id a1)
{
  qword_182D8 = 0;
  unk_182E0 = "APHALAudioSharedState";
  qword_182E8 = sub_B330;
  unk_182F0 = 0;
  qword_182F8 = sub_B354;
  unk_18300 = 0u;
  unk_18310 = 0u;
  qword_182D0 = _CFRuntimeRegisterClass();
}

double sub_B330(_OWORD *a1)
{
  result = 0.0;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void sub_B354(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    CFRelease(v3);
  }

  a1[7] = 0;
}

uint64_t sub_B3B4()
{

  return LogPrintF();
}

uint64_t *sub_B3D8(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  return result;
}

uint64_t sub_B3E4(const __CFAllocator *a1, CFDataRef *a2)
{
  *bytes = 3240582185;
  v3 = CFDataCreate(a1, bytes, 8);
  if (v3)
  {
    v4 = v3;
    result = 0;
    *a2 = v4;
  }

  else
  {
    sub_E980(&v7);
    return v7;
  }

  return result;
}

uint64_t sub_B444(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const void *a5, void *a6)
{
  FigHALAudioObjectGetClassID();
  v10 = CMDerivedObjectCreate();
  if (v10)
  {
    v14 = v10;
    sub_E9FC();
  }

  else
  {
    v11 = FigHALAudioObjectMapperAddMapping();
    if (v11)
    {
      v14 = v11;
      sub_EA24();
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *DerivedStorage = a3;
      *(DerivedStorage + 8) = 0;
      *(DerivedStorage + 12) = a4;
      if (a5)
      {
        v13 = CFRetain(a5);
      }

      else
      {
        v13 = 0;
      }

      v14 = 0;
      *(DerivedStorage + 16) = v13;
      *a6 = 0;
    }
  }

  return v14;
}

uint64_t sub_B530(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const void *a5, void *a6)
{
  FigHALAudioObjectGetClassID();
  v10 = CMDerivedObjectCreate();
  if (v10)
  {
    v14 = v10;
    sub_EA4C();
  }

  else
  {
    v11 = FigHALAudioObjectMapperAddMapping();
    if (v11)
    {
      v14 = v11;
      sub_EA74();
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *DerivedStorage = a3;
      *(DerivedStorage + 8) = 0;
      *(DerivedStorage + 12) = a4;
      if (a5)
      {
        v13 = CFRetain(a5);
      }

      else
      {
        v13 = 0;
      }

      v14 = 0;
      *(DerivedStorage + 16) = v13;
      *a6 = 0;
    }
  }

  return v14;
}

void sub_B61C()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 16);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 16) = 0;
  }
}

CFStringRef sub_B650()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  BytePtr = CFDataGetBytePtr(*(DerivedStorage + 16));
  if (*(BytePtr + 1))
  {
    v2 = " MUTED";
  }

  else
  {
    v2 = "";
  }

  return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"APAudioVolumeControl ID %d Owner %d VolumeDB %f%s", *(DerivedStorage + 8), *(DerivedStorage + 12), *BytePtr, v2);
}

uint64_t sub_B6F4(uint64_t a1, int *a2)
{
  result = 0;
  v3 = *a2;
  if (*a2 <= 1818453105)
  {
    if (v3 > 1668047218)
    {
      v8 = v3 == 1668047219;
      v9 = 1668506480;
    }

    else
    {
      v8 = v3 == 1650682995;
      v9 = 1667591277;
    }

    goto LABEL_16;
  }

  if (v3 > 1818456931)
  {
    v8 = v3 == 1818456932 || v3 == 1937007734;
    v9 = 1818456950;
LABEL_16:
    if (v8 || v3 == v9)
    {
      return 1;
    }

    return result;
  }

  v4 = v3 - 1818453106;
  v5 = v4 > 4;
  v6 = (1 << v4) & 0x13;
  if (!v5 && v6 != 0)
  {
    return 1;
  }

  return result;
}

uint64_t sub_B7D8(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (*a2 > 1818453106)
  {
    if (v2 <= 1818456931)
    {
      if (v2 != 1818453107 && v2 != 1818453110)
      {
        return 0;
      }

      return 4;
    }

    if (v2 == 1818456932 || v2 == 1818456950)
    {
      return 4;
    }

    v6 = 1937007734;
LABEL_18:
    if (v2 == v6)
    {
      return 4;
    }

    else
    {
      return 0;
    }
  }

  if (v2 <= 1668047218)
  {
    if (v2 == 1650682995)
    {
      return 4;
    }

    v6 = 1667591277;
    goto LABEL_18;
  }

  if (v2 == 1668047219)
  {
    return 4;
  }

  if (v2 == 1818453106)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  if (v2 == 1668506480)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_B8C4(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, unsigned int a5, _DWORD *a6, int *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  BytePtr = CFDataGetBytePtr(*(DerivedStorage + 16));
  v13 = *a2;
  v14 = 2003332927;
  if (v13 > 1818453106)
  {
    if (v13 <= 1818456931)
    {
      if (v13 != 1818453107)
      {
        if (v13 != 1818453110)
        {
          return v14;
        }

        if (*(BytePtr + 1))
        {
          v16 = -1022361600;
        }

        else
        {
          v16 = *BytePtr;
        }

        *a6 = 4;
        if (a5 < 4)
        {
          v14 = 561211770;
          goto LABEL_46;
        }

LABEL_43:
        v14 = 0;
        goto LABEL_44;
      }

      if (a5 != 4)
      {
        v14 = 561211770;
        goto LABEL_46;
      }

      v17 = *a7;
      APSVolumeConvertDBToSliderValue();
    }

    else
    {
      if (v13 != 1818456932)
      {
        if (v13 != 1818456950)
        {
          if (v13 != 1937007734)
          {
            return v14;
          }

          *a6 = 4;
          if (a5 < 4)
          {
            return 561211770;
          }

          v14 = 0;
          v15 = *(DerivedStorage + 12);
LABEL_33:
          *a7 = v15;
          return v14;
        }

        v16 = 0;
        if (!*(BytePtr + 1))
        {
          v19 = *BytePtr;
          APSVolumeConvertDBToSliderValue();
        }

        *a6 = 4;
        if (a5 < 4)
        {
          v14 = 561211770;
LABEL_46:
          APSLogErrorAt();
          return v14;
        }

        goto LABEL_43;
      }

      if (a5 != 4)
      {
        v14 = 561211770;
        goto LABEL_46;
      }

      v18 = *a7;
      APSVolumeConvertSliderValueToDB();
    }

    v14 = 0;
    *a6 = 4;
LABEL_44:
    *a7 = v16;
    return v14;
  }

  if (v13 <= 1668047218)
  {
    if (v13 != 1650682995)
    {
      if (v13 != 1667591277)
      {
        return v14;
      }

      *a6 = 4;
      if (a5 >= 4)
      {
        v14 = 0;
        *a7 = 0;
        return v14;
      }

      return 561211770;
    }

    *a6 = 4;
    if (a5 < 4)
    {
      return 561211770;
    }

    v14 = 0;
    v15 = 1818588780;
    goto LABEL_33;
  }

  switch(v13)
  {
    case 1668047219:
      *a6 = 4;
      if (a5 < 4)
      {
        return 561211770;
      }

      v14 = 0;
      v15 = 1986817381;
      goto LABEL_33;
    case 1668506480:
      *a6 = 4;
      if (a5 < 4)
      {
        return 561211770;
      }

      v14 = 0;
      v15 = 1869968496;
      goto LABEL_33;
    case 1818453106:
      *a6 = 16;
      if (a5 >= 0x10)
      {
        v14 = 0;
        *a7 = xmmword_F3C0;
        return v14;
      }

      return 561211770;
  }

  return v14;
}

uint64_t sub_BBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  BytePtr = CFDataGetBytePtr(*(DerivedStorage + 16));
  v17 = *(a2 + 4);
  if (*a2 == 1818453110)
  {
    if (a5 == 4)
    {
      v12 = *a6;
      goto LABEL_7;
    }

    v15 = 561211770;
LABEL_11:
    APSLogErrorAt();
    return v15;
  }

  if (*a2 != 1818456950)
  {
    return 2003332927;
  }

  if (a5 != 4)
  {
    v15 = 561211770;
    goto LABEL_11;
  }

  v11 = *a6;
  APSVolumeConvertSliderValueToDB();
LABEL_7:
  *BytePtr = v12;
  v13 = *DerivedStorage;
  v14 = *(DerivedStorage + 8);
  FigHALAudioPropertySendChanges();
  return 0;
}

CFStringRef sub_BD1C()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(CFDataGetBytePtr(*(DerivedStorage + 16)) + 1))
  {
    v1 = "";
  }

  else
  {
    v1 = "Not ";
  }

  return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"APAudioMuteControl ID %d Owner %d %sMuted", *(DerivedStorage + 8), *(DerivedStorage + 12), v1);
}

uint64_t sub_BD98(uint64_t a1, int *a2)
{
  result = 0;
  v3 = *a2;
  if (*a2 > 1668047218)
  {
    v4 = v3 == 1668047219 || v3 == 1937007734;
    v5 = 1668506480;
  }

  else
  {
    v4 = v3 == 1650682995 || v3 == 1650685548;
    v5 = 1667591277;
  }

  if (v4 || v3 == v5)
  {
    return 1;
  }

  return result;
}

uint64_t sub_BE1C(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (*a2 > 1668047218)
  {
    if (v2 != 1937007734 && v2 != 1668506480 && v2 != 1668047219)
    {
      return 0;
    }

    return 4;
  }

  if (v2 == 1650682995)
  {
    return 4;
  }

  if (v2 == 1667591277)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  if (v2 == 1650685548)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_BEAC(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, unsigned int a5, _DWORD *a6, int *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = *a2;
  result = 2003332927;
  if (*a2 > 1668047218)
  {
    if (v12 == 1668047219)
    {
      *a6 = 4;
      if (a5 > 3)
      {
        v14 = 1836414053;
        goto LABEL_21;
      }

      return 561211770;
    }

    if (v12 == 1668506480)
    {
      *a6 = 4;
      if (a5 > 3)
      {
        v14 = 1869968496;
        goto LABEL_21;
      }

      return 561211770;
    }

    if (v12 != 1937007734)
    {
      return result;
    }

    *a6 = 4;
    if (a5 < 4)
    {
      return 561211770;
    }

    v15 = (DerivedStorage + 12);
    goto LABEL_18;
  }

  if (v12 != 1650682995)
  {
    if (v12 != 1650685548)
    {
      if (v12 != 1667591277)
      {
        return result;
      }

      *a6 = 4;
      if (a5 > 3)
      {
        v14 = 0;
LABEL_21:
        result = 0;
        *a7 = v14;
        return result;
      }

      return 561211770;
    }

    *a6 = 4;
    if (a5 < 4)
    {
      return 561211770;
    }

    v15 = CFDataGetBytePtr(*(DerivedStorage + 16)) + 4;
LABEL_18:
    v14 = *v15;
    goto LABEL_21;
  }

  *a6 = 4;
  if (a5 > 3)
  {
    v14 = 1953458028;
    goto LABEL_21;
  }

  return 561211770;
}

uint64_t sub_C01C(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, int a5, int *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*a2 != 1650685548)
  {
    return 2003332927;
  }

  if (a5 == 4)
  {
    v10 = DerivedStorage;
    v11 = *a6;
    BytePtr = CFDataGetBytePtr(*(DerivedStorage + 16));
    if (v11 != *(BytePtr + 1))
    {
      *(BytePtr + 1) = v11 != 0;
      v13 = *v10;
      v14 = *(v10 + 8);
      v15 = a2[1];
      v16 = a2[2];
      FigHALAudioPropertySendOneChange();
    }

    return 0;
  }

  else
  {
    v17 = 561211770;
    APSLogErrorAt();
  }

  return v17;
}

uint64_t sub_C0F0()
{
  if (IsAppleInternalBuild())
  {
    LogControl();
  }

  else
  {
    LogControl();
    v0 = dlsym(0xFFFFFFFFFFFFFFFFLL, "MediaControlSenderLogControl");
    if (v0)
    {
      v0("?.*:output2=");
    }
  }

  return LogControl();
}

uint64_t sub_C1DC(_DWORD *a1)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  if (!v2)
  {
    return 1;
  }

  APSLogErrorAt();
  return 0;
}

uint64_t sub_C27C(uint64_t a1, CFTypeRef *a2)
{
  APSLogErrorAt();
  if (*a2)
  {
    CFRelease(*a2);
  }

  return APSLogErrorAt();
}

BOOL sub_C404(_DWORD *a1)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  return v2 == 0;
}

uint64_t sub_C52C(_DWORD *a1)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  if (!v2)
  {
    return 1;
  }

  APSLogErrorAt();
  return 0;
}

double sub_C5CC(uint64_t *a1)
{
  BytePtr = CFDataGetBytePtr(*(*a1 + 64));
  v3 = *a1;
  v4 = *BytePtr;
  v5 = *(BytePtr + 1);
  *(v3 + 48) = *(BytePtr + 4);
  *(v3 + 16) = v4;
  *(v3 + 32) = v5;
  result = *(BytePtr + 5);
  *(*a1 + 16) = result;
  return result;
}

uint64_t sub_C674(uint64_t a1)
{
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 16);
  return sub_321C();
}

uint64_t sub_C780(_DWORD *a1)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_C814(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = *(v1 + 24);
  v3 = *(v1 + 16);
  return sub_321C();
}

uint64_t sub_C8E4(_DWORD *a1)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  sub_5410();
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  if (!v2)
  {
    return 1;
  }

  APSLogErrorAt();
  return 0;
}

uint64_t sub_C97C(uint64_t *a1)
{
  v2 = *(*a1 + 72);
  result = APSAudioFormatDescriptionListGetFormatCount();
  if (result)
  {
    if (dword_180E0 < 51)
    {
      if (dword_180E0 != -1)
      {
        goto LABEL_4;
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    result = CFDataGetBytePtr(*(*a1 + 64));
    v5 = *a1;
    v6 = *result;
    v7 = *(result + 16);
    *(v5 + 48) = *(result + 32);
    *(v5 + 16) = v6;
    *(v5 + 32) = v7;
    *(*a1 + 16) = *(result + 40);
    if (dword_180E0 < 51)
    {
      if (dword_180E0 != -1)
      {
        return sub_5434();
      }

      result = _LogCategory_Initialize();
      if (result)
      {
LABEL_4:
        v4 = *a1;
        return sub_5434();
      }
    }
  }

  return result;
}

uint64_t sub_CBC4(uint64_t a1)
{
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 16);
  return sub_5434();
}

uint64_t sub_CC1C(uint64_t a1)
{
  v1 = *(*a1 + 56);
  APSAudioFormatDescriptionGetASBD();
  return sub_5434();
}

uint64_t sub_CC6C(uint64_t a1, _DWORD *a2)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  sub_5410();
  sub_544C();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t sub_CD20(_DWORD *a1)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  sub_5410();
  sub_544C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_CDF8(_DWORD *a1)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  sub_5410();
  sub_544C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_CF24(_DWORD *a1)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  sub_5410();
  sub_544C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_CF98(double *a1, double *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  return kdebug_trace();
}

uint64_t sub_CFDC(uint64_t a1, uint64_t a2)
{
  result = APSLogErrorAt();
  *(*a2 + 168) = 1;
  return result;
}

uint64_t sub_D124(_DWORD *a1)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  sub_5410();
  sub_544C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_D1AC(uint64_t a1)
{
  v1 = *(a1 + 64);
  v4 = *(v1 + 24);
  v3 = *(v1 + 16);
  return sub_321C();
}

uint64_t sub_D204(uint64_t *a1)
{
  v4 = a1[2];
  v2 = *a1;
  v3 = *(a1 + 2);
  return sub_321C();
}

uint64_t sub_D250(uint64_t *a1)
{
  v4 = a1[3];
  v3 = *(a1 + 1);
  v2 = *a1;
  return sub_5434();
}

uint64_t sub_D2A8(uint64_t *a1)
{
  v5 = a1[3];
  v4 = a1[2];
  v3 = a1[1];
  v2 = *a1;
  return sub_5434();
}

uint64_t sub_D308(uint64_t *a1)
{
  v5 = a1[3];
  v3 = a1[1];
  v4 = a1[2];
  v2 = *a1;
  return sub_5434();
}

uint64_t *APHALPlugin_Create(uint64_t a1, const void *a2)
{
  if (APSIsRemoteHALPluginLoadingEnabled())
  {
    if (!FigServer_IsAirplayd())
    {
      return 0;
    }

    off_18150 = 0;
  }

  v3 = CFUUIDGetConstantUUIDWithBytes(0, 0x44u, 0x3Au, 0xBAu, 0xB8u, 0xE7u, 0xB3u, 0x49u, 0x1Au, 0xB9u, 0x85u, 0xBEu, 0xB9u, 0x18u, 0x70u, 0x30u, 0xDBu);
  if (!CFEqual(a2, v3))
  {
    return 0;
  }

  v4 = &qword_182A8;
  qword_182A8 = FigHALPluginDriverGetInterface();
  if (FigHALAudioObjectMapperCreate() || FigHALAudioCreateBrokeredPluginObjectWithSpecialInstantiator())
  {
    APSLogErrorAt();
    return 0;
  }

  FigAtomicIncrement32();
  return v4;
}

void sub_D4E8(uint64_t a1, CFTypeRef *a2)
{
  APSLogErrorAt();
  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t sub_D528(_DWORD *a1)
{
  APSLogErrorAt();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_D6D4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  return sub_5434();
}

uint64_t sub_D718(uint64_t a1)
{
  *(a1 + 4);
  v2 = *a1;
  return sub_5434();
}

uint64_t sub_D77C(uint64_t a1)
{
  *(a1 + 4);
  v2 = *a1;
  return sub_5434();
}

uint64_t sub_D9B8(_DWORD *a1)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  sub_5410();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_DACC(_DWORD *a1)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  sub_5410();
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  if (!v2)
  {
    return 1;
  }

  APSLogErrorAt();
  return 0;
}

uint64_t sub_DF28(uint64_t *a1, uint64_t *a2)
{
  sub_B3D8(a1, a2);
  v4 = *v2 == 0;
  return sub_5434();
}

uint64_t sub_DFA4(_DWORD *a1)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  sub_5410();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_E05C()
{
  result = APSLogErrorAt();
  if (dword_181C8 <= 90)
  {
    if (dword_181C8 != -1)
    {
      return sub_B3B4();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_B3B4();
    }
  }

  return result;
}

uint64_t sub_E1A0()
{
  mach_absolute_time();
  v0 = UpTicksPerSecond();
  sub_B390(v0);
  return sub_5434();
}

uint64_t sub_E3AC(_DWORD *a1)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  sub_5410();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_E424(_DWORD *a1, _DWORD *a2)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  sub_5410();
  result = FigSignalErrorAtGM();
  *a2 = result;
  *a1 = result;
  return result;
}

uint64_t sub_E574(uint64_t a1)
{
  v1 = *(*a1 + 56);
  APSAudioFormatDescriptionGetASBD();
  return sub_5434();
}

uint64_t sub_E5C8(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -12786;
  return result;
}

uint64_t sub_E720(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -12786;
  return result;
}

uint64_t sub_E760(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -12786;
  return result;
}

uint64_t sub_E7C8(_DWORD *a1, _DWORD *a2)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  sub_5410();
  result = FigSignalErrorAtGM();
  *a2 = result;
  *a1 = result;
  return result;
}

uint64_t sub_E850()
{
  v0 = UpTicksPerSecond();
  sub_B390(v0);
  return sub_5434();
}

uint64_t sub_E8AC()
{
  v0 = UpTicksPerSecond();
  sub_B390(v0);
  return sub_5434();
}

uint64_t sub_E980(_DWORD *a1)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}