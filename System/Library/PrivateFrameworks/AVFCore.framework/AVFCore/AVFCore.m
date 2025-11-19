dispatch_queue_t av_readwrite_dispatch_queue_create(const char *a1)
{
  if (usesSerialQueue())
  {
    v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  }

  else
  {
    v2 = dispatch_queue_attr_make_with_overcommit();
  }

  return dispatch_queue_create(a1, v2);
}

void av_readwrite_dispatch_queue_write(NSObject *a1, void *a2)
{
  if (usesSerialQueue())
  {

    dispatch_sync(a1, a2);
  }

  else
  {

    dispatch_barrier_sync(a1, a2);
  }
}

void sub_196063904(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 112), 8);
  _Block_object_dispose((v1 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __ensureSupportedFormatsChangedNotificationRegistered_block_invoke()
{
  CMNotificationCenterGetDefaultLocalCenter();
  objc_opt_class();

  return CMNotificationCenterAddListener();
}

void sub_196063D0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *AVLocalizedStringFromTableWithBundleIdentifier(uint64_t a1, uint64_t a2, __CFString *a3)
{
  if (!a3)
  {
    a3 = @"com.apple.AVFCore";
  }

  v3 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleWithIdentifier:{a3), "localizedStringForKey:value:table:", a1, @"xxxxDefaultValuexxxx", a2}];
  if ([v3 isEqualToString:@"xxxxDefaultValuexxxx"])
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t AVLocalizedErrorWithUnderlyingOSStatus(signed int a1, id a2)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work();
  fig_note_initialize_category_with_default_work();
  v4 = *MEMORY[0x1E696AA08];
  if (![a2 objectForKey:*MEMORY[0x1E696AA08]])
  {
    if (a2)
    {
      v5 = [a2 mutableCopy];
    }

    else
    {
      v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    }

    a2 = v5;
    [v5 setObject:AVOSStatusToNSError(a1 forKey:{0), v4}];
  }

  v6 = @"AVFoundationErrorDomain";
  v7 = -11822;
  if (a1 > -12849)
  {
    if (a1 <= -12144)
    {
      if (a1 <= -12534)
      {
        if (a1 <= -12652)
        {
          if (a1 <= -12717)
          {
            if (a1 > -12787)
            {
              if (a1 > -12745)
              {
                if (a1 != -12744)
                {
                  if (a1 == -12719)
                  {
                    v7 = -11800;
                    v8 = @"Media format - slice has an invalid value";
                    goto LABEL_376;
                  }

                  if (a1 == -12717)
                  {
                    v7 = -11800;
                    v8 = @"Media format - sample description is unsupported for the specified format flavor";
LABEL_376:
                    v17 = [MEMORY[0x1E696AD60] string];
                    v18 = *MEMORY[0x1E695E618];
                    v19 = [a2 objectForKey:*MEMORY[0x1E695E618]];
                    if (v19)
                    {
                      [v17 appendFormat:@"%@, ", v19];
                    }

                    [v17 appendString:v8];
                    a2 = [a2 mutableCopy];
                    [a2 setObject:v17 forKey:v18];
                    v6 = @"AVFoundationErrorDomain";
                    goto LABEL_379;
                  }

                  goto LABEL_363;
                }

LABEL_307:
                v7 = -11881;
                goto LABEL_379;
              }

              if (a1 != -12786)
              {
                if (a1 == -12763)
                {
                  v7 = -11862;
                  v8 = @"Cannot append media data after ending session";
                  goto LABEL_376;
                }

                goto LABEL_363;
              }

LABEL_315:
              v7 = -11801;
              goto LABEL_379;
            }

            if (a1 > -12847)
            {
              if (a1 != -12846)
              {
                if (a1 == -12814)
                {
                  v7 = -11800;
                  v8 = @"CoreAnimation image queue is full";
                  goto LABEL_376;
                }

                goto LABEL_363;
              }

              goto LABEL_315;
            }

            if (a1 == -12848)
            {
              v7 = -11829;
              goto LABEL_379;
            }

            v10 = -12847;
            goto LABEL_192;
          }

          if (a1 > -12713)
          {
            if (a1 > -12665)
            {
              if (a1 == -12664)
              {
                goto LABEL_315;
              }

              if (a1 != -12661)
              {
                if (a1 == -12660)
                {
                  v6 = *MEMORY[0x1E696A978];
                  v7 = -1102;
                  goto LABEL_379;
                }

                goto LABEL_363;
              }

LABEL_295:
              v6 = *MEMORY[0x1E696A978];
              v7 = -1008;
              goto LABEL_379;
            }

            if (a1 == -12712)
            {
              v7 = -11800;
              v8 = @"Media format - invalid parameter";
              goto LABEL_376;
            }

            v14 = -12668;
LABEL_294:
            if (a1 != v14)
            {
              goto LABEL_363;
            }

            goto LABEL_295;
          }

          if (a1 <= -12715)
          {
            v7 = -11800;
            if (a1 == -12716)
            {
              v8 = @"Media format - format description has an incompatible format (e.g. unknown format / incompatible atom)";
            }

            else
            {
              v8 = @"Media format - format description is invalid (e.g. invalid size)";
            }

            goto LABEL_376;
          }

          if (a1 == -12714)
          {
            v7 = -11800;
            v8 = @"Media format - sample description is invalid (e.g. invalid size)";
            goto LABEL_376;
          }

          v13 = -12713;
LABEL_314:
          if (a1 != v13)
          {
            goto LABEL_363;
          }

          goto LABEL_315;
        }

        if (a1 <= -12631)
        {
          if (a1 > -12636)
          {
            if (a1 <= -12634)
            {
              v7 = -11800;
              if (a1 == -12635)
              {
                v8 = @"Media writing - invalid edit";
              }

              else
              {
                v8 = @"Media writing - invalid format";
              }
            }

            else if (a1 == -12633)
            {
              v7 = -11800;
              v8 = @"Media writing - invalid timestamp";
            }

            else
            {
              v7 = -11800;
              if (a1 == -12632)
              {
                v8 = @"Media writing - no such track";
              }

              else
              {
                v8 = @"Media writing - read only property";
              }
            }

            goto LABEL_376;
          }

          if (a1 <= -12639)
          {
            if (a1 == -12651)
            {
              v7 = -11861;
              goto LABEL_379;
            }

            if (a1 == -12639)
            {
              v7 = -11906;
              v8 = @"Media writing - predetermined file size too small";
              goto LABEL_376;
            }

            goto LABEL_363;
          }

          if (a1 == -12638)
          {
            v7 = -11907;
            v8 = @"Media writing - predetermined media data size too small";
            goto LABEL_376;
          }

          v13 = -12636;
          goto LABEL_314;
        }

        if (a1 <= -12552)
        {
          if (a1 <= -12556)
          {
            if (a1 == -12630)
            {
              v7 = -11800;
              v8 = @"Media writing - no such property";
              goto LABEL_376;
            }

            v12 = -12556;
            goto LABEL_298;
          }

          if (a1 == -12555)
          {
            v7 = -11862;
            goto LABEL_379;
          }

          if (a1 != -12553)
          {
            goto LABEL_363;
          }

LABEL_258:
          v7 = -11880;
          goto LABEL_379;
        }

        if ((a1 + 12551) < 2)
        {
          goto LABEL_258;
        }

        if (a1 != -12541)
        {
          if (a1 == -12540)
          {
            v7 = -11900;
            goto LABEL_379;
          }

          goto LABEL_363;
        }

LABEL_215:
        v7 = -11807;
        goto LABEL_379;
      }

      if (a1 > -12431)
      {
        if (a1 <= -12204)
        {
          if (a1 > -12408)
          {
            if (a1 > -12402)
            {
              if (a1 == -12401)
              {
                goto LABEL_315;
              }

              if (a1 != -12282)
              {
                if (a1 == -12204)
                {
                  v6 = *MEMORY[0x1E696A250];
                  v7 = 513;
                  goto LABEL_379;
                }

                goto LABEL_363;
              }

LABEL_261:
              v7 = -11842;
              goto LABEL_379;
            }

            if (a1 != -12407)
            {
              v15 = -12403;
              goto LABEL_304;
            }

            goto LABEL_306;
          }

          if (a1 <= -12413)
          {
            if (a1 != -12430)
            {
              if (a1 == -12413)
              {
                goto LABEL_379;
              }

              goto LABEL_363;
            }

            goto LABEL_308;
          }

          if (a1 != -12412)
          {
            v13 = -12411;
            goto LABEL_314;
          }

LABEL_271:
          v7 = -11823;
          goto LABEL_379;
        }

        if (a1 <= -12162)
        {
          if (a1 <= -12179)
          {
            if (a1 == -12203)
            {
              v6 = *MEMORY[0x1E696A250];
              v7 = 257;
              goto LABEL_379;
            }

            v12 = -12184;
            goto LABEL_298;
          }

          if (a1 == -12178)
          {
            goto LABEL_299;
          }

          if (a1 == -12167)
          {
LABEL_311:
            v7 = -11839;
            goto LABEL_379;
          }

          if (a1 != -12166)
          {
            goto LABEL_363;
          }

LABEL_106:
          v7 = -11835;
          goto LABEL_379;
        }

        if ((a1 + 12149) >= 2)
        {
          if (a1 != -12161)
          {
            if (a1 != -12146)
            {
              goto LABEL_363;
            }

            goto LABEL_301;
          }

LABEL_238:
          v7 = -11836;
          goto LABEL_379;
        }

LABEL_243:
        v6 = *MEMORY[0x1E696A978];
        v7 = -3000;
        goto LABEL_379;
      }

      if (a1 <= -12502)
      {
        if (a1 > -12507)
        {
          if (a1 <= -12505)
          {
            v7 = -11858;
            if (a1 == -12506)
            {
              v8 = @"Blitting failed";
            }

            else
            {
              v8 = @"Invalid composition instruction";
            }
          }

          else if (a1 == -12504)
          {
            v7 = -11858;
            v8 = @"Invalid parameter";
          }

          else
          {
            v7 = -11858;
            if (a1 == -12503)
            {
              v8 = @"Destination frame unsupported format";
            }

            else
            {
              v8 = @"Source frame unsupported format";
            }
          }

          goto LABEL_376;
        }

        if (a1 > -12509)
        {
          v7 = -11858;
          if (a1 == -12508)
          {
            v8 = @"Frame was cancelled";
          }

          else
          {
            v8 = @"No output callback";
          }

          goto LABEL_376;
        }

        if (a1 == -12533)
        {
          v7 = -11903;
          goto LABEL_379;
        }

        if (a1 == -12509)
        {
          v7 = -11858;
          v8 = @"No custom callbacks";
          goto LABEL_376;
        }

        goto LABEL_363;
      }

      if (a1 <= -12437)
      {
        if (a1 <= -12494)
        {
          if (a1 == -12501)
          {
            v7 = -11858;
            v8 = @"Render dimensions unknown";
            goto LABEL_376;
          }

          if (a1 == -12500)
          {
            v7 = -11858;
            v8 = @"Source frame missing";
            goto LABEL_376;
          }

          goto LABEL_363;
        }

        if (a1 != -12493 && a1 != -12450)
        {
          goto LABEL_363;
        }

        goto LABEL_261;
      }

      if ((a1 + 12436) < 2)
      {
        goto LABEL_306;
      }

      if (a1 == -12434)
      {
        goto LABEL_315;
      }

      if (a1 != -12431)
      {
        goto LABEL_363;
      }

LABEL_309:
      v7 = -11832;
      goto LABEL_379;
    }

    if (a1 <= -1104)
    {
      if (a1 > -6691)
      {
        if (a1 > -2001)
        {
          if ((a1 + 1206) >= 7 && a1 != -2000)
          {
            goto LABEL_363;
          }
        }

        else if ((a1 + 3007) >= 8)
        {
          if ((a1 + 6690) > 0x1C || ((1 << (a1 + 34)) & 0x10000003) == 0)
          {
            goto LABEL_363;
          }

          goto LABEL_315;
        }

LABEL_143:
        v6 = *MEMORY[0x1E696A978];
        v7 = a1;
        goto LABEL_379;
      }

      if (a1 <= -12118)
      {
        if (a1 <= -12126)
        {
          if (a1 <= -12134)
          {
            if (a1 == -12143)
            {
              goto LABEL_243;
            }

            if (a1 != -12137)
            {
              v10 = -12134;
LABEL_192:
              if (a1 != v10)
              {
                goto LABEL_363;
              }

LABEL_211:
              v7 = -11828;
              goto LABEL_379;
            }

LABEL_253:
            v7 = -11821;
            goto LABEL_379;
          }

          if ((a1 + 12133) >= 2)
          {
            goto LABEL_363;
          }

LABEL_301:
          v7 = -11831;
          goto LABEL_379;
        }

        if ((a1 + 12119) < 2)
        {
          goto LABEL_211;
        }

        if (a1 != -12125)
        {
          v11 = -12124;
          goto LABEL_242;
        }

LABEL_276:
        v7 = -11847;
        goto LABEL_379;
      }

      if (a1 > -12102)
      {
        if (a1 <= -12085)
        {
          if (a1 != -12101)
          {
            v13 = -12100;
            goto LABEL_314;
          }

          goto LABEL_271;
        }

        if (a1 != -12084)
        {
          v12 = -12083;
          goto LABEL_298;
        }

        goto LABEL_276;
      }

      if (a1 > -12110)
      {
        if (a1 != -12109)
        {
          v15 = -12103;
LABEL_304:
          if (a1 == v15)
          {
            v6 = *MEMORY[0x1E696A978];
            v7 = -3001;
            goto LABEL_379;
          }

          goto LABEL_363;
        }

LABEL_306:
        v7 = -11838;
        goto LABEL_379;
      }

      if ((a1 + 12117) < 2)
      {
        goto LABEL_301;
      }

      v11 = -12115;
LABEL_242:
      if (a1 != v11)
      {
        goto LABEL_363;
      }

      goto LABEL_243;
    }

    if (a1 <= 1)
    {
      if ((a1 + 1021) >= 0x16 && (a1 + 1103) >= 4)
      {
        goto LABEL_363;
      }

      goto LABEL_143;
    }

    if (a1 > 268435458)
    {
      if (a1 <= 561606516)
      {
        if (a1 != 268435459)
        {
          if (a1 == 560226676)
          {
LABEL_148:
            v7 = -11855;
            goto LABEL_379;
          }

          goto LABEL_363;
        }

        goto LABEL_299;
      }

      if (a1 == 561606517)
      {
        goto LABEL_106;
      }

      if (a1 != 1650549857)
      {
        goto LABEL_363;
      }

      goto LABEL_253;
    }

    if (a1 != 2)
    {
      if (a1 == 12)
      {
        goto LABEL_315;
      }

      if (a1 != 28)
      {
        goto LABEL_363;
      }

      goto LABEL_215;
    }

LABEL_239:
    v6 = *MEMORY[0x1E696A978];
    v7 = -1100;
    goto LABEL_379;
  }

  if (a1 <= -16455)
  {
    if (a1 > -17699)
    {
      if (a1 > -16976)
      {
        if (a1 <= -16845)
        {
          if ((a1 + 16850) < 6)
          {
            goto LABEL_295;
          }

          if (a1 == -16975)
          {
            v7 = -11843;
            goto LABEL_379;
          }

          v13 = -16970;
          goto LABEL_314;
        }

        if (a1 <= -16823)
        {
          if ((a1 + 16844) < 5)
          {
LABEL_43:
            v6 = *MEMORY[0x1E696A978];
            v7 = -1013;
            goto LABEL_379;
          }

          goto LABEL_363;
        }

        if (a1 > -16751)
        {
          if (a1 != -16750)
          {
            if (a1 == -16540 || a1 == -16530)
            {
              v7 = -11846;
              goto LABEL_379;
            }

            goto LABEL_363;
          }

          goto LABEL_307;
        }

        if (a1 != -16822)
        {
          if (a1 == -16751)
          {
            v7 = -11878;
            goto LABEL_379;
          }

          goto LABEL_363;
        }

LABEL_299:
        v7 = -11819;
        goto LABEL_379;
      }

      if (a1 > -17392)
      {
        if (a1 <= -17222)
        {
          if (a1 > -17227)
          {
            if (a1 == -17226)
            {
              v7 = -11870;
              goto LABEL_379;
            }

            if (a1 == -17223)
            {
              v7 = -11868;
              goto LABEL_379;
            }
          }

          else
          {
            if (a1 == -17391)
            {
              v7 = -11871;
              goto LABEL_379;
            }

            if (a1 == -17390)
            {
              v7 = -11841;
              goto LABEL_379;
            }
          }

          goto LABEL_363;
        }

        if (a1 <= -16978)
        {
          if (a1 == -17221)
          {
            goto LABEL_299;
          }

          v12 = -16978;
          goto LABEL_298;
        }

        if (a1 != -16977)
        {
          goto LABEL_306;
        }

        goto LABEL_253;
      }

      if (a1 > -17509)
      {
        if (a1 > -17507)
        {
          if (a1 == -17506)
          {
            goto LABEL_315;
          }

          v13 = -17501;
          goto LABEL_314;
        }

        if (a1 != -17508)
        {
          v7 = -11884;
          goto LABEL_379;
        }

        goto LABEL_239;
      }

      if (a1 > -17544)
      {
        if (a1 == -17543)
        {
          v7 = -11876;
          v8 = @"Media writing - segment is not allowed to star with a non-sync sample.";
          goto LABEL_376;
        }

        if (a1 == -17540)
        {
          v7 = -11800;
          v8 = @"iTT requires languageCode or extendedLanguageTag property to be set";
          goto LABEL_376;
        }

        goto LABEL_363;
      }

      if ((a1 + 17693) >= 2)
      {
        if (a1 == -17698)
        {
          v7 = -11862;
          v8 = @"Cannot append tagged buffer group due to video layer IDs mismatch";
          goto LABEL_376;
        }

LABEL_363:
        if ((a1 + 11999) >= 0xC8)
        {
          v16 = -11800;
        }

        else
        {
          v16 = a1;
        }

        v7 = v16;
        goto LABEL_379;
      }
    }

    else
    {
      if (a1 <= -42006)
      {
        if (a1 <= -42598)
        {
          if (a1 <= -42682)
          {
            if (a1 == -536870208)
            {
              v7 = -11804;
              goto LABEL_379;
            }

            if (a1 == -73195)
            {
              v7 = -11892;
              goto LABEL_379;
            }

            if (a1 != -42808)
            {
              goto LABEL_363;
            }
          }

          else
          {
            v9 = a1 - 71;
            if ((a1 + 42681) > 0xD)
            {
              goto LABEL_363;
            }

            if (((1 << v9) & 0x21C1) != 0)
            {
              goto LABEL_106;
            }

            if (((1 << v9) & 0x206) == 0)
            {
              if (a1 != -42676)
              {
                goto LABEL_363;
              }

              goto LABEL_315;
            }
          }

          goto LABEL_238;
        }

        if ((a1 + 42597) > 0xD)
        {
          goto LABEL_363;
        }

        if (((1 << (a1 + 101)) & 0x1F87) != 0)
        {
          goto LABEL_106;
        }

        if (a1 != -42584)
        {
          goto LABEL_363;
        }

        goto LABEL_321;
      }

      if (a1 <= -19164)
      {
        if (a1 > -19232)
        {
          switch(a1)
          {
            case -19231:
              v7 = -11800;
              v8 = @"CoreAnimation image queue registration failed";
              goto LABEL_376;
            case -19230:
              v7 = -11800;
              v8 = @"CoreAnimation image queue does not support this pixel format";
              goto LABEL_376;
            case -19164:
              v7 = -11888;
              goto LABEL_379;
          }

          goto LABEL_363;
        }

        if ((a1 + 42005) < 2)
        {
          goto LABEL_106;
        }

        if (a1 != -19512)
        {
          if (a1 == -19232)
          {
            v7 = -11800;
            v8 = @"CoreAnimation image queue does not support this image type";
            goto LABEL_376;
          }

          goto LABEL_363;
        }

        goto LABEL_244;
      }

      if (a1 <= -19032)
      {
        if (a1 != -19163)
        {
          if (a1 == -19034)
          {
            v7 = -11862;
            v8 = @"Cannot append tagged buffer group due to left and right view IDs mismatch";
            goto LABEL_376;
          }

          if (a1 == -19032)
          {
            v7 = -11862;
            v8 = @"Values for kVTCompressionPropertyKey_MVHEVCVideoLayerIDs are invalid";
            goto LABEL_376;
          }

          goto LABEL_363;
        }

LABEL_310:
        v7 = -11879;
        goto LABEL_379;
      }

      if (a1 == -19031)
      {
        v7 = -11862;
        v8 = @"Value at index 0 for kVTCompressionPropertyKey_MVHEVCVideoLayerIDs is not 0";
        goto LABEL_376;
      }

      if (a1 == -17774)
      {
        goto LABEL_299;
      }

      if (a1 != -17772)
      {
        goto LABEL_363;
      }
    }

    v7 = -11877;
    goto LABEL_379;
  }

  if (a1 > -15520)
  {
    if (a1 > -12889)
    {
      if (a1 > -12881)
      {
        if (a1 <= -12868)
        {
          switch(a1)
          {
            case -12880:
              v7 = -11867;
              goto LABEL_379;
            case -12875:
              v6 = *MEMORY[0x1E696A978];
              v7 = -1001;
              goto LABEL_379;
            case -12873:
              v7 = -11849;
              goto LABEL_379;
          }

          goto LABEL_363;
        }

        if (a1 != -12867)
        {
          if (a1 != -12864)
          {
            v13 = -12862;
            goto LABEL_314;
          }

LABEL_308:
          v7 = -11869;
          goto LABEL_379;
        }

        goto LABEL_309;
      }

      if (a1 <= -12887)
      {
        v7 = -11866;
        goto LABEL_379;
      }

      if (a1 == -12886)
      {
        v7 = -11853;
        v8 = @"JSON format error";
        goto LABEL_376;
      }

      if (a1 != -12885)
      {
        v14 = -12884;
        goto LABEL_294;
      }

LABEL_321:
      v7 = -11863;
      goto LABEL_379;
    }

    if (a1 > -15431)
    {
      switch(a1)
      {
        case -12939:
          v7 = -11850;
          goto LABEL_379;
        case -12938:
          goto LABEL_239;
        case -12937:
          goto LABEL_43;
        case -12936:
        case -12934:
        case -12933:
        case -12932:
        case -12931:
        case -12930:
        case -12928:
        case -12927:
        case -12924:
        case -12923:
        case -12922:
        case -12921:
        case -12920:
        case -12919:
        case -12918:
        case -12917:
        case -12916:
        case -12914:
        case -12907:
          goto LABEL_363;
        case -12935:
          v6 = *MEMORY[0x1E696A978];
          v7 = -1;
          goto LABEL_379;
        case -12929:
          v7 = -11857;
          goto LABEL_379;
        case -12926:
          v7 = -11882;
          goto LABEL_379;
        case -12925:
          goto LABEL_124;
        case -12915:
          v7 = -11840;
          goto LABEL_379;
        case -12913:
          goto LABEL_311;
        case -12912:
          v7 = -11883;
          goto LABEL_379;
        case -12911:
        case -12909:
          goto LABEL_253;
        case -12910:
          goto LABEL_148;
        case -12908:
          a2 = ensureUserInfoDictionaryContainsObjectForKey(a2, @"vide");
          v7 = -11834;
          goto LABEL_379;
        case -12906:
          a2 = ensureUserInfoDictionaryContainsObjectForKey(a2, @"vide");
          v7 = -11833;
          goto LABEL_379;
        default:
          if (a1 != -15430)
          {
            v13 = -12953;
            goto LABEL_314;
          }

          v7 = -11911;
          break;
      }

      goto LABEL_379;
    }

    if ((a1 + 15519) >= 5)
    {
      if (a1 != -15439)
      {
        v11 = -15432;
        goto LABEL_242;
      }

LABEL_244:
      v7 = -11891;
      goto LABEL_379;
    }

LABEL_124:
    v7 = -11848;
    goto LABEL_379;
  }

  if (a1 > -16223)
  {
    if (a1 <= -16114)
    {
      if (a1 <= -16126)
      {
        if (a1 == -16222)
        {
          v7 = -11856;
          goto LABEL_379;
        }

        if (a1 == -16180)
        {
          v7 = -11858;
          v8 = @"Custom compositor failed with client NSError";
          goto LABEL_376;
        }

        v12 = -16155;
LABEL_298:
        if (a1 != v12)
        {
          goto LABEL_363;
        }

        goto LABEL_299;
      }

      if ((a1 + 16121) >= 2)
      {
        if (a1 == -16125)
        {
          v7 = -11862;
          v8 = @"Cannot append tagged buffer that contains no CVPixelBuffers";
          goto LABEL_376;
        }

        if (a1 == -16114)
        {
          v7 = -11875;
          v8 = @"Value for kVTDecompressionPropertyKey_RequestedMVHEVCVideoLayerIDs does not match content";
          goto LABEL_376;
        }

        goto LABEL_363;
      }

      goto LABEL_276;
    }

    if ((a1 + 16113) <= 0xD)
    {
      if (((1 << (a1 - 15)) & 0x300C) != 0)
      {
        goto LABEL_276;
      }

      if (a1 == -16113)
      {
        v7 = -11875;
        v8 = @"Can only use kVTDecompressionPropertyKey_RequestedMVHEVCVideoLayerIDs for MV-HEVC video";
        goto LABEL_376;
      }

      if (a1 == -16102)
      {
        goto LABEL_306;
      }
    }

    if ((a1 + 15811) >= 2)
    {
      if (a1 != -15841)
      {
        goto LABEL_363;
      }

      goto LABEL_310;
    }

    goto LABEL_124;
  }

  if (a1 <= -16435)
  {
    switch(a1)
    {
      case -16454:
        v7 = -11837;
        goto LABEL_379;
      case -16451:
        v7 = -11817;
        goto LABEL_379;
      case -16450:
        v7 = -11808;
        goto LABEL_379;
    }

    goto LABEL_363;
  }

  switch(a1)
  {
    case -16434:
    case -16405:
      goto LABEL_299;
    case -16432:
      break;
    case -16431:
    case -16422:
      goto LABEL_306;
    case -16419:
      v7 = -11859;
      break;
    case -16418:
      v7 = -11805;
      break;
    case -16417:
      v7 = -11904;
      break;
    case -16414:
      v7 = -11818;
      break;
    case -16413:
      v7 = -11810;
      break;
    case -16412:
      v7 = -11811;
      break;
    case -16411:
      goto LABEL_215;
    case -16410:
      goto LABEL_271;
    case -16409:
      v7 = -11803;
      break;
    case -16402:
      goto LABEL_276;
    default:
      goto LABEL_363;
  }

LABEL_379:
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return AVLocalizedError(v6, v7, a2);
}

