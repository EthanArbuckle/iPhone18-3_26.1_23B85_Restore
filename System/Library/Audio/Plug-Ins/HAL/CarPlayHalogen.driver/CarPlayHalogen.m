uint64_t sub_8D8()
{

  return LogPrintF();
}

uint64_t sub_90C(uint64_t a1)
{
  *(*(a1 + 392) + 16);
  v2 = *(a1 + 40);
  return sub_8D8();
}

uint64_t sub_A78(uint64_t a1, int *a2)
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

uint64_t sub_B68(const void *a1, unsigned int *a2, uint64_t a3, uint64_t a4, unsigned int a5, int *a6, uint64_t a7)
{
  v47 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (dword_10000 <= 30 && (dword_10000 != -1 || _LogCategory_Initialize()))
  {
    sub_6E60(DerivedStorage, a2);
  }

  v13 = *a2;
  if (*a2 <= 1836411235)
  {
    if (v13 <= 1684236337)
    {
      if (v13 <= 1668050794)
      {
        if (v13 > 1668047218)
        {
          if (v13 == 1668047219)
          {
            *a6 = 4;
            if (a5 >= 4)
            {
              v14 = 0;
              v15 = 1633969526;
              goto LABEL_121;
            }

            goto LABEL_144;
          }

          v21 = 1668049764;
          goto LABEL_81;
        }

        if (v13 != 1634429294)
        {
          if (v13 == 1650682995)
          {
            *a6 = 4;
            if (a5 >= 4)
            {
              v14 = 0;
              v15 = 1634689642;
              goto LABEL_121;
            }

            goto LABEL_144;
          }

          goto LABEL_125;
        }

        *a6 = 4;
        if (a5 >= 4)
        {
          *a7 = *(DerivedStorage + 16);
        }

        goto LABEL_133;
      }

      if (v13 > 1668575851)
      {
        if (v13 == 1668575852)
        {
          *a6 = 0;
          goto LABEL_133;
        }

        if (v13 != 1668641652)
        {
          goto LABEL_125;
        }

        if (a5 <= 0x5F)
        {
          sub_404C(&v47);
          goto LABEL_147;
        }

        *(a7 + 32) = xmmword_7FF8;
        *(a7 + 48) = *"sulfwwar";
        *(a7 + 64) = xmmword_8018;
        *(a7 + 80) = unk_8028;
        *a7 = *"tatswwar";
        *(a7 + 16) = *"wwar";
        v24 = 96;
LABEL_110:
        *a6 = v24;
        goto LABEL_133;
      }

      if (v13 == 1668050795)
      {
        *a6 = 4;
        if (a5 >= 4)
        {
          v14 = 0;
          v15 = 1835103847;
          goto LABEL_121;
        }

        goto LABEL_144;
      }

      if (v13 != 1668510818)
      {
        goto LABEL_125;
      }

      *a6 = 4;
      if (a5 < 4)
      {
        goto LABEL_144;
      }

      v22 = *(DerivedStorage + 80);
      v14 = 0;
      v23 = APAudioZeroTimeStampProviderIsStable() == 0;
    }

    else
    {
      if (v13 > 1751737453)
      {
        if (v13 <= 1819107690)
        {
          if (v13 == 1751737454)
          {
LABEL_82:
            *a6 = 4;
            if (a5 >= 4)
            {
              v14 = 0;
              *a7 = 0;
              goto LABEL_145;
            }

            goto LABEL_144;
          }

          if (v13 != 1818850926)
          {
            goto LABEL_125;
          }

          *a6 = 4;
          if (a5 >= 4)
          {
            v14 = 0;
            v15 = *(DerivedStorage + 20) == 0;
            goto LABEL_121;
          }

          goto LABEL_144;
        }

        if (v13 == 1819107691)
        {
          *a6 = 8;
          if (a5 >= 8)
          {
            v34 = @"Apple, Inc.";
            goto LABEL_128;
          }

          goto LABEL_144;
        }

        if (v13 == 1819173229)
        {
          *a6 = 8;
          if (a5 >= 8)
          {
            v34 = *(DerivedStorage + 56);
            goto LABEL_128;
          }

LABEL_144:
          v14 = 561211770;
          goto LABEL_145;
        }

        if (v13 != 1819569763)
        {
          goto LABEL_125;
        }

        if (!*(*(DerivedStorage + 392) + 40))
        {
          v14 = 2003329396;
          sub_6FF0();
          goto LABEL_145;
        }

        LatencyInfo = APCarPlayAudioFormatInfoGetLatencyInfo();
        v17 = a2[1];
        if (v17 == 1768845428)
        {
          v18 = 4;
        }

        else
        {
          if (v17 != 1869968496)
          {
            v40 = 0;
            goto LABEL_138;
          }

          v18 = 8;
        }

        v40 = *(LatencyInfo + v18);
LABEL_138:
        v41 = *(*(DerivedStorage + 392) + 40);
        if (APCarPlayAudioFormatInfoGetStreamType() == 102 && a2[1] == 1869968496 && !*(DerivedStorage + 384))
        {
          v42 = *(*(DerivedStorage + 392) + 40);
          v40 += (*APCarPlayAudioFormatInfoGetHALDescription() * 400.0 / 1000.0);
        }

        *a6 = 4;
        if (a5 >= 4)
        {
          v14 = 0;
          *a7 = v40;
          goto LABEL_145;
        }

        goto LABEL_144;
      }

      if (v13 <= 1718839673)
      {
        if (v13 != 1684236338)
        {
          v21 = 1684434036;
          goto LABEL_81;
        }

        if (a5 <= 7)
        {
          sub_6F98(&v47);
          goto LABEL_147;
        }

        *a7 = 0x200000001;
        v24 = 8;
        goto LABEL_110;
      }

      if (v13 == 1718839674)
      {
        goto LABEL_88;
      }

      if (v13 != 1735354734)
      {
        goto LABEL_125;
      }

      *a6 = 4;
      if (a5 < 4)
      {
        goto LABEL_144;
      }

      v14 = 0;
      v23 = *(DerivedStorage + 416) == 0;
    }

    v15 = !v23;
    goto LABEL_121;
  }

  if (v13 > 1937007733)
  {
    if (v13 <= 1937011827)
    {
      if (v13 <= 1937010546)
      {
        if (v13 == 1937007734)
        {
          *a6 = 4;
          if (a5 >= 4)
          {
            v14 = 0;
            v15 = 1;
            goto LABEL_121;
          }

          goto LABEL_144;
        }

        v20 = 1937009955;
LABEL_54:
        if (v13 != v20)
        {
          goto LABEL_125;
        }

        LODWORD(theArray) = a5 >> 2;
        sub_5944(DerivedStorage, a2[1], a7, &theArray);
        v24 = 4 * theArray;
        goto LABEL_110;
      }

      if (v13 != 1937010547)
      {
        if (v13 != 1937011572)
        {
          goto LABEL_125;
        }

        *a6 = 4;
        if (a5 >= 4)
        {
          v14 = 0;
          v15 = *(DerivedStorage + 360);
          goto LABEL_121;
        }

        goto LABEL_144;
      }

      theArray = 0;
      v35 = *(CMBaseObjectGetDerivedStorage() + 24);
      CFGetAllocator(a1);
      if (FigEndpointCopyStreamsForTypeAndSubType())
      {
        sub_6F00();
      }

      else
      {
        sub_6F28();
      }

      *a6 = 4;
      if (a5 >= 4)
      {
        *a7 = 0;
        v47 = 0;
        goto LABEL_151;
      }

      v47 = 561211770;
      goto LABEL_132;
    }

    if (v13 > 1937012339)
    {
      if (v13 != 1937012340)
      {
        if (v13 == 1953653102)
        {
          *a6 = 4;
          if (a5 >= 4)
          {
            v14 = 0;
            v15 = 1937011307;
            goto LABEL_121;
          }

          goto LABEL_144;
        }

        if (v13 != 1969841184)
        {
          goto LABEL_125;
        }

LABEL_90:
        *a6 = 8;
        if (a5 >= 8)
        {
          v34 = *(DerivedStorage + 48);
LABEL_128:
          v14 = 0;
          *a7 = CFRetain(v34);
          goto LABEL_145;
        }

        goto LABEL_144;
      }

      v38 = *(DerivedStorage + 24);
      v39 = APSGetFBOPropertyInt64() != 0;
      *a6 = 4;
      if (a5 > 3)
      {
        *a7 = v39;
        goto LABEL_125;
      }

      v47 = 561211770;
      goto LABEL_132;
    }

    if (v13 == 1937011828)
    {
      *a6 = 4;
      if (a5 >= 4)
      {
        v14 = 0;
        v15 = *(DerivedStorage + 364);
        goto LABEL_121;
      }

      goto LABEL_144;
    }

    if (v13 != 1937012085)
    {
      goto LABEL_125;
    }

    v25 = *(DerivedStorage + 24);
    v26 = CFGetAllocator(a1);
    CMBaseObject = FigEndpointGetCMBaseObject();
    v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v28)
    {
      v47 = v28(CMBaseObject, kFigEndpointProperty_ID, v26, &cf);
      if (!v47)
      {
        *a6 = 8;
        if (a5 > 7)
        {
          *a7 = cf;
          return 0;
        }

        v47 = 561211770;
LABEL_132:
        APSLogErrorAt();
        goto LABEL_133;
      }
    }

    else
    {
      v47 = -12782;
    }

    sub_6ED8();
LABEL_133:
    v14 = v47;
    if (!v47)
    {
      goto LABEL_151;
    }

    goto LABEL_146;
  }

  if (v13 > 1919512166)
  {
    if (v13 > 1936092275)
    {
      if (v13 != 1936092276)
      {
        if (v13 != 1936879204)
        {
          if (v13 == 1937006964)
          {
            *a6 = 4;
            if (a5 >= 4)
            {
              v14 = 0;
              v15 = *(*(DerivedStorage + 392) + 16);
LABEL_121:
              *a7 = v15;
              goto LABEL_145;
            }

            goto LABEL_144;
          }

LABEL_125:
          v47 = 2003332927;
          goto LABEL_151;
        }

        if (!*(*(DerivedStorage + 392) + 40))
        {
          sub_6F54(&v47);
          goto LABEL_147;
        }

        HALDescription = APCarPlayAudioFormatInfoGetHALDescription();
        bzero(a7, a5);
        if (*(HALDescription + 28) == 1)
        {
          v37 = 6553601;
        }

        else
        {
          v37 = 6619138;
        }

        *a7 = v37;
        v24 = 32;
        goto LABEL_110;
      }

      goto LABEL_82;
    }

    if (v13 != 1919512167)
    {
      v21 = 1935763060;
LABEL_81:
      if (v13 != v21)
      {
        goto LABEL_125;
      }

      goto LABEL_82;
    }

LABEL_88:
    v29 = *(DerivedStorage + 80);
    APAudioZeroTimeStampProviderGetUpdateInterval();
    v31 = v30;
    v32 = *(*(DerivedStorage + 392) + 40);
    v33 = *APCarPlayAudioFormatInfoGetDescription();
    *a6 = 4;
    if (a5 >= 4)
    {
      v14 = 0;
      v15 = vcvtmd_u64_f64(v31 * v33);
      goto LABEL_121;
    }

    goto LABEL_144;
  }

  if (v13 > 1869180522)
  {
    if (v13 == 1869180523)
    {
      *a6 = 4;
      if (a5 >= 4)
      {
        v14 = 0;
        v15 = -1;
        goto LABEL_121;
      }

      goto LABEL_144;
    }

    v20 = 1870098020;
    goto LABEL_54;
  }

  if (v13 == 1836411236)
  {
    goto LABEL_90;
  }

  if (v13 != 1853059700)
  {
    goto LABEL_125;
  }

  if (*(*(DerivedStorage + 392) + 40))
  {
    v19 = APCarPlayAudioFormatInfoGetHALDescription();
    *a6 = 8;
    if (a5 >= 8)
    {
      v14 = 0;
      *a7 = *v19;
      goto LABEL_145;
    }

    goto LABEL_144;
  }

  v14 = 2003329396;
  sub_6FDC();
