@interface ASEProcessingT1
- (id)populateOutputHcus:(aseConfigurationUnitsV3_t *)hcus;
- (int64_t)processFrameWithInput:(__IOSurface *)input Measurement:(id *)measurement callback:(id)callback;
- (int64_t)processFrameWithInput:(__IOSurface *)input Measurement:(id *)measurement outputData:(id *)data;
- (void)DumpArray:(const char *)array type:(int)type array:(void *)a5 count:(unsigned int)count numberPerRow:(unsigned int)row;
- (void)DumpOutputHcus:(id)hcus;
- (void)DumpPiecewiseLinearCurveV3:(const char *)v3 curve:(id *)curve;
- (void)configControlHeader_V3:(aseConfigurationUnitsV3_t *)v3;
- (void)dealloc;
- (void)printAseMeasurementOutput:(id *)output;
- (void)processPixelWithInput:(__IOSurface *)input Measurement:(id *)measurement controlUnitV3:(aseConfigurationUnitsV3_t *)v3;
- (void)processPixelWithInput_V3:(__IOSurface *)v3 Measurement:(id *)measurement Output:(aseConfigurationUnitsV3_t *)output;
- (void)processPixelWithMeasurement_V3:(__IOSurface *)v3 Measurement:(id *)measurement Output:(aseConfigurationUnitsV3_t *)output;
- (void)processPixelWithPixelControl_V3:(__IOSurface *)v3 Output:(aseConfigurationUnitsV3_t *)output;
@end

@implementation ASEProcessingT1

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  aseControlUnitV3 = self->_aseControlUnitV3;
  if (aseControlUnitV3)
  {
    free(aseControlUnitV3);
    self->_aseControlUnitV3 = 0;
  }

  aseControlUnitV3Cache = self->_aseControlUnitV3Cache;
  if (aseControlUnitV3Cache)
  {
    deleteCache(aseControlUnitV3Cache);
    self->_aseControlUnitV3Cache = 0;
  }

  if (logLevel >= 4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[ASEProcessingT1 dealloc]";
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] --  %s \n", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = ASEProcessingT1;
  [(ASEProcessingT0 *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)DumpArray:(const char *)array type:(int)type array:(void *)a5 count:(unsigned int)count numberPerRow:(unsigned int)row
{
  v29 = *MEMORY[0x277D85DE8];
  if (!count)
  {
    goto LABEL_25;
  }

  v11 = 0;
  v12 = count - 1;
  LODWORD(v13) = 512;
  v14 = __str;
  do
  {
    if (v14 == __str)
    {
      v15 = "{";
      if (v11)
      {
        v15 = " ";
      }

      v16 = __snprintf_chk(__str, v13, 0, 0x200uLL, "%s %s", array, v15);
      v14 = &__str[v16];
      LODWORD(v13) = v13 - v16;
    }

    if (type == 1)
    {
      v23 = *(a5 + v11);
      v18 = snprintf(v14, v13, "%s%d");
    }

    else if (type == 2)
    {
      v17 = *(a5 + v11);
      v18 = snprintf(v14, v13, "%s%f");
    }

    else
    {
      v24 = *(a5 + v11);
      v18 = snprintf(v14, v13, "%s%u");
    }

    v14 += v18;
    v13 = v13 - v18;
    v19 = " }";
    countCopy = count;
    if (v11 != v12)
    {
      countCopy = v11 + 1;
      if ((v11 + 1) % row)
      {
        goto LABEL_20;
      }

      v19 = ",";
    }

    snprintf(v14, v13, v19);
    if (logLevel < 3)
    {
      v18 = 0;
      LODWORD(v13) = 512;
      v14 = __str;
    }

    else
    {
      v21 = MEMORY[0x277D86220];
      v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      v14 = __str;
      if (v18)
      {
        *buf = 136315138;
        v27 = __str;
        _os_log_impl(&dword_23D3F2000, v21, OS_LOG_TYPE_DEFAULT, " [1.50.3] %s\n\n", buf, 0xCu);
        v18 = 0;
      }

      LODWORD(v13) = 512;
    }

LABEL_20:
    v11 = countCopy;
  }

  while (countCopy < count);
  if (v18 && logLevel > 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v27 = __str;
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] %s\n\n", buf, 0xCu);
  }

LABEL_25:
  v22 = *MEMORY[0x277D85DE8];
}

