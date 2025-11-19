__CFString *MTRRequestCommandNameForID(uint64_t a1, uint64_t a2)
{
  if (a1 <= 256)
  {
    switch(a1)
    {
      case 3:
        if (a2)
        {
          if (a2 != 64)
          {
            goto LABEL_382;
          }

          v2 = @"TriggerEffect";
        }

        else
        {
          v2 = @"Identify";
        }

        goto LABEL_388;
      case 4:
        if (a2 >= 6)
        {
          goto LABEL_382;
        }

        v3 = off_278A71738;
        goto LABEL_283;
      case 5:
      case 7:
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
      case 20:
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
      case 38:
      case 39:
      case 58:
      case 61:
      case 66:
      case 67:
      case 68:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 88:
      case 90:
      case 99:
      case 100:
      case 101:
      case 102:
      case 103:
      case 104:
      case 105:
      case 106:
      case 107:
      case 108:
      case 109:
      case 110:
      case 111:
      case 112:
      case 115:
      case 116:
      case 117:
      case 118:
      case 119:
      case 120:
      case 121:
      case 122:
      case 123:
      case 124:
      case 125:
      case 126:
      case 127:
      case 130:
      case 131:
      case 132:
      case 133:
      case 134:
      case 135:
      case 136:
      case 137:
      case 138:
      case 139:
      case 140:
      case 141:
      case 142:
      case 143:
      case 146:
      case 147:
      case 150:
      case 154:
        goto LABEL_125;
      case 6:
        if (a2 > 63)
        {
          switch(a2)
          {
            case '@':
              v2 = @"OffWithEffect";
              break;
            case 'A':
              v2 = @"OnWithRecallGlobalScene";
              break;
            case 'B':
              v2 = @"OnWithTimedOff";
              break;
            default:
              goto LABEL_382;
          }
        }

        else if (a2)
        {
          if (a2 == 1)
          {
            v2 = @"On";
          }

          else
          {
            if (a2 != 2)
            {
              goto LABEL_382;
            }

            v2 = @"Toggle";
          }
        }

        else
        {
          v2 = @"Off";
        }

        goto LABEL_388;
      case 8:
        if (a2 >= 9)
        {
          goto LABEL_382;
        }

        v3 = off_278A71768;
        goto LABEL_283;
      case 28:
      case 29:
      case 30:
      case 40:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 59:
      case 64:
      case 65:
      case 69:
      case 74:
      case 83:
      case 87:
      case 91:
      case 94:
      case 144:
      case 145:
      case 155:
      case 156:
      case 160:
        goto LABEL_382;
      case 31:
        if (a2)
        {
          goto LABEL_382;
        }

        v2 = @"ReviewFabricRestrictions";
        goto LABEL_388;
      case 37:
        if (a2 >= 0xC)
        {
          goto LABEL_382;
        }

        v3 = off_278A717B0;
        goto LABEL_283;
      case 41:
        if (a2)
        {
          if (a2 == 4)
          {
            v2 = @"NotifyUpdateApplied";
          }

          else
          {
            if (a2 != 2)
            {
              goto LABEL_382;
            }

            v2 = @"ApplyUpdateRequest";
          }
        }

        else
        {
          v2 = @"QueryImage";
        }

        goto LABEL_388;
      case 42:
        if (a2)
        {
          goto LABEL_382;
        }

        v2 = @"AnnounceOTAProvider";
        goto LABEL_388;
      case 48:
        if (a2 >= 7 || ((0x55u >> a2) & 1) == 0)
        {
          goto LABEL_382;
        }

        v3 = off_278A71810;
        goto LABEL_283;
      case 49:
        if (a2 >= 0xA || ((0x35Du >> a2) & 1) == 0)
        {
          goto LABEL_382;
        }

        v3 = off_278A71848;
        goto LABEL_283;
      case 50:
        if (a2)
        {
          goto LABEL_382;
        }

        v2 = @"RetrieveLogsRequest";
        goto LABEL_388;
      case 51:
        if (a2)
        {
          if (a2 == 3)
          {
            v2 = @"PayloadTestRequest";
          }

          else
          {
            if (a2 != 1)
            {
              goto LABEL_382;
            }

            v2 = @"TimeSnapshot";
          }
        }

        else
        {
          v2 = @"TestEventTrigger";
        }

        goto LABEL_388;
      case 52:
        if (a2)
        {
          goto LABEL_382;
        }

        v2 = @"ResetWatermarks";
        goto LABEL_388;
      case 53:
      case 54:
      case 55:
        if (a2)
        {
          goto LABEL_382;
        }

        v2 = @"ResetCounts";
        goto LABEL_388;
      case 56:
        if (a2 >= 6 || ((0x37u >> a2) & 1) == 0)
        {
          goto LABEL_382;
        }

        v3 = off_278A71898;
        goto LABEL_283;
      case 57:
        if (a2 != 128)
        {
          goto LABEL_382;
        }

        v2 = @"KeepActive";
        goto LABEL_388;
      case 60:
        if (a2 >= 3)
        {
          goto LABEL_382;
        }

        v3 = off_278A718C8;
        goto LABEL_283;
      case 62:
        if (a2 >= 0xE || ((0x3ED5u >> a2) & 1) == 0)
        {
          goto LABEL_382;
        }

        v3 = off_278A718E0;
        goto LABEL_283;
      case 63:
        if (a2 >= 5 || ((0x1Bu >> a2) & 1) == 0)
        {
          goto LABEL_382;
        }

        v3 = off_278A71950;
        goto LABEL_283;
      case 70:
        if (a2)
        {
          if (a2 == 3)
          {
            v2 = @"StayActiveRequest";
          }

          else
          {
            if (a2 != 2)
            {
              goto LABEL_382;
            }

            v2 = @"UnregisterClient";
          }
        }

        else
        {
          v2 = @"RegisterClient";
        }

        goto LABEL_388;
      case 71:
        if (a2 >= 4)
        {
          goto LABEL_382;
        }

        v3 = off_278A71978;
        goto LABEL_283;
      case 72:
        if (a2 == 1)
        {
          v2 = @"Stop";
        }

        else
        {
          if (a2 != 2)
          {
            goto LABEL_382;
          }

          v2 = @"Start";
        }

        goto LABEL_388;
      case 73:
      case 80:
      case 81:
      case 82:
      case 84:
      case 85:
      case 89:
      case 157:
      case 158:
      case 159:
        if (a2)
        {
          goto LABEL_382;
        }

        v2 = @"ChangeToMode";
        goto LABEL_388;
      case 86:
        if (a2)
        {
          goto LABEL_382;
        }

        v2 = @"SetTemperature";
        goto LABEL_388;
      case 92:
        if (a2)
        {
          goto LABEL_382;
        }

        v2 = @"SelfTestRequest";
        goto LABEL_388;
      case 93:
        if (a2)
        {
          if (a2 != 1)
          {
            goto LABEL_382;
          }

          v2 = @"ModifyEnabledAlarms";
        }

        else
        {
          v2 = @"Reset";
        }

        goto LABEL_388;
      case 95:
        if (a2)
        {
          if (a2 != 1)
          {
            goto LABEL_382;
          }

          v2 = @"AddMoreTime";
        }

        else
        {
          v2 = @"SetCookingParameters";
        }

        goto LABEL_388;
      case 96:
        if (a2 >= 4)
        {
          goto LABEL_382;
        }

        v3 = off_278A71998;
        goto LABEL_283;
      case 97:
        if (a2)
        {
          if (a2 == 128)
          {
            v2 = @"GoHome";
          }

          else
          {
            if (a2 != 3)
            {
              goto LABEL_382;
            }

            v2 = @"Resume";
          }
        }

        else
        {
          v2 = @"Pause";
        }

        goto LABEL_388;
      case 98:
        if (a2 > 3)
        {
          if (a2 > 5)
          {
            if (a2 == 6)
            {
              v2 = @"GetSceneMembership";
            }

            else
            {
              if (a2 != 64)
              {
                goto LABEL_382;
              }

              v2 = @"CopyScene";
            }
          }

          else if (a2 == 4)
          {
            v2 = @"StoreScene";
          }

          else
          {
            v2 = @"RecallScene";
          }
        }

        else if (a2 > 1)
        {
          if (a2 == 2)
          {
            v2 = @"RemoveScene";
          }

          else
          {
            v2 = @"RemoveAllScenes";
          }
        }

        else if (a2)
        {
          if (a2 != 1)
          {
            goto LABEL_382;
          }

          v2 = @"ViewScene";
        }

        else
        {
          v2 = @"AddScene";
        }

        goto LABEL_388;
      case 113:
      case 114:
        if (a2)
        {
          goto LABEL_382;
        }

        v2 = @"ResetCondition";
        goto LABEL_388;
      case 128:
        if (a2)
        {
          if (a2 != 1)
          {
            goto LABEL_382;
          }

          v2 = @"EnableDisableAlarm";
        }

        else
        {
          v2 = @"SuppressAlarm";
        }

        goto LABEL_388;
      case 129:
        if (a2)
        {
          if (a2 != 1)
          {
            goto LABEL_382;
          }

          v2 = @"Close";
        }

        else
        {
          v2 = @"Open";
        }

        goto LABEL_388;
      case 148:
        if (a2)
        {
          if (a2 != 1)
          {
            goto LABEL_382;
          }

          v2 = @"CancelBoost";
        }

        else
        {
          v2 = @"Boost";
        }

        goto LABEL_388;
      case 149:
        if (a2)
        {
          if (a2 != 2)
          {
            goto LABEL_382;
          }

          v2 = @"GetDetailedForecastRequest";
        }

        else
        {
          v2 = @"GetDetailedPriceRequest";
        }

        goto LABEL_388;
      case 151:
        if (a2)
        {
          if (a2 != 1)
          {
            goto LABEL_382;
          }

          v2 = @"CancelMessagesRequest";
        }

        else
        {
          v2 = @"PresentMessagesRequest";
        }

        goto LABEL_388;
      case 152:
        if (a2 >= 8)
        {
          goto LABEL_382;
        }

        v3 = off_278A719B8;
        goto LABEL_283;
      case 153:
        if ((a2 - 1) >= 7)
        {
          goto LABEL_382;
        }

        v2 = off_278A719F8[(a2 - 1)];
        goto LABEL_388;
      default:
        if (a1 == -918523)
        {
          v2 = @"Test";
          switch(a2)
          {
            case 0:
              goto LABEL_388;
            case 1:
              v2 = @"TestNotHandled";
              break;
            case 2:
              v2 = @"TestSpecific";
              break;
            case 3:
              v2 = @"TestUnknownCommand";
              break;
            case 4:
              v2 = @"TestAddArguments";
              break;
            case 5:
              v2 = @"TestSimpleArgumentRequest";
              break;
            case 6:
              v2 = @"TestStructArrayArgumentRequest";
              break;
            case 7:
              v2 = @"TestStructArgumentRequest";
              break;
            case 8:
              v2 = @"TestNestedStructArgumentRequest";
              break;
            case 9:
              v2 = @"TestListStructArgumentRequest";
              break;
            case 10:
              v2 = @"TestListInt8UArgumentRequest";
              break;
            case 11:
              v2 = @"TestNestedStructListArgumentRequest";
              break;
            case 12:
              v2 = @"TestListNestedStructListArgumentRequest";
              break;
            case 13:
              v2 = @"TestListInt8UReverseRequest";
              break;
            case 14:
              v2 = @"TestEnumsRequest";
              break;
            case 15:
              v2 = @"TestNullableOptionalRequest";
              break;
            case 16:
              v2 = @"TestComplexNullableOptionalRequest";
              break;
            case 17:
              v2 = @"SimpleStructEchoRequest";
              break;
            case 18:
              v2 = @"TimedInvokeRequest";
              break;
            case 19:
              v2 = @"TestSimpleOptionalArgumentRequest";
              break;
            case 20:
              v2 = @"TestEmitTestEventRequest";
              break;
            case 21:
              v2 = @"TestEmitTestFabricScopedEventRequest";
              break;
            case 22:
              v2 = @"TestBatchHelperRequest";
              break;
            case 23:
              v2 = @"TestSecondBatchHelperRequest";
              break;
            case 24:
              v2 = @"StringEchoRequest";
              break;
            case 25:
              v2 = @"GlobalEchoRequest";
              break;
            case 26:
              v2 = @"TestCheckCommandFlags";
              break;
            default:
              if (a2 != -917334)
              {
                goto LABEL_385;
              }

              v2 = @"TestDifferentVendorMeiRequest";
              break;
          }
        }

        else
        {
          if (a1 != -918496)
          {
            goto LABEL_125;
          }

          if (a2)
          {
            if (a2 != 2)
            {
              goto LABEL_385;
            }

            v2 = @"AddArguments";
          }

          else
          {
            v2 = @"Ping";
          }
        }

        break;
    }

    goto LABEL_388;
  }

  if (a1 > 1282)
  {
    if (a1 <= 1361)
    {
      switch(a1)
      {
        case 1283:
        case 1293:
          goto LABEL_385;
        case 1284:
          if (a2 >= 8 || ((0xDDu >> a2) & 1) == 0)
          {
            goto LABEL_385;
          }

          v3 = off_278A71AD0;
          goto LABEL_283;
        case 1285:
          if (a2)
          {
            goto LABEL_385;
          }

          v2 = @"NavigateTarget";
          goto LABEL_388;
        case 1286:
          if (a2 >= 0xF || ((0x7BFFu >> a2) & 1) == 0)
          {
            goto LABEL_385;
          }

          v3 = off_278A71B10;
          goto LABEL_283;
        case 1287:
          if (a2 >= 4)
          {
            goto LABEL_385;
          }

          v3 = off_278A71B88;
          goto LABEL_283;
        case 1288:
          if (a2)
          {
            goto LABEL_385;
          }

          v2 = @"Sleep";
          goto LABEL_388;
        case 1289:
          if (a2)
          {
            goto LABEL_385;
          }

          v2 = @"SendKey";
          goto LABEL_388;
        case 1290:
          if (a2)
          {
            if (a2 != 1)
            {
              goto LABEL_385;
            }

            v2 = @"LaunchURL";
          }

          else
          {
            v2 = @"LaunchContent";
          }

          goto LABEL_388;
        case 1291:
          if (a2)
          {
            if (a2 != 1)
            {
              goto LABEL_385;
            }

            v2 = @"RenameOutput";
          }

          else
          {
            v2 = @"SelectOutput";
          }

          goto LABEL_388;
        case 1292:
          if (a2 >= 3)
          {
            goto LABEL_385;
          }

          v3 = off_278A71BA8;
          goto LABEL_283;
        case 1294:
          if (a2)
          {
            if (a2 == 3)
            {
              v2 = @"Logout";
            }

            else
            {
              if (a2 != 2)
              {
                goto LABEL_385;
              }

              v2 = @"Login";
            }
          }

          else
          {
            v2 = @"GetSetupPIN";
          }

          goto LABEL_388;
        case 1295:
          if (a2 >= 0xB || ((0x7FBu >> a2) & 1) == 0)
          {
            goto LABEL_385;
          }

          v3 = off_278A71BC0;
          goto LABEL_283;
        case 1296:
          if (a2)
          {
            goto LABEL_385;
          }

          v2 = @"ContentAppMessage";
          goto LABEL_388;
        default:
          if (a1 == 1360)
          {
            if (a2 < 6 && ((0x3Du >> a2) & 1) != 0)
            {
              v3 = off_278A71C18;
              goto LABEL_283;
            }
          }

          else
          {
            if (a1 != 1361)
            {
              goto LABEL_125;
            }

            if (a2 < 0xD && ((0x1EEDu >> a2) & 1) != 0)
            {
              v3 = off_278A71C48;
              goto LABEL_283;
            }
          }

          break;
      }

      goto LABEL_385;
    }

    if (a1 > 1873)
    {
      if (a1 > 2821)
      {
        if (a1 > 323615743)
        {
          if (a1 == 323615744 || a1 == 323615747)
          {
            goto LABEL_385;
          }
        }

        else if (a1 == 2822 || a1 == 2823)
        {
          goto LABEL_385;
        }
      }

      else if (a1 > 2048)
      {
        if (a1 == 2049)
        {
          if (a2 < 0xF && ((0x56D5u >> a2) & 1) != 0)
          {
            v3 = off_278A71E60;
            goto LABEL_283;
          }

          goto LABEL_385;
        }

        if (a1 == 2050)
        {
          switch(a2)
          {
            case 0:
              v2 = @"ProvisionEndpoint";
              goto LABEL_388;
            case 4:
              v2 = @"RemoveEndpoint";
              goto LABEL_388;
            case 2:
              v2 = @"FindEndpoint";
              goto LABEL_388;
          }

          goto LABEL_385;
        }
      }

      else
      {
        if (a1 == 1874)
        {
          if (a2 < 0x14)
          {
            v3 = off_278A71D78;
            goto LABEL_283;
          }

          goto LABEL_385;
        }

        if (a1 == 1875)
        {
          if (a2 < 9 && ((0x1B5u >> a2) & 1) != 0)
          {
            v3 = off_278A71E18;
            goto LABEL_283;
          }

LABEL_385:
          v4 = MEMORY[0x277CCACA8];
LABEL_386:
          [v4 stringWithFormat:@"<Unknown commandID %u>", a2];
          goto LABEL_387;
        }
      }
    }

    else
    {
      if (a1 <= 1365)
      {
        if (a1 > 1363)
        {
          if (a1 == 1364)
          {
            if (a2 < 4)
            {
              v3 = off_278A71D20;
              goto LABEL_283;
            }
          }

          else if (a2 < 7 && ((0x7Du >> a2) & 1) != 0)
          {
            v3 = off_278A71D40;
            goto LABEL_283;
          }
        }

        else if (a1 == 1362)
        {
          if (a2 < 7)
          {
            v3 = off_278A71CB0;
            goto LABEL_283;
          }
        }

        else if (a2 < 7 && ((0x75u >> a2) & 1) != 0)
        {
          v3 = off_278A71CE8;
LABEL_283:
          v2 = v3[a2];
          goto LABEL_388;
        }

        goto LABEL_385;
      }

      if (a1 > 1871)
      {
        if (a1 != 1872)
        {
          if (!a2)
          {
            v2 = @"RequestCommissioningApproval";
            goto LABEL_388;
          }

          if (a2 == 1)
          {
            v2 = @"CommissionNode";
            goto LABEL_388;
          }
        }

        goto LABEL_385;
      }

      if (a1 == 1366)
      {
        if (!a2)
        {
          v2 = @"PlayChimeSound";
          goto LABEL_388;
        }

        goto LABEL_385;
      }

      if (a1 == 1792)
      {
        if (!a2)
        {
          v2 = @"GetTariffComponent";
          goto LABEL_388;
        }

        if (a2 == 1)
        {
          v2 = @"GetDayEntry";
          goto LABEL_388;
        }

        goto LABEL_385;
      }
    }

    goto LABEL_125;
  }

  if (a1 > 1028)
  {
    if (a1 > 1067)
    {
      if (a1 <= 1071)
      {
        goto LABEL_385;
      }

      if (a1 > 1105)
      {
        if (a1 == 1106)
        {
          if (a2 < 5 && ((0x1Bu >> a2) & 1) != 0)
          {
            v3 = off_278A71A90;
            goto LABEL_283;
          }

          goto LABEL_385;
        }

        if (a1 == 1107)
        {
          if (a2 < 3)
          {
            v3 = off_278A71AB8;
            goto LABEL_283;
          }

          goto LABEL_385;
        }
      }

      else
      {
        if (a1 == 1072)
        {
          goto LABEL_385;
        }

        if (a1 == 1105)
        {
          if (!a2)
          {
            v2 = @"NetworkPassphraseRequest";
            goto LABEL_388;
          }

          goto LABEL_385;
        }
      }
    }

    else if (a1 > 1042)
    {
      if (a1 > 1065 || a1 == 1043 || a1 == 1045)
      {
        goto LABEL_385;
      }
    }

    else if (a1 > 1035)
    {
      if (a1 == 1036 || a1 == 1037)
      {
        goto LABEL_385;
      }
    }

    else if (a1 == 1029 || a1 == 1030)
    {
      goto LABEL_385;
    }

    goto LABEL_125;
  }

  if (a1 > 513)
  {
    if (a1 > 1023)
    {
      if (a1 > 1026 || a1 == 1024 || a1 == 1026)
      {
        goto LABEL_385;
      }
    }

    else if (a1 > 767)
    {
      if (a1 == 768)
      {
        if (a2 <= 8)
        {
          if (a2 > 3)
          {
            if (a2 <= 5)
            {
              if (a2 == 4)
              {
                v2 = @"MoveSaturation";
              }

              else
              {
                v2 = @"StepSaturation";
              }
            }

            else if (a2 == 6)
            {
              v2 = @"MoveToHueAndSaturation";
            }

            else if (a2 == 7)
            {
              v2 = @"MoveToColor";
            }

            else
            {
              v2 = @"MoveColor";
            }

            goto LABEL_388;
          }

          if (a2 > 1)
          {
            if (a2 == 2)
            {
              v2 = @"StepHue";
            }

            else
            {
              v2 = @"MoveToSaturation";
            }

            goto LABEL_388;
          }

          if (!a2)
          {
            v2 = @"MoveToHue";
            goto LABEL_388;
          }

          if (a2 == 1)
          {
            v2 = @"MoveHue";
            goto LABEL_388;
          }
        }

        else if (a2 > 66)
        {
          if (a2 <= 70)
          {
            if (a2 == 67)
            {
              v2 = @"EnhancedMoveToHueAndSaturation";
              goto LABEL_388;
            }

            if (a2 == 68)
            {
              v2 = @"ColorLoopSet";
              goto LABEL_388;
            }
          }

          else
          {
            switch(a2)
            {
              case 'G':
                v2 = @"StopMoveStep";
                goto LABEL_388;
              case 'K':
                v2 = @"MoveColorTemperature";
                goto LABEL_388;
              case 'L':
                v2 = @"StepColorTemperature";
                goto LABEL_388;
            }
          }
        }

        else
        {
          if (a2 > 63)
          {
            if (a2 == 64)
            {
              v2 = @"EnhancedMoveToHue";
            }

            else if (a2 == 65)
            {
              v2 = @"EnhancedMoveHue";
            }

            else
            {
              v2 = @"EnhancedStepHue";
            }

            goto LABEL_388;
          }

          if (a2 == 9)
          {
            v2 = @"StepColor";
            goto LABEL_388;
          }

          if (a2 == 10)
          {
            v2 = @"MoveToColorTemperature";
            goto LABEL_388;
          }
        }

        v4 = MEMORY[0x277CCACA8];
        goto LABEL_386;
      }

      if (a1 == 769)
      {
        goto LABEL_385;
      }
    }

    else
    {
      if (a1 == 514)
      {
        if (!a2)
        {
          v2 = @"Step";
          goto LABEL_388;
        }

        goto LABEL_385;
      }

      if (a1 == 516)
      {
        goto LABEL_385;
      }
    }

    goto LABEL_125;
  }

  if (a1 > 260)
  {
    if (a1 > 511)
    {
      if (a1 != 512)
      {
        if (a2 <= 4)
        {
          if (a2 > 1)
          {
            if (a2 == 2)
            {
              v2 = @"GetWeeklySchedule";
              goto LABEL_388;
            }

            if (a2 == 3)
            {
              v2 = @"ClearWeeklySchedule";
              goto LABEL_388;
            }
          }

          else
          {
            if (!a2)
            {
              v2 = @"SetpointRaiseLower";
              goto LABEL_388;
            }

            if (a2 == 1)
            {
              v2 = @"SetWeeklySchedule";
              goto LABEL_388;
            }
          }
        }

        else
        {
          if (a2 <= 6)
          {
            if (a2 == 5)
            {
              v2 = @"SetActiveScheduleRequest";
            }

            else
            {
              v2 = @"SetActivePresetRequest";
            }

            goto LABEL_388;
          }

          switch(a2)
          {
            case 7:
              v2 = @"AddThermostatSuggestion";
              goto LABEL_388;
            case 8:
              v2 = @"RemoveThermostatSuggestion";
              goto LABEL_388;
            case 0xFE:
              v2 = @"AtomicRequest";
              goto LABEL_388;
          }
        }
      }

      goto LABEL_385;
    }

    if (a1 == 261)
    {
      if (!a2)
      {
        v2 = @"SetTarget";
        goto LABEL_388;
      }

      if (a2 == 1)
      {
        v2 = @"Step";
        goto LABEL_388;
      }

      goto LABEL_385;
    }

    if (a1 == 336)
    {
      if (!a2)
      {
        v2 = @"SelectAreas";
        goto LABEL_388;
      }

      if (a2 == 2)
      {
        v2 = @"SkipArea";
        goto LABEL_388;
      }

      goto LABEL_385;
    }

LABEL_125:
    [MEMORY[0x277CCACA8] stringWithFormat:@"<Unknown clusterID %u>", a1];
    goto LABEL_387;
  }

  if (a1 != 257)
  {
    if (a1 == 258)
    {
      if (a2 < 9 && ((0x1B7u >> a2) & 1) != 0)
      {
        v3 = off_278A71A30;
        goto LABEL_283;
      }

      goto LABEL_385;
    }

    if (a1 == 260)
    {
      if (a2 < 3)
      {
        v3 = off_278A71A78;
        goto LABEL_283;
      }

      goto LABEL_385;
    }

    goto LABEL_125;
  }

  if (a2 > 323551231)
  {
    if (a2 <= 323551233)
    {
      if (a2 == 323551232)
      {
        v2 = @"AppleSetAliroCredential";
      }

      else
      {
        v2 = @"AppleGetAliroCredentialStatus";
      }

      goto LABEL_388;
    }

    switch(a2)
    {
      case 0x13490002:
        v2 = @"AppleClearAliroCredential";
        goto LABEL_388;
      case 0x13490003:
        v2 = @"AppleSetAliroReaderConfig";
        goto LABEL_388;
      case 0x13490004:
        v2 = @"AppleClearAliroReaderConfig";
        goto LABEL_388;
    }

LABEL_382:
    [MEMORY[0x277CCACA8] stringWithFormat:@"<Unknown commandID %u>", a2];
    v2 = LABEL_387:;
    goto LABEL_388;
  }

  v2 = @"LockDoor";
  switch(a2)
  {
    case 0:
      break;
    case 1:
      v2 = @"UnlockDoor";
      break;
    case 3:
      v2 = @"UnlockWithTimeout";
      break;
    case 11:
      v2 = @"SetWeekDaySchedule";
      break;
    case 12:
      v2 = @"GetWeekDaySchedule";
      break;
    case 13:
      v2 = @"ClearWeekDaySchedule";
      break;
    case 14:
      v2 = @"SetYearDaySchedule";
      break;
    case 15:
      v2 = @"GetYearDaySchedule";
      break;
    case 16:
      v2 = @"ClearYearDaySchedule";
      break;
    case 17:
      v2 = @"SetHolidaySchedule";
      break;
    case 18:
      v2 = @"GetHolidaySchedule";
      break;
    case 19:
      v2 = @"ClearHolidaySchedule";
      break;
    case 26:
      v2 = @"SetUser";
      break;
    case 27:
      v2 = @"GetUser";
      break;
    case 29:
      v2 = @"ClearUser";
      break;
    case 34:
      v2 = @"SetCredential";
      break;
    case 36:
      v2 = @"GetCredentialStatus";
      break;
    case 38:
      v2 = @"ClearCredential";
      break;
    case 39:
      v2 = @"UnboltDoor";
      break;
    case 40:
      v2 = @"SetAliroReaderConfig";
      break;
    case 41:
      v2 = @"ClearAliroReaderConfig";
      break;
    default:
      goto LABEL_382;
  }

LABEL_388:

  return v2;
}