uint64_t AVOSStatusToNSError(signed int a1, void *a2)
{
  v2 = a2;
  v4 = 0;
  v10 = a1;
  v5 = *MEMORY[0x1E696A798];
  v6 = *MEMORY[0x1E696A768];
  while (*(&v10 + v4) - 127 >= 0xFFFFFFA1)
  {
    if (++v4 == 4)
    {
      v2 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a2];
      [v2 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKey:{"stringWithFormat:", @"'%@'", AVStringForOSType(a1)), @"AVErrorFourCharCode"}];
      break;
    }
  }

  if ((a1 - 1) >= 0x6B)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  v8 = MEMORY[0x1E696ABC0];

  return [v8 errorWithDomain:v7 code:a1 userInfo:v2];
}

uint64_t AVLocalizedError(void *a1, uint64_t a2, void *a3)
{
  if ([a1 isEqualToString:*MEMORY[0x1E696A978]])
  {
    v6 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696ABC0] _web_errorWithDomain:a1 code:a2 URL:{objc_msgSend(a3, "objectForKey:", *MEMORY[0x1E696A998])), "userInfo"), "mutableCopy"}];
    [v6 addEntriesFromDictionary:a3];
    a3 = v6;
  }

  v7 = 0;
  v8 = @"AVErrorUnknown";
  v9 = 0;
  v10 = 0;
  switch(a2)
  {
    case -11999:
      v8 = @"AVErrorClientProgrammingError";
      goto LABEL_94;
    case -11998:
    case -11997:
    case -11996:
    case -11995:
    case -11994:
    case -11993:
    case -11992:
    case -11991:
    case -11990:
    case -11989:
    case -11988:
    case -11987:
    case -11986:
    case -11985:
    case -11984:
    case -11983:
    case -11982:
    case -11981:
    case -11980:
    case -11979:
    case -11978:
    case -11977:
    case -11976:
    case -11975:
    case -11974:
    case -11973:
    case -11972:
    case -11971:
    case -11970:
    case -11969:
    case -11968:
    case -11967:
    case -11966:
    case -11965:
    case -11964:
    case -11963:
    case -11962:
    case -11961:
    case -11960:
    case -11959:
    case -11958:
    case -11957:
    case -11956:
    case -11955:
    case -11954:
    case -11953:
    case -11952:
    case -11951:
    case -11950:
    case -11949:
    case -11948:
    case -11947:
    case -11946:
    case -11945:
    case -11944:
    case -11943:
    case -11942:
    case -11941:
    case -11940:
    case -11939:
    case -11938:
    case -11937:
    case -11936:
    case -11935:
    case -11934:
    case -11933:
    case -11932:
    case -11931:
    case -11930:
    case -11929:
    case -11928:
    case -11927:
    case -11926:
    case -11925:
    case -11924:
    case -11923:
    case -11922:
    case -11921:
    case -11920:
    case -11919:
    case -11918:
    case -11917:
    case -11916:
    case -11915:
    case -11914:
    case -11913:
    case -11912:
    case -11905:
    case -11902:
    case -11901:
    case -11899:
    case -11898:
    case -11897:
    case -11896:
    case -11895:
    case -11894:
    case -11893:
    case -11888:
    case -11887:
    case -11886:
    case -11885:
    case -11879:
    case -11874:
    case -11860:
    case -11851:
    case -11845:
    case -11844:
    case -11816:
    case -11802:
      goto LABEL_118;
    case -11911:
      v8 = @"AVErrorPointlessOverCapture";
      goto LABEL_94;
    case -11910:
      v8 = @"AVErrorOperationRequiresBothBudsInEar";
      goto LABEL_94;
    case -11909:
      v8 = @"AVErrorIncorrectPassword";
      goto LABEL_94;
    case -11908:
      v8 = @"AVErrorIncorrectPIN";
      goto LABEL_94;
    case -11907:
      v8 = @"AVErrorMediaDataWritingExceededPredeterminedSize";
      goto LABEL_94;
    case -11906:
      v8 = @"AVErrorFileWritingExceededPredeterminedSize";
      goto LABEL_94;
    case -11904:
      v8 = @"AVErrorRecordingNotAllowedWhenMultipleAppsAreForeground";
      goto LABEL_94;
    case -11903:
      v8 = @"AVErrorFileChecksumFailed";
      goto LABEL_94;
    case -11900:
      v8 = @"AVErrorInvalidFileAtDownloadDestinationURL";
      goto LABEL_94;
    case -11892:
      v8 = @"AVErrorFollowExternalSyncDeviceTimedOut";
      goto LABEL_94;
    case -11891:
      v8 = @"AVErrorAutoWhiteBalanceNotLocked";
      goto LABEL_94;
    case -11890:
      v8 = @"AVErrorNoSmartFramingsEnabled";
      goto LABEL_94;
    case -11889:
      v8 = @"AVErrorContentKeyInvalid";
      goto LABEL_94;
    case -11884:
      v8 = @"AVErrorSandboxExtensionDenied";
      goto LABEL_94;
    case -11883:
      v8 = @"AVErrorEncodeFailed";
      goto LABEL_94;
    case -11882:
      v8 = @"AVErrorAirPlayReceiverTemporarilyUnavailable";
      goto LABEL_94;
    case -11881:
      v8 = @"AVErrorFailedToLoadSampleData";
      goto LABEL_94;
    case -11880:
      v8 = @"AVErrorInvalidSampleCursor";
      goto LABEL_94;
    case -11878:
      v8 = @"AVErrorOperationCancelled";
      goto LABEL_94;
    case -11877:
      v8 = @"AVErrorRosettaNotInstalled";
      goto LABEL_94;
    case -11876:
      v8 = @"AVErrorSegmentStartedWithNonSyncSample";
      goto LABEL_94;
    case -11875:
      v8 = @"AVErrorIncorrectlyConfigured";
      goto LABEL_94;
    case -11873:
      v8 = @"AVErrorUnsupportedDeviceActiveFormat";
      goto LABEL_94;
    case -11872:
      v8 = @"AVErrorSessionHardwareCostOverage";
      goto LABEL_94;
    case -11871:
      v8 = @"AVErrorOperationNotSupportedForPreset";
      goto LABEL_94;
    case -11870:
      v8 = @"AVErrorExternalPlaybackNotSupportedForAsset";
      goto LABEL_94;
    case -11869:
      v8 = @"AVErrorNoSourceTrack";
      goto LABEL_94;
    case -11868:
      v8 = @"AVErrorNoCompatibleAlternatesForExternalDisplay";
      goto LABEL_94;
    case -11867:
      v8 = @"AVErrorNoLongerPlayable";
      goto LABEL_94;
    case -11866:
      v8 = @"AVErrorContentNotUpdated";
      goto LABEL_94;
    case -11865:
      v8 = @"AVErrorMalformedDepth";
      goto LABEL_94;
    case -11864:
      v8 = @"AVErrorFormatUnsupported";
      goto LABEL_94;
    case -11863:
      v8 = @"AVErrorContentIsUnavailable";
      goto LABEL_94;
    case -11862:
      v8 = @"AVErrorOperationNotAllowed";
      goto LABEL_94;
    case -11861:
      v8 = @"AVErrorUnsupportedOutputSettings";
      goto LABEL_94;
    case -11859:
      v8 = @"AVErrorRecordingAlreadyInProgress";
      goto LABEL_94;
    case -11858:
      v8 = @"AVErrorVideoCompositorFailed";
      goto LABEL_94;
    case -11857:
      v8 = @"AVErrorAirPlayReceiverRequiresInternet";
      goto LABEL_94;
    case -11856:
      v8 = @"AVErrorAirPlayControllerRequiresInternet";
      goto LABEL_94;
    case -11855:
      v8 = @"AVErrorUndecodableMediaData";
      goto LABEL_94;
    case -11854:
      v8 = @"AVErrorFileTypeDoesNotSupportSampleReferences";
      goto LABEL_94;
    case -11853:
      v8 = @"AVErrorFailedToParse";
      goto LABEL_94;
    case -11852:
      v8 = @"AVErrorApplicationIsNotAuthorizedToUseDevice";
      goto LABEL_94;
    case -11850:
      v8 = @"AVErrorServerIncorrectlyConfigured";
      goto LABEL_94;
    case -11849:
      v8 = @"AVErrorFailedToLoadMediaData";
      goto LABEL_94;
    case -11848:
      v8 = @"AVErrorIncompatibleAsset";
      goto LABEL_94;
    case -11847:
      v8 = @"AVErrorOperationInterrupted";
      goto LABEL_94;
    case -11846:
      v8 = @"AVErrorTorchLevelUnavailable";
      goto LABEL_94;
    case -11843:
      v8 = @"AVErrorInvalidOutputURLPathExtension";
      goto LABEL_94;
    case -11842:
      v8 = @"AVErrorReferenceForbiddenByReferencePolicy";
      goto LABEL_94;
    case -11841:
      v8 = @"AVErrorInvalidVideoComposition";
      goto LABEL_94;
    case -11840:
      v8 = @"AVErrorEncoderTemporarilyUnavailable";
      goto LABEL_94;
    case -11839:
      v8 = @"AVErrorDecoderTemporarilyUnavailable";
      goto LABEL_94;
    case -11838:
      v8 = @"AVErrorOperationNotSupportedForAsset";
      goto LABEL_94;
    case -11837:
      v8 = @"AVErrorDeviceIsNotAvailableInBackground";
      goto LABEL_94;
    case -11836:
      v8 = @"AVErrorApplicationIsNotAuthorized";
      goto LABEL_94;
    case -11835:
      v8 = @"AVErrorContentIsNotAuthorized";
      goto LABEL_94;
    case -11834:
      v8 = @"AVErrorEncoderNotFound";
      goto LABEL_94;
    case -11833:
      v8 = @"AVErrorDecoderNotFound";
      goto LABEL_94;
    case -11832:
      v8 = @"AVErrorNoImageAtTime";
      goto LABEL_94;
    case -11831:
      v8 = @"AVErrorContentIsProtected";
      goto LABEL_94;
    case -11830:
      v8 = @"AVErrorMaximumStillImageCaptureRequestsExceeded";
      goto LABEL_94;
    case -11829:
      v8 = @"AVErrorFileFailedToParse";
      goto LABEL_94;
    case -11828:
      v8 = @"AVErrorFileFormatNotRecognized";
      goto LABEL_94;
    case -11827:
      v8 = @"AVErrorInvalidCompositionTrackSegmentSourceDuration";
      goto LABEL_94;
    case -11826:
      v8 = @"AVErrorInvalidCompositionTrackSegmentSourceStartTime";
      goto LABEL_94;
    case -11825:
      v8 = @"AVErrorInvalidCompositionTrackSegmentDuration";
      goto LABEL_94;
    case -11824:
      v8 = @"AVErrorCompositionTrackSegmentsNotContiguous";
      goto LABEL_94;
    case -11823:
      v8 = @"AVErrorFileAlreadyExists";
      goto LABEL_94;
    case -11822:
      v8 = @"AVErrorInvalidSourceMedia";
      goto LABEL_94;
    case -11821:
      v8 = @"AVErrorDecodeFailed";
      goto LABEL_94;
    case -11820:
      v8 = @"AVErrorExportFailed";
      goto LABEL_94;
    case -11819:
      v8 = @"AVErrorMediaServicesWereReset";
      goto LABEL_94;
    case -11818:
      v8 = @"AVErrorSessionWasInterrupted";
      goto LABEL_94;
    case -11817:
      v8 = @"AVErrorDeviceLockedForConfigurationByAnotherProcess";
      goto LABEL_94;
    case -11815:
      v8 = @"AVErrorDeviceInUseByAnotherApplication";
      goto LABEL_94;
    case -11814:
      v8 = @"AVErrorDeviceNotConnected";
      goto LABEL_94;
    case -11813:
      v8 = @"AVErrorMaximumNumberOfSamplesForFileFormatReached";
      goto LABEL_94;
    case -11812:
      v8 = @"AVErrorMediaDiscontinuity";
      goto LABEL_94;
    case -11811:
      v8 = @"AVErrorMaximumFileSizeReached";
      goto LABEL_94;
    case -11810:
      v8 = @"AVErrorMaximumDurationReached";
      goto LABEL_94;
    case -11809:
      v8 = @"AVErrorMediaChanged";
      goto LABEL_94;
    case -11808:
      v8 = @"AVErrorDeviceWasDisconnected";
      goto LABEL_94;
    case -11807:
      v8 = @"AVErrorDiskFull";
      goto LABEL_94;
    case -11806:
      v8 = @"AVErrorSessionConfigurationChanged";
      goto LABEL_94;
    case -11805:
      v8 = @"AVErrorNoDataCaptured";
      goto LABEL_94;
    case -11804:
      v8 = @"AVErrorDeviceAlreadyUsedByAnotherSession";
      goto LABEL_94;
    case -11803:
      v8 = @"AVErrorSessionNotRunning";
      goto LABEL_94;
    case -11801:
      v8 = @"AVErrorOutOfMemory";
      goto LABEL_94;
    case -11800:
LABEL_94:
      v11 = [a1 stringByAppendingFormat:@"_%@", v8];
      v7 = v11;
      if (!v11)
      {
        v9 = 0;
        v10 = 0;
        goto LABEL_118;
      }

      v10 = AVLocalizedStringFromTable([v11 stringByAppendingString:@"_Description"], @"AVError-2025");
      v9 = AVLocalizedStringFromTable([v7 stringByAppendingString:@"_FailureReason"], @"AVError-2025");
      v7 = AVLocalizedStringFromTable([v7 stringByAppendingString:@"_RecoverySuggestion"], @"AVError-2025");
      if (![a1 isEqualToString:@"AVFoundationErrorDomain"])
      {
        goto LABEL_118;
      }

      if (a2 <= -11818)
      {
        if (a2 == -11854)
        {
          v23 = [a3 objectForKey:@"AVErrorFileTypeKey"];
          if (v23)
          {
            v24 = v23;
            v25 = [objc_msgSend(MEMORY[0x1E6982C40] typeWithIdentifier:{v23), "localizedDescription"}];
            if (v25)
            {
              v26 = v25;
            }

            else
            {
              v26 = v24;
            }
          }

          else
          {
            v26 = 0;
          }

          if (v9)
          {
            v13 = MEMORY[0x1E696AEC0];
            v28 = v26;
            v29 = 0;
            goto LABEL_116;
          }

          goto LABEL_118;
        }

        if (a2 != -11852)
        {
          if (a2 == -11837)
          {
            v12 = [objc_msgSend(a3 objectForKey:{@"AVErrorDeviceKey", "localizedName"}];
            v29 = 0;
            if (v10)
            {
              v10 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@" error:&v29, v12];
            }

            if (v9)
            {
              goto LABEL_115;
            }
          }

          goto LABEL_118;
        }
      }

      else
      {
        if (a2 > -11805)
        {
          if (a2 == -11804)
          {
            v27 = [objc_msgSend(a3 objectForKey:{@"AVErrorDeviceKey", "localizedName"}];
            if (v7)
            {
              v29 = 0;
              v7 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v7 validFormatSpecifiers:@"%@" error:&v29, v27];
            }
          }

          else if (a2 == -11800)
          {
            v21 = [a3 objectForKey:*MEMORY[0x1E696AA08]];
            v22 = v21 ? [v21 code] : 4294955496;
            if (v9)
            {
              v14 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v9 validFormatSpecifiers:@"%d" error:&v29, v22, 0];
              goto LABEL_117;
            }
          }

          goto LABEL_118;
        }

        if (a2 != -11817 && a2 != -11815)
        {
          goto LABEL_118;
        }
      }

      v12 = [objc_msgSend(a3 objectForKey:{@"AVErrorDeviceKey", "localizedName"}];
      if (v10)
      {
        v29 = 0;
        v10 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@" error:&v29, v12];
      }

      if (v7)
      {
        v29 = 0;
        v7 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v7 validFormatSpecifiers:@"%@" error:&v29, v12];
      }

      if (v9)
      {
        v29 = 0;
LABEL_115:
        v13 = MEMORY[0x1E696AEC0];
        v28 = v12;
LABEL_116:
        v14 = [v13 stringWithValidatedFormat:v9 validFormatSpecifiers:@"%@" error:&v29, v28, v29];
LABEL_117:
        v9 = v14;
      }

LABEL_118:
      if (a3)
      {
        v15 = [a3 mutableCopy];
      }

      else
      {
        v15 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
      }

      v16 = v15;
      if (v10)
      {
        v17 = *MEMORY[0x1E696A578];
        if (![a3 objectForKey:*MEMORY[0x1E696A578]])
        {
          [v16 setObject:v10 forKey:v17];
        }
      }

      if (v9)
      {
        v18 = *MEMORY[0x1E696A588];
        if (![a3 objectForKey:*MEMORY[0x1E696A588]])
        {
          [v16 setObject:v9 forKey:v18];
        }
      }

      if (v7)
      {
        v19 = *MEMORY[0x1E696A598];
        if (![a3 objectForKey:*MEMORY[0x1E696A598]])
        {
          [v16 setObject:v7 forKey:v19];
        }
      }

      return [MEMORY[0x1E696ABC0] errorWithDomain:a1 code:a2 userInfo:v16];
    default:
      v9 = 0;
      v10 = 0;
      goto LABEL_118;
  }
}

void *AVLocalizedStringFromTable(uint64_t a1, uint64_t a2)
{
  v2 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleWithIdentifier:{@"com.apple.AVFCore", "localizedStringForKey:value:table:", a1, @"xxxxDefaultValuexxxx", a2}];
  if ([v2 isEqualToString:@"xxxxDefaultValuexxxx"])
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

void av_readwrite_dispatch_queue_write_async(NSObject *a1, void *a2)
{
  if (usesSerialQueue())
  {

    dispatch_async(a1, a2);
  }

  else
  {

    dispatch_barrier_async(a1, a2);
  }
}