LABEL_145:
  v47 = v14;
  if (!v14)
  {
    goto LABEL_151;
  }

LABEL_146:
  if (v14 != 2003332927)
  {
LABEL_147:
    if (dword_10000 <= 90 && (dword_10000 != -1 || _LogCategory_Initialize()))
    {
      v45 = *a2;
      v44 = *(DerivedStorage + 40);
      LogPrintF();
    }
  }

LABEL_151:
  if (cf)
  {
    CFRelease(cf);
  }

  return v47;
}

uint64_t sub_1660(uint64_t a1, int *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 0;
  v5 = *a2;
  if (*a2 > 1853059618)
  {
    if (v5 <= 1937007733)
    {
      if (v5 <= 1919512166)
      {
        if (v5 > 1869180522)
        {
          if (v5 == 1869180523)
          {
            return 1;
          }

          v6 = 1870098020;
        }

        else
        {
          if (v5 == 1853059619)
          {
            return 1;
          }

          v6 = 1853059700;
        }

        goto LABEL_57;
      }

      if (v5 <= 1936092275)
      {
        if (v5 == 1919512167)
        {
          return 1;
        }

        v6 = 1935763060;
        goto LABEL_57;
      }

      if (v5 == 1936092276 || v5 == 1936879204)
      {
        return 1;
      }

      v7 = 24948;
    }

    else if (v5 > 1937012084)
    {
      if (v5 > 1937138531)
      {
        if (v5 == 1937138532)
        {
          return *(DerivedStorage + 369);
        }

        if (v5 == 1969841184)
        {
          return 1;
        }

        v6 = 1953653102;
        goto LABEL_57;
      }

      if (v5 == 1937012085)
      {
        return 1;
      }

      v7 = 30324;
    }

    else if (v5 <= 1937010546)
    {
      if (v5 == 1937007734)
      {
        return 1;
      }

      v7 = 27939;
    }

    else
    {
      if (v5 == 1937010547 || v5 == 1937011572)
      {
        return 1;
      }

      v7 = 29812;
    }

    v6 = v7 | 0x73740000;
    goto LABEL_57;
  }

  if (v5 <= 1684434035)
  {
    if (v5 <= 1668050794)
    {
      if (v5 > 1668047218)
      {
        if (v5 == 1668047219)
        {
          return 1;
        }

        v6 = 1668049764;
      }

      else
      {
        if (v5 == 1634429294)
        {
          return 1;
        }

        v6 = 1650682995;
      }
    }

    else if (v5 <= 1668575851)
    {
      if (v5 == 1668050795)
      {
        return 1;
      }

      v6 = 1668510818;
    }

    else
    {
      if (v5 == 1668575852 || v5 == 1668641652)
      {
        return 1;
      }

      v6 = 1684236338;
    }

LABEL_57:
    if (v5 != v6)
    {
      return result;
    }

    return 1;
  }

  if (v5 > 1818850925)
  {
    if (v5 <= 1819173228)
    {
      if (v5 == 1818850926)
      {
        return 1;
      }

      v6 = 1819107691;
    }

    else
    {
      if (v5 == 1819173229 || v5 == 1819569763)
      {
        return 1;
      }

      v6 = 1836411236;
    }

    goto LABEL_57;
  }

  if (v5 > 1718839673)
  {
    if (v5 != 1718839674 && v5 != 1735354734)
    {
      v6 = 1751737454;
      goto LABEL_57;
    }

    return 1;
  }

  if (v5 == 1684434036)
  {
    return 1;
  }

  if (v5 == 1718383987)
  {
    return *(DerivedStorage + 368) && *(*(DerivedStorage + 392) + 16) == 1635020133;
  }

  return result;
}

uint64_t sub_19D4(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, unsigned int a5, _DWORD *a6, void *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_10070 <= 30 && (dword_10070 != -1 || _LogCategory_Initialize()))
  {
    sub_7500(DerivedStorage, a2);
  }

  v12 = *a2;
  v13 = 2003332927;
  if (*a2 > 1935894637)
  {
    if (v12 <= 1936092531)
    {
      if (v12 == 1935894638)
      {
        *a6 = 4;
        if (a5 < 4)
        {
          goto LABEL_42;
        }

        v13 = 0;
        v14 = 1;
        goto LABEL_41;
      }

      if (v12 == 1935960434)
      {
        *a6 = 4;
        if (a5 >= 4)
        {
          v13 = 0;
          v14 = *(DerivedStorage + 72) != 0;
          goto LABEL_41;
        }

        goto LABEL_42;
      }

      if (v12 != 1936092513)
      {
        return v13;
      }

      goto LABEL_26;
    }

    if (v12 != 1936092532)
    {
      if (v12 == 1937007734)
      {
        *a6 = 4;
        if (a5 >= 4)
        {
          v13 = 0;
          v14 = *(DerivedStorage + 16);
          goto LABEL_41;
        }

        goto LABEL_42;
      }

      if (v12 != 1952805485)
      {
        return v13;
      }

      *a6 = 4;
      if (a5 < 4)
      {
        goto LABEL_42;
      }

      v13 = 0;
      v14 = 1936747378;
LABEL_41:
      *a7 = v14;
      return v13;
    }

LABEL_28:
    if (*(*(DerivedStorage + 64) + 40))
    {
      HALDescription = APCarPlayAudioFormatInfoGetHALDescription();
      *a6 = 40;
      if (a5 >= 0x28)
      {
        v13 = 0;
        v19 = *HALDescription;
        v20 = *(HALDescription + 16);
        a7[4] = *(HALDescription + 32);
        *a7 = v19;
        *(a7 + 1) = v20;
        return v13;
      }

      goto LABEL_42;
    }

    v13 = 2003329396;
LABEL_51:
    APSLogErrorAt();
    goto LABEL_43;
  }

  if (v12 > 1885762591)
  {
    if (v12 != 1885762592)
    {
      if (v12 != 1885762657)
      {
        if (v12 != 1935762292)
        {
          return v13;
        }

        *a6 = 4;
        if (a5 < 4)
        {
          goto LABEL_42;
        }

        v13 = 0;
        v14 = *(DerivedStorage + 73);
        goto LABEL_41;
      }

LABEL_26:
      v15 = *(DerivedStorage + 64);
      v16 = *(v15 + 32);
      v17 = 56 * v16;
      if (56 * v16 <= a5)
      {
        memcpy(a7, *(v15 + 24), 56 * v16);
        v13 = 0;
        *a6 = v17;
        return v13;
      }

      v13 = 561211770;
      goto LABEL_51;
    }

    goto LABEL_28;
  }

  if (v12 == 1650682995)
  {
    *a6 = 4;
    if (a5 < 4)
    {
      goto LABEL_42;
    }

    v13 = 0;
    v14 = 1634689642;
    goto LABEL_41;
  }

  if (v12 != 1668047219)
  {
    if (v12 != 1819569763)
    {
      return v13;
    }

    *a6 = 4;
    if (a5 >= 4)
    {
      v13 = 0;
      *a7 = 0;
      return v13;
    }

    goto LABEL_42;
  }

  *a6 = 4;
  if (a5 >= 4)
  {
    v13 = 0;
    v14 = 1634956402;
    goto LABEL_41;
  }

LABEL_42:
  v13 = 561211770;
LABEL_43:
  if (dword_10070 <= 90 && (dword_10070 != -1 || _LogCategory_Initialize()))
  {
    sub_7560(DerivedStorage, a2);
  }

  return v13;
}

uint64_t sub_1D4C(uint64_t a1, int *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *a2;
  if (*a2 == 1718383987)
  {
    return *(DerivedStorage + 368) && *(*(DerivedStorage + 392) + 16) == 1635020133;
  }

  else if (v4 == 1937138532)
  {
    return *(DerivedStorage + 369);
  }

  else
  {
    return v4 == 1937006964;
  }
}