__CFString *MTRResponseCommandNameForID(uint64_t a1, uint64_t a2)
{
  if (a1 > 256)
  {
    if (a1 <= 1282)
    {
      if (a1 <= 1028)
      {
        if (a1 <= 513)
        {
          if (a1 <= 260)
          {
            if (a1 == 257)
            {
              if (a2 > 27)
              {
                switch(a2)
                {
                  case 0x1C:
                    v3 = @"GetUserResponse";
                    goto LABEL_6;
                  case 0x23:
                    v3 = @"SetCredentialResponse";
                    goto LABEL_6;
                  case 0x25:
                    v3 = @"GetCredentialStatusResponse";
                    goto LABEL_6;
                }
              }

              else
              {
                switch(a2)
                {
                  case 0xC:
                    v3 = @"GetWeekDayScheduleResponse";
                    goto LABEL_6;
                  case 0xF:
                    v3 = @"GetYearDayScheduleResponse";
                    goto LABEL_6;
                  case 0x12:
                    v3 = @"GetHolidayScheduleResponse";
                    goto LABEL_6;
                }
              }

              goto LABEL_3;
            }

            if (a1 != 258 && a1 != 260)
            {
              goto LABEL_125;
            }
          }

          else
          {
            if (a1 > 511)
            {
              if (a1 != 512)
              {
                switch(a2)
                {
                  case 0:
                    v3 = @"GetWeeklyScheduleResponse";
                    goto LABEL_6;
                  case 0xFD:
                    v3 = @"AtomicResponse";
                    goto LABEL_6;
                  case 2:
                    v3 = @"AddThermostatSuggestionResponse";
                    goto LABEL_6;
                }
              }

              goto LABEL_3;
            }

            if (a1 != 261)
            {
              if (a1 != 336)
              {
                goto LABEL_125;
              }

              if (a2 == 1)
              {
                v3 = @"SelectAreasResponse";
                goto LABEL_6;
              }

              if (a2 == 3)
              {
                v3 = @"SkipAreaResponse";
                goto LABEL_6;
              }
            }
          }
        }

        else if (a1 > 1023)
        {
          if (a1 <= 1026 && a1 != 1024 && a1 != 1026)
          {
            goto LABEL_125;
          }
        }

        else if (a1 > 767)
        {
          if (a1 != 768 && a1 != 769)
          {
            goto LABEL_125;
          }
        }

        else if (a1 != 514 && a1 != 516)
        {
          goto LABEL_125;
        }
      }

      else if (a1 > 1067)
      {
        if (a1 > 1071)
        {
          if (a1 > 1105)
          {
            if (a1 == 1106)
            {
              if (a2 == 2)
              {
                v3 = @"DatasetResponse";
                goto LABEL_6;
              }
            }

            else
            {
              if (a1 != 1107)
              {
                goto LABEL_125;
              }

              if (a2 == 3)
              {
                v3 = @"OperationalDatasetResponse";
                goto LABEL_6;
              }
            }
          }

          else if (a1 != 1072)
          {
            if (a1 != 1105)
            {
              goto LABEL_125;
            }

            if (a2 == 1)
            {
              v3 = @"NetworkPassphraseResponse";
              goto LABEL_6;
            }
          }
        }
      }

      else if (a1 > 1042)
      {
        if (a1 <= 1065 && a1 != 1043 && a1 != 1045)
        {
          goto LABEL_125;
        }
      }

      else if (a1 > 1035)
      {
        if (a1 != 1036 && a1 != 1037)
        {
          goto LABEL_125;
        }
      }

      else if (a1 != 1029 && a1 != 1030)
      {
        goto LABEL_125;
      }
    }

    else
    {
      if (a1 <= 1361)
      {
        switch(a1)
        {
          case 1283:
          case 1287:
          case 1288:
          case 1291:
          case 1293:
            goto LABEL_3;
          case 1284:
            if (a2 == 1)
            {
              v3 = @"ChangeChannelResponse";
            }

            else
            {
              if (a2 != 5)
              {
                goto LABEL_3;
              }

              v3 = @"ProgramGuideResponse";
            }

            goto LABEL_6;
          case 1285:
            if (a2 != 1)
            {
              goto LABEL_3;
            }

            v3 = @"NavigateTargetResponse";
            goto LABEL_6;
          case 1286:
            if (a2 != 10)
            {
              goto LABEL_3;
            }

            v3 = @"PlaybackResponse";
            goto LABEL_6;
          case 1289:
            if (a2 != 1)
            {
              goto LABEL_3;
            }

            v3 = @"SendKeyResponse";
            goto LABEL_6;
          case 1290:
            if (a2 != 2)
            {
              goto LABEL_3;
            }

            goto LABEL_193;
          case 1292:
            if (a2 != 3)
            {
              goto LABEL_3;
            }

LABEL_193:
            v3 = @"LauncherResponse";
            goto LABEL_6;
          case 1294:
            if (a2 != 1)
            {
              goto LABEL_3;
            }

            v3 = @"GetSetupPINResponse";
            goto LABEL_6;
          case 1295:
            if (a2 != 2)
            {
              goto LABEL_3;
            }

            v3 = @"ResetPINResponse";
            goto LABEL_6;
          case 1296:
            if (a2 != 1)
            {
              goto LABEL_3;
            }

            v3 = @"ContentAppMessageResponse";
            goto LABEL_6;
          default:
            if (a1 == 1360)
            {
              if (a2 != 1)
              {
                goto LABEL_3;
              }

              v3 = @"CreateTwoDCartesianZoneResponse";
            }

            else
            {
              if (a1 != 1361)
              {
                goto LABEL_125;
              }

              if (a2 > 7)
              {
                if (a2 == 8)
                {
                  v3 = @"SnapshotStreamAllocateResponse";
                }

                else
                {
                  if (a2 != 13)
                  {
                    goto LABEL_3;
                  }

                  v3 = @"CaptureSnapshotResponse";
                }
              }

              else if (a2 == 1)
              {
                v3 = @"AudioStreamAllocateResponse";
              }

              else
              {
                if (a2 != 4)
                {
                  goto LABEL_3;
                }

                v3 = @"VideoStreamAllocateResponse";
              }
            }

            break;
        }

        goto LABEL_6;
      }

      if (a1 > 1873)
      {
        if (a1 > 2821)
        {
          if (a1 > 323615743)
          {
            if (a1 != 323615744 && a1 != 323615747)
            {
              goto LABEL_125;
            }
          }

          else if (a1 != 2822 && a1 != 2823)
          {
            goto LABEL_125;
          }
        }

        else
        {
          if (a1 > 2048)
          {
            if (a1 == 2049)
            {
              v5 = a2 - 1;
              if (a2 - 1) < 0xD && ((0x1495u >> v5))
              {
                v6 = off_278A71F80;
LABEL_170:
                v3 = v6[v5];
                goto LABEL_6;
              }

              goto LABEL_3;
            }

            if (a1 == 2050)
            {
              if (a2 == 1)
              {
                v3 = @"ProvisionEndpointResponse";
                goto LABEL_6;
              }

              if (a2 == 3)
              {
                v3 = @"FindEndpointResponse";
                goto LABEL_6;
              }

              goto LABEL_3;
            }

            goto LABEL_125;
          }

          if (a1 != 1874)
          {
            if (a1 == 1875)
            {
              switch(a2)
              {
                case 1:
                  v3 = @"ICACCSRResponse";
                  goto LABEL_6;
                case 6:
                  v3 = @"TransferAnchorResponse";
                  goto LABEL_6;
                case 3:
                  v3 = @"ICACResponse";
                  goto LABEL_6;
              }

              goto LABEL_3;
            }

            goto LABEL_125;
          }
        }
      }

      else
      {
        if (a1 <= 1365)
        {
          if (a1 > 1363)
          {
            if (a1 != 1364)
            {
              if (a2 == 1)
              {
                v3 = @"AllocatePushTransportResponse";
                goto LABEL_6;
              }

              if (a2 == 7)
              {
                v3 = @"FindTransportResponse";
                goto LABEL_6;
              }
            }
          }

          else if (a1 != 1362)
          {
            if (a2 == 1)
            {
              v3 = @"SolicitOfferResponse";
              goto LABEL_6;
            }

            if (a2 == 3)
            {
              v3 = @"ProvideOfferResponse";
              goto LABEL_6;
            }
          }

          goto LABEL_3;
        }

        if (a1 > 1871)
        {
          if (a1 != 1872 && a2 == 2)
          {
            v3 = @"ReverseOpenCommissioningWindow";
            goto LABEL_6;
          }
        }

        else if (a1 != 1366)
        {
          if (a1 == 1792)
          {
            if (!a2)
            {
              v3 = @"GetTariffComponentResponse";
              goto LABEL_6;
            }

            if (a2 == 1)
            {
              v3 = @"GetDayEntryResponse";
              goto LABEL_6;
            }

            goto LABEL_3;
          }

LABEL_125:
          [MEMORY[0x277CCACA8] stringWithFormat:@"<Unknown clusterID %u>", a1];
          v3 = LABEL_5:;
          goto LABEL_6;
        }
      }
    }

LABEL_3:
    v2 = MEMORY[0x277CCACA8];
LABEL_4:
    [v2 stringWithFormat:@"<Unknown commandID %u>", a2];
    goto LABEL_5;
  }

  switch(a1)
  {
    case 3:
    case 6:
    case 8:
    case 28:
    case 29:
    case 30:
    case 37:
    case 40:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 52:
    case 53:
    case 54:
    case 55:
    case 57:
    case 59:
    case 60:
    case 64:
    case 65:
    case 69:
    case 71:
    case 74:
    case 80:
    case 83:
    case 86:
    case 87:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 113:
    case 114:
    case 128:
    case 129:
    case 144:
    case 145:
    case 148:
    case 151:
    case 152:
    case 155:
    case 156:
    case 160:
      goto LABEL_3;
    case 4:
      if (a2 >= 4)
      {
        goto LABEL_3;
      }

      v3 = off_278A71ED8[a2];
      break;
    case 5:
    case 7:
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
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 38:
    case 39:
    case 58:
    case 61:
    case 66:
    case 67:
    case 68:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 88:
    case 90:
    case 99:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
    case 135:
    case 136:
    case 137:
    case 138:
    case 139:
    case 140:
    case 141:
    case 142:
    case 143:
    case 146:
    case 147:
    case 150:
    case 154:
      goto LABEL_125;
    case 31:
      if (a2 != 1)
      {
        goto LABEL_3;
      }

      v3 = @"ReviewFabricRestrictionsResponse";
      break;
    case 41:
      if (a2 == 1)
      {
        v3 = @"QueryImageResponse";
      }

      else
      {
        if (a2 != 3)
        {
          goto LABEL_3;
        }

        v3 = @"ApplyUpdateResponse";
      }

      break;
    case 48:
      v5 = a2 - 1;
      if ((a2 - 1) >= 7 || ((0x55u >> v5) & 1) == 0)
      {
        goto LABEL_3;
      }

      v6 = off_278A71EF8;
      goto LABEL_170;
    case 49:
      v5 = a2 - 1;
      if ((a2 - 1) >= 0xA || ((0x251u >> v5) & 1) == 0)
      {
        goto LABEL_3;
      }

      v6 = off_278A71F30;
      goto LABEL_170;
    case 50:
      if (a2 != 1)
      {
        goto LABEL_3;
      }

      v3 = @"RetrieveLogsResponse";
      break;
    case 51:
      if (a2 == 2)
      {
        v3 = @"TimeSnapshotResponse";
      }

      else
      {
        if (a2 != 4)
        {
          goto LABEL_3;
        }

        v3 = @"PayloadTestResponse";
      }

      break;
    case 56:
      if (a2 != 3)
      {
        goto LABEL_3;
      }

      v3 = @"SetTimeZoneResponse";
      break;
    case 62:
      if (a2 <= 4)
      {
        if (a2 == 1)
        {
          v3 = @"AttestationResponse";
        }

        else
        {
          if (a2 != 3)
          {
            goto LABEL_3;
          }

          v3 = @"CertificateChainResponse";
        }
      }

      else
      {
        switch(a2)
        {
          case 5:
            v3 = @"CSRResponse";
            break;
          case 8:
            v3 = @"NOCResponse";
            break;
          case 0xE:
            v3 = @"SignVIDVerificationResponse";
            break;
          default:
            goto LABEL_3;
        }
      }

      break;
    case 63:
      if (a2 == 2)
      {
        v3 = @"KeySetReadResponse";
      }

      else
      {
        if (a2 != 5)
        {
          goto LABEL_3;
        }

        v3 = @"KeySetReadAllIndicesResponse";
      }

      break;
    case 70:
      if (a2 == 1)
      {
        v3 = @"RegisterClientResponse";
      }

      else
      {
        if (a2 != 4)
        {
          goto LABEL_3;
        }

        v3 = @"StayActiveResponse";
      }

      break;
    case 72:
    case 96:
    case 97:
      if (a2 != 4)
      {
        goto LABEL_3;
      }

      v3 = @"OperationalCommandResponse";
      break;
    case 73:
    case 81:
    case 82:
    case 84:
    case 85:
    case 89:
    case 157:
    case 158:
    case 159:
      if (a2 != 1)
      {
        goto LABEL_3;
      }

      v3 = @"ChangeToModeResponse";
      break;
    case 98:
      if (a2 <= 2)
      {
        if (!a2)
        {
          v3 = @"AddSceneResponse";
          break;
        }

        if (a2 != 1)
        {
          if (a2 == 2)
          {
            v3 = @"RemoveSceneResponse";
            break;
          }

          goto LABEL_240;
        }

        v3 = @"ViewSceneResponse";
      }

      else if (a2 > 5)
      {
        if (a2 != 6)
        {
          if (a2 == 64)
          {
            v3 = @"CopySceneResponse";
            break;
          }

          goto LABEL_240;
        }

        v3 = @"GetSceneMembershipResponse";
      }

      else
      {
        if (a2 != 3)
        {
          if (a2 == 4)
          {
            v3 = @"StoreSceneResponse";
            break;
          }

LABEL_240:
          v2 = MEMORY[0x277CCACA8];
          goto LABEL_4;
        }

        v3 = @"RemoveAllScenesResponse";
      }

      break;
    case 149:
      if (a2 == 1)
      {
        v3 = @"GetDetailedPriceResponse";
      }

      else
      {
        if (a2 != 3)
        {
          goto LABEL_3;
        }

        v3 = @"GetDetailedForecastResponse";
      }

      break;
    case 153:
      if (a2)
      {
        goto LABEL_3;
      }

      v3 = @"GetTargetsResponse";
      break;
    default:
      if (a1 == -918523)
      {
        v3 = @"TestSpecificResponse";
        switch(a2)
        {
          case 0:
            goto LABEL_6;
          case 1:
            v3 = @"TestAddArgumentsResponse";
            break;
          case 2:
            v3 = @"TestSimpleArgumentResponse";
            break;
          case 3:
            v3 = @"TestStructArrayArgumentResponse";
            break;
          case 4:
            v3 = @"TestListInt8UReverseResponse";
            break;
          case 5:
            v3 = @"TestEnumsResponse";
            break;
          case 6:
            v3 = @"TestNullableOptionalResponse";
            break;
          case 7:
            v3 = @"TestComplexNullableOptionalResponse";
            break;
          case 8:
            v3 = @"BooleanResponse";
            break;
          case 9:
            v3 = @"SimpleStructResponse";
            break;
          case 10:
            v3 = @"TestEmitTestEventResponse";
            break;
          case 11:
            v3 = @"TestEmitTestFabricScopedEventResponse";
            break;
          case 12:
            v3 = @"TestBatchHelperResponse";
            break;
          case 13:
            v3 = @"StringEchoResponse";
            break;
          case 14:
            v3 = @"GlobalEchoResponse";
            break;
          default:
            if (a2 != -917317)
            {
              goto LABEL_3;
            }

            v3 = @"TestDifferentVendorMeiResponse";
            break;
        }

        break;
      }

      if (a1 != -918496)
      {
        goto LABEL_125;
      }

      if (a2 == 1)
      {
        v3 = @"AddArgumentsResponse";
        break;
      }

      goto LABEL_3;
  }

LABEL_6:

  return v3;
}