void *avurlasset_setupGuts(void *a1, void *a2, void *a3, id a4, uint64_t a5)
{
  v41 = a5;
  v9 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v10 = [a3 valueForKey:@"AVURLAssetInspectorLoaderKey"];
  v11 = [a3 objectForKey:@"AVURLAssetDownloadTokenKey"];
  v12 = v11;
  if (!a2 && !v11 && !v10)
  {
    goto LABEL_14;
  }

  v13 = objc_alloc_init(AVURLAssetInternal);
  if (!v13)
  {
    goto LABEL_14;
  }

  v14 = v13;
  v15 = [a3 objectForKey:@"AVURLAssetLoggingIdentifier"];
  if (v15)
  {
    [a1 _setLoggingIdentifier:v15];
  }

  if ([objc_msgSend(a3 objectForKey:{@"AVURLAssetHasSecurityScopedURLKey", "BOOLValue"}])
  {
    v14->requiresSecurityScopeRelease = [a2 startAccessingSecurityScopedResource];
  }

  v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v17 = dispatch_queue_create("com.apple.avurlasset.tracks", v16);
  v14->tracksAccessQueue = v17;
  if (v17)
  {
    a1[2] = CFRetain(v14);
    v14->URLRequestHelper = [[AVAssetClientURLRequestHelper alloc] initWithAsset:a1];
    v14->makeOneResourceLoaderOnly = objc_alloc_init(AVDispatchOnce);
    v14->makeOneAssetDownloadCacheOnly = objc_alloc_init(AVDispatchOnce);
    v18 = [a3 valueForKey:@"AVURLAssetAllowsExpensiveNetworkAccessKey"];
    if (v18)
    {
      v19 = [v18 BOOLValue];
    }

    else
    {
      v19 = 1;
    }

    v14->allowsExpensiveNetworkAccess = v19;
    v21 = [a3 valueForKey:@"AVURLAssetAllowsConstrainedNetworkAccessKey"];
    if (v21)
    {
      v22 = [v21 BOOLValue];
    }

    else
    {
      v22 = 1;
    }

    v14->allowsConstrainedNetworkAccess = v22;
    if (v12)
    {
      [v12 unsignedLongLongValue];
      cf = 0;
      if ([AVAsset _assetCreationOptionsRequiresInProcessOperation:a3])
      {
        v23 = FigAssetCopyAssetWithDownloadToken();
      }

      else
      {
        v23 = FigAssetRemoteCopyAssetWithDownloadToken();
      }

      v24 = [[AVUnreachableAssetInspectorLoader alloc] initWithFigError:v23 userInfo:0];
      [a1 _setAssetInspectorLoader:v24];

      v14->URL = [objc_msgSend(objc_msgSend(a1 "_assetInspectorLoader")];
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else if (v10)
    {
      [a1 _setAssetInspectorLoader:v10];
      v14->URL = [a2 copy];
    }

    else
    {
      cf = 0;
      if (!a4)
      {
        a4 = +[AVURLAsset _getFigAssetCreationOptionsFromURLAssetInitializationOptions:assetLoggingIdentifier:figAssetCreationFlags:error:](AVURLAsset, "_getFigAssetCreationOptionsFromURLAssetInitializationOptions:assetLoggingIdentifier:figAssetCreationFlags:error:", a3, [a1 _nameForLogging], &v41, &cf);
        if (!a4)
        {
          if ([cf code] == -11999)
          {
            if (*v9 == 1)
            {
              kdebug_trace();
            }

            v29 = a1;
            v30 = [objc_msgSend(cf "userInfo")];
            v31 = [v30 reason];
            v32 = MEMORY[0x1E695DF30];
            v38 = [v30 name];
            if (v31)
            {
              [MEMORY[0x1E696AEC0] stringWithFormat:@": %@", v31];
            }

            v39 = [v32 exceptionWithName:v38 reason:AVMethodExceptionReasonWithObjectAndSelector(a1 userInfo:{sel_initWithURL_options_, @"Cannot honor specified AVURLAsset initialization options for AVURLAsset <%p>%@", v33, v34, v35, v36, v37, a1), 0}];
            objc_exception_throw(v39);
          }

          a4 = 0;
        }
      }

      v40 = 0;
      v25 = objc_alloc([a1 _classForFigAssetInspectorLoader]);
      v26 = [v25 initWithURL:a2 figAssetCreationFlags:v41 figAssetCreationOptions:a4 avAssetInitializationOptions:a3 forAsset:a1 figErr:&v40];
      if (!v26)
      {
        v27 = [AVUnreachableAssetInspectorLoader alloc];
        v26 = [(AVUnreachableAssetInspectorLoader *)v27 initWithFigError:v40 userInfo:0];
      }

      v14->customURLBridgeForNSURLProtocol = [[AVAssetCustomURLBridgeForNSURLProtocol alloc] initWithFigAsset:[(AVAssetInspectorLoader *)v26 _figAsset]];
      v14->customURLAuthenticationUsingKeychain = [[AVAssetCustomURLAuthentication alloc] initWithFigAsset:[(AVAssetInspectorLoader *)v26 _figAsset]];
      v14->URL = [a2 copy];
      v14->initializationOptions = [a3 copy];
      [a1 _setAssetInspectorLoader:v26];
    }

    v28 = [a3 objectForKey:@"AVURLAssetRemoteCustomURLHandlerContextKey"];
    if (v28)
    {
      [a1 _resourceLoaderWithRemoteHandlerContext:v28];
    }

    if (*v9 == 1)
    {
      strncpy(&cf, [objc_msgSend(objc_msgSend(a1 "loggingIdentifier")], 8uLL);
      kdebug_trace();
    }
  }

  else
  {
LABEL_14:
    if (*v9 == 1)
    {
      kdebug_trace();
    }

    return 0;
  }

  return a1;
}

void sub_196067A10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 112));
  AVTelemetryIntervalEnd((v4 - 120));
  _Unwind_Resume(a1);
}

AVSerializedMostlySynchronousReentrantBlockScheduler *AVMakeBlockSchedulerThatSerializesBlocksPrefersSynchronousExecutionAndAllowsReentrantExecution()
{
  v0 = objc_alloc_init(AVSerializedMostlySynchronousReentrantBlockScheduler);

  return v0;
}

void sub_196067D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL AVAssetUTIsAreComplementary(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v4 = a2 != 0;
  v12 = 0u;
  v13 = 0u;
  v5 = [a2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(a2);
        }

        if ([a1 containsObject:{*(*(&v10 + 1) + 8 * i), v10}])
        {
          return 0;
        }
      }

      v6 = [a2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return v4;
}

uint64_t __getTypeAccessMutex_block_invoke()
{
  result = FigReentrantMutexCreate();
  getTypeAccessMutex_sTypeAccessMutex = result;
  return result;
}

void avplayeritem_figassetNotificationCallback(uint64_t a1, void *a2, const void *a3, uint64_t a4, const __CFDictionary *a5)
{
  v8 = objc_autoreleasePoolPush();
  v9 = [a2 _copyStateDispatchQueue];
  if (!CFEqual(a3, *MEMORY[0x1E6970EB8]))
  {
    goto LABEL_13;
  }

  CFDictionaryGetValue(a5, *MEMORY[0x1E6971160]);
  v10 = FigCFEqual();
  if (v10)
  {
    [a2 _markAsReadyForInspectionOfDuration];
LABEL_4:
    v11 = 0;
    v12 = 0;
    goto LABEL_5;
  }

  if (FigCFEqual() && [objc_msgSend(a2 "asset")])
  {
    [a2 _markAsReadyForInspectionOfTracks];
    v12 = 0;
    v11 = 1;
  }

  else
  {
    if (!FigCFEqual())
    {
      goto LABEL_4;
    }

    [a2 _markFigAssetAsReadyForInspectionOfMediaSelectionOptions];
    v11 = 0;
    v12 = 1;
  }

LABEL_5:
  if (v10)
  {
    v13 = 1;
  }

  else
  {
    v13 = v11;
  }

  if ((v13 | v12) != 1 || v9 == 0)
  {
LABEL_13:
    if (!v9)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v15 = [a2 _player];
  v16 = v15;
  if (v11)
  {
    v17 = [a2 _tracks];
    if (!v16)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v17 = 0;
  if (v15)
  {
LABEL_24:
    CFRetain(v16);
  }

LABEL_25:
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __avplayeritem_figassetNotificationCallback_block_invoke;
  v18[3] = &unk_1E74633A8;
  v19 = v10 != 0;
  v20 = v11;
  v18[4] = a2;
  v18[5] = v17;
  v18[6] = v16;
  v21 = v12;
  dispatch_async(v9, v18);
LABEL_26:
  dispatch_release(v9);
LABEL_27:
  objc_autoreleasePoolPop(v8);
}

void AVSerializeOnQueueAsyncIfNecessary(NSObject *a1, void *a2)
{
  if (dispatch_get_current_queue() == a1 || a1 == MEMORY[0x1E69E96A0] && [MEMORY[0x1E696AF00] isMainThread])
  {
    v4 = a2[2];

    v4(a2);
  }

  else
  {

    dispatch_async(a1, a2);
  }
}

void *AVLayerTransformForPlacement@<X0>(void *result@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v10 = MEMORY[0x1E69792E8];
  v11 = *(MEMORY[0x1E69792E8] + 80);
  *(a3 + 64) = *(MEMORY[0x1E69792E8] + 64);
  *(a3 + 80) = v11;
  v12 = v10[7];
  *(a3 + 96) = v10[6];
  *(a3 + 112) = v12;
  v13 = v10[1];
  *a3 = *v10;
  *(a3 + 16) = v13;
  v14 = v10[3];
  *(a3 + 32) = v10[2];
  *(a3 + 48) = v14;
  v15 = *(MEMORY[0x1E695F060] + 8);
  if (a4 != *MEMORY[0x1E695F060] || a5 != v15)
  {
    v19 = result;
    if (!a2 || (a6 == *MEMORY[0x1E695F060] ? (v20 = a7 == v15) : (v20 = 0), !v20))
    {
      result = [result isEqualToString:@"AVLayerVideoGravityResize"];
      if (result)
      {
        v21 = a6 / a4;
        v22 = a7 / a5;
      }

      else
      {
        result = [v19 isEqualToString:@"AVLayerVideoGravityResizeAspectFill"];
        v23 = fmin(a6 / a4, a7 / a5);
        v22 = fmax(a6 / a4, a7 / a5);
        if (result)
        {
          v21 = v22;
        }

        else
        {
          v21 = v23;
        }

        if (!result)
        {
          v22 = v23;
        }
      }

      *a3 = v21;
      *(a3 + 40) = v22;
    }
  }

  return result;
}

double getVideoPresentationBounds(void *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  memset(&v14, 0, sizeof(v14));
  AVLayerTransformForPlacement(a1, 0, &v14, a2, a3, a6, a7);
  v12 = v14;
  memset(&v13, 0, sizeof(v13));
  CATransform3DGetAffineTransform(&v13, &v12);
  return a4 + (a6 - vmlaq_n_f64(vmulq_n_f64(*&v13.c, a3), *&v13.a, a2).f64[0]) * 0.5;
}

void sub_196069A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196069C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196069D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void mediatedPixelBufferAttributesChanged(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

  objc_autoreleasePoolPop(v3);
}

void sub_196069EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void AVEnsureNotOnMainThread(void *a1)
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    global_queue = dispatch_get_global_queue(0, 0);

    dispatch_async(global_queue, a1);
  }

  else
  {
    v3 = a1[2];

    v3(a1);
  }
}

uint64_t AVStringForOSType(unsigned int a1)
{
  v1 = bswap32(a1);
  v2 = 3;
  if (HIBYTE(a1))
  {
    v2 = 4;
  }

  v3 = v2 - (a1 < 0x10000) - (a1 < 0x100) - (a1 == 0);
  v6 = v1;
  __strncpy_chk();
  v5[v3] = 0;
  return [MEMORY[0x1E696AEC0] stringWithCString:v5 encoding:30];
}

uint64_t AVOSTypeForString(void *a1)
{
  v5 = 0;
  v2 = [a1 length];
  if (v2 >= 4)
  {
    v3 = 4;
  }

  else
  {
    v3 = v2;
  }

  [a1 getBytes:&v5 - v3 + 4 maxLength:0 usedLength:v3 encoding:0 options:? range:? remainingRange:?];
  return bswap32(v5);
}

void AVRunLoopConditionSignal(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [a1 setSignaled:1];

  objc_autoreleasePoolPop(v2);
}

void sub_19606A620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19606A754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19606AA60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_19606AB54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *AVPlaybackCoordinatorFigSuspensionReasonForAVFReason(void *result)
{
  if (result)
  {
    v1 = result;
    if ([result isEqualToString:@"AVCoordinatedPlaybackSuspensionReasonAudioSessionInterrupted"])
    {
      v2 = MEMORY[0x1E69632F0];
      return *v2;
    }

    if ([v1 isEqualToString:@"AVCoordinatedPlaybackSuspensionReasonStallRecovery"])
    {
      v2 = MEMORY[0x1E6963328];
      return *v2;
    }

    if ([v1 isEqualToString:@"AVCoordinatedPlaybackSuspensionReasonPlayingInterstitial"])
    {
      v2 = MEMORY[0x1E6963310];
      return *v2;
    }

    if ([v1 isEqualToString:@"AVCoordinatedPlaybackSuspensionReasonUserActionRequired"])
    {
      v2 = MEMORY[0x1E6963330];
      return *v2;
    }

    if ([v1 isEqualToString:@"AVCoordinatedPlaybackSuspensionReasonCoordinatedPlaybackNotPossible"])
    {
      v2 = MEMORY[0x1E6963308];
      return *v2;
    }

    if ([v1 isEqualToString:@"AVCoordinatedPlaybackSuspensionReasonUserIsChangingCurrentTime"])
    {
      v2 = MEMORY[0x1E6963300];
      return *v2;
    }

    if ([v1 isEqualToString:@"AVCoordinatedPlaybackSuspensionReasonBackgroundTransition"])
    {
      return *MEMORY[0x1E69632F8];
    }

    else
    {
      return v1;
    }
  }

  return result;
}

void handleAndReflectFigAssetNotification(uint64_t a1, void *a2, const void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  if (CFEqual(a3, *MEMORY[0x1E6970EC8]) || CFEqual(a3, *MEMORY[0x1E6970ED0]))
  {
    if (dword_1ED5AC2D8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [a2 _loadingMutex];
    FigSimpleMutexLock();
    v7 = [a2 _loadingBatches];
    v8 = [MEMORY[0x1E695DEC8] arrayWithArray:v7];
    [v7 removeAllObjects];
    FigSimpleMutexUnlock();
    [a2 _invokeCompletionHandlerForLoadingBatches:v8];
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  objc_autoreleasePoolPop(v5);
}

void figLoaderNotificationHandler(uint64_t a1, void *a2, const void *a3, uint64_t a4, void *a5)
{
  v8 = objc_autoreleasePoolPush();
  if (CFEqual(a3, *MEMORY[0x1E6970EA8]))
  {
    v9 = MEMORY[0x1E696AD80];
    v10 = @"AVURLAssetDownloadCompleteSuccessNotification";
LABEL_3:
    v11 = a2;
    v12 = 0;
LABEL_17:
    v16 = [v9 notificationWithName:v10 object:v11 userInfo:v12];
    v17 = MEMORY[0x1E696AD88];
LABEL_18:
    [objc_msgSend(v17 "defaultCenter")];
    goto LABEL_19;
  }

  if (CFEqual(a3, *MEMORY[0x1E6970EA0]))
  {
    v13 = [a2 _errorForFigNotificationPayload:a5 key:*MEMORY[0x1E6971168]];
    v14 = MEMORY[0x1E696AD80];
    if (v13)
    {
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObject:v13 forKey:@"AVURLAssetDownloadCompleteNotificationErrorKey"];
    }

    else
    {
      v12 = 0;
    }

    v10 = @"AVURLAssetDownloadCompleteFailedNotification";
LABEL_16:
    v9 = v14;
    v11 = a2;
    goto LABEL_17;
  }

  if (CFEqual(a3, *MEMORY[0x1E6970EC8]))
  {
    v15 = AVLocalizedError(@"AVFoundationErrorDomain", -11819, 0);
    v14 = MEMORY[0x1E696AD80];
    if (v15)
    {
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObject:v15 forKey:@"AVAssetMediaServicesWereResetErrorKey"];
    }

    else
    {
      v12 = 0;
    }

    v10 = @"AVAssetMediaServicesWereResetNotification";
    goto LABEL_16;
  }

  if (CFEqual(a3, *MEMORY[0x1E6970ED0]))
  {
    AVMediaStatePurgePostMediaStateWasPurgedNotificationForObject(a2, [a5 objectForKey:*MEMORY[0x1E6971470]]);
    goto LABEL_19;
  }

  if (CFEqual(a3, *MEMORY[0x1E6970EC0]))
  {
    v18 = [a5 objectForKey:*MEMORY[0x1E6971160]];
    if ([v18 isEqualToString:*MEMORY[0x1E6973820]])
    {
      if ([objc_opt_class() expectsPropertyRevisedNotifications])
      {
        v19 = [MEMORY[0x1E696AD80] notificationWithName:@"AVAssetDurationDidChangeNotification" object:a2 userInfo:0];
        [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
        if ([a2 _needsLegacyChangeNotifications])
        {
          v20 = MEMORY[0x1E696AD80];
          v21 = &AVFragmentedMovieDurationDidChangeNotification;
LABEL_27:
          v16 = [v20 notificationWithName:*v21 object:a2 userInfo:0];
          v17 = MEMORY[0x1E696AD88];
          goto LABEL_18;
        }
      }
    }

    else
    {
      if (([v18 isEqualToString:*MEMORY[0x1E69711A8]] & 1) != 0 || objc_msgSend(v18, "isEqualToString:", *MEMORY[0x1E6973810]))
      {
        v9 = MEMORY[0x1E696AD80];
        v10 = @"AVAssetChapterMetadataGroupsDidChangeNotification";
        goto LABEL_3;
      }

      if ([v18 isEqualToString:*MEMORY[0x1E6973838]])
      {
        v9 = MEMORY[0x1E696AD80];
        v10 = @"AVAssetMediaSelectionGroupsDidChangeNotification";
        goto LABEL_3;
      }

      if ([v18 isEqualToString:*MEMORY[0x1E69711E0]])
      {
        v22 = [MEMORY[0x1E696AD80] notificationWithName:@"AVAssetWasDefragmentedNotification" object:a2 userInfo:0];
        [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
        if ([a2 _needsLegacyChangeNotifications])
        {
          v20 = MEMORY[0x1E696AD80];
          v21 = &AVFragmentedMovieWasDefragmentedNotification;
          goto LABEL_27;
        }
      }

      else if ([v18 isEqualToString:*MEMORY[0x1E69711C8]])
      {
        v23 = [MEMORY[0x1E696AD80] notificationWithName:@"AVAssetContainsFragmentsDidChangeNotification" object:a2 userInfo:0];
        [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
        if ([a2 _needsLegacyChangeNotifications])
        {
          v20 = MEMORY[0x1E696AD80];
          v21 = &AVFragmentedMovieContainsMovieFragmentsDidChangeNotification;
          goto LABEL_27;
        }
      }
    }
  }

LABEL_19:

  objc_autoreleasePoolPop(v8);
}

dispatch_queue_t __dispatchStaticQueueOnce_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("com.apple.avplayer.static", v0);
  sStaticQueue = result;
  return result;
}

void sub_19606BE40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id __ensureDictionariesOfFigPropertiesForKeys_block_invoke()
{
  v0 = *MEMORY[0x1E69712E0];
  v1 = *MEMORY[0x1E6971258];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6971188], *MEMORY[0x1E69712E0], *MEMORY[0x1E6971268], *MEMORY[0x1E69712D8], *MEMORY[0x1E6971310], *MEMORY[0x1E6971258], @"assetProperty_VorbisCommentMetadata", *MEMORY[0x1E6971248], *MEMORY[0x1E6971170], *MEMORY[0x1E6971230], 0}];
  v3 = *MEMORY[0x1E6971180];
  v4 = *MEMORY[0x1E6971308];
  v5 = *MEMORY[0x1E6971300];
  v6 = *MEMORY[0x1E6971178];
  sFigAssetMediaSelectionProperties = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6971180], *MEMORY[0x1E6971308], *MEMORY[0x1E6973838], *MEMORY[0x1E6971300], *MEMORY[0x1E6971178], @"LocalizedMSODisplayNames", @"CustomMediaSelectionScheme", 0}];
  v50 = *MEMORY[0x1E69738E8];
  sFigAssetTrackMediaSelectionProperties = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E69738A8], *MEMORY[0x1E69738B0], *MEMORY[0x1E69738C8], *MEMORY[0x1E69738A0], *MEMORY[0x1E69738B8], *MEMORY[0x1E69714F0], *MEMORY[0x1E6973878], *MEMORY[0x1E6973880], *MEMORY[0x1E69714E8], *MEMORY[0x1E69714B0], *MEMORY[0x1E69714E0], *MEMORY[0x1E69738E8], *MEMORY[0x1E69714C8], 0}];
  if (AVUseBackwardCompatibleID3MetadataReader())
  {
    v7 = [MEMORY[0x1E695DF70] arrayWithArray:v2];
    [v7 removeObject:v1];
    v46 = v7;
    [v7 addObject:*MEMORY[0x1E6971260]];
  }

  else
  {
    v46 = v2;
  }

  v49 = MEMORY[0x1E695DF20];
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6973820], 0}];
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6971240], 0}];
  v45 = [MEMORY[0x1E695DEC8] arrayWithObject:@"playbackCapabilities"];
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6971250], 0}];
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6973848], 0}];
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6973860], 0}];
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6973868], 0}];
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6973858], 0}];
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v4, 0}];
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E69712D0], 0}];
  v38 = [MEMORY[0x1E695DEC8] array];
  v37 = [MEMORY[0x1E695DEC8] arrayWithObject:v4];
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6973818], 0}];
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6973830], 0}];
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E69711B0], 0}];
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v1, 0}];
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E69711A8], *MEMORY[0x1E6973810], 0}];
  v31 = [MEMORY[0x1E695DEC8] arrayWithObject:@"availableMediaCharacteristicsWithMediaSelectionOptions"];
  v19 = [MEMORY[0x1E695DEC8] arrayWithObject:@"availableMediaCharacteristicsWithMediaSelectionOptions"];
  v30 = [MEMORY[0x1E695DEC8] arrayWithObject:@"availableMediaCharacteristicsWithMediaSelectionOptions"];
  v8 = *MEMORY[0x1E69712C8];
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E69712C8], 0}];
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E69712C0], 0}];
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v3, *MEMORY[0x1E69712A0], 0}];
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v3, v8, v0, 0}];
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v3, v8, v0, 0}];
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v3, v8, v0, 0}];
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E69711A0], 0}];
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E69711B8], 0}];
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E69711F8], 0}];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{v6, 0}];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{v6, 0}];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{v6, 0}];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{v6, 0}];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{v5, 0}];
  v9 = *MEMORY[0x1E6971288];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6971288], 0}];
  v10 = *MEMORY[0x1E6971290];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6971290], 0}];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{v3, v10, v9, 0}];
  v18 = *MEMORY[0x1E6971278];
  [MEMORY[0x1E695DEC8] arrayWithObjects:0];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E69712E8], 0}];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6971218], 0}];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E69712F0], 0}];
  [MEMORY[0x1E695DEC8] array];
  [MEMORY[0x1E695DEC8] array];
  [MEMORY[0x1E695DEC8] array];
  [MEMORY[0x1E695DEC8] array];
  [MEMORY[0x1E695DEC8] array];
  v11 = *MEMORY[0x1E6971228];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6971228], 0}];
  [MEMORY[0x1E695DEC8] array];
  [MEMORY[0x1E695DEC8] array];
  [MEMORY[0x1E695DEC8] array];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{v3, 0}];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{v3, 0}];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{v11, 0}];
  v12 = *MEMORY[0x1E69711E0];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E69711E0], 0}];
  v13 = *MEMORY[0x1E69711C8];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E69711C8], 0}];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{v12, 0}];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{v13, 0}];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6971220], 0}];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6971238], 0}];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E69712A8], 0}];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6971318], 0}];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E69712B0], v9, v10, 0}];
  [MEMORY[0x1E695DEC8] array];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6973828], 0}];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6973808], 0}];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6971298], 0}];
  v14 = *MEMORY[0x1E6971190];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6971190], 0}];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{v14, *MEMORY[0x1E69712B8], 0}];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6973840], 0}];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{v18, 0}];
  sFigAssetPropertiesForKeys = [v49 dictionaryWithObjectsAndKeys:{v48, @"duration", v47, @"variants", v45, @"playbackCapabilities", v27, @"contentKeySpecifiersEligibleForPreloading", v44, @"preferredRate", v43, @"preferredVolume", v42, @"preferredSoundCheckVolumeNormalization", v41, @"preferredTransform", v40, @"naturalSize", v39, @"providesPreciseDurationAndTiming", v38, @"referenceRestrictions", v37, @"tracks", v36, @"creationDate", v35, @"lyrics", v34, @"commonMetadata", v46, @"availableMetadataFormats", v46, @"metadata", v33, @"ID3Metadata", v32, @"availableChapterLocales", v31, @"availableMediaCharacteristicsWithMediaSelectionOptions", v19, @"preferredMediaSelection", v30, @"allMediaSelections", v29, @"hasProtectedContent", v28, @"originalNetworkContentURL", v26, @"playable", v25, @"exportable", v24, @"readable", v23, @"composable", v22, @"compatibleWithSavedPhotosAlbum", v21, @"compatibleWithAirPlayVideo", v20}];
  v15 = MEMORY[0x1E695DF20];
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v50, 0}];
  result = [v15 dictionaryWithObjectsAndKeys:{v16, @"tracks", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:", *MEMORY[0x1E6973908], 0), @"naturalSize", 0}];
  sFigAssetTrackPropertiesForKeys = result;
  return result;
}

uint64_t AVPlayerItemGetFigPlayerSetTimeFlagsForTolerances(CMTime *a1, CMTime *a2)
{
  v6 = *MEMORY[0x1E6960CC0];
  *&time1.value = *MEMORY[0x1E6960CC0];
  v3 = *(MEMORY[0x1E6960CC0] + 16);
  time1.epoch = v3;
  time2 = *a1;
  v4 = 3;
  if (!CMTimeCompare(&time1, &time2))
  {
    *&time1.value = v6;
    time1.epoch = v3;
    time2 = *a2;
    if (CMTimeCompare(&time1, &time2))
    {
      return 3;
    }

    else
    {
      return 5;
    }
  }

  return v4;
}

double AVPlayerItemGetFigPlayerSnapTimesForTimeAndTolerances(CMTime *a1, CMTime *a2, CMTime *a3, CMTime *a4, CMTime *a5)
{
  memset(&v13, 0, sizeof(v13));
  lhs = *a1;
  rhs = *a2;
  CMTimeSubtract(&v13, &lhs, &rhs);
  memset(&lhs, 0, sizeof(lhs));
  rhs = *a1;
  v10 = *a3;
  CMTimeAdd(&lhs, &rhs, &v10);
  if (a4)
  {
    result = *&v13.value;
    *a4 = v13;
  }

  if (a5)
  {
    result = *&lhs.value;
    *a5 = lhs;
  }

  return result;
}

void playerItem_createDefaultProxyTimebase()
{
  timebaseOut = 0;
  v0 = *MEMORY[0x1E695E480];
  HostTimeClock = CMClockGetHostTimeClock();
  if (!CMTimebaseCreateWithSourceClock(v0, HostTimeClock, &timebaseOut))
  {
    CMTimebaseCreateReadOnlyTimebase();
  }

  if (timebaseOut)
  {
    CFRelease(timebaseOut);
  }
}

void sub_19606DD30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19606DF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_19606E054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19606E40C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19606E4F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AVRequireConcreteObject(void *a1, const char *a2, uint64_t a3)
{
  result = objc_opt_class();
  if (result == a3)
  {
    v7 = a1;
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = NSStringFromSelector(a2);
    v11 = objc_opt_class();
    return [v8 raise:v9 format:{@"*** initialization method -%@ cannot be sent to an abstract object of class %@: Create a concrete instance!", v10, NSStringFromClass(v11)}];
  }

  return result;
}

void sub_19606F070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  AVTelemetryIntervalEnd((v8 - 24));
  _Unwind_Resume(a1);
}

void __Block_byref_object_copy__11(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 40), *(a2 + 40), 131);
}

{
  _Block_object_assign((a1 + 40), *(a2 + 40), 135);
}

void __Block_byref_object_copy__15(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 40), *(a2 + 40), 131);
}

{
  _Block_object_assign((a1 + 40), *(a2 + 40), 131);
}

void sub_19606F67C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19606F898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AVPlayerGetFigPlayerTypeForAsset(void *a1, uint64_t a2)
{
  v4 = [a1 statusOfValueForKey:@"streaming" error:0];
  v5 = v4;
  if (a1 && v4 < 2)
  {
    v6 = [MEMORY[0x1E695DEC8] arrayWithObject:@"streaming"];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __AVPlayerGetFigPlayerTypeForAsset_block_invoke;
    v10[3] = &unk_1E7462A98;
    v10[5] = a2;
    v10[6] = v5;
    v10[4] = a1;
    return [a1 loadValuesAsynchronouslyForKeys:v6 completionHandler:v10];
  }

  else
  {
    if (v4 <= 1)
    {
      v5 = [a1 statusOfValueForKey:@"streaming" error:0];
    }

    if (v5 == 2)
    {
      v8 = [a1 _isStreaming];
    }

    else
    {
      v8 = 0;
    }

    v9 = *(a2 + 16);

    return v9(a2, v8);
  }
}

void sub_196070218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  AVTelemetryIntervalEnd((v26 - 88));
  _Unwind_Resume(a1);
}