uint64_t sub_1DDC(const void *a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, CFTypeRef *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v50 = 0;
  if (dword_10000 <= 30 && (dword_10000 != -1 || _LogCategory_Initialize()))
  {
    sub_7004(DerivedStorage, a2);
  }

  v13 = *a2;
  v14 = 2003332927;
  if (*a2 > 1937006963)
  {
    if (v13 != 1937006964)
    {
      if (v13 != 1937138532)
      {
        goto LABEL_50;
      }

      if (*a6)
      {
        v22 = CFRetain(*a6);
      }

      else
      {
        v22 = 0;
      }

      v29 = *(DerivedStorage + 376);
      if (FigCFEqual())
      {
        v30 = 0;
      }

      else
      {
        values = CFDictionaryGetValue(v22, @"vocoder sample rate");
        if (!values || (CFGetDouble(), v32 == 0.0))
        {
          v30 = 0;
        }

        else
        {
          v33 = CFGetAllocator(a1);
          v30 = CFDictionaryCreate(v33, &kFigEndpointStreamVocoderInfoKey_SampleRate, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (!v30)
          {
            sub_70A0();
LABEL_77:
            v14 = 2003329396;
            goto LABEL_39;
          }
        }

        if (dword_10000 <= 50 && (dword_10000 != -1 || _LogCategory_Initialize()))
        {
          v48 = *(DerivedStorage + 376);
          v46 = *(DerivedStorage + 40);
          LogPrintF();
        }

        v41 = *(DerivedStorage + 376);
        *(DerivedStorage + 376) = v30;
        if (v30)
        {
          CFRetain(v30);
        }

        if (v41)
        {
          CFRelease(v41);
        }

        if (*(DerivedStorage + 369))
        {
          if (*(*(DerivedStorage + 392) + 138))
          {
            v42 = *(DerivedStorage + 32);
            CMBaseObject = FigEndpointStreamGetCMBaseObject();
            v44 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v44)
            {
              v44(CMBaseObject, kFigEndpointStreamProperty_VocoderInfo, v30);
            }
          }
        }
      }

      if (v22)
      {
        CFRelease(v22);
      }

      if (v30)
      {
        CFRelease(v30);
      }

      goto LABEL_49;
    }

    if (a5 != 4)
    {
      v14 = 561211770;
LABEL_37:
      APSLogErrorAt();
      goto LABEL_39;
    }

    v25 = *a6;
    if (v25 != *(*(DerivedStorage + 392) + 16))
    {
      v26 = *(DerivedStorage + 16);
      v14 = FigHALAudioConfigChangeCreateRecord();
      if (!v14)
      {
        *(v50 + 16) = v25;
        v27 = *DerivedStorage;
        v28 = *(DerivedStorage + 16);
LABEL_65:
        FigHALAudioConfigChangeSendRequest();
        v50 = 0;
        goto LABEL_50;
      }

      sub_70CC();
LABEL_28:
      if (!v14 || v14 == 2003332927)
      {
        goto LABEL_50;
      }

      goto LABEL_39;
    }

LABEL_49:
    v14 = 0;
    goto LABEL_50;
  }

  if (v13 == 1718383987)
  {
    if (!*(DerivedStorage + 408))
    {
      v14 = 1970171760;
      sub_708C();
      goto LABEL_39;
    }

    if (*(DerivedStorage + 416))
    {
      if (dword_10000 <= 50 && (dword_10000 != -1 || _LogCategory_Initialize()))
      {
        sub_7050(DerivedStorage);
      }

      v23 = *(DerivedStorage + 408);
      v24 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v24)
      {
        v14 = v24(v23, a2, a3, a4, a5, a6);
        goto LABEL_28;
      }

      v14 = 4294954514;
      goto LABEL_39;
    }

    goto LABEL_49;
  }

  if (v13 != 1853059700)
  {
    goto LABEL_50;
  }

  if (!*(*(DerivedStorage + 392) + 40))
  {
    sub_711C();
    goto LABEL_77;
  }

  HALDescription = APCarPlayAudioFormatInfoGetHALDescription();
  if (a5 != 8)
  {
    v14 = 561211770;
    goto LABEL_37;
  }

  v16 = *a6;
  if (*HALDescription == *a6)
  {
    goto LABEL_49;
  }

  v14 = 1970171760;
  v17 = *(DerivedStorage + 392);
  v18 = *(v17 + 32);
  if (v18 >= 1)
  {
    v19 = 0;
    v20 = *(v17 + 24);
    v21 = -1;
    do
    {
      if (*v20 == v16)
      {
        v21 = v19;
        if (*(v20 + 28) == *(HALDescription + 28))
        {
          v21 = v19;
          goto LABEL_63;
        }
      }

      ++v19;
      v20 += 56;
    }

    while (v18 != v19);
    if (v21 == -1)
    {
      goto LABEL_39;
    }

LABEL_63:
    v34 = *(DerivedStorage + 16);
    v14 = FigHALAudioConfigChangeCreateRecord();
    if (!v14)
    {
      v35 = v50;
      v36 = *(*(DerivedStorage + 392) + 24) + 56 * v21;
      v37 = *(v36 + 32);
      v38 = *(v36 + 16);
      *(v50 + 16) = *v36;
      *(v35 + 32) = v38;
      *(v35 + 48) = v37;
      v39 = *DerivedStorage;
      v40 = *(DerivedStorage + 16);
      goto LABEL_65;
    }

    sub_70F4();
    goto LABEL_28;
  }

LABEL_39:
  if (dword_10000 <= 90 && (dword_10000 != -1 || _LogCategory_Initialize()))
  {
    v47 = *a2;
    v45 = *(DerivedStorage + 40);
    LogPrintF();
  }

LABEL_50:
  FigHALAudioConfigChangeDisposeRecord();
  return v14;
}

uint64_t sub_23B8()
{
  if (*(*(CMBaseObjectGetDerivedStorage() + 392) + 138))
  {
    return 0;
  }

  else
  {
    return 1937010544;
  }
}

uint64_t sub_23EC(uint64_t a1, void *a2, uint64_t *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v30 = 0u;
  v8 = mach_absolute_time();
  v9 = *(DerivedStorage + 80);
  APAudioZeroTimeStampProviderGetZeroTimeStamp();
  *(&v29 + 1) = v8;
  if ((~*(DerivedStorage + 272) & 3) != 0)
  {
    *&v29 = 0;
    DWORD2(v30) = 3;
    *(DerivedStorage + 352) = 0;
  }

  else
  {
    v10 = *(*(DerivedStorage + 392) + 48) * (v8 - *(DerivedStorage + 96));
    *&v29 = v10 / UpTicksPerSecond();
    DWORD2(v30) = 3;
  }

  v11 = *(DerivedStorage + 80);
  if (!APAudioZeroTimeStampProviderGetHighAccuracySupport())
  {
    *&v29 = *&v29 - *(DerivedStorage + 352);
  }

  if ((~*(DerivedStorage + 144) & 3) != 0)
  {
    *(DerivedStorage + 88) = v29;
    *(DerivedStorage + 104) = 0u;
    *(DerivedStorage + 120) = 0u;
    *(DerivedStorage + 136) = v30;
  }

  v12 = (DerivedStorage + 216);
  if (*(DerivedStorage + 224) != v8 || *v12 != *&v29)
  {
    v13 = *(DerivedStorage + 248);
    *(DerivedStorage + 200) = *(DerivedStorage + 264);
    v14 = *(DerivedStorage + 232);
    *(DerivedStorage + 152) = *v12;
    *(DerivedStorage + 168) = v14;
    *(DerivedStorage + 184) = v13;
    *v12 = v29;
    *(DerivedStorage + 232) = 0u;
    *(DerivedStorage + 248) = 0u;
    *(DerivedStorage + 264) = v30;
    if ((~*(DerivedStorage + 208) & 3) != 0)
    {
      *(DerivedStorage + 208) = 3;
      *(DerivedStorage + 152) = *(DerivedStorage + 216) - *(*(DerivedStorage + 392) + 48);
      v16 = *(DerivedStorage + 224);
      *(DerivedStorage + 160) = v16 - UpTicksPerSecond();
    }

    else
    {
      v15 = *(DerivedStorage + 160);
    }

    v17 = *(DerivedStorage + 152);
    v18 = *(DerivedStorage + 216);
    v19 = *(DerivedStorage + 224);
    kdebug_trace();
  }

  if ((~*(DerivedStorage + 336) & 3) != 0)
  {
    v25 = *(DerivedStorage + 232);
    *(DerivedStorage + 280) = *v12;
    *(DerivedStorage + 296) = v25;
    v26 = *(DerivedStorage + 264);
    *(DerivedStorage + 312) = *(DerivedStorage + 248);
    *(DerivedStorage + 328) = v26;
  }

  else
  {
    v20 = *(DerivedStorage + 224);
    v21 = *(DerivedStorage + 280) + *(*(DerivedStorage + 392) + 128);
    v22 = *(DerivedStorage + 216);
    v23 = (v20 - *(DerivedStorage + 160)) / (v22 - *(DerivedStorage + 152));
    v24 = (v20 - v23 * v22 + v23 * v21);
    if (v8 > v24)
    {
      *(DerivedStorage + 280) = v21;
      *(DerivedStorage + 288) = v24;
      kdebug_trace();
    }
  }

  *a2 = *(DerivedStorage + 280);
  *a3 = *(DerivedStorage + 288);
  *a4 = 0;
  v27 = *a3;
  kdebug_trace();
  return 0;
}

uint64_t sub_26EC(uint64_t a1, int a2, uint64_t a3, const void *a4, unsigned __int8 *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v28 = a3;
  v10 = *(DerivedStorage + 64);
  if (!*(v10 + 138))
  {
    APSLogErrorAt();
    return 1937010544;
  }

  v11 = DerivedStorage;
  if (!*(DerivedStorage + 73))
  {
    return 0;
  }

  v12 = (*(v10 + 72) * a3);
  v30 = v12;
  memcpy(__dst, a4, sizeof(__dst));
  if (!*(v11 + 72))
  {
    if (a2 == 1919513701)
    {
      v20 = *(v11 + 88);
      APSAudioStats_ProcessAudioBuffer();
      LODWORD(v21) = *(v11 + 116);
      __dst[18] = __dst[18] + v21;
      *(v11 + 104) = __dst[18] + a3 + (10 * a3);
      *(v11 + 112) = 1;
      v22 = *(v11 + 80);
      v23 = *(CMBaseObjectGetVTable() + 16);
      if (*v23 < 2uLL)
      {
        return 4294954515;
      }

      v24 = v23[7];
      if (!v24)
      {
        return 4294954514;
      }

      v25 = v23[7];
      return v24(v22, a5, v12, 0, a3, __dst);
    }

    v19 = 1970171760;
LABEL_28:
    APSLogErrorAt();
    return v19;
  }

  if (a2 != 1919246692)
  {
    v19 = 1970171760;
    goto LABEL_28;
  }

  *(v11 + 104) = __dst[10] + a3;
  *(v11 + 112) = 1;
  v13 = *(v11 + 80);
  v14 = *(CMBaseObjectGetVTable() + 16);
  if (*v14 < 2uLL || (v15 = v14[7]) == 0 || (v16 = v14[7], v17 = v15(v13, __dst, a5, v12, 0, a3, &v30, &v28), v12 = v30, v17))
  {
    bzero(a5, v12);
  }

  if (!v12)
  {
LABEL_12:
    v19 = 0;
    *(v11 + 88) += a3;
    *(v11 + 96) += a3;
    return v19;
  }

  while (!*a5++)
  {
    if (!--v12)
    {
      goto LABEL_12;
    }
  }

  v26 = *(v11 + 88);
  if (!v26)
  {
    return 0;
  }

  ++*(v11 + 100);
  if (v26 > *(v11 + 92))
  {
    *(v11 + 92) = v26;
  }

  v19 = 0;
  *(v11 + 88) = 0;
  return v19;
}

uint64_t sub_2A34()
{
  if (*(*(CMBaseObjectGetDerivedStorage() + 392) + 138))
  {
    return 0;
  }

  else
  {
    return 1937010544;
  }
}