__CFString *MTREventNameForID(uint64_t a1, uint64_t a2)
{
  if (a1 <= 256)
  {
    switch(a1)
    {
      case 3:
      case 4:
      case 6:
      case 8:
      case 28:
      case 29:
      case 30:
      case 41:
      case 43:
      case 44:
      case 45:
      case 46:
      case 48:
      case 49:
      case 50:
      case 55:
      case 60:
      case 62:
      case 63:
      case 64:
      case 65:
      case 70:
      case 71:
      case 73:
      case 74:
      case 80:
      case 81:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 89:
      case 91:
      case 94:
      case 95:
      case 98:
      case 113:
      case 114:
      case 155:
      case 156:
      case 157:
      case 158:
      case 159:
        goto LABEL_3;
      case 5:
      case 7:
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
      case 20:
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
      case 38:
      case 39:
      case 58:
      case 61:
      case 66:
      case 67:
      case 68:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 88:
      case 90:
      case 99:
      case 100:
      case 101:
      case 102:
      case 103:
      case 104:
      case 105:
      case 106:
      case 107:
      case 108:
      case 109:
      case 110:
      case 111:
      case 112:
      case 115:
      case 116:
      case 117:
      case 118:
      case 119:
      case 120:
      case 121:
      case 122:
      case 123:
      case 124:
      case 125:
      case 126:
      case 127:
      case 130:
      case 131:
      case 132:
      case 133:
      case 134:
      case 135:
      case 136:
      case 137:
      case 138:
      case 139:
      case 140:
      case 141:
      case 142:
      case 143:
      case 146:
      case 147:
      case 150:
      case 154:
        goto LABEL_78;
      case 31:
        if (a2 >= 3)
        {
          goto LABEL_3;
        }

        v5 = off_278A71FE8;
        goto LABEL_167;
      case 37:
        if (!a2)
        {
          goto LABEL_174;
        }

        if (a2 != 1)
        {
          goto LABEL_3;
        }

        v3 = @"ActionFailed";
        goto LABEL_6;
      case 40:
        if (a2 >= 4)
        {
          goto LABEL_3;
        }

        v5 = off_278A72000;
        goto LABEL_167;
      case 42:
        if (a2 >= 3)
        {
          goto LABEL_3;
        }

        v5 = off_278A72020;
        goto LABEL_167;
      case 47:
        if (a2 >= 3)
        {
          goto LABEL_3;
        }

        v5 = off_278A72038;
        goto LABEL_167;
      case 51:
        if (a2 >= 4)
        {
          goto LABEL_3;
        }

        v5 = off_278A72050;
        goto LABEL_167;
      case 52:
        if (a2)
        {
          goto LABEL_3;
        }

        v3 = @"SoftwareFault";
        goto LABEL_6;
      case 53:
        if (a2)
        {
          if (a2 != 1)
          {
            goto LABEL_3;
          }

          v3 = @"NetworkFaultChange";
        }

        else
        {
          v3 = @"ConnectionStatus";
        }

        goto LABEL_6;
      case 54:
        if (a2 >= 3)
        {
          goto LABEL_3;
        }

        v5 = off_278A72070;
        goto LABEL_167;
      case 56:
        if (a2 >= 5)
        {
          goto LABEL_3;
        }

        v5 = off_278A72088;
        goto LABEL_167;
      case 57:
        if (a2 <= 1)
        {
          if (a2)
          {
            if (a2 != 1)
            {
              goto LABEL_3;
            }

            v3 = @"ShutDown";
          }

          else
          {
            v3 = @"StartUp";
          }
        }

        else
        {
          switch(a2)
          {
            case 2:
              v3 = @"Leave";
              break;
            case 3:
              v3 = @"ReachableChanged";
              break;
            case 0x80:
              v3 = @"ActiveChanged";
              break;
            default:
              goto LABEL_3;
          }
        }

        goto LABEL_6;
      case 59:
        if (a2 >= 7)
        {
          goto LABEL_3;
        }

        v5 = off_278A720B0;
        goto LABEL_167;
      case 69:
        if (a2)
        {
          goto LABEL_3;
        }

        v3 = @"StateChange";
        goto LABEL_6;
      case 72:
      case 96:
      case 97:
        if (a2)
        {
          if (a2 != 1)
          {
            goto LABEL_3;
          }

          v3 = @"OperationCompletion";
        }

        else
        {
          v3 = @"OperationalError";
        }

        goto LABEL_6;
      case 87:
      case 93:
        if (a2)
        {
          goto LABEL_3;
        }

        v3 = @"Notify";
        goto LABEL_6;
      case 92:
        if (a2 >= 0xB)
        {
          goto LABEL_3;
        }

        v5 = off_278A720E8;
        goto LABEL_167;
      case 128:
        if (a2)
        {
          if (a2 != 1)
          {
            goto LABEL_3;
          }

          v3 = @"SensorFault";
        }

        else
        {
          v3 = @"AlarmsStateChanged";
        }

        goto LABEL_6;
      case 129:
        if (a2)
        {
          if (a2 != 1)
          {
            goto LABEL_3;
          }

          v3 = @"ValveFault";
        }

        else
        {
          v3 = @"ValveStateChanged";
        }

        goto LABEL_6;
      case 144:
        if (a2)
        {
          goto LABEL_3;
        }

        v3 = @"MeasurementPeriodRanges";
        goto LABEL_6;
      case 145:
        if (a2)
        {
          if (a2 != 1)
          {
            goto LABEL_3;
          }

          v3 = @"PeriodicEnergyMeasured";
        }

        else
        {
          v3 = @"CumulativeEnergyMeasured";
        }

        goto LABEL_6;
      case 148:
        if (a2)
        {
          if (a2 != 1)
          {
            goto LABEL_3;
          }

          v3 = @"BoostEnded";
        }

        else
        {
          v3 = @"BoostStarted";
        }

        goto LABEL_6;
      case 149:
        if (a2)
        {
          goto LABEL_3;
        }

        v3 = @"PriceChange";
        goto LABEL_6;
      case 151:
        if (a2 >= 3)
        {
          goto LABEL_3;
        }

        v5 = off_278A72140;
        goto LABEL_167;
      case 152:
        if (a2 >= 4)
        {
          goto LABEL_3;
        }

        v5 = off_278A72158;
        goto LABEL_167;
      case 153:
        if (a2 >= 6)
        {
          goto LABEL_3;
        }

        v5 = off_278A72178;
        goto LABEL_167;
      case 160:
        if (a2)
        {
          goto LABEL_3;
        }

        v3 = @"CurrentConditionsChanged";
        goto LABEL_6;
      default:
        if (a1 != -918523)
        {
          if (a1 != -918496)
          {
            goto LABEL_78;
          }

          if (!a2)
          {
            v3 = @"PingCountEvent";
            goto LABEL_6;
          }

          goto LABEL_3;
        }

        switch(a2)
        {
          case 0xFFF200EE:
            v3 = @"TestDifferentVendorMeiEvent";
            break;
          case 1:
            v3 = @"TestEvent";
            break;
          case 2:
            v3 = @"TestFabricScopedEvent";
            break;
          default:
            goto LABEL_3;
        }

        break;
    }

    goto LABEL_6;
  }

  if (a1 <= 1282)
  {
    if (a1 > 1028)
    {
      if (a1 > 1067)
      {
        if (a1 > 1071)
        {
          if (a1 > 1105)
          {
            if (a1 != 1106 && a1 != 1107)
            {
              goto LABEL_78;
            }
          }

          else if (a1 != 1072 && a1 != 1105)
          {
            goto LABEL_78;
          }
        }

        goto LABEL_3;
      }

      if (a1 > 1042)
      {
        if (a1 <= 1065 && a1 != 1043 && a1 != 1045)
        {
          goto LABEL_78;
        }

        goto LABEL_3;
      }

      if (a1 > 1035)
      {
        if (a1 != 1036 && a1 != 1037)
        {
          goto LABEL_78;
        }

        goto LABEL_3;
      }

      if (a1 == 1029)
      {
        goto LABEL_3;
      }

      if (a1 == 1030)
      {
        if (!a2)
        {
          v3 = @"OccupancyChanged";
          goto LABEL_6;
        }

        goto LABEL_3;
      }

LABEL_78:
      [MEMORY[0x277CCACA8] stringWithFormat:@"<Unknown clusterID %u>", a1];
      goto LABEL_5;
    }

    if (a1 > 513)
    {
      if (a1 > 1023)
      {
        if (a1 <= 1026 && a1 != 1024 && a1 != 1026)
        {
          goto LABEL_78;
        }
      }

      else if (a1 > 767)
      {
        if (a1 != 768 && a1 != 769)
        {
          goto LABEL_78;
        }
      }

      else if (a1 != 514 && a1 != 516)
      {
        goto LABEL_78;
      }

      goto LABEL_3;
    }

    if (a1 <= 260)
    {
      if (a1 == 257)
      {
        if (a2 > 3)
        {
          if (a2 > 323551232)
          {
            if (a2 == 323551233)
            {
              v3 = @"AppleAliroLockOperationError";
              goto LABEL_6;
            }

            if (a2 == 323551234)
            {
              v3 = @"AppleAliroLockUserChange";
              goto LABEL_6;
            }
          }

          else
          {
            if (a2 == 4)
            {
              v3 = @"LockUserChange";
              goto LABEL_6;
            }

            if (a2 == 323551232)
            {
              v3 = @"AppleAliroLockOperation";
              goto LABEL_6;
            }
          }
        }

        else
        {
          if (a2 > 1)
          {
            if (a2 == 2)
            {
              v3 = @"LockOperation";
            }

            else
            {
              v3 = @"LockOperationError";
            }

            goto LABEL_6;
          }

          if (!a2)
          {
            v3 = @"DoorLockAlarm";
            goto LABEL_6;
          }

          if (a2 == 1)
          {
            v3 = @"DoorStateChange";
            goto LABEL_6;
          }
        }

        v2 = MEMORY[0x277CCACA8];
        goto LABEL_4;
      }

      if (a1 == 258)
      {
        goto LABEL_3;
      }

      if (a1 != 260)
      {
        goto LABEL_78;
      }

      if (a2 >= 4)
      {
        goto LABEL_3;
      }

      v5 = off_278A721A8;
    }

    else
    {
      if (a1 <= 511)
      {
        if (a1 != 261 && a1 != 336)
        {
          goto LABEL_78;
        }

        goto LABEL_3;
      }

      if (a1 == 512)
      {
        if (a2 >= 0x11)
        {
          goto LABEL_3;
        }

        v5 = off_278A721C8;
      }

      else
      {
        if (a2 >= 8)
        {
          goto LABEL_3;
        }

        v5 = off_278A72250;
      }
    }

LABEL_167:
    v3 = v5[a2];
    goto LABEL_6;
  }

  if (a1 > 1361)
  {
    if (a1 > 1873)
    {
      if (a1 > 2821)
      {
        if (a1 > 323615743)
        {
          if (a1 != 323615744 && a1 != 323615747)
          {
            goto LABEL_78;
          }
        }

        else if (a1 != 2822 && a1 != 2823)
        {
          goto LABEL_78;
        }
      }

      else if (a1 > 2048)
      {
        if (a1 != 2049 && a1 != 2050)
        {
          goto LABEL_78;
        }
      }

      else if (a1 != 1874 && a1 != 1875)
      {
        goto LABEL_78;
      }
    }

    else
    {
      if (a1 <= 1365)
      {
        if (a1 > 1364)
        {
          if (!a2)
          {
            v3 = @"PushTransportBegin";
            goto LABEL_6;
          }

          if (a2 == 1)
          {
            v3 = @"PushTransportEnd";
            goto LABEL_6;
          }
        }

        goto LABEL_3;
      }

      if (a1 > 1871)
      {
        if (a1 != 1872 && !a2)
        {
          v3 = @"CommissioningRequestResult";
          goto LABEL_6;
        }
      }

      else if (a1 != 1366 && a1 != 1792)
      {
        goto LABEL_78;
      }
    }

LABEL_3:
    v2 = MEMORY[0x277CCACA8];
LABEL_4:
    [v2 stringWithFormat:@"<Unknown eventID %u>", a2];
    v3 = LABEL_5:;
    goto LABEL_6;
  }

  switch(a1)
  {
    case 1283:
    case 1284:
    case 1287:
    case 1288:
    case 1289:
    case 1290:
    case 1291:
    case 1292:
    case 1293:
    case 1296:
      goto LABEL_3;
    case 1285:
      if (a2)
      {
        goto LABEL_3;
      }

      v3 = @"TargetUpdated";
      break;
    case 1286:
      if (a2)
      {
        goto LABEL_3;
      }

LABEL_174:
      v3 = @"StateChanged";
      break;
    case 1294:
      if (a2)
      {
        goto LABEL_3;
      }

      v3 = @"LoggedOut";
      break;
    case 1295:
      if (a2)
      {
        goto LABEL_3;
      }

      v3 = @"RemainingScreenTimeExpired";
      break;
    default:
      if (a1 != 1360)
      {
        if (a1 == 1361)
        {
          goto LABEL_3;
        }

        goto LABEL_78;
      }

      if (a2)
      {
        if (a2 != 1)
        {
          goto LABEL_3;
        }

        v3 = @"ZoneStopped";
      }

      else
      {
        v3 = @"ZoneTriggered";
      }

      break;
  }

LABEL_6:

  return v3;
}

unint64_t sub_238DC3B28(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    objc_storeStrong((a1 + 608), a2);
    v5 = sub_238DC3C3C(*(a1 + 608), a1 + 616);
    v6 = v5 & 0xFFFFFFFF00000000;
    v7 = v5;
  }

  else
  {
    v8 = sub_2393D9044(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Keypair does not support message signing", v10, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    v6 = 0x2300000000;
    v7 = 47;
  }

  return v7 | v6;
}

uint64_t sub_238DC3C3C(void *a1, uint64_t a2)
{
  v3 = a1;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 copyPublicKey];
  }

  else
  {
    v5 = [v3 publicKey];
    v4 = v5;
    if (v5)
    {
      CFRetain(v5);
    }
  }

  v6 = sub_238DC4310(v4, a2);
  if (v4)
  {
    CFRelease(v4);
  }

  return v6;
}

uint64_t sub_238DC3CE0(uint64_t a1)
{
  if (*(a1 + 608))
  {
    return 0;
  }

  else
  {
    return 0x2D00000003;
  }
}

uint64_t sub_238DC3D04(uint64_t a1)
{
  if (*(a1 + 608))
  {
    return 0x3A0000006CLL;
  }

  else
  {
    return 0x3700000003;
  }
}

uint64_t sub_238DC3D2C(uint64_t a1)
{
  if (*(a1 + 608))
  {
    return 0x430000006CLL;
  }

  else
  {
    return 0x4000000003;
  }
}

uint64_t sub_238DC3D54(uint64_t a1)
{
  if (*(a1 + 608))
  {
    return 0x4C0000006CLL;
  }

  else
  {
    return 0x4900000003;
  }
}

unint64_t sub_238DC3D7C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v37 = *MEMORY[0x277D85DE8];
  if (*(a1 + 608))
  {
    v6 = [MEMORY[0x277CBEA90] dataWithBytes:a2 length:a3];
    v7 = *(a1 + 608);
    v8 = objc_opt_respondsToSelector();
    v9 = *(a1 + 608);
    if (v8)
    {
      v10 = [v9 signMessageECDSA_DER:v6];
      if (v10)
      {
        v30 = v32;
        v31 = 64;
        v11 = v10;
        v12 = v11;
        sub_238DB6950(buf, [v11 bytes], objc_msgSend(v11, "length"));

        v29 = *buf;
        v13 = sub_2393F2F1C(32, &v29, &v30);
        v14 = v13;
        if (v13)
        {
          v15 = sub_2393D9044(0);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = sub_2393C9138();
            *buf = 136315138;
            *&buf[4] = v16;
            _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "Converting ASN.1 DER signature to raw form failed: %s", buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393C9138();
            sub_2393D5320(0, 1);
          }

          v17 = v13 & 0xFFFFFFFF00000000;
LABEL_10:
          v18 = v11;
LABEL_44:

          goto LABEL_45;
        }

        sub_238DB6950(buf, v30, v31);
        v18 = [MEMORY[0x277CBEA90] dataWithBytes:*buf length:*&buf[8]];

        if (!v18)
        {
          v26 = sub_2393D9044(0);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_238DAE000, v26, OS_LOG_TYPE_ERROR, "Failed to create NSData for raw signature", buf, 2u);
          }

          v11 = 0;
          if (sub_2393D5398(1u))
          {
            sub_2393D5320(0, 1);
          }

          v17 = 0x6A00000000;
          v14 = 172;
          goto LABEL_10;
        }