void handleFigAssetLoadingNotification(uint64_t a1, void *a2, const void *a3, uint64_t a4, uint64_t *a5)
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = objc_autoreleasePoolPush();
  [a2 _loadingMutex];
  if (!CFEqual(a3, *MEMORY[0x1E6970E88]))
  {
LABEL_7:
    a5 = 0;
    goto LABEL_8;
  }

  if (dword_1ED5AC2D8)
  {
    v24 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a5)
  {
    v10 = CFGetTypeID(a5);
    if (v10 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(a5, *MEMORY[0x1E6971130]);
      a5 = &v18;
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __handleFigAssetLoadingNotification_block_invoke;
      v21 = &__block_descriptor_40_e15_v32__0_8Q16_B24l;
      v22 = Value;
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_8:
  FigSimpleMutexLock();
  v12 = [a2 _loadingBatches];
  v13 = v12;
  if (a5)
  {
    [v12 enumerateObjectsUsingBlock:a5];
  }

  v14 = [v13 indexesOfObjectsPassingTest:{&__block_literal_global_541, v16, v17, v18, v19, v20, v21, v22}];
  v15 = [v13 objectsAtIndexes:v14];
  [v13 removeObjectsAtIndexes:v14];
  FigSimpleMutexUnlock();
  [a2 _invokeCompletionHandlerForLoadingBatches:v15];
  objc_autoreleasePoolPop(v8);
}

uint64_t __handleFigAssetLoadingNotification_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  [a2 objectForKey:@"AVAsynchronousLoadingPropertyBatchIDKey"];
  if (FigCFEqual())
  {
    if (dword_1ED5AC2D8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [a2 removeObjectForKey:{@"AVAsynchronousLoadingPropertyBatchIDKey", v9, v10}];
    *a4 = 1;
  }

  [a2 objectForKey:@"AVAsynchronousLoadingTrackPropertyBatchIDKey"];
  result = FigCFEqual();
  if (result)
  {
    if (dword_1ED5AC2D8)
    {
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    result = [a2 removeObjectForKey:{@"AVAsynchronousLoadingTrackPropertyBatchIDKey", v9, v10}];
    *a4 = 1;
  }

  return result;
}

uint64_t __AVPlayerGetFigPlayerTypeForAsset_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  if (v3 <= 1)
  {
    v3 = [v2 statusOfValueForKey:@"streaming" error:0];
  }

  if (v3 == 2)
  {
    [v2 _isStreaming];
  }

  v4 = *(a1[5] + 16);

  return v4();
}

void sub_196070AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196070B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196070C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196070D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196070E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196070F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void avplayeritem_fpItemNotificationCallback(uint64_t a1, void *a2, const void *a3, const void *a4, const void *a5)
{
  v9 = objc_autoreleasePoolPush();
  v10 = [a2 _player];
  if (a3)
  {
    CFRetain(a3);
  }

  if (a5)
  {
    CFRetain(a5);
  }

  if (a4)
  {
    CFRetain(a4);
  }

  v11 = [a2 _copyStateDispatchQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __avplayeritem_fpItemNotificationCallback_block_invoke;
  v12[3] = &unk_1E7463380;
  v12[4] = a2;
  v12[5] = v10;
  v12[6] = v11;
  v12[7] = a3;
  v12[8] = a5;
  v12[9] = a4;
  dispatch_async(v11, v12);
  dispatch_release(v11);
  objc_autoreleasePoolPop(v9);
}

void sub_1960714A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void avplayer_fpNotificationCallback(uint64_t a1, void *a2, const void *a3, uint64_t a4, const void *a5)
{
  v8 = objc_autoreleasePoolPush();
  v9 = [a2 _nameForLogging];
  if (a3)
  {
    CFRetain(a3);
  }

  if (a5)
  {
    CFRetain(a5);
  }

  v10 = *(a2[1] + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __avplayer_fpNotificationCallback_block_invoke;
  v11[3] = &unk_1E7462CF8;
  v11[6] = a3;
  v11[7] = a5;
  v11[4] = a2;
  v11[5] = v9;
  dispatch_async(v10, v11);
  objc_autoreleasePoolPop(v8);
}

void __avplayeritem_figassetNotificationCallback_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 56) == 1)
  {
    v3 = *(a1 + 32);
    v5 = *MEMORY[0x1E6960C70];
    v6 = *(MEMORY[0x1E6960C70] + 16);
    [v3 _informObserversAboutAvailabilityOfDuration:&v5];
  }

  if (*(a1 + 57) == 1)
  {
    [*(a1 + 32) _informObserversAboutAvailabilityOfTracks:*(a1 + 40)];
    if (*(*(*(a1 + 32) + 8) + 1616) == 1)
    {
      [*(a1 + 48) _canOverlapPlaybackConditionsChangedFor:? dueTo:?];
    }
  }

  if (*(a1 + 58) == 1)
  {
    [*(a1 + 32) _informObserversAboutAvailabilityOfCurrentMediaSelection];
  }

  objc_autoreleasePoolPop(v2);
  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_196071BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_0_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return [v7 addListenerWithWeakReference:a3 callback:v6 name:a5 object:a6 flags:0];
}

uint64_t OUTLINED_FUNCTION_0_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, uint64_t a20)
{
  *(v21 - 112) = a19;
  *(v21 - 96) = a20;
  return v20;
}

uint64_t OUTLINED_FUNCTION_0_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{

  return [v25 countByEnumeratingWithState:&a9 objects:&a25 count:16];
}

uint64_t OUTLINED_FUNCTION_0_13()
{

  return FigNotificationCenterAddWeakListener();
}

uint64_t OUTLINED_FUNCTION_0_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{

  return [v59 countByEnumeratingWithState:&a21 objects:&a59 count:16];
}

uint64_t OUTLINED_FUNCTION_0_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return [v12 countByEnumeratingWithState:va objects:v13 - 224 count:16];
}

uint64_t OUTLINED_FUNCTION_0_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{

  return [v24 countByEnumeratingWithState:&a9 objects:&a24 count:16];
}

__n128 OUTLINED_FUNCTION_0_25@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = a1[1].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_0_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{

  return [v18 countByEnumeratingWithState:&a9 objects:&a18 count:16];
}

void __avplayeritem_fpItemNotificationCallback_block_invoke(uint64_t a1)
{
  v216 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  if (!CFEqual(*(a1 + 56), *MEMORY[0x1E6972570]))
  {
    if (CFEqual(*(a1 + 56), *MEMORY[0x1E6972578]))
    {
      [*(a1 + 32) _markAsReadyForBasicInspection];
      [*(a1 + 32) _markAsReadyForInspectionOfDuration];
      [*(a1 + 32) _markAsReadyForInspectionOfPresentationSize];
      v8 = [*(a1 + 64) objectForKey:*MEMORY[0x1E6972698]];
      memset(&valuePtr, 0, sizeof(valuePtr));
      if (v8)
      {
        CMTimeMakeFromDictionary(&valuePtr, v8);
      }

      else
      {
        v15 = *(a1 + 32);
        if (v15)
        {
          [v15 _duration];
        }
      }

      time1 = valuePtr;
      time2 = **&MEMORY[0x1E6960C68];
      if (CMTimeCompare(&time1, &time2))
      {
        time1 = valuePtr;
        time2 = **&MEMORY[0x1E6960C70];
        if (CMTimeCompare(&time1, &time2))
        {
          [*(a1 + 32) willChangeValueForKey:@"duration"];
          v16 = *(a1 + 32);
          v17 = *(*(v16 + 8) + 16);
          v211[0] = MEMORY[0x1E69E9820];
          v211[1] = 3221225472;
          v211[2] = __avplayeritem_fpItemNotificationCallback_block_invoke_2;
          v211[3] = &unk_1E7462FD8;
          v212 = valuePtr;
          v211[4] = v16;
          av_readwrite_dispatch_queue_write(v17, v211);
          [*(a1 + 32) didChangeValueForKey:@"duration"];
        }
      }

      *&time1.value = *MEMORY[0x1E695F060];
      v18 = [*(a1 + 64) objectForKey:*MEMORY[0x1E6972688]];
      if (!v18 || !CGSizeMakeWithDictionaryRepresentation(v18, &time1))
      {
        [*(a1 + 32) _presentationSize];
        time1.value = v19;
        *&time1.timescale = v20;
      }

      [*(a1 + 32) willChangeValueForKey:@"presentationSize"];
      v21 = *(a1 + 32);
      v22 = *(*(v21 + 8) + 16);
      v209[0] = MEMORY[0x1E69E9820];
      v209[1] = 3221225472;
      v209[2] = __avplayeritem_fpItemNotificationCallback_block_invoke_3;
      v209[3] = &unk_1E74625B0;
      v209[4] = v21;
      v210 = *&time1.value;
      av_readwrite_dispatch_queue_write(v22, v209);
      [*(a1 + 40) _noteNewPresentationSizeForPlayerItem:*(a1 + 32)];
      [*(a1 + 32) didChangeValueForKey:@"presentationSize"];
      v23 = [MEMORY[0x1E696AD80] notificationWithName:@"AVPlayerItemPresentationSizeDidChangeNotification" object:*(a1 + 32) userInfo:0];
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      v24 = [*(a1 + 64) objectForKey:*MEMORY[0x1E6972708]];
      if (v24)
      {
        v25 = v24;
        [*(a1 + 32) willChangeValueForKey:@"hasEnabledAudio"];
        v26 = *(a1 + 32);
        v27 = *(*(v26 + 8) + 16);
        v208[0] = MEMORY[0x1E69E9820];
        v208[1] = 3221225472;
        v208[2] = __avplayeritem_fpItemNotificationCallback_block_invoke_4;
        v208[3] = &unk_1E7460DF0;
        v208[4] = v26;
        v208[5] = v25;
        av_readwrite_dispatch_queue_write(v27, v208);
        [*(a1 + 32) didChangeValueForKey:@"hasEnabledAudio"];
      }

      v28 = [*(a1 + 64) objectForKey:*MEMORY[0x1E6972710]];
      if (v28)
      {
        v29 = v28;
        [*(a1 + 32) willChangeValueForKey:@"hasEnabledVideo"];
        v30 = *(a1 + 32);
        v31 = *(*(v30 + 8) + 16);
        v207[0] = MEMORY[0x1E69E9820];
        v207[1] = 3221225472;
        v207[2] = __avplayeritem_fpItemNotificationCallback_block_invoke_5;
        v207[3] = &unk_1E7460DF0;
        v207[4] = v30;
        v207[5] = v29;
        av_readwrite_dispatch_queue_write(v31, v207);
        [*(a1 + 32) didChangeValueForKey:@"hasEnabledVideo"];
      }

      v32 = [*(a1 + 64) objectForKey:*MEMORY[0x1E6972700]];
      if (v32)
      {
        v33 = v32;
        [*(a1 + 32) willChangeValueForKey:@"hasVideo"];
        v34 = *(a1 + 32);
        v35 = *(*(v34 + 8) + 16);
        v206[0] = MEMORY[0x1E69E9820];
        v206[1] = 3221225472;
        v206[2] = __avplayeritem_fpItemNotificationCallback_block_invoke_6;
        v206[3] = &unk_1E7460DF0;
        v206[4] = v34;
        v206[5] = v33;
        av_readwrite_dispatch_queue_write(v35, v206);
        [*(a1 + 32) didChangeValueForKey:@"hasVideo"];
      }

      v36 = [*(a1 + 64) objectForKey:*MEMORY[0x1E6972690]];
      if (!v36)
      {
        v36 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "_isNonForcedSubtitleDisplayEnabled")}];
      }

      [*(a1 + 32) willChangeValueForKey:@"nonForcedSubtitleDisplayEnabled"];
      v37 = *(a1 + 32);
      v38 = *(*(v37 + 8) + 16);
      v205[0] = MEMORY[0x1E69E9820];
      v205[1] = 3221225472;
      v205[2] = __avplayeritem_fpItemNotificationCallback_block_invoke_7;
      v205[3] = &unk_1E7460DF0;
      v205[4] = v37;
      v205[5] = v36;
      av_readwrite_dispatch_queue_write(v38, v205);
      [*(a1 + 40) _noteNewNonForcedSubtitleDisplayEnabledForPlayerItem:*(a1 + 32)];
      [*(a1 + 32) didChangeValueForKey:@"nonForcedSubtitleDisplayEnabled"];
      [*(a1 + 32) _updateEligibilityForDSPBasedEnhancedDialogue:*(a1 + 64)];
      v39 = [MEMORY[0x1E696AD80] notificationWithName:@"AVPlayerItemNonForcedSubtitleDisplayEnabledDidChangeNotification" object:*(a1 + 32) userInfo:0];
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      [*(a1 + 32) _setAssetToAssetWithFigPlaybackItemIfAppropriate];
      [*(a1 + 32) _updateTimebase];
      [*(a1 + 32) _updateCanPlayAndCanStepPropertiesWhenReadyToPlayWithNotificationPayload:*(a1 + 64) updateStatusToReadyToPlay:{objc_msgSend(*(a1 + 32), "status") != 1}];
      [*(a1 + 40) _itemIsReadyToPlay:*(a1 + 32)];
      goto LABEL_51;
    }

    if (CFEqual(*(a1 + 56), *MEMORY[0x1E6972608]))
    {
      [*(a1 + 32) _updateTimebase];
      if (![*(a1 + 32) isEqual:{objc_msgSend(objc_msgSend(*(a1 + 32), "_player"), "currentItem")}])
      {
        goto LABEL_51;
      }

      v9 = [MEMORY[0x1E696AD88] defaultCenter];
      v10 = MEMORY[0x1E696AD80];
      v11 = *(a1 + 32);
      v12 = @"AVPlayerItemTimebaseChangedNotification";
      goto LABEL_16;
    }

    if (CFEqual(*(a1 + 56), *MEMORY[0x1E69724C8]) || CFEqual(*(a1 + 56), *MEMORY[0x1E69724C0]))
    {
      v41 = [*(a1 + 32) _playbackItemNotificationPayloadToError:*(a1 + 64)];
      if (v41)
      {
LABEL_41:
        [*(a1 + 32) _changeStatusToFailedWithError:v41];
        v42 = *(a1 + 32);
LABEL_50:
        [v42 _invokeReadyForEnqueueingHandlers];
        goto LABEL_51;
      }

LABEL_40:
      v41 = AVLocalizedError(@"AVFoundationErrorDomain", -11800, 0);
      goto LABEL_41;
    }

    if (CFEqual(*(a1 + 56), *MEMORY[0x1E69725D0]))
    {
      v49 = *(a1 + 64);
      if (v49)
      {
        v50 = CFGetTypeID(v49);
        if (v50 == CFDictionaryGetTypeID())
        {
          LODWORD(valuePtr.value) = 0;
          FigCFDictionaryGetInt32IfPresent();
        }
      }

      goto LABEL_40;
    }

    if (CFEqual(*(a1 + 56), *MEMORY[0x1E6972540]))
    {
      time1.value = *MEMORY[0x1E6960C70];
      v51 = *(MEMORY[0x1E6960C70] + 12);
      time1.timescale = *(MEMORY[0x1E6960C70] + 8);
      v52 = *(MEMORY[0x1E6960C70] + 16);
      time2.value = time1.value;
      time2.timescale = time1.timescale;
      v53 = [*(a1 + 64) objectForKey:*MEMORY[0x1E69726B0]];
      v54 = [*(a1 + 64) objectForKey:*MEMORY[0x1E6972680]];
      [*(a1 + 32) _markAsReadyForInspectionOfRecommendedTimeOffsetFromLive];
      epoch = v52;
      flags = v51;
      if (v53)
      {
        CMTimeMakeFromDictionary(&valuePtr, v53);
        time1.value = valuePtr.value;
        flags = valuePtr.flags;
        time1.timescale = valuePtr.timescale;
        epoch = valuePtr.epoch;
      }

      if ((flags & 1) == 0)
      {
        v57 = *(a1 + 32);
        if (v57)
        {
          [v57 _recommendedTimeOffsetFromLive];
          flags = valuePtr.flags;
          epoch = valuePtr.epoch;
        }

        else
        {
          epoch = 0;
          flags = 0;
          memset(&valuePtr, 0, sizeof(valuePtr));
        }

        time1.value = valuePtr.value;
        time1.timescale = valuePtr.timescale;
      }

      if (v54)
      {
        CMTimeMakeFromDictionary(&valuePtr, v54);
        time2.value = valuePtr.value;
        v51 = valuePtr.flags;
        time2.timescale = valuePtr.timescale;
        v52 = valuePtr.epoch;
      }

      v63 = *(a1 + 32);
      if ((v51 & 1) == 0)
      {
        if (v63)
        {
          [*(a1 + 32) _configuredTimeOffsetFromLive];
          v51 = valuePtr.flags;
          v52 = valuePtr.epoch;
          v63 = *(a1 + 32);
        }

        else
        {
          v52 = 0;
          v51 = 0;
          memset(&valuePtr, 0, sizeof(valuePtr));
        }

        time2.value = valuePtr.value;
        time2.timescale = valuePtr.timescale;
      }

      [*(*(v63 + 8) + 112) willChangeValueFor:@"recommendedTimeOffsetFromLive" on:?];
      v64 = *(a1 + 32);
      v65 = *(*(v64 + 8) + 16);
      v197[0] = MEMORY[0x1E69E9820];
      v197[1] = 3221225472;
      v197[2] = __avplayeritem_fpItemNotificationCallback_block_invoke_8;
      v197[3] = &unk_1E74632E0;
      v197[4] = v64;
      v197[5] = time1.value;
      timescale = time1.timescale;
      v199 = flags;
      v200 = epoch;
      value = time2.value;
      v202 = time2.timescale;
      v203 = v51;
      v204 = v52;
      av_readwrite_dispatch_queue_write(v65, v197);
      [*(*(*(a1 + 32) + 8) + 112) didChangeValueFor:@"recommendedTimeOffsetFromLive" on:?];
      v9 = [MEMORY[0x1E696AD88] defaultCenter];
      v10 = MEMORY[0x1E696AD80];
      v11 = *(a1 + 32);
      v12 = @"AVPlayerItemRecommendedTimeOffsetFromLiveDidChangeNotification";
      goto LABEL_16;
    }

    if (CFEqual(*(a1 + 56), *MEMORY[0x1E69725E0]))
    {
      v58 = @"playbackLikelyToKeepUp";
      [*(a1 + 32) willChangeValueForKey:@"playbackLikelyToKeepUp"];
      v59 = *(a1 + 32);
      v60 = *(*(v59 + 8) + 16);
      v196[0] = MEMORY[0x1E69E9820];
      v196[1] = 3221225472;
      v196[2] = __avplayeritem_fpItemNotificationCallback_block_invoke_9;
      v196[3] = &unk_1E7460C00;
      v196[4] = v59;
      v61 = v196;
LABEL_87:
      av_readwrite_dispatch_queue_write(v60, v61);
      v68 = *(a1 + 32);
      v69 = v58;
      goto LABEL_88;
    }

    if (CFEqual(*(a1 + 56), *MEMORY[0x1E69725F0]))
    {
      v58 = @"playbackLikelyToKeepUp";
      [*(a1 + 32) willChangeValueForKey:@"playbackLikelyToKeepUp"];
      v62 = *(a1 + 32);
      v60 = *(*(v62 + 8) + 16);
      v195[0] = MEMORY[0x1E69E9820];
      v195[1] = 3221225472;
      v195[2] = __avplayeritem_fpItemNotificationCallback_block_invoke_10;
      v195[3] = &unk_1E7460C00;
      v195[4] = v62;
      v61 = v195;
      goto LABEL_87;
    }

    if (CFEqual(*(a1 + 56), *MEMORY[0x1E69725E8]))
    {
      v58 = @"playbackBufferEmpty";
      [*(a1 + 32) willChangeValueForKey:@"playbackBufferEmpty"];
      v66 = *(a1 + 32);
      v60 = *(*(v66 + 8) + 16);
      v194[0] = MEMORY[0x1E69E9820];
      v194[1] = 3221225472;
      v194[2] = __avplayeritem_fpItemNotificationCallback_block_invoke_11;
      v194[3] = &unk_1E7460C00;
      v194[4] = v66;
      v61 = v194;
      goto LABEL_87;
    }

    if (CFEqual(*(a1 + 56), *MEMORY[0x1E69725D8]))
    {
      v58 = @"playbackBufferFull";
      [*(a1 + 32) willChangeValueForKey:@"playbackBufferFull"];
      v67 = *(a1 + 32);
      v60 = *(*(v67 + 8) + 16);
      v193[0] = MEMORY[0x1E69E9820];
      v193[1] = 3221225472;
      v193[2] = __avplayeritem_fpItemNotificationCallback_block_invoke_12;
      v193[3] = &unk_1E7460C00;
      v193[4] = v67;
      v61 = v193;
      goto LABEL_87;
    }

    if (CFEqual(*(a1 + 56), *MEMORY[0x1E6972558]))
    {
      v9 = [MEMORY[0x1E696AD88] defaultCenter];
      v10 = MEMORY[0x1E696AD80];
      v11 = *(a1 + 32);
      v12 = @"AVPlayerItemPlaybackStalledNotification";
LABEL_16:
      v13 = [v10 notificationWithName:v12 object:v11];
      v14 = v9;
LABEL_17:
      [v14 postNotification:v13];
      goto LABEL_51;
    }

    if (CFEqual(*(a1 + 56), *MEMORY[0x1E69725B8]))
    {
      v70 = [*(a1 + 64) objectForKey:*MEMORY[0x1E69726B8]];
      v71 = [*(a1 + 64) objectForKey:*MEMORY[0x1E6972C58]];
      v72 = *(a1 + 32);
      if (v70)
      {
        v73 = [v72 _seekableTimeRangesFromFPSeekableTimeIntervals:v70];
      }

      else
      {
        v73 = [v72 _seekableTimeRanges];
      }

      v83 = v73;
      [*(a1 + 32) willChangeValueForKey:@"seekableTimeRanges"];
      if (v71)
      {
        [*(a1 + 32) willChangeValueForKey:@"seekableTimeRangesLastModifiedTime"];
      }

      v84 = *(a1 + 32);
      v85 = *(*(v84 + 8) + 16);
      v192[0] = MEMORY[0x1E69E9820];
      v192[1] = 3221225472;
      v192[2] = __avplayeritem_fpItemNotificationCallback_block_invoke_13;
      v192[3] = &unk_1E7460E90;
      v192[4] = v84;
      v192[5] = v83;
      v192[6] = v71;
      av_readwrite_dispatch_queue_write(v85, v192);
      [*(a1 + 32) didChangeValueForKey:@"seekableTimeRanges"];
      if (!v71)
      {
        goto LABEL_51;
      }

      v68 = *(a1 + 32);
      v69 = @"seekableTimeRangesLastModifiedTime";
LABEL_88:
      [v68 didChangeValueForKey:v69];
      goto LABEL_51;
    }

    if (CFEqual(*(a1 + 56), *MEMORY[0x1E6972550]))
    {
      v74 = [*(a1 + 64) objectForKey:*MEMORY[0x1E6972660]];
      v75 = [v74 isEqual:*MEMORY[0x1E6972420]];
      if ([*(a1 + 32) isPlaybackBufferFull] && (v75 & 1) == 0)
      {
        [*(a1 + 32) willChangeValueForKey:@"playbackBufferFull"];
        v76 = *(a1 + 32);
        v77 = *(*(v76 + 8) + 16);
        v191[0] = MEMORY[0x1E69E9820];
        v191[1] = 3221225472;
        v191[2] = __avplayeritem_fpItemNotificationCallback_block_invoke_14;
        v191[3] = &unk_1E7460C00;
        v191[4] = v76;
        av_readwrite_dispatch_queue_write(v77, v191);
        [*(a1 + 32) didChangeValueForKey:@"playbackBufferFull"];
      }

      if ([*(a1 + 32) isPlaybackBufferEmpty])
      {
        [*(a1 + 32) willChangeValueForKey:@"playbackBufferEmpty"];
        v78 = *(a1 + 32);
        v79 = *(*(v78 + 8) + 16);
        v190[0] = MEMORY[0x1E69E9820];
        v190[1] = 3221225472;
        v190[2] = __avplayeritem_fpItemNotificationCallback_block_invoke_15;
        v190[3] = &unk_1E7460C00;
        v190[4] = v78;
        av_readwrite_dispatch_queue_write(v79, v190);
        [*(a1 + 32) didChangeValueForKey:@"playbackBufferEmpty"];
      }

      v80 = [*(a1 + 64) objectForKey:*MEMORY[0x1E69726A8]];
      v81 = *(a1 + 32);
      if (v80)
      {
        v82 = [v81 _loadedTimeRangesFromFPPlaybableTimeIntervals:?];
      }

      else
      {
        v82 = [v81 _loadedTimeRanges];
      }

      v96 = v82;
      v97 = @"loadedTimeRanges";
      [*(a1 + 32) willChangeValueForKey:@"loadedTimeRanges"];
      v98 = *(a1 + 32);
      v99 = *(*(v98 + 8) + 16);
      v189[0] = MEMORY[0x1E69E9820];
      v189[1] = 3221225472;
      v189[2] = __avplayeritem_fpItemNotificationCallback_block_invoke_16;
      v189[3] = &unk_1E7460DF0;
      v189[4] = v98;
      v189[5] = v96;
      v100 = v189;
LABEL_116:
      av_readwrite_dispatch_queue_write(v99, v100);
      v68 = *(a1 + 32);
      v69 = v97;
      goto LABEL_88;
    }

    if (CFEqual(*(a1 + 56), *MEMORY[0x1E69724A8]))
    {
      *&valuePtr.value = *MEMORY[0x1E695F060];
      v86 = [*(a1 + 64) objectForKey:*MEMORY[0x1E6972688]];
      if (!v86 || !CGSizeMakeWithDictionaryRepresentation(v86, &valuePtr))
      {
        [*(a1 + 32) _presentationSize];
        valuePtr.value = v87;
        *&valuePtr.timescale = v88;
      }

      [*(a1 + 32) _markAsReadyForInspectionOfPresentationSize];
      [*(a1 + 32) willChangeValueForKey:@"presentationSize"];
      v89 = *(a1 + 32);
      v90 = *(*(v89 + 8) + 16);
      v187[0] = MEMORY[0x1E69E9820];
      v187[1] = 3221225472;
      v187[2] = __avplayeritem_fpItemNotificationCallback_block_invoke_17;
      v187[3] = &unk_1E74625B0;
      v187[4] = v89;
      v188 = *&valuePtr.value;
      av_readwrite_dispatch_queue_write(v90, v187);
      [*(a1 + 40) _noteNewPresentationSizeForPlayerItem:*(a1 + 32)];
      [*(a1 + 32) didChangeValueForKey:@"presentationSize"];
      v91 = MEMORY[0x1E696AD80];
      v92 = *(a1 + 32);
      v93 = @"AVPlayerItemPresentationSizeDidChangeNotification";
      goto LABEL_112;
    }

    if (CFEqual(*(a1 + 56), *MEMORY[0x1E6972610]))
    {
      [*(a1 + 32) _markAsReadyForInspectionOfTracks];
      if ([*(*(*(a1 + 32) + 8) + 120) _isStreaming] && +[AVPlayerItem _forStreamingItemsVendAssetWithFigPlaybackItem](AVPlayerItem, "_forStreamingItemsVendAssetWithFigPlaybackItem"))
      {
        [*(a1 + 32) _markAssetWithFigPlaybackItemAsNeedingNewTracks];
      }

      v101 = [*(a1 + 64) objectForKey:*MEMORY[0x1E69726E0]];
      v102 = [*(a1 + 64) objectForKey:*MEMORY[0x1E69726C8]];
      v103 = [*(a1 + 64) objectForKey:*MEMORY[0x1E69729F8]];
      if (v103)
      {
        v104 = [v103 BOOLValue];
      }

      else
      {
        v104 = 0;
      }

      dispatch_retain(*(a1 + 48));
      v106 = *(a1 + 32);
      v107 = *(*(v106 + 8) + 40);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __avplayeritem_fpItemNotificationCallback_block_invoke_18;
      block[3] = &unk_1E7463358;
      block[4] = v101;
      block[5] = v106;
      v186 = v104;
      v108 = *(a1 + 40);
      block[6] = *(a1 + 48);
      block[7] = v102;
      block[8] = v108;
      v109 = block;
      goto LABEL_131;
    }

    if (CFEqual(*(a1 + 56), *MEMORY[0x1E69724B8]))
    {
      [*(a1 + 32) _markAsReadyForInspectionOfDuration];
      if ([*(*(*(a1 + 32) + 8) + 120) _isStreaming] && !+[AVPlayerItem _forStreamingItemsVendAssetWithFigPlaybackItem](AVPlayerItem, "_forStreamingItemsVendAssetWithFigPlaybackItem"))
      {
        [*(a1 + 32) _markAsNeedingNewAssetWithFigPlaybackItem];
      }

      memset(&valuePtr, 0, sizeof(valuePtr));
      v105 = [*(a1 + 64) objectForKey:*MEMORY[0x1E6972698]];
      if (v105)
      {
        CMTimeMakeFromDictionary(&valuePtr, v105);
      }

      else
      {
        v111 = *(a1 + 32);
        if (v111)
        {
          [v111 _duration];
        }

        else
        {
          memset(&time1, 0, sizeof(time1));
        }

        valuePtr = time1;
      }

      v58 = @"duration";
      [*(a1 + 32) willChangeValueForKey:@"duration"];
      v115 = *(a1 + 32);
      v60 = *(*(v115 + 8) + 16);
      v183[0] = MEMORY[0x1E69E9820];
      v183[1] = 3221225472;
      v183[2] = __avplayeritem_fpItemNotificationCallback_block_invoke_21;
      v183[3] = &unk_1E7462FD8;
      v184 = valuePtr;
      v183[4] = v115;
      v61 = v183;
      goto LABEL_87;
    }

    if (CFEqual(*(a1 + 56), *MEMORY[0x1E6972498]))
    {
      v110 = [MEMORY[0x1E696AD88] defaultCenter];
      [v110 postNotification:{objc_msgSend(MEMORY[0x1E696AD80], "notificationWithName:object:", @"AVPlayerItemDidPlayToEndTimeNotification", *(a1 + 32))}];
      if ([*(a1 + 40) _shouldLogPerformanceData] && objc_msgSend(*(a1 + 40), "actionAtItemEnd"))
      {
        [*(a1 + 40) _logPerformanceDataForCurrentItem];
      }

      goto LABEL_51;
    }

    if (CFEqual(*(a1 + 56), *MEMORY[0x1E69724D0]))
    {
      v112 = [*(a1 + 32) _playbackItemNotificationPayloadToError:*(a1 + 64)];
      if ([*(a1 + 40) _shouldLogPerformanceData] && objc_msgSend(*(a1 + 40), "actionAtItemEnd"))
      {
        [*(a1 + 40) _logPerformanceDataForCurrentItem];
      }

      v113 = MEMORY[0x1E696AD80];
      v114 = *(a1 + 32);
      if (v112)
      {
        v94 = [MEMORY[0x1E695DF20] dictionaryWithObject:v112 forKey:@"AVPlayerItemFailedToPlayToEndTimeErrorKey"];
      }

      else
      {
        v94 = 0;
      }

      v93 = @"AVPlayerItemFailedToPlayToEndTimeNotification";
      v91 = v113;
      v92 = v114;
      goto LABEL_113;
    }

    if (CFEqual(*(a1 + 56), *MEMORY[0x1E69724D8]))
    {
      v116 = *(a1 + 32);
      v117 = *(*(v116 + 8) + 16);
      v182[0] = MEMORY[0x1E69E9820];
      v182[1] = 3221225472;
      v182[2] = __avplayeritem_fpItemNotificationCallback_block_invoke_22;
      v182[3] = &unk_1E7460C00;
      v182[4] = v116;
      v118 = v182;
LABEL_153:
      av_readwrite_dispatch_queue_write(v117, v118);
      v91 = MEMORY[0x1E696AD80];
      v92 = *(a1 + 32);
      v93 = @"AVPlayerItemHasEnqueuedVideoFrameDidChangeNotification";
      goto LABEL_112;
    }

    if (CFEqual(*(a1 + 56), *MEMORY[0x1E69724A0]))
    {
      v119 = *(a1 + 32);
      v117 = *(*(v119 + 8) + 16);
      v181[0] = MEMORY[0x1E69E9820];
      v181[1] = 3221225472;
      v181[2] = __avplayeritem_fpItemNotificationCallback_block_invoke_23;
      v181[3] = &unk_1E7460C00;
      v181[4] = v119;
      v118 = v181;
      goto LABEL_153;
    }

    if (!CFEqual(*(a1 + 56), *MEMORY[0x1E6972600]))
    {
      if (CFEqual(*(a1 + 56), *MEMORY[0x1E6972530]))
      {
        v91 = MEMORY[0x1E696AD80];
        v92 = *(a1 + 32);
        v93 = @"AVPlayerItemNewAccessLogEntry";
        goto LABEL_112;
      }

      if (CFEqual(*(a1 + 56), *MEMORY[0x1E6972538]))
      {
        v91 = MEMORY[0x1E696AD80];
        v92 = *(a1 + 32);
        v93 = @"AVPlayerItemNewErrorLogEntry";
        goto LABEL_112;
      }

      if (CFEqual(*(a1 + 56), *MEMORY[0x1E69725A8]))
      {
        v121 = [*(a1 + 32) _timeJumpedNotificationIncludesExtendedDiagnosticPayload];
        v122 = [*(a1 + 64) objectForKey:*MEMORY[0x1E6972650]];
        v123 = v122;
        if ((v121 & 1) != 0 || v122)
        {
          v124 = [MEMORY[0x1E695DF90] dictionary];
          if (v123)
          {
            v125 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v123];
            if (v125)
            {
              v126 = [objc_msgSend(*(a1 + 32) "_playbackCoordinator")];
              if (v126)
              {
                [v124 setObject:v126 forKey:@"AVPlayerItemTimeJumpedOriginatingParticipantKey"];
              }
            }
          }

          if (v121)
          {
            [v124 setObject:AVPlayerItemAVFTimeJumpReasonForFigReason(objc_msgSend(objc_msgSend(*(a1 + 64) forKey:{"objectForKey:", *MEMORY[0x1E6972788]), "integerValue")), @"AVPlayerItemTimeJumpedReasonKey"}];
          }

          v127 = [MEMORY[0x1E696AD80] notificationWithName:@"AVPlayerItemTimeJumpedNotification" object:*(a1 + 32) userInfo:v124];
          [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
        }

        v128 = *(a1 + 64);
        if (!v128)
        {
          goto LABEL_51;
        }

        v129 = CFGetTypeID(v128);
        if (v129 != CFDictionaryGetTypeID())
        {
          goto LABEL_51;
        }

        v130 = CFDictionaryGetValue(*(a1 + 64), *MEMORY[0x1E6972780]);
        if (!v130)
        {
          goto LABEL_51;
        }

        v131 = v130;
        v132 = CFGetTypeID(v130);
        if (v132 != CFNumberGetTypeID())
        {
          goto LABEL_51;
        }

        LODWORD(valuePtr.value) = 0;
        CFNumberGetValue(v131, kCFNumberSInt32Type, &valuePtr);
        v133 = *(a1 + 32);
        value_low = LODWORD(valuePtr.value);
        v135 = 1;
      }

      else
      {
        if (!CFEqual(*(a1 + 56), *MEMORY[0x1E69725B0]))
        {
          if (CFEqual(*(a1 + 56), *MEMORY[0x1E69724F8]))
          {
            [*(a1 + 40) _setFigPlaybackItemToMakeCurrent:*(a1 + 72)];
            v91 = MEMORY[0x1E696AD80];
            v92 = *(a1 + 32);
            v93 = @"AVPlayerItemBecameCurrentNotification";
            goto LABEL_112;
          }

          if (CFEqual(*(a1 + 56), *MEMORY[0x1E6972500]))
          {
            v91 = MEMORY[0x1E696AD80];
            v92 = *(a1 + 32);
            v93 = @"AVPlayerItemStoppedBeingCurrentNotification";
            goto LABEL_112;
          }

          if (CFEqual(*(a1 + 56), *MEMORY[0x1E6972508]))
          {
            [*(a1 + 32) _removeInterstitialEventCollector];
            v91 = MEMORY[0x1E696AD80];
            v92 = *(a1 + 32);
            v93 = @"AVPlayerItemWasRemovedFromPlayQueueNotification";
            goto LABEL_112;
          }

          if (CFEqual(*(a1 + 56), *MEMORY[0x1E6972478]))
          {
            [*(a1 + 32) _updateCanPlayAndCanStepPropertiesWhenReadyToPlayWithNotificationPayload:*(a1 + 64) updateStatusToReadyToPlay:0];
            v141 = [MEMORY[0x1E696AD80] notificationWithName:@"AVPlayerItemVariantChangedNotification" object:*(a1 + 32) userInfo:0];
            [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
            [*(a1 + 40) _canOverlapPlaybackConditionsChangedFor:*(a1 + 32) dueTo:@"AVPlayerItemVariantChangedNotification"];
            goto LABEL_51;
          }

          if (!CFEqual(*(a1 + 56), *MEMORY[0x1E6972488]))
          {
            if (!CFEqual(*(a1 + 56), *MEMORY[0x1E69724B0]))
            {
              if (CFEqual(*(a1 + 56), *MEMORY[0x1E6972590]))
              {
                v147 = *(a1 + 32);
                v107 = *(*(v147 + 8) + 40);
                v167[0] = MEMORY[0x1E69E9820];
                v167[1] = 3221225472;
                v167[2] = __avplayeritem_fpItemNotificationCallback_block_invoke_25;
                v167[3] = &unk_1E7460DF0;
                v148 = *(a1 + 48);
                v167[4] = v147;
                v167[5] = v148;
                v109 = v167;
LABEL_131:
                dispatch_async(v107, v109);
                goto LABEL_51;
              }

              if (CFEqual(*(a1 + 56), *MEMORY[0x1E69724E8]))
              {
                v149 = [*(a1 + 64) objectForKey:*MEMORY[0x1E6972708]];
                if (!v149)
                {
                  v149 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "_hasEnabledAudio")}];
                }

                v97 = @"hasEnabledAudio";
                [*(a1 + 32) willChangeValueForKey:@"hasEnabledAudio"];
                v150 = *(a1 + 32);
                v99 = *(*(v150 + 8) + 16);
                v166[0] = MEMORY[0x1E69E9820];
                v166[1] = 3221225472;
                v166[2] = __avplayeritem_fpItemNotificationCallback_block_invoke_28;
                v166[3] = &unk_1E7460DF0;
                v166[4] = v150;
                v166[5] = v149;
                v100 = v166;
                goto LABEL_116;
              }

              if (CFEqual(*(a1 + 56), *MEMORY[0x1E69724F0]))
              {
                v151 = [*(a1 + 64) objectForKey:*MEMORY[0x1E6972710]];
                if (!v151)
                {
                  v151 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "_hasEnabledVideo")}];
                }

                v97 = @"hasEnabledVideo";
                [*(a1 + 32) willChangeValueForKey:@"hasEnabledVideo"];
                v152 = *(a1 + 32);
                v99 = *(*(v152 + 8) + 16);
                v165[0] = MEMORY[0x1E69E9820];
                v165[1] = 3221225472;
                v165[2] = __avplayeritem_fpItemNotificationCallback_block_invoke_29;
                v165[3] = &unk_1E7460DF0;
                v165[4] = v152;
                v165[5] = v151;
                v100 = v165;
                goto LABEL_116;
              }

              if (CFEqual(*(a1 + 56), *MEMORY[0x1E69724E0]))
              {
                v58 = @"hasVideo";
                [*(a1 + 32) willChangeValueForKey:@"hasVideo"];
                v153 = *(a1 + 32);
                v60 = *(*(v153 + 8) + 16);
                v164[0] = MEMORY[0x1E69E9820];
                v164[1] = 3221225472;
                v164[2] = __avplayeritem_fpItemNotificationCallback_block_invoke_30;
                v164[3] = &unk_1E7460C00;
                v164[4] = v153;
                v61 = v164;
                goto LABEL_87;
              }

              v154 = *MEMORY[0x1E69725C0];
              if (CFEqual(*(a1 + 56), *MEMORY[0x1E69725C0]))
              {
                v155 = [*(a1 + 64) objectForKey:*MEMORY[0x1E69726C0]];
                if (v155)
                {
                  [*(a1 + 32) _setCurrentMediaSelection:{objc_msgSend(*(a1 + 32), "_currentMediaSelectionFromFigSelectedMediaArray:", v155)}];
                }

                [*(a1 + 40) _canOverlapPlaybackConditionsChangedFor:*(a1 + 32) dueTo:v154];
                [*(a1 + 32) _updateEligibilityForDSPBasedEnhancedDialogue:*(a1 + 64)];
                goto LABEL_51;
              }

              if (CFEqual(*(a1 + 56), *MEMORY[0x1E69725C8]))
              {
                v156 = [*(a1 + 64) objectForKey:*MEMORY[0x1E6972760]];
                v157 = MEMORY[0x1E695E110];
                if (v156)
                {
                  v157 = v156;
                }

                v158 = *(a1 + 32);
                v159 = *(*(v158 + 8) + 16);
                v163[0] = MEMORY[0x1E69E9820];
                v163[1] = 3221225472;
                v163[2] = __avplayeritem_fpItemNotificationCallback_block_invoke_31;
                v163[3] = &unk_1E7460DF0;
                v163[4] = v158;
                v163[5] = v157;
                av_readwrite_dispatch_queue_write(v159, v163);
                v91 = MEMORY[0x1E696AD80];
                v92 = *(a1 + 32);
                v93 = @"AVPlayerItemSpatialAudioRenderingDidChangeNotification";
              }

              else
              {
                if (CFEqual(*(a1 + 56), *MEMORY[0x1E6972470]))
                {
                  [*(a1 + 32) _updateAllowedAudioSpatializationFormatsFromFigItem];
                  goto LABEL_51;
                }

                if (CFEqual(*(a1 + 56), *MEMORY[0x1E6972560]))
                {
                  v91 = MEMORY[0x1E696AD80];
                  v92 = *(a1 + 32);
                  v93 = @"AVPlayerItemReachedTimeToPauseBufferingNotification";
                }

                else
                {
                  if (CFEqual(*(a1 + 56), *MEMORY[0x1E6972568]))
                  {
                    v160 = [*(a1 + 64) objectForKey:*MEMORY[0x1E69726F8]];
                    v94 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v160, @"AVPlayerItemTimeToPausePlaybackKey", 0}];
                    v91 = MEMORY[0x1E696AD80];
                    v92 = *(a1 + 32);
                    v93 = @"AVPlayerItemReachedTimeToPausePlaybackNotification";
                    goto LABEL_113;
                  }

                  if (!CFEqual(*(a1 + 56), *MEMORY[0x1E6972548]))
                  {
                    if (!CFEqual(*(a1 + 56), @"OverlappedPlaybackItemDidComplete"))
                    {
                      if (CFEqual(*(a1 + 56), *MEMORY[0x1E6972490]))
                      {
                        [*(a1 + 32) _setCoordinatorIdentifier:{objc_msgSend(*(a1 + 64), "objectForKey:", *MEMORY[0x1E6972658])}];
                      }

                      else if (CFEqual(*(a1 + 56), *MEMORY[0x1E6973050]))
                      {
                        v162 = [*(a1 + 64) objectForKey:*MEMORY[0x1E69734B0]];
                        [*(a1 + 32) _changeStatusToFailedWithError:{AVLocalizedError(@"AVFoundationErrorDomain", -11912, 0)}];
                        AVMediaStatePurgePostMediaStateWasPurgedNotificationForObject(*(a1 + 32), v162);
                      }

                      else if (CFEqual(*(a1 + 56), *MEMORY[0x1E69628A8]))
                      {
                        [*(a1 + 32) _changeStatusToFailedWithError:{AVLocalizedError(@"AVFoundationErrorDomain", -11819, 0)}];
                      }

                      goto LABEL_51;
                    }

                    v161 = [*(a1 + 64) objectForKey:*MEMORY[0x1E6972738]];
                    v94 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v161, @"AVPlayerItemOverlappedPlaybackCompleteReason", 0}];
                    v91 = MEMORY[0x1E696AD80];
                    v92 = *(a1 + 32);
                    v93 = @"AVPlayerItemOverlappedPlaybackDidCompleteNotification";
                    goto LABEL_113;
                  }

                  v91 = MEMORY[0x1E696AD80];
                  v92 = *(a1 + 32);
                  v93 = @"AVPlayerItemOverlappedPlaybackWillBeginNotification";
                }
              }