uint64_t sub_2A68()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage;
  v56 = 0;
  v55 = 0;
  if (*(DerivedStorage + 20))
  {
    sub_7158();
    v2 = 560227702;
    goto LABEL_42;
  }

  if (*(DerivedStorage + 416))
  {
    return 0;
  }

  v3 = *(DerivedStorage + 392);
  if (!*(v3 + 40))
  {
    sub_71B0();
    v2 = 2003329396;
    goto LABEL_42;
  }

  *(DerivedStorage + 216) = 0u;
  *(DerivedStorage + 120) = 0u;
  *(DerivedStorage + 136) = 0u;
  *(DerivedStorage + 88) = 0u;
  *(DerivedStorage + 104) = 0u;
  *(DerivedStorage + 152) = 0u;
  *(DerivedStorage + 168) = 0u;
  *(DerivedStorage + 184) = 0u;
  *(DerivedStorage + 200) = 0u;
  *(DerivedStorage + 232) = 0u;
  *(DerivedStorage + 248) = 0u;
  *(DerivedStorage + 264) = 0u;
  *(DerivedStorage + 280) = 0u;
  *(DerivedStorage + 296) = 0u;
  *(DerivedStorage + 312) = 0u;
  *(DerivedStorage + 328) = 0u;
  *(DerivedStorage + 344) = 1;
  *(DerivedStorage + 352) = 0;
  v4 = *(v3 + 40);
  Description = APCarPlayAudioFormatInfoGetDescription();
  v6 = *(Description + 32);
  v7 = *(Description + 16);
  *(v3 + 88) = *Description;
  *(v3 + 104) = v7;
  *(v3 + 120) = v6;
  v8 = *(v1 + 392);
  v9 = *(v8 + 40);
  HALDescription = APCarPlayAudioFormatInfoGetHALDescription();
  v12 = *HALDescription;
  v11 = *(HALDescription + 16);
  *(v8 + 80) = *(HALDescription + 32);
  *(v8 + 48) = v12;
  *(v8 + 64) = v11;
  v13 = *(v1 + 80);
  APAudioZeroTimeStampProviderGetUpdateInterval();
  *(*(v1 + 392) + 128) = floor(v14 * *(*(v1 + 392) + 48));
  v58 = 0;
  v57 = 0x676C6F6273616374;
  v15 = *(v1 + 400);
  if (v15)
  {
    v16 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v16)
    {
      v16(v15, &v57, 0, 0, 4, &v56 + 4, &v56);
    }
  }

  v17 = *(v1 + 408);
  if (v17)
  {
    v18 = *(v1 + 408);
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v19)
    {
      v19(v17, &v57, 0, 0, 4, &v56 + 4, &v55);
    }
  }

  if (dword_10000 <= 50 && (dword_10000 != -1 || _LogCategory_Initialize()))
  {
    sub_4090(v1, &v56, &v55, v1 + 392);
  }

  v20 = LogCategoryCopyOSLogHandle();
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = &_os_log_default;
  }

  if (os_signpost_enabled(v22))
  {
    CStringPtr = CFStringGetCStringPtr(*(v1 + 40), 0x8000100u);
    *buf = 136315138;
    v60 = CStringPtr;
    _os_signpost_emit_with_name_impl(&dword_0, v22, OS_SIGNPOST_EVENT, 0x2B8D0938uLL, "AP_SIGNPOST_CAR_HAL_STARTIO_BEGIN", "stream type=%s\n", buf, 0xCu);
  }

  if (v21)
  {
    os_release(v21);
  }

  v24 = *(v1 + 32);
  v25 = *(*(v1 + 392) + 40);
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v27 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v27)
  {
    v2 = 4294954514;
    goto LABEL_41;
  }

  v28 = v27(CMBaseObject, kAPEndpointStreamCarPlayAudioProperty_AudioFormatInfo, v25);
  if (v28)
  {
    v2 = v28;
    goto LABEL_41;
  }

  if (*(v1 + 369))
  {
    v29 = *(v1 + 32);
    v30 = *(v1 + 376);
    v31 = FigEndpointStreamGetCMBaseObject();
    v32 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v32)
    {
      v33 = v32(v31, kFigEndpointStreamProperty_VocoderInfo, v30);
      if (v33)
      {
        v2 = v33;
        goto LABEL_41;
      }

      goto LABEL_26;
    }

    v2 = 4294954514;
LABEL_41:
    APSLogErrorAt();
LABEL_42:
    v45 = *(v1 + 392);
    *(v45 + 136) = 0;
    *(v45 + 138) = 0;
    return v2;
  }

LABEL_26:
  v34 = v56;
  if (!v56)
  {
    goto LABEL_30;
  }

  v35 = *(v1 + 400);
  v36 = *(*(CMBaseObjectGetVTable() + 24) + 32);
  if (!v36)
  {
    v2 = 4294954514;
    goto LABEL_41;
  }

  v37 = v36(v35);
  if (v37)
  {
    v2 = v37;
    goto LABEL_41;
  }

  *(*(v1 + 392) + 136) = 1;
LABEL_30:
  v38 = v55 == 0;
  if (!v55)
  {
    goto LABEL_34;
  }

  v39 = *(v1 + 408);
  v40 = *(*(CMBaseObjectGetVTable() + 24) + 32);
  if (!v40)
  {
    v2 = 4294954514;
LABEL_47:
    APSLogErrorAt();
    v38 = 1;
LABEL_48:
    if (v34)
    {
      v47 = *(v1 + 400);
      v48 = *(*(CMBaseObjectGetVTable() + 24) + 40);
      if (v48)
      {
        v48(v47);
      }
    }

    if (!v38)
    {
      v49 = *(v1 + 408);
      v50 = *(*(CMBaseObjectGetVTable() + 24) + 40);
      if (v50)
      {
        v50(v49);
      }
    }

    goto LABEL_42;
  }

  v41 = v40(v39);
  if (v41)
  {
    v2 = v41;
    goto LABEL_47;
  }

  *(*(v1 + 392) + 137) = 1;
LABEL_34:
  v42 = *(v1 + 32);
  v43 = FigEndpointStreamResumeSync();
  v2 = v43;
  if (v43 == -16764)
  {
    if (dword_10000 <= 90 && (dword_10000 != -1 || _LogCategory_Initialize()))
    {
      sub_716C(v1);
    }

    v44 = *(v1 + 32);
    FigEndpointStreamSuspend();
    goto LABEL_39;
  }

  if (v43)
  {
LABEL_39:
    APSLogErrorAt();
    goto LABEL_48;
  }

  v51 = LogCategoryCopyOSLogHandle();
  v52 = v51;
  if (v51)
  {
    v53 = v51;
  }

  else
  {
    v53 = &_os_log_default;
  }

  if (os_signpost_enabled(v53))
  {
    v54 = CFStringGetCStringPtr(*(v1 + 40), 0x8000100u);
    *buf = 136315138;
    v60 = v54;
    _os_signpost_emit_with_name_impl(&dword_0, v53, OS_SIGNPOST_EVENT, 0x2B8D093CuLL, "AP_SIGNPOST_CAR_HAL_STARTIO_END", "stream type=%s\n", buf, 0xCu);
  }

  if (v52)
  {
    os_release(v52);
  }

  v2 = 0;
  *(*(v1 + 392) + 138) = 1;
  *(v1 + 416) = 1;
  return v2;
}

uint64_t sub_3230(uint64_t a1, int a2, _BYTE *a3, _BYTE *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = DerivedStorage[49];
  if (v8[138])
  {
    if (a2 == 1919246692)
    {
      if (DerivedStorage[50])
      {
        v9 = v8[136];
        goto LABEL_9;
      }
    }

    else if (a2 == 1919513701 && DerivedStorage[51])
    {
      v9 = v8[137];
LABEL_9:
      result = 0;
      *a4 = v9;
      *a3 = v9;
      return result;
    }

    v9 = 0;
    goto LABEL_9;
  }

  return 1937010544;
}