LABEL_17:
        if ([v18 length] < 0x41)
        {
          v22 = [v18 length];
          if (v22 <= 0x40)
          {
            a4[8] = v22;
          }

          v23 = v18;
          memcpy(a4, [v18 bytes], objc_msgSend(v18, "length"));
          v14 = 0;
          v17 = 0;
        }

        else
        {
          v20 = sub_2393D9044(0);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v21 = [v18 length];
            *v32 = 134218240;
            v33 = v21;
            v34 = 2048;
            v35 = 64;
            _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_ERROR, "ECDSA sign msg failure: unexpected signature size %llu vs %llu", v32, 0x16u);
          }

          if (sub_2393D5398(1u))
          {
            [v18 length];
            sub_2393D5320(0, 1);
          }

          v17 = 0x7600000000;
          v14 = 11;
        }

        goto LABEL_44;
      }

      v24 = sub_2393D9044(0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *v32 = 0;
        _os_log_impl(&dword_238DAE000, v24, OS_LOG_TYPE_ERROR, "ECDSA sign msg failure: no signature returned", v32, 2u);
      }

      v18 = 0;
      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1);
        v17 = 0x5B00000000;
LABEL_34:
        v14 = 172;
        goto LABEL_44;
      }

      v17 = 0x5B00000000;
    }

    else
    {
      v18 = [v9 signMessageECDSA_RAW:v6];
      if (v18)
      {
        goto LABEL_17;
      }

      v25 = sub_2393D9044(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *v32 = 0;
        _os_log_impl(&dword_238DAE000, v25, OS_LOG_TYPE_ERROR, "ECDSA sign msg failure: no signature returned", v32, 2u);
      }

      v18 = 0;
      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1);
        v17 = 0x7000000000;
        goto LABEL_34;
      }

      v17 = 0x7000000000;
    }

    v14 = 172;
    goto LABEL_44;
  }

  v19 = sub_2393D9044(0);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *v32 = 0;
    _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "ECDSA sign msg failure: no keypair to sign with.", v32, 2u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(0, 1);
  }

  v17 = 0x5300000000;
  v14 = 3;
LABEL_45:
  v27 = *MEMORY[0x277D85DE8];
  return v17 | v14;
}

uint64_t sub_238DC42E8(uint64_t a1)
{
  if (*(a1 + 608))
  {
    return 0x840000006CLL;
  }

  else
  {
    return 0x8100000003;
  }
}

uint64_t sub_238DC4310(__SecKey *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = SecKeyCopyExternalRepresentation(a1, 0);
    v4 = v3;
    if (v3)
    {
      if ([(__CFData *)v3 length]== 65)
      {
        sub_238DC45B4(&v15, [(__CFData *)v4 bytes]);
        v5 = 0;
        v6 = 0;
        v7 = v15;
        *(a2 + 8) = *v15;
        v9 = v7[2];
        v8 = v7[3];
        v10 = *(v7 + 64);
        *(a2 + 24) = v7[1];
        *(a2 + 72) = v10;
        *(a2 + 56) = v8;
        *(a2 + 40) = v9;
LABEL_21:

        return v6 | v5;
      }

      v13 = sub_2393D9044(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v16 = 0;
        _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "Unexpected publicKey length, cannot initialize publicKey", v16, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1);
      }

      v5 = 0x9500000000;
    }

    else
    {
      v12 = sub_2393D9044(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "Unable to copy external representation for publicKey ref, cannot initialize publicKey", v17, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1);
      }

      v5 = 0x9100000000;
    }

    v6 = 172;
    goto LABEL_21;
  }

  v11 = sub_2393D9044(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "Unable to initialize Pubkey", buf, 2u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(0, 1);
  }

  v5 = 0x8B00000000;
  v6 = 172;
  return v6 | v5;
}

uint64_t sub_238DC4520(uint64_t a1)
{

  return sub_2393F96B4(a1);
}

void sub_238DC455C(uint64_t a1)
{
  sub_2393F96B4(a1);

  JUMPOUT(0x23EE77B60);
}

void *sub_238DC45B4(void *result, uint64_t a2)
{
  *result = a2;
  if (!a2)
  {
    sub_23952B05C();
  }

  return result;
}

void sub_238DC45D0(int a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = sub_2393D9044(0x21u);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v7 = a1;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "Cannot set OTA provider for endpoint %d: not a valid OTA provider endpoint.", buf, 8u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0x21u, 1);
    }
  }

  else
  {
    sub_238DC46AC();
    qword_27DF77568 = a2;
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_238DC46AC()
{
  if ((byte_27DF77570 & 1) == 0)
  {
    byte_27DF77570 = 1;
    LOWORD(v1) = 0;
    HIDWORD(v1) = 41;
    v0 = sub_2392E3478(qword_27DF77548, &v1);
    v0[4] = 0;
    *v0 = &unk_284BA8C90;
  }
}

void *sub_238DC477C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  (*(*a3 + 88))(v17, a3);
  v12 = 0;
  v5 = *a1;
  v15 = *(a1 + 2);
  v16 = 0;
  v13 = v17;
  v14 = v5;
  sub_238DC46AC();
  result = (*(qword_27DF77548[0] + 96))(v10);
  if (v11 == 1)
  {
    v7 = sub_2394C3EB0(v10);
    v8 = v7;
    v9 = BYTE2(v7);
    return (*(*a3 + 24))(a3, a1, &v8, 0);
  }

  return result;
}

void sub_238DC4BE4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_238DC4C2C(id a1, void *a2, void *a3, void *a4, void *a5)
{
  v45 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    v42.receiver = a1;
    v42.super_class = MTRServerCluster;
    v13 = objc_msgSendSuper2(&v42, sel_init);
    a1 = v13;
    if (v13)
    {
      v13[28] = 0;
      v14 = [v9 copy];
      v15 = *(a1 + 15);
      *(a1 + 15) = v14;

      v16 = [v10 copy];
      v17 = *(a1 + 16);
      *(a1 + 16) = v16;

      v18 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v19 = *(a1 + 1);
      *(a1 + 1) = v18;

      v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v21 = *(a1 + 2);
      *(a1 + 2) = v20;

      v22 = [MEMORY[0x277CBEB98] set];
      v23 = *(a1 + 10);
      *(a1 + 10) = v22;

      *(a1 + 44) = -1;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v24 = v11;
      v25 = [v24 countByEnumeratingWithState:&v38 objects:v44 count:16];
      if (v25)
      {
        v26 = *v39;
        do
        {
          v27 = 0;
          do
          {
            if (*v39 != v26)
            {
              objc_enumerationMutation(v24);
            }

            [a1 addAccessGrant:*(*(&v38 + 1) + 8 * v27++)];
          }

          while (v25 != v27);
          v25 = [v24 countByEnumeratingWithState:&v38 objects:v44 count:16];
        }

        while (v25);
      }

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v28 = v12;
      v29 = [v28 countByEnumeratingWithState:&v34 objects:v43 count:16];
      if (v29)
      {
        v30 = *v35;
        do
        {
          v31 = 0;
          do
          {
            if (*v35 != v30)
            {
              objc_enumerationMutation(v28);
            }

            [a1 addAttribute:{*(*(&v34 + 1) + 8 * v31++), v34}];
          }

          while (v29 != v31);
          v29 = [v28 countByEnumeratingWithState:&v34 objects:v43 count:16];
        }

        while (v29);
      }
    }
  }

  v32 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_238DC4F8C(uint64_t a1)
{
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 112));
    WeakRetained = objc_loadWeakRetained((a1 + 24));
    if (WeakRetained)
    {
      v3 = [*(a1 + 8) copy];
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = sub_238DC5074;
      v5[3] = &unk_278A72298;
      v5[4] = a1;
      v6 = v3;
      v4 = v3;
      [WeakRetained asyncDispatchToMatterQueue:v5 errorHandler:0];
    }
  }
}

void sub_238DC5074(uint64_t a1)
{
  v2 = *(a1 + 32);
  os_unfair_lock_lock(v2 + 28);
  objc_storeStrong((*(a1 + 32) + 80), *(a1 + 40));

  os_unfair_lock_unlock(v2 + 28);
}

void sub_238DC5128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v10 + 28);

  _Unwind_Resume(a1);
}

void sub_238DC51AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v10 + 28);

  _Unwind_Resume(a1);
}

void sub_238DC5640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  os_unfair_lock_unlock(v13 + 28);

  _Unwind_Resume(a1);
}

void sub_238DC5FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  os_unfair_lock_unlock(v15 + 28);

  _Unwind_Resume(a1);
}

void sub_238DC60DC(void *a1@<X1>, void *a2@<X8>)
{
  v3 = a1;
  objc_opt_self();
  if ([v3 count])
  {
    [v3 count];
    operator new[]();
  }

  *a2 = 0;
}

void sub_238DC61D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  *v10 = 0;
  MEMORY[0x23EE77B40](v11, 0x1000C8052888210);

  _Unwind_Resume(a1);
}

void sub_238DC69BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v10 + 28);

  _Unwind_Resume(a1);
}

void sub_238DC6AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v10 + 28);

  _Unwind_Resume(a1);
}

unint64_t sub_238DC6D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v4 = *(a1 + 24);
  v5 = [v4 countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v5)
  {
    v6 = *v36;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v36 != v6)
      {
        objc_enumerationMutation(v4);
      }

      v8 = *(*(&v35 + 1) + 8 * v7);
      v9 = [v8 attributeID];
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a2 + 8)];
      v11 = [v9 isEqual:v10];

      if (v11)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v4 countByEnumeratingWithState:&v35 objects:v47 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v12 = v8;

    if (!v12)
    {
      goto LABEL_14;
    }

    v31 = [v12 serializedValue];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v14 = v31;
    v15 = v14;
    if (isKindOfClass)
    {
      v33 = v14;
      *(a3 + 68) = 1;
      v16 = sub_2393C4D64(a3);
      if (v16)
      {
        goto LABEL_32;
      }

      v39[0].n128_u64[0] = a3;
      sub_2393C7B90(&v39[0].n128_i64[1]);
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v23 = v33;
      v24 = [v23 countByEnumeratingWithState:&v42 objects:v48 count:16];
      if (v24)
      {
        v25 = *v43;
        while (2)
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v43 != v25)
            {
              objc_enumerationMutation(v23);
            }

            v27 = *(v42.n128_u64[1] + 8 * i);
            v28 = v27;
            sub_238DB6950(&v46, [v27 bytes], objc_msgSend(v27, "length"));

            v40 = v46;
            sub_2393CF9A8(&v41, &v40);
            v16 = sub_238DC738C(v39[0].n128_i64[0], &v39[0].n128_i8[8], &v41);
            if (v16)
            {

              goto LABEL_31;
            }
          }

          v24 = [v23 countByEnumeratingWithState:&v42 objects:v48 count:16];
          if (v24)
          {
            continue;
          }

          break;
        }
      }

      v16 = 0;
LABEL_31:

      sub_2393C4E54(a3);
      if (v16)
      {
LABEL_32:
        v19 = v16;
      }

      else
      {
        v19 = 0;
        *(a3 + 74) = -1;
        *(a3 + 76) = 0;
      }
    }

    else
    {
      v21 = v14;
      v22 = v21;
      sub_238DB6950(v48, [v21 bytes], objc_msgSend(v21, "length"));

      v42 = v48[0];
      sub_2393CF9A8(v39, &v42);
      *(a3 + 68) = 1;
      v16 = sub_238DC7324(a3, v39);
      v19 = v16;
    }

    v20 = v16 & 0xFFFFFFFF00000000;
  }

  else
  {
LABEL_9:

LABEL_14:
    v17 = *(a2 + 8);
    if (v17 == 65533)
    {
      *&v48[0] = [*(a1 + 32) unsignedLongLongValue];
      *(a3 + 68) = 1;
      v18 = sub_238DC7424(a3, v48);
    }

    else
    {
      if (v17 != 65532)
      {
        v20 = 0x22E00000000;
        v19 = 1414;
        goto LABEL_35;
      }

      *&v48[0] = 0;
      *(a3 + 68) = 1;
      v18 = sub_238DC7424(a3, v48);
    }

    v19 = v18;
    v20 = v18 & 0xFFFFFFFF00000000;
  }

LABEL_35:
  v29 = *MEMORY[0x277D85DE8];
  return v19 | v20;
}

void sub_238DC721C(uint64_t a1)
{

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_238DC7270(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = 0;
  return (*(*a1 + 24))(a1, &v3);
}

void sub_238DC72DC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_238DBAFA8();
}

unint64_t sub_238DC7324(uint64_t a1, uint64_t a2)
{
  result = sub_2393C4C40(&v5, *a1, (a1 + 40), *(a1 + 64));
  if (!result)
  {
    result = sub_2393DDC20(a2, *(*a1 + 176), 2uLL);
    if (!result)
    {
      return sub_2393C4D18(&v5, *a1);
    }
  }

  return result;
}

unint64_t sub_238DC738C(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (!sub_2393C4EF0(a1, a2))
  {
    return 0;
  }

  if (*(a1 + 70) == 1)
  {
    v6 = sub_2393DDC20(a3, *(*a1 + 176), 0x100uLL);
  }

  else
  {
    v6 = sub_238DC7324(a1, a3);
  }

  v8 = v6;
  sub_2393C4F30(a1, v6, v7, a2);
  return v8;
}

unint64_t sub_238DC7424(uint64_t a1, unint64_t *a2)
{
  result = sub_2393C4C40(&v5, *a1, (a1 + 40), *(a1 + 64));
  if (!result)
  {
    result = sub_2393C8154(*(*a1 + 176), 2uLL, *a2);
    if (!result)
    {
      return sub_2393C4D18(&v5, *a1);
    }
  }

  return result;
}

void sub_238DC74D4()
{
  v0 = objc_alloc_init(MTRDeviceControllerFactory);
  v1 = qword_27DF77578;
  qword_27DF77578 = v0;
}

void *sub_238DC7780()
{
  if ((atomic_load_explicit(&qword_27DF717C0, memory_order_acquire) & 1) == 0)
  {
    sub_23952BA30();
  }

  return &unk_27DF71780;
}

void sub_238DC7828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MTRDeviceControllerFactory;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

BOOL sub_238DC7868(_BOOL8 result)
{
  if (result)
  {
    if (qword_27DF7BD08 != -1)
    {
      sub_23952BA8C(result);
    }

    result = sub_239479DB0(&byte_27DF7BCA8);
    if (result)
    {
      sub_23952BAAC();
    }
  }

  return result;
}