LABEL_112:
              v94 = 0;
LABEL_113:
              v95 = [v91 notificationWithName:v93 object:v92 userInfo:v94];
              v14 = [MEMORY[0x1E696AD88] defaultCenter];
              v13 = v95;
              goto LABEL_17;
            }

            v142 = [*(a1 + 64) objectForKey:*MEMORY[0x1E6972690]];
            if (!v142)
            {
              v142 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "_isNonForcedSubtitleDisplayEnabled")}];
            }

            [*(a1 + 32) willChangeValueForKey:@"nonForcedSubtitleDisplayEnabled"];
            v143 = *(a1 + 32);
            v144 = *(*(v143 + 8) + 16);
            v168[0] = MEMORY[0x1E69E9820];
            v168[1] = 3221225472;
            v168[2] = __avplayeritem_fpItemNotificationCallback_block_invoke_24;
            v168[3] = &unk_1E7460DF0;
            v168[4] = v143;
            v168[5] = v142;
            av_readwrite_dispatch_queue_write(v144, v168);
            [*(a1 + 40) _noteNewNonForcedSubtitleDisplayEnabledForPlayerItem:*(a1 + 32)];
            [*(a1 + 32) didChangeValueForKey:@"nonForcedSubtitleDisplayEnabled"];
            v145 = [MEMORY[0x1E696AD80] notificationWithName:@"AVPlayerItemNonForcedSubtitleDisplayEnabledDidChangeNotification" object:*(a1 + 32) userInfo:0];
            [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
          }

          v146 = [*(a1 + 64) objectForKey:*MEMORY[0x1E69726C0]];
          if (v146)
          {
            [*(a1 + 32) _setCurrentMediaSelection:{objc_msgSend(*(a1 + 32), "_currentMediaSelectionFromFigSelectedMediaArray:", v146)}];
          }

          goto LABEL_51;
        }

        v136 = *(a1 + 64);
        if (!v136)
        {
          goto LABEL_51;
        }

        v137 = CFGetTypeID(v136);
        if (v137 != CFDictionaryGetTypeID())
        {
          goto LABEL_51;
        }

        v138 = CFDictionaryGetValue(*(a1 + 64), *MEMORY[0x1E6972780]);
        if (!v138)
        {
          goto LABEL_51;
        }

        v139 = v138;
        v140 = CFGetTypeID(v138);
        if (v140 != CFNumberGetTypeID())
        {
          goto LABEL_51;
        }

        LODWORD(valuePtr.value) = 0;
        CFNumberGetValue(v139, kCFNumberSInt32Type, &valuePtr);
        v133 = *(a1 + 32);
        value_low = LODWORD(valuePtr.value);
        v135 = 0;
      }

      [v133 _unregisterInvokeAndReleasePendingSeekCompletionHandlerForSeekID:value_low finished:v135];
      goto LABEL_51;
    }

    v120 = *(a1 + 32);
    if (v120)
    {
      [v120 loopTimeRange];
      v92 = *(a1 + 32);
      if (BYTE12(v178))
      {
        if (v92)
        {
          [*(a1 + 32) loopTimeRange];
          v92 = *(a1 + 32);
          if (BYTE4(v177))
          {
            if (!v92)
            {
              v173 = 0u;
              v174 = 0u;
              v172 = 0u;
              goto LABEL_187;
            }

            [*(a1 + 32) loopTimeRange];
            v92 = *(a1 + 32);
            if (!*(&v174 + 1))
            {
              if (v92)
              {
                [*(a1 + 32) loopTimeRange];
                if ((*(&v170 + 1) & 0x8000000000000000) == 0)
                {
                  goto LABEL_51;
                }

                v92 = *(a1 + 32);
                goto LABEL_170;
              }

LABEL_187:
              v170 = 0u;
              v171 = 0u;
              v169 = 0u;
              goto LABEL_51;
            }
          }
        }

        else
        {
          v176 = 0u;
          v177 = 0u;
          v175 = 0u;
        }
      }
    }

    else
    {
      v92 = 0;
      v179 = 0u;
      v180 = 0u;
      v178 = 0u;
    }

LABEL_170:
    v91 = MEMORY[0x1E696AD80];
    v93 = @"AVPlayerItemTimeJumpedNotification";
    goto LABEL_112;
  }

  valuePtr = **&MEMORY[0x1E6960C70];
  v3 = *(a1 + 64);
  if (!v3 || (v4 = CFGetTypeID(v3), v4 != CFDictionaryGetTypeID()))
  {
LABEL_46:
    v44 = *(a1 + 32);
    time1 = valuePtr;
    [v44 _respondToBecomingReadyForBasicInspectionWithDuration:&time1];
    goto LABEL_47;
  }

  v5 = CFDictionaryGetValue(*(a1 + 64), *MEMORY[0x1E6972740]);
  if (!v5)
  {
    v40 = [*(a1 + 64) objectForKey:*MEMORY[0x1E6972698]];
    if (v40)
    {
      CMTimeMakeFromDictionary(&valuePtr, v40);
    }

    else
    {
      v43 = *(a1 + 32);
      if (v43)
      {
        [v43 _duration];
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
      }

      valuePtr = time1;
    }

    goto LABEL_46;
  }

  v6 = v5;
  v7 = CFGetTypeID(v5);
  if (v7 == CFArrayGetTypeID())
  {
    if ([v6 containsObject:*MEMORY[0x1E6972958]])
    {
      *(*(*(a1 + 32) + 8) + 1456) = 1;
    }

    if ([v6 containsObject:*MEMORY[0x1E6972878]])
    {
      *(*(*(a1 + 32) + 8) + 1457) = 1;
    }
  }

LABEL_47:
  if ([*(a1 + 32) _isReadyForBasicInspection])
  {
    v42 = *(a1 + 32);
    v45 = v42[1];
    if (*(v45 + 1456) == 1 && *(v45 + 1457) == 1)
    {
      goto LABEL_50;
    }
  }

LABEL_51:
  objc_autoreleasePoolPop(v2);
  v46 = *(a1 + 56);
  if (v46)
  {
    CFRelease(v46);
  }

  v47 = *(a1 + 64);
  if (v47)
  {
    CFRelease(v47);
  }

  v48 = *(a1 + 72);
  if (v48)
  {
    CFRelease(v48);
  }
}

void sub_196074C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __avplayer_fpNotificationCallback_block_invoke(uint64_t a1)
{
  v174[1] = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v2 = [*(a1 + 32) _copyFigPlayer];
  v3 = [*(a1 + 32) _hasCurrentInterstitialEvent];
  v4 = CFEqual(*(a1 + 48), *MEMORY[0x1E6973040]);
  v5 = "%.3f seconds exceeding %.3f";
  v6 = MEMORY[0x1E6973108];
  if (v4)
  {
LABEL_2:
    v7 = [*(a1 + 56) objectForKey:*v6];
    if (v7)
    {
      [v7 floatValue];
    }

    else
    {
      [*(a1 + 32) _rate];
    }

    v19 = v8;
    [*(a1 + 32) rate];
    v21 = v19 != v20;
    if (v4)
    {
      v15 = 0;
      v17 = 0;
      v18 = 0;
      v14 = 0;
      v16 = 0;
      if (v19 == v20)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    v15 = 1;
    goto LABEL_14;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x1E6973070]))
  {
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(*(a1 + 56), "objectForKey:", @"AVController_Volume", @"_AVPlayer_Volume", 0}];
    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    v11 = *(a1 + 32);
    v12 = @"_AVPlayer_VolumeDidChangeNotification";
    v13 = v9;
LABEL_6:
    [v10 postNotificationName:v12 object:v11 userInfo:v13];
LABEL_7:
    v14 = 0;
    v15 = 0;
    v16 = 0;