uint64_t sub_32CC(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v35 = 0;
  v36 = 0;
  if (dword_10070 <= 30 && (dword_10070 != -1 || _LogCategory_Initialize()))
  {
    sub_75C0(DerivedStorage, a2);
  }

  v10 = *a2;
  v11 = 2003332927;
  if (*a2 <= 1935762291)
  {
    if (v10 == 1718383987)
    {
      if (*(DerivedStorage + 112))
      {
        CMTimeMake(cf, *(DerivedStorage + 104), *(*(DerivedStorage + 64) + 48));
        cf[0] = CMTimeCopyAsDictionary(cf, 0);
        v21 = CFDictionaryCreate(0, &kFigEndpointStreamFlushOption_AnchorTime, cf, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v22 = *(DerivedStorage + 24);
        v23 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v23)
        {
          v11 = v23(v22, 0, v21);
        }

        else
        {
          v11 = 4294954514;
        }

        CFRelease(cf[0]);
        CFRelease(v21);
        goto LABEL_39;
      }

LABEL_30:
      v11 = 0;
      goto LABEL_39;
    }

    if (v10 != 1885762592)
    {
      goto LABEL_44;
    }

LABEL_17:
    if (a5 != 40)
    {
      v11 = 561211770;
LABEL_26:
      APSLogErrorAt();
      goto LABEL_39;
    }

    v15 = *(a6 + 16);
    *cf = *a6;
    v33 = v15;
    v34 = *(a6 + 32);
    if (!*(*(DerivedStorage + 64) + 40))
    {
      sub_7708();
      v11 = 2003329396;
      goto LABEL_39;
    }

    HALDescription = APCarPlayAudioFormatInfoGetHALDescription();
    if (memcmp(cf, HALDescription, 0x28uLL))
    {
      v17 = *(DerivedStorage + 40);
      v18 = *(DerivedStorage + 48);
      v19 = *(*(DerivedStorage + 64) + 16);
      v20 = APCarPlayAudioFormatsCopyFormatInfoForHALDescription();
      if (v20)
      {
        v11 = v20;
        if (dword_10070 <= 50 && (dword_10070 != -1 || _LogCategory_Initialize()))
        {
          sub_7620(DerivedStorage, DerivedStorage + 64, cf);
        }

        goto LABEL_26;
      }

      v24 = *(DerivedStorage + 20);
      v25 = FigHALAudioConfigChangeCreateRecord();
      if (v25)
      {
        v11 = v25;
        sub_7680();
      }

      else
      {
        if (dword_10070 <= 50 && (dword_10070 != -1 || _LogCategory_Initialize()))
        {
          sub_76A8(DerivedStorage);
        }

        v26 = v36;
        v27 = v34;
        v28 = v33;
        *(v36 + 16) = *cf;
        *(v26 + 32) = v28;
        *(v26 + 48) = v27;
        v29 = *DerivedStorage;
        v30 = *(DerivedStorage + 16);
        *(DerivedStorage + 72);
        FigHALAudioConfigChangeSendRequest();
        v11 = 0;
        v36 = 0;
      }

LABEL_39:
      if (!v11 || v11 == 2003332927)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    goto LABEL_30;
  }

  if (v10 == 1936092532)
  {
    goto LABEL_17;
  }

  if (v10 != 1935762292)
  {
    goto LABEL_44;
  }

  if (a5 != 4)
  {
    v11 = 561211770;
    APSLogErrorAt();
LABEL_41:
    if (dword_10070 <= 90 && (dword_10070 != -1 || _LogCategory_Initialize()))
    {
      sub_771C(DerivedStorage, a2);
    }

    goto LABEL_44;
  }

  v12 = *a6 != 0;
  if (*(DerivedStorage + 73) != v12)
  {
    if (dword_10070 <= 50 && (dword_10070 != -1 || _LogCategory_Initialize()))
    {
      sub_375C(DerivedStorage);
    }

    *(DerivedStorage + 73) = v12;
    v13 = *DerivedStorage;
    v14 = *(DerivedStorage + 20);
    FigHALAudioPropertySendChanges();
  }

  v11 = 0;
LABEL_44:
  if (v35)
  {
    CFRelease(v35);
  }

  FigHALAudioConfigChangeDisposeRecord();
  return v11;
}

uint64_t sub_375C(uint64_t a1)
{
  *(a1 + 72);
  v2 = *(a1 + 32);
  return sub_8D8();
}

uint64_t sub_37D4(uint64_t a1, int *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 0;
  v5 = *a2;
  if (*a2 > 1853059618)
  {
    if (v5 > 1937007733)
    {
      if (v5 <= 1937012084)
      {
        if (v5 > 1937010546)
        {
          if (v5 == 1937010547 || v5 == 1937011572)
          {
            return 4;
          }

          v6 = 29812;
          goto LABEL_54;
        }

        if (v5 != 1937007734)
        {
          v9 = 1937009955;
LABEL_47:
          if (v5 != v9)
          {
            return result;
          }

          v10 = a2[1];
          switch(v10)
          {
            case 1869968496:
              v13 = DerivedStorage[25].i64[1];
              break;
            case 1768845428:
              v13 = DerivedStorage[25].i64[0];
              break;
            case 1735159650:
              v11 = vmovn_s64(vtstq_s64(DerivedStorage[25], DerivedStorage[25]));
              v12 = (v11.i8[4] & 1) - v11.i32[0];
              return (4 * v12);
            default:
              return 0;
          }

          v12 = v13 != 0;
          return (4 * v12);
        }

        return 4;
      }

      if (v5 > 1937138531)
      {
        if (v5 != 1937138532)
        {
          if (v5 == 1953653102)
          {
            return 4;
          }

          v8 = 1969841184;
          goto LABEL_61;
        }

        return 8;
      }

      if (v5 == 1937012085)
      {
        return 8;
      }

      v6 = 30324;
LABEL_54:
      v7 = v6 | 0x73740000;
      goto LABEL_57;
    }

    if (v5 > 1919512166)
    {
      if (v5 <= 1936092275)
      {
        if (v5 != 1919512167)
        {
          v7 = 1935763060;
          goto LABEL_57;
        }

        return 4;
      }

      if (v5 == 1936092276)
      {
        return 4;
      }

      if (v5 != 1936879204)
      {
        v6 = 24948;
        goto LABEL_54;
      }

      return 32;
    }

    if (v5 > 1869180522)
    {
      if (v5 != 1869180523)
      {
        v9 = 1870098020;
        goto LABEL_47;
      }

      return 4;
    }

    if (v5 == 1853059619)
    {
      return 32;
    }

    v8 = 1853059700;
LABEL_61:
    if (v5 != v8)
    {
      return result;
    }

    return 8;
  }

  if (v5 > 1718383986)
  {
    if (v5 <= 1818850925)
    {
      if (v5 > 1735354733)
      {
        if (v5 != 1735354734)
        {
          v7 = 1751737454;
          goto LABEL_57;
        }

        return 4;
      }

      if (v5 != 1718383987)
      {
        v7 = 1718839674;
        goto LABEL_57;
      }

      return 8;
    }

    if (v5 > 1819173228)
    {
      if (v5 != 1819173229)
      {
        if (v5 == 1819569763)
        {
          return 4;
        }

        v8 = 1836411236;
        goto LABEL_61;
      }

      return 8;
    }

    if (v5 == 1818850926)
    {
      return 4;
    }

    v8 = 1819107691;
    goto LABEL_61;
  }

  if (v5 <= 1668050794)
  {
    if (v5 > 1668047218)
    {
      if (v5 != 1668047219)
      {
        v7 = 1668049764;
        goto LABEL_57;
      }
    }

    else if (v5 != 1634429294)
    {
      v7 = 1650682995;
      goto LABEL_57;
    }

    return 4;
  }

  if (v5 > 1668641651)
  {
    if (v5 == 1668641652)
    {
      return 96;
    }

    if (v5 != 1684236338)
    {
      v7 = 1684434036;
      goto LABEL_57;
    }

    return 8;
  }

  if (v5 == 1668050795)
  {
    return 4;
  }

  v7 = 1668510818;
LABEL_57:
  if (v5 == v7)
  {
    return 4;
  }

  return result;
}

uint64_t sub_3B9C()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_10000 <= 50 && (dword_10000 != -1 || _LogCategory_Initialize()))
  {
    sub_90C(DerivedStorage);
  }

  v1 = *(DerivedStorage + 64);
  v2 = *(DerivedStorage + 360);
  HALDescriptions = APCarPlayAudioFormatsGetHALDescriptions();
  if (HALDescriptions)
  {
    v5 = HALDescriptions;
    sub_A50();
  }

  else
  {
    sub_6DF8();
    return 4294895185;
  }

  return v5;
}

uint64_t sub_3D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_10000 <= 50 && (dword_10000 != -1 || _LogCategory_Initialize()))
  {
    v24 = *(DerivedStorage + 40);
    LogPrintF();
  }

  v6 = 1970171760;
  if (a2 > 1768321644)
  {
    if (a2 == 1768321645)
    {
      v13 = *(DerivedStorage + 400);
      if (!v13)
      {
        goto LABEL_32;
      }

      v8 = *(*(CMBaseObjectGetVTable() + 24) + 16);
      if (v8)
      {
        v9 = v13;
        v10 = 1768321645;
LABEL_22:
        v6 = v8(v9, v10, a3);
        if (v6)
        {
          goto LABEL_25;
        }

        goto LABEL_33;
      }
    }

    else
    {
      if (a2 != 1868984941)
      {
LABEL_25:
        APSLogErrorAt();
        goto LABEL_33;
      }

      v7 = *(DerivedStorage + 408);
      if (!v7)
      {
        goto LABEL_32;
      }

      v8 = *(*(CMBaseObjectGetVTable() + 24) + 16);
      if (v8)
      {
        v9 = v7;
        v10 = 1868984941;
        goto LABEL_22;
      }
    }

    v6 = 4294954514;
    goto LABEL_25;
  }

  if (a2 != 1635023216)
  {
    if (a2 == 1718579821)
    {
      if (dword_10000 <= 50 && (dword_10000 != -1 || _LogCategory_Initialize()))
      {
        v25 = *(DerivedStorage + 40);
        LogPrintF();
      }

      v14 = *(DerivedStorage + 64);
      v15 = *(DerivedStorage + 360);
      v16 = *(*(DerivedStorage + 392) + 16);
      v17 = APCarPlayAudioFormatsCopyFormatInfoForHALDescription();
      if (v17)
      {
        v6 = v17;
        sub_7130();
        goto LABEL_33;
      }

      v18 = *(*(DerivedStorage + 392) + 40);
      if (!FigCFEqual())
      {
        v19 = *(DerivedStorage + 392);
        v20 = *(v19 + 40);
        *(v19 + 40) = 0;
        if (v20)
        {
          CFRelease(v20);
        }

        v21 = *DerivedStorage;
        v22 = *(DerivedStorage + 16);
        FigHALAudioPropertySendChanges();
      }

      goto LABEL_32;
    }

    goto LABEL_25;
  }

  if (*(a3 + 16) == *(*(DerivedStorage + 392) + 16))
  {
LABEL_32:
    v6 = 0;
    goto LABEL_33;
  }

  v6 = sub_3B9C();
  v11 = *DerivedStorage;
  v12 = *(DerivedStorage + 16);
  FigHALAudioPropertySendChanges();
  if (v6)
  {
    goto LABEL_25;
  }

LABEL_33:
  FigHALAudioConfigChangeDisposeRecord();
  FigHALAudioConfigChangeDisposeRecord();
  return v6;
}

uint64_t sub_404C(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = 561211770;
  return result;
}

uint64_t sub_4090(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  *a3;
  *a3;
  *a2;
  v6 = *(*a4 + 40);
  v5 = *(a1 + 40);
  return sub_8D8();
}

uint64_t sub_4118(const void *a1)
{
  v21 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  IsAppleInternalBuild();
  if (!*(DerivedStorage + 73))
  {
    goto LABEL_17;
  }

  v3 = *(*(DerivedStorage + 64) + 40);
  LatencyInfo = APCarPlayAudioFormatInfoGetLatencyInfo();
  if (!LatencyInfo)
  {
    sub_7888(&v21);
    goto LABEL_18;
  }

  v5 = LatencyInfo;
  if (dword_10070 <= 50 && (dword_10070 != -1 || _LogCategory_Initialize()))
  {
    sub_43EC(DerivedStorage);
  }

  *(DerivedStorage + 104) = 0;
  *(DerivedStorage + 112) = 0;
  if (*(DerivedStorage + 72))
  {
    *(DerivedStorage + 88) = 0;
    *(DerivedStorage + 96) = 0;
    CFGetAllocator(a1);
    v6 = *(DerivedStorage + 64);
    v21 = APAudioSinkJitterBufferCreate();
    if (v21)
    {
      sub_7820();
      goto LABEL_18;
    }

    v7 = *(DerivedStorage + 24);
    v8 = *(DerivedStorage + 80);
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v10)
    {
      v21 = -12782;
LABEL_21:
      sub_7830();
      goto LABEL_17;
    }

    v21 = v10(CMBaseObject, kFigEndpointStreamProperty_AudioSink, v8);
    if (v21)
    {
      goto LABEL_21;
    }

LABEL_16:
    LODWORD(v11) = *v5;
    *(DerivedStorage + 116) = (*(*(DerivedStorage + 64) + 48) * v11 / 1000.0);
    goto LABEL_17;
  }

  CFGetAllocator(a1);
  v12 = *(DerivedStorage + 64);
  v21 = APAudioSourceCarPlayCreate();
  if (v21)
  {
    sub_7840();
    goto LABEL_18;
  }

  v13 = *(DerivedStorage + 24);
  v14 = *(DerivedStorage + 80);
  v15 = FigEndpointStreamGetCMBaseObject();
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v16)
  {
    v21 = -12782;
    goto LABEL_23;
  }

  v21 = v16(v15, kFigEndpointStreamProperty_AudioSource, v14);
  if (v21)
  {
LABEL_23:
    sub_7878();
    goto LABEL_17;
  }

  v20 = *(DerivedStorage + 32);
  v17 = CFStringCreateF();
  v18 = *(DerivedStorage + 64);
  v21 = APSAudioStatsCreate();
  if (!v21)
  {
    CFRelease(v17);
    goto LABEL_16;
  }

  sub_7850();