uint64_t sub_238DC79F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_238DC7A0C(unint64_t *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  sub_238DCCAEC(v14);
  if (sub_23952B3FC(a1[4], v14))
  {
    v2 = sub_2393D9044(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = sub_2393C9138();
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "Can't initialize fabric table when getting known fabrics: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0, 1);
    }
  }

  else
  {
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:v15];
    v4 = *(a1[5] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    sub_238DCCCDC(v14, buf);
    if (v12 != v13 && (v13 != 16 || v12 != 16 || *buf != v14))
    {
LABEL_21:
      v10 = [[MTRFabricInfo alloc] initWithFabricTable:v14 fabricInfo:sub_238DC7C7C(buf)];
      if (!v10)
      {
        goto LABEL_11;
      }

      [*(*(a1[5] + 8) + 40) addObject:v10];

      v8 = v12;
      while (1)
      {
        if (v8 < v13)
        {
          v12 = ++v8;
        }

        if (v8 == v13)
        {
          break;
        }

        v9 = *buf + 152 * v8;
        if (*(v9 + 137) && (*v9 - 1) < 0xFFFFFFEFFFFFFFFFLL)
        {
          if (v13 == 16 && v8 == 16 && *buf == v14)
          {
            break;
          }

          goto LABEL_21;
        }
      }
    }

    *(*(a1[6] + 8) + 24) = 1;
  }

LABEL_11:
  result = sub_238DCCD9C(v14);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_238DC7C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  sub_238DCCD9C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_238DC7C7C(void *a1)
{
  v1 = a1[2];
  if (v1 == a1[3])
  {
    sub_23952BB4C();
  }

  v2 = a1[1];
  result = *a1 + 152 * v1;
  if (v2 && *(v2 + 137) && (*v2 - 1) <= 0xFFFFFFEFFFFFFFFELL && *(result + 137) == *(v2 + 137))
  {
    return v2;
  }

  return result;
}

uint64_t sub_238DC7CE4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a2;
  if (a1)
  {
    sub_238DC7868(a1);
    sub_238DC7F40(a1, @"Controller Factory Start");
    v21 = 0;
    v22 = &v21;
    v23 = 0x4012000000;
    v24 = sub_238DC8090;
    v25 = nullsub_14;
    v26 = "";
    v27 = xmmword_278A722E0;
    v7 = *(a1 + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_238DC80A0;
    block[3] = &unk_278A722F8;
    block[4] = a1;
    v20 = &v21;
    v19 = v6;
    dispatch_sync(v7, block);
    v8 = v22;
    v9 = *(v22 + 12);
    a1 = v9 == 0;
    if (v9)
    {
      v10 = sub_2393D9044(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = v8[6];
        v12 = v8[7];
        v13 = sub_2393C9138();
        *buf = 136315138;
        v29 = v13;
        _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Failed to start Matter controller factory: %s", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        v14 = v22[6];
        v15 = v22[7];
        sub_2393C9138();
        sub_2393D5320(0, 1);
      }

      if (a4)
      {
        *a4 = sub_23921C1E4(MTRError, v22[6], v22[7]);
      }
    }

    _Block_object_dispose(&v21, 8);
  }

  v16 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_238DC7F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_238DC7F40(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = sub_2393D9044(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [MEMORY[0x277CCACC8] callStackSymbols];
      *buf = 138412546;
      v10 = v3;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "[%@]: %@", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      v8 = [MEMORY[0x277CCACC8] callStackSymbols];
      sub_2393D5320(0, 2);
    }

    objc_autoreleasePoolPop(v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

__n128 sub_238DC8090(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_238DC80A0(uint64_t a1)
{
  if (*(*(a1 + 32) + 656) != 1)
  {
    sub_2393ABD2C();
    sub_2392D0D70();
    [*(a1 + 40) hasStorage];
    operator new();
  }

  v2 = sub_2393D9044(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "Ignoring duplicate call to startup, Matter controller factory already started...", buf, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0, 3);
  }

  v3 = *(*(a1 + 48) + 8);
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  if (*(*(*(a1 + 48) + 8) + 48))
  {
    sub_23952B230(*(a1 + 32));
  }
}

void sub_238DC86EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = (a1 + 32);
  if (*(v2 + 656) == 1)
  {
    sub_23952BBEC(v1);
  }
}

id *sub_238DC871C(id *a1, void *a2, void *a3, void *a4, void *a5)
{
  v71 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v44 = a4;
  if (a1)
  {
    v45 = a1;
    sub_238DC7868(a1);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = v8;
      v48 = v9;
      v49 = [v48 storageDelegate];
      v47 = [v48 storageDelegateQueue];
      v10 = [v48 uniqueIdentifier];
      v11 = [v48 otaProviderDelegate];
      v12 = [v48 otaProviderDelegateQueue];
      v42 = [v48 concurrentSubscriptionEstablishmentsAllowedOnThread];
      v13 = [v48 storageBehaviorConfiguration];
      v41 = [v48 startSuspended];
      v14 = v13;
      v15 = v47;
      v16 = v10;

      if (a1[82])
      {
        v8 = v43;
        v17 = v11;
        v18 = v49;
        v19 = v45;
LABEL_8:
        v20 = *(v19 + 488);
        v21 = v18 == 0;
        if (v20 == 1 && !v18)
        {
          v22 = sub_2393D9044(0);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_238DAE000, v22, OS_LOG_TYPE_ERROR, "Must have a controller storage delegate when we do not have storage for the controller factory", buf, 2u);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393D5320(0, 1);
          }

          if (a5)
          {
            sub_23921C1E4(MTRError, 0x2100000002FLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceControllerFactory.mm");
            v23 = v11 = v17;
LABEL_48:
            v49 = 0;
            goto LABEL_49;
          }

          goto LABEL_50;
        }

LABEL_29:
        v49 = v18;
        if ((v20 & 1) == 0 && !v21)
        {
          v28 = sub_2393D9044(0);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_238DAE000, v28, OS_LOG_TYPE_ERROR, "Must not have a controller storage delegate when we have storage for the controller factory", buf, 2u);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393D5320(0, 1);
          }

          if (a5)
          {
            sub_23921C1E4(MTRError, 0x2180000002FLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceControllerFactory.mm");
            v23 = v11 = v17;
LABEL_49:
            a1 = 0;
            *a5 = v23;
LABEL_53:

            goto LABEL_54;
          }

          v11 = v17;
LABEL_52:
          a1 = 0;
          goto LABEL_53;
        }

        if (v17)
        {
          v29 = v12;
        }

        else
        {
          v17 = v19[74];
          v29 = v19[75];

          v19 = v45;
        }

        v33 = v8;
        LOBYTE(v40) = v41;
        v12 = v29;
        v34 = [v33 initWithFactory:v19 queue:v19[1] storageDelegate:v18 storageDelegateQueue:v15 otaProviderDelegate:v17 otaProviderDelegateQueue:v29 uniqueIdentifier:v16 concurrentSubscriptionPoolSize:v42 storageBehaviorConfiguration:v14 startSuspended:v40];
        v11 = v17;

        if (!v34)
        {
          if (a5)
          {
            v23 = sub_23921C1E4(MTRError, 0x2300000002FLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceControllerFactory.mm");
            v8 = 0;
            goto LABEL_49;
          }

          v8 = 0;
          goto LABEL_52;
        }

        os_unfair_lock_lock((v45 + 556));
        [*(v45 + 560) addObject:v34];
        os_unfair_lock_unlock((v45 + 556));
        v63 = 0;
        v64 = &v63;
        v65 = 0x3032000000;
        v66 = sub_238DC79F4;
        v67 = sub_238DC7A04;
        v68 = 0;
        v56 = 0;
        v57 = &v56;
        v58 = 0x4012000000;
        v59 = sub_238DC8090;
        v60 = nullsub_14;
        v61 = "";
        v62 = xmmword_278A72340;
        sub_238DCCAEC(buf);
        v35 = *(v45 + 8);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23952B448;
        block[3] = &unk_278A72358;
        v53 = &v56;
        v54 = &v63;
        block[4] = v45;
        v55 = buf;
        v52 = v44;
        v8 = v34;
        v51 = v8;
        dispatch_sync(v35, block);
        if (v64[5])
        {
          os_unfair_lock_lock((v45 + 556));
          objc_storeStrong((v45 + 568), v34);
          os_unfair_lock_unlock((v45 + 556));
          v36 = [v8 startup:v64[5]];
          os_unfair_lock_lock((v45 + 556));
          v37 = *(v45 + 568);
          *(v45 + 568) = 0;

          os_unfair_lock_unlock((v45 + 556));
          if (v36)
          {
            v38 = sub_238DC957C(v45, v8);

            if (a5 && !v38)
            {
              *a5 = sub_23921C1E4(MTRError, 0x285000000ACLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceControllerFactory.mm");
            }

            v8 = v38;
            a1 = v8;
            goto LABEL_74;
          }

          if (a5)
          {
            v39 = sub_23921C1E4(MTRError, 0x27D000000ACLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceControllerFactory.mm");
            goto LABEL_72;
          }
        }

        else
        {
          sub_238DC9404(v45, v8);
          if (a5)
          {
            v39 = sub_23921C1E4(MTRError, v57[6], v57[7]);
LABEL_72:
            a1 = 0;
            *a5 = v39;
LABEL_74:

            sub_238DCCD9C(buf);
            _Block_object_dispose(&v56, 8);
            _Block_object_dispose(&v63, 8);

            goto LABEL_53;
          }
        }

        a1 = 0;
        goto LABEL_74;
      }

      v17 = v11;
      if (v49)
      {
        v25 = sub_2393D9044(0);
        v8 = v43;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v25, OS_LOG_TYPE_DEFAULT, "Auto-starting Matter controller factory in per-controller storage mode", buf, 2u);
        }

        if (sub_2393D5398(2u))
        {
          sub_2393D5320(0, 2);
        }

        v26 = sub_238DC9308([MTRDeviceControllerFactoryParams alloc]);
        v27 = sub_238DC7CE4(v45, v26, 0, a5);

        if (!v27)
        {
          goto LABEL_52;
        }

        v21 = 0;
        LOBYTE(v20) = *(v45 + 488);
        v17 = v11;
        v19 = v45;
        v18 = v49;
        goto LABEL_29;
      }

      v8 = v43;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v24 = sub_2393D9044(0);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v70 = v9;
          _os_log_impl(&dword_238DAE000, v24, OS_LOG_TYPE_ERROR, "Unknown kind of startup params: %@", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(0, 1);
        }

        if (a5)
        {
          v23 = sub_23921C1E4(MTRError, 0x1F80000002FLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceControllerFactory.mm");
          v14 = 0;
          v12 = 0;
          v11 = 0;
          v16 = 0;
          v15 = 0;
          goto LABEL_48;
        }

        v14 = 0;
        v12 = 0;
        v11 = 0;
        v16 = 0;
        v15 = 0;
        goto LABEL_51;
      }

      v16 = [v9 uniqueIdentifier];
      v19 = a1;
      if (a1[82])
      {
        v18 = 0;
        v15 = 0;
        v17 = 0;
        v12 = 0;
        v42 = 0;
        v14 = 0;
        v41 = 0;
        goto LABEL_8;
      }

      v14 = 0;
      v12 = 0;
      v17 = 0;
      v15 = 0;
    }

    v30 = sub_2393D9044(0);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v30, OS_LOG_TYPE_ERROR, "Trying to start controller while Matter controller factory is not running", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    if (a5)
    {
      sub_23921C1E4(MTRError, 0x20700000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceControllerFactory.mm");
      v23 = v11 = v17;
      goto LABEL_48;
    }

LABEL_50:
    v11 = v17;
LABEL_51:
    v49 = 0;
    goto LABEL_52;
  }

LABEL_54:

  v31 = *MEMORY[0x277D85DE8];

  return a1;
}

void sub_238DC91CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, _Unwind_Exception *exception_object, void *a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, char a47)
{
  sub_238DCCD9C(&a47);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a41, 8);

  _Unwind_Resume(a1);
}

id sub_238DC9308(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v3.receiver = a1;
  v3.super_class = MTRDeviceControllerFactoryParams;
  v1 = objc_msgSendSuper2(&v3, sel_init);
  if (v1)
  {
    sub_23952BC88(v1, objc_alloc_init(MTRDummyStorage));
  }

  return v1;
}

id sub_238DC9394(uint64_t a1)
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 556));
    v2 = [*(a1 + 560) copy];
    os_unfair_lock_unlock((a1 + 556));
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_238DC9404(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    sub_238DC7868(a1);
    if ([*(a1 + 560) containsObject:v4])
    {
      os_unfair_lock_lock((a1 + 556));
      objc_storeStrong((a1 + 576), a2);
      [*(a1 + 560) removeObject:v4];
      os_unfair_lock_unlock((a1 + 556));
      v5 = *(a1 + 8);
      v8 = MEMORY[0x277D85DD0];
      v9 = 3221225472;
      v10 = sub_238DCAF68;
      v11 = &unk_278A72298;
      v6 = v4;
      v12 = v6;
      v13 = a1;
      dispatch_sync(v5, &v8);
      [v6 deinitFromFactory];
    }

    else
    {
      v7 = sub_2393D9044(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Controller we don't know about shutting down", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1);
      }
    }
  }
}

id sub_238DC957C(id a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    sub_238DC7868(a1);
    if ([*(a1 + 70) count] == 1)
    {
      v4 = +[MTRServerEndpoint rootNodeEndpoint];
      v5 = *(a1 + 76);
      *(a1 + 76) = v4;

      v6 = [[MTRServerCluster alloc] initWithClusterID:&unk_284C3E408 revision:&unk_284C3E420];
      [(MTRServerCluster *)v6 setAcceptedCommands:&unk_284C43C28];
      [(MTRServerCluster *)v6 setGeneratedCommands:&unk_284C43C40];
      v7 = [MTRAccessGrant accessGrantForAllNodesWithPrivilege:3];
      [(MTRServerCluster *)v6 addAccessGrant:v7];

      [*(a1 + 76) addServerCluster:v6];
      if (sub_238DCAAE4(a1, *(a1 + 76)))
      {
        [*(a1 + 76) associateWithController:0];
        *v21 = 0;
        v22 = v21;
        v23 = 0x4012000000;
        v24 = sub_238DC8090;
        v25 = nullsub_14;
        v26 = "";
        v8 = *(a1 + 1);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_238DCAE64;
        block[3] = &unk_278A723A8;
        block[4] = a1;
        block[5] = v21;
        dispatch_sync(v8, block);
        v9 = v22;
        if (*(v22 + 12))
        {
          v10 = sub_2393D9044(0);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v11 = *(v9 + 6);
            v12 = *(v9 + 7);
            v13 = sub_2393C9138();
            *buf = 136315138;
            v28 = v13;
            _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Failed to init provider delegate bridge: %s", buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            v14 = *(v22 + 6);
            v15 = *(v22 + 7);
            v19 = sub_2393C9138();
            sub_2393D5320(0, 1);
          }

          [v3 shutdown];
          a1 = 0;
        }

        else
        {
          a1 = v3;
        }

        _Block_object_dispose(v21, 8);
      }

      else
      {
        v16 = sub_2393D9044(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *v21 = 0;
          _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "Failed to add OTA endpoint on factory.  Why?", v21, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(0, 1);
        }

        [v3 shutdown];
        a1 = 0;
      }
    }

    else
    {
      a1 = v3;
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return a1;
}

void sub_238DC9894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

id sub_238DC9B0C(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 556));
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = *(a1 + 560);
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v8)
    {
      v9 = *v19;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          if ([v11 matchesPendingShutdownControllerWithOperationalCertificate:v5 andRootCertificate:v6])
          {
            v13 = sub_2393D9044(0);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v23 = a1;
              v24 = 2112;
              v25 = v11;
              _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_DEFAULT, "%@ Found existing controller %@ that is pending shutdown and matching parameters, re-using it", buf, 0x16u);
            }

            if (sub_2393D5398(2u))
            {
              v16 = a1;
              v17 = v11;
              sub_2393D5320(0, 2);
            }

            [v11 clearPendingShutdown];
            v12 = v11;
            goto LABEL_16;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
LABEL_16:

    os_unfair_lock_unlock((a1 + 556));
  }

  else
  {
    v12 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

void sub_238DC9CFC(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v3 + 139);

  _Unwind_Resume(a1);
}

id sub_238DC9D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v28 = 0;
  if ((sub_238DCA104(*(a1 + 32), a2, *(a1 + 40), &v28) & 1) == 0)
  {
    v14 = sub_2393D9044(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "Can't start on existing fabric: fabric matching failed", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    v13 = 0;
    v15 = 0x2A8000000ACLL;
    goto LABEL_23;
  }

  v7 = v28;
  if (!v28)
  {
    v16 = sub_2393D9044(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "Can't start on existing fabric: fabric not found", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    v13 = 0;
    v15 = 0x2AE000000D8;
LABEL_23:
    *a4 = v15;
    a4[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceControllerFactory.mm";
    goto LABEL_34;
  }

  sub_238DC9394(*(a1 + 32));
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v8 = v24 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v9)
  {
    v10 = *v24;
LABEL_5:
    v11 = 0;
    while (1)
    {
      if (*v24 != v10)
      {
        objc_enumerationMutation(v8);
      }

      v12 = *(*(&v23 + 1) + 8 * v11);
      v22 = 1;
      if ([v12 isRunningOnFabric:a2 fabricIndex:*(v7 + 137) isRunning:&v22])
      {
        break;
      }

      if (v22 == 1)
      {
        v19 = sub_2393D9044(0);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "Can't start on existing fabric: another controller is running on it", buf, 2u);
        }

        v18 = 0x2C100000003;
        if (sub_2393D5398(1u))
        {
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (v9 == ++v11)
      {
        v9 = [v8 countByEnumeratingWithState:&v23 objects:v29 count:16];
        if (v9)
        {
          goto LABEL_5;
        }

        goto LABEL_12;
      }
    }

    v17 = sub_2393D9044(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Can't tell what fabric a controller is running on.  Not safe to start.", buf, 2u);
    }

    v18 = 0x2BB000000ACLL;
    if (sub_2393D5398(1u))
    {
LABEL_31:
      sub_2393D5320(0, 1);
    }

LABEL_32:
    *a4 = v18;
    a4[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceControllerFactory.mm";

    v13 = 0;
    goto LABEL_33;
  }

LABEL_12:

  v13 = [[MTRDeviceControllerStartupParamsInternal alloc] initForExistingFabric:a2 fabricIndex:*(v7 + 137) keystore:*(*(a1 + 32) + 512) advertiseOperational:*(*(a1 + 32) + 552) params:*(a1 + 40)];
  [v13 setProductAttestationAuthorityCertificates:*(*(a1 + 32) + 536)];
  [v13 setCertificationDeclarationCertificates:*(*(a1 + 32) + 544)];
LABEL_33:

LABEL_34:
  v20 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t sub_238DCA104(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (a1)
  {
    sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceControllerFactory.mm", 812);
    v24[0] = &unk_284BB9138;
    v8 = [v7 rootCertificate];
    v9 = v8 == 0;

    if (v9)
    {
      v15 = [v7 nocSigner];
      v16 = sub_238DC3C3C(v15, v24);

      if (v16)
      {
        v17 = sub_2393D9044(0);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = sub_2393C9138();
          *buf = 136315138;
          *&buf[4] = v18;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Can't extract public key from MTRKeypair: %s", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393C9138();
          sub_2393D5320(0, 1);
        }

        goto LABEL_13;
      }
    }

    else
    {
      v10 = [v7 rootCertificate];
      v11 = v10;
      sub_238DB6950(buf, [v10 bytes], objc_msgSend(v10, "length"));

      v23 = *buf;
      v12 = sub_2393FA970(&v23, v24);

      if (v12)
      {
        v13 = sub_2393D9044(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = sub_2393C9138();
          *buf = 136315138;
          *&buf[4] = v14;
          _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "Can't extract public key from root certificate: %s", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393C9138();
          sub_2393D5320(0, 1);
        }

        goto LABEL_13;
      }
    }

    v20 = [v7 fabricID];
    *a4 = sub_2394A7DA0(a2, v24, [v20 unsignedLongLongValue]);

    v19 = 1;
    goto LABEL_15;
  }

LABEL_13:
  v19 = 0;
LABEL_15:

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

id sub_238DCA6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v14 = 0;
  if ((sub_238DCA104(*(a1 + 32), a2, *(a1 + 40), &v14) & 1) == 0)
  {
    v9 = sub_2393D9044(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "Can't start on new fabric: fabric matching failed", buf, 2u);
    }

    v8 = 0x2F0000000ACLL;
    if (!sub_2393D5398(1u))
    {
      goto LABEL_11;
    }

LABEL_10:
    sub_2393D5320(0, 1);
LABEL_11:
    v10 = 0;
    *a4 = v8;
    a4[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceControllerFactory.mm";
    goto LABEL_12;
  }

  if (v14)
  {
    v7 = sub_2393D9044(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Can't start on new fabric that matches existing fabric", v12, 2u);
    }

    v8 = 0x2F600000003;
    if (!sub_2393D5398(1u))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v10 = [[MTRDeviceControllerStartupParamsInternal alloc] initForNewFabric:a2 keystore:*(*(a1 + 32) + 512) advertiseOperational:*(*(a1 + 32) + 552) params:*(a1 + 40)];
  [v10 setProductAttestationAuthorityCertificates:*(*(a1 + 32) + 536)];
  [v10 setCertificationDeclarationCertificates:*(*(a1 + 32) + 544)];
LABEL_12:

  return v10;
}

uint64_t sub_238DCA8B8(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 656);
  v3 = sub_2393D9044(0);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "Pre-warming commissioning session", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2);
    }

    v5 = sub_2394EF2A0(*(*(a1 + 32) + 16));
    if (qword_27DF7BD08 != -1)
    {
      sub_23952BA0C(v5);
    }

    v6 = sub_239479FB8(&byte_27DF7BCA8, *(a1 + 32) + 648, 1);
    if (v6)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v7 = sub_2393C9138();
        *buf = 136315138;
        *v11 = v7;
        _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "Pre-warming failed: %s", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393C9138();
        sub_2393D5320(0, 1);
      }

      sub_2394EF254(*(*(a1 + 32) + 16));
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "Can't pre-warm, Matter controller factory is not running", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    v6 = 3;
  }

  *buf = 2;
  *&v11[4] = "dwnfw_prewarm_commissioning";
  v12 = v6;
  v13 = 3;
  result = sub_23948BD20(buf);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_238DCAAE4(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 640));
    if ([*(a1 + 632) count] == 254)
    {
      os_unfair_lock_unlock((a1 + 640));
      v4 = sub_2393D9044(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = [v3 endpointID];
        *buf = 67109376;
        LOWORD(v27) = [v5 unsignedLongLongValue];
        v27 = v27;
        v28 = 1024;
        v29 = 254;
        _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "Can't add a server endpoint with endpoint ID %u, because we already have %u endpoints defined", buf, 0xEu);
      }

      if (sub_2393D5398(1u))
      {
        v6 = [v3 endpointID];
        [v6 unsignedLongLongValue];
        sub_2393D5320(0, 1);
      }

LABEL_20:
      a1 = 0;
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v7 = *(a1 + 632);
      v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v8)
      {
        v9 = *v22;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v22 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v21 + 1) + 8 * i);
            v12 = [v3 endpointID];
            v13 = [v11 endpointID];
            v14 = [v12 isEqual:v13];

            if (v14)
            {

              os_unfair_lock_unlock((a1 + 640));
              v15 = sub_2393D9044(0);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                v16 = [v3 endpointID];
                v17 = [v16 unsignedLongLongValue];
                *buf = 67109120;
                v27 = v17;
                _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "Trying to add a server endpoint with endpoint ID %u, which already exists", buf, 8u);
              }

              if (sub_2393D5398(1u))
              {
                v18 = [v3 endpointID];
                [v18 unsignedLongLongValue];
                sub_2393D5320(0, 1);
              }

              goto LABEL_20;
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      [*(a1 + 632) addObject:v3];
      os_unfair_lock_unlock((a1 + 640));
      a1 = 1;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t *sub_238DCAF30()
{
  if ((atomic_load_explicit(&qword_27DF717F8, memory_order_acquire) & 1) == 0)
  {
    sub_23952BCF0();
  }

  return &qword_27DF717C8;
}

void sub_238DCAF68(uint64_t a1)
{
  if ([*(a1 + 32) fabricIndex])
  {
    (*(*(*(a1 + 40) + 112) + 152))();
  }

  v2 = [*(*(a1 + 40) + 560) count];
  v3 = *(*(a1 + 40) + 616);
  if (v2)
  {
    if (v3)
    {
      sub_238EA6700(v3, *(a1 + 32));
    }
  }

  else
  {
    if (v3)
    {
      sub_238EA66BC(v3);
      v4 = *(a1 + 40);
      v5 = *(v4 + 616);
      *(v4 + 616) = 0;
      if (v5)
      {
        (*(*v5 + 32))(v5);
      }
    }

    v6 = *(*(a1 + 40) + 608);
    if (v6)
    {
      [v6 unregisterMatterEndpoint];
      [*(*(a1 + 40) + 608) invalidate];
      sub_238DCB0BC(*(a1 + 40), *(*(a1 + 40) + 608));
      v7 = *(a1 + 40);
      v8 = *(v7 + 608);
      *(v7 + 608) = 0;
    }
  }

  v9 = *(*(a1 + 40) + 624);
  if (v9)
  {
    [v9 abortDownloadsForController:*(a1 + 32)];
  }

  [*(a1 + 32) shutDownCppController];
  v10 = *(a1 + 40);
  v11 = *(v10 + 576);
  *(v10 + 576) = 0;

  v12 = *(a1 + 40);
  v13 = *(v12 + 568);
  if (v13 == *(a1 + 32))
  {
    *(v12 + 568) = 0;
  }
}

void sub_238DCB0BC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = v3;
    os_unfair_lock_lock((a1 + 640));
    [*(a1 + 632) removeObject:v4];
    os_unfair_lock_unlock((a1 + 640));
    v3 = v4;
  }
}