LABEL_8:
    v17 = 0;
    v18 = 0;
    v19 = 0.0;
    goto LABEL_25;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x1E6973010]))
  {
    v27 = [*(a1 + 56) objectForKey:*MEMORY[0x1E69730F8]];
    if (v27)
    {
      v28 = [v27 BOOLValue];
    }

    else
    {
      v28 = [*(a1 + 32) _isMuted];
    }

    v55 = v28;
    v19 = 0.0;
    if (v28 != [*(a1 + 32) isMuted])
    {
      [*(a1 + 32) willChangeValueForKey:@"muted"];
      v56 = *(a1 + 32);
      v57 = *(*(v56 + 8) + 56);
      v168[0] = MEMORY[0x1E69E9820];
      v168[1] = 3221225472;
      v168[2] = __avplayer_fpNotificationCallback_block_invoke_2;
      v168[3] = &unk_1E7460E40;
      v168[4] = v56;
      v169 = v55;
      av_readwrite_dispatch_queue_write(v57, v168);
      [*(a1 + 32) didChangeValueForKey:@"muted"];
    }

    goto LABEL_62;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x1E6972FD8]))
  {
    v48 = *(a1 + 32);
    if (*(v48[1] + 88) == 1)
    {
      [v48 _logPerformanceDataForPreviousItem];
    }

    v49 = [*(a1 + 56) objectForKey:*MEMORY[0x1E6973140]];
    v50 = *(a1 + 32);
    v51 = v50[1];
    v52 = *(v51 + 792);
    if (v52)
    {
      *(v51 + 792) = 0;
      v50 = *(a1 + 32);
    }

    v16 = [objc_msgSend(v50 "currentItem")];
    if (v16 == v52)
    {
      v65 = [MEMORY[0x1E696AD88] defaultCenter];
      v66 = *(a1 + 32);
      if (v49)
      {
        v67 = *(a1 + 56);
      }

      else
      {
        v173 = @"ReasonForCurrentItemDidChange";
        v174[0] = @"ReasonUnknown";
        v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v174 forKeys:&v173 count:1];
      }

      [v65 postNotificationName:@"AVPlayerCurrentItemDidChangeNotification" object:v66 userInfo:v67];
      goto LABEL_40;
    }

    if (v49 && (([v49 isEqualToString:*MEMORY[0x1E6972E78]] & 1) != 0 || objc_msgSend(v49, "isEqualToString:", *MEMORY[0x1E6972E80])))
    {
      v53 = [MEMORY[0x1E696AD88] defaultCenter];
      v54 = *(a1 + 32);
    }

    else
    {
      [*(a1 + 32) _advanceCurrentItemAccordingToFigPlaybackItem:v52];
      v53 = [MEMORY[0x1E696AD88] defaultCenter];
      v54 = *(a1 + 32);
      if (!v49)
      {
        v171 = @"ReasonForCurrentItemDidChange";
        v172 = @"ReasonUnknown";
        v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v172 forKeys:&v171 count:1];
        goto LABEL_80;
      }
    }

    v68 = *(a1 + 56);
LABEL_80:
    [v53 postNotificationName:@"AVPlayerCurrentItemDidChangeNotification" object:v54 userInfo:v68];
    v14 = 0;
    v15 = 0;
    goto LABEL_8;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x1E6973068]))
  {
    v58 = [*(a1 + 56) objectForKey:*MEMORY[0x1E69734E0]];
    v59 = [MEMORY[0x1E695DF70] array];
    v164 = 0u;
    v165 = 0u;
    v166 = 0u;
    v167 = 0u;
    v60 = [v58 countByEnumeratingWithState:&v164 objects:v170 count:16];
    if (v60)
    {
      v61 = *v165;
      do
      {
        for (i = 0; i != v60; ++i)
        {
          if (*v165 != v61)
          {
            objc_enumerationMutation(v58);
          }

          v63 = *(*(&v164 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v64 = [AVMetadataItem _metadataItemWithFigMetadataDictionary:v63];
            if (v64)
            {
              [v59 addObject:v64];
            }
          }
        }

        v60 = [v58 countByEnumeratingWithState:&v164 objects:v170 count:16];
      }

      while (v60);
    }

    [objc_msgSend(*(a1 + 32) "currentItem")];
    goto LABEL_7;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x1E6973048]))
  {
    goto LABEL_82;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x1E6973050]))
  {
    v70 = [*(a1 + 56) objectForKey:*MEMORY[0x1E69734B0]];
    v71 = AVLocalizedError(@"AVFoundationErrorDomain", -11912, 0);
    [*(a1 + 32) willChangeValueForKey:@"status"];
    [*(a1 + 32) _changeStatusToFailedWithError:v71];
    [*(a1 + 32) didChangeValueForKey:@"status"];
    [*(a1 + 32) cancelPendingPrerolls];
    [objc_msgSend(*(a1 + 32) "currentItem")];
    AVMediaStatePurgePostMediaStateWasPurgedNotificationForObject(*(a1 + 32), v70);
    goto LABEL_7;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x1E69628A8]))
  {
LABEL_82:
    if ([*(a1 + 32) status] != 2)
    {
      v69 = AVLocalizedError(@"AVFoundationErrorDomain", -11819, 0);
      [*(a1 + 32) willChangeValueForKey:@"status"];
      [*(a1 + 32) _changeStatusToFailedWithError:v69];
      [*(a1 + 32) didChangeValueForKey:@"status"];
    }

LABEL_84:
    [*(a1 + 32) cancelPendingPrerolls];
    [objc_msgSend(*(a1 + 32) "currentItem")];
    goto LABEL_7;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x1E6973060]))
  {
    v72 = *(a1 + 56);
    if (v72)
    {
      v73 = CFGetTypeID(v72);
      if (v73 == CFDictionaryGetTypeID())
      {
        LODWORD(BOOLean) = 0;
        FigCFDictionaryGetInt32IfPresent();
      }
    }

    v74 = AVLocalizedError(@"AVFoundationErrorDomain", -11800, 0);
    if ([*(a1 + 32) status] != 2)
    {
      [*(a1 + 32) willChangeValueForKey:@"status"];
      [*(a1 + 32) _changeStatusToFailedWithError:v74];
      [*(a1 + 32) didChangeValueForKey:@"status"];
    }

    goto LABEL_84;
  }

  v75 = *MEMORY[0x1E6972FF8];
  if (CFEqual(*(a1 + 48), *MEMORY[0x1E6972FF8]))
  {
    LOBYTE(BOOLean) = 0;
    if (FigCFDictionaryGetBooleanIfPresent())
    {
      v76 = *(a1 + 32);
      v77 = *(*(v76 + 8) + 56);
      v162[0] = MEMORY[0x1E69E9820];
      v162[1] = 3221225472;
      v162[2] = __avplayer_fpNotificationCallback_block_invoke_3;
      v162[3] = &unk_1E7460E40;
      v162[4] = v76;
      v163 = BOOLean;
      av_readwrite_dispatch_queue_write(v77, v162);
      [*(a1 + 32) _canOverlapPlaybackConditionsChangedFor:0 dueTo:v75];
      [*(a1 + 32) _canPlaySpeedRampChanged];
    }

    goto LABEL_7;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x1E6972FF0]))
  {
    v78 = [*(a1 + 32) _airPlayVideoActive];
    if (v78 != [*(a1 + 32) _isAirPlayVideoActive])
    {
      [*(a1 + 32) willChangeValueForKey:@"airPlayVideoActive"];
      v79 = *(a1 + 32);
      v80 = *(*(v79 + 8) + 56);
      v160[0] = MEMORY[0x1E69E9820];
      v160[1] = 3221225472;
      v160[2] = __avplayer_fpNotificationCallback_block_invoke_4;
      v160[3] = &unk_1E7460E40;
      v160[4] = v79;
      v161 = v78;
      av_readwrite_dispatch_queue_write(v80, v160);
      [*(a1 + 32) didChangeValueForKey:@"airPlayVideoActive"];
    }

    *&BOOLean = 0;
    FigBaseObject = FigPlayerGetFigBaseObject();
    v82 = CMBaseObjectCopyProperty(FigBaseObject, *MEMORY[0x1E69732D8], *MEMORY[0x1E695E480], &BOOLean);
    v83 = BOOLean;
    if (!v82 && BOOLean)
    {
      LOBYTE(v78) = (CFBooleanGetValue(BOOLean) != 0) | v78;
      v83 = BOOLean;
    }

    if (v83)
    {
      CFRelease(v83);
      *&BOOLean = 0;
    }

    if ((v78 & 1) != [*(a1 + 32) isExternalPlaybackActive])
    {
      [*(a1 + 32) willChangeValueForKey:@"externalPlaybackActive"];
      v84 = *(a1 + 32);
      v85 = *(*(v84 + 8) + 56);
      v158[0] = MEMORY[0x1E69E9820];
      v158[1] = 3221225472;
      v158[2] = __avplayer_fpNotificationCallback_block_invoke_5;
      v158[3] = &unk_1E7460E40;
      v158[4] = v84;
      v159 = v78 & 1;
      av_readwrite_dispatch_queue_write(v85, v158);
      [*(a1 + 32) didChangeValueForKey:@"externalPlaybackActive"];
    }

    v86 = [MEMORY[0x1E696AD80] notificationWithName:*MEMORY[0x1E69587D0] object:*(a1 + 32) userInfo:0];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    goto LABEL_7;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x1E6973018]))
  {
    LOBYTE(BOOLean) = 0;
    FigCFDictionaryGetBooleanIfPresent();
    if ([*(a1 + 32) _isPIPModePossible])
    {
      [*(a1 + 32) willChangeValueForKey:@"PIPModePossible"];
      v87 = *(a1 + 32);
      v88 = *(*(v87 + 8) + 56);
      v156[0] = MEMORY[0x1E69E9820];
      v156[1] = 3221225472;
      v156[2] = __avplayer_fpNotificationCallback_block_invoke_6;
      v156[3] = &unk_1E7460E40;
      v156[4] = v87;
      v157 = 0;
      av_readwrite_dispatch_queue_write(v88, v156);
      [*(a1 + 32) didChangeValueForKey:@"PIPModePossible"];
    }

    goto LABEL_7;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x1E6973000]))
  {
    v89 = [*(a1 + 56) objectForKey:*MEMORY[0x1E69730F0]];
    if (([*(a1 + 32) _airPlayVideoActive] & 1) != 0 || objc_msgSend(v89, "BOOLValue"))
    {
      if (([*(a1 + 32) isExternalPlaybackActive] & 1) == 0)
      {
        LOBYTE(v90) = 1;
LABEL_123:
        [*(a1 + 32) willChangeValueForKey:@"externalPlaybackActive"];
        v94 = *(a1 + 32);
        v95 = *(*(v94 + 8) + 56);
        v154[0] = MEMORY[0x1E69E9820];
        v154[1] = 3221225472;
        v154[2] = __avplayer_fpNotificationCallback_block_invoke_7;
        v154[3] = &unk_1E7460E40;
        v154[4] = v94;
        v155 = v90;
        av_readwrite_dispatch_queue_write(v95, v154);
        [*(a1 + 32) didChangeValueForKey:@"externalPlaybackActive"];
      }
    }

    else
    {
      v90 = [*(a1 + 32) _externalPlaybackActive];
      if (v90 != [*(a1 + 32) isExternalPlaybackActive])
      {
        goto LABEL_123;
      }
    }

    v96 = [MEMORY[0x1E696AD80] notificationWithName:*MEMORY[0x1E69587D0] object:*(a1 + 32) userInfo:0];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    goto LABEL_7;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x1E6973030]))
  {
    v91 = *(a1 + 32);
    v92 = *(a1 + 56);
    v93 = 1;
LABEL_127:
    [v91 prerollOperationDidComplete:v93 notificationPayload:v92];
    goto LABEL_7;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x1E6973038]))
  {
    v91 = *(a1 + 32);
    v92 = *(a1 + 56);
    v93 = 0;
    goto LABEL_127;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x1E6972FE8]))
  {
    v97 = [*(a1 + 56) objectForKey:*MEMORY[0x1E69730E0]];
    v98 = *(a1 + 32);
    if (v97)
    {
      v99 = [v98 _extractFPExternalProtectionStatus:?];
    }

    else
    {
      v99 = [v98 _externalProtectionStatusCopiedFromFig];
    }

    v102 = v99;
    v19 = 0.0;
    if ((v99 != 0) != [*(a1 + 32) outputObscuredDueToInsufficientExternalProtection])
    {
      [*(a1 + 32) willChangeValueForKey:@"outputObscuredDueToInsufficientExternalProtection"];
      v103 = *(a1 + 32);
      v104 = *(*(v103 + 8) + 56);
      v152[0] = MEMORY[0x1E69E9820];
      v152[1] = 3221225472;
      v152[2] = __avplayer_fpNotificationCallback_block_invoke_8;
      v152[3] = &unk_1E7462C58;
      v153 = v102 != 0;
      v152[4] = v103;
      v152[5] = v102;
      av_readwrite_dispatch_queue_write(v104, v152);
      [*(a1 + 32) didChangeValueForKey:@"outputObscuredDueToInsufficientExternalProtection"];
    }

    goto LABEL_62;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x1E6972FE0]))
  {
    v100 = [*(a1 + 56) objectForKey:*MEMORY[0x1E69730D8]];
    if (v100)
    {
      v101 = [v100 BOOLValue];
    }

    else
    {
      v101 = [*(a1 + 32) _isDisplayingClosedCaptions];
    }

    v105 = v101;
    v19 = 0.0;
    if (v101 != [*(a1 + 32) isDisplayingClosedCaptions])
    {
      [*(a1 + 32) willChangeValueForKey:@"isDisplayingClosedCaptions"];
      v106 = *(a1 + 32);
      v107 = *(*(v106 + 8) + 56);
      v150[0] = MEMORY[0x1E69E9820];
      v150[1] = 3221225472;
      v150[2] = __avplayer_fpNotificationCallback_block_invoke_9;
      v150[3] = &unk_1E7460E40;
      v150[4] = v106;
      v151 = v105;
      av_readwrite_dispatch_queue_write(v107, v150);
      [*(a1 + 32) didChangeValueForKey:@"isDisplayingClosedCaptions"];
      v108 = [MEMORY[0x1E696AD80] notificationWithName:@"AVPlayerIsDisplayingClosedCaptionsDidChangeNotification" object:*(a1 + 32) userInfo:0];
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    }

    goto LABEL_62;
  }

  if (!CFEqual(*(a1 + 48), *MEMORY[0x1E6973020]))
  {
    v109 = CFEqual(*(a1 + 48), *MEMORY[0x1E6973058]);
    v6 = MEMORY[0x1E6973108];
    v5 = "Aborting parsing due to unsupported interleaving, cache duration %.3f seconds exceeding %.3f" + 65;
    if (v109)
    {
      goto LABEL_2;
    }

    if (CFEqual(*(a1 + 48), *MEMORY[0x1E6973028]))
    {
      v10 = [MEMORY[0x1E696AD88] defaultCenter];
      v11 = *(a1 + 32);
      v12 = @"AVPlayerPlaybackWasInterruptedNotification";
      v13 = 0;
      goto LABEL_6;
    }

    if (CFEqual(*(a1 + 48), *MEMORY[0x1E6972FD0]))
    {
      v110 = [objc_msgSend(*(a1 + 56) objectForKey:{*MEMORY[0x1E69730D0]), "BOOLValue"}];
      v111 = [objc_msgSend(*(a1 + 56) objectForKey:{*MEMORY[0x1E6973118]), "BOOLValue"}];
      if (v110 != [*(a1 + 32) isSilencedDueToConflictWithOtherPlayback])
      {
        [*(a1 + 32) willChangeValueForKey:@"isSilencedDueToConflictWithOtherPlayback"];
        v112 = *(a1 + 32);
        v113 = *(*(v112 + 8) + 56);
        v148[0] = MEMORY[0x1E69E9820];
        v148[1] = 3221225472;
        v148[2] = __avplayer_fpNotificationCallback_block_invoke_10;
        v148[3] = &unk_1E7460E40;
        v148[4] = v112;
        v149 = v110;
        av_readwrite_dispatch_queue_write(v113, v148);
        [*(a1 + 32) didChangeValueForKey:@"isSilencedDueToConflictWithOtherPlayback"];
      }

      v114 = v110 & v111;
      v19 = 0.0;
      if (v114 != [*(a1 + 32) audioOutputSuppressedDueToNonMixableAudioRoute])
      {
        [*(a1 + 32) willChangeValueForKey:@"audioOutputSuppressedDueToNonMixableAudioRoute"];
        v115 = *(a1 + 32);
        v116 = *(*(v115 + 8) + 56);
        v146[0] = MEMORY[0x1E69E9820];
        v146[1] = 3221225472;
        v146[2] = __avplayer_fpNotificationCallback_block_invoke_11;
        v146[3] = &unk_1E7460E40;
        v146[4] = v115;
        v147 = v114;
        av_readwrite_dispatch_queue_write(v116, v146);
        [*(a1 + 32) didChangeValueForKey:@"audioOutputSuppressedDueToNonMixableAudioRoute"];
      }
    }

    else
    {
      v19 = 0.0;
      if (CFEqual(*(a1 + 48), *MEMORY[0x1E6973008]))
      {
        v117 = [*(a1 + 56) objectForKey:*MEMORY[0x1E6973120]];
        v118 = [*(a1 + 32) mxSessionID];
        if (v117 != v118 && ([v117 isEqual:v118] & 1) == 0)
        {
          [*(a1 + 32) willChangeValueForKey:@"mxSessionID"];
          v119 = *(a1 + 32);
          v120 = *(*(v119 + 8) + 56);
          v145[0] = MEMORY[0x1E69E9820];
          v145[1] = 3221225472;
          v145[2] = __avplayer_fpNotificationCallback_block_invoke_12;
          v145[3] = &unk_1E7460DF0;
          v145[4] = v119;
          v145[5] = v117;
          av_readwrite_dispatch_queue_write(v120, v145);
          [*(a1 + 32) didChangeValueForKey:@"mxSessionID"];
        }
      }
    }

LABEL_62:
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    goto LABEL_25;
  }

  v21 = 0;
  v15 = 0;
  v19 = 0.0;
  v5 = "Aborting parsing due to unsupported interleaving, cache duration %.3f seconds exceeding %.3f" + 65;
LABEL_14:
  v22 = [*(a1 + 56) objectForKey:*MEMORY[0x1E6973100]];
  v137 = MEMORY[0x1E69E9820];
  v138 = *(v5 + 104);
  v23 = v138;
  v139 = __avplayer_fpNotificationCallback_block_invoke_13;
  v140 = &unk_1E7462C80;
  v144 = v3;
  v24 = *(a1 + 40);
  v141 = v22;
  v142 = v24;
  v143 = v2;
  v18 = [&v137 copy];
  *&BOOLean = 0;
  *(&BOOLean + 1) = &BOOLean;
  v135 = 0x2020000000;
  v136 = 0;
  v130 = 0;
  v131 = &v130;
  v132 = 0x2020000000;
  v133 = 0;
  v25 = *(a1 + 32);
  v26 = *(*(v25 + 8) + 56);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = v23;
  block[2] = __avplayer_fpNotificationCallback_block_invoke_14;
  block[3] = &unk_1E7462CA8;
  block[4] = v25;
  block[5] = v18;
  block[6] = &BOOLean;
  block[7] = &v130;
  av_readwrite_dispatch_queue_read(v26, block);
  if (*(*(&BOOLean + 1) + 24))
  {
    _Block_object_dispose(&v130, 8);
    _Block_object_dispose(&BOOLean, 8);
  }

  else
  {
    v29 = *(v131 + 24);
    _Block_object_dispose(&v130, 8);
    _Block_object_dispose(&BOOLean, 8);
    if ((v29 & 1) == 0)
    {
      v14 = 0;
      if (!v21)
      {
        v16 = 0;
        v17 = 0;
        goto LABEL_25;
      }

      v17 = 0;
      goto LABEL_24;
    }
  }

  [*(a1 + 32) willChangeValueForKey:@"timeControlStatus"];
  [*(a1 + 32) willChangeValueForKey:@"reasonForWaitingToPlay"];
  v17 = 1;
  if (v21)
  {
LABEL_24:
    [*(a1 + 32) willChangeValueForKey:@"rate"];
    v16 = 0;
    v14 = 1;
    goto LABEL_25;
  }

  v14 = 0;
  v16 = 0;
LABEL_25:
  v122[0] = MEMORY[0x1E69E9820];
  v30 = *(a1 + 32);
  v31 = *(*(*(a1 + 32) + 8) + 56);
  v122[1] = 3221225472;
  v122[2] = __avplayer_fpNotificationCallback_block_invoke_15;
  v122[3] = &unk_1E7462CD0;
  v127 = v14;
  v126 = v19;
  v123 = v30;
  v128 = v17;
  v32 = *(a1 + 48);
  v124 = v18;
  v125 = v32;
  av_readwrite_dispatch_queue_write(v31, v122);
  if (v14)
  {
    [objc_msgSend(*(a1 + 56) objectForKey:{*MEMORY[0x1E6973108]), "floatValue"}];
    v34 = v33;
    v35 = *MEMORY[0x1E6973148];
    v36 = [objc_msgSend(*(a1 + 56) objectForKey:{*MEMORY[0x1E6973148]), "intValue"}];
    v37 = [*(a1 + 32) _isInterstitialPlayer];
    if (v36 == 33)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    if (v38 == 1)
    {
      v39 = [objc_msgSend(*(a1 + 32) "_weakReferenceToPrimaryPlayer")];
      BOOLean = *MEMORY[0x1E6960C70];
      v135 = *(MEMORY[0x1E6960C70] + 16);
      [v39 _handleSetRate:&BOOLean withVolumeRampDuration:0 playImmediately:33 rateChangeReason:0 affectsCoordinatedPlayback:{COERCE_DOUBLE(__PAIR64__(DWORD1(BOOLean), v34))}];
    }

    [*(a1 + 32) didChangeValueForKey:@"rate"];
    v40 = [*(a1 + 56) objectForKey:*MEMORY[0x1E6973138]];
    v41 = [objc_msgSend(*(a1 + 56) objectForKey:{v35), "intValue"}];
    if ((v15 & (v41 == 0)) != 0)
    {
      v42 = 2;
    }

    else
    {
      v42 = v41;
    }

    v43 = [*(a1 + 56) objectForKey:*MEMORY[0x1E69730C8]];
    if (v43)
    {
      v44 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v43];
    }

    else
    {
      v44 = 0;
    }

    v45 = [*(a1 + 32) _rateDidChangeNotificationPayloadForFigRateChangeReason:v42 rateChangeIdentifier:v40 rateChangeOriginator:v44];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  if (v17)
  {
    [*(a1 + 32) didChangeValueForKey:@"timeControlStatus"];
    [*(a1 + 32) didChangeValueForKey:@"reasonForWaitingToPlay"];
  }

LABEL_40:
  if (v16)
  {
    CFRelease(v16);
  }

  v46 = *(a1 + 48);
  if (v46)
  {
    CFRelease(v46);
  }

  v47 = *(a1 + 56);
  if (v47)
  {
    CFRelease(v47);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  objc_autoreleasePoolPop(context);
}

void sub_19607647C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_196076570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19607668C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  AVTelemetryIntervalEnd((v8 - 24));
  _Unwind_Resume(a1);
}

void sub_1960767C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  AVTelemetryIntervalEnd((v8 - 24));
  _Unwind_Resume(a1);
}

__n128 __avplayeritem_fpItemNotificationCallback_block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  result = *(a1 + 40);
  v1[32].n128_u64[0] = *(a1 + 56);
  v1[31] = result;
  return result;
}

void sub_196076AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  AVTelemetryIntervalEnd((v8 - 40));
  _Unwind_Resume(a1);
}

__n128 __avplayeritem_fpItemNotificationCallback_block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 992) = result;
  return result;
}

uint64_t __avplayeritem_fpItemNotificationCallback_block_invoke_4(uint64_t a1)
{
  result = [*(a1 + 40) BOOLValue];
  *(*(*(a1 + 32) + 8) + 1015) = result;
  return result;
}

uint64_t __avplayeritem_fpItemNotificationCallback_block_invoke_5(uint64_t a1)
{
  result = [*(a1 + 40) BOOLValue];
  *(*(*(a1 + 32) + 8) + 1013) = result;
  return result;
}

uint64_t __avplayeritem_fpItemNotificationCallback_block_invoke_6(uint64_t a1)
{
  result = [*(a1 + 40) BOOLValue];
  *(*(*(a1 + 32) + 8) + 1014) = result;
  return result;
}

void sub_196076C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196076DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196076F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  AVTelemetryIntervalEnd((v8 - 24));
  _Unwind_Resume(a1);
}

void sub_196077164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void figEndpointNotificationCallback(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2[1];
  v9 = objc_autoreleasePoolPush();
  if (figEndpointNotificationCallback_createFigToAVFNotificationMappingOnce != -1)
  {
    figEndpointNotificationCallback_cold_1();
  }

  v10 = [figEndpointNotificationCallback_figToAVFNotificationMapping objectForKey:a3];
  if (v10)
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    goto LABEL_10;
  }

  if ([a3 isEqualToString:*MEMORY[0x1E69619A0]])
  {
    AVLocalizedError(@"AVFoundationErrorDomain", -11819, 0);
    goto LABEL_10;
  }

  if ([a3 isEqualToString:*MEMORY[0x1E6961930]])
  {
    v11 = v8[7];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __figEndpointNotificationCallback_block_invoke_2;
    block[3] = &unk_1E7460C00;
    block[4] = v8;
    dispatch_sync(v11, block);
    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    v13 = @"ExternalDevice_MFiCertificateSerialNumberChangedNotification";
LABEL_9:
    [v12 postNotificationName:v13 object:a2];
    goto LABEL_10;
  }

  if ([a3 isEqualToString:*MEMORY[0x1E69619C0]])
  {
    v14 = [a5 objectForKey:*MEMORY[0x1E69626F0]];
    if (v14)
    {
      v15 = v14;
      if ([v14 valueForKey:*MEMORY[0x1E69626F8]])
      {
        [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      }

      if ([v15 valueForKey:*MEMORY[0x1E6962700]])
      {
        v12 = [MEMORY[0x1E696AD88] defaultCenter];
        v13 = @"ExternalDevice_NavigationAidedDrivingChangedNotification";
        goto LABEL_9;
      }
    }
  }

  else
  {
    v16 = v8[2];
    if ([a3 isEqualToString:*MEMORY[0x1E69619E8]])
    {
      if (v16 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v16 iOSUIRequestedForApplicationURL:{objc_msgSend(a5, "objectForKey:", *MEMORY[0x1E6962708])}];
      }
    }

    else if ([a3 isEqualToString:*MEMORY[0x1E69619A8]])
    {
      if (v16 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v17 = [a5 objectForKey:*MEMORY[0x1E69624E8]];
        if ([v17 isEqualToString:*MEMORY[0x1E69624D8]])
        {
          v18 = 0;
        }

        else if ([v17 isEqualToString:*MEMORY[0x1E69624C8]])
        {
          v18 = 1;
        }

        else if ([v17 isEqualToString:*MEMORY[0x1E69624D0]])
        {
          v18 = 2;
        }

        else
        {
          v18 = 0;
        }

        [v16 siriRequestedWithAction:v18];
      }
    }

    else if ([a3 isEqualToString:*MEMORY[0x1E69619C8]])
    {
      v19 = a2;
      v20 = a5;
      v21 = v8[10];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __figEndpointNotificationCallback_block_invoke_3;
      v22[3] = &unk_1E7462140;
      v22[4] = v8;
      v22[5] = a5;
      v22[6] = v16;
      v22[7] = a2;
      dispatch_async(v21, v22);
    }
  }