LABEL_17:
  if (v21)
  {
LABEL_18:
    sub_495C();
    return v21;
  }

  return 0;
}

uint64_t sub_43EC(uint64_t a1)
{
  *(a1 + 72);
  v2 = *(a1 + 32);
  return sub_8D8();
}

uint64_t sub_4448(uint64_t a1, int *a2)
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

      return (56 * *(*(DerivedStorage + 64) + 32));
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

      return (56 * *(*(DerivedStorage + 64) + 32));
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

uint64_t sub_457C()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 416))
  {
    return 0;
  }

  v1 = DerivedStorage;
  if (dword_10000 <= 50 && (dword_10000 != -1 || _LogCategory_Initialize()))
  {
    sub_4914(v1);
  }

  v2 = *(v1 + 32);
  v3 = FigEndpointStreamSuspendSync();
  if (v3 == -16764)
  {
    if (dword_10000 <= 90 && (dword_10000 != -1 || _LogCategory_Initialize()))
    {
      sub_71C4(v1);
    }

    v3 = 0;
  }

  if (*(*(v1 + 392) + 136))
  {
    v4 = *(v1 + 400);
    v5 = *(*(CMBaseObjectGetVTable() + 24) + 40);
    if (v5)
    {
      v5(v4);
    }
  }

  if (*(*(v1 + 392) + 137))
  {
    v6 = *(v1 + 408);
    v7 = *(*(CMBaseObjectGetVTable() + 24) + 40);
    if (v7)
    {
      v7(v6);
    }
  }

  if (*(v1 + 144) && *(v1 + 272))
  {
    if (*(v1 + 224) != *(v1 + 96))
    {
      v8 = *(v1 + 216) - *(v1 + 88);
      UpTicksPerSecond();
    }

    if (dword_10000 <= 50 && (dword_10000 != -1 || _LogCategory_Initialize()))
    {
      v19 = *(v1 + 40);
      LogPrintF();
    }
  }

  v9 = *(v1 + 32);
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v11)
  {
    v11(CMBaseObject, kAPEndpointStreamCarPlayAudioProperty_AudioFormatInfo, 0);
  }

  if (*(v1 + 369))
  {
    v12 = *(v1 + 32);
    v13 = FigEndpointStreamGetCMBaseObject();
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v14)
    {
      v14(v13, kFigEndpointStreamProperty_VocoderInfo, 0);
    }
  }

  v15 = *(v1 + 392);
  *(v15 + 120) = 0;
  *(v15 + 104) = 0u;
  *(v15 + 88) = 0u;
  v16 = *(v1 + 392);
  *(v16 + 80) = 0;
  *(v16 + 48) = 0u;
  *(v16 + 64) = 0u;
  v17 = *(v1 + 392);
  *(v17 + 135) = 0;
  *(v17 + 128) = 0;
  *(v1 + 416) = 0;
  return v3;
}

uint64_t sub_4914(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 392) + 40);
  return sub_8D8();
}

uint64_t sub_495C()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 73))
  {
    v1 = DerivedStorage;
    v2 = (DerivedStorage + 72);
    v3 = *(DerivedStorage + 72);
    v4 = *(DerivedStorage + 80);
    v5 = *(CMBaseObjectGetVTable() + 16);
    if (v3)
    {
      if (*v5 >= 2uLL)
      {
        v6 = v5[4];
        if (v6)
        {
          v7 = v5[4];
          v6(v4);
        }
      }

      v8 = *(v1 + 80);
      if (v8)
      {
        CFRelease(v8);
        *(v1 + 80) = 0;
      }

      v9 = *(v1 + 24);
      CMBaseObject = FigEndpointStreamGetCMBaseObject();
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v11)
      {
        v11(CMBaseObject, kFigEndpointStreamProperty_AudioSink, 0);
      }

      v12 = *(v1 + 88);
      if (v12)
      {
        ++*(v1 + 100);
        if (v12 > *(v1 + 92))
        {
          *(v1 + 92) = v12;
        }

        *(v1 + 88) = 0;
      }

      if (dword_10070 <= 60 && (dword_10070 != -1 || _LogCategory_Initialize()))
      {
        sub_78C8(v1);
      }
    }

    else
    {
      if (*v5 >= 2uLL)
      {
        v13 = v5[5];
        if (v13)
        {
          v14 = v5[5];
          v13(v4);
        }
      }

      v15 = *(v1 + 80);
      if (v15)
      {
        CFRelease(v15);
        *(v1 + 80) = 0;
      }

      v16 = *(v1 + 24);
      v17 = FigEndpointStreamGetCMBaseObject();
      v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v18)
      {
        v18(v17, kFigEndpointStreamProperty_AudioSource, 0);
      }

      v19 = (v1 + 88);
      if (*(v1 + 88))
      {
        APSAudioStats_TerminateSession();
        if (dword_10070 <= 50 && (dword_10070 != -1 || _LogCategory_Initialize()))
        {
          sub_4C4C(v2, v1, (v1 + 88));
        }

        if (*v19)
        {
          CFRelease(*v19);
          *v19 = 0;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_4C4C(unsigned __int8 *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a1;
  sub_8F0(a1, a2, a3);
  return sub_8D8();
}

uint64_t sub_4C9C(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5, uint64_t a6, void *a7)
{
  v52 = 0;
  v53 = 0;
  v51 = 0;
  v50 = kCMTimeInvalid;
  if (!a2)
  {
    sub_6CC8();
    goto LABEL_59;
  }

  if (!a3)
  {
    sub_6C8C();
    goto LABEL_59;
  }

  if (!a4)
  {
    sub_6C50();
    goto LABEL_59;
  }

  if (!a5)
  {
    sub_6C14();
    goto LABEL_59;
  }

  if (!a7)
  {
    sub_6BD8();
    goto LABEL_59;
  }

  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v50, HostTimeClock);
  if (!APSGetFBOPropertyInt64())
  {
    sub_6B98(&v54);
    goto LABEL_59;
  }

  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v15)
  {
    v15(CMBaseObject, kFigEndpointStreamProperty_Type, a1, &v52);
  }

  if (!FigCFEqual())
  {
    sub_6B58(&v54);
    goto LABEL_59;
  }

  FigHALAudioDeviceGetClassID();
  v54 = CMDerivedObjectCreate();
  if (v54)
  {
    sub_68A8();
    goto LABEL_59;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = a3;
  *(DerivedStorage + 8) = a2;
  *(DerivedStorage + 24) = CFRetain(a4);
  *(DerivedStorage + 32) = CFRetain(a5);
  v17 = sub_5CD0(a1);
  *(DerivedStorage + 392) = v17;
  if (!v17)
  {
    sub_6B18(&v54);
    goto LABEL_59;
  }

  v18 = *(DerivedStorage + 24);
  v19 = FigEndpointGetCMBaseObject();
  v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v20)
  {
    v20(v19, kFigEndpointProperty_Name, a1, DerivedStorage + 56);
  }

  if (!*(DerivedStorage + 56))
  {
    sub_6AD8(&v54);
    goto LABEL_59;
  }

  v21 = FigEndpointGetCMBaseObject();
  v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v22)
  {
    v54 = -12782;
    goto LABEL_37;
  }

  v54 = v22(v21, kFigEndpointProperty_TransportType, a1, &v51);
  if (v54)
  {
LABEL_37:
    sub_6AB0();
    goto LABEL_59;
  }

  v23 = 1937012580;
  if (!FigCFEqual())
  {
    if (!FigCFEqual())
    {
      v54 = -16720;
LABEL_35:
      APSLogErrorAt();
      goto LABEL_59;
    }

    v23 = 1937012588;
  }

  *(DerivedStorage + 364) = v23;
  v24 = *(DerivedStorage + 32);
  *(DerivedStorage + 384) = APSGetFBOPropertyInt64() != 0;
  v25 = *(DerivedStorage + 32);
  *(DerivedStorage + 369) = APSGetFBOPropertyInt64() != 0;
  v26 = *(DerivedStorage + 32);
  *(DerivedStorage + 368) = APSGetFBOPropertyInt64() != 0;
  v27 = FigEndpointStreamGetCMBaseObject();
  v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v28)
  {
    v54 = -12782;
    goto LABEL_39;
  }

  v54 = v28(v27, kFigEndpointStreamProperty_ID, a1, DerivedStorage + 48);
  if (v54)
  {
LABEL_39:
    sub_6A88();
    goto LABEL_59;
  }

  v29 = FigEndpointStreamGetCMBaseObject();
  v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v30)
  {
    v54 = -12782;
    goto LABEL_41;
  }

  v54 = v30(v29, kFigEndpointStreamProperty_SubType, a1, DerivedStorage + 40);
  if (v54)
  {
LABEL_41:
    sub_6A60();
    goto LABEL_59;
  }

  v31 = *(DerivedStorage + 32);
  v32 = FigEndpointStreamGetCMBaseObject();
  v33 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v33)
  {
    v54 = -12782;
    goto LABEL_43;
  }

  v54 = v33(v32, kAPEndpointStreamCarPlayAudioProperty_CarPlayAudioFormats, a1, DerivedStorage + 64);
  if (v54)
  {
LABEL_43:
    sub_6A38();
    goto LABEL_59;
  }

  v34 = *(DerivedStorage + 32);
  v35 = FigEndpointStreamGetCMBaseObject();
  v36 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v36)
  {
    v54 = -12782;
    goto LABEL_58;
  }

  v54 = v36(v35, kAPEndpointStreamCarPlayAudioProperty_AudioZeroTimeStampProvider, a1, DerivedStorage + 80);
  if (v54)
  {
LABEL_58:
    sub_6A10();
    goto LABEL_59;
  }

  v37 = *(DerivedStorage + 40);
  v38 = FigCFEqual();
  if (v38)
  {
    *(DerivedStorage + 360) = 1937010030;
    v54 = sub_3B9C();
    if (v54)
    {
      sub_68D0();
      goto LABEL_59;
    }

    goto LABEL_46;
  }

  v39 = *(DerivedStorage + 40);
  if (FigCFEqual())
  {
    *(DerivedStorage + 360) = 1937006956;
    v54 = sub_3B9C();
    if (v54)
    {
      sub_68F8();
      goto LABEL_59;
    }

    goto LABEL_46;
  }

  v40 = *(DerivedStorage + 40);
  if (!FigCFEqual())
  {
    v54 = -16760;
    goto LABEL_35;
  }

  *(DerivedStorage + 360) = 1937006968;
  v54 = sub_3B9C();
  if (v54)
  {
    sub_6920();
    goto LABEL_59;
  }