void sub_238DCB120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v10 + 160);

  _Unwind_Resume(a1);
}

unsigned __int8 *sub_238DCB13C(unsigned __int8 *a1, int a2, int a3, int a4)
{
  v4 = a1;
  v24 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceControllerFactory.mm", 985);
    v7 = sub_238DC9394(v4);
    os_unfair_lock_lock(v4 + 139);
    v8 = *(v4 + 71);
    v9 = *(v4 + 72);
    os_unfair_lock_unlock(v4 + 139);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = *v20;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          if ([v14 fabricIndex] == a2)
          {
            v4 = v14;

            goto LABEL_21;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    if (a3 && v8 && v4[584] == a2)
    {
      v15 = v8;
    }

    else
    {
      v4 = 0;
      if (!a4 || !v9)
      {
        goto LABEL_21;
      }

      if ([v9 fabricIndex] != a2)
      {
        v4 = 0;
        goto LABEL_21;
      }

      v15 = v9;
    }

    v4 = v15;
LABEL_21:
  }

  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

void sub_238DCB81C(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, double a7)
{
  v20 = a2;
  v13 = a3;
  v14 = a5;
  v15 = a6;
  if (a1)
  {
    sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceControllerFactory.mm", 1111);
    v16 = *(a1 + 624);
    if (!v16)
    {
      v17 = objc_alloc_init(MTRDiagnosticLogsDownloader);
      v18 = *(a1 + 624);
      *(a1 + 624) = v17;

      v19 = *(*(*(a1 + 16) + 8) + 80);
      *(v19 + 24) = [*(a1 + 624) getBridge];
      v16 = *(a1 + 624);
    }

    [v16 downloadLogFromNodeWithID:v20 controller:v13 type:a4 timeout:v14 queue:v15 completion:a7];
  }
}

void sub_238DCB940(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceControllerFactory.mm", 1129);
    sub_238DC9394(a1);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v4 = v14 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = *v14;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          v9 = [v8 compressedFabricID];
          v10 = v9;
          if (v9 && [v9 unsignedLongLongValue] == a2[1])
          {
            v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*a2];
            [v8 operationalInstanceAdded:v11];
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

id sub_238DCBAF4(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    sub_238DC7868(a1);
    v9 = [v8 operationalCertificate];
    v10 = [v8 rootCertificate];
    v11 = sub_238DC9B0C(a1, v9, v10);

    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = sub_238DCBC88;
      v14[3] = &unk_278A72380;
      v14[4] = a1;
      v15 = v8;
      v12 = sub_238DC871C(a1, v7, v15, v14, a4);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id sub_238DCBC88(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  if (*(*(a1 + 32) + 552) == 1)
  {
    v8 = [*(a1 + 40) shouldAdvertiseOperational];
  }

  else
  {
    v8 = 0;
  }

  v9 = [[MTRDeviceControllerStartupParamsInternal alloc] initForNewController:v7 fabricTable:a2 keystore:*(*(a1 + 32) + 512) advertiseOperational:v8 params:*(a1 + 40) error:a4];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 productAttestationAuthorityCertificates];

    if (!v11)
    {
      [v10 setProductAttestationAuthorityCertificates:*(*(a1 + 32) + 536)];
    }

    v12 = [v10 certificationDeclarationCertificates];

    if (!v12)
    {
      [v10 setCertificationDeclarationCertificates:*(*(a1 + 32) + 544)];
    }
  }

  return v10;
}

void sub_238DCBDA4(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    sub_238DC7868(a1);
    v13 = sub_2393D9044(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413314;
      v23 = a1;
      v24 = 2112;
      v25 = v9;
      v26 = 2112;
      v27 = v10;
      v28 = 2112;
      v29 = v11;
      v30 = 2112;
      v31 = v12;
      _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_DEFAULT, "%@ setting MRP params: idle %@ active %@ threshold %@ additional retransmit delay %@", buf, 0x34u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2);
    }

    v14 = *(a1 + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_238DCBFAC;
    block[3] = &unk_278A723D0;
    v17 = v9;
    v18 = v10;
    v19 = v11;
    v20 = v12;
    v21 = a1;
    dispatch_async(v14, block);
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t sub_238DCBFAC(void *a1)
{
  if (!a1[4] && !a1[5] && !a1[6] && !a1[7])
  {
    v16[0] = 0;
    sub_23947562C(v16);
    v16[0] = 0;
    result = sub_239475EF8(v16);
    if ((result & 1) == 0)
    {
      return result;
    }

    return sub_23952B8E0(a1[8]);
  }

  v2 = a1[7];
  if (v2)
  {
    v16[0] = 1;
    v17 = [v2 unsignedLongValue];
    sub_23947562C(v16);
  }

  sub_239476008(v16);
  v3 = sub_239476060();
  v5 = v4;
  v14 = v3;
  LOWORD(v15) = v4;
  if (v16[0] == 1)
  {
    v6 = sub_238DD173C(v16);
    v7 = *v6;
    v5 = *(v6 + 4);
  }

  else
  {
    v7 = v3;
    v6 = &v14;
  }

  v8 = *(v6 + 1);
  v9 = *(v6 + 5);
  v10 = a1[4];
  if (v10)
  {
    v7 = [v10 unsignedLongValue];
  }

  v11 = a1[5];
  if (v11)
  {
    v8 = [v11 unsignedLongValue];
  }

  v12 = a1[6];
  if (v12)
  {
    v5 = [v12 unsignedLongValue];
  }

  v16[0] = 1;
  v17 = v7;
  v18 = v8;
  v19 = v5;
  v20 = v9;
  result = sub_239475EF8(v16);
  if (result)
  {
    return sub_23952B8E0(a1[8]);
  }

  return result;
}

uint64_t sub_238DCC0E4(uint64_t a1)
{
  if (a1)
  {
    return a1 + 112;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_238DCC22C(uint64_t a1)
{
  *a1 = &unk_284BA8DE0;
  sub_238DCE6F4(a1 + 32, *(a1 + 40));
  sub_238DCE758(a1 + 8, *(a1 + 16));
  return a1;
}

void sub_238DCC5C8()
{
  v0 = objc_alloc_init(MTRControllerFactory);
  v1 = qword_27DF77588;
  qword_27DF77588 = v0;
}

void MTRSetMessageReliabilityParameters(void *a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a1;
  v6 = a3;
  v7 = a4;
  v8 = +[MTRDeviceControllerFactory sharedInstance];
  sub_238DCBDA4(v8, v9, v6, v6, v7);
}

void sub_238DCC8A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_238DCC8D8(uint64_t a1)
{
  sub_238DCC918(a1);
  *(a1 + 32) = 0;
  v2 = *(a1 + 24);
  if (v2)
  {
    j__free(v2);
    *(a1 + 24) = 0;
  }

  *(a1 + 16) = 0;
  *(a1 + 104) = 0;
}

void sub_238DCC918(uint64_t a1)
{
  *(a1 + 48) = 0;
  v2 = *(a1 + 40);
  if (v2)
  {
    j__free(v2);
    *(a1 + 40) = 0;
  }

  *(a1 + 64) = 0;
  v3 = *(a1 + 56);
  if (v3)
  {
    j__free(v3);
    *(a1 + 56) = 0;
  }

  if (!*(a1 + 24))
  {
    *(a1 + 16) = 0;
  }

  *(a1 + 104) &= 0xFAu;

  sub_238DCC990(a1);
}

void sub_238DCC990(uint64_t a1)
{
  *(a1 + 80) = 0;
  v2 = *(a1 + 72);
  if (v2)
  {
    j__free(v2);
    *(a1 + 72) = 0;
  }

  *(a1 + 96) = 0;
  v3 = *(a1 + 88);
  if (v3)
  {
    j__free(v3);
    *(a1 + 88) = 0;
  }

  *(a1 + 104) &= 0xE7u;
}

uint64_t sub_238DCC9E4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    sub_238DCC8D8(a1);
    *(a1 + 8) = 0;
  }

  sub_238DCCA48((a1 + 88));
  sub_238DCCA48((a1 + 72));
  sub_238DCCA48((a1 + 56));
  sub_238DCCA48((a1 + 40));
  sub_238DCCA48((a1 + 24));
  return a1;
}

void **sub_238DCCA48(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    j__free(v2);
    *a1 = 0;
  }

  return a1;
}

void sub_238DCCA80(uint64_t a1)
{
  if ((*(a1 + 33) & 1) == 0)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      (**v2)(*(a1 + 24));
      j__free(v2);
    }
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_238DCCAEC(uint64_t a1)
{
  v2 = 0;
  v3 = (a1 + 2432);
  do
  {
    v4 = a1 + v2;
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    *(v4 + 24) = &unk_284BB9138;
    *(v4 + 104) = 0u;
    *(v4 + 120) = 0u;
    *(v4 + 136) = 0;
    *(v4 + 138) = 16842751;
    *(v4 + 144) = 0;
    sub_238DCCC50(a1 + v2);
    v2 += 152;
  }

  while (v2 != 2432);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  *(a1 + 2456) = &unk_284BB9138;
  *(a1 + 2568) = 0;
  *(a1 + 2536) = 0u;
  *(a1 + 2552) = 0u;
  *(a1 + 2570) = 16842751;
  *(a1 + 2576) = 0;
  sub_238DCCC50(v3);
  *(a1 + 2624) = 0;
  *(a1 + 2632) = 0;
  *(a1 + 2640) = 0;
  *(a1 + 2642) = 0;
  *(a1 + 2644) = 0;
  *(a1 + 2616) = 0;
  *(a1 + 2584) = 0u;
  *(a1 + 2600) = 0u;
  return a1;
}

void sub_238DCCBF8(_Unwind_Exception *a1)
{
  v3 = v1 + 2280;
  v4 = -2432;
  do
  {
    sub_238DCCC50(v3);
    v3 -= 152;
    v4 += 152;
  }

  while (v4);
  _Unwind_Resume(a1);
}

void sub_238DCCC50(uint64_t a1)
{
  *(a1 + 137) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 138) = -1;
  *(a1 + 104) = 0;
  if ((*(a1 + 140) & 1) == 0)
  {
    v2 = *(a1 + 144);
    if (v2)
    {
      (**v2)(*(a1 + 144));
      j__free(v2);
    }
  }

  *(a1 + 144) = 0;
  *(a1 + 140) = 256;
  *(a1 + 137) = 0;
  *a1 = 0;
}

void *sub_238DCCCDC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 2569) && (result[304] - 1) <= 0xFFFFFFEFFFFFFFFELL)
  {
    v2 = result + 304;
    if ((~*(result + 1322) & 5) != 0)
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  *a2 = result;
  *(a2 + 8) = v2;
  *(a2 + 16) = xmmword_23958D8F0;
  if (!*(result + 137) || (*result - 1) >= 0xFFFFFFEFFFFFFFFFLL)
  {
    return sub_238DCCD50(a2);
  }

  return result;
}

void *sub_238DCCD50(void *result)
{
  v2 = result[2];
  v1 = result[3];
  while (1)
  {
    if (v2 < v1)
    {
      result[2] = ++v2;
    }

    if (v2 == v1)
    {
      break;
    }

    v3 = *result + 152 * v2;
    if (*(v3 + 137))
    {
      if ((*v3 - 1) <= 0xFFFFFFEFFFFFFFFELL)
      {
        break;
      }
    }
  }

  return result;
}

uint64_t sub_238DCCD9C(uint64_t a1)
{
  sub_238DCCC50(a1 + 2432);
  for (i = 2280; i != -152; i -= 152)
  {
    sub_238DCCC50(a1 + i);
  }

  return a1;
}

uint64_t *sub_238DCCDE8(uint64_t *a1)
{
  *a1 = &unk_284BBC5B0;
  v2 = a1 + 5;
  sub_238DCCE5C(a1 + 40);
  sub_238DCD058(a1 + 33);
  sub_238DCD188(a1 + 26);
  sub_238DCD2B8(a1 + 19);
  sub_238DCD3E8(a1 + 12);
  sub_238DCD518(v2);
  return a1;
}

uint64_t *sub_238DCCE5C(uint64_t *result)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((byte_27DF7BD68 & 1) == 0 && *result)
  {
    sub_238DCCF8C(result);
    v2 = sub_2393D9044(0x1Bu);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v4 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/lib/support/Pool.h";
      v5 = 1024;
      v6 = 405;
      v7 = 2080;
      v8 = "Allocated() == 0";
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "VerifyOrDie failure at %s:%d: %s", buf, 0x1Cu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0x1Bu, 1);
    }

    abort();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_238DCCF80(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_238DC7854(a1);
}

uint64_t sub_238DCCF8C(uint64_t *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = sub_2393D9044(0x1Bu);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *a1;
    *buf = 134217984;
    v8 = v3;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "HeapObjectPool: %lu allocated", buf, 0xCu);
  }

  result = sub_2393D5398(1u);
  if (result)
  {
    v6 = *a1;
    result = sub_2393D5320(0x1Bu, 1);
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *sub_238DCD058(uint64_t *result)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((byte_27DF7BD68 & 1) == 0 && *result)
  {
    sub_238DCCF8C(result);
    v2 = sub_2393D9044(0x1Bu);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v4 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/lib/support/Pool.h";
      v5 = 1024;
      v6 = 405;
      v7 = 2080;
      v8 = "Allocated() == 0";
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "VerifyOrDie failure at %s:%d: %s", buf, 0x1Cu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0x1Bu, 1);
    }

    abort();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_238DCD17C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_238DC7854(a1);
}

uint64_t *sub_238DCD188(uint64_t *result)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((byte_27DF7BD68 & 1) == 0 && *result)
  {
    sub_238DCCF8C(result);
    v2 = sub_2393D9044(0x1Bu);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v4 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/lib/support/Pool.h";
      v5 = 1024;
      v6 = 405;
      v7 = 2080;
      v8 = "Allocated() == 0";
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "VerifyOrDie failure at %s:%d: %s", buf, 0x1Cu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0x1Bu, 1);
    }

    abort();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_238DCD2AC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_238DC7854(a1);
}

uint64_t *sub_238DCD2B8(uint64_t *result)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((byte_27DF7BD68 & 1) == 0 && *result)
  {
    sub_238DCCF8C(result);
    v2 = sub_2393D9044(0x1Bu);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v4 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/lib/support/Pool.h";
      v5 = 1024;
      v6 = 405;
      v7 = 2080;
      v8 = "Allocated() == 0";
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "VerifyOrDie failure at %s:%d: %s", buf, 0x1Cu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0x1Bu, 1);
    }

    abort();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_238DCD3DC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_238DC7854(a1);
}

uint64_t *sub_238DCD3E8(uint64_t *result)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((byte_27DF7BD68 & 1) == 0 && *result)
  {
    sub_238DCCF8C(result);
    v2 = sub_2393D9044(0x1Bu);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v4 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/lib/support/Pool.h";
      v5 = 1024;
      v6 = 405;
      v7 = 2080;
      v8 = "Allocated() == 0";
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "VerifyOrDie failure at %s:%d: %s", buf, 0x1Cu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0x1Bu, 1);
    }

    abort();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_238DCD50C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_238DC7854(a1);
}

uint64_t *sub_238DCD518(uint64_t *result)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((byte_27DF7BD68 & 1) == 0 && *result)
  {
    sub_238DCCF8C(result);
    v2 = sub_2393D9044(0x1Bu);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v4 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/lib/support/Pool.h";
      v5 = 1024;
      v6 = 405;
      v7 = 2080;
      v8 = "Allocated() == 0";
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "VerifyOrDie failure at %s:%d: %s", buf, 0x1Cu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0x1Bu, 1);
    }

    abort();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_238DCD63C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_238DC7854(a1);
}

void sub_238DCD648(uint64_t a1)
{
  *a1 = &unk_284BA8DE0;
  sub_238DCE6F4(a1 + 32, *(a1 + 40));
  sub_238DCE758(a1 + 8, *(a1 + 16));

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_238DCD6C0(_DWORD *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a1[15] >= 2u)
  {
    v8 = sub_2393D9044(0x24u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = "(null)";
      if (a2)
      {
        v9 = a2;
      }

      *buf = 136315138;
      v19 = v9;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_INFO, "TestPersistentStorageDelegate::SyncGetKeyValue: Get key '%s'", buf, 0xCu);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0x24u, 3);
    }
  }

  v10 = (*(*a1 + 120))(a1, a2, a3, a4);
  v11 = v10;
  if (a1[15] >= 2u)
  {
    if (v10 == 159)
    {
      v14 = sub_2393D9044(0x24u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = "(null)";
        if (a2)
        {
          v15 = a2;
        }

        *buf = 136315138;
        v19 = v15;
        _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_INFO, "--> TestPersistentStorageDelegate::SyncGetKeyValue: Key '%s' is a poison key", buf, 0xCu);
      }

      if (sub_2393D5398(3u))
      {
        goto LABEL_22;
      }
    }

    else if (v10 == 160)
    {
      v12 = sub_2393D9044(0x24u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = "(null)";
        if (a2)
        {
          v13 = a2;
        }

        *buf = 136315138;
        v19 = v13;
        _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_INFO, "--> TestPersistentStorageDelegate::SyncGetKeyValue: Key '%s' not found", buf, 0xCu);
      }

      if (sub_2393D5398(3u))
      {
LABEL_22:
        sub_2393D5320(0x24u, 3);
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t sub_238DCD930(_DWORD *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a1[15])
  {
    v8 = sub_2393D9044(0x24u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v16 = a2;
      v17 = 1024;
      v18 = a4;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_INFO, "TestPersistentStorageDelegate::SyncSetKeyValue, Set key '%s' with data size %u", buf, 0x12u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0x24u, 3);
    }
  }

  v9 = (*(*a1 + 128))(a1, a2, a3, a4);
  v10 = v9;
  if (a1[15] >= 2u && v9 == 159)
  {
    v11 = sub_2393D9044(0x24u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      if (a2)
      {
        v12 = a2;
      }

      else
      {
        v12 = "(null)";
      }

      *buf = 136315138;
      v16 = v12;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_INFO, "--> TestPersistentStorageDelegate::SyncSetKeyValue: Key '%s' is a poison key", buf, 0xCu);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0x24u, 3);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_238DCDB08(_DWORD *a1, const char *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a1[15])
  {
    v4 = sub_2393D9044(0x24u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      if (a2)
      {
        v5 = a2;
      }

      else
      {
        v5 = "(null)";
      }

      *buf = 136315138;
      v15 = v5;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "TestPersistentStorageDelegate::SyncDeleteKeyValue, Delete key '%s'", buf, 0xCu);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0x24u, 3);
    }
  }

  v6 = (*(*a1 + 136))(a1, a2);
  v7 = v6;
  if (a1[15])
  {
    if (v6 == 159)
    {
      v10 = sub_2393D9044(0x24u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = "(null)";
        if (a2)
        {
          v11 = a2;
        }

        *buf = 136315138;
        v15 = v11;
        _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_INFO, "--> TestPersistentStorageDelegate::SyncDeleteKeyValue: Key '%s' is a poison key", buf, 0xCu);
      }

      if (sub_2393D5398(3u))
      {
        goto LABEL_23;
      }
    }

    else if (v6 == 160)
    {
      v8 = sub_2393D9044(0x24u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = "(null)";
        if (a2)
        {
          v9 = a2;
        }

        *buf = 136315138;
        v15 = v9;
        _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_INFO, "--> TestPersistentStorageDelegate::SyncDeleteKeyValue: Key '%s' not found", buf, 0xCu);
      }

      if (sub_2393D5398(3u))
      {
LABEL_23:
        sub_2393D5320(0x24u, 3);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_238DCDD64(uint64_t a1)
{
  v1 = (a1 + 40);
  sub_238DCE6F4(a1 + 32, *(a1 + 40));
  *v1 = 0;
  v1[1] = 0;
  *(v1 - 1) = v1;
}

void sub_238DCDD98(uint64_t a1)
{
  v1 = (a1 + 16);
  sub_238DCE758(a1 + 8, *(a1 + 16));
  *v1 = 0;
  v1[1] = 0;
  *(v1 - 1) = v1;
}

uint64_t sub_238DCDDD4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  v3 = *(result + 8);
  v4 = (result + 16);
  if (v3 != (result + 16))
  {
    do
    {
      result = sub_238DCE80C(a2, v3 + 4);
      v5 = v3[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != v4);
  }

  return result;
}

void sub_238DCDEB4(uint64_t a1)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = sub_2393D9044(0x24u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = (*(*a1 + 80))(a1);
    *buf = 67109120;
    *&buf[4] = v3;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "TestPersistentStorageDelegate::DumpKeys: %u keys", buf, 8u);
  }

  if (sub_2393D5398(1u))
  {
    (*(*a1 + 80))(a1);
    sub_2393D5320(0x24u, 1);
  }

  (*(*a1 + 88))(buf, a1);
  sub_238DCEDE8(&v13, *buf, v18);
  v4 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (v14 - v13));
  if (v14 == v13)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  sub_238DCF1A8(v13, v14, &v15, v5, 1);
  v6 = v13;
  v7 = v14;
  while (v6 != v7)
  {
    v8 = *(v6 + 23);
    v9 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
    if (v8 < 0)
    {
      if (v9)
      {
        v10 = *v6;
        goto LABEL_14;
      }
    }

    else if (v9)
    {
      v10 = v6;
LABEL_14:
      *v16 = 136315138;
      *&v16[4] = v10;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "  -> %s", v16, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      if (*(v6 + 23) < 0)
      {
        v11 = *v6;
      }

      sub_2393D5320(0x24u, 1);
    }

    v6 += 3;
  }

  *v16 = &v13;
  sub_238DCF104(v16);
  sub_238DCE6F4(buf, v18[0]);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_238DCE130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, char a19, char *a20)
{
  a17 = &a13;
  sub_238DCF104(&a17);
  sub_238DCE6F4(&a19, a20);
  _Unwind_Resume(a1);
}