LABEL_10:
  objc_autoreleasePoolPop(v9);
}

uint64_t sub_196077C98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_196214658();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_196077CD4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_196078440(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

uint64_t avPlayerLayerUseVideoLayerPresentationSize()
{
  result = FigUseVideoReceiverForCALayer();
  if (result)
  {
    return FigGetCFPreferenceBooleanWithDefault() != 0;
  }

  return result;
}

id _animationByTransformingValues(void *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [a1 copy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 fromValue];
    v5 = [v3 toValue];
    v6 = [v3 byValue];
    if (v4)
    {
      [v3 setFromValue:{(*(a2 + 16))(a2, v4)}];
    }

    if (v5)
    {
      [v3 setToValue:{(*(a2 + 16))(a2, v5)}];
    }

    if (v6)
    {
      [v3 setByValue:{(*(a2 + 16))(a2, v6)}];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v3 values];
      if (v7)
      {
        v8 = v7;
        v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v16;
          do
          {
            v13 = 0;
            do
            {
              if (*v16 != v12)
              {
                objc_enumerationMutation(v8);
              }

              [v9 addObject:{(*(a2 + 16))(a2, *(*(&v15 + 1) + 8 * v13++))}];
            }

            while (v11 != v13);
            v11 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
          }

          while (v11);
        }

        [v3 setValues:v9];
      }
    }
  }

  return v3;
}

void sub_19607A63C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_19607B9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 72), 8);
  AVTelemetryIntervalEnd((v10 - 40));
  _Unwind_Resume(a1);
}

void sub_19607BD40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_19607C2BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 144), 8);
  _Block_object_dispose((v31 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_19607C57C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19607D188(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_19607D67C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  AVTelemetryIntervalEnd((v8 - 24));
  _Unwind_Resume(a1);
}

void *AVPlayerLayerFilterClientLayersFromLayerWithIndexPath(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [a1 sublayers];
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v4);
        }

        [v5 addEntriesFromDictionary:{AVPlayerLayerFilterClientLayersFromLayerWithIndexPath(*(*(&v11 + 1) + 8 * v9), objc_msgSend(a2, "indexPathByAddingIndex:", objc_msgSend(v4, "indexOfObject:", *(*(&v11 + 1) + 8 * v9))))}];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (a1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [v5 setObject:a1 forKey:a2];
        }
      }
    }
  }

  return v5;
}

void sub_19607DE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19607E150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19607F158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __AVPlayerLayerSortedIndexPathsForKeys_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 length];
  v6 = [a3 length];
  v7 = [a2 length];
  v8 = v7;
  if (v5 == v6)
  {
    if (v7)
    {
      v9 = 0;
      v8 = 1;
      while (1)
      {
        v10 = [a2 indexAtPosition:v9];
        if (v10 < [a3 indexAtPosition:v9])
        {
          break;
        }

        v11 = [a2 indexAtPosition:v9];
        if (v11 > [a3 indexAtPosition:v9])
        {
          return v8;
        }

        if ([a2 length] <= ++v9)
        {
          return 0;
        }
      }

      return -1;
    }
  }

  else if (v7 < [a3 length])
  {
    return -1;
  }

  else
  {
    return 1;
  }

  return v8;
}

void _avplLoopingItemFailedToPlayToEndTimeNotificationHandler(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = objc_autoreleasePoolPush();
  if (a4 && [objc_msgSend(a2 "loopingPlayerItems")] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a2 _changeStatusToFailedWithError:{objc_msgSend(a5, "objectForKey:", @"AVPlayerItemFailedToPlayToEndTimeErrorKey"}];
    [a2 _turnOffLooping];
  }

  objc_autoreleasePoolPop(v8);
}

void sub_196080B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196080C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196080E4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_196080F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196081018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196081CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CMTimeEpoch CMTimeHash(CMTime *a1)
{
  flags = a1->flags;
  if ((~flags & 5) == 0)
  {
    return 1;
  }

  if ((~flags & 9) == 0)
  {
    return 2;
  }

  if ((~flags & 0x11) == 0)
  {
    return 3;
  }

  if ((a1->flags & 0x1D) != 1)
  {
    return 0;
  }

  v7 = v1;
  v8 = v2;
  memset(&v6, 0, sizeof(v6));
  v5 = *a1;
  CMTimeConvertScale(&v6, &v5, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  return v6.epoch ^ v6.value;
}

CFDictionaryRef NSDictionaryFromCMTime(CMTime *a1)
{
  v1 = *MEMORY[0x1E695E480];
  v3 = *a1;
  return CMTimeCopyAsDictionary(&v3, v1);
}

void sub_196083F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196084158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196084380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960845B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960846E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196084DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196084FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{

  return [v17 countByEnumeratingWithState:&a9 objects:&a17 count:16];
}

void sub_196085EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196086070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_196086748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19608687C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __Block_byref_object_dispose__16(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 40), 131);
}

{
  _Block_object_dispose(*(a1 + 40), 131);
}

void sub_19608E73C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19608E9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void chapterItem_handleFigChapterLoadingNotification(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v7 = objc_autoreleasePoolPush();
  v8 = FigCFEqual();
  if (!v8 && !FigCFEqual())
  {
    if (!FigCFEqual())
    {
      goto LABEL_24;
    }

    v27 = a2;
    v28 = 268435459;
    goto LABEL_23;
  }

  if (a5)
  {
    v9 = CFGetTypeID(a5);
    if (v9 == CFDictionaryGetTypeID())
    {
      v10 = *MEMORY[0x1E6971158];
      v11 = *MEMORY[0x1E6971140];
      Value = CFDictionaryGetValue(a5, *MEMORY[0x1E6971150]);
      v13 = CFDictionaryGetValue(a5, v10);
      v14 = CFDictionaryGetValue(a5, v11);
      if (Value)
      {
        v15 = v14;
        v16 = CFGetTypeID(Value);
        if (v16 == CFNumberGetTypeID() && v13 != 0)
        {
          v18 = CFGetTypeID(v13);
          if (v18 == CFNumberGetTypeID())
          {
            if (v15)
            {
              v19 = CFGetTypeID(v15);
              if (v19 == CFNumberGetTypeID())
              {
                v34 = 0;
                valuePtr = 0;
                v33 = 0;
                CFNumberGetValue(Value, kCFNumberLongType, &valuePtr);
                CFNumberGetValue(v13, kCFNumberLongType, &v34);
                CFNumberGetValue(v15, kCFNumberLongType, &v33);
                v20 = valuePtr;
                if (v20 == [a2 _chapterGroupIndex])
                {
                  v21 = v34;
                  if (v21 == [a2 _chapterIndex] && v33 >= 1)
                  {
                    if (v8)
                    {
                      v22 = CFDictionaryGetValue(a5, *MEMORY[0x1E6971148]);
                      if (v22)
                      {
                        v23 = v22;
                        v24 = CFGetTypeID(v22);
                        TypeID = CFArrayGetTypeID();
                        v26 = [v23 count];
                        if (v24 == TypeID)
                        {
                          if (v26)
                          {
                            [a2 _takeValueFrom:{objc_msgSend(v23, "objectAtIndex:", 0)}];
                            goto LABEL_24;
                          }
                        }
                      }

                      v27 = a2;
                      v28 = 0;
                    }

                    else
                    {
                      v29 = CFDictionaryGetValue(a5, *MEMORY[0x1E6971168]);
                      v32 = 0;
                      if (v29 && (v30 = v29, v31 = CFGetTypeID(v29), v31 == CFNumberGetTypeID()))
                      {
                        CFNumberGetValue(v30, kCFNumberSInt32Type, &v32);
                        v28 = v32;
                      }

                      else
                      {
                        v28 = 0;
                      }

                      v27 = a2;
                    }

LABEL_23:
                    [v27 _setValueStatus:3 figErrorCode:v28];
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_24:
  objc_autoreleasePoolPop(v7);
}

void sub_19608FED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t initAVMetadataMakeMetadataObjectFromBoxedMetadata(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  if (AVFCaptureLibrary_sOnce != -1)
  {
    initAVMetadataMakeMetadataObjectFromBoxedMetadata_cold_1();
  }

  softLinkAVMetadataMakeMetadataObjectFromBoxedMetadata[0] = dlsym(AVFCaptureLibrary_sLib, "AVMetadataMakeMetadataObjectFromBoxedMetadata");
  v11 = *a3;
  v12 = *(a3 + 2);
  v9 = *a4;
  v10 = *(a4 + 2);
  return (softLinkAVMetadataMakeMetadataObjectFromBoxedMetadata[0])(a1, a2, &v11, &v9);
}

void *__AVFCaptureLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AVFCapture.framework/AVFCapture", 2);
  AVFCaptureLibrary_sLib = result;
  return result;
}

id __AVMetadataGetCommonKeyForIdentifier_block_invoke()
{
  v2[1] = *MEMORY[0x1E69E9840];
  v1 = @"m3u8/NAME";
  v2[0] = *MEMORY[0x1E6971EB8];
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:&v1 count:1];
  AVMetadataGetCommonKeyForIdentifier_commonKeysForMetadataIdentifiers = result;
  return result;
}

uint64_t initAVMetadataMakeDependentSpecificationsForValue(uint64_t a1)
{
  if (AVFCaptureLibrary_sOnce != -1)
  {
    initAVMetadataMakeMetadataObjectFromBoxedMetadata_cold_1();
  }

  v2 = dlsym(AVFCaptureLibrary_sLib, "AVMetadataMakeDependentSpecificationsForValue");
  softLinkAVMetadataMakeDependentSpecificationsForValue = v2;

  return (v2)(a1);
}

uint64_t initAVMetadataObjectCreateBoxedMetadataFromObjectAndFormatDescription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (AVFCaptureLibrary_sOnce != -1)
  {
    initAVMetadataMakeMetadataObjectFromBoxedMetadata_cold_1();
  }

  v6 = dlsym(AVFCaptureLibrary_sLib, "AVMetadataObjectCreateBoxedMetadataFromObjectAndFormatDescription");
  softLinkAVMetadataObjectCreateBoxedMetadataFromObjectAndFormatDescription = v6;

  return (v6)(a1, a2, a3);
}

uint64_t __AVMetadataItemLoadValueFromURI_block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 && (([objc_msgSend(*(a1 + 40) "scheme")] & 1) == 0 && !objc_msgSend(objc_msgSend(*(a1 + 40), "scheme"), "isEqualToString:", @"https") || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && objc_msgSend(a3, "statusCode") - 400 > 0xFFFFFF37))
  {
    if ([a3 MIMEType])
    {
      CoreMediaDataType = FigMetadataGetCoreMediaDataType();
    }

    else
    {
      CoreMediaDataType = 0;
    }

    v11 = *(a1 + 32);

    return [v11 respondWithValue:a2 dataType:CoreMediaDataType];
  }

  else
  {
    v8 = *(a1 + 32);

    return [v8 respondWithError:a4];
  }
}

uint64_t appendCaptionGroupToQueue(const __CFArray *a1, _OWORD *a2, void *a3)
{
  v6 = objc_autoreleasePoolPush();
  cf = 0;
  Count = CFArrayGetCount(a1);
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:Count];
  v9 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v11 = Mutable;
    v25 = a2;
    context = v6;
    if (Count)
    {
      v12 = 0;
      v28 = *MEMORY[0x1E6961260];
      key = *MEMORY[0x1E6961450];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v12);
        v14 = [a3 pairedAVCaptionForFigCaption:ValueAtIndex];
        if (!v14)
        {
          v14 = [AVCaption captionFromFigCaption:ValueAtIndex];
          if ([a3 validationDelegate])
          {
            if (cf)
            {
              CFRelease(cf);
              cf = 0;
            }

            CMBaseObject = FigCaptionGetCMBaseObject();
            v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (!v16)
            {
              v23 = 4294954514;
              goto LABEL_17;
            }

            v17 = v16(CMBaseObject, v28, v9, &cf);
            if (v17)
            {
              v23 = v17;
              goto LABEL_17;
            }

            if (cf)
            {
              Value = CFDictionaryGetValue(cf, key);
              if (Value)
              {
                v19 = Value;
                v20 = [a3 validationDelegate];
                if (v20)
                {
                  [v20 captionAdaptor:a3 didVendCaption:v14 skippingUnsupportedSourceSyntaxElements:v19];
                }
              }
            }
          }
        }

        [v8 addObject:{v14, v25}];
        CFDictionaryAddValue(v11, ValueAtIndex, v14);
        ++v12;
      }

      while (Count != v12);
    }

    v21 = [AVCaptionGroup alloc];
    v22 = v25[1];
    v29[0] = *v25;
    v29[1] = v22;
    v29[2] = v25[2];
    [a3 appendOutputCaptionGroup:{-[AVCaptionGroup initWithCaptions:timeRange:](v21, "initWithCaptions:timeRange:", v8, v29)}];
    [a3 setFigCaptionToAVCaptionMapping:v11];
    v23 = 0;
LABEL_17:
    CFRelease(v11);
    v6 = context;
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    appendCaptionGroupToQueue_cold_1(v29);
    v23 = LODWORD(v29[0]);
  }

  objc_autoreleasePoolPop(v6);
  return v23;
}

uint64_t AVAssetShouldPreferNominalDurations(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKey:a2];
  if (!v2)
  {
    return dyld_program_sdk_at_least() ^ 1;
  }

  return [v2 BOOLValue];
}

void *stringsToUTIs(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFA8] set];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v7 = [MEMORY[0x1E6982C40] typeWithIdentifier:*(*(&v9 + 1) + 8 * v6)];
        if (v7)
        {
          [v2 addObject:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [a1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  return v2;
}

uint64_t figAssetCreationFlagsForAssetReferenceRestrictionsAsNumber(void *a1)
{
  if (a1)
  {
    return 4 * ([a1 unsignedIntegerValue] & 0xF);
  }

  else
  {
    return 8;
  }
}

void sub_196098304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196098D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t avasset_formatsChangedNotificationCallback()
{
  if (getTypeAccessMutex_onceToken != -1)
  {
    +[AVURLAsset _figMIMETypes];
  }

  FigSimpleMutexLock();

  gUTTypes = 0;
  gFileUTTypes = 0;

  gStreamingUTTypes = 0;
  gFigMIMETypes = 0;
  if (getTypeAccessMutex_onceToken != -1)
  {
    +[AVURLAsset _figMIMETypes];
  }

  return FigSimpleMutexUnlock();
}

void aig_didGenerateCGImage(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_autoreleasePoolPush();
  [a2 _didGenerateCGImage:a5];

  objc_autoreleasePoolPop(v7);
}

void aig_failedToGenerateCGImage(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_autoreleasePoolPush();
  [a2 _failedToGenerateCGImage:a5];

  objc_autoreleasePoolPop(v7);
}

void aig_serverDied(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  [a2 _serverDied];

  objc_autoreleasePoolPop(v3);
}

void aig_invalidated(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  [a2 _invalidated];

  objc_autoreleasePoolPop(v3);
}

void sub_19609C968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_1_1()
{

  return [v0 objectAtIndex:0];
}

void assetTrackNotificationHandler(uint64_t a1, void *a2, const void *a3, uint64_t a4, void *a5)
{
  v8 = objc_autoreleasePoolPush();
  if (CFEqual(a3, *MEMORY[0x1E6971480]))
  {
    v9 = [a5 objectForKey:*MEMORY[0x1E6971160]];
    if ([v9 isEqualToString:*MEMORY[0x1E6973938]])
    {
      if (![objc_opt_class() expectsPropertyRevisedNotifications])
      {
        goto LABEL_18;
      }

      v10 = MEMORY[0x1E696AD80];
      v11 = @"AVAssetTrackTimeRangeDidChangeNotification";
      goto LABEL_17;
    }

    if (([v9 isEqualToString:*MEMORY[0x1E6971490]] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E69714D0]))
    {
      if ([objc_opt_class() expectsPropertyRevisedNotifications])
      {
        v12 = [MEMORY[0x1E696AD80] notificationWithName:@"AVAssetTrackSegmentsDidChangeNotification" object:a2 userInfo:0];
        [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      }

      if ([objc_msgSend(a2 "asset")])
      {
        v13 = [MEMORY[0x1E696AD80] notificationWithName:@"AVFragmentedMovieTrackTimeRangeDidChangeNotification" object:a2 userInfo:0];
        [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
        v10 = MEMORY[0x1E696AD80];
        v11 = @"AVFragmentedMovieTrackSegmentsDidChangeNotification";
LABEL_17:
        v14 = [v10 notificationWithName:v11 object:a2 userInfo:0];
        [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      }
    }

    else
    {
      if ([v9 isEqualToString:*MEMORY[0x1E69714F0]])
      {
        v10 = MEMORY[0x1E696AD80];
        v11 = @"AVAssetTrackTrackAssociationsDidChangeNotification";
        goto LABEL_17;
      }

      if (([v9 isEqualToString:*MEMORY[0x1E69714E0]] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E69714E8]) & 1) != 0 || objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E69714B0]))
      {
        v10 = MEMORY[0x1E696AD80];
        v11 = @"AVAssetTrackMetadataDidChangeNotification";
        goto LABEL_17;
      }
    }
  }

LABEL_18:

  objc_autoreleasePoolPop(v8);
}

AVCaptionDimension AVCaptionDimensionMake(CGFloat value, AVCaptionUnitsType units)
{
  result.units = units;
  result.value = value;
  return result;
}

AVCaptionPoint *__cdecl AVCaptionPointMake(AVCaptionPoint *__return_ptr retstr, AVCaptionDimension x, AVCaptionDimension y)
{
  retstr->x = x;
  retstr->y = y;
  return *&x.value;
}

AVCaptionSize *__cdecl AVCaptionSizeMake(AVCaptionSize *__return_ptr retstr, AVCaptionDimension width, AVCaptionDimension height)
{
  retstr->width = width;
  retstr->height = height;
  return *&width.value;
}

uint64_t _convertFigGeometryDimensionToAVCaptionDimension(uint64_t a1, uint64_t a2)
{
  if (a2 == 1 || a2 == 2)
  {
    return FigGeometryDimensionMake();
  }

  else
  {
    return *MEMORY[0x1E6962808];
  }
}

uint64_t OUTLINED_FUNCTION_4()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_6()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_7()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_8()
{

  return objc_opt_isKindOfClass();
}

uint64_t OUTLINED_FUNCTION_10()
{

  return FigGeometryDimensionMake();
}

uint64_t OUTLINED_FUNCTION_13()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{

  return [v33 countByEnumeratingWithState:&a23 objects:&a33 count:16];
}

void sub_1960A4F0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void avplayer_iapdNotificationCallback(uint64_t a1, uint64_t a2, const void *a3)
{
  v4 = [+[AVCallbackContextRegistry sharedCallbackContextRegistry](AVCallbackContextRegistry "sharedCallbackContextRegistry")];
  if (v4)
  {
    v5 = v4;
    if (a3)
    {
      CFRetain(a3);
    }

    v6 = [objc_opt_class() isIAPDExtendedModeActive];
    if (AVPlayerInitializeIAPD_onceToken != -1)
    {
      avplayer_iapdNotificationCallback_cold_1();
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __AVPlayerSetCachedIAPDModeActive_block_invoke;
    v9[3] = &__block_descriptor_33_e5_v8__0l;
    v10 = v6;
    av_readwrite_dispatch_queue_write(sAVPlayerIAPDReadWriteQueue, v9);
    v7 = *(*(v5 + 8) + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __avplayer_iapdNotificationCallback_block_invoke;
    block[3] = &unk_1E7460FA8;
    block[4] = v5;
    block[5] = a3;
    dispatch_async(v7, block);
  }
}

void sub_1960A568C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  AVTelemetryIntervalEnd((v8 - 24));
  _Unwind_Resume(a1);
}

void sub_1960A57BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960A5A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960A5CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960A655C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 152), 8);
  _Block_object_dispose((v1 - 104), 8);
  _Unwind_Resume(a1);
}

void sub_1960A71E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960A7440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *AVPlayerFindItemMatchingFigPlaybackItem(void *a1, const void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [a1 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(a1);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 _copyFigPlaybackItem];
        v13 = v12;
        if (v12 == a2)
        {
          if (a2)
          {
            CFRelease(v12);
          }

          if (a3 && v11)
          {
            *a3 = v6;
          }

          return v11;
        }

        [v6 addObject:v11];
        if (v13)
        {
          CFRelease(v13);
        }
      }

      v8 = [a1 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

void sub_1960A88B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960A89E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960AB244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960AB4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1960AC0E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960AC258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960AC388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960AC748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a36, 8);
  _Unwind_Resume(a1);
}

void sub_1960ACA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a36, 8);
  _Unwind_Resume(a1);
}

void sub_1960ACE58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1960AD520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960ADCF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  AVTelemetryIntervalEnd((v8 - 40));
  _Unwind_Resume(a1);
}

void sub_1960ADED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1960ADFE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960AE124(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1960AE1B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1960AE8F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1960AEA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1960AECF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1960AF32C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960AF63C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1960AF6E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1960AFAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960B0078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  AVTelemetryIntervalEnd((v8 - 40));
  _Unwind_Resume(a1);
}

void sub_1960B0584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  AVTelemetryIntervalEnd((v8 - 24));
  _Unwind_Resume(a1);
}

void sub_1960B097C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  AVTelemetryIntervalEnd((v8 - 24));
  _Unwind_Resume(a1);
}

void sub_1960B0F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960B1368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960B1448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960B1820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960B1B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960B1E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  AVTelemetryIntervalEnd((v8 - 24));
  _Unwind_Resume(a1);
}

void sub_1960B2308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  AVTelemetryIntervalEnd((v8 - 24));
  _Unwind_Resume(a1);
}

void sub_1960B295C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  AVTelemetryIntervalEnd((v8 - 24));
  _Unwind_Resume(a1);
}

void sub_1960B2A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960B2B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960B2ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960B32A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960B398C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960B3BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960B3E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1960B3EC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1960B4258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960B4394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960B44D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960B4604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960B4B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 96), 8);
  _Unwind_Resume(a1);
}

BOOL addObjectToArray(void *a1, uint64_t a2)
{
  v4 = [a1 count];
  if (a2 && ([a1 containsObject:a2] & 1) == 0)
  {
    [a1 addObject:a2];
  }

  return v4 != [a1 count];
}

void sub_1960B4E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1960B5F08(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1960B6504(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1960B68D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Unwind_Resume(a1);
}

void sub_1960B6E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960B6F5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1960B7D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960B8050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  AVTelemetryIntervalEnd((v8 - 24));
  _Unwind_Resume(a1);
}

void sub_1960B8258(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

uint64_t addToHDRModes(const __CFNumber *a1, void *a2)
{
  valuePtr = 0;
  result = CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
  if ((valuePtr - 2) <= 3)
  {
    *a2 |= qword_196257390[valuePtr - 2];
  }

  return result;
}

void sub_1960B8330(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1960B83F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960B8630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960B8ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  AVTelemetryIntervalEnd((v8 - 24));
  _Unwind_Resume(a1);
}

void sub_1960B91FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960B9338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960B9910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960B9C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960BA118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960BB2E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960BB5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960BBB30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960BBDD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960BC118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960BC638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960BC95C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960BCC80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960BD294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  AVTelemetryIntervalEnd((v8 - 24));
  _Unwind_Resume(a1);
}

void sub_1960BD670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960BD7C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1960BDA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  AVTelemetryIntervalEnd((v8 - 24));
  _Unwind_Resume(a1);
}

void sub_1960BDD84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960BE0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960BE5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960BEB5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960BEE10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960BF4BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  AVTelemetryIntervalEnd((v8 - 24));
  _Unwind_Resume(a1);
}

void sub_1960BF8BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960BFBEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960BFF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960C0010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960C0358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960C065C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960C073C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960C0AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960C0BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960C1854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960C19D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960C1EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 160), 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1960C2368(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1960C2430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960C25C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960C2D58(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1960C38AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960C3CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960C3DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960C4454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960C478C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960C4898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960C499C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960C4CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960C4E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960C5078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960C538C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960C6044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960C61B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1960C640C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960C6578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t CMBaseObjectCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t __avplayer_fpNotificationCallback_block_invoke_8(uint64_t result)
{
  v1 = *(result + 40);
  *(*(*(result + 32) + 8) + 486) = *(result + 48);
  *(*(*(result + 32) + 8) + 488) = v1;
  return result;
}

id __avplayer_fpNotificationCallback_block_invoke_12(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 576) = result;
  return result;
}

uint64_t __avplayer_fpNotificationCallback_block_invoke_13(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = [v5 intValue];
    v7 = *(a1 + 56);
    v8 = *(a1 + 40);

    return [a2 rateStateByUpdatingBasedOnFigPlayerPlaybackState:v6 hasCurrentInterstitialEvent:v7 nameForLogging:v8];
  }

  else
  {
    v11 = *(a1 + 56);
    v13 = *(a1 + 40);
    v12 = *(a1 + 48);

    return [a2 rateStateByUpdatingBasedOnFigPlayer:v12 hasCurrentItem:a3 hasCurrentInterstitialEvent:v11 nameForLogging:v13];
  }
}