- (void)DumpPiecewiseLinearCurveV3:(const char *)v3 curve:(id *)curve
{
  v5 = 0;
  v23 = *MEMORY[0x277D85DE8];
  v6 = logLevel;
  p_var2 = &curve->var0[0].var2;
  v8 = MEMORY[0x277D86220];
  do
  {
    if (v6 >= 3)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(p_var2 - 2);
        v10 = *(p_var2 - 1);
        v11 = *p_var2;
        *buf = 136316162;
        v3Copy = v3;
        v15 = 1024;
        v16 = v5;
        v17 = 2048;
        v18 = v9;
        v19 = 2048;
        v20 = v10;
        v21 = 2048;
        v22 = v11;
        _os_log_impl(&dword_23D3F2000, v8, OS_LOG_TYPE_DEFAULT, " [1.50.3] %s #%d: { %f, %f, %f }\n", buf, 0x30u);
      }

      v6 = logLevel;
    }

    ++v5;
    p_var2 += 3;
  }

  while (v5 != 32);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)DumpOutputHcus:(id)hcus
{
  v459 = *MEMORY[0x277D85DE8];
  hcusCopy = hcus;
  bytes = [hcusCopy bytes];
  if (dumpOutputHcu)
  {
    v6 = bytes;
    if (logLevel >= 3)
    {
      v7 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *v6;
        v10 = v6[1];
        *buf = 136315650;
        v444 = "[ASEProcessingT1 DumpOutputHcus:]";
        v445 = 1024;
        v446 = v9;
        v447 = 1024;
        v448 = v10;
        _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: hcuHeader: hcuCount = %d, hcuSize = %d\n", buf, 0x18u);
      }
    }

    v430 = hcusCopy;
    selfCopy = self;
    if (*v6)
    {
      v11 = 0;
      v12 = 0;
      v433 = 0;
      v434 = 0;
      v435 = 0;
      v436 = 0;
      v437 = 0;
      v432 = 0;
      v13 = v6 + 2;
      v14 = MEMORY[0x277D86220];
      while (1)
      {
        if (logLevel >= 3)
        {
          v15 = v14;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v17 = *v13;
            v16 = v13[1];
            *buf = 136316930;
            v444 = "[ASEProcessingT1 DumpOutputHcus:]";
            v445 = 1024;
            v446 = v11;
            v447 = 1024;
            v448 = v16;
            v449 = 1024;
            v450 = v17;
            v451 = 1024;
            v452 = HIBYTE(v17);
            v453 = 1024;
            v454 = BYTE2(v17);
            v455 = 1024;
            v456 = BYTE1(v17);
            v457 = 1024;
            v458 = v17;
            _os_log_impl(&dword_23D3F2000, v14, OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: entryHeader[%d]: hcuSize = %d, hcuType = 0x%x ('%c%c%c%c')\n", buf, 0x36u);
          }
        }

        v18 = v13 + 2;
        v19 = *v13;
        if (*v13 <= 1634952557)
        {
          switch(v19)
          {
            case 1634952555:
              v434 = (v13 + 2);
              v18 = v13 + 323;
              break;
            case 1634952556:
              v435 = (v13 + 2);
              v18 = v13 + 529;
              break;
            case 1634952557:
              v437 = (v13 + 2);
              v18 = v13 + 390;
              break;
            default:
              goto LABEL_25;
          }
        }

        else if (v19 > 1634952559)
        {
          if (v19 == 1634952561)
          {
            v433 = v13 + 2;
            v18 = v13 + 130;
          }

          else
          {
            if (v19 != 1634952560)
            {
LABEL_25:
              if (logLevel >= 3)
              {
                v20 = v14;
                if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
                {
                  v21 = *v13;
                  *buf = 136316418;
                  v444 = "[ASEProcessingT1 DumpOutputHcus:]";
                  v445 = 1024;
                  v446 = v21;
                  v447 = 1024;
                  v448 = HIBYTE(v21);
                  v449 = 1024;
                  v450 = BYTE2(v21);
                  v451 = 1024;
                  v452 = BYTE1(v21);
                  v453 = 1024;
                  v454 = v21;
                  _os_log_impl(&dword_23D3F2000, v14, OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: ERROR: Unsupported HCU!  hcuType = 0x%x ('%c%c%c%c')\n", buf, 0x2Au);
                }
              }

              goto LABEL_32;
            }

            v12 = (v13 + 2);
            v18 = v13 + 8;
          }
        }

        else if (v19 == 1634952558)
        {
          v432 = (v13 + 2);
          v18 = v13 + 7;
        }

        else
        {
          if (v19 != 1634952559)
          {
            goto LABEL_25;
          }

          v436 = (v13 + 2);
          v18 = v13 + 4;
        }

LABEL_32:
        ++v11;
        v13 = v18;
        if (v11 >= *v6)
        {
          goto LABEL_35;
        }
      }
    }

    v432 = 0;
    v433 = 0;
    v436 = 0;
    v437 = 0;
    v434 = 0;
    v435 = 0;
    v12 = 0;
LABEL_35:
    hcusCopy = v430;
    v22 = v12;
    if ((dumpOutputHcu & 2) != 0)
    {
      v357 = logLevel;
      if (v12 && logLevel >= 3)
      {
        v358 = MEMORY[0x277D86220];
        v359 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v358, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v444 = "[ASEProcessingT1 DumpOutputHcus:]";
          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: -----------------------------------------------\n", buf, 0xCu);
        }

        v357 = logLevel;
        if (logLevel >= 3)
        {
          v360 = v358;
          if (os_log_type_enabled(v358, OS_LOG_TYPE_DEFAULT))
          {
            v361 = *v12;
            v362 = v12[1];
            v363 = v12[2];
            v364 = v12[3];
            v365 = v12[4];
            v366 = v12[5];
            *buf = 136316674;
            v444 = "[ASEProcessingT1 DumpOutputHcus:]";
            v445 = 1024;
            v446 = v361;
            v447 = 1024;
            v448 = v362;
            v449 = 1024;
            v450 = v363;
            v451 = 1024;
            v452 = v364;
            v453 = 1024;
            v454 = v365;
            v455 = 1024;
            v456 = v366;
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: scalingConfigV3Hcu: DDAInitX = %u, DDAInitY = %u, DDAStepX = 0x%x, DDAStepY = 0x%x, DDAInvStepX = 0x%x, DDAInvStepY = 0x%x\n", buf, 0x30u);
          }

          v357 = logLevel;
        }
      }

      if (v433)
      {
        if (v357 >= 3)
        {
          v367 = MEMORY[0x277D86220];
          v368 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v367, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v444 = "[ASEProcessingT1 DumpOutputHcus:]";
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: -----------------------------------------------\n", buf, 0xCu);
          }
        }

        snprintf(buf, 0x100uLL, "    %s: scalingCoeffV3Hcu: coeff :", "[ASEProcessingT1 DumpOutputHcus:]");
        [(ASEProcessingT1 *)selfCopy DumpFloatArray:buf array:v433 count:128 numberPerRow:8];
        v357 = logLevel;
      }

      if (v436 && v357 >= 3)
      {
        v369 = MEMORY[0x277D86220];
        v370 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v369, OS_LOG_TYPE_DEFAULT))
        {
          *v438 = 136315138;
          v439 = "[ASEProcessingT1 DumpOutputHcus:]";
          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: -----------------------------------------------\n", v438, 0xCu);
        }

        if (logLevel >= 3)
        {
          v371 = v369;
          if (os_log_type_enabled(v369, OS_LOG_TYPE_DEFAULT))
          {
            v372 = *v436;
            v373 = v436[1];
            *v438 = 136315650;
            v439 = "[ASEProcessingT1 DumpOutputHcus:]";
            v440 = 1024;
            *v441 = v372;
            *&v441[4] = 1024;
            *&v441[6] = v373;
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: angleDetectV3Hcu: signChangeThreshold = %u, hfeqThresh2 = %u\n", v438, 0x18u);
          }
        }
      }

      if (v437)
      {
        snprintf(buf, 0x100uLL, "    %s: blendConfigV3Hcu:", "[ASEProcessingT1 DumpOutputHcus:]");
        if (logLevel >= 3)
        {
          v374 = MEMORY[0x277D86220];
          v375 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v374, OS_LOG_TYPE_DEFAULT))
          {
            *v438 = 136315138;
            v439 = "[ASEProcessingT1 DumpOutputHcus:]";
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: -----------------------------------------------\n", v438, 0xCu);
          }

          if (logLevel >= 3)
          {
            v376 = v374;
            if (os_log_type_enabled(v374, OS_LOG_TYPE_DEFAULT))
            {
              *v438 = 136315138;
              v439 = "[ASEProcessingT1 DumpOutputHcus:]";
              _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: blendConfigV3Hcu: blendCurve[kASEBlendCurveEbeFactor]:\n", v438, 0xCu);
            }
          }
        }

        [(ASEProcessingT1 *)selfCopy DumpPiecewiseLinearCurveV3:buf curve:v437];
        if (logLevel >= 3)
        {
          v377 = MEMORY[0x277D86220];
          v378 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v377, OS_LOG_TYPE_DEFAULT))
          {
            *v438 = 136315138;
            v439 = "[ASEProcessingT1 DumpOutputHcus:]";
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: blendConfigV3Hcu: blendCurve[kASEBlendCurveW_EBE]:\n", v438, 0xCu);
          }
        }

        [(ASEProcessingT1 *)selfCopy DumpPiecewiseLinearCurveV3:buf curve:v437 + 96];
        if (logLevel >= 3)
        {
          v379 = MEMORY[0x277D86220];
          v380 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v379, OS_LOG_TYPE_DEFAULT))
          {
            *v438 = 136315138;
            v439 = "[ASEProcessingT1 DumpOutputHcus:]";
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: blendConfigV3Hcu: blendCurve[kASEBlendCurveW_Peaking]:\n", v438, 0xCu);
          }
        }

        [(ASEProcessingT1 *)selfCopy DumpPiecewiseLinearCurveV3:buf curve:v437 + 192];
        if (logLevel >= 3)
        {
          v381 = MEMORY[0x277D86220];
          v382 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v381, OS_LOG_TYPE_DEFAULT))
          {
            *v438 = 136315138;
            v439 = "[ASEProcessingT1 DumpOutputHcus:]";
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: blendConfigV3Hcu: blendCurve[kASEBlendCurveLuma]:\n", v438, 0xCu);
          }
        }

        [(ASEProcessingT1 *)selfCopy DumpPiecewiseLinearCurveV3:buf curve:v437 + 288];
        if (logLevel >= 3)
        {
          v383 = MEMORY[0x277D86220];
          v384 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v383, OS_LOG_TYPE_DEFAULT))
          {
            v385 = *(v437 + 384);
            v386 = *(v437 + 385);
            v387 = *(v437 + 386);
            v388 = *(v437 + 387);
            *v438 = 136316162;
            v439 = "[ASEProcessingT1 DumpOutputHcus:]";
            v440 = 1024;
            *v441 = v385;
            *&v441[4] = 1024;
            *&v441[6] = v386;
            *v442 = 1024;
            *&v442[2] = v387;
            *&v442[6] = 1024;
            *&v442[8] = v388;
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: blendConfigV3Hcu: BlendLogicSkinToneProtection: toneThresh = %u, toneEdgeThresh = %u, toneMaxThresh = %d, toneFactor = %d\n", v438, 0x24u);
          }
        }
      }

      if (v435)
      {
        snprintf(buf, 0x100uLL, "    %s: ebeConfigV3Hcu:", "[ASEProcessingT1 DumpOutputHcus:]");
        if (logLevel >= 3)
        {
          v389 = MEMORY[0x277D86220];
          v390 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v389, OS_LOG_TYPE_DEFAULT))
          {
            *v438 = 136315138;
            v439 = "[ASEProcessingT1 DumpOutputHcus:]";
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: -----------------------------------------------\n", v438, 0xCu);
          }

          if (logLevel >= 3)
          {
            v391 = v389;
            if (os_log_type_enabled(v389, OS_LOG_TYPE_DEFAULT))
            {
              *v438 = 136315138;
              v439 = "[ASEProcessingT1 DumpOutputHcus:]";
              _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: ebeConfigV3Hcu: EBECurve[kASEEBECurveEbeV3]:\n", v438, 0xCu);
            }
          }
        }

        [(ASEProcessingT1 *)selfCopy DumpPiecewiseLinearCurveV3:buf curve:v435];
        if (logLevel >= 3)
        {
          v392 = MEMORY[0x277D86220];
          v393 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v392, OS_LOG_TYPE_DEFAULT))
          {
            *v438 = 136315138;
            v439 = "[ASEProcessingT1 DumpOutputHcus:]";
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: ebeConfigV3Hcu: EBECurve[kASEEBECurveHf1PosV3]:\n", v438, 0xCu);
          }
        }

        [(ASEProcessingT1 *)selfCopy DumpPiecewiseLinearCurveV3:buf curve:v435 + 96];
        if (logLevel >= 3)
        {
          v394 = MEMORY[0x277D86220];
          v395 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v394, OS_LOG_TYPE_DEFAULT))
          {
            *v438 = 136315138;
            v439 = "[ASEProcessingT1 DumpOutputHcus:]";
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: ebeConfigV3Hcu: EBECurve[kASEEBECurveHf1NegV3]:\n", v438, 0xCu);
          }
        }

        [(ASEProcessingT1 *)selfCopy DumpPiecewiseLinearCurveV3:buf curve:v435 + 192];
        if (logLevel >= 3)
        {
          v396 = MEMORY[0x277D86220];
          v397 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v396, OS_LOG_TYPE_DEFAULT))
          {
            *v438 = 136315138;
            v439 = "[ASEProcessingT1 DumpOutputHcus:]";
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: ebeConfigV3Hcu: EBECurve[kASEEBECurveHf2V3]:\n", v438, 0xCu);
          }
        }

        [(ASEProcessingT1 *)selfCopy DumpPiecewiseLinearCurveV3:buf curve:v435 + 288];
        if (logLevel >= 3)
        {
          v398 = MEMORY[0x277D86220];
          v399 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v398, OS_LOG_TYPE_DEFAULT))
          {
            *v438 = 136315138;
            v439 = "[ASEProcessingT1 DumpOutputHcus:]";
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: ebeConfigV3Hcu: EBECurve[kASEEBECurveHf3V3]:\n", v438, 0xCu);
          }
        }

        [(ASEProcessingT1 *)selfCopy DumpPiecewiseLinearCurveV3:buf curve:v435 + 384];
        if (logLevel >= 3)
        {
          v400 = MEMORY[0x277D86220];
          v401 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v400, OS_LOG_TYPE_DEFAULT))
          {
            v402 = *(v435 + 480);
            v403 = *(v435 + 481);
            v404 = *(v435 + 482);
            *v438 = 136315906;
            v439 = "[ASEProcessingT1 DumpOutputHcus:]";
            v440 = 1024;
            *v441 = v402;
            *&v441[4] = 1024;
            *&v441[6] = v403;
            *v442 = 1024;
            *&v442[2] = v404;
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: ebeConfigV3Hcu: ebeParams: { sdaPenalty1 = %d, sdaPenalty2 = %d, dFfactor = %d }\n", v438, 0x1Eu);
          }
        }

        snprintf(buf, 0x100uLL, "    %s: ebeConfigV3Hcu: lowPass :", "[ASEProcessingT1 DumpOutputHcus:]");
        [(ASEProcessingT1 *)selfCopy DumpUintArray:buf array:v435 + 483 count:26 numberPerRow:26];
        snprintf(buf, 0x100uLL, "    %s: ebeConfigV3Hcu: weightLut :", "[ASEProcessingT1 DumpOutputHcus:]");
        [(ASEProcessingT1 *)selfCopy DumpUintArray:buf array:v435 + 509 count:18 numberPerRow:18];
      }

      if (v434)
      {
        snprintf(buf, 0x100uLL, "    %s: peakingConfigV3Hcu:", "[ASEProcessingT1 DumpOutputHcus:]");
        if (logLevel >= 3)
        {
          v405 = MEMORY[0x277D86220];
          v406 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v405, OS_LOG_TYPE_DEFAULT))
          {
            *v438 = 136315138;
            v439 = "[ASEProcessingT1 DumpOutputHcus:]";
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: -----------------------------------------------\n", v438, 0xCu);
          }

          if (logLevel >= 3)
          {
            v407 = v405;
            if (os_log_type_enabled(v405, OS_LOG_TYPE_DEFAULT))
            {
              v408 = *v434;
              *v438 = 136315394;
              v439 = "[ASEProcessingT1 DumpOutputHcus:]";
              v440 = 1024;
              *v441 = v408;
              _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: peakingConfigV3Hcu: gainForce = %d\n", v438, 0x12u);
            }

            if (logLevel >= 3)
            {
              v409 = v405;
              if (os_log_type_enabled(v405, OS_LOG_TYPE_DEFAULT))
              {
                *v438 = 136315138;
                v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: peakingConfigV3Hcu: coreGainCurve:\n", v438, 0xCu);
              }
            }
          }
        }

        [(ASEProcessingT1 *)selfCopy DumpPiecewiseLinearCurveV3:buf curve:v434 + 1];
        if (logLevel >= 3)
        {
          v410 = MEMORY[0x277D86220];
          v411 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v410, OS_LOG_TYPE_DEFAULT))
          {
            *v438 = 136315138;
            v439 = "[ASEProcessingT1 DumpOutputHcus:]";
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: peakingConfigV3Hcu: lowAdaptGainCurve:\n", v438, 0xCu);
          }
        }

        [(ASEProcessingT1 *)selfCopy DumpPiecewiseLinearCurveV3:buf curve:v434 + 97];
        if (logLevel >= 3)
        {
          v412 = MEMORY[0x277D86220];
          v413 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v412, OS_LOG_TYPE_DEFAULT))
          {
            *v438 = 136315138;
            v439 = "[ASEProcessingT1 DumpOutputHcus:]";
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: peakingConfigV3Hcu: mediumAdaptGainCurve:\n", v438, 0xCu);
          }
        }

        [(ASEProcessingT1 *)selfCopy DumpPiecewiseLinearCurveV3:buf curve:v434 + 193];
        if (logLevel >= 3)
        {
          v414 = MEMORY[0x277D86220];
          v415 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v414, OS_LOG_TYPE_DEFAULT))
          {
            v416 = *(v434 + 289);
            v417 = *(v434 + 290);
            v418 = *(v434 + 291);
            v419 = *(v434 + 292);
            v420 = *(v434 + 293);
            *v438 = 136316418;
            v439 = "[ASEProcessingT1 DumpOutputHcus:]";
            v440 = 1024;
            *v441 = v416;
            *&v441[4] = 1024;
            *&v441[6] = v417;
            *v442 = 1024;
            *&v442[2] = v418;
            *&v442[6] = 1024;
            *&v442[8] = v419;
            *&v442[12] = 1024;
            *&v442[14] = v420;
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: peakingConfigV3Hcu: peakingGain: adaptive = %u, gain5_3 = %u, gain7_5 = %u, gain11_9 = %u, gain13_11 = %u,\n", v438, 0x2Au);
          }
        }

        snprintf(buf, 0x100uLL, "    %s: peakingConfigV3Hcu: filt3 :", "[ASEProcessingT1 DumpOutputHcus:]");
        [(ASEProcessingT1 *)selfCopy DumpIntArray:buf array:v434 + 294 count:2 numberPerRow:2];
        snprintf(buf, 0x100uLL, "    %s: peakingConfigV3Hcu: filt5 :", "[ASEProcessingT1 DumpOutputHcus:]");
        [(ASEProcessingT1 *)selfCopy DumpIntArray:buf array:v434 + 296 count:3 numberPerRow:3];
        snprintf(buf, 0x100uLL, "    %s: peakingConfigV3Hcu: filt7 :", "[ASEProcessingT1 DumpOutputHcus:]");
        [(ASEProcessingT1 *)selfCopy DumpIntArray:buf array:v434 + 299 count:4 numberPerRow:4];
        snprintf(buf, 0x100uLL, "    %s: peakingConfigV3Hcu: filt9 :", "[ASEProcessingT1 DumpOutputHcus:]");
        [(ASEProcessingT1 *)selfCopy DumpIntArray:buf array:v434 + 303 count:5 numberPerRow:5];
        snprintf(buf, 0x100uLL, "    %s: peakingConfigV3Hcu: filt11 :", "[ASEProcessingT1 DumpOutputHcus:]");
        [(ASEProcessingT1 *)selfCopy DumpIntArray:buf array:v434 + 308 count:6 numberPerRow:6];
        snprintf(buf, 0x100uLL, "    %s: peakingConfigV3Hcu: filt13 :", "[ASEProcessingT1 DumpOutputHcus:]");
        [(ASEProcessingT1 *)selfCopy DumpIntArray:buf array:v434 + 314 count:7 numberPerRow:7];
      }

      if (v432 && logLevel >= 3)
      {
        v421 = MEMORY[0x277D86220];
        v422 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v421, OS_LOG_TYPE_DEFAULT))
        {
          *v438 = 136315138;
          v439 = "[ASEProcessingT1 DumpOutputHcus:]";
          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: -----------------------------------------------\n", v438, 0xCu);
        }

        if (logLevel >= 3)
        {
          v423 = v421;
          if (os_log_type_enabled(v421, OS_LOG_TYPE_DEFAULT))
          {
            v424 = *v432;
            v425 = v432[1];
            *v438 = 136315650;
            v439 = "[ASEProcessingT1 DumpOutputHcus:]";
            v440 = 1024;
            *v441 = v424;
            *&v441[4] = 1024;
            *&v441[6] = v425;
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: noiseMeterV3Hcu: NoiseMeter: NoiseMeterConfig: sizeX = %u, sizeY = %u\n", v438, 0x18u);
          }

          if (logLevel >= 3)
          {
            v426 = v421;
            if (os_log_type_enabled(v421, OS_LOG_TYPE_DEFAULT))
            {
              v427 = v432[2];
              v428 = v432[3];
              v429 = v432[4];
              *v438 = 136315906;
              v439 = "[ASEProcessingT1 DumpOutputHcus:]";
              v440 = 1024;
              *v441 = v427;
              *&v441[4] = 1024;
              *&v441[6] = v428;
              *v442 = 1024;
              *&v442[2] = v429;
              _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: noiseMeterV3Hcu: NoiseMeter: NoiseMeterGainControl: lut0Gain = %u, lut1Gain = %u, lut2Gain = %u\n", v438, 0x1Eu);
            }
          }
        }
      }
    }

    if (dumpOutputHcu)
    {
      if (v436 && logLevel >= 3)
      {
        msrBaseAddr = selfCopy->_msrBaseAddr;
        v24 = MEMORY[0x277D86220];
        v25 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *v438 = 136315138;
          v439 = "[ASEProcessingT1 DumpOutputHcus:]";
          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: -----------------------------------------------\n", v438, 0xCu);
        }

        if (logLevel >= 3)
        {
          v26 = v24;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v27 = v436[1];
            *v438 = 136316418;
            v439 = "[ASEProcessingT1 DumpOutputHcus:]";
            v440 = 2048;
            *v441 = msrBaseAddr + 39824;
            *&v441[8] = 2080;
            *v442 = "XXXXXXXX";
            *&v442[8] = 2080;
            *&v442[10] = "XXXXXXXX";
            *&v442[18] = 2080;
            *&v442[20] = "XXXXXXXX";
            *&v442[28] = 1024;
            *&v442[30] = v27;
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %s %s %s %08x\n", v438, 0x3Au);
          }

          if (logLevel >= 3)
          {
            v28 = selfCopy->_msrBaseAddr;
            v29 = v24;
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v30 = *v436 & 7;
              *v438 = 136316418;
              v439 = "[ASEProcessingT1 DumpOutputHcus:]";
              v440 = 2048;
              *v441 = v28 + 39856;
              *&v441[8] = 2080;
              *v442 = "XXXXXXXX";
              *&v442[8] = 1024;
              *&v442[10] = v30;
              *&v442[14] = 2080;
              *&v442[16] = "XXXXXXXX";
              *&v442[24] = 2080;
              *&v442[26] = "XXXXXXXX";
              _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %s %08x %s %s\n", v438, 0x3Au);
            }
          }
        }
      }

      if (v22 && logLevel >= 3)
      {
        v31 = selfCopy->_msrBaseAddr;
        v32 = MEMORY[0x277D86220];
        v33 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *v438 = 136315138;
          v439 = "[ASEProcessingT1 DumpOutputHcus:]";
          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: -----------------------------------------------\n", v438, 0xCu);
        }

        if (logLevel >= 3)
        {
          v34 = v32;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v35 = v22[3];
            v37 = *v22;
            v36 = v22[1];
            *v438 = 136316418;
            v439 = "[ASEProcessingT1 DumpOutputHcus:]";
            v440 = 2048;
            *v441 = v31 + 40448;
            *&v441[8] = 2080;
            *v442 = "XXXXXXXX";
            *&v442[8] = 1024;
            *&v442[10] = v36;
            *&v442[14] = 1024;
            *&v442[16] = v35;
            *&v442[20] = 1024;
            *&v442[22] = v37;
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %s %08x %08x %08x\n", v438, 0x32u);
          }

          if (logLevel >= 3)
          {
            v38 = v32;
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v39 = v22[2];
              v41 = v22[4];
              v40 = v22[5];
              *v438 = 136316418;
              v439 = "[ASEProcessingT1 DumpOutputHcus:]";
              v440 = 2048;
              *v441 = v31 + 40464;
              *&v441[8] = 1024;
              *v442 = v39;
              *&v442[4] = 1024;
              *&v442[6] = v40;
              *&v442[10] = 1024;
              *&v442[12] = v41;
              *&v442[16] = 2080;
              *&v442[18] = "XXXXXXXX";
              _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %s\n", v438, 0x32u);
            }
          }
        }
      }

      if (v433)
      {
        v42 = selfCopy->_msrBaseAddr;
        v43 = logLevel;
        if (logLevel >= 3)
        {
          v44 = MEMORY[0x277D86220];
          v45 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            *v438 = 136315138;
            v439 = "[ASEProcessingT1 DumpOutputHcus:]";
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: -----------------------------------------------\n", v438, 0xCu);
          }

          v43 = logLevel;
        }

        v46 = v42 + 40576;
        v47 = (v433 + 16);
        v48 = 4;
        v49 = MEMORY[0x277D86220];
        do
        {
          if (v43 >= 3)
          {
            v50 = v49;
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              v51 = float_to_twos_complement(3, 12, *(v47 - 16));
              v52 = v51 | (float_to_twos_complement(3, 12, *(v47 - 15)) << 16);
              v53 = float_to_twos_complement(3, 12, *(v47 - 14));
              v54 = v53 | (float_to_twos_complement(3, 12, *(v47 - 13)) << 16);
              v55 = float_to_twos_complement(3, 12, *(v47 - 12));
              v56 = v55 | (float_to_twos_complement(3, 12, *(v47 - 11)) << 16);
              v57 = float_to_twos_complement(3, 12, *(v47 - 10));
              v58 = float_to_twos_complement(3, 12, *(v47 - 9));
              *v438 = 136316418;
              v439 = "[ASEProcessingT1 DumpOutputHcus:]";
              v440 = 2048;
              *v441 = v46;
              *&v441[8] = 1024;
              *v442 = v52;
              *&v442[4] = 1024;
              *&v442[6] = v54;
              *&v442[10] = 1024;
              *&v442[12] = v56;
              *&v442[16] = 1024;
              *&v442[18] = v57 | (v58 << 16);
              _os_log_impl(&dword_23D3F2000, v49, OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
            }

            v43 = logLevel;
            if (logLevel >= 3)
            {
              v59 = v49;
              if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
              {
                v60 = float_to_twos_complement(3, 12, *(v47 - 8));
                v61 = v60 | (float_to_twos_complement(3, 12, *(v47 - 7)) << 16);
                v62 = float_to_twos_complement(3, 12, *(v47 - 6));
                v63 = v62 | (float_to_twos_complement(3, 12, *(v47 - 5)) << 16);
                v64 = float_to_twos_complement(3, 12, *(v47 - 4));
                v65 = v64 | (float_to_twos_complement(3, 12, *(v47 - 3)) << 16);
                v66 = float_to_twos_complement(3, 12, *(v47 - 2));
                v67 = float_to_twos_complement(3, 12, *(v47 - 1));
                *v438 = 136316418;
                v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                v440 = 2048;
                *v441 = v46 + 16;
                *&v441[8] = 1024;
                *v442 = v61;
                *&v442[4] = 1024;
                *&v442[6] = v63;
                *&v442[10] = 1024;
                *&v442[12] = v65;
                *&v442[16] = 1024;
                *&v442[18] = v66 | (v67 << 16);
                _os_log_impl(&dword_23D3F2000, v49, OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
              }

              v43 = logLevel;
              if (logLevel >= 3)
              {
                v68 = v49;
                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                {
                  v69 = float_to_twos_complement(3, 12, *v47);
                  v70 = v69 | (float_to_twos_complement(3, 12, v47[1]) << 16);
                  v71 = float_to_twos_complement(3, 12, v47[2]);
                  v72 = v71 | (float_to_twos_complement(3, 12, v47[3]) << 16);
                  v73 = float_to_twos_complement(3, 12, v47[4]);
                  v74 = v73 | (float_to_twos_complement(3, 12, v47[5]) << 16);
                  v75 = float_to_twos_complement(3, 12, v47[6]);
                  v76 = float_to_twos_complement(3, 12, v47[7]);
                  *v438 = 136316418;
                  v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                  v440 = 2048;
                  *v441 = v46 + 32;
                  *&v441[8] = 1024;
                  *v442 = v70;
                  *&v442[4] = 1024;
                  *&v442[6] = v72;
                  *&v442[10] = 1024;
                  *&v442[12] = v74;
                  *&v442[16] = 1024;
                  *&v442[18] = v75 | (v76 << 16);
                  _os_log_impl(&dword_23D3F2000, v49, OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
                }

                v43 = logLevel;
                if (logLevel >= 3)
                {
                  v77 = v49;
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                  {
                    v78 = float_to_twos_complement(3, 12, v47[8]);
                    v79 = v78 | (float_to_twos_complement(3, 12, v47[9]) << 16);
                    v80 = float_to_twos_complement(3, 12, v47[10]);
                    v81 = v80 | (float_to_twos_complement(3, 12, v47[11]) << 16);
                    v82 = float_to_twos_complement(3, 12, v47[12]);
                    v83 = v82 | (float_to_twos_complement(3, 12, v47[13]) << 16);
                    v84 = float_to_twos_complement(3, 12, v47[14]);
                    v85 = float_to_twos_complement(3, 12, v47[15]);
                    *v438 = 136316418;
                    v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                    v440 = 2048;
                    *v441 = v46 + 48;
                    *&v441[8] = 1024;
                    *v442 = v79;
                    *&v442[4] = 1024;
                    *&v442[6] = v81;
                    *&v442[10] = 1024;
                    *&v442[12] = v83;
                    *&v442[16] = 1024;
                    *&v442[18] = v84 | (v85 << 16);
                    _os_log_impl(&dword_23D3F2000, v49, OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
                  }

                  v43 = logLevel;
                }
              }
            }
          }

          v46 += 64;
          v47 += 32;
          --v48;
        }

        while (v48);
      }

      v86 = v437;
      v87 = selfCopy;
      if (v437 && logLevel >= 3)
      {
        v88 = selfCopy->_msrBaseAddr;
        v89 = MEMORY[0x277D86220];
        v90 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
        {
          *v438 = 136315138;
          v439 = "[ASEProcessingT1 DumpOutputHcus:]";
          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: -----------------------------------------------\n", v438, 0xCu);
        }

        if (logLevel >= 3)
        {
          v91 = v88 + 41008;
          v92 = v89;
          if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
          {
            v93 = *v437 & 0x7FF | ((v437[3] & 0x7FF) << 16);
            v94 = v437[6] & 0x7FF | ((v437[9] & 0x7FF) << 16);
            v95 = v437[12] & 0x7FF | ((v437[15] & 0x7FF) << 16);
            v96 = v437[18] & 0x7FF | ((v437[21] & 0x7FF) << 16);
            *v438 = 136316418;
            v439 = "[ASEProcessingT1 DumpOutputHcus:]";
            v440 = 2048;
            *v441 = v88 + 41008;
            *&v441[8] = 1024;
            *v442 = v93;
            *&v442[4] = 1024;
            *&v442[6] = v94;
            *&v442[10] = 1024;
            *&v442[12] = v95;
            *&v442[16] = 1024;
            *&v442[18] = v96;
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
          }

          if (logLevel >= 3)
          {
            v97 = v89;
            if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
            {
              v98 = v437[8];
              v99 = v437[11];
              v100 = v437[2];
              v101 = v437[5];
              v91 = v88 + 41024;
              v102 = v437[1] | (v437[4] << 8) | (v437[7] << 16) | (v437[10] << 24);
              v103 = v437[13] | (v437[16] << 8) | (v437[19] << 16) | (v437[22] << 24);
              *v438 = 136316418;
              v439 = "[ASEProcessingT1 DumpOutputHcus:]";
              v440 = 2048;
              *v441 = v88 + 41024;
              *&v441[8] = 1024;
              *v442 = v102;
              *&v442[4] = 1024;
              *&v442[6] = v103;
              *&v442[10] = 1024;
              *&v442[12] = v100 & 0x1FF | ((v101 & 0x1FF) << 16);
              *&v442[16] = 1024;
              *&v442[18] = v98 & 0x1FF | ((v99 & 0x1FF) << 16);
              _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
            }

            if (logLevel >= 3)
            {
              v104 = v89;
              if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
              {
                v105 = v437[14] & 0x1FF | ((v437[17] & 0x1FF) << 16);
                v106 = v437[20] & 0x1FF | ((v437[23] & 0x1FF) << 16);
                *v438 = 136316418;
                v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                v440 = 2048;
                *v441 = v91 + 16;
                *&v441[8] = 1024;
                *v442 = v105;
                *&v442[4] = 1024;
                *&v442[6] = v106;
                *&v442[10] = 2080;
                *&v442[12] = "XXXXXXXX";
                *&v442[20] = 2080;
                *&v442[22] = "XXXXXXXX";
                _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %s %s\n", v438, 0x36u);
              }
            }
          }
        }
      }

      if (v435 && logLevel >= 3)
      {
        v107 = selfCopy->_msrBaseAddr;
        v108 = MEMORY[0x277D86220];
        v109 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
        {
          *v438 = 136315138;
          v439 = "[ASEProcessingT1 DumpOutputHcus:]";
          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: -----------------------------------------------\n", v438, 0xCu);
        }

        if (logLevel >= 3)
        {
          v110 = v107 + 41216;
          v111 = v108;
          if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
          {
            v112 = v435[384] & 0xFFF | ((v435[387] & 0xFFF) << 16);
            v113 = v435[390] & 0xFFF | ((v435[393] & 0xFFF) << 16);
            v114 = v435[396] & 0xFFF | ((v435[399] & 0xFFF) << 16);
            *v438 = 136316418;
            v439 = "[ASEProcessingT1 DumpOutputHcus:]";
            v440 = 2048;
            *v441 = v107 + 41216;
            *&v441[8] = 2080;
            *v442 = "XXXXXXXX";
            *&v442[8] = 1024;
            *&v442[10] = v112;
            *&v442[14] = 1024;
            *&v442[16] = v113;
            *&v442[20] = 1024;
            *&v442[22] = v114;
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %s %08x %08x %08x\n", v438, 0x32u);
          }

          if (logLevel >= 3)
          {
            v115 = v108;
            if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
            {
              v110 = v107 + 41232;
              v116 = v435[402] & 0xFFF | ((v435[405] & 0xFFF) << 16);
              v117 = *v435 | (v435[3] << 16);
              v118 = v435[6] | (v435[9] << 16);
              v119 = v435[12] | (v435[15] << 16);
              *v438 = 136316418;
              v439 = "[ASEProcessingT1 DumpOutputHcus:]";
              v440 = 2048;
              *v441 = v107 + 41232;
              *&v441[8] = 1024;
              *v442 = v116;
              *&v442[4] = 1024;
              *&v442[6] = v117;
              *&v442[10] = 1024;
              *&v442[12] = v118;
              *&v442[16] = 1024;
              *&v442[18] = v119;
              _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
            }

            if (logLevel >= 3)
            {
              v120 = v108;
              if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
              {
                v110 += 16;
                v121 = v435[18] | (v435[21] << 16);
                v122 = v435[24] | (v435[27] << 16);
                v123 = v435[30] | (v435[33] << 16);
                v124 = v435[36] | (v435[39] << 16);
                *v438 = 136316418;
                v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                v440 = 2048;
                *v441 = v110;
                *&v441[8] = 1024;
                *v442 = v121;
                *&v442[4] = 1024;
                *&v442[6] = v122;
                *&v442[10] = 1024;
                *&v442[12] = v123;
                *&v442[16] = 1024;
                *&v442[18] = v124;
                _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
              }

              if (logLevel >= 3)
              {
                v125 = v108;
                if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                {
                  v110 += 16;
                  v126 = v435[42] | (v435[45] << 16);
                  v127 = v435[2] & 0x3FF | ((v435[5] & 0x3FF) << 16);
                  v128 = v435[8] & 0x3FF | ((v435[11] & 0x3FF) << 16);
                  v129 = v435[14] & 0x3FF | ((v435[17] & 0x3FF) << 16);
                  *v438 = 136316418;
                  v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                  v440 = 2048;
                  *v441 = v110;
                  *&v441[8] = 1024;
                  *v442 = v126;
                  *&v442[4] = 1024;
                  *&v442[6] = v127;
                  *&v442[10] = 1024;
                  *&v442[12] = v128;
                  *&v442[16] = 1024;
                  *&v442[18] = v129;
                  _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
                }

                if (logLevel >= 3)
                {
                  v130 = v108;
                  if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                  {
                    v110 += 16;
                    v131 = v435[20] & 0x3FF | ((v435[23] & 0x3FF) << 16);
                    v132 = v435[26] & 0x3FF | ((v435[29] & 0x3FF) << 16);
                    v133 = v435[32] & 0x3FF | ((v435[35] & 0x3FF) << 16);
                    v134 = v435[38] & 0x3FF | ((v435[41] & 0x3FF) << 16);
                    *v438 = 136316418;
                    v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                    v440 = 2048;
                    *v441 = v110;
                    *&v441[8] = 1024;
                    *v442 = v131;
                    *&v442[4] = 1024;
                    *&v442[6] = v132;
                    *&v442[10] = 1024;
                    *&v442[12] = v133;
                    *&v442[16] = 1024;
                    *&v442[18] = v134;
                    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
                  }

                  if (logLevel >= 3)
                  {
                    v135 = v108;
                    if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                    {
                      v110 += 16;
                      v136 = v435[44] & 0x3FF | ((v435[47] & 0x3FF) << 16);
                      v137 = v435[1] & 0x3FF | ((v435[4] & 0x3FF) << 16);
                      v138 = v435[7] & 0x3FF | ((v435[10] & 0x3FF) << 16);
                      v139 = v435[13] & 0x3FF | ((v435[16] & 0x3FF) << 16);
                      *v438 = 136316418;
                      v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                      v440 = 2048;
                      *v441 = v110;
                      *&v441[8] = 1024;
                      *v442 = v136;
                      *&v442[4] = 1024;
                      *&v442[6] = v137;
                      *&v442[10] = 1024;
                      *&v442[12] = v138;
                      *&v442[16] = 1024;
                      *&v442[18] = v139;
                      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
                    }

                    if (logLevel >= 3)
                    {
                      v140 = v108;
                      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                      {
                        v110 += 16;
                        v141 = v435[19] & 0x3FF | ((v435[22] & 0x3FF) << 16);
                        v142 = v435[25] & 0x3FF | ((v435[28] & 0x3FF) << 16);
                        v143 = v435[31] & 0x3FF | ((v435[34] & 0x3FF) << 16);
                        v144 = v435[37] & 0x3FF | ((v435[40] & 0x3FF) << 16);
                        *v438 = 136316418;
                        v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                        v440 = 2048;
                        *v441 = v110;
                        *&v441[8] = 1024;
                        *v442 = v141;
                        *&v442[4] = 1024;
                        *&v442[6] = v142;
                        *&v442[10] = 1024;
                        *&v442[12] = v143;
                        *&v442[16] = 1024;
                        *&v442[18] = v144;
                        _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
                      }

                      if (logLevel >= 3)
                      {
                        v145 = v108;
                        if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                        {
                          v110 += 16;
                          v146 = v435[43] & 0x3FF | ((v435[46] & 0x3FF) << 16);
                          v147 = v435[509] & 0x1FF | ((v435[510] & 0x1FF) << 9) & 0xF803FFFF | ((v435[511] & 0x1FF) << 18);
                          v148 = v435[512] & 0x1FF | ((v435[513] & 0x1FF) << 9) & 0xF803FFFF | ((v435[514] & 0x1FF) << 18);
                          v149 = v435[515] & 0x1FF | ((v435[516] & 0x1FF) << 9) & 0xF803FFFF | ((v435[517] & 0x1FF) << 18);
                          *v438 = 136316418;
                          v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                          v440 = 2048;
                          *v441 = v110;
                          *&v441[8] = 1024;
                          *v442 = v146;
                          *&v442[4] = 1024;
                          *&v442[6] = v147;
                          *&v442[10] = 1024;
                          *&v442[12] = v148;
                          *&v442[16] = 1024;
                          *&v442[18] = v149;
                          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
                        }

                        if (logLevel >= 3)
                        {
                          v150 = v108;
                          if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                          {
                            v110 += 16;
                            v151 = v435[518] & 0x1FF | ((v435[519] & 0x1FF) << 9) & 0xF803FFFF | ((v435[520] & 0x1FF) << 18);
                            v152 = v435[521] & 0x1FF | ((v435[522] & 0x1FF) << 9) & 0xF803FFFF | ((v435[523] & 0x1FF) << 18);
                            v153 = v435[524] & 0x1FF | ((v435[525] & 0x1FF) << 9) & 0xF803FFFF | ((v435[526] & 0x1FF) << 18);
                            v154 = v435[288] & 0xFFF | ((v435[291] & 0xFFF) << 16);
                            *v438 = 136316418;
                            v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                            v440 = 2048;
                            *v441 = v110;
                            *&v441[8] = 1024;
                            *v442 = v151;
                            *&v442[4] = 1024;
                            *&v442[6] = v152;
                            *&v442[10] = 1024;
                            *&v442[12] = v153;
                            *&v442[16] = 1024;
                            *&v442[18] = v154;
                            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
                          }

                          if (logLevel >= 3)
                          {
                            v155 = v108;
                            if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                            {
                              v110 += 16;
                              v156 = v435[294] & 0xFFF | ((v435[297] & 0xFFF) << 16);
                              v157 = v435[300] & 0xFFF | ((v435[303] & 0xFFF) << 16);
                              v158 = v435[306] & 0xFFF | ((v435[309] & 0xFFF) << 16);
                              v159 = v435[290] & 0x7FF | ((v435[293] & 0x7FF) << 16);
                              *v438 = 136316418;
                              v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                              v440 = 2048;
                              *v441 = v110;
                              *&v441[8] = 1024;
                              *v442 = v156;
                              *&v442[4] = 1024;
                              *&v442[6] = v157;
                              *&v442[10] = 1024;
                              *&v442[12] = v158;
                              *&v442[16] = 1024;
                              *&v442[18] = v159;
                              _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
                            }

                            v86 = v437;
                            v87 = selfCopy;
                            if (logLevel >= 3)
                            {
                              v160 = v108;
                              if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                              {
                                v110 += 16;
                                v161 = v435[296] & 0x7FF | ((v435[299] & 0x7FF) << 16);
                                v162 = v435[302] & 0x7FF | ((v435[305] & 0x7FF) << 16);
                                v163 = v435[308] & 0x7FF | ((v435[311] & 0x7FF) << 16);
                                v164 = v435[289] & 0xFFF | ((v435[292] & 0xFFF) << 16);
                                *v438 = 136316418;
                                v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                                v440 = 2048;
                                *v441 = v110;
                                *&v441[8] = 1024;
                                *v442 = v161;
                                *&v442[4] = 1024;
                                *&v442[6] = v162;
                                *&v442[10] = 1024;
                                *&v442[12] = v163;
                                *&v442[16] = 1024;
                                *&v442[18] = v164;
                                _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
                              }

                              v86 = v437;
                              v87 = selfCopy;
                              if (logLevel >= 3)
                              {
                                v165 = v108;
                                if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                                {
                                  v110 += 16;
                                  v166 = v435[295] & 0xFFF | ((v435[298] & 0xFFF) << 16);
                                  v167 = v435[301] & 0xFFF | ((v435[304] & 0xFFF) << 16);
                                  v168 = v435[307] & 0xFFF | ((v435[310] & 0xFFF) << 16);
                                  v169 = v435[96] & 0xFFF | ((v435[99] & 0xFFF) << 16);
                                  *v438 = 136316418;
                                  v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                                  v440 = 2048;
                                  *v441 = v110;
                                  *&v441[8] = 1024;
                                  *v442 = v166;
                                  *&v442[4] = 1024;
                                  *&v442[6] = v167;
                                  *&v442[10] = 1024;
                                  *&v442[12] = v168;
                                  *&v442[16] = 1024;
                                  *&v442[18] = v169;
                                  _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
                                }

                                v86 = v437;
                                v87 = selfCopy;
                                if (logLevel >= 3)
                                {
                                  v170 = v108;
                                  if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v110 += 16;
                                    v171 = v435[102] & 0xFFF | ((v435[105] & 0xFFF) << 16);
                                    v172 = v435[108] & 0xFFF | ((v435[111] & 0xFFF) << 16);
                                    v173 = v435[114] & 0xFFF | ((v435[117] & 0xFFF) << 16);
                                    v174 = v435[98] & 0x7FF | ((v435[101] & 0x7FF) << 16);
                                    *v438 = 136316418;
                                    v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                                    v440 = 2048;
                                    *v441 = v110;
                                    *&v441[8] = 1024;
                                    *v442 = v171;
                                    *&v442[4] = 1024;
                                    *&v442[6] = v172;
                                    *&v442[10] = 1024;
                                    *&v442[12] = v173;
                                    *&v442[16] = 1024;
                                    *&v442[18] = v174;
                                    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
                                  }

                                  v86 = v437;
                                  v87 = selfCopy;
                                  if (logLevel >= 3)
                                  {
                                    v175 = v108;
                                    if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                                    {
                                      v110 += 16;
                                      v176 = v435[104] & 0x7FF | ((v435[107] & 0x7FF) << 16);
                                      v177 = v435[110] & 0x7FF | ((v435[113] & 0x7FF) << 16);
                                      v178 = v435[116] & 0x7FF | ((v435[119] & 0x7FF) << 16);
                                      v179 = v435[97] & 0xFFF | ((v435[100] & 0xFFF) << 16);
                                      *v438 = 136316418;
                                      v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                                      v440 = 2048;
                                      *v441 = v110;
                                      *&v441[8] = 1024;
                                      *v442 = v176;
                                      *&v442[4] = 1024;
                                      *&v442[6] = v177;
                                      *&v442[10] = 1024;
                                      *&v442[12] = v178;
                                      *&v442[16] = 1024;
                                      *&v442[18] = v179;
                                      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
                                    }

                                    v86 = v437;
                                    v87 = selfCopy;
                                    if (logLevel >= 3)
                                    {
                                      v180 = v108;
                                      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                                      {
                                        v110 += 16;
                                        v181 = v435[103] & 0xFFF | ((v435[106] & 0xFFF) << 16);
                                        v182 = v435[109] & 0xFFF | ((v435[112] & 0xFFF) << 16);
                                        v183 = v435[115] & 0xFFF | ((v435[118] & 0xFFF) << 16);
                                        v184 = v435[192] & 0xFFF | ((v435[195] & 0xFFF) << 16);
                                        *v438 = 136316418;
                                        v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                                        v440 = 2048;
                                        *v441 = v110;
                                        *&v441[8] = 1024;
                                        *v442 = v181;
                                        *&v442[4] = 1024;
                                        *&v442[6] = v182;
                                        *&v442[10] = 1024;
                                        *&v442[12] = v183;
                                        *&v442[16] = 1024;
                                        *&v442[18] = v184;
                                        _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
                                      }

                                      v86 = v437;
                                      v87 = selfCopy;
                                      if (logLevel >= 3)
                                      {
                                        v185 = v108;
                                        if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                                        {
                                          v110 += 16;
                                          v186 = v435[198] & 0xFFF | ((v435[201] & 0xFFF) << 16);
                                          v187 = v435[204] & 0xFFF | ((v435[207] & 0xFFF) << 16);
                                          v188 = v435[210] & 0xFFF | ((v435[213] & 0xFFF) << 16);
                                          v189 = v435[194] & 0x7FF | ((v435[197] & 0x7FF) << 16);
                                          *v438 = 136316418;
                                          v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                                          v440 = 2048;
                                          *v441 = v110;
                                          *&v441[8] = 1024;
                                          *v442 = v186;
                                          *&v442[4] = 1024;
                                          *&v442[6] = v187;
                                          *&v442[10] = 1024;
                                          *&v442[12] = v188;
                                          *&v442[16] = 1024;
                                          *&v442[18] = v189;
                                          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
                                        }

                                        v86 = v437;
                                        v87 = selfCopy;
                                        if (logLevel >= 3)
                                        {
                                          v190 = v108;
                                          if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                                          {
                                            v110 += 16;
                                            v191 = v435[200] & 0x7FF | ((v435[203] & 0x7FF) << 16);
                                            v192 = v435[206] & 0x7FF | ((v435[209] & 0x7FF) << 16);
                                            v193 = v435[212] & 0x7FF | ((v435[215] & 0x7FF) << 16);
                                            v194 = v435[193] & 0xFFF | ((v435[196] & 0xFFF) << 16);
                                            *v438 = 136316418;
                                            v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                                            v440 = 2048;
                                            *v441 = v110;
                                            *&v441[8] = 1024;
                                            *v442 = v191;
                                            *&v442[4] = 1024;
                                            *&v442[6] = v192;
                                            *&v442[10] = 1024;
                                            *&v442[12] = v193;
                                            *&v442[16] = 1024;
                                            *&v442[18] = v194;
                                            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
                                          }

                                          v86 = v437;
                                          v87 = selfCopy;
                                          if (logLevel >= 3)
                                          {
                                            v195 = v108;
                                            if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                                            {
                                              v110 += 16;
                                              v196 = v435[199] & 0xFFF | ((v435[202] & 0xFFF) << 16);
                                              v197 = v435[205] & 0xFFF | ((v435[208] & 0xFFF) << 16);
                                              v198 = v435[211] & 0xFFF | ((v435[214] & 0xFFF) << 16);
                                              v199 = v435[480] & 0x3F | ((v435[481] & 0x3F) << 6) & 0xFFF | ((v435[482] & 0x3F) << 12);
                                              *v438 = 136316418;
                                              v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                                              v440 = 2048;
                                              *v441 = v110;
                                              *&v441[8] = 1024;
                                              *v442 = v196;
                                              *&v442[4] = 1024;
                                              *&v442[6] = v197;
                                              *&v442[10] = 1024;
                                              *&v442[12] = v198;
                                              *&v442[16] = 1024;
                                              *&v442[18] = v199;
                                              _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
                                            }

                                            v86 = v437;
                                            v87 = selfCopy;
                                            if (logLevel >= 3)
                                            {
                                              v200 = v108;
                                              if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                                              {
                                                v110 += 16;
                                                v201 = v435[483] & 0xFFF | ((v435[484] & 0xFFF) << 16);
                                                v202 = v435[485] & 0xFFF | ((v435[486] & 0xFFF) << 16);
                                                v203 = v435[487] & 0xFFF | ((v435[488] & 0xFFF) << 16);
                                                v204 = v435[489] & 0xFFF | ((v435[490] & 0xFFF) << 16);
                                                *v438 = 136316418;
                                                v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                                                v440 = 2048;
                                                *v441 = v110;
                                                *&v441[8] = 1024;
                                                *v442 = v201;
                                                *&v442[4] = 1024;
                                                *&v442[6] = v202;
                                                *&v442[10] = 1024;
                                                *&v442[12] = v203;
                                                *&v442[16] = 1024;
                                                *&v442[18] = v204;
                                                _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
                                              }

                                              v86 = v437;
                                              v87 = selfCopy;
                                              if (logLevel >= 3)
                                              {
                                                v205 = v108;
                                                if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                                                {
                                                  v110 += 16;
                                                  v206 = v435[491] & 0xFFF | ((v435[492] & 0xFFF) << 16);
                                                  v207 = v435[493] & 0xFFF | ((v435[494] & 0xFFF) << 16);
                                                  v208 = v435[495] & 0xFFF | ((v435[496] & 0xFFF) << 16);
                                                  v209 = v435[497] & 0xFFF | ((v435[498] & 0xFFF) << 16);
                                                  *v438 = 136316418;
                                                  v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                                                  v440 = 2048;
                                                  *v441 = v110;
                                                  *&v441[8] = 1024;
                                                  *v442 = v206;
                                                  *&v442[4] = 1024;
                                                  *&v442[6] = v207;
                                                  *&v442[10] = 1024;
                                                  *&v442[12] = v208;
                                                  *&v442[16] = 1024;
                                                  *&v442[18] = v209;
                                                  _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
                                                }

                                                v86 = v437;
                                                v87 = selfCopy;
                                                if (logLevel >= 3)
                                                {
                                                  v210 = v108;
                                                  if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                                                  {
                                                    v110 += 16;
                                                    v211 = v435[499] & 0xFFF | ((v435[500] & 0xFFF) << 16);
                                                    v212 = v435[501] & 0xFFF | ((v435[502] & 0xFFF) << 16);
                                                    v213 = v435[503] & 0xFFF | ((v435[504] & 0xFFF) << 16);
                                                    v214 = v435[505] & 0xFFF | ((v435[506] & 0xFFF) << 16);
                                                    *v438 = 136316418;
                                                    v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                                                    v440 = 2048;
                                                    *v441 = v110;
                                                    *&v441[8] = 1024;
                                                    *v442 = v211;
                                                    *&v442[4] = 1024;
                                                    *&v442[6] = v212;
                                                    *&v442[10] = 1024;
                                                    *&v442[12] = v213;
                                                    *&v442[16] = 1024;
                                                    *&v442[18] = v214;
                                                    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
                                                  }

                                                  v86 = v437;
                                                  v87 = selfCopy;
                                                  if (logLevel >= 3)
                                                  {
                                                    v215 = v108;
                                                    if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                                                    {
                                                      v110 += 16;
                                                      v216 = v435[507] & 0xFFF | ((v435[508] & 0xFFF) << 16);
                                                      v217 = v435[386] & 0x7FF | ((v435[389] & 0x7FF) << 16);
                                                      v218 = v435[392] & 0x7FF | ((v435[395] & 0x7FF) << 16);
                                                      v219 = v435[398] & 0x7FF | ((v435[401] & 0x7FF) << 16);
                                                      *v438 = 136316418;
                                                      v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                                                      v440 = 2048;
                                                      *v441 = v110;
                                                      *&v441[8] = 1024;
                                                      *v442 = v216;
                                                      *&v442[4] = 1024;
                                                      *&v442[6] = v217;
                                                      *&v442[10] = 1024;
                                                      *&v442[12] = v218;
                                                      *&v442[16] = 1024;
                                                      *&v442[18] = v219;
                                                      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
                                                    }

                                                    v86 = v437;
                                                    v87 = selfCopy;
                                                    if (logLevel >= 3)
                                                    {
                                                      v220 = v108;
                                                      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                                                      {
                                                        v110 += 16;
                                                        v221 = v435[404] & 0x7FF | ((v435[407] & 0x7FF) << 16);
                                                        v222 = v435[385] & 0xFFF | ((v435[388] & 0xFFF) << 16);
                                                        v223 = v435[391] & 0xFFF | ((v435[394] & 0xFFF) << 16);
                                                        v224 = v435[397] & 0xFFF | ((v435[400] & 0xFFF) << 16);
                                                        *v438 = 136316418;
                                                        v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                                                        v440 = 2048;
                                                        *v441 = v110;
                                                        *&v441[8] = 1024;
                                                        *v442 = v221;
                                                        *&v442[4] = 1024;
                                                        *&v442[6] = v222;
                                                        *&v442[10] = 1024;
                                                        *&v442[12] = v223;
                                                        *&v442[16] = 1024;
                                                        *&v442[18] = v224;
                                                        _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
                                                      }

                                                      v86 = v437;
                                                      v87 = selfCopy;
                                                      if (logLevel >= 3)
                                                      {
                                                        v225 = v108;
                                                        if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                                                        {
                                                          v226 = v435[403] & 0xFFF | ((v435[406] & 0xFFF) << 16);
                                                          *v438 = 136316418;
                                                          v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                                                          v440 = 2048;
                                                          *v441 = v110 + 16;
                                                          *&v441[8] = 1024;
                                                          *v442 = v226;
                                                          *&v442[4] = 2080;
                                                          *&v442[6] = "XXXXXXXX";
                                                          *&v442[14] = 2080;
                                                          *&v442[16] = "XXXXXXXX";
                                                          *&v442[24] = 2080;
                                                          *&v442[26] = "XXXXXXXX";
                                                          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %s %s %s\n", v438, 0x3Au);
                                                        }

                                                        v86 = v437;
                                                        v87 = selfCopy;
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

      hcusCopy = v430;
      if (v434 && logLevel >= 3)
      {
        v227 = v87->_msrBaseAddr;
        v228 = MEMORY[0x277D86220];
        v229 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v228, OS_LOG_TYPE_DEFAULT))
        {
          *v438 = 136315138;
          v439 = "[ASEProcessingT1 DumpOutputHcus:]";
          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: -----------------------------------------------\n", v438, 0xCu);
        }

        v86 = v437;
        if (logLevel >= 3)
        {
          v230 = v227 + 41600;
          v231 = MEMORY[0x277D86220];
          v232 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v231, OS_LOG_TYPE_DEFAULT))
          {
            v233 = v434[1] & 0xFFF | ((v434[4] & 0xFFF) << 16);
            v234 = v434[7] & 0xFFF | ((v434[10] & 0xFFF) << 16);
            v235 = v434[13] & 0xFFF | ((v434[16] & 0xFFF) << 16);
            *v438 = 136316418;
            v439 = "[ASEProcessingT1 DumpOutputHcus:]";
            v440 = 2048;
            *v441 = v227 + 41600;
            *&v441[8] = 2080;
            *v442 = "XXXXXXXX";
            *&v442[8] = 1024;
            *&v442[10] = v233;
            *&v442[14] = 1024;
            *&v442[16] = v234;
            *&v442[20] = 1024;
            *&v442[22] = v235;
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %s %08x %08x %08x\n", v438, 0x32u);
          }

          v86 = v437;
          if (logLevel >= 3)
          {
            v236 = MEMORY[0x277D86220];
            v237 = MEMORY[0x277D86220];
            if (os_log_type_enabled(v236, OS_LOG_TYPE_DEFAULT))
            {
              v230 = v227 + 41616;
              v238 = v434[19] & 0xFFF | ((v434[22] & 0xFFF) << 16);
              v239 = v434[2] & 0xFFF | ((v434[5] & 0xFFF) << 16);
              v240 = v434[8] & 0xFFF | ((v434[11] & 0xFFF) << 16);
              v241 = v434[14] & 0xFFF | ((v434[17] & 0xFFF) << 16);
              *v438 = 136316418;
              v439 = "[ASEProcessingT1 DumpOutputHcus:]";
              v440 = 2048;
              *v441 = v227 + 41616;
              *&v441[8] = 1024;
              *v442 = v238;
              *&v442[4] = 1024;
              *&v442[6] = v239;
              *&v442[10] = 1024;
              *&v442[12] = v240;
              *&v442[16] = 1024;
              *&v442[18] = v241;
              _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
            }

            v86 = v437;
            if (logLevel >= 3)
            {
              v242 = MEMORY[0x277D86220];
              v243 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v242, OS_LOG_TYPE_DEFAULT))
              {
                v230 += 16;
                v244 = v434[20] & 0xFFF | ((v434[23] & 0xFFF) << 16);
                v245 = v434[3] & 0x3FF | ((v434[6] & 0x3FF) << 16);
                v246 = v434[9] & 0x3FF | ((v434[12] & 0x3FF) << 16);
                v247 = v434[15] & 0x3FF | ((v434[18] & 0x3FF) << 16);
                *v438 = 136316418;
                v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                v440 = 2048;
                *v441 = v230;
                *&v441[8] = 1024;
                *v442 = v244;
                *&v442[4] = 1024;
                *&v442[6] = v245;
                *&v442[10] = 1024;
                *&v442[12] = v246;
                *&v442[16] = 1024;
                *&v442[18] = v247;
                _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
              }

              v86 = v437;
              if (logLevel >= 3)
              {
                v248 = MEMORY[0x277D86220];
                v249 = MEMORY[0x277D86220];
                if (os_log_type_enabled(v248, OS_LOG_TYPE_DEFAULT))
                {
                  v230 += 16;
                  v250 = v434[21] & 0x3FF | ((v434[24] & 0x3FF) << 16);
                  v251 = v434[97] & 0x7FF | ((v434[100] & 0x7FF) << 16);
                  v252 = v434[103] & 0x7FF | ((v434[106] & 0x7FF) << 16);
                  v253 = v434[109] & 0x7FF | ((v434[112] & 0x7FF) << 16);
                  *v438 = 136316418;
                  v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                  v440 = 2048;
                  *v441 = v230;
                  *&v441[8] = 1024;
                  *v442 = v250;
                  *&v442[4] = 1024;
                  *&v442[6] = v251;
                  *&v442[10] = 1024;
                  *&v442[12] = v252;
                  *&v442[16] = 1024;
                  *&v442[18] = v253;
                  _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
                }

                v86 = v437;
                if (logLevel >= 3)
                {
                  v254 = MEMORY[0x277D86220];
                  v255 = MEMORY[0x277D86220];
                  if (os_log_type_enabled(v254, OS_LOG_TYPE_DEFAULT))
                  {
                    v230 += 16;
                    v256 = v434[115] & 0x7FF | ((v434[118] & 0x7FF) << 16);
                    v257 = v434[98] & 0x3F | ((v434[101] & 0x3F) << 8) & 0xC0C0FFFF | ((v434[104] & 0x3F) << 16) & 0xC0FFFFFF | ((v434[107] & 0x3F) << 24);
                    v258 = v434[110] & 0x3F | ((v434[113] & 0x3F) << 8) & 0xC0C0FFFF | ((v434[116] & 0x3F) << 16) & 0xC0FFFFFF | ((v434[119] & 0x3F) << 24);
                    v259 = v434[99] & 0x1FFF | ((v434[102] & 0x1FFF) << 16);
                    *v438 = 136316418;
                    v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                    v440 = 2048;
                    *v441 = v230;
                    *&v441[8] = 1024;
                    *v442 = v256;
                    *&v442[4] = 1024;
                    *&v442[6] = v257;
                    *&v442[10] = 1024;
                    *&v442[12] = v258;
                    *&v442[16] = 1024;
                    *&v442[18] = v259;
                    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
                  }

                  v86 = v437;
                  if (logLevel >= 3)
                  {
                    v260 = MEMORY[0x277D86220];
                    v261 = MEMORY[0x277D86220];
                    if (os_log_type_enabled(v260, OS_LOG_TYPE_DEFAULT))
                    {
                      v230 += 16;
                      v262 = v434[105] & 0x1FFF | ((v434[108] & 0x1FFF) << 16);
                      v263 = v434[111] & 0x1FFF | ((v434[114] & 0x1FFF) << 16);
                      v264 = v434[117] & 0x1FFF | ((v434[120] & 0x1FFF) << 16);
                      v265 = v434[193] & 0x7FF | ((v434[196] & 0x7FF) << 16);
                      *v438 = 136316418;
                      v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                      v440 = 2048;
                      *v441 = v230;
                      *&v441[8] = 1024;
                      *v442 = v262;
                      *&v442[4] = 1024;
                      *&v442[6] = v263;
                      *&v442[10] = 1024;
                      *&v442[12] = v264;
                      *&v442[16] = 1024;
                      *&v442[18] = v265;
                      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
                    }

                    v86 = v437;
                    if (logLevel >= 3)
                    {
                      v266 = MEMORY[0x277D86220];
                      v267 = MEMORY[0x277D86220];
                      if (os_log_type_enabled(v266, OS_LOG_TYPE_DEFAULT))
                      {
                        v268 = v434[199] & 0x7FF | ((v434[202] & 0x7FF) << 16);
                        v269 = v434[205] & 0x7FF | ((v434[208] & 0x7FF) << 16);
                        v270 = v434[211] & 0x7FF | ((v434[214] & 0x7FF) << 16);
                        v230 += 16;
                        v271 = v434[194] & 0x3F | ((v434[197] & 0x3F) << 8) & 0xC0C0FFFF | ((v434[200] & 0x3F) << 16) & 0xC0FFFFFF | ((v434[203] & 0x3F) << 24);
                        *v438 = 136316418;
                        v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                        v440 = 2048;
                        *v441 = v230;
                        *&v441[8] = 1024;
                        *v442 = v268;
                        *&v442[4] = 1024;
                        *&v442[6] = v269;
                        *&v442[10] = 1024;
                        *&v442[12] = v270;
                        *&v442[16] = 1024;
                        *&v442[18] = v271;
                        _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
                      }

                      v86 = v437;
                      if (logLevel >= 3)
                      {
                        v272 = MEMORY[0x277D86220];
                        v273 = MEMORY[0x277D86220];
                        if (os_log_type_enabled(v272, OS_LOG_TYPE_DEFAULT))
                        {
                          v230 += 16;
                          v274 = v434[206] & 0x3F | ((v434[209] & 0x3F) << 8) & 0xC0C0FFFF | ((v434[212] & 0x3F) << 16) & 0xC0FFFFFF | ((v434[215] & 0x3F) << 24);
                          v275 = v434[195] & 0x1FFF | ((v434[198] & 0x1FFF) << 16);
                          v276 = v434[201] & 0x1FFF | ((v434[204] & 0x1FFF) << 16);
                          v277 = v434[207] & 0x1FFF | ((v434[210] & 0x1FFF) << 16);
                          *v438 = 136316418;
                          v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                          v440 = 2048;
                          *v441 = v230;
                          *&v441[8] = 1024;
                          *v442 = v274;
                          *&v442[4] = 1024;
                          *&v442[6] = v275;
                          *&v442[10] = 1024;
                          *&v442[12] = v276;
                          *&v442[16] = 1024;
                          *&v442[18] = v277;
                          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
                        }

                        v86 = v437;
                        if (logLevel >= 3)
                        {
                          v278 = MEMORY[0x277D86220];
                          v279 = MEMORY[0x277D86220];
                          if (os_log_type_enabled(v278, OS_LOG_TYPE_DEFAULT))
                          {
                            v230 += 16;
                            v280 = v434[213] & 0x1FFF | ((v434[216] & 0x1FFF) << 16);
                            v281 = v434[294] & 0x1FFF | ((v434[295] & 0x1FFF) << 16);
                            v282 = v434[296] & 0x1FFF | ((v434[297] & 0x1FFF) << 16);
                            v283 = v434[298] & 0x1FFF;
                            *v438 = 136316418;
                            v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                            v440 = 2048;
                            *v441 = v230;
                            *&v441[8] = 1024;
                            *v442 = v280;
                            *&v442[4] = 1024;
                            *&v442[6] = v281;
                            *&v442[10] = 1024;
                            *&v442[12] = v282;
                            *&v442[16] = 1024;
                            *&v442[18] = v283;
                            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
                          }

                          v86 = v437;
                          if (logLevel >= 3)
                          {
                            v284 = MEMORY[0x277D86220];
                            v285 = MEMORY[0x277D86220];
                            if (os_log_type_enabled(v284, OS_LOG_TYPE_DEFAULT))
                            {
                              v230 += 16;
                              v286 = v434[299] & 0x1FFF | ((v434[300] & 0x1FFF) << 16);
                              v287 = v434[301] & 0x1FFF | ((v434[302] & 0x1FFF) << 16);
                              v288 = v434[303] & 0x1FFF | ((v434[304] & 0x1FFF) << 16);
                              v289 = v434[305] & 0x1FFF | ((v434[306] & 0x1FFF) << 16);
                              *v438 = 136316418;
                              v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                              v440 = 2048;
                              *v441 = v230;
                              *&v441[8] = 1024;
                              *v442 = v286;
                              *&v442[4] = 1024;
                              *&v442[6] = v287;
                              *&v442[10] = 1024;
                              *&v442[12] = v288;
                              *&v442[16] = 1024;
                              *&v442[18] = v289;
                              _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
                            }

                            hcusCopy = v430;
                            v87 = selfCopy;
                            v86 = v437;
                            if (logLevel >= 3)
                            {
                              v290 = MEMORY[0x277D86220];
                              v291 = MEMORY[0x277D86220];
                              if (os_log_type_enabled(v290, OS_LOG_TYPE_DEFAULT))
                              {
                                v230 += 16;
                                v292 = v434[307] & 0x1FFF;
                                v293 = v434[308] & 0x1FFF | ((v434[309] & 0x1FFF) << 16);
                                v294 = v434[310] & 0x1FFF | ((v434[311] & 0x1FFF) << 16);
                                v295 = v434[312] & 0x1FFF | ((v434[313] & 0x1FFF) << 16);
                                *v438 = 136316418;
                                v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                                v440 = 2048;
                                *v441 = v230;
                                *&v441[8] = 1024;
                                *v442 = v292;
                                *&v442[4] = 1024;
                                *&v442[6] = v293;
                                *&v442[10] = 1024;
                                *&v442[12] = v294;
                                *&v442[16] = 1024;
                                *&v442[18] = v295;
                                _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
                              }

                              hcusCopy = v430;
                              v87 = selfCopy;
                              v86 = v437;
                              if (logLevel >= 3)
                              {
                                v296 = MEMORY[0x277D86220];
                                v297 = MEMORY[0x277D86220];
                                if (os_log_type_enabled(v296, OS_LOG_TYPE_DEFAULT))
                                {
                                  v230 += 16;
                                  v298 = v434[314] & 0x1FFF | ((v434[315] & 0x1FFF) << 16);
                                  v299 = v434[316] & 0x1FFF | ((v434[317] & 0x1FFF) << 16);
                                  v300 = v434[318] & 0x1FFF | ((v434[319] & 0x1FFF) << 16);
                                  v301 = v434[320] & 0x1FFF;
                                  *v438 = 136316418;
                                  v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                                  v440 = 2048;
                                  *v441 = v230;
                                  *&v441[8] = 1024;
                                  *v442 = v298;
                                  *&v442[4] = 1024;
                                  *&v442[6] = v299;
                                  *&v442[10] = 1024;
                                  *&v442[12] = v300;
                                  *&v442[16] = 1024;
                                  *&v442[18] = v301;
                                  _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
                                }

                                hcusCopy = v430;
                                v87 = selfCopy;
                                v86 = v437;
                                if (logLevel >= 3)
                                {
                                  v302 = MEMORY[0x277D86220];
                                  v303 = MEMORY[0x277D86220];
                                  if (os_log_type_enabled(v302, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v304 = v434[290] & 0x3F | ((v434[291] & 0x3F) << 6) & 0xFFF | ((v434[292] & 0x3F) << 12) & 0xFC03FFFF | ((v434[293] & 0x3F) << 18) & 0xFCFFFFFF | ((v434[289] & 3) << 24) | (*v434 << 26);
                                    *v438 = 136316418;
                                    v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                                    v440 = 2048;
                                    *v441 = v230 + 16;
                                    *&v441[8] = 1024;
                                    *v442 = v304;
                                    *&v442[4] = 2080;
                                    *&v442[6] = "XXXXXXXX";
                                    *&v442[14] = 2080;
                                    *&v442[16] = "XXXXXXXX";
                                    *&v442[24] = 2080;
                                    *&v442[26] = "XXXXXXXX";
                                    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %s %s %s\n", v438, 0x3Au);
                                  }

                                  hcusCopy = v430;
                                  v87 = selfCopy;
                                  v86 = v437;
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

      if (v86 && logLevel >= 3)
      {
        v305 = v87->_msrBaseAddr;
        v306 = MEMORY[0x277D86220];
        v307 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v306, OS_LOG_TYPE_DEFAULT))
        {
          *v438 = 136315138;
          v439 = "[ASEProcessingT1 DumpOutputHcus:]";
          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: -----------------------------------------------\n", v438, 0xCu);
        }

        if (logLevel >= 3)
        {
          v308 = v305 + 42160;
          v309 = v306;
          if (os_log_type_enabled(v306, OS_LOG_TYPE_DEFAULT))
          {
            v310 = v86[96] & 0x7FF | ((v86[99] & 0x7FF) << 16);
            v311 = v86[102] & 0x7FF | ((v86[105] & 0x7FF) << 16);
            v312 = v86[108] & 0x7FF | ((v86[111] & 0x7FF) << 16);
            v313 = v86[114] & 0x7FF | ((v86[117] & 0x7FF) << 16);
            *v438 = 136316418;
            v439 = "[ASEProcessingT1 DumpOutputHcus:]";
            v440 = 2048;
            *v441 = v305 + 42160;
            *&v441[8] = 1024;
            *v442 = v310;
            *&v442[4] = 1024;
            *&v442[6] = v311;
            *&v442[10] = 1024;
            *&v442[12] = v312;
            *&v442[16] = 1024;
            *&v442[18] = v313;
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
          }

          if (logLevel >= 3)
          {
            v314 = v306;
            if (os_log_type_enabled(v306, OS_LOG_TYPE_DEFAULT))
            {
              v308 = v305 + 42176;
              v315 = v86[97] & 0x7FF | ((v86[100] & 0x7FF) << 16);
              v316 = v86[103] & 0x7FF | ((v86[106] & 0x7FF) << 16);
              v317 = v86[109] & 0x7FF | ((v86[112] & 0x7FF) << 16);
              v318 = v86[115] & 0x7FF | ((v86[118] & 0x7FF) << 16);
              *v438 = 136316418;
              v439 = "[ASEProcessingT1 DumpOutputHcus:]";
              v440 = 2048;
              *v441 = v305 + 42176;
              *&v441[8] = 1024;
              *v442 = v315;
              *&v442[4] = 1024;
              *&v442[6] = v316;
              *&v442[10] = 1024;
              *&v442[12] = v317;
              *&v442[16] = 1024;
              *&v442[18] = v318;
              _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
            }

            if (logLevel >= 3)
            {
              v319 = v306;
              if (os_log_type_enabled(v306, OS_LOG_TYPE_DEFAULT))
              {
                v308 += 16;
                v320 = v86[98] & 0x7FFF | ((v86[101] & 0x7FFF) << 16);
                v321 = v86[104] & 0x7FFF | ((v86[107] & 0x7FFF) << 16);
                v322 = v86[110] & 0x7FFF | ((v86[113] & 0x7FFF) << 16);
                v323 = v86[116] & 0x7FFF | ((v86[119] & 0x7FFF) << 16);
                *v438 = 136316418;
                v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                v440 = 2048;
                *v441 = v308;
                *&v441[8] = 1024;
                *v442 = v320;
                *&v442[4] = 1024;
                *&v442[6] = v321;
                *&v442[10] = 1024;
                *&v442[12] = v322;
                *&v442[16] = 1024;
                *&v442[18] = v323;
                _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
              }

              if (logLevel >= 3)
              {
                v324 = v306;
                if (os_log_type_enabled(v306, OS_LOG_TYPE_DEFAULT))
                {
                  v308 += 16;
                  v325 = v86[192] & 0x7FF | ((v86[195] & 0x7FF) << 16);
                  v326 = v86[198] & 0x7FF | ((v86[201] & 0x7FF) << 16);
                  v327 = v86[204] & 0x7FF | ((v86[207] & 0x7FF) << 16);
                  v328 = v86[210] & 0x7FF | ((v86[213] & 0x7FF) << 16);
                  *v438 = 136316418;
                  v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                  v440 = 2048;
                  *v441 = v308;
                  *&v441[8] = 1024;
                  *v442 = v325;
                  *&v442[4] = 1024;
                  *&v442[6] = v326;
                  *&v442[10] = 1024;
                  *&v442[12] = v327;
                  *&v442[16] = 1024;
                  *&v442[18] = v328;
                  _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
                }

                if (logLevel >= 3)
                {
                  v329 = v306;
                  if (os_log_type_enabled(v306, OS_LOG_TYPE_DEFAULT))
                  {
                    v308 += 16;
                    v330 = v86[193] & 0x7FF | ((v86[196] & 0x7FF) << 16);
                    v331 = v86[199] & 0x7FF | ((v86[202] & 0x7FF) << 16);
                    v332 = v86[205] & 0x7FF | ((v86[208] & 0x7FF) << 16);
                    v333 = v86[211] & 0x7FF | ((v86[214] & 0x7FF) << 16);
                    *v438 = 136316418;
                    v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                    v440 = 2048;
                    *v441 = v308;
                    *&v441[8] = 1024;
                    *v442 = v330;
                    *&v442[4] = 1024;
                    *&v442[6] = v331;
                    *&v442[10] = 1024;
                    *&v442[12] = v332;
                    *&v442[16] = 1024;
                    *&v442[18] = v333;
                    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
                  }

                  if (logLevel >= 3)
                  {
                    v334 = v306;
                    if (os_log_type_enabled(v306, OS_LOG_TYPE_DEFAULT))
                    {
                      v308 += 16;
                      v335 = v86[194] & 0x7FFF | ((v86[197] & 0x7FFF) << 16);
                      v336 = v86[200] & 0x7FFF | ((v86[203] & 0x7FFF) << 16);
                      v337 = v86[206] & 0x7FFF | ((v86[209] & 0x7FFF) << 16);
                      v338 = v86[212] & 0x7FFF | ((v86[215] & 0x7FFF) << 16);
                      *v438 = 136316418;
                      v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                      v440 = 2048;
                      *v441 = v308;
                      *&v441[8] = 1024;
                      *v442 = v335;
                      *&v442[4] = 1024;
                      *&v442[6] = v336;
                      *&v442[10] = 1024;
                      *&v442[12] = v337;
                      *&v442[16] = 1024;
                      *&v442[18] = v338;
                      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
                    }

                    if (logLevel >= 3)
                    {
                      v339 = v306;
                      if (os_log_type_enabled(v306, OS_LOG_TYPE_DEFAULT))
                      {
                        v308 += 16;
                        v340 = v86[289] & 0x7FF | ((v86[292] & 0x7FF) << 16);
                        v341 = v86[295] & 0x7FF | ((v86[298] & 0x7FF) << 16);
                        v342 = v86[301] & 0x7FF | ((v86[304] & 0x7FF) << 16);
                        v343 = v86[307] & 0x7FF | ((v86[310] & 0x7FF) << 16);
                        *v438 = 136316418;
                        v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                        v440 = 2048;
                        *v441 = v308;
                        *&v441[8] = 1024;
                        *v442 = v340;
                        *&v442[4] = 1024;
                        *&v442[6] = v341;
                        *&v442[10] = 1024;
                        *&v442[12] = v342;
                        *&v442[16] = 1024;
                        *&v442[18] = v343;
                        _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
                      }

                      if (logLevel >= 3)
                      {
                        v344 = v306;
                        if (os_log_type_enabled(v306, OS_LOG_TYPE_DEFAULT))
                        {
                          v308 += 16;
                          v345 = v86[288] & 0xFFF | ((v86[291] & 0xFFF) << 16);
                          v346 = v86[294] & 0xFFF | ((v86[297] & 0xFFF) << 16);
                          v347 = v86[300] & 0xFFF | ((v86[303] & 0xFFF) << 16);
                          v348 = v86[306] & 0xFFF | ((v86[309] & 0xFFF) << 16);
                          *v438 = 136316418;
                          v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                          v440 = 2048;
                          *v441 = v308;
                          *&v441[8] = 1024;
                          *v442 = v345;
                          *&v442[4] = 1024;
                          *&v442[6] = v346;
                          *&v442[10] = 1024;
                          *&v442[12] = v347;
                          *&v442[16] = 1024;
                          *&v442[18] = v348;
                          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
                        }

                        if (logLevel >= 3)
                        {
                          v349 = v306;
                          if (os_log_type_enabled(v306, OS_LOG_TYPE_DEFAULT))
                          {
                            v308 += 16;
                            v350 = v86[290] & 0x7FF | ((v86[293] & 0x7FF) << 16);
                            v351 = v86[296] & 0x7FF | ((v86[299] & 0x7FF) << 16);
                            v352 = v86[302] & 0x7FF | ((v86[305] & 0x7FF) << 16);
                            v353 = v86[308] & 0x7FF | ((v86[311] & 0x7FF) << 16);
                            *v438 = 136316418;
                            v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                            v440 = 2048;
                            *v441 = v308;
                            *&v441[8] = 1024;
                            *v442 = v350;
                            *&v442[4] = 1024;
                            *&v442[6] = v351;
                            *&v442[10] = 1024;
                            *&v442[12] = v352;
                            *&v442[16] = 1024;
                            *&v442[18] = v353;
                            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v438, 0x2Eu);
                          }

                          if (logLevel >= 3)
                          {
                            v354 = v306;
                            if (os_log_type_enabled(v306, OS_LOG_TYPE_DEFAULT))
                            {
                              v355 = v86[384] & 0x3F | ((v86[385] & 0x7FF) << 6) & 0x8001FFFF | ((v86[386] & 0x3F) << 17) & 0x807FFFFF | (*(v86 + 387) << 23);
                              *v438 = 136316418;
                              v439 = "[ASEProcessingT1 DumpOutputHcus:]";
                              v440 = 2048;
                              *v441 = v308 + 16;
                              *&v441[8] = 2080;
                              *v442 = "XXXXXXXX";
                              *&v442[8] = 1024;
                              *&v442[10] = v355;
                              *&v442[14] = 2080;
                              *&v442[16] = "XXXXXXXX";
                              *&v442[24] = 2080;
                              *&v442[26] = "XXXXXXXX";
                              _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %s %08x %s %s\n", v438, 0x3Au);
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

  v356 = *MEMORY[0x277D85DE8];
}

- (void)configControlHeader_V3:(aseConfigurationUnitsV3_t *)v3
{
  v3->var1 = 0x1861736570;
  v3->var3 = 0x20061736571;
  v3->var5 = 0x5046173656BLL;
  v3->var7 = 0x83C6173656CLL;
  v3->var9 = 0x6106173656DLL;
  v3->var11 = 0x86173656FLL;
  v3->var13 = 0x146173656ELL;
}

- (void)processPixelWithInput:(__IOSurface *)input Measurement:(id *)measurement controlUnitV3:(aseConfigurationUnitsV3_t *)v3
{
  v23 = *MEMORY[0x277D85DE8];
  if (logLevel >= 4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315906;
    v17 = "[ASEProcessingT1 processPixelWithInput:Measurement:controlUnitV3:]";
    v18 = 2048;
    *v19 = input;
    *&v19[8] = 2048;
    measurementCopy = measurement;
    v21 = 2048;
    v3Copy = v3;
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] ++  %s : input=%p, aseMeasurementOutput=%p, aseControlUnit=%p\n", &v16, 0x2Au);
  }

  if (isT1OrNewer(self->super._productType))
  {
    [(ASEProcessingT1 *)self processPixelWithInput_V3:input Measurement:measurement Output:v3];
    if (logLevel < 3)
    {
      goto LABEL_14;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      var0 = v3->var0.var0;
      var1 = v3->var0.var1;
      v16 = 136315650;
      v17 = "[ASEProcessingT1 processPixelWithInput:Measurement:controlUnitV3:]";
      v18 = 1024;
      *v19 = var0;
      *&v19[4] = 1024;
      *&v19[6] = var1;
      v11 = MEMORY[0x277D86220];
      v12 = " [1.50.3]     %s : aseControlUnit->hcuCount %d, aseControlUnit->hcuSize %d, \n";
      v13 = 24;
LABEL_10:
      _os_log_impl(&dword_23D3F2000, v11, OS_LOG_TYPE_DEFAULT, v12, &v16, v13);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    productType = self->super._productType;
    v16 = 136315394;
    v17 = "[ASEProcessingT1 processPixelWithInput:Measurement:controlUnitV3:]";
    v18 = 1024;
    *v19 = productType;
    v11 = MEMORY[0x277D86220];
    v12 = " [1.50.3]     %s : ERROR: Not supported, _productType = %d\n";
    v13 = 18;
    goto LABEL_10;
  }

  if (logLevel >= 4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[ASEProcessingT1 processPixelWithInput:Measurement:controlUnitV3:]";
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] --  %s \n", &v16, 0xCu);
  }

LABEL_14:
  v15 = *MEMORY[0x277D85DE8];
}

- (void)processPixelWithInput_V3:(__IOSurface *)v3 Measurement:(id *)measurement Output:(aseConfigurationUnitsV3_t *)output
{
  aseProcessingType = self->super._aseProcessingType;
  if (aseProcessingType > 7)
  {
    goto LABEL_17;
  }

  v7 = 1 << aseProcessingType;
  if ((v7 & 0xE6) != 0)
  {
    [(ASEProcessingT1 *)self processPixelWithPixelControl_V3:v3 Output:output];
    enabledHcus = self->_enabledHcus;
    if ((enabledHcus & 0x80) != 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] Assertion: !(!!((_enabledHcus) & (1U << (ASEConfigurationUnitsV3_NoiseConfig)))) warned in /Library/Caches/com.apple.xbs/Sources/ASEFramework/ASEProcessingT1.m at line 1580\n", buf, 2u);
      }

      enabledHcus = self->_enabledHcus;
      if ((enabledHcus & 0x80) != 0)
      {
        [ASEProcessingT1 processPixelWithInput_V3:Measurement:Output:];
      }
    }

    v9 = enabledHcus & 0xFFFFFF7F;
    goto LABEL_14;
  }

  if ((v7 & 0x18) == 0)
  {
LABEL_17:
    [ASEProcessingT1 processPixelWithInput_V3:Measurement:Output:];
  }

  [(ASEProcessingT1 *)self processPixelWithMeasurement_V3:v3 Measurement:measurement Output:output];
  v10 = self->_enabledHcus;
  if ((v10 & 0x80) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] Assertion: (!!((_enabledHcus) & (1U << (ASEConfigurationUnitsV3_NoiseConfig)))) warned in /Library/Caches/com.apple.xbs/Sources/ASEFramework/ASEProcessingT1.m at line 1589\n", v11, 2u);
    }

    v10 = self->_enabledHcus;
    if ((v10 & 0x80) == 0)
    {
      [ASEProcessingT1 processPixelWithInput_V3:Measurement:Output:];
    }
  }

  v9 = v10 | 0x80;
LABEL_14:
  self->_enabledHcus = v9;
}

- (id)populateOutputHcus:(aseConfigurationUnitsV3_t *)hcus
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v27 = *MEMORY[0x277D85DE8];
  enabledHcus = self->_enabledHcus;
  v9 = hideHcu;
  do
  {
    if ((enabledHcus & (1 << v5)) != 0 && (v9 & (1 << v5)) == 0)
    {
      ++v6;
      v7 += getHcuSize(v5);
    }

    ++v5;
  }

  while (v5 != 8);
  hcus->var0.var0 = v6;
  hcus->var0.var1 = v7;
  v11 = [MEMORY[0x277CBEB28] dataWithCapacity:v7 + 8 * v6 + 8];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_28;
  }

  [v11 appendBytes:hcus length:8];
  v13 = 0;
  while (1)
  {
    if ((self->_enabledHcus & (1 << v13)) == 0 || (hideHcu & (1 << v13)) != 0)
    {
      goto LABEL_23;
    }

    v14 = getHcuSize(v13) + 8;
    if (v13 <= 3)
    {
      p_var1 = &hcus->var1;
      if (v13 != 1)
      {
        p_var1 = &hcus->var3;
        if (v13 != 2)
        {
          p_var1 = &hcus->var5;
          if (v13 != 3)
          {
            goto LABEL_33;
          }
        }
      }

      goto LABEL_22;
    }

    if (v13 <= 5)
    {
      p_var1 = &hcus->var7;
      if (v13 != 4)
      {
        p_var1 = &hcus->var9;
      }

      goto LABEL_22;
    }

    p_var1 = &hcus->var11;
    if (v13 != 6)
    {
      break;
    }

LABEL_22:
    [v12 appendBytes:p_var1 length:v14];
LABEL_23:
    if (++v13 == 8)
    {
      goto LABEL_24;
    }
  }

  if (v13 != 7)
  {
LABEL_33:
    [ASEProcessingT1 populateOutputHcus:];
  }

  [v12 appendBytes:&hcus->var13 length:v14];
LABEL_24:
  if (logLevel >= 3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v16 = self->_enabledHcus;
    *buf = 136315906;
    v20 = "[ASEProcessingT1 populateOutputHcus:]";
    v21 = 1024;
    v22 = v16;
    v23 = 1024;
    v24 = hideHcu;
    v25 = 1024;
    v26 = hideHcu;
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: _enabledHcus = 0x%x, hideHcu = 0x%x (%d)\n", buf, 0x1Eu);
  }

  [(ASEProcessingT1 *)self DumpOutputHcus:v12];
LABEL_28:
  v17 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)processPixelWithPixelControl_V3:(__IOSurface *)v3 Output:(aseConfigurationUnitsV3_t *)output
{
  v18 = *MEMORY[0x277D85DE8];
  if (logLevel >= 4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[ASEProcessingT1 processPixelWithPixelControl_V3:Output:]";
    v16 = 2048;
    outputCopy = output;
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] ++  %s : aseControlUnit=%p\n", buf, 0x16u);
  }

  [(ASEProcessingT1 *)self configControlHeader_V3:output];
  InputType = getInputType(self->super._inputType);
  TransferFunction = getTransferFunction(v3);
  *&v9 = self->super._enhancementStrength;
  LODWORD(v13) = TransferFunction;
  calculate_graphics_control_setting_V3(output, self->super._inputWidth, self->super._inputHeight, v9, v10, v11, LODWORD(self->super._numberOfProcessedFrames), self->super._productType, self->super._destinationWidth, self->super._destinationHeight, InputType, v13, self->_aseControlUnitV3Cache, &self->_enabledHcus);
  if (logLevel >= 4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[ASEProcessingT1 processPixelWithPixelControl_V3:Output:]";
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] --  %s \n", buf, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)processPixelWithMeasurement_V3:(__IOSurface *)v3 Measurement:(id *)measurement Output:(aseConfigurationUnitsV3_t *)output
{
  *&v22[11] = *MEMORY[0x277D85DE8];
  if (logLevel >= 4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v18 = "[ASEProcessingT1 processPixelWithMeasurement_V3:Measurement:Output:]";
    v19 = 2048;
    *v20 = v3;
    *&v20[8] = 2048;
    *v21 = measurement;
    *&v21[8] = 2048;
    *v22 = output;
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] ++  %s : input=%p, aseMeasurementOutput=%p, aseControlUnit=%p\n", buf, 0x2Au);
  }

  [(ASEProcessingT1 *)self printAseMeasurementOutput:measurement];
  [(ASEProcessingT1 *)self configControlHeader_V3:output];
  InputType = getInputType(self->super._inputType);
  TransferFunction = getTransferFunction(v3);
  enhancementStrength = self->super._enhancementStrength;
  calculate_control_setting_V3(measurement, output, self->super._inputWidth, self->super._inputHeight, LODWORD(self->super._numberOfProcessedFrames), &self->super._noiseMeterStepSize, &self->super._FD_state, &self->super._FG_count, &self->super._NFG_count, &self->super._prev_H1_7, &self->super._prev_V1_7, &self->super._prev_ratio_2D_1D, self->super._productType, self->super._destinationWidth, self->super._destinationHeight, InputType, TransferFunction, self->_aseControlUnitV3Cache, &self->_enabledHcus);
  if (logLevel >= 4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    destinationWidth = self->super._destinationWidth;
    destinationHeight = self->super._destinationHeight;
    InputTypeString = getInputTypeString(InputType);
    TransferFunctionString = getTransferFunctionString(TransferFunction);
    *buf = 136316162;
    v18 = "[ASEProcessingT1 processPixelWithMeasurement_V3:Measurement:Output:]";
    v19 = 1024;
    *v20 = destinationWidth;
    *&v20[4] = 1024;
    *&v20[6] = destinationHeight;
    *v21 = 2080;
    *&v21[2] = InputTypeString;
    v22[0] = 2080;
    *&v22[1] = TransferFunctionString;
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] --  %s : _destinationWidth=%d, _destinationHeight=%d, inputType=%s, inputTransferFunction=%s\n", buf, 0x2Cu);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (int64_t)processFrameWithInput:(__IOSurface *)input Measurement:(id *)measurement outputData:(id *)data
{
  v39 = *MEMORY[0x277D85DE8];
  v9 = logLevel;
  if (logLevel >= 4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = "[ASEProcessingT1 processFrameWithInput:Measurement:outputData:]";
      *&buf[12] = 2048;
      *&buf[14] = input;
      *&buf[22] = 2048;
      *&buf[24] = measurement;
      *&buf[32] = 2048;
      *&buf[34] = data;
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] ++  %s : input=%p, aseMeasurementOutput=%p, aseFrameProcessingControl=%p\n", buf, 0x2Au);
    }

    v9 = logLevel;
  }

  if (v9 >= 2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      aseProcessingType = self->super._aseProcessingType;
      v11 = getASEProcessingType(aseProcessingType);
      dataCopy = data;
      inputCopy = input;
      inputWidth = self->super._inputWidth;
      inputHeight = self->super._inputHeight;
      destinationWidth = self->super._destinationWidth;
      measurementCopy = measurement;
      destinationHeight = self->super._destinationHeight;
      enhancementStrength = self->super._enhancementStrength;
      InputTypeString = getInputTypeString(self->super._inputType);
      *buf = 136317186;
      *&buf[4] = "[ASEProcessingT1 processFrameWithInput:Measurement:outputData:]";
      *&buf[12] = 1024;
      *&buf[14] = aseProcessingType;
      *&buf[18] = 2080;
      *&buf[20] = v11;
      *&buf[28] = 1024;
      *&buf[30] = inputWidth;
      input = inputCopy;
      data = dataCopy;
      *&buf[34] = 1024;
      *&buf[36] = inputHeight;
      *&buf[40] = 2048;
      *&buf[42] = enhancementStrength;
      *&buf[50] = 1024;
      *&buf[52] = destinationWidth;
      *&buf[56] = 1024;
      *&buf[58] = destinationHeight;
      measurement = measurementCopy;
      *&buf[62] = 2080;
      *&buf[64] = InputTypeString;
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s : aseProcessingType=%d [%s], width=%d, height=%d, strength=%f, destinationWidth=%d, destinationHeight=%d, inputType=%s\n", buf, 0x48u);
    }

    if (logLevel >= 2)
    {
      [ASEProcessing shouldEnhanceWidth:self->super._inputWidth height:self->super._inputHeight destinationWidth:self->super._destinationWidth destinationHeight:self->super._destinationHeight];
    }
  }

  if (self->super._aseProcessingType - 9 <= 0xFFFFFFF7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] Assertion: _aseProcessingType < kASEProcessingTypeLivePhoto || _aseProcessingType > kASEProcessingTypeEnhanceOnly failed in /Library/Caches/com.apple.xbs/Sources/ASEFramework/ASEProcessingT1.m at line 1769 goto EXIT\n", buf, 2u);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    v21 = self->super._aseProcessingType;
    v22 = self->super._enhancementStrength;
    v23 = self->super._inputWidth;
    v24 = self->super._inputHeight;
    *buf = 136316162;
    *&buf[4] = "[ASEProcessingT1 processFrameWithInput:Measurement:outputData:]";
    *&buf[12] = 1024;
    *&buf[14] = v21;
    *&buf[18] = 2048;
    *&buf[20] = v22;
    *&buf[28] = 1024;
    *&buf[30] = v23;
    *&buf[34] = 1024;
    *&buf[36] = v24;
    v25 = MEMORY[0x277D86220];
    v26 = " [1.50.3] %s : unknownProcessingType=%d, strength=%f, wxh=%dx%d\n";
    v27 = 40;
    goto LABEL_15;
  }

  if (data)
  {
    v37 = 0u;
    memset(v38, 0, sizeof(v38));
    v35 = 0u;
    v36 = 0u;
    memset(&buf[4], 0, 384);
    *buf = 1;
    if (measurement)
    {
      memcpy(buf, measurement, 0x17CuLL);
    }

    if ((isT1OrNewer(self->super._productType) & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v33 = 0;
        _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] Assertion: isT1OrNewer(_productType) warned in /Library/Caches/com.apple.xbs/Sources/ASEFramework/ASEProcessingT1.m at line 1788\n", v33, 2u);
      }

      if ((isT1OrNewer(self->super._productType) & 1) == 0)
      {
        [ASEProcessingT1 processFrameWithInput:Measurement:outputData:];
      }
    }

    v29 = &self->_aseControlUnitV3[self->super._numberOfRequestedFrames & 3];
    bzero(v29, 0x15C4uLL);
    updateConfigsPerFrame();
    ++self->super._numberOfRequestedFrames;
    [(ASEProcessingT1 *)self processPixelWithInput:input Measurement:buf controlUnitV3:v29];
    *data = [(ASEProcessingT1 *)self populateOutputHcus:v29];
    ++self->super._numberOfProcessedFrames;
    v28 = -18000;
    goto LABEL_25;
  }

  if (logLevel < 3)
  {
    v28 = -18002;
    goto LABEL_32;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *&buf[4] = "[ASEProcessingT1 processFrameWithInput:Measurement:outputData:]";
    *&buf[12] = 2048;
    *&buf[14] = input;
    *&buf[22] = 2048;
    *&buf[24] = measurement;
    *&buf[32] = 2048;
    *&buf[34] = 0;
    v25 = MEMORY[0x277D86220];
    v26 = " [1.50.3] %s : input=%p, aseMeasurementOutput=%p, aseFrameProcessingControl=%p\n";
    v27 = 42;
LABEL_15:
    _os_log_impl(&dword_23D3F2000, v25, OS_LOG_TYPE_DEFAULT, v26, buf, v27);
  }

LABEL_16:
  v28 = -18002;
LABEL_25:
  if (logLevel >= 4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    numberOfProcessedFrames = self->super._numberOfProcessedFrames;
    *buf = 136315650;
    *&buf[4] = "[ASEProcessingT1 processFrameWithInput:Measurement:outputData:]";
    *&buf[12] = 2048;
    *&buf[14] = numberOfProcessedFrames;
    *&buf[22] = 2048;
    *&buf[24] = v28;
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] --  %s : frame=%ld, retVal=%ld\n", buf, 0x20u);
  }

LABEL_32:
  v31 = *MEMORY[0x277D85DE8];
  return v28;
}

- (int64_t)processFrameWithInput:(__IOSurface *)input Measurement:(id *)measurement callback:(id)callback
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[ASEProcessingT1 processFrameWithInput:Measurement:callback:]";
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] ++  %s : ERROR: Async API Not supported!\n", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return -18001;
}

- (void)printAseMeasurementOutput:(id *)output
{
  v43 = *MEMORY[0x277D85DE8];
  v30.receiver = self;
  v30.super_class = ASEProcessingT1;
  [(ASEProcessingT0 *)&v30 printAseMeasurementOutput:?];
  if (logLevel >= 3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v4 = output->var22[0];
      v5 = output->var22[1];
      v6 = output->var22[2];
      v7 = output->var22[3];
      v8 = output->var22[4];
      v9 = output->var23[0];
      *buf = 67110400;
      v32 = v4;
      v33 = 1024;
      v34 = v5;
      v35 = 1024;
      v36 = v6;
      v37 = 1024;
      v38 = v7;
      v39 = 1024;
      v40 = v8;
      v41 = 1024;
      v42 = v9;
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] blkDiffH[ 0 -  5] = %010d, %010d, %010d, %010d, %010d, %010d\n", buf, 0x26u);
    }

    if (logLevel >= 3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v10 = output->var23[0];
        v11 = output->var23[1];
        v12 = output->var23[2];
        v13 = output->var23[3];
        v14 = output->var23[4];
        v15 = output->var24[0];
        *buf = 67110400;
        v32 = v10;
        v33 = 1024;
        v34 = v11;
        v35 = 1024;
        v36 = v12;
        v37 = 1024;
        v38 = v13;
        v39 = 1024;
        v40 = v14;
        v41 = 1024;
        v42 = v15;
        _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] blkDiffV[ 0 -  5] = %010d, %010d, %010d, %010d, %010d, %010d\n", buf, 0x26u);
      }

      if (logLevel >= 3)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v16 = output->var24[0];
          v17 = output->var24[1];
          v18 = output->var24[2];
          v19 = output->var24[3];
          v20 = output->var24[4];
          v21 = output->var25[0];
          *buf = 67110400;
          v32 = v16;
          v33 = 1024;
          v34 = v17;
          v35 = 1024;
          v36 = v18;
          v37 = 1024;
          v38 = v19;
          v39 = 1024;
          v40 = v20;
          v41 = 1024;
          v42 = v21;
          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] blkCtrH[ 0 -  5] = %010d, %010d, %010d, %010d, %010d, %010d\n", buf, 0x26u);
        }

        if (logLevel >= 3)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v22 = output->var25[0];
            v23 = output->var25[1];
            v24 = output->var25[2];
            v25 = output->var25[3];
            v26 = output->var25[4];
            v27 = output->var26;
            *buf = 67110400;
            v32 = v22;
            v33 = 1024;
            v34 = v23;
            v35 = 1024;
            v36 = v24;
            v37 = 1024;
            v38 = v25;
            v39 = 1024;
            v40 = v26;
            v41 = 1024;
            v42 = v27;
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] blkCtrV[ 0 -  5] = %010d, %010d, %010d, %010d, %010d, %010d\n", buf, 0x26u);
          }

          if (logLevel >= 3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v28 = output->var26;
            *buf = 67109120;
            v32 = v28;
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] variance = %010d\n", buf, 8u);
          }
        }
      }
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)processPixelWithInput_V3:Measurement:Output:.cold.3()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0(&dword_23D3F2000, MEMORY[0x277D86220], v0, " [1.50.3] Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/ASEFramework/ASEProcessingT1.m at line 1594\n", v1, v2, v3, v4, 0);
  }

  __assert_rtn("[ASEProcessingT1 processPixelWithInput_V3:Measurement:Output:]", "ASEProcessingT1.m", 1594, "0");
}

- (void)populateOutputHcus:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0(&dword_23D3F2000, MEMORY[0x277D86220], v0, " [1.50.3] Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/ASEFramework/ASEProcessingT1.m at line 1654\n", v1, v2, v3, v4, 0);
  }

  __assert_rtn("[ASEProcessingT1 populateOutputHcus:]", "ASEProcessingT1.m", 1654, "0");
}

@end