uint64_t sub_238DCE16C(uint64_t a1, char *__s, void *a3, _WORD *a4)
{
  if (!a3 && *a4)
  {
    v8 = 0xD200000000;
    v9 = 47;
    return v8 | v9;
  }

  sub_238DD0E08(__p, __s);
  v10 = sub_238DCED58(a1 + 32, __p);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 40 != v10)
  {
    v8 = 0xD700000000;
LABEL_8:
    v9 = 159;
    return v8 | v9;
  }

  sub_238DD0E08(__p, __s);
  v11 = (*(*a1 + 96))(a1, __p);
  v12 = v11;
  if ((v24 & 0x80000000) == 0)
  {
    if (v11)
    {
      goto LABEL_11;
    }

LABEL_27:
    v8 = 0xDB00000000;
    v9 = 160;
    return v8 | v9;
  }

  operator delete(__p[0]);
  if ((v12 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_11:
  sub_238DD0E08(__p, __s);
  v25 = __p;
  v13 = sub_238DD0EC0(a1 + 8, __p);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  v14 = *(v13 + 56);
  v15 = *(v13 + 64);
  v16 = v15 - v14;
  if ((v15 - v14) >= 0x10000)
  {
    v8 = 0xE100000000;
    goto LABEL_8;
  }

  v17 = *a4 == 0;
  v18 = v15 == v14;
  v20 = v18 && v17;
  v19 = !v18 || !v17;
  if (v18 && v17)
  {
    v9 = 0;
  }

  else
  {
    v9 = 25;
  }

  v8 = 0xE600000000;
  if (!v19)
  {
    v8 = 0;
  }

  if (a3 && !v20)
  {
    if (*a4 >= v16)
    {
      v21 = v16;
    }

    else
    {
      v21 = *a4;
    }

    *a4 = v21;
    memcpy(a3, v14, v21);
    if (*a4 >= v16)
    {
      v9 = 0;
      v8 = 0;
    }

    else
    {
      v8 = 0xEC00000000;
      v9 = 25;
    }
  }

  return v8 | v9;
}

void sub_238DCE368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_238DCE38C(uint64_t a1, char *a2, uint64_t a3, unsigned int a4)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    sub_238DD0E08(__p, a2);
    v8 = sub_238DCED58(a1 + 32, __p);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }

    if (a1 + 40 == v8)
    {
      if (a3)
      {
        __p[0] = 0;
        __p[1] = 0;
        v21 = 0;
        sub_238DD0FD8(__p, a3, a3 + a4, a4);
        sub_238DD0E08(v18, a2);
        v22 = v18;
        v12 = sub_238DD0EC0(a1 + 8, v18);
        v13 = v12[7];
        if (v13)
        {
          v12[8] = v13;
          operator delete(v13);
          v12[7] = 0;
          v12[8] = 0;
          v12[9] = 0;
        }

        *(v12 + 7) = *__p;
        v12[9] = v21;
        __p[1] = 0;
        v21 = 0;
        __p[0] = 0;
        if ((v19 & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

        operator delete(v18[0]);
        v14 = __p[0];
        if (!__p[0])
        {
          goto LABEL_20;
        }

        __p[1] = __p[0];
      }

      else
      {
        if (a4)
        {
          v9 = 0x10000000000;
          v10 = 47;
          return v9 | v10;
        }

        sub_238DD0E08(__p, a2);
        v18[0] = __p;
        v15 = sub_238DD0EC0(a1 + 8, __p);
        v17 = (v15 + 56);
        v16 = *(v15 + 56);
        if (v16)
        {
          *(v15 + 64) = v16;
          operator delete(v16);
          *v17 = 0;
          v17[1] = 0;
          v17[2] = 0;
        }

        *v17 = 0;
        v17[1] = 0;
        v17[2] = 0;
        if ((SHIBYTE(v21) & 0x80000000) == 0)
        {
LABEL_20:
          v10 = 0;
          v9 = 0;
          return v9 | v10;
        }

        v14 = __p[0];
      }

      operator delete(v14);
      goto LABEL_20;
    }
  }

  v9 = 0xF400000000;
  v10 = 159;
  return v9 | v10;
}