uint64_t __avplayer_fpNotificationCallback_block_invoke_14(void *a1)
{
  v2 = *(*(a1[4] + 8) + 504);
  v3 = [v2 timeControlStatus];
  v4 = [v2 reasonForWaitingToPlay];
  v5 = (*(a1[5] + 16))(a1[5], v2, *(*(a1[4] + 8) + 176) != 0);
  v6 = [v5 timeControlStatus];
  result = [v5 reasonForWaitingToPlay];
  *(*(a1[6] + 8) + 24) = v3 != v6;
  if (v4 == result)
  {
    v8 = 0;
  }

  else
  {
    result = [v4 isEqual:result];
    v8 = result ^ 1;
  }

  *(*(a1[7] + 8) + 24) = v8;
  return result;
}

void __avplayer_fpNotificationCallback_block_invoke_15(uint64_t a1, double a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 504);
  if (*(a1 + 68) == 1)
  {
    LODWORD(a2) = *(a1 + 64);
    v3 = [*(*(*(a1 + 32) + 8) + 504) rateStateBySettingRate:*(a1 + 40) nameForLogging:a2];
  }

  if (*(a1 + 69) == 1)
  {
    v3 = (*(*(a1 + 48) + 16))(*(a1 + 48), v3, *(*(*(a1 + 32) + 8) + 176) != 0);
  }

  if ((*(a1 + 68) & 1) != 0 || *(a1 + 69) == 1)
  {
    if (dword_1ED5AC2F8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5 = v3;

    *(*(*(a1 + 32) + 8) + 504) = v3;
  }
}

void __avplayer_iapdNotificationCallback_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (*(v3[1] + 784) && [v3 _hasVideoDestinations])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __avplayer_iapdNotificationCallback_block_invoke_2;
    v5[3] = &unk_1E7460C00;
    v5[4] = *(a1 + 32);
    AVEnsureNotOnMainThread(v5);
  }

  objc_autoreleasePoolPop(v2);
  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }
}

void __avplayer_iapdNotificationCallback_block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _shouldDetachVideoLayersFromFigPlayer];
  v3 = *(a1 + 32);
  v4 = *(*(v3 + 8) + 32);
  if (v2)
  {
    v5 = v8;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v6 = __avplayer_iapdNotificationCallback_block_invoke_3;
  }

  else
  {
    v5 = v7;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v6 = __avplayer_iapdNotificationCallback_block_invoke_4;
  }

  v5[2] = v6;
  v5[3] = &unk_1E7460C00;
  v5[4] = v3;
  AVSerializeOnQueueAsyncIfNecessary(v4, v5);
}

BOOL __AVPlayerInitializeIAPD_block_invoke()
{
  sAVPlayerIAPDReadWriteQueue = av_readwrite_dispatch_queue_create("com.apple.avfoundation.avplayer.iapd");
  result = +[AVPlayer isIAPDExtendedModeActive];
  sAVPlayerIAPDExtendedModeIsActive = result;
  return result;
}

id avplayer_interstitial_WrapperToPlayerItem(uint64_t a1, uint64_t a2, void *a3)
{
  if (![a3 _isFigItemConfigured])
  {
    return 0;
  }

  v4 = [a3 _copyFigPlaybackItem];

  return v4;
}

id avplayer_interstitial_WrapperToEventPrimaryItem(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 primaryItem];
  if (![v3 _isFigItemConfigured])
  {
    return 0;
  }

  v4 = [v3 _copyFigPlaybackItem];

  return v4;
}

uint64_t avplayer_interstitial_PlayerItemWrapperToFigAsset(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = [a3 asset];

  return [v3 _figAsset];
}

uint64_t avplayer_interstitial_CreateAndEnqueueItems(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9, uint64_t a10, uint64_t a11, __CFArray **a12)
{
  v64 = *MEMORY[0x1E69E9840];
  v19 = [a2 _interstitialPlayerIfCreated];
  [a3 figEvent];
  v20 = FigPlayerInterstitialEventCopyPrimaryItem();
  v21 = [v20 restrictsAutomaticMediaSelectionToAvailableOfflineOptions];
  if (v19 == a4)
  {
    v49 = v21;
    v45 = v20;
    v52 = a6;
    v43 = a12;
    if (a8)
    {
      [v19 setMultichannelAudioStrategy:a8];
    }

    theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v22 = [a3 _internalTemplateItems];
    v48 = [a3 _participatesInCoordinatedPlayback];
    v44 = a2;
    v47 = [objc_msgSend(a2 "currentItem")];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    obj = v22;
    v23 = [v22 countByEnumeratingWithState:&v59 objects:v63 count:16];
    if (v23)
    {
      v24 = v23;
      v27 = *v60;
      v46 = v19;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v60 != v27)
          {
            objc_enumerationMutation(obj);
          }

          if (a10)
          {
            --a10;
            continue;
          }

          v29 = a5;
          v30 = a7;
          v31 = *(*(&v59 + 1) + 8 * i);
          v32 = [v31 asset];
          if (objc_opt_respondsToSelector())
          {
            v33 = [v32 creationOptions];
          }

          else
          {
            v33 = 0;
          }

          if (![objc_msgSend(objc_msgSend(v33 objectForKey:{@"AVURLAssetPrimarySessionIdentifierKey", v43), "UUIDString"), "isEqualToString:", v52}])
          {
            if ([v32 conformsToProtocol:&unk_1F0ADBFE8])
            {
              v36 = [v32 contentKeySession];
              if (v33)
              {
                goto LABEL_19;
              }

LABEL_21:
              v37 = [MEMORY[0x1E695DF90] dictionary];
            }

            else
            {
              v36 = 0;
              if (!v33)
              {
                goto LABEL_21;
              }

LABEL_19:
              v37 = [v33 mutableCopy];
            }

            v38 = v37;
            [v37 setValue:objc_msgSend(objc_alloc(MEMORY[0x1E696AFB0]) forKey:{"initWithUUIDString:", v52), @"AVURLAssetPrimarySessionIdentifierKey"}];
            if (a11)
            {
              [v38 setValue:a11 forKey:@"AVURLAssetInitialPreloadedPlaylistKey"];
            }

            [v44 _populateInterstitialAssetOptions:v38 fromPrimaryAsset:{objc_msgSend(v45, "asset")}];
            v39 = [v31 copyWithZone:0 newAssetOptions:v38];
            v40 = v39;
            if (v36)
            {
              [v36 addContentKeyRecipient:{objc_msgSend(v39, "asset")}];
            }

            goto LABEL_28;
          }

          if (a11)
          {
            v34 = [v33 mutableCopy];
            [v34 setValue:a11 forKey:@"AVURLAssetInitialPreloadedPlaylistKey"];
            v35 = [v31 copyWithZone:0 newAssetOptions:v34];
          }

          else
          {
            v35 = [v31 copy];
          }

          v40 = v35;
LABEL_28:
          a5 = v29;
          [v40 setAutomaticallyHandlesInterstitialEvents:0];
          [v40 _setTemplatePlayerItem:v31];
          [v40 _setInterstitialEventID:v29];
          a7 = v30;
          [v40 _setCoordinatorIdentifier:v30];
          [v40 _setParticipatesInCoordinatedPlayback:v48];
          [v40 _setIntegratedSessionIdentifier:v47];
          [v40 setRestrictsAutomaticMediaSelectionToAvailableOfflineOptions:v49];
          CFArrayAppendValue(theArray, v40);
          if (*(a9 + 12))
          {
            v57 = *a9;
            v58 = *(a9 + 2);
            v55 = *MEMORY[0x1E6960CC0];
            v56 = *(MEMORY[0x1E6960CC0] + 16);
            v53 = v55;
            v54 = v56;
            [v40 seekToTime:&v57 toleranceBefore:&v55 toleranceAfter:&v53 completionHandler:0];
            v41 = MEMORY[0x1E6960C70];
            *a9 = *MEMORY[0x1E6960C70];
            *(a9 + 2) = *(v41 + 16);
          }

          [v46 insertItem:v40 afterItem:0];
          a11 = 0;
          a10 = 0;
        }

        v24 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
      }

      while (v24);
    }

    *v43 = theArray;
    v20 = v45;
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return 0;
}

uint64_t avplayer_interstitial_DequeueItem(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = [a2 _interstitialPlayerIfCreated];
  if (v6 == a4)
  {
    [v6 removeItem:a3];
  }

  return 0;
}

uint64_t avplayer_interstitial_ShowInterstitialInstead(double a1, uint64_t a2, void *a3, int a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = [a3 _avPlayerLayers];
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    v11 = 1;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        [v13 _setShowInterstitialInstead:a4 != 0 afterDelay:a1];
        if (v11)
        {
          v11 = [v13 _interstitialLayerIsVisible];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = 1;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = [a3 _playerCaptionLayers];
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v20 + 1) + 8 * j) _setShowInterstitialInstead:a4 != 0];
      }

      v16 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v16);
  }

  return v11;
}

uint64_t avplayer_playbackcoordinator_SetPlaybackCoordinatorInterstitialActive(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [a2 _playbackCoordinatorWithoutTriggeringFullSetup];
  if (v4)
  {
    [v4 _setInterstitialActive:a3];
  }

  return 0;
}

id OUTLINED_FUNCTION_2_2(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 176);

  return v2;
}

void sub_1960C7B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960C83F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960C8524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960C8724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960C8A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960C9C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void avplayerinterstitialeventmonitor_fpNotificationCallback(uint64_t a1, void *a2, const void *a3, uint64_t a4, void *a5)
{
  v8 = objc_autoreleasePoolPush();
  if (CFEqual(a3, *MEMORY[0x1E6972F10]))
  {
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    v10 = MEMORY[0x1E696AD80];
    v11 = @"EventsDidChangeNotification";
LABEL_5:
    v12 = [v10 notificationWithName:v11 object:a2];
LABEL_6:
    [v9 postNotification:v12];
    goto LABEL_7;
  }

  if (CFEqual(a3, *MEMORY[0x1E6972ED8]))
  {
    [a2 _updateCachedCurrentEvent];
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    v10 = MEMORY[0x1E696AD80];
    v11 = @"CurrentEventDidChangeNotification";
    goto LABEL_5;
  }

  if (!CFEqual(a3, *MEMORY[0x1E6972F50]))
  {
    if (!CFEqual(a3, *MEMORY[0x1E6972EB8]))
    {
      if (CFEqual(a3, *MEMORY[0x1E6972EE0]))
      {
        v14 = [MEMORY[0x1E695DF90] dictionary];
        v18 = [objc_msgSend(a5 objectForKey:{*MEMORY[0x1E6972EF8]), "intValue"}];
        [v14 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", v18), @"CurrentEventSkippableStateDidChangeStateKey"}];
        v19 = [a5 objectForKey:*MEMORY[0x1E6972EE8]];
        v20 = *MEMORY[0x1E695E738];
        if (v19 != *MEMORY[0x1E695E738])
        {
          v21 = [v19 copy];
          [v21 setImmutable];
          [v14 setObject:v21 forKey:@"CurrentEventSkippableStateDidChangeEventKey"];
        }

        v22 = [a5 objectForKey:*MEMORY[0x1E6972EF0]];
        if (v22 != v20)
        {
          [v14 setObject:objc_msgSend(v22 forKey:{"copy"), @"CurrentEventSkippableStateDidChangeSkipControlLabelKey"}];
        }

        v9 = [MEMORY[0x1E696AD88] defaultCenter];
        v23 = MEMORY[0x1E696AD80];
        v24 = @"CurrentEventSkippableStateDidChange";
      }

      else if (CFEqual(a3, *MEMORY[0x1E6972F00]))
      {
        v14 = [MEMORY[0x1E695DF90] dictionary];
        v28 = [objc_msgSend(a5 objectForKey:{*MEMORY[0x1E6972F08]), "copy"}];
        [v28 setImmutable];
        [v14 setObject:v28 forKey:@"CurrentEventSkippedEventKey"];
        v9 = [MEMORY[0x1E696AD88] defaultCenter];
        v23 = MEMORY[0x1E696AD80];
        v24 = @"CurrentEventSkipped";
      }

      else if (CFEqual(a3, *MEMORY[0x1E6972F48]))
      {
        v14 = [MEMORY[0x1E695DF90] dictionary];
        v29 = [a5 objectForKey:*MEMORY[0x1E6972F40]];
        v30 = [a5 objectForKey:*MEMORY[0x1E6972F38]];
        v31 = [v29 copy];
        [v31 setImmutable];
        if (v30)
        {
          [v14 setObject:AVLocalizedErrorWithUnderlyingOSStatus(objc_msgSend(v30 forKey:{"intValue"), 0), @"InterstitialEventWasUnscheduleErrorKey"}];
        }

        [v14 setObject:v31 forKey:@"InterstitialEventWasUnscheduleEventKey"];
        v9 = [MEMORY[0x1E696AD88] defaultCenter];
        v23 = MEMORY[0x1E696AD80];
        v24 = @"InterstitialEventWasUnscheduled";
      }

      else
      {
        if (!CFEqual(a3, *MEMORY[0x1E6972F28]))
        {
          goto LABEL_7;
        }

        v14 = [MEMORY[0x1E695DF90] dictionary];
        v32 = [a5 objectForKey:*MEMORY[0x1E6972F20]];
        v33 = [a5 objectForKey:*MEMORY[0x1E6972F30]];
        v34 = [a5 objectForKey:*MEMORY[0x1E6972F18]];
        v35 = [v32 copy];
        [v35 setImmutable];
        [v14 setObject:v35 forKey:@"InterstitialEventDidFinishEventKey"];
        [v14 setObject:v33 forKey:@"InterstitialEventDidFinishPlayoutTimeKey"];
        [v14 setObject:v34 forKey:@"InterstitialEventDidFinishDidPlayEntireEventKey"];
        v9 = [MEMORY[0x1E696AD88] defaultCenter];
        v23 = MEMORY[0x1E696AD80];
        v24 = @"InterstitialEventDidFinish";
      }

LABEL_30:
      v12 = [v23 notificationWithName:v24 object:a2 userInfo:v14];
      goto LABEL_6;
    }

    v14 = [MEMORY[0x1E695DF90] dictionary];
    v15 = [objc_msgSend(a5 objectForKey:{*MEMORY[0x1E6972EC8]), "copy"}];
    [v15 setImmutable];
    v16 = [objc_msgSend(a5 objectForKey:{*MEMORY[0x1E6972ED0]), "intValue"}];
    [v14 setObject:v15 forKey:@"AssetListResponseStatusDidChangeEventKey"];
    if (v16 == 2)
    {
      v27 = [a5 objectForKey:*MEMORY[0x1E6972EC0]];
      [v14 setObject:&unk_1F0AD3460 forKey:@"AssetListResponseStatusDidChangeStatusKey"];
      v25 = @"AssetListResponseStatusDidChangeErrorKey";
      v26 = v14;
      v17 = v27;
    }

    else
    {
      if (v16 == 1)
      {
        v17 = &unk_1F0AD3448;
      }

      else
      {
        if (v16)
        {
LABEL_29:
          v9 = [MEMORY[0x1E696AD88] defaultCenter];
          v23 = MEMORY[0x1E696AD80];
          v24 = @"AssetListResponseStatusDidChangeNotification";
          goto LABEL_30;
        }

        v17 = &unk_1F0AD3430;
      }

      v25 = @"AssetListResponseStatusDidChangeStatusKey";
      v26 = v14;
    }

    [v26 setObject:v17 forKey:v25];
    goto LABEL_29;
  }

  v13 = [a5 objectForKey:*MEMORY[0x1E6972EB0]];
  [a2 _removeMonitorListeners];
  if (v13)
  {
    [a2 _addMonitorListeners:v13];
  }

  [a2 _setCachedCurrentEvent:0];
LABEL_7:

  objc_autoreleasePoolPop(v8);
}

void sub_1960CB2BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1960CB3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1960CBB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1960CCAFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960CCB9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1960CCEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960CCFE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960CD148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960CD3BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960CE8A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960CF010(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1960CF9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose((v46 - 232), 8);
  _Block_object_dispose((v46 - 184), 8);
  _Block_object_dispose((v46 - 136), 8);
  _Block_object_dispose((v46 - 104), 8);
  _Unwind_Resume(a1);
}

void sub_1960D02EC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 96), 8);
  _Block_object_dispose((v1 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1960D0624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960D10C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  AVTelemetryIntervalEnd((v7 - 24));
  _Unwind_Resume(a1);
}

void sub_1960D13E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960D1510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960D15D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void AVFigPlaybackItemNotificationCallback_FigPlaybackItemLegibleOutputChanged(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = objc_autoreleasePoolPush();
  v9 = [a5 objectForKey:*MEMORY[0x1E6972718]];
  memset(&v13, 0, sizeof(v13));
  CMTimeMakeFromDictionary(&v13, [a5 objectForKey:*MEMORY[0x1E69726F8]]);
  v10 = [a5 objectForKey:*MEMORY[0x1E6972720]];
  v11 = [a5 objectForKey:*MEMORY[0x1E6972728]];
  v12 = v13;
  [a2 _figPlaybackItem:a4 didOutputAttributedStrings:v9 nativeSampleBuffers:v11 atItemTime:&v12 withLegibleOutputsDictionaryKey:v10];
  objc_autoreleasePoolPop(v8);
}

void AVFigPlaybackItemNotificationCallback_FigPlaybackItemLegibleOutputWasFlushed(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = objc_autoreleasePoolPush();
  [a2 _figPlaybackItem:a4 didFlushLegibleOutputWithDictionaryKey:{objc_msgSend(a5, "objectForKey:", *MEMORY[0x1E6972720])}];

  objc_autoreleasePoolPop(v8);
}

void AVFigPlaybackItemNotificationCallback_MetadataOutputChanged(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = objc_autoreleasePoolPush();
  v9 = [a5 objectForKey:*MEMORY[0x1E6972730]];
  v10 = [a5 objectForKey:*MEMORY[0x1E6972778]];
  [a2 _figPlaybackItem:a4 didOutputSampleBuffers:v10 fromTrackWithID:objc_msgSend(objc_msgSend(a5 forMetadataOutputWithDictionaryKey:{"objectForKey:", *MEMORY[0x1E6972790]), "unsignedIntValue"), v9}];

  objc_autoreleasePoolPop(v8);
}

void AVFigPlaybackItemNotificationCallback_MetadataOutputWasFlushed(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = objc_autoreleasePoolPush();
  [a2 _figPlaybackItem:a4 didFlushMetadataOutputWithDictionaryKey:{objc_msgSend(a5, "objectForKey:", *MEMORY[0x1E6972730])}];

  objc_autoreleasePoolPop(v8);
}

void AVFigPlaybackItemNotificationCallback_TaggedMetadataArrayChanged(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = objc_autoreleasePoolPush();
  [a2 _updateTaggedMetadataArray:{objc_msgSend(a5, "objectForKey:", *MEMORY[0x1E69726D8])}];

  objc_autoreleasePoolPop(v7);
}

void AVFigPlaybackItemNotificationCallback_FigPlaybackItemRenderedLegibleOutputChanged(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  context = objc_autoreleasePoolPush();
  v8 = [a5 objectForKey:*MEMORY[0x1E6972750]];
  v9 = [a5 objectForKey:*MEMORY[0x1E6972758]];
  memset(&v19, 0, sizeof(v19));
  CMTimeMakeFromDictionary(&v19, [a5 objectForKey:*MEMORY[0x1E69726F8]]);
  v10 = [a5 objectForKey:*MEMORY[0x1E6972748]];
  v11 = [MEMORY[0x1E695DF70] array];
  if ([v8 count])
  {
    v12 = 0;
    v13 = MEMORY[0x1E695EFF8];
    do
    {
      point.x = 0.0;
      point.y = 0.0;
      if (v9 && [v9 count])
      {
        CGPointMakeWithDictionaryRepresentation([v9 objectAtIndexedSubscript:v12], &point);
      }

      else
      {
        point = *v13;
      }

      v14 = [AVRenderedCaptionImage alloc];
      v15 = [v8 objectAtIndexedSubscript:v12];
      [v11 addObject:{-[AVRenderedCaptionImage initWithPixelBuffer:atPosition:](v14, "initWithPixelBuffer:atPosition:", v15, point.x, point.y)}];
      ++v12;
    }

    while (v12 < [v8 count]);
  }

  point = *&v19.value;
  epoch = v19.epoch;
  [a2 _figPlaybackItem:a4 didOutputRenderedCaptionImages:v11 atItemTime:&point withRenderedLegibleOutputsDictionaryKey:v10];
  objc_autoreleasePoolPop(context);
}

void AVFigPlaybackItemNotificationCallback_FigPlaybackItemRenderedLegibleOutputWasFlushed(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = objc_autoreleasePoolPush();
  [a2 _figPlaybackItem:a4 didFlushRenderedLegibleOutputWithDictionaryKey:{objc_msgSend(a5, "objectForKey:", *MEMORY[0x1E6972748])}];

  objc_autoreleasePoolPop(v8);
}

void cmTimebaseNotificationCallback_TimeJumped(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E696AD80] notificationWithName:@"AVPlayerItemTimeJumpedNotification" object:a2 userInfo:0];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

  objc_autoreleasePoolPop(v3);
}

void sub_1960D2FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960D31C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960D3408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960D3500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960D35F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960D3808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960D38E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960D39E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960D3EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960D4240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960D4514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960D46E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960D47D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1960D5D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960D5FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960D6210(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1960D6328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960D66C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960D6A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960D6EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960D72F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960D7734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960D7838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960D7B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960D7C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960D7F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960D8010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960D8340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960D8420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960D8714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960D87F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960D8AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960D8BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960D8F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960D93A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960D96E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960D987C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960D9C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960DA2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960DA6A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960DA9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960DACB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960DAF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960DB274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960DB354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960DB6AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960DB798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960DBA80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960DBD64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960DBE44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960DC164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960DC250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960DC574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960DC654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960DC94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960DCC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  AVTelemetryIntervalEnd((v8 - 24));
  _Unwind_Resume(a1);
}

void sub_1960DCE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960DE12C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1960DE3FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1960DE5CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1960DE880(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 88), 8);
  AVTelemetryIntervalEnd((v1 - 56));
  _Unwind_Resume(a1);
}

void sub_1960DF494(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1960DF59C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  AVTelemetryIntervalEnd((v8 - 24));
  _Unwind_Resume(a1);
}

void sub_1960DF860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  AVTelemetryIntervalEnd((v8 - 40));
  _Unwind_Resume(a1);
}

void sub_1960DF964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960DFE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960DFF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960E0398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960E0A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  AVTelemetryIntervalEnd((v8 - 24));
  _Unwind_Resume(a1);
}

void sub_1960E0C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  AVTelemetryIntervalEnd((v8 - 24));
  _Unwind_Resume(a1);
}

void sub_1960E1014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  AVTelemetryIntervalEnd((v8 - 24));
  _Unwind_Resume(a1);
}

void sub_1960E1BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960E1D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960E2144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960E2274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960E2C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960E3018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960E3374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960E3454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960E3754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960E3834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960E3B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960E3C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960E3D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960E3F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960E46FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1960E49A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1960E525C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960E5664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35)
{
  _Block_object_dispose(&a29, 8);
  AVTelemetryIntervalEnd(&a35);
  _Unwind_Resume(a1);
}

void sub_1960E57F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960E5D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1960E62F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960E6670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960E6750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960E6830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960E6A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960E6F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960E6FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960E72A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960E7560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960E7844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960E7B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  AVTelemetryIntervalEnd((v8 - 40));
  _Unwind_Resume(a1);
}

void sub_1960E7F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  AVTelemetryIntervalEnd((v8 - 40));
  _Unwind_Resume(a1);
}

void sub_1960E8330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  AVTelemetryIntervalEnd((v8 - 40));
  _Unwind_Resume(a1);
}

void sub_1960E86C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960E8A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  AVTelemetryIntervalEnd((v8 - 40));
  _Unwind_Resume(a1);
}

void sub_1960E8EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960E9384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960E9648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960E9764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  AVTelemetryIntervalEnd((v8 - 24));
  _Unwind_Resume(a1);
}

void sub_1960E9ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960E9DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960EA334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960EA684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960EA790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960EAAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960EAE14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960EAFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1960EB4EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1960EB624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *AVPlayerItemAVFTimeJumpReasonForFigReason(int a1)
{
  if ((a1 - 1) > 5)
  {
    return @"AVPlayerItemTimeJumpedReasonUnknown";
  }

  else
  {
    return off_1E74633E8[a1 - 1];
  }
}

void sub_1960EBBA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960EBC94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960EBFDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960EC0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960EC548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960EC628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960EC918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960ECD70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960ED05C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960EDD20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960EE3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960EF1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960EF82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960F00F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1960F0248(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1960F0C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960F0D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960F0EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960F0FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960F2850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  AVTelemetryIntervalEnd((v8 - 24));
  _Unwind_Resume(a1);
}

void sub_1960F2D6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1960F2E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t needsTaggedRanges()
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

void sub_1960F3088(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1960F32FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960F342C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960F3904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960F3D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960F3F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960F41F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960F43B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960F46A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960F4AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960F4D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960F4EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960F53A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960F5598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960F5784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960F5948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960F5ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960F5D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}