LABEL_46:
  v54 = FigHALAudioObjectMapperAddMapping();
  if (v54)
  {
    sub_6948();
  }

  else if (v38 && (v54 = sub_5D2C(a1, a2, a3, *(DerivedStorage + 16), a5, 1, *(DerivedStorage + 392), (DerivedStorage + 400))) != 0)
  {
    sub_6970();
  }

  else
  {
    v54 = sub_5D2C(a1, a2, a3, *(DerivedStorage + 16), a5, 0, *(DerivedStorage + 392), (DerivedStorage + 408));
    if (v54)
    {
      sub_6998();
    }

    else
    {
      CMNotificationCenterGetDefaultLocalCenter();
      v41 = *(DerivedStorage + 32);
      v54 = FigNotificationCenterAddWeakListener();
      if (v54)
      {
        sub_69C0();
      }

      else
      {
        v46 = *(DerivedStorage + 40);
        *(DerivedStorage + 72) = CFStringCreateF();
        if (v54)
        {
          sub_69E8();
        }

        else
        {
          *a7 = v53;
          v53 = 0;
          if (dword_10000 <= 50 && (dword_10000 != -1 || _LogCategory_Initialize()))
          {
            v42 = *(DerivedStorage + 40);
            v43 = *(DerivedStorage + 16);
            v44 = CMClockGetHostTimeClock();
            CMClockGetTime(&lhs, v44);
            rhs = v50;
            CMTimeSubtract(&time, &lhs, &rhs);
            CMTimeGetSeconds(&time);
            LogPrintF();
          }
        }
      }
    }
  }

LABEL_59:
  if (v51)
  {
    CFRelease(v51);
  }

  if (v52)
  {
    CFRelease(v52);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  return v54;
}

uint64_t sub_55D0()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 20) = 1;
  if (dword_10000 <= 50 && (dword_10000 != -1 || _LogCategory_Initialize()))
  {
    sub_6E24(DerivedStorage);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v1 = *(DerivedStorage + 408);
  if (v1)
  {
    v2 = *(DerivedStorage + 8);
    v3 = *(DerivedStorage + 408);
    VTable = CMBaseObjectGetVTable();
    v5 = *(*(VTable + 16) + 8);
    if (v5)
    {
      v6 = *(VTable + 16) + 8;
      v5(v1);
    }

    FigHALAudioObjectMapperRemoveMapping();
  }

  v7 = *(DerivedStorage + 400);
  if (v7)
  {
    v8 = *(DerivedStorage + 8);
    v9 = *(DerivedStorage + 400);
    v10 = CMBaseObjectGetVTable();
    v11 = *(*(v10 + 16) + 8);
    if (v11)
    {
      v12 = *(v10 + 16) + 8;
      v11(v7);
    }

    FigHALAudioObjectMapperRemoveMapping();
  }

  v13 = *(DerivedStorage + 8);
  v14 = *(DerivedStorage + 16);
  result = FigHALAudioObjectMapperRemoveMapping();
  *(DerivedStorage + 16) = 0;
  return result;
}

void sub_5778()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  v1 = *(DerivedStorage + 32);
  FigNotificationCenterRemoveWeakListener();
  if (*(DerivedStorage + 16))
  {
    v2 = *(DerivedStorage + 8);
    FigHALAudioObjectMapperRemoveMapping();
  }

  v3 = *(DerivedStorage + 24);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 24) = 0;
  }

  v4 = *(DerivedStorage + 32);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 32) = 0;
  }

  v5 = *(DerivedStorage + 80);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 80) = 0;
  }

  v6 = *(DerivedStorage + 40);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 40) = 0;
  }

  v7 = *(DerivedStorage + 48);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 48) = 0;
  }

  v8 = *(DerivedStorage + 56);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 56) = 0;
  }

  v9 = *(DerivedStorage + 64);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 64) = 0;
  }

  v10 = *(DerivedStorage + 376);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 376) = 0;
  }

  v11 = *(DerivedStorage + 392);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 392) = 0;
  }

  v12 = *(DerivedStorage + 400);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 400) = 0;
  }

  v13 = *(DerivedStorage + 408);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 408) = 0;
  }

  v14 = *(DerivedStorage + 72);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 72) = 0;
  }
}

CFStringRef sub_589C(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *(DerivedStorage + 32);
  v6 = *(DerivedStorage + 40);
  v7 = *(DerivedStorage + 16);
  ASPrintF();
  v3 = CFGetAllocator(a1);
  v4 = CFStringCreateWithFormat(v3, 0, @"%s", "CarAudioStream", v7, v8);
  free(0);
  return v4;
}

uint64_t sub_5944(uint64_t result, int a2, _DWORD *a3, unsigned int *a4)
{
  v6 = result;
  if (a2 == 1869968496)
  {
    v19 = *a4;
    v17 = *(result + 408);
    v20 = v17 != 0;
    if (*a4 > v20)
    {
      *a4 = v20;
      v19 = v17 != 0;
    }

    if (v17)
    {
      v21 = v19 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (a2 != 1768845428)
  {
    if (a2 == 1735159650)
    {
      v7 = *a4;
      v8 = *(result + 400);
      v9 = vmovn_s64(vtstq_s64(v8, v8));
      v10 = (v9.i8[4] & 1) - v9.i32[0];
      if (*a4 > v10)
      {
        *a4 = v10;
        v7 = (v9.i8[4] & 1) - v9.i32[0];
      }

      v11 = 0;
      v12 = v8.i64[0];
      if (v8.i64[0] && v7)
      {
        VTable = CMBaseObjectGetVTable();
        v14 = *(*(VTable + 16) + 8);
        if (v14)
        {
          v15 = *(VTable + 16) + 8;
          result = v14(v12);
        }

        else
        {
          result = 0;
        }

        *a3 = result;
        v7 = *a4;
        v11 = 1;
      }

      if (v11 < v7)
      {
        v25 = *(v6 + 408);
        if (v25)
        {
          v26 = CMBaseObjectGetVTable();
          v27 = *(*(v26 + 16) + 8);
          if (v27)
          {
            v28 = *(v26 + 16) + 8;
            result = v27(v25);
          }

          else
          {
            result = 0;
          }

          a3[v11++] = result;
        }
      }

      goto LABEL_35;
    }

LABEL_22:
    v11 = 0;
    goto LABEL_35;
  }

  v16 = *a4;
  v17 = *(result + 400);
  v18 = v17 != 0;
  if (*a4 > v18)
  {
    *a4 = v18;
    v16 = v17 != 0;
  }

  v11 = 0;
  if (v17 && v16)
  {
LABEL_23:
    v22 = CMBaseObjectGetVTable();
    v23 = *(*(v22 + 16) + 8);
    if (v23)
    {
      v24 = *(v22 + 16) + 8;
      result = v23(v17);
    }

    else
    {
      result = 0;
    }

    *a3 = result;
    v11 = 1;
  }

LABEL_35:
  *a4 = v11;
  return result;
}

CFTypeRef sub_5BBC()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 48);

  return CFRetain(v0);
}

void sub_5C28(id a1)
{
  qword_10100 = 0;
  *algn_10108 = "APHALCarAudioSharedState";
  qword_10110 = sub_5C88;
  unk_10118 = 0;
  qword_10120 = sub_5CA0;
  unk_10128 = 0u;
  unk_10138 = 0u;
  qword_100F8 = _CFRuntimeRegisterClass();
}

double sub_5C88(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void sub_5CA0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 40) = 0;
  }
}

uint64_t sub_5CD0(uint64_t a1)
{
  if (qword_100F0 != -1)
  {
    sub_7208();
  }

  v2 = qword_100F8;

  return __CFRuntimeCreateInstance(a1, v2, 128, 0);
}

uint64_t sub_5D2C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const void *a5, char a6, const void *a7, void *a8)
{
  v35 = 0;
  v34 = kCMTimeInvalid;
  if (a2)
  {
    if (a3)
    {
      if (a4)
      {
        if (a5)
        {
          if (a7)
          {
            if (a8)
            {
              HostTimeClock = CMClockGetHostTimeClock();
              CMClockGetTime(&v34, HostTimeClock);
              FigHALAudioStreamGetClassID();
              v36 = CMDerivedObjectCreate();
              if (v36)
              {
                sub_721C();
              }

              else
              {
                DerivedStorage = CMBaseObjectGetDerivedStorage();
                *DerivedStorage = a3;
                *(DerivedStorage + 8) = a2;
                *(DerivedStorage + 16) = a4;
                *(DerivedStorage + 24) = CFRetain(a5);
                *(DerivedStorage + 72) = a6;
                *(DerivedStorage + 64) = CFRetain(a7);
                v33[0] = _NSConcreteStackBlock;
                v33[1] = 0x40000000;
                v33[2] = sub_6268;
                v33[3] = &unk_C520;
                v33[4] = a2;
                v33[5] = v35;
                v33[6] = DerivedStorage;
                v36 = sub_6164("FigHALAudioObjectMapperAddMapping", 0x3FBu, v33);
                if (v36)
                {
                  sub_7244();
                }

                else
                {
                  v32[0] = _NSConcreteStackBlock;
                  v32[1] = 0x40000000;
                  v32[2] = sub_627C;
                  v32[3] = &unk_C540;
                  v32[4] = DerivedStorage;
                  v32[5] = a5;
                  v36 = sub_6164("FigEndpointStreamCopyProperty", 0x3FFu, v32);
                  if (v36)
                  {
                    sub_726C();
                  }

                  else
                  {
                    v31[0] = _NSConcreteStackBlock;
                    v31[1] = 0x40000000;
                    v31[2] = sub_6354;
                    v31[3] = &unk_C560;
                    v31[4] = DerivedStorage;
                    v31[5] = a5;
                    v36 = sub_6164("FigEndpointStreamCopyProperty", 0x403u, v31);
                    if (v36)
                    {
                      sub_7294();
                    }

                    else
                    {
                      v17 = 1937006956;
                      v18 = *(DerivedStorage + 32);
                      if (FigCFEqual())
                      {
                        v17 = 1937010030;
                      }

                      else
                      {
                        v19 = *(DerivedStorage + 32);
                        if (!FigCFEqual())
                        {
                          v20 = *(DerivedStorage + 32);
                          if (!FigCFEqual())
                          {
                            v36 = -16760;
                            APSLogErrorAt();
                            goto LABEL_23;
                          }

                          v17 = 1937006968;
                        }
                      }

                      *(DerivedStorage + 48) = v17;
                      *(DerivedStorage + 72);
                      v27 = *(DerivedStorage + 32);
                      *(DerivedStorage + 56) = CFStringCreateF();
                      if (v36)
                      {
                        sub_72BC();
                      }

                      else
                      {
                        *a8 = v35;
                        v35 = 0;
                        if (dword_10070 > 50)
                        {
                          return v36;
                        }

                        if (dword_10070 != -1 || _LogCategory_Initialize())
                        {
                          *(DerivedStorage + 72);
                          v21 = *(DerivedStorage + 32);
                          v24 = DerivedStorage + 16;
                          v22 = *(DerivedStorage + 16);
                          v23 = *(v24 + 4);
                          v25 = CMClockGetHostTimeClock();
                          CMClockGetTime(&lhs, v25);
                          rhs = v34;
                          CMTimeSubtract(&time, &lhs, &rhs);
                          CMTimeGetSeconds(&time);
                          LogPrintF();
                        }
                      }
                    }
                  }
                }
              }
            }

            else
            {
              sub_72E4();
            }
          }

          else
          {
            sub_7320();
          }
        }

        else
        {
          sub_735C();
        }
      }

      else
      {
        sub_7398();
      }
    }

    else
    {
      sub_73D4();
    }
  }

  else
  {
    sub_7410();
  }

LABEL_23:
  if (v35)
  {
    CFRelease(v35);
  }

  return v36;
}