void sub_238DCE558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_238DCE5AC(uint64_t a1, char *a2)
{
  if (*(a1 + 56))
  {
    goto LABEL_5;
  }

  sub_238DD0E08(__p, a2);
  v4 = sub_238DCED58(a1 + 32, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 40 != v4)
  {
LABEL_5:
    v5 = 0x10E00000000;
    v6 = 159;
    return v5 | v6;
  }

  sub_238DD0E08(__p, a2);
  v8 = (*(*a1 + 96))(a1, __p);
  v9 = v8;
  if (v11 < 0)
  {
    operator delete(__p[0]);
    if (v9)
    {
      goto LABEL_9;
    }

LABEL_13:
    v5 = 0x11200000000;
    v6 = 160;
    return v5 | v6;
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  sub_238DD0E08(__p, a2);
  sub_238DD109C((a1 + 8), __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = 0;
  v5 = 0;
  return v5 | v6;
}

void sub_238DCE6D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_238DCE6F4(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_238DCE6F4(a1, *a2);
    sub_238DCE6F4(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void sub_238DCE758(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_238DCE758(a1, *a2);
    sub_238DCE758(a1, a2[1]);
    sub_238DCE7B4((a2 + 4));

    operator delete(a2);
  }
}

void sub_238DCE7B4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t sub_238DCE80C(uint64_t a1, const void **a2)
{
  result = *sub_238DCE88C(a1, &v3, a2);
  if (!result)
  {
    sub_238DCE928();
  }

  return result;
}

uint64_t sub_238DCE88C(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_238DCEA30(a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_238DCEA30(a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

void sub_238DCE9BC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_238DCECF4(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_238DCE9D8(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_238DCEB58(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

BOOL sub_238DCEA30(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

void *sub_238DCEA9C(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_238DCEB40();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

uint64_t *sub_238DCEB58(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void sub_238DCECF4(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_238DCED58(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = sub_238DCEA30(a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || sub_238DCEA30(a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

void *sub_238DCEDE8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 != a3)
  {
    v4 = 0;
    v5 = a2;
    do
    {
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      ++v4;
      v5 = v7;
    }

    while (v7 != a3);
  }

  sub_238DCEE6C(a1, a2, a3, v4);
  return a1;
}

uint64_t sub_238DCEE6C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_238DCEEF4(result, a4);
  }

  return result;
}

void sub_238DCEED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_238DCF104(&a9);
  _Unwind_Resume(a1);
}

void sub_238DCEEF4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_238DCEF40(a1, a2);
  }

  sub_238DBAEA8();
}

void sub_238DCEF40(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_238DBAFA8();
}

void *sub_238DCEF98(uint64_t a1, void *a2, void *a3, void *__dst)
{
  v4 = __dst;
  v14 = __dst;
  v15 = __dst;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 55) < 0)
      {
        sub_238DCEA9C(v4, v6[4], v6[5]);
      }

      else
      {
        v7 = *(v6 + 2);
        v4[2] = v6[6];
        *v4 = v7;
      }

      v8 = v6[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v4 = v15 + 24;
      v15 += 24;
      v6 = v9;
    }

    while (v9 != a3);
  }

  v13 = 1;
  sub_238DCF084(v12);
  return v4;
}

uint64_t sub_238DCF084(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_238DCF0BC(a1);
  }

  return a1;
}

void sub_238DCF0BC(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void sub_238DCF104(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_238DCF158(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_238DCF158(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void sub_238DCF1A8(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2 - 3;
  v74 = a2 - 6;
  v9 = a2 - 9;
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xAAAAAAAAAAAAAAABLL * (a2 - v10);
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return;
    }

    if (v14 == 2)
    {
      if (sub_238DCEA30(a3, a2 - 3, v10))
      {
LABEL_77:
        v122 = v10[2];
        v98 = *v10;
        v70 = *v8;
        v10[2] = v8[2];
        *v10 = v70;
        *v8 = v98;
        v59 = v122;
        goto LABEL_78;
      }

      return;
    }

LABEL_10:
    if (v13 <= 575)
    {
      if (a5)
      {

        sub_238DCFE94(v10, a2, a3);
      }

      else
      {

        sub_238DCFFB8(v10, a2, a3);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        sub_238DD0858(v10, a2, a2, a3);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = &v10[3 * (v14 >> 1)];
    if (v13 >= 0xC01)
    {
      v17 = sub_238DCEA30(a3, &v10[3 * v15], v10);
      v18 = sub_238DCEA30(a3, a2 - 3, (a1 + 24 * v15));
      if (v17)
      {
        if (v18)
        {
          v100 = *(a1 + 16);
          v76 = *a1;
          v19 = *v8;
          *(a1 + 16) = *(a2 - 1);
          *a1 = v19;
          goto LABEL_27;
        }

        v106 = *(a1 + 16);
        v82 = *a1;
        v27 = *v16;
        *(a1 + 16) = v16[2];
        *a1 = v27;
        v16[2] = v106;
        *v16 = v82;
        if (sub_238DCEA30(a3, a2 - 3, (a1 + 24 * v15)))
        {
          v100 = v16[2];
          v76 = *v16;
          v28 = *v8;
          v16[2] = *(a2 - 1);
          *v16 = v28;
LABEL_27:
          *v8 = v76;
          *(a2 - 1) = v100;
        }
      }

      else if (v18)
      {
        v102 = v16[2];
        v78 = *v16;
        v23 = *v8;
        v16[2] = *(a2 - 1);
        *v16 = v23;
        *v8 = v78;
        *(a2 - 1) = v102;
        if (sub_238DCEA30(a3, (a1 + 24 * v15), a1))
        {
          v103 = *(a1 + 16);
          v79 = *a1;
          v24 = *v16;
          *(a1 + 16) = v16[2];
          *a1 = v24;
          v16[2] = v103;
          *v16 = v79;
        }
      }

      v29 = a1 + 24 * v15 - 24;
      v30 = sub_238DCEA30(a3, v29, (a1 + 24));
      v31 = sub_238DCEA30(a3, v74, v29);
      if (v30)
      {
        if (v31)
        {
          v32 = *(a1 + 40);
          v33 = *(a1 + 24);
          v34 = *(a2 - 4);
          *(a1 + 24) = *v74;
          *(a1 + 40) = v34;
          *v74 = v33;
          *(a2 - 4) = v32;
        }

        else
        {
          v86 = *(a1 + 24);
          v110 = *(a1 + 40);
          v39 = *(a1 + 24 * v15 - 8);
          *(a1 + 24) = *v29;
          *(a1 + 40) = v39;
          *(a1 + 24 * v15 - 8) = v110;
          *v29 = v86;
          if (sub_238DCEA30(a3, v74, v29))
          {
            v111 = *(a1 + 24 * v15 - 8);
            v87 = *v29;
            v40 = *v74;
            *(a1 + 24 * v15 - 8) = *(a2 - 4);
            *v29 = v40;
            *v74 = v87;
            *(a2 - 4) = v111;
          }
        }
      }

      else if (v31)
      {
        v107 = *(a1 + 24 * v15 - 8);
        v83 = *v29;
        v35 = *v74;
        *(a1 + 24 * v15 - 8) = *(a2 - 4);
        *v29 = v35;
        *v74 = v83;
        *(a2 - 4) = v107;
        if (sub_238DCEA30(a3, v29, (a1 + 24)))
        {
          v84 = *(a1 + 24);
          v108 = *(a1 + 40);
          v36 = *(a1 + 24 * v15 - 8);
          *(a1 + 24) = *v29;
          *(a1 + 40) = v36;
          *(a1 + 24 * v15 - 8) = v108;
          *v29 = v84;
        }
      }

      v41 = a1 + 24 * v15;
      v42 = sub_238DCEA30(a3, (v41 + 24), (a1 + 48));
      v43 = sub_238DCEA30(a3, a2 - 9, (v41 + 24));
      if (v42)
      {
        if (v43)
        {
          v44 = *(a1 + 64);
          v45 = *(a1 + 48);
          v46 = *(a2 - 7);
          *(a1 + 48) = *v9;
          *(a1 + 64) = v46;
          *v9 = v45;
          goto LABEL_47;
        }

        v90 = *(a1 + 48);
        v114 = *(a1 + 64);
        v49 = *(v41 + 40);
        *(a1 + 48) = *(v41 + 24);
        *(a1 + 64) = v49;
        *(v41 + 40) = v114;
        *(v41 + 24) = v90;
        if (sub_238DCEA30(a3, a2 - 9, (v41 + 24)))
        {
          v115 = *(v41 + 40);
          v91 = *(v41 + 24);
          v50 = *v9;
          *(v41 + 40) = *(a2 - 7);
          *(v41 + 24) = v50;
          *v9 = v91;
          v44 = v115;
LABEL_47:
          *(a2 - 7) = v44;
        }
      }

      else if (v43)
      {
        v112 = *(v41 + 40);
        v88 = *(v41 + 24);
        v47 = *v9;
        *(v41 + 40) = *(a2 - 7);
        *(v41 + 24) = v47;
        *v9 = v88;
        *(a2 - 7) = v112;
        if (sub_238DCEA30(a3, (v41 + 24), (a1 + 48)))
        {
          v89 = *(a1 + 48);
          v113 = *(a1 + 64);
          v48 = *(v41 + 40);
          *(a1 + 48) = *(v41 + 24);
          *(a1 + 64) = v48;
          *(v41 + 40) = v113;
          *(v41 + 24) = v89;
        }
      }

      v51 = sub_238DCEA30(a3, v16, v29);
      v52 = sub_238DCEA30(a3, (v41 + 24), v16);
      if (v51)
      {
        if (v52)
        {
          v116 = *(v29 + 16);
          v92 = *v29;
          *v29 = *(v41 + 24);
          *(v29 + 16) = *(v41 + 40);
          goto LABEL_56;
        }

        v119 = *(v29 + 16);
        v95 = *v29;
        *v29 = *v16;
        *(v29 + 16) = v16[2];
        v16[2] = v119;
        *v16 = v95;
        if (sub_238DCEA30(a3, (v41 + 24), v16))
        {
          v116 = v16[2];
          v92 = *v16;
          *v16 = *(v41 + 24);
          v16[2] = *(v41 + 40);
LABEL_56:
          *(v41 + 40) = v116;
          *(v41 + 24) = v92;
        }
      }

      else if (v52)
      {
        v117 = v16[2];
        v93 = *v16;
        *v16 = *(v41 + 24);
        v16[2] = *(v41 + 40);
        *(v41 + 40) = v117;
        *(v41 + 24) = v93;
        if (sub_238DCEA30(a3, v16, v29))
        {
          v118 = *(v29 + 16);
          v94 = *v29;
          *v29 = *v16;
          *(v29 + 16) = v16[2];
          v16[2] = v118;
          *v16 = v94;
        }
      }

      v120 = *(a1 + 16);
      v96 = *a1;
      v53 = *v16;
      *(a1 + 16) = v16[2];
      *a1 = v53;
      v16[2] = v120;
      *v16 = v96;
      goto LABEL_58;
    }

    v20 = sub_238DCEA30(a3, v10, &v10[3 * v15]);
    v21 = sub_238DCEA30(a3, a2 - 3, a1);
    if (v20)
    {
      if (v21)
      {
        v101 = v16[2];
        v77 = *v16;
        v22 = *v8;
        v16[2] = *(a2 - 1);
        *v16 = v22;
LABEL_36:
        *v8 = v77;
        *(a2 - 1) = v101;
        goto LABEL_58;
      }

      v109 = v16[2];
      v85 = *v16;
      v37 = *a1;
      v16[2] = *(a1 + 16);
      *v16 = v37;
      *(a1 + 16) = v109;
      *a1 = v85;
      if (sub_238DCEA30(a3, a2 - 3, a1))
      {
        v101 = *(a1 + 16);
        v77 = *a1;
        v38 = *v8;
        *(a1 + 16) = *(a2 - 1);
        *a1 = v38;
        goto LABEL_36;
      }
    }

    else if (v21)
    {
      v104 = *(a1 + 16);
      v80 = *a1;
      v25 = *v8;
      *(a1 + 16) = *(a2 - 1);
      *a1 = v25;
      *v8 = v80;
      *(a2 - 1) = v104;
      if (sub_238DCEA30(a3, a1, (a1 + 24 * v15)))
      {
        v105 = v16[2];
        v81 = *v16;
        v26 = *a1;
        v16[2] = *(a1 + 16);
        *v16 = v26;
        *(a1 + 16) = v105;
        *a1 = v81;
      }
    }

LABEL_58:
    if ((a5 & 1) == 0 && !sub_238DCEA30(a3, (a1 - 24), a1))
    {
      v10 = sub_238DD00B8(a1, a2, a3);
      goto LABEL_65;
    }

    v54 = sub_238DD024C(a1, a2, a3);
    if ((v55 & 1) == 0)
    {
      goto LABEL_63;
    }

    v56 = sub_238DD03DC(a1, v54, a3);
    v10 = (v54 + 24);
    if (sub_238DD03DC(v54 + 24, a2, a3))
    {
      a4 = -v12;
      a2 = v54;
      if (v56)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v56)
    {
LABEL_63:
      sub_238DCF1A8(a1, v54, a3, -v12, a5 & 1);
      v10 = (v54 + 24);
LABEL_65:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {

      sub_238DCFCB4(v10, v10 + 3, v10 + 6, (a2 - 3), a3);
      return;
    }

    if (v14 == 5)
    {
      sub_238DCFCB4(v10, v10 + 3, v10 + 6, (v10 + 9), a3);
      if (!sub_238DCEA30(a3, a2 - 3, v10 + 9))
      {
        return;
      }

      v62 = v10[11];
      v63 = *(v10 + 9);
      v64 = *(a2 - 1);
      *(v10 + 9) = *v8;
      v10[11] = v64;
      *v8 = v63;
      *(a2 - 1) = v62;
      if (!sub_238DCEA30(a3, v10 + 9, v10 + 6))
      {
        return;
      }

      v65 = v10[8];
      v66 = *(v10 + 3);
      *(v10 + 3) = *(v10 + 9);
      v10[8] = v10[11];
      *(v10 + 9) = v66;
      v10[11] = v65;
      if (!sub_238DCEA30(a3, v10 + 6, v10 + 3))
      {
        return;
      }

      v67 = v10[5];
      v68 = *(v10 + 3);
      *(v10 + 3) = *(v10 + 3);
      v10[5] = v10[8];
      *(v10 + 3) = v68;
      v10[8] = v67;
      goto LABEL_92;
    }

    goto LABEL_10;
  }

  v57 = sub_238DCEA30(a3, v10 + 3, v10);
  v58 = sub_238DCEA30(a3, v8, v10 + 3);
  if (!v57)
  {
    if (!v58)
    {
      return;
    }

    v71 = v10[5];
    v72 = *(v10 + 3);
    v73 = v8[2];
    *(v10 + 3) = *v8;
    v10[5] = v73;
    *v8 = v72;
    v8[2] = v71;
LABEL_92:
    if (sub_238DCEA30(a3, v10 + 3, v10))
    {
      v123 = v10[2];
      v99 = *v10;
      *v10 = *(v10 + 3);
      v10[2] = v10[5];
      *(v10 + 3) = v99;
      v10[5] = v123;
    }

    return;
  }

  if (v58)
  {
    goto LABEL_77;
  }

  v121 = v10[2];
  v97 = *v10;
  *v10 = *(v10 + 3);
  v10[2] = v10[5];
  *(v10 + 3) = v97;
  v10[5] = v121;
  if (sub_238DCEA30(a3, v8, v10 + 3))
  {
    v59 = v10[5];
    v60 = *(v10 + 3);
    v61 = v8[2];
    *(v10 + 3) = *v8;
    v10[5] = v61;
    *v8 = v60;
LABEL_78:
    v8[2] = v59;
  }
}

__n128 sub_238DCFCB4(const void **a1, const void **a2, const void **a3, __int128 *a4, uint64_t a5)
{
  v10 = sub_238DCEA30(a5, a2, a1);
  v11 = sub_238DCEA30(a5, a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = a1[2];
      v13 = *a1;
      v14 = a3[2];
      *a1 = *a3;
      a1[2] = v14;
LABEL_9:
      *a3 = v13;
      a3[2] = v12;
      goto LABEL_10;
    }

    v21 = a1[2];
    v22 = *a1;
    v23 = a2[2];
    *a1 = *a2;
    a1[2] = v23;
    *a2 = v22;
    a2[2] = v21;
    if (sub_238DCEA30(a5, a3, a2))
    {
      v12 = a2[2];
      v13 = *a2;
      v24 = a3[2];
      *a2 = *a3;
      a2[2] = v24;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v15 = a2[2];
    v16 = *a2;
    v17 = a3[2];
    *a2 = *a3;
    a2[2] = v17;
    *a3 = v16;
    a3[2] = v15;
    if (sub_238DCEA30(a5, a2, a1))
    {
      v18 = a1[2];
      v19 = *a1;
      v20 = a2[2];
      *a1 = *a2;
      a1[2] = v20;
      *a2 = v19;
      a2[2] = v18;
    }
  }

LABEL_10:
  if (sub_238DCEA30(a5, a4, a3))
  {
    v26 = a3[2];
    v27 = *a3;
    v28 = *(a4 + 2);
    *a3 = *a4;
    a3[2] = v28;
    *a4 = v27;
    *(a4 + 2) = v26;
    if (sub_238DCEA30(a5, a3, a2))
    {
      v29 = a2[2];
      v30 = *a2;
      v31 = a3[2];
      *a2 = *a3;
      a2[2] = v31;
      *a3 = v30;
      a3[2] = v29;
      if (sub_238DCEA30(a5, a2, a1))
      {
        v32 = a1[2];
        result = *a1;
        v33 = a2[2];
        *a1 = *a2;
        a1[2] = v33;
        *a2 = result;
        a2[2] = v32;
      }
    }
  }

  return result;
}

void sub_238DCFE94(uint64_t a1, const void **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v18 = v3;
    v19 = v4;
    v7 = (a1 + 24);
    if ((a1 + 24) != a2)
    {
      v9 = 0;
      v10 = a1;
      do
      {
        v11 = v10;
        v10 = v7;
        if (sub_238DCEA30(a3, v7, v11))
        {
          v16 = *v10;
          v17 = v10[2];
          v10[1] = 0;
          v10[2] = 0;
          *v10 = 0;
          v12 = v9;
          do
          {
            v13 = a1 + v12;
            if (*(a1 + v12 + 47) < 0)
            {
              operator delete(*(v13 + 24));
            }

            *(v13 + 24) = *v13;
            *(v13 + 40) = *(v13 + 16);
            *(v13 + 23) = 0;
            *v13 = 0;
            if (!v12)
            {
              v15 = a1;
              goto LABEL_13;
            }

            v12 -= 24;
          }

          while (sub_238DCEA30(a3, &v16, (v12 + a1)));
          v14 = *(a1 + v12 + 47);
          v15 = a1 + v12 + 24;
          if (v14 < 0)
          {
            operator delete(*v15);
          }

LABEL_13:
          *v15 = v16;
          *(v15 + 16) = v17;
        }

        v7 = v10 + 3;
        v9 += 24;
      }

      while (v10 + 3 != a2);
    }
  }
}

void sub_238DCFFB8(const void **a1, const void **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v15 = v3;
    v16 = v4;
    v6 = a1;
    v7 = a1 + 3;
    if (a1 + 3 != a2)
    {
      v9 = a1 - 3;
      do
      {
        v10 = v6;
        v6 = v7;
        if (sub_238DCEA30(a3, v7, v10))
        {
          v13 = *v6;
          v14 = v6[2];
          v6[1] = 0;
          v6[2] = 0;
          *v6 = 0;
          v11 = v9;
          do
          {
            if (*(v11 + 71) < 0)
            {
              operator delete(v11[6]);
            }

            *(v11 + 3) = *(v11 + 3);
            v11[8] = v11[5];
            *(v11 + 47) = 0;
            *(v11 + 24) = 0;
            v12 = sub_238DCEA30(a3, &v13, v11);
            v11 -= 3;
          }

          while (v12);
          if (*(v11 + 71) < 0)
          {
            operator delete(v11[6]);
          }

          *(v11 + 3) = v13;
          v11[8] = v14;
        }

        v7 = v6 + 3;
        v9 += 3;
      }

      while (v6 + 3 != a2);
    }
  }
}

const void **sub_238DD00B8(const void **a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v16 = *a1;
  v17 = a1[2];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (sub_238DCEA30(a3, &v16, (a2 - 24)))
  {
    v6 = a1;
    do
    {
      v6 += 3;
    }

    while (!sub_238DCEA30(a3, &v16, v6));
  }

  else
  {
    v7 = a1 + 3;
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = sub_238DCEA30(a3, &v16, v7);
      v7 = v6 + 3;
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      v4 -= 24;
    }

    while (sub_238DCEA30(a3, &v16, v4));
  }

  while (v6 < v4)
  {
    v9 = *v6;
    v19 = v6[2];
    v18 = v9;
    v10 = *v4;
    v6[2] = *(v4 + 16);
    *v6 = v10;
    v11 = v18;
    *(v4 + 16) = v19;
    *v4 = v11;
    do
    {
      v6 += 3;
    }

    while (!sub_238DCEA30(a3, &v16, v6));
    do
    {
      v4 -= 24;
    }

    while (sub_238DCEA30(a3, &v16, v4));
  }

  v12 = (v6 - 3);
  if (v6 - 3 == a1)
  {
    if (*(v6 - 1) < 0)
    {
      operator delete(*v12);
    }
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v13 = *v12;
    a1[2] = *(v6 - 1);
    *a1 = v13;
    *(v6 - 1) = 0;
    *(v6 - 24) = 0;
  }

  v14 = v16;
  *(v6 - 1) = v17;
  *v12 = v14;
  return v6;
}

unint64_t sub_238DD024C(__int128 *a1, const void **a2, uint64_t a3)
{
  v6 = 0;
  v17 = *a1;
  v18 = *(a1 + 2);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  do
  {
    v6 += 24;
  }

  while (sub_238DCEA30(a3, (a1 + v6), &v17));
  v7 = a1 + v6;
  if (v6 == 24)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      a2 -= 3;
    }

    while (!sub_238DCEA30(a3, a2, &v17));
  }

  else
  {
    do
    {
      a2 -= 3;
    }

    while (!sub_238DCEA30(a3, a2, &v17));
  }

  v8 = a1 + v6;
  if (v7 < a2)
  {
    v9 = a2;
    do
    {
      v19 = *v8;
      v10 = v19;
      v20 = *(v8 + 16);
      v11 = v20;
      v12 = v9[2];
      *v8 = *v9;
      *(v8 + 16) = v12;
      v9[2] = v11;
      *v9 = v10;
      do
      {
        v8 += 24;
      }

      while (sub_238DCEA30(a3, v8, &v17));
      do
      {
        v9 -= 3;
      }

      while (!sub_238DCEA30(a3, v9, &v17));
    }

    while (v8 < v9);
  }

  v13 = (v8 - 24);
  if ((v8 - 24) == a1)
  {
    if (*(v8 - 1) < 0)
    {
      operator delete(*v13);
    }
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v14 = *v13;
    *(a1 + 2) = *(v8 - 8);
    *a1 = v14;
    *(v8 - 1) = 0;
    *(v8 - 24) = 0;
  }

  v15 = v17;
  *(v8 - 8) = v18;
  *v13 = v15;
  return v8 - 24;
}

BOOL sub_238DD03DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v7 = a2 - 24;
        v16 = sub_238DCEA30(a3, (a1 + 24), a1);
        v17 = sub_238DCEA30(a3, v7, (a1 + 24));
        if (v16)
        {
          if (!v17)
          {
            v35 = *(a1 + 16);
            v36 = *a1;
            *a1 = *(a1 + 24);
            *(a1 + 16) = *(a1 + 40);
            *(a1 + 24) = v36;
            *(a1 + 40) = v35;
            if (!sub_238DCEA30(a3, v7, (a1 + 24)))
            {
              return 1;
            }

            v18 = *(a1 + 40);
            v19 = *(a1 + 24);
            v37 = *(v7 + 16);
            *(a1 + 24) = *v7;
            *(a1 + 40) = v37;
            goto LABEL_16;
          }

LABEL_15:
          v18 = *(a1 + 16);
          v19 = *a1;
          v20 = *(v7 + 16);
          *a1 = *v7;
          *(a1 + 16) = v20;
LABEL_16:
          *v7 = v19;
          *(v7 + 16) = v18;
          return 1;
        }

        if (!v17)
        {
          return 1;
        }

        v26 = *(a1 + 40);
        v27 = *(a1 + 24);
        v28 = *(v7 + 16);
        *(a1 + 24) = *v7;
        *(a1 + 40) = v28;
        *v7 = v27;
        *(v7 + 16) = v26;
        break;
      case 4:
        sub_238DCFCB4(a1, (a1 + 24), (a1 + 48), (a2 - 24), a3);
        return 1;
      case 5:
        v8 = a2 - 24;
        sub_238DCFCB4(a1, (a1 + 24), (a1 + 48), (a1 + 72), a3);
        if (!sub_238DCEA30(a3, v8, (a1 + 72)))
        {
          return 1;
        }

        v9 = *(a1 + 88);
        v10 = *(a1 + 72);
        v11 = *(v8 + 16);
        *(a1 + 72) = *v8;
        *(a1 + 88) = v11;
        *v8 = v10;
        *(v8 + 16) = v9;
        if (!sub_238DCEA30(a3, (a1 + 72), (a1 + 48)))
        {
          return 1;
        }

        v12 = *(a1 + 64);
        v13 = *(a1 + 48);
        *(a1 + 48) = *(a1 + 72);
        *(a1 + 64) = *(a1 + 88);
        *(a1 + 72) = v13;
        *(a1 + 88) = v12;
        if (!sub_238DCEA30(a3, (a1 + 48), (a1 + 24)))
        {
          return 1;
        }

        v14 = *(a1 + 40);
        v15 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v15;
        *(a1 + 64) = v14;
        break;
      default:
        goto LABEL_17;
    }

    if (sub_238DCEA30(a3, (a1 + 24), a1))
    {
      v29 = *(a1 + 16);
      v30 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v30;
      *(a1 + 40) = v29;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 24;
    if (!sub_238DCEA30(a3, (a2 - 24), a1))
    {
      return 1;
    }

    goto LABEL_15;
  }

LABEL_17:
  v21 = (a1 + 48);
  v22 = sub_238DCEA30(a3, (a1 + 24), a1);
  v23 = sub_238DCEA30(a3, (a1 + 48), (a1 + 24));
  if (v22)
  {
    if (v23)
    {
      v24 = *(a1 + 16);
      v25 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v38 = *(a1 + 16);
      v39 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v39;
      *(a1 + 40) = v38;
      if (!sub_238DCEA30(a3, (a1 + 48), (a1 + 24)))
      {
        goto LABEL_33;
      }

      v24 = *(a1 + 40);
      v25 = *(a1 + 24);
      *(a1 + 24) = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    *v21 = v25;
    *(a1 + 64) = v24;
  }

  else if (v23)
  {
    v31 = *(a1 + 40);
    v32 = *(a1 + 24);
    *(a1 + 24) = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v32;
    *(a1 + 64) = v31;
    if (sub_238DCEA30(a3, (a1 + 24), a1))
    {
      v33 = *(a1 + 16);
      v34 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v34;
      *(a1 + 40) = v33;
    }
  }

LABEL_33:
  v40 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v41 = 0;
  v42 = 0;
  while (1)
  {
    if (sub_238DCEA30(a3, v40, v21))
    {
      v49 = *v40;
      v50 = *(v40 + 16);
      *(v40 + 8) = 0;
      *(v40 + 16) = 0;
      *v40 = 0;
      v43 = v41;
      do
      {
        v44 = a1 + v43;
        if (*(a1 + v43 + 95) < 0)
        {
          operator delete(*(v44 + 72));
        }

        *(v44 + 72) = *(v44 + 48);
        *(v44 + 88) = *(v44 + 64);
        *(v44 + 71) = 0;
        *(v44 + 48) = 0;
        if (v43 == -48)
        {
          v47 = a1;
          goto LABEL_44;
        }

        v45 = sub_238DCEA30(a3, &v49, (a1 + v43 + 24));
        v43 -= 24;
      }

      while (v45);
      v46 = *(a1 + v43 + 95);
      v47 = a1 + v43 + 72;
      if (v46 < 0)
      {
        operator delete(*v47);
      }

LABEL_44:
      *v47 = v49;
      *(v47 + 16) = v50;
      if (++v42 == 8)
      {
        return v40 + 24 == a2;
      }
    }

    v21 = v40;
    v41 += 24;
    v40 += 24;
    if (v40 == a2)
    {
      return 1;
    }
  }
}

__int128 *sub_238DD0858(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 24 * v10);
      do
      {
        sub_238DD0A90(a1, a4, v9, v12);
        v12 = (v12 - 24);
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        if (sub_238DCEA30(a4, v13, a1))
        {
          v14 = *(v13 + 2);
          v15 = *v13;
          v16 = *(a1 + 16);
          *v13 = *a1;
          *(v13 + 2) = v16;
          *a1 = v15;
          *(a1 + 16) = v14;
          sub_238DD0A90(a1, a4, v9, a1);
        }

        v13 = (v13 + 24);
      }

      while (v13 != a3);
    }

    if (v8 >= 25)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v18 = a2 - 24;
      do
      {
        v19 = *a1;
        *v28 = *(a1 + 8);
        *&v28[7] = *(a1 + 15);
        v20 = *(a1 + 23);
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        v21 = sub_238DD0C2C(a1, a4, v17);
        v22 = v21;
        v23 = *(v21 + 23);
        if (v18 == v21)
        {
          if (v23 < 0)
          {
            operator delete(*v21);
          }

          *v22 = v19;
          *(v22 + 1) = *v28;
          *(v22 + 15) = *&v28[7];
          *(v22 + 23) = v20;
        }

        else
        {
          if (v23 < 0)
          {
            operator delete(*v21);
          }

          v24 = *v18;
          *(v22 + 2) = *(v18 + 16);
          *v22 = v24;
          *v18 = v19;
          *(v18 + 8) = *v28;
          *(v18 + 15) = *&v28[7];
          *(v18 + 23) = v20;
          sub_238DD0D04(a1, v22 + 24, a4, 0xAAAAAAAAAAAAAAABLL * ((v22 - a1 + 24) >> 3));
        }

        v18 -= 24;
      }

      while (v17-- > 2);
    }

    a3 = v13;
  }

  v26 = *MEMORY[0x277D85DE8];
  return a3;
}

void sub_238DD0A78(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_238DD0A90(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v22 = v4;
    v23 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
    {
      v12 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
      v13 = a1 + 24 * v12;
      v14 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
      if (v14 < a3 && sub_238DCEA30(a2, (a1 + 24 * v12), (v13 + 24)))
      {
        v13 += 24;
        v12 = v14;
      }

      if (!sub_238DCEA30(a2, v13, v7))
      {
        v20 = *v7;
        v21 = v7[1].n128_u64[0];
        v7->n128_u64[1] = 0;
        v7[1].n128_u64[0] = 0;
        v7->n128_u64[0] = 0;
        while (1)
        {
          v16 = v13;
          if (v7[1].n128_i8[7] < 0)
          {
            operator delete(v7->n128_u64[0]);
          }

          v17 = *v13;
          v7[1].n128_u64[0] = *(v13 + 16);
          *v7 = v17;
          *(v13 + 23) = 0;
          *v13 = 0;
          if (v9 < v12)
          {
            break;
          }

          v18 = (2 * v12) | 1;
          v13 = a1 + 24 * v18;
          v19 = 2 * v12 + 2;
          if (v19 < a3 && sub_238DCEA30(a2, (a1 + 24 * v18), (v13 + 24)))
          {
            v13 += 24;
            v18 = v19;
          }

          v7 = v16;
          v12 = v18;
          if (sub_238DCEA30(a2, v13, &v20))
          {
            if (v16[1].n128_i8[7] < 0)
            {
              operator delete(v16->n128_u64[0]);
            }

            break;
          }
        }

        result = v20;
        v16[1].n128_u64[0] = v21;
        *v16 = result;
      }
    }
  }

  return result;
}

__int128 *sub_238DD0C2C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 24 * v6;
    v9 = (v8 + 24);
    v10 = 2 * v6;
    v6 = (2 * v6) | 1;
    v11 = v10 + 2;
    if (v10 + 2 < a3)
    {
      v12 = (v8 + 48);
      if (sub_238DCEA30(a2, (v8 + 24), (v8 + 48)))
      {
        v9 = v12;
        v6 = v11;
      }
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v13 = *v9;
    *(a1 + 2) = *(v9 + 2);
    *a1 = v13;
    *(v9 + 23) = 0;
    *v9 = 0;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

double sub_238DD0D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v16 = v4;
    v17 = v5;
    v8 = (a4 - 2) >> 1;
    v9 = (a1 + 24 * v8);
    v10 = (a2 - 24);
    if (sub_238DCEA30(a3, v9, (a2 - 24)))
    {
      v14 = *v10;
      v15 = *(v10 + 2);
      *(v10 + 1) = 0;
      *(v10 + 2) = 0;
      *v10 = 0;
      while (1)
      {
        v12 = v9;
        if (*(v10 + 23) < 0)
        {
          operator delete(*v10);
        }

        v13 = *v9;
        *(v10 + 2) = *(v9 + 2);
        *v10 = v13;
        *(v9 + 23) = 0;
        *v9 = 0;
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (a1 + 24 * v8);
        v10 = v12;
        if (!sub_238DCEA30(a3, v9, &v14))
        {
          if (*(v12 + 23) < 0)
          {
            operator delete(*v12);
          }

          break;
        }
      }

      result = *&v14;
      *v12 = v14;
      *(v12 + 2) = v15;
    }
  }

  return result;
}

_BYTE *sub_238DD0E08(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_238DCEB40();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t sub_238DD0EC0(uint64_t a1, const void **a2)
{
  v2 = *sub_238DCE88C(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_238DD0F8C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_238DCE7B4(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_238DD0FD8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_238DD104C(result, a4);
  }

  return result;
}

void sub_238DD1030(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_238DD104C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_238DBAEA8();
}

uint64_t sub_238DD109C(uint64_t **a1, const void **a2)
{
  v3 = sub_238DCED58(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_238DD10F8(a1, v3);
  sub_238DCE7B4((v4 + 4));
  operator delete(v4);
  return 1;
}

uint64_t *sub_238DD10F8(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_238DD116C(v6, a2);
  return v3;
}

uint64_t *sub_238DD116C(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}