uint64_t sub_6164(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v14 = a1;
  v13 = a2;
  memset(&v12, 0, sizeof(v12));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v12, HostTimeClock);
  v5 = (*(a3 + 16))(a3, &v14, &v13);
  v6 = CMClockGetHostTimeClock();
  CMClockGetTime(&lhs, v6);
  v9 = v12;
  CMTimeSubtract(&time, &lhs, &v9);
  Seconds = CMTimeGetSeconds(&time);
  if ((Seconds * 1000.0) > 50.0 && dword_10070 <= 60 && (dword_10070 != -1 || _LogCategory_Initialize()))
  {
    sub_744C(&v14, &v13);
  }

  return v5;
}

uint64_t sub_6268(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = a1[6];
  return FigHALAudioObjectMapperAddMapping();
}

uint64_t sub_627C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = CFGetAllocator(*(a1 + 40));
  v4 = *(a1 + 32);
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v7 = *(*(VTable + 8) + 48);
  if (!v7)
  {
    return 4294954514;
  }

  v8 = *(VTable + 8) + 48;
  v9 = kAPEndpointStreamCarPlayAudioProperty_CarPlayAudioFormats;

  return v7(CMBaseObject, v9, v3, v4 + 40);
}

uint64_t sub_6354(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = CFGetAllocator(*(a1 + 40));
  v4 = *(a1 + 32);
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v7 = *(*(VTable + 8) + 48);
  if (!v7)
  {
    return 4294954514;
  }

  v8 = *(VTable + 8) + 48;
  v9 = kFigEndpointStreamProperty_SubType;

  return v7(CMBaseObject, v9, v3, v4 + 32);
}

void sub_642C()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage;
  if (*(DerivedStorage + 20))
  {
    v2 = *(DerivedStorage + 8);
    FigHALAudioObjectMapperRemoveMapping();
  }

  if (*(v1 + 73))
  {
    if (!*(v1 + 72))
    {
      v9 = (v1 + 88);
      if (*(v1 + 88))
      {
        APSAudioStats_TerminateSession();
        if (dword_10070 <= 50 && (dword_10070 != -1 || _LogCategory_Initialize()))
        {
          sub_74B0((v1 + 72), v1, (v1 + 88));
        }

        if (*v9)
        {
          CFRelease(*v9);
          *v9 = 0;
        }
      }
    }
  }

  v3 = *(v1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(v1 + 24) = 0;
  }

  v4 = *(v1 + 32);
  if (v4)
  {
    CFRelease(v4);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 40);
  if (v5)
  {
    CFRelease(v5);
    *(v1 + 40) = 0;
  }

  v6 = *(v1 + 64);
  if (v6)
  {
    CFRelease(v6);
    *(v1 + 64) = 0;
  }

  v7 = *(v1 + 80);
  if (v7)
  {
    CFRelease(v7);
    *(v1 + 80) = 0;
  }

  v8 = *(v1 + 56);
  if (v8)
  {
    CFRelease(v8);
    *(v1 + 56) = 0;
  }
}

CFStringRef sub_6544(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    v3 = "Sink";
  }

  else
  {
    v3 = "Source";
  }

  *(DerivedStorage + 72);
  v10 = v3;
  v11 = *(DerivedStorage + 80);
  v8 = *(DerivedStorage + 16);
  v9 = *(DerivedStorage + 24);
  v7 = *(DerivedStorage + 20);
  ASPrintF();
  v4 = CFGetAllocator(a1);
  v5 = CFStringCreateWithFormat(v4, 0, @"%s", "CarAudioStream", v7, v8, v9, v10, v11);
  free(0);
  return v5;
}

uint64_t sub_665C(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 == 1868984941 || a2 == 1768321645)
  {
    if (dword_10070 <= 50 && (dword_10070 != -1 || _LogCategory_Initialize()))
    {
      sub_777C(DerivedStorage);
    }

    v4 = *(DerivedStorage + 40);
    v5 = *(DerivedStorage + 48);
    v6 = *(*(DerivedStorage + 64) + 16);
    v7 = APCarPlayAudioFormatsCopyFormatInfoForHALDescription();
    if (v7)
    {
      v13 = v7;
      sub_77E8();
    }

    else
    {
      v8 = *(*(DerivedStorage + 64) + 40);
      if (!FigCFEqual())
      {
        v9 = *(DerivedStorage + 64);
        v10 = *(v9 + 40);
        *(v9 + 40) = 0;
        if (v10)
        {
          CFRelease(v10);
        }

        v11 = *DerivedStorage;
        v12 = *(DerivedStorage + 20);
        FigHALAudioPropertySendChanges();
      }

      v13 = 0;
    }
  }

  else
  {
    v14 = FigSignalErrorAtGM();
    if (!v14)
    {
LABEL_15:
      FigHALAudioConfigChangeDisposeRecord();
      return 0;
    }

    v13 = v14;
    sub_7810();
  }

  if (!v13)
  {
    goto LABEL_15;
  }

  return v13;
}

uint64_t sub_67DC(uint64_t a1, uint64_t a2)
{
  if (*(*(CMBaseObjectGetDerivedStorage() + 64) + 40))
  {
    HALDescription = APCarPlayAudioFormatInfoGetHALDescription();
    result = 0;
    v5 = *(HALDescription + 32);
    v6 = *(HALDescription + 16);
    *a2 = *HALDescription;
    *(a2 + 16) = v6;
    *(a2 + 32) = v5;
  }

  else
  {
    sub_7938();
    return 2003329396;
  }

  return result;
}

uint64_t sub_6838(uint64_t result, unsigned int *a2)
{
  v2 = *(result + 32);
  v3 = *a2;
  return result;
}

uint64_t sub_684C(uint64_t a1, void *a2)
{
  v3 = APGetEndpointManagerCarPlay();
  if (v3)
  {
    sub_7A5C();
  }

  else
  {
    *a2 = 0;
  }

  return v3;
}

uint64_t sub_6AD8(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16720;
  return result;
}

uint64_t sub_6B18(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16890;
  return result;
}

uint64_t sub_6B58(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16760;
  return result;
}

uint64_t sub_6B98(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16720;
  return result;
}

uint64_t sub_6D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 40);
  v4 = *(a1 + 40);
  return sub_8D8();
}

uint64_t sub_6E60(uint64_t a1, unsigned int *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v3 = *(a1 + 40);
  return LogPrintF();
}

uint64_t sub_6F54(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = 2003329396;
  return result;
}

uint64_t sub_6F98(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = 561211770;
  return result;
}

uint64_t sub_7004(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 40);
  v4 = *a2;
  return LogPrintF();
}

uint64_t sub_744C(void *a1, unsigned int *a2)
{
  *a1;
  v3 = *a2;
  return LogPrintF();
}

uint64_t sub_74B0(unsigned __int8 *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a1;
  sub_8F0(a1, a2, a3);
  return sub_8D8();
}

uint64_t sub_7500(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 72);
  sub_6838(a1, a2);
  return LogPrintF();
}

uint64_t sub_7560(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 72);
  sub_6838(a1, a2);
  return LogPrintF();
}

uint64_t sub_75C0(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 72);
  sub_6838(a1, a2);
  return LogPrintF();
}

uint64_t sub_7620(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *(a1 + 56);
  v4 = *(*a2 + 16);
  v6 = *a3;
  v7 = a3[1];
  v8 = *(a3 + 4);
  return sub_8D8();
}

uint64_t sub_76A8(uint64_t a1)
{
  *(a1 + 72);
  v2 = *(a1 + 56);
  return sub_8D8();
}

uint64_t sub_771C(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 72);
  sub_6838(a1, a2);
  return LogPrintF();
}

uint64_t sub_777C(uint64_t a1)
{
  *(a1 + 72);
  v3 = *(*(a1 + 64) + 16);
  v2 = *(a1 + 32);
  return sub_8D8();
}

uint64_t sub_7888(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6718;
  return result;
}

uint64_t sub_78C8(uint64_t a1)
{
  v2 = *(a1 + 92);
  v1 = *(a1 + 96);
  v3 = *(*(a1 + 64) + 48);
  v6 = *(a1 + 100);
  v5 = *(a1 + 32);
  return LogPrintF();
}

uint64_t *CarPlayHALPlugin_Create(uint64_t a1, const void *a2)
{
  if (APSIsRemoteHALPluginLoadingEnabled() && !FigServer_IsAirplayd())
  {
    return 0;
  }

  v3 = CFUUIDGetConstantUUIDWithBytes(0, 0x44u, 0x3Au, 0xBAu, 0xB8u, 0xE7u, 0xB3u, 0x49u, 0x1Au, 0xB9u, 0x85u, 0xBEu, 0xB9u, 0x18u, 0x70u, 0x30u, 0xDBu);
  if (!CFEqual(a2, v3))
  {
    return 0;
  }

  v4 = &qword_10160;
  qword_10160 = FigHALPluginDriverGetInterface();
  if (FigHALAudioObjectMapperCreate() || FigHALAudioCreateEndpointCentricPluginObject())
  {
    APSLogErrorAt();
    return 0;
  }

  return v4;
}