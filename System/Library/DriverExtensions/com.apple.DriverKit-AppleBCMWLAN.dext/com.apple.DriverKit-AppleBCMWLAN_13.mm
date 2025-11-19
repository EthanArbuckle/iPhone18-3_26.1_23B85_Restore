uint64_t AppleBCMWLANCore::isRejectingCommands(AppleBCMWLANCore *this)
{
  v1 = *(this + 9);
  v2 = *(v1 + 10376);
  if ((v2 & 0x20) != 0)
  {
    return 3766622210;
  }

  result = 3766622209;
  if ((v2 & 0x2000) == 0)
  {
    result = 3766630402;
    if ((v2 & 0x80) == 0)
    {
      if ((v2 & 0x10) != 0)
      {
        return 3766622211;
      }

      else if ((v2 & 0x8000) != 0)
      {
        return 3766630404;
      }

      else if ((v2 & 1) != 0 && *(v1 + 19852) == 1 && (v5 = *(v1 + 5408)) != 0 && (AppleBCMWLANCommander::isSleeping(v5) & 1) == 0)
      {
        v6 = *(this + 9);
        v7 = *(v6 + 10376);
        if ((v7 & 0x10000000) == 0 || (v7 & 1) != 0 && *(v6 + 19852))
        {
          return 0;
        }

        else
        {
          return 3766622213;
        }
      }

      else
      {
        return 82;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::isOCLEnabled(AppleBCMWLANCore *this)
{
  result = AppleBCMWLANCore::featureFlagIsBitSet(this, 47);
  if (result)
  {
    v3 = *(*(this + 9) + 5464);

    return AppleBCMWLANConfigManager::isOCLSupportedInDriver(v3);
  }

  return result;
}

uint64_t AppleBCMWLANCore::reportEscoTrafficIndication(AppleBCMWLANCore *this, OSNumber *a2)
{
  v4 = OSNumber::unsigned32BitValue(a2);
  IO80211Controller::postMessage(this, *(*(this + 9) + 11288), 0xB5u, &v4, 4uLL, 1);
  return 0;
}

uint64_t *AppleBCMWLANCore::simulateRoamStatusSubStateGated(uint64_t *result, uint64_t a2)
{
  v2 = result;
  if (a2)
  {
    v4 = (a2 + 1);
    if (*(a2 + 1) <= 3u)
    {
      *(result[9] + 12153) = 1;
      if ((*(*result + 1952))(result))
      {
        (*(*v2 + 1952))(v2);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::simulateRoamStatusSubStateGated(v2);
        }
      }

      v5 = *v4;
      if (v5 == 3)
      {
        *(v2[9] + 12164) |= 4u;
        *(v2[9] + 12184) = mapBcmStatusToApple80211IOReturnScan(*(a2 + 4));
        result = mapBcmStatusToApple80211IOReturnIEEEStatus(*(a2 + 8));
        *(v2[9] + 12188) = result;
      }

      else if (v5 == 1)
      {
        *(v2[9] + 12164) |= 2u;
        *(v2[9] + 12176) = mapBcmStatusToApple80211IOReturnScan(*(a2 + 4));
        result = mapBcmStatusToApple80211IOReturnIEEEStatus(*(a2 + 8));
        *(v2[9] + 12180) = result;
      }

      else if (*v4)
      {
        result = (*(*v2 + 1952))(v2);
        if (result)
        {
          (*(*v2 + 1952))(v2);
          result = CCLogStream::shouldLog();
          if (result)
          {
            return AppleBCMWLANCore::simulateRoamStatusSubStateGated(v2);
          }
        }
      }

      else
      {
        *(v2[9] + 12164) |= 1u;
        *(v2[9] + 12168) = mapBcmStatusToApple80211IOReturnScan(*(a2 + 4));
        result = mapBcmStatusToApple80211IOReturnIEEEStatus(*(a2 + 8));
        *(v2[9] + 12172) = result;
      }
    }
  }

  else
  {
    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v2 + 1952))(v2);
      result = CCLogStream::shouldLog();
      if (result)
      {
        result = AppleBCMWLANCore::simulateRoamStatusSubStateGated(v2);
      }
    }

    *(v2[9] + 12153) = 0;
    v6 = v2[9];
    *(v6 + 12188) = 0;
    *(v6 + 12156) = 0u;
    *(v6 + 12172) = 0u;
  }

  return result;
}

uint64_t ___ZN16AppleBCMWLANCore13setPropertiesEP8OSObject_block_invoke(uint64_t a1, OSMetaClassBase *anObject)
{
  v3 = OSMetaClassBase::safeMetaCast(anObject, gOSStringMetaClass);
  OSArray::setObject(*(*(*(a1 + 32) + 8) + 24), v3);
  return 1;
}

uint64_t AppleBCMWLANCore::handleSetEventBitFieldAsyncCallBack(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = result;
    if ((*(*result + 1952))(result))
    {
      (*(*v3 + 1952))(v3);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleSetEventBitFieldAsyncCallBack(v3);
      }
    }

    result = *(v3[9] + 14248);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        result = IOMallocZeroData();
        v4 = result;
        if (result)
        {
          strcpy(result, "Currently:");
          v5 = 10;
        }

        else
        {
          v5 = 0;
        }

        for (i = 0; i != 28; ++i)
        {
          v7 = 0;
          v8 = i;
          do
          {
            if ((*(v3[9] + i + 1096) >> v7))
            {
              result = 0;
              if (!v4 || v5 > 0x3FE || (v9 = 1024, v10 = convertEventToString(v8, 0, 0), result = snprintf(&v4[v5], 1024 - v5, " %s", v10), result <= 0x3FF))
              {
                v9 = result;
              }

              v5 += v9;
            }

            ++v7;
            v8 += 8;
          }

          while (v7 != 8);
        }

        if (v4 && v5 <= 0x3FE)
        {
          snprintf(&v4[v5], 1024 - v5, "\n");
        }

        else if (!v4)
        {
          return result;
        }

        if (*(v3[9] + 14248) && CCLogStream::shouldLog())
        {
          v11 = *(v3[9] + 14248);
          CCLogStream::log();
        }

        *v4 = 0;

        return IOFreeData();
      }
    }
  }

  return result;
}

uint64_t *AppleBCMWLANCore::startRoamScanAsyncCallback(uint64_t *result, uint64_t a2, unsigned int a3)
{
  v4 = a3;
  if (a3)
  {
    v3 = result;
    IO80211Controller::postMessage(result, *(result[9] + 11288), 0xCFu, &v4, 4uLL, 1);
    result = (*(*v3 + 1952))(v3);
    if (result)
    {
      (*(*v3 + 1952))(v3);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::startRoamScanAsyncCallback(v3, v3 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &v4);
      }
    }
  }

  return result;
}

IO80211Controller *AppleBCMWLANCore::getRssiAsyncCallback(uint64_t *a1, uint64_t a2, int a3, int **a4)
{
  if (a3)
  {
    result = (*(*a1 + 1952))(a1);
    if (result)
    {
      (*(*a1 + 1952))(a1);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::getRssiAsyncCallback(a1);
      }
    }
  }

  else if (*a4)
  {
    v6 = **a4;
    v7 = *(a1[9] + 5608);

    return AppleBCMWLANLQM::updateRSSI(v7, v6);
  }

  else
  {
    result = (*(*a1 + 1952))(a1);
    if (result)
    {
      (*(*a1 + 1952))(a1);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::getRssiAsyncCallback(a1);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handlePktFilterPortsAsyncCallBack(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = result;
    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v3 + 1952))(v3);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handlePktFilterPortsAsyncCallBack(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleSetARPOffloadAsyncCallBack(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = result;
    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v3 + 1952))(v3);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleSetARPOffloadAsyncCallBack(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleSetICMPAsyncCallBack(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = result;
    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v3 + 1952))(v3);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleSetICMPAsyncCallBack(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleSetLpasAsyncCallBack(uint64_t *a1, int a2, int a3, int a4, int *address)
{
  if (address)
  {
    v7 = *address;
    IOFree(address, 4uLL);
    if (a3)
    {
LABEL_3:
      result = (*(*a1 + 1952))(a1);
      if (result)
      {
        (*(*a1 + 1952))(a1);
        result = CCLogStream::shouldLog();
        if (result)
        {
          result = AppleBCMWLANCore::handleSetLpasAsyncCallBack(a1);
        }
      }

      atomic_fetch_and((a1[9] + 10376), 0xFF7FFFFF);
      return result;
    }
  }

  else
  {
    v7 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  if (v7 == 1)
  {
    atomic_fetch_or((a1[9] + 10376), 0x800000u);
  }

  else if (!v7)
  {
    atomic_fetch_and((a1[9] + 10376), 0xFF7FFFFF);
  }

  result = (*(*a1 + 1952))(a1);
  if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::handleSetLpasAsyncCallBack(a1);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleSetNDOffloadAsyncCallBack(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = result;
    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v3 + 1952))(v3);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleSetNDOffloadAsyncCallBack(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::setRangingAsyncCallBack(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    if (*(a2 + 8))
    {
      v5 = *(a2 + 8);
    }

    else
    {
      v5 = "(null)";
    }

    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v4 + 1952))(v4);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::setRangingAsyncCallBack(v4, v4 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3, v5);
      }
    }
  }

  return result;
}

uint64_t *AppleBCMWLANCore::handleExtDTIMIoVarAsyncCallBack(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (a3)
  {
    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v3 + 1952))(v3);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleExtDTIMIoVarAsyncCallBack(v3, v3 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3);
      }
    }
  }

  else
  {
    v5 = result[9];
    if (!*(v5 + 19840) && (*(v5 + 10378) & 0x80) != 0)
    {
      result = (*(*result + 1952))(result);
      if (result)
      {
        (*(*v3 + 1952))(v3);
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANCore::handleExtDTIMIoVarAsyncCallBack(v3);
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleBcnLiBcnIoVarAsyncCallBack(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = result;
    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v3 + 1952))(v3);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleBcnLiBcnIoVarAsyncCallBack(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleMWSCoexIoVarAsyncCallBack(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v8 = a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  result = (*(*a1 + 1952))(a1);
  if (a3)
  {
    if (result)
    {
      (*(*a1 + 1952))(a1);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleMWSCoexIoVarAsyncCallBack(a1, v8, a3, a5);
      }
    }
  }

  else if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::handleMWSCoexIoVarAsyncCallBack(a1, v8, a5);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handle2GWiFiType7BitmapAsyncCallback(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v7 = result;
    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v7 + 1952))(v7);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handle2GWiFiType7BitmapAsyncCallback(v7, v7 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3, a5);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleMWSCoexBitmapsWiFiEnhAsyncCallback(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v7 = result;
    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v7 + 1952))(v7);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleMWSCoexBitmapsWiFiEnhAsyncCallback(v7, v7 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3, a5);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleMWSOCLCoexBitmapsWiFiEnhAsyncCallback(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v7 = result;
    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v7 + 1952))(v7);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleMWSOCLCoexBitmapsWiFiEnhAsyncCallback(v7, v7 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3, a5);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleMWSWiFiType7CoexBitmapsWiFiEnhAsyncCallback(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v7 = result;
    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v7 + 1952))(v7);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleMWSWiFiType7CoexBitmapsWiFiEnhAsyncCallback(v7, v7 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3, a5);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleMWSWiFiType4BlankCoexBitmapsWiFiEnhAsyncCallback(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v7 = result;
    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v7 + 1952))(v7);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleMWSWiFiType4BlankCoexBitmapsWiFiEnhAsyncCallback(v7, v7 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3, a5);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleMWSWiFiType4BlankModeCoexBitmapsWiFiEnhAsyncCallback(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v7 = result;
    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v7 + 1952))(v7);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleMWSWiFiType4BlankModeCoexBitmapsWiFiEnhAsyncCallback(v7, v7 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3, a5);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleMWSWiFiAssocProtConfigCoexBitmapsWiFiEnhAsyncCallback(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v7 = result;
    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v7 + 1952))(v7);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleMWSWiFiAssocProtConfigCoexBitmapsWiFiEnhAsyncCallback(v7, v7 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3, a5);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleMWSWiFiRfemConfigCoexBitmapsWiFiEnhAsyncCallback(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v7 = result;
    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v7 + 1952))(v7);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleMWSWiFiRfemConfigCoexBitmapsWiFiEnhAsyncCallback(v7, v7 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3, a5);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleMWSWiFiConditionIdCoexBitmapsWiFiEnhAsyncCallback(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v7 = result;
    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v7 + 1952))(v7);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleMWSWiFiConditionIdCoexBitmapsWiFiEnhAsyncCallback(v7, v7 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3, a5);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleMWSAntSelCoexBitmapsWiFiEnhAsyncCallback(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v7 = result;
    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v7 + 1952))(v7);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleMWSAntSelCoexBitmapsWiFiEnhAsyncCallback(v7, v7 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3, a5);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleAutoCountryAsyncCallBack(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = result;
    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v3 + 1952))(v3);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleAutoCountryAsyncCallBack(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleGetCountryCodeAsyncCallBack(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = result;
    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v3 + 1952))(v3);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleGetCountryCodeAsyncCallBack(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleExcessPMPeriodAsyncCallBack(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v4 = result;
    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v4 + 1952))(v4);
      result = CCLogStream::shouldLog();
      if (result)
      {
        result = AppleBCMWLANCore::handleExcessPMPeriodAsyncCallBack(v4);
      }
    }

    if (a3 == -469794537)
    {
      *(v4[9] + 35528) = 1;
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleExcessPMPercentAsyncCallBack(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v4 = result;
    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v4 + 1952))(v4);
      result = CCLogStream::shouldLog();
      if (result)
      {
        result = AppleBCMWLANCore::handleExcessPMPercentAsyncCallBack(v4);
      }
    }

    if (a3 == -469794537)
    {
      *(v4[9] + 35528) = 1;
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleGetPowerSaveModeAsyncCallBack(uint64_t result, uint64_t a2, int a3)
{
  if (!a3)
  {
    v3 = result;
    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v3 + 1952))(v3);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleGetPowerSaveModeAsyncCallBack(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleCollectBeaconRxCountersAsyncCallBack(uint64_t *a1, uint64_t a2, int a3, __int128 **a4)
{
  if (a3)
  {
    result = (*(*a1 + 1952))(a1);
    if (result)
    {
      (*(*a1 + 1952))(a1);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleCollectBeaconRxCountersAsyncCallBack(a1);
      }
    }
  }

  else
  {
    v6 = (a1[9] + 19692);
    v7 = *a4;
    v8 = **a4;
    v9 = (*a4)[1];
    *(v6 + 28) = *(*a4 + 28);
    *v6 = v8;
    v6[1] = v9;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleCollectBeaconRxCountersAsyncCallBack(a1);
      }
    }

    AppleBCMWLANCore::updateTrafficInactivityScanCoreBeaconStats(a1, v7);
    mach_continuous_time();
    absolutetime_to_nanoseconds();
    *(a1[9] + 19744) = -*(a1[9] + 19736);
    AppleBCMWLANCore::updateBeaconOffloadStatsReport(a1, v7, *(a1[9] + 19744));
    v10 = a1[9];
    result = *(v10 + 5504);
    if (result && *(v7 + 9))
    {
      v11 = *(v10 + 19744);
      result = AppleBCMWLANIOReportingCore::updateBeaconOffloadStats();
      v10 = a1[9];
    }

    if (*(v10 + 19752) == 1)
    {
      result = AppleBCMWLANCore::sendBeaconOffloadStatsEventCoreAnalytics(a1);
      *(a1[9] + 19752) = 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::updateTrafficInactivityScanCoreBeaconStats(uint64_t *a1, _DWORD *a2)
{
  if (*(a1[9] + 18195) == 1)
  {
    *(a1[9] + 18276) = a2[9];
    v4 = a2[6];
    *(a1[9] + 18292) = a2[5];
    *(a1[9] + 18288) = v4;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        v5 = (*(*a1 + 1952))(a1);
        CCLogStream::logInfo(v5, "[dk] %s@%d:Enter: BCN_OFLD_DUR= %d EXPECTED=%d MISSED_BCN_CNT= %d\n", "updateTrafficInactivityScanCoreBeaconStats", 13442, a2[9], a2[5], a2[6]);
      }
    }
  }

  else
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::updateTrafficInactivityScanCoreBeaconStats(a1);
      }
    }

    v6 = *(a1[9] + 18276);
    if (v6)
    {
      v7 = a2[9];
      if (v7)
      {
        v8 = *(a1[9] + 18228);
        v9 = v7 - v6;
        v10 = __CFADD__(v8, v9);
        v11 = v8 + v9;
        v12 = v10;
        *(a1[9] + 18228) = v11;
        v13 = *(a1[9] + 18244);
        v14 = a2[5] - *(a1[9] + 18292);
        v10 = __CFADD__(v13, v14);
        v15 = v13 + v14;
        v16 = v10;
        *(a1[9] + 18244) = v15;
        v17 = *(a1[9] + 18240);
        v18 = a2[6] - *(a1[9] + 18288);
        v10 = __CFADD__(v17, v18);
        v19 = v17 + v18;
        v20 = v10;
        *(a1[9] + 18240) = v19;
        *(a1[9] + 18276) = 0;
        *(a1[9] + 18292) = 0;
        *(a1[9] + 18288) = 0;
        if (v12 || v16 || v20)
        {
          AppleBCMWLANCore::updateTrafficInactivityScanCoreBeaconStats(a1);
        }
      }
    }
  }

  *(a1[9] + 19901) = 0;
  return 0;
}

uint64_t AppleBCMWLANCore::updateBeaconOffloadStatsReport(uint64_t *a1, _DWORD *a2, uint64_t a3)
{
  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 76))
  {
    v6 = a1[9];
    if ((*(v6 + 18484) & 1) == 0)
    {
      *(v6 + 19008) = a3;
      *(a1[9] + 19016) = a2[9] / 0x3E8uLL;
      v7 = a2[4];
      *(a1[9] + 19024) = a2[5];
      *(a1[9] + 19028) = a2[6];
      *(a1[9] + 19032) = a2[2];
      *(a1[9] + 19036) = v7;
      *(a1[9] + 19000) = 1;
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::updateBeaconOffloadStatsReport(a1);
        }
      }
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCore::sendBeaconOffloadStatsEventCoreAnalytics(AppleBCMWLANCore *this)
{
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  v2 = OSString::withCString("com.apple.wifi.BeaconOffloadStats");
  if (!v2)
  {
    return AppleBCMWLANCore::sendBeaconOffloadStatsEventCoreAnalytics(this);
  }

  v3 = v2;
  v4 = OSDictionary::withCapacity(6u);
  if (v4)
  {
    *(*(this + 9) + 19744) = -*(*(this + 9) + 19736);
    v5 = OSString::withCString("WiFiSessionDuration");
    if (v5)
    {
      v6 = v5;
      v7 = OSNumber::withNumber(*(*(this + 9) + 19744), 0x40uLL);
      if (v7)
      {
        OSDictionary::setObject(v4, v6, v7);
        v8 = OSString::withCString("BcnOffloadDuration");
        if (v8)
        {
          v9 = v8;
          v34 = OSNumber::withNumber(*(*(this + 9) + 19016), 0x40uLL);
          OSDictionary::setObject(v4, v9, v34);
          v10 = OSString::withCString("BcnOffldRxBcnCount");
          v38 = v9;
          if (v10)
          {
            v11 = v10;
            v12 = OSNumber::withNumber(*(*(this + 9) + 19024), 0x20uLL);
            v37 = v11;
            if (v12)
            {
              v36 = v12;
              OSDictionary::setObject(v4, v11, v12);
              v13 = OSString::withCString("BcnOffldMissedBcnCount");
              if (v13)
              {
                v14 = v13;
                v15 = OSNumber::withNumber(*(*(this + 9) + 19028), 0x20uLL);
                v35 = v14;
                if (v15)
                {
                  v16 = v15;
                  OSDictionary::setObject(v4, v14, v15);
                  v17 = OSString::withCString("BcnOffldEnterCount");
                  if (v17)
                  {
                    v18 = v17;
                    v19 = OSNumber::withNumber(*(*(this + 9) + 19032), 0x20uLL);
                    if (v19)
                    {
                      v20 = v19;
                      OSDictionary::setObject(v4, v18, v19);
                      v21 = OSString::withCString("OffldBcnRejectCount");
                      if (v21)
                      {
                        v22 = v21;
                        v23 = OSNumber::withNumber(*(*(this + 9) + 19036), 0x20uLL);
                        OSDictionary::setObject(v4, v22, v23);
                        v24 = *(this + 9);
                        v25 = *(v24 + 19744);
                        if (v25 <= 0x57E3F && v25 > *(v24 + 19016))
                        {
                          v33 = v7;
                          v26 = v6;
                          v27 = v3;
                          v28 = IOService::CoreAnalyticsSendEvent(this, 0, v3, v4, 0);
                          if (v28 && (v29 = v28, (*(*this + 1952))(this)) && ((*(*this + 1952))(this), CCLogStream::shouldLog()))
                          {
                            v32 = v29;
                            v3 = v27;
                            AppleBCMWLANCore::sendBeaconOffloadStatsEventCoreAnalytics(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v27, v32);
                          }

                          else
                          {
                            v3 = v27;
                          }

                          v6 = v26;
                          v7 = v33;
                        }

                        goto LABEL_20;
                      }

                      if ((*(*this + 1952))(this))
                      {
                        (*(*this + 1952))(this);
                        if (CCLogStream::shouldLog())
                        {
                          AppleBCMWLANCore::sendBeaconOffloadStatsEventCoreAnalytics(this);
                        }
                      }

                      v22 = 0;
LABEL_74:
                      v23 = 0;
LABEL_20:
                      v30 = v34;
LABEL_21:
                      (v6->release)(v6);
                      if (v7)
                      {
                        (v7->release)(v7);
                      }

                      if (v38)
                      {
                        (v38->release)(v38);
                      }

                      if (v30)
                      {
                        (v30->release)(v30);
                      }

                      if (v37)
                      {
                        (v37->release)(v37);
                      }

                      if (v36)
                      {
                        (v36->release)(v36);
                      }

                      if (v35)
                      {
                        (v35->release)(v35);
                      }

                      if (v16)
                      {
                        (v16->release)(v16);
                      }

                      if (v18)
                      {
                        (v18->release)(v18);
                      }

                      if (v20)
                      {
                        (v20->release)(v20);
                      }

                      if (v22)
                      {
                        (v22->release)(v22);
                      }

                      if (v23)
                      {
                        (v23->release)(v23);
                      }

                      goto LABEL_43;
                    }

                    if ((*(*this + 1952))(this))
                    {
                      (*(*this + 1952))(this);
                      if (CCLogStream::shouldLog())
                      {
                        AppleBCMWLANCore::sendBeaconOffloadStatsEventCoreAnalytics(this);
                      }
                    }

LABEL_73:
                    v22 = 0;
                    v20 = 0;
                    goto LABEL_74;
                  }

                  if ((*(*this + 1952))(this))
                  {
                    (*(*this + 1952))(this);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANCore::sendBeaconOffloadStatsEventCoreAnalytics(this);
                    }
                  }

LABEL_72:
                  v18 = 0;
                  goto LABEL_73;
                }

                if ((*(*this + 1952))(this))
                {
                  (*(*this + 1952))(this);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::sendBeaconOffloadStatsEventCoreAnalytics(this);
                  }
                }
              }

              else
              {
                if ((*(*this + 1952))(this))
                {
                  (*(*this + 1952))(this);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::sendBeaconOffloadStatsEventCoreAnalytics(this);
                  }
                }

                v35 = 0;
              }

LABEL_71:
              v16 = 0;
              goto LABEL_72;
            }

            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::sendBeaconOffloadStatsEventCoreAnalytics(this);
              }
            }
          }

          else
          {
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::sendBeaconOffloadStatsEventCoreAnalytics(this);
              }
            }

            v37 = 0;
          }

          v35 = 0;
          v36 = 0;
          goto LABEL_71;
        }

        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::sendBeaconOffloadStatsEventCoreAnalytics(this);
          }
        }
      }

      else if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::sendBeaconOffloadStatsEventCoreAnalytics(this);
        }
      }

      v37 = 0;
      v38 = 0;
      v35 = 0;
      v36 = 0;
      v30 = 0;
      v16 = 0;
      v18 = 0;
      v22 = 0;
      v20 = 0;
      v23 = 0;
      goto LABEL_21;
    }

    AppleBCMWLANCore::sendBeaconOffloadStatsEventCoreAnalytics(this);
  }

  else
  {
    AppleBCMWLANCore::sendBeaconOffloadStatsEventCoreAnalytics(this);
  }

LABEL_43:
  result = (v3->release)(v3);
  if (v4)
  {
    return (v4->release)(v4);
  }

  return result;
}

uint64_t AppleBCMWLANCore::deleteIPv6PktFiltersAsyncCallBack(uint64_t result, uint64_t a2, int a3)
{
  if (!a3)
  {
    *(*(result + 72) + 10040) = 0;
  }

  return result;
}

uint64_t AppleBCMWLANCore::deleteIPv4PktFiltersAsyncCallBack(uint64_t result, uint64_t a2, int a3)
{
  if (!a3)
  {
    *(*(result + 72) + 10041) = 0;
  }

  return result;
}

uint64_t AppleBCMWLANCore::deleteMagicPktFiltersAsyncCallBack(uint64_t result, uint64_t a2, int a3)
{
  if (!a3)
  {
    *(*(result + 72) + 10042) = 0;
  }

  return result;
}

uint64_t *AppleBCMWLANCore::deleteEapolFilterAsyncCallBack(uint64_t *result, uint64_t a2, int a3)
{
  if (!a3)
  {
    v3 = result;
    *(result[9] + 10043) = 0;
    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v3 + 1952))(v3);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::deleteEapolFilterAsyncCallBack(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleResetLinkParamsAsyncCallBack(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = result;
    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v3 + 1952))(v3);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleResetLinkParamsAsyncCallBack(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleBusWakeReasonSyncCallBack(uint64_t *a1, int a2, uint64_t a3)
{
  v35 = 0u;
  v36 = 0u;
  *__dst = 0u;
  v34 = 0u;
  v4 = *a3;
  v5 = 8;
  if (**a3 == 1)
  {
    v5 = 4;
  }

  v6 = (a3 + 8);
  if (v5 > *(a3 + 8))
  {
    return AppleBCMWLANCore::handleBusWakeReasonSyncCallBack(a1);
  }

  v8 = (*(*a1 + 1952))(a1);
  if (a2)
  {
    if (v8)
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleBusWakeReasonSyncCallBack(a1);
      }
    }

    v9 = *(a1[9] + 5536);

    return CCFaultReporter::reportFault(v9, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x325Eu, "handleBusWakeReasonSyncCallBack", 0, -469793518, "Failed to get cached FW wakeup data");
  }

  if (v8)
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::handleBusWakeReasonSyncCallBack(a1);
    }
  }

  v11 = v4[1];
  if (v4[1])
  {
    v12 = *v6 + 16 >= v11;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    result = (*(*a1 + 1952))(a1);
    if (result)
    {
      (*(*a1 + 1952))(a1);
      result = CCLogStream::shouldLog();
      if (result)
      {
        v32 = (*(*a1 + 1952))(a1);
        return CCLogStream::logNoticeIf(v32, 0x8000000uLL, "[dk] %s@%d:Rx payload buffer size %d is too small to contain the cached wakeup data size %d (version %d).\n", "handleBusWakeReasonSyncCallBack", 12904, *v6, v11, *v4);
      }
    }

    return result;
  }

  if (v11 <= 7)
  {
    return AppleBCMWLANCore::handleBusWakeReasonSyncCallBack(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v4[1]);
  }

  v13 = 4;
  if (*v4 == 1)
  {
    v13 = 2;
  }

  v14 = &v4[v13];
  v15 = LOBYTE(v4[v13]);
  if (v15 != 14)
  {
    if (v15 == 67)
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handleBusWakeReasonSyncCallBack(a1);
        }
      }

      if (v11 <= 0xF)
      {
        return AppleBCMWLANCore::handleBusWakeReasonSyncCallBack(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v11);
      }

      v16 = v4[1] - 16;
      v17 = (v14 + 8);
      v18 = a1;
      v19 = 2;
      v20 = 67;
    }

    else
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handleBusWakeReasonSyncCallBack(a1);
        }
      }

      v16 = v4[1];
      v18 = a1;
      v19 = 3;
      v17 = v14;
      v20 = 0;
    }

    AppleBCMWLANCore::updateWoWReasonToIoReg(v18, v19, v17, v16, v20, 0);
    goto LABEL_43;
  }

  if ((v11 - 8) <= 0x47)
  {
    return AppleBCMWLANCore::handleBusWakeReasonSyncCallBack(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v11 - 8);
  }

  if ((v11 - 22) <= 9)
  {
    return AppleBCMWLANCore::handleBusWakeReasonSyncCallBack(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v11 - 22);
  }

  if (*(v14 + 27) == 4096 && *(v14 + 29) == 24)
  {
    v23 = v14[15];
    if (v23 == 256)
    {
      if ((v11 - 32) <= 0x2F)
      {
        return AppleBCMWLANCore::handleBusWakeReasonSyncCallBack(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v11 - 32);
      }

      v25 = *(v14 + 9);
      v24 = (v14 + 18);
      *v24 = bswap32(v25);
      v26 = v24 + 4;
      v24[4] = bswap32(v24[4]);
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handleBusWakeReasonSyncCallBack(a1);
        }
      }

      if ((v11 - 80) < *v26)
      {
        return AppleBCMWLANCore::handleBusWakeReasonSyncCallBack(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v24 + 4, v11 - 80);
      }

      WakeReasonFromEvent = getWakeReasonFromEvent(*v24);
      AppleBCMWLANCore::updateWoWReasonToIoReg(a1, WakeReasonFromEvent, v24 - 4, *v26 + 48, 14, *v24);
      if ((AppleBCMWLANCore::whitelistedWakeReason(a1, *v24) & 1) == 0)
      {
        v28 = *(a1[9] + 5536);
        v29 = convertEventToString(*v24, __dst, 0x40uLL);
        CCFaultReporter::reportFault(v28, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x32ADu, "handleBusWakeReasonSyncCallBack", 0, -469793518, "Event=%s", v29);
      }

      v30 = *v24;
    }

    else
    {
      if (v23 != 1280)
      {
        goto LABEL_35;
      }

      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handleBusWakeReasonSyncCallBack(a1);
        }
      }

      AppleBCMWLANCore::updateWoWReasonToIoReg(a1, 0x17u, v14, v11, 14, 224);
    }

    v31 = *(a1[9] + 5504);
    if (v31)
    {
      AppleBCMWLANIOReportingCore::reportWakeReason(v31);
    }

LABEL_43:
    result = (*(*a1 + 1952))(a1);
    if (result)
    {
      (*(*a1 + 1952))(a1);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleBusWakeReasonSyncCallBack(a1);
      }
    }

    return result;
  }

LABEL_35:
  result = (*(*a1 + 1952))(a1);
  if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v22 = (*(*a1 + 1952))(a1);
      return CCLogStream::logAlert(v22, "[dk] %s@%d: Got a BRCM host wakeup event packet but an OUI/SUBTYPE mismatch (OUI=%02x %02x %02x, subtype=%d) length %lu\n", "handleBusWakeReasonSyncCallBack", 12941, *(v14 + 27), *(v14 + 28), *(v14 + 29), v14[15], v4[1]);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::updateWoWReasonToIoReg(AppleBCMWLANCore *this, unsigned int a2, char *a3, unsigned int a4, int a5, int a6)
{
  TkoWakeReason = AppleBCMWLANKeepAliveOffload::getTkoWakeReason(*(*(this + 9) + 5544));
  v13 = TkoWakeReason;
  if (a6 == 151)
  {
    v14 = TkoWakeReason;
  }

  else
  {
    v14 = a2;
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      v16 = (*(*this + 1952))(this);
      v17 = "";
      if (!v14)
      {
        v17 = " Reason unknown, please add it";
      }

      CCLogStream::logAlert(v16, "[dk] %s@%d:%s reason<%d> -> <%d>, type<%d> subtype<%d> tkoWakeReason<%d>\n", "updateWoWReasonToIoReg", 48154, v17, a2, v14, a5, a6, v13);
    }
  }

  IO80211Controller::updateWoWReasonToIoReg(this, v14, a3, a4, v13);
  return 0;
}

uint64_t AppleBCMWLANCore::whitelistedWakeReason(AppleBCMWLANCore *this, uint64_t a2)
{
  if (a2 == 52 || a2 == 124)
  {
    return 0;
  }

  if (a2 == 151)
  {
    return AppleBCMWLANCore::checkForTCPKAOffloadSupport(this);
  }

  return AppleBCMWLANCore::isCachedSleepingEventBitFieldSet(this, a2);
}

IO80211BssManager *AppleBCMWLANCore::linkChangeEvent(AppleBCMWLANCore *this, int a2, int a3)
{
  v21 = 0;
  v5 = (*(*this + 1952))(this);
  if (a3)
  {
    if (v5)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::linkChangeEvent(this);
      }
    }

    isAssociated = IO80211BssManager::isAssociated(*(*(this + 9) + 5432));
    v7 = *(this + 9);
    if (isAssociated)
    {
      v8 = *(v7 + 6232);
      if (v8)
      {
        (*(*v8 + 56))(v8, 2000);
        v7 = *(this + 9);
      }
    }

    result = *(v7 + 6256);
    if (result)
    {
      result = (*(*result + 56))(result, 120000);
      v7 = *(this + 9);
    }

    if (*(v7 + 4480) == 1)
    {
      v10 = *(v7 + 6264);
      if (v10)
      {
        (*(*v10 + 56))(v10, 10000);
        v7 = *(this + 9);
      }

      result = *(v7 + 6272);
      if (result)
      {
        result = (*(*result + 56))(result, 10000);
        v7 = *(this + 9);
      }
    }

    if (*(v7 + 5528))
    {
      result = *(v7 + 5432);
      if (result)
      {
        IO80211BssManager::getCurrentRSSI(result, &v21);
        v11 = v21;
        result = AppleBCMWLANTxPowerManager::getDynSARRssiThreshUpper(*(*(this + 9) + 5528));
        if (v11 > result)
        {
          AppleBCMWLANTxPowerManager::resetDynSARLqmRssi(*(*(this + 9) + 5528));
          return AppleBCMWLANTxPowerManager::configureDynSARPwrBoost(*(*(this + 9) + 5528), 0);
        }
      }
    }
  }

  else
  {
    if (v5)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::linkChangeEvent(this);
      }
    }

    v12 = *(this + 9);
    v13 = *(v12 + 6232);
    if (v13)
    {
      (*(*v13 + 72))(v13);
      v12 = *(this + 9);
    }

    v14 = *(v12 + 6256);
    if (v14)
    {
      (*(*v14 + 72))(v14);
      v12 = *(this + 9);
    }

    if (*(v12 + 4480) == 1)
    {
      v15 = *(v12 + 6264);
      if (v15)
      {
        (*(*v15 + 72))(v15);
        v12 = *(this + 9);
      }

      v16 = *(v12 + 6272);
      if (v16)
      {
        (*(*v16 + 72))(v16);
        v12 = *(this + 9);
      }
    }

    v17 = *(v12 + 5528);
    if (v17 && !AppleBCMWLANTxPowerManager::getDynSARPwrBoostCur(v17))
    {
      AppleBCMWLANTxPowerManager::resetDynSARLqmRssi(*(*(this + 9) + 5528));
      v18 = *(this + 9);
      v19 = *(v18 + 5528);
      DynSARPwrBoostCtl = AppleBCMWLANConfigManager::getDynSARPwrBoostCtl(*(v18 + 5464));
      AppleBCMWLANTxPowerManager::configureDynSARPwrBoost(v19, *(DynSARPwrBoostCtl + 3));
    }

    result = AppleBCMWLANCore::featureFlagIsBitSet(this, 89);
    if (result)
    {

      return AppleBCMWLANCore::cfgAmpduWindowSize(this);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::resetScanRoamStats(AppleBCMWLANCore *this)
{
  memset_s((*(this + 9) + 35920), 0x28uLL, 0, 0x28uLL);
  v2 = *(this + 9);
  *(v2 + 19096) = 0;
  *(v2 + 19048) = 0u;
  *(v2 + 19064) = 0u;
  *(v2 + 19080) = 0u;
  v3 = *(this + 9);
  *(v3 + 19120) = 0;
  *(v3 + 19104) = 0u;
  v4 = (*(this + 9) + 19128);
  *v4 = 0u;
  v4[1] = 0u;
  memset_s((*(this + 9) + 35960), 0x10uLL, 0, 0x10uLL);
  mach_continuous_time();
  result = absolutetime_to_nanoseconds();
  *(*(this + 9) + 19104) = 0;
  *(*(this + 9) + 19104) /= 0x3E8uLL;
  *(*(this + 9) + 18456) = 0;
  *(*(this + 9) + 18464) = 0;
  *(*(this + 9) + 1016) = 0;
  return result;
}

uint64_t AppleBCMWLANCore::setLQM(AppleBCMWLANCore *this)
{
  result = (*(*this + 128))(this);
  if (result)
  {
    v3 = *(*(*(*this + 128))(this) + 752);

    return v3();
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleIPv4AddressNotificationGated(AppleBCMWLANCore *this, void *a2)
{
  v3 = *(this + 9);
  v4 = *(v3 + 5392);
  if (v4)
  {
    AppleBCMWLANBusInterface::sendBootCheckPointToCoreAnalytics(v4, 0, 0xAu);
    v3 = *(this + 9);
  }

  v5 = *(v3 + 9484);
  if (!(*(*this + 1952))(this, a2) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110658;
      v10 = 78;
      v11 = 2080;
      v12 = "handleIPv4AddressNotificationGated";
      v13 = 1024;
      v14 = 13206;
      v15 = 1024;
      v16 = v5;
      v17 = 1024;
      v18 = BYTE1(v5);
      v19 = 1024;
      v20 = BYTE2(v5);
      v21 = 1024;
      v22 = HIBYTE(v5);
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d:  Local IPv4  address %u.%u.%u.%u\n", buf, 0x30u);
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      v8 = (*(*this + 1952))(this);
      CCLogStream::logNotice(v8, "[dk] %s@%d: Local IPv4  address %u.%u.%u.%u\n", "handleIPv4AddressNotificationGated", 13206, v5, BYTE1(v5), BYTE2(v5), HIBYTE(v5));
    }
  }

  v6 = *(this + 9);
  if (*(v6 + 9484))
  {
    if (*(v6 + 30092) == 1)
    {
      AppleBCMWLANCore::setupTrafficMonitoring(this, 1);
    }
  }

  else
  {
    *(v6 + 9492) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCore::setupTrafficMonitoring(AppleBCMWLANCore *this, int a2)
{
  v4 = (*(*this + 88))(this);
  v5 = *(*(this + 9) + 11288);
  if (!v5)
  {
    if (v4)
    {
      return AppleBCMWLANCore::setupTrafficMonitoring(this);
    }

    return AppleBCMWLANCore::setupTrafficMonitoring(this);
  }

  TrafficMonitor = IO80211InfraInterface::getTrafficMonitor(v5);
  if (!v4)
  {
    return AppleBCMWLANCore::setupTrafficMonitoring(this);
  }

  if (!TrafficMonitor)
  {
    return AppleBCMWLANCore::setupTrafficMonitoring(this);
  }

  if (a2)
  {
    TrafficNotification = IO80211TrafficMonitor::createTrafficNotification();
    if (TrafficNotification)
    {
      v8 = TrafficNotification;
      (*(*v4 + 64))(v4, TrafficNotification);
      (*(*v8 + 64))(v8);
      result = (*(*this + 1952))(this);
      if (result)
      {
        (*(*this + 1952))(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          v10 = (*(*this + 1952))(this);
          return CCLogStream::logInfo(v10, "[dk] %s@%d:Created RT/NRT traffic notification with config reportIntervalMS:%u realTimePacketCount:%u backgroundPackCount:%u\n", "setupTrafficMonitoring", 58430, 5000, 10, 10);
        }
      }
    }

    else
    {
      result = (*(*this + 1952))(this);
      if (result)
      {
        (*(*this + 1952))(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANCore::setupTrafficMonitoring(this);
        }
      }
    }
  }

  else
  {
    result = (*(*this + 1952))(this);
    if (result)
    {
      (*(*this + 1952))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::setupTrafficMonitoring(this);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleKeepaliveDataNotificationGated(AppleBCMWLANCore *this, void *a2)
{
  v3 = *(*(this + 9) + 9492);
  if ((*(*this + 1952))(this, a2))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      v15 = (*(*this + 1952))(this);
      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v5 = *(*(this + 9) + 9496);
      }

      else
      {
        v5 = 0;
      }

      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v6 = *(*(this + 9) + 9497);
      }

      else
      {
        v6 = 0;
      }

      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v7 = *(*(this + 9) + 9498);
      }

      else
      {
        v7 = 0;
      }

      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v8 = *(*(this + 9) + 9499);
      }

      else
      {
        v8 = 0;
      }

      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v9 = *(*(this + 9) + 9500);
      }

      else
      {
        v9 = 0;
      }

      v10 = HIBYTE(v3);
      v11 = v3;
      v12 = BYTE1(v3);
      v13 = BYTE2(v3);
      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v14 = *(*(this + 9) + 9501);
      }

      else
      {
        v14 = 0;
      }

      CCLogStream::logAlert(v15, "[dk] %s@%d: Router IPv4 address = %u.%u.%u.%u, MAC = %02X:%02X:%02X:%02X:%02X:%02X\n", "handleKeepaliveDataNotificationGated", 13274, v11, v12, v13, v10, v5, v6, v7, v8, v9, v14);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCore::handleIPv6AddressNotificationGated(AppleBCMWLANCore *this, void *a2)
{
  v4 = this + 72;
  v3 = *(this + 9);
  v5 = *(v3 + 5392);
  if (v5)
  {
    AppleBCMWLANBusInterface::sendBootCheckPointToCoreAnalytics(v5, 0, 0xBu);
    v3 = *v4;
  }

  if (*(v3 + 10036))
  {
    v6 = 0;
    do
    {
      if ((*(*this + 1952))(this, a2))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handleIPv6AddressNotificationGated(this);
        }
      }

      ++v6;
    }

    while (v6 < *(*v4 + 10036));
  }

  return 0;
}

uint64_t AppleBCMWLANCore::recoverFromDisassocFailure(uint64_t this, int a2)
{
  if (a2 != -469793790 && a2 != -469793788)
  {
    v3 = *(this + 72);
    if (*(v3 + 10368))
    {
      v4 = 5;
    }

    else
    {
      v4 = 4;
    }

    return CCFaultReporter::reportFault(*(v3 + 5536), v4, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x3424u, "recoverFromDisassocFailure", 0, -469793525, 0);
  }

  return this;
}

uint64_t AppleBCMWLANCore::handlGetPMDurationAsyncCallback(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int **a4)
{
  if (a3)
  {
    AppleBCMWLANCore::handlGetPMDurationAsyncCallback(a1);
  }

  else
  {
    v6 = a1 + 9;
    if (*(a1[9] + 18195) == 1)
    {
      *(a1[9] + 18256) = **a4;
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handlGetPMDurationAsyncCallback(a1);
        }
      }
    }

    else
    {
      v7 = **a4;
      v8 = *(a1[9] + 18256);
      if (v8)
      {
        v9 = v7 > v8;
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        v10 = v7 - v8;
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            v13 = (*(*a1 + 1952))(a1);
            CCLogStream::logInfo(v13, "[dk] %s@%d:Async exit MPC duration - last: %d current: %d delta: %d\n", "handlGetPMDurationAsyncCallback", 13366, *(a1[9] + 18256), v7, v10);
          }
        }

        v11 = *(*v6 + 18208);
        *(*v6 + 18208) = v11 + v10;
        *(*v6 + 18256) = 0;
        if (__CFADD__(v11, v10))
        {
          AppleBCMWLANCore::handlGetPMDurationAsyncCallback(a1);
        }
      }
    }
  }

  return a3;
}

uint64_t AppleBCMWLANCore::updateTrafficInactivityBeaconStats(AppleBCMWLANCore *this, OSData *a2)
{
  v20 = 0;
  OSData::getBytesNoCopy(a2);
  memset(v21, 170, sizeof(v21));
  AppleBCMWLANUtil::AutoreleasedAlignedOSData::AutoreleasedAlignedOSData(v21, a2, 4);
  v4 = v21[0];
  if (v21[0])
  {
    CounterValueSafe = AppleBCMWLANUtil::getCounterValueSafe(&v20, 4uLL, v21[0], 4uLL);
    v6 = AppleBCMWLANUtil::getCounterValueSafe(&v20, 4uLL, v4, 8uLL);
    v7 = v6;
    if (*(*(this + 9) + 18195) == 1)
    {
      *(*(this + 9) + 18272) = v6;
      *(*(this + 9) + 18260) = CounterValueSafe;
    }

    else
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          v19 = (*(*this + 1952))(this);
          CCLogStream::logInfo(v19, "[dk] %s@%d:Beacon stats: Prev [sched: %d rcvd: %d] Current [sched: %d rcvd: %d]\n", "updateTrafficInactivityBeaconStats", 13418, *(*(this + 9) + 18272), *(*(this + 9) + 18260), v7, CounterValueSafe);
        }
      }

      v9 = *(*(this + 9) + 18224);
      v10 = v7 - *(*(this + 9) + 18272);
      v11 = __CFADD__(v9, v10);
      v12 = v9 + v10;
      v13 = v11;
      *(*(this + 9) + 18224) = v12;
      v14 = *(*(this + 9) + 18212);
      v15 = CounterValueSafe - *(*(this + 9) + 18260);
      v11 = __CFADD__(v14, v15);
      v16 = v14 + v15;
      v17 = v11;
      *(*(this + 9) + 18212) = v16;
      *(*(this + 9) + 18272) = 0;
      *(*(this + 9) + 18260) = 0;
      if ((v13 & 1) != 0 || v17)
      {
        AppleBCMWLANCore::updateTrafficInactivityBeaconStats(this);
      }
    }

    *(*(this + 9) + 19900) = 0;
    v8 = v20;
  }

  else
  {
    v8 = 3758097084;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::updateTrafficInactivityBeaconStats(this);
      }
    }
  }

  AppleBCMWLANUtil::AutoreleasedAlignedOSData::~AutoreleasedAlignedOSData(v21);
  return v8;
}

uint64_t AppleBCMWLANCore::setTrafficInactivityStats(AppleBCMWLANCore *this)
{
  v16 = 0;
  *v13 = 0;
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  v3 = this + 72;
  v2 = *(this + 9);
  v15 = *(v2 + 778);
  if (*(v2 + 18195) == 1)
  {
    *(v2 + 18248) = 0;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setTrafficInactivityStats(this);
      }
    }
  }

  else
  {
    v4 = -*(v2 + 18248);
    *(v2 + 18200) += v4;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        v11 = (*(*this + 1952))(this);
        CCLogStream::logInfo(v11, "[dk] %s@%d:exit %llu duration %llu\n", "setTrafficInactivityStats", 13482, 0, v4);
      }
    }
  }

  v5 = (*(*this + 88))(this);
  if ((*(*v5 + 136))(v5))
  {
    *v13 = this;
    *&v13[8] = AppleBCMWLANCore::handlGetPMDurationAsyncCallback;
    *&v13[16] = 0;
    v6 = *(*(this + 9) + 5408);
    v14 = 262148;
    if (AppleBCMWLANCommander::sendIOVarGet(v6, "pm_dur", &kNoTxPayload, &v14, v13, 0))
    {
      AppleBCMWLANCore::setTrafficInactivityStats(this);
      return IO80211Controller::postMessage(this, *(*(this + 9) + 11288), 0xDDu, &v15, 4uLL, 1);
    }
  }

  else
  {
    *v13 = &v16;
    *&v13[8] = 0x400040004;
    if (AppleBCMWLANCommander::runIOVarGet(*(*v3 + 5408), "pm_dur", &kNoTxPayload, v13, 0))
    {
      AppleBCMWLANCore::setTrafficInactivityStats(this);
      return IO80211Controller::postMessage(this, *(*(this + 9) + 11288), 0xDDu, &v15, 4uLL, 1);
    }

    if (*(*v3 + 18195) == 1)
    {
      *(*v3 + 18256) = v16;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setTrafficInactivityStats(this);
        }
      }
    }

    else
    {
      v7 = *(*v3 + 18256);
      if (v7)
      {
        v8 = v16 - v7;
        if (v16 > v7)
        {
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              v12 = (*(*this + 1952))(this);
              CCLogStream::logInfo(v12, "[dk] %s@%d:Sync exit MPC duration - last: %d current: %d delta: %d\n", "setTrafficInactivityStats", 13505, *(*(this + 9) + 18256), v16, v8);
            }
          }

          v9 = *(*v3 + 18208);
          *(*v3 + 18208) = v9 + v8;
          *(*v3 + 18256) = 0;
          if (__CFADD__(v9, v8))
          {
            AppleBCMWLANCore::setTrafficInactivityStats(this);
            return IO80211Controller::postMessage(this, *(*(this + 9) + 11288), 0xDDu, &v15, 4uLL, 1);
          }
        }
      }
    }
  }

  if (AppleBCMWLANCore::checkForEarlyBeconTerminationSupport(this))
  {
    AppleBCMWLANCore::getChipIfCounters(this);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 76) && (*(*v3 + 18484) & 1) == 0)
  {
    memset(v13, 0, sizeof(v13));
    AppleBCMWLANCore::collectBeaconRxCounters(this, v13, 0);
  }

  return IO80211Controller::postMessage(this, *(*(this + 9) + 11288), 0xDDu, &v15, 4uLL, 1);
}

uint64_t AppleBCMWLANCore::checkForEarlyBeconTerminationSupport(AppleBCMWLANCore *this)
{
  result = AppleBCMWLANCore::featureFlagIsBitSet(this, 57);
  if (result)
  {
    v3 = *(*(this + 9) + 5464);

    return AppleBCMWLANConfigManager::isEBTSupportedInDriver(v3);
  }

  return result;
}

uint64_t AppleBCMWLANCore::getChipIfCounters(AppleBCMWLANCore *this)
{
  v2 = *(*(this + 9) + 11304);
  if (v2 && AppleBCMWLANIO80211APSTAInterface::enabled(v2) && AppleBCMWLANCore::issueIfCounterIOVar(this, 1u))
  {
    AppleBCMWLANCore::getChipIfCounters(this);
  }

  v3 = AppleBCMWLANCore::issueIfCounterIOVar(this, 0);
  if (v3)
  {
    AppleBCMWLANCore::getChipIfCounters(this);
  }

  return v3;
}

uint64_t AppleBCMWLANCore::collectBeaconRxCounters(AppleBCMWLANCore *a1, uint64_t a2, int a3)
{
  result = AppleBCMWLANCore::featureFlagIsBitSet(a1, 76);
  if (result)
  {
    v7 = *(a1 + 9);
    if ((*(v7 + 18484) & 1) == 0)
    {
      result = IO80211BssManager::isAssociatedToAdhoc(*(v7 + 5432));
      if ((result & 1) == 0)
      {
        *(*(a1 + 9) + 19752) = a3;
        v8 = (*(a1 + 9) + 19692);
        *(v8 + 28) = 0u;
        *v8 = 0u;
        v8[1] = 0u;
        result = IOMallocZeroData();
        if (result)
        {
          v9 = result;
          *result = 1;
          *(result + 4) |= a3;
          v10 = (*(*a1 + 88))(a1);
          if ((*(*v10 + 136))(v10))
          {
            v20 = a1;
            v21 = AppleBCMWLANCore::handleCollectBeaconRxCountersAsyncCallBack;
            v22 = a2;
            v11 = *(*(a1 + 9) + 5408);
            v18 = v9;
            v19 = 44;
            v17 = 2883628;
            if (AppleBCMWLANCommander::sendIOVarGet(v11, "sta_pm_sc_offload_status", &v18, &v17, &v20, 0) && (*(*a1 + 1952))(a1))
            {
              (*(*a1 + 1952))(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::collectBeaconRxCounters(a1);
              }
            }
          }

          else
          {
            v20 = v9;
            v21 = 0x2C002C002CLL;
            v12 = *(*(a1 + 9) + 5408);
            v18 = v9;
            v19 = 44;
            if (!AppleBCMWLANCommander::runIOVarGet(v12, "sta_pm_sc_offload_status", &v18, &v20, 0))
            {
              v13 = *v9;
              v14 = *(v9 + 16);
              *(a2 + 28) = *(v9 + 28);
              *a2 = v13;
              *(a2 + 16) = v14;
              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::collectBeaconRxCounters(a1);
                }
              }

              if (*(*(a1 + 9) + 19901) == 1)
              {
                AppleBCMWLANCore::updateTrafficInactivityScanCoreBeaconStats(a1, v9);
              }

              *(*(a1 + 9) + 19744) = getCurrentContinuousTimeMilliSeconds() / 0x3E8uLL - *(*(a1 + 9) + 19736);
              AppleBCMWLANCore::updateBeaconOffloadStatsReport(a1, a2, *(*(a1 + 9) + 19744));
              v15 = *(a1 + 9);
              if (*(v15 + 5504) && *(a2 + 36))
              {
                v16 = *(v15 + 19744);
                AppleBCMWLANIOReportingCore::updateBeaconOffloadStats();
                v15 = *(a1 + 9);
              }

              if (*(v15 + 19752) == 1)
              {
                AppleBCMWLANCore::sendBeaconOffloadStatsEventCoreAnalytics(a1);
                *(*(a1 + 9) + 19752) = 0;
              }
            }
          }

          return IOFreeData();
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::timeSinceLastActivity_ms(AppleBCMWLANCore *this)
{
  v1 = *(*(this + 9) + 6536);
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  return 0xB2F4FC07949;
}

uint64_t AppleBCMWLANCore::printDataPathDebug(AppleBCMWLANCore *this, char *a2)
{
  (*(*this + 1952))(this);
  v23 = *(*(this + 9) + 19761) & 0x10;
  v26 = *(*(this + 9) + 19765) & 0x10;
  v14 = *(*(this + 9) + 19753) & 0x10;
  v19 = *(*(this + 9) + 19757) & 0x10;
  v4 = IO80211Print();
  v5 = AppleBCMWLANCore::dumpWmeCounters(this, a2) + v4;
  (*(*this + 1952))(this);
  v6 = *(this + 9);
  v24 = v6[2766];
  v27 = v6[2767];
  v15 = v6[2768];
  v20 = v6[2769];
  v7 = v5 + IO80211Print();
  (*(*this + 1952))(this);
  v8 = *(this + 9);
  v30 = v8[2691];
  v31 = v8[2690];
  v28 = v8[2688];
  v29 = v8[2687];
  v21 = v8[4612];
  v25 = v8[2689];
  v16 = v8[4611];
  v9 = v7 + IO80211Print();
  (*(*this + 1952))(this);
  v17 = *(*(this + 9) + 11004);
  v10 = v9 + IO80211Print();
  (*(*this + 1952))(this);
  v11 = *(this + 9);
  v18 = *(v11 + 4452);
  v22 = *(v11 + 4456);
  v12 = v10 + IO80211Print();
  if (*(*(this + 9) + 11304))
  {
    (*(*this + 1952))(this);
    IO80211SkywalkInterface::getInterfaceId(*(*(this + 9) + 11304));
    AppleBCMWLANIO80211APSTAInterface::enabled(*(*(this + 9) + 11304));
    return v12 + IO80211Print();
  }

  return v12;
}

uint64_t AppleBCMWLANCore::releaseFlowQueue(IO80211Controller *a1, IO80211FlowQueue *a2)
{
  if ((*(**(*(a1 + 9) + 5392) + 408))(*(*(a1 + 9) + 5392)))
  {
    v4 = *(**(*(a1 + 9) + 5392) + 424);

    return v4();
  }

  else
  {

    return IO80211Controller::releaseFlowQueue(a1, a2);
  }
}

uint64_t AppleBCMWLANCore::requestFlowQueue(AppleBCMWLANCore *a1, uint64_t a2)
{
  if ((*(**(*(a1 + 9) + 5392) + 408))(*(*(a1 + 9) + 5392)))
  {
    if (AppleBCMWLANCore::isRejectingCommands(a1))
    {
      return 0;
    }

    else
    {
      v5 = *(a2 + 12);
      v6 = *(a2 + 16);
      v7 = *(**(*(a1 + 9) + 5392) + 416);

      return v7();
    }
  }

  else
  {

    return IO80211Controller::requestFlowQueue(a1, a2);
  }
}

unsigned __int8 *AppleBCMWLANCore::validateBrcmExtChIE(AppleBCMWLANCore *this, unsigned __int8 *a2, unint64_t a3)
{
  if (!a2 || !a3)
  {
    AppleBCMWLANCore::validateBrcmExtChIE(this);
    return v7;
  }

  if (a3 < 7)
  {
    return 0;
  }

  if (*(a2 + 1) != -28672 || a2[4] != 76)
  {
    return 0;
  }

  v5 = 0;
  if (a3 >= 0x83 && a2[5] == 64)
  {
    if (*(a2 + 10) + 6 <= a3 && !*(a2 + 126) && !*(a2 + 61))
    {
      v5 = a2 + 6;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::validateBrcmExtChIE(this);
        }
      }

      return v5;
    }

    AppleBCMWLANCore::validateBrcmExtChIE(this);
    return v7;
  }

  return v5;
}

uint64_t AppleBCMWLANCore::getRoamNoNetworkReason(uint64_t *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *(a2 + 20);
  if (v2 < 2 || *(a2 + 4) != 19 || *(a2 + 8) != 3)
  {
    return 0;
  }

  v4 = v2 + 47 + a2;
  if (!__CFADD__(v2 + 47, a2))
  {
    v6 = (a2 + 48);
    v7 = a2 + 49;
    if (v7 >= a2 && a2 != -49 && v7 <= v4 && v6 >= a2 && v4 >= v6)
    {
      if (*v6 != 221)
      {
        v8 = *(a2 + 50);
        if (v2 >= v8 && *(a2 + 54) + 8 <= v8 && *(a2 + 52) == 1)
        {
          return *(a2 + 56);
        }
      }

      return 0;
    }
  }

  result = (*(*a1 + 1952))(a1);
  if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANCore::getRoamNoNetworkReason(a1);
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleExtendedEventData(uint64_t this, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 20);
    if (v3 >= 2)
    {
      v4 = this;
      v5 = (a2 + 48);
      v6 = v3 + 47 + a2;
      v7 = __CFADD__(v3 + 47, a2);
      v8 = *(a2 + 4);
      if (v8)
      {
        v9 = (a2 + 48);
      }

      else
      {
        v9 = (a2 + 81);
      }

      if (v7 || ((v9 + 1) >= a2 ? (v10 = v9 != -1) : (v10 = 0), v10 ? (v11 = (v9 + 1) <= v6) : (v11 = 0), v11 ? (v12 = v9 < a2) : (v12 = 1), !v12 ? (v13 = v6 < v9) : (v13 = 1), v13))
      {
        this = (*(*this + 1952))(this);
        if (this)
        {
          (*(*v4 + 1952))(v4);
          this = CCLogStream::shouldLog();
          if (this)
          {
            return AppleBCMWLANCore::handleExtendedEventData(v4);
          }
        }
      }

      else
      {
        v14 = v9[1] + 2;
        v15 = &v5[v3 - 1];
        v16 = __CFADD__(v3 - 1, v5);
        if (v8 == 19 && *(a2 + 8) == 3)
        {
          v17 = v9;
          if (*v5 != 221)
          {
            v18 = *(a2 + 50);
            v17 = &v5[v18];
            v14 = v18 + v5[v18 + 1] + 2;
          }
        }

        else
        {
          v17 = v9;
        }

        if (v14 <= v3)
        {
          while (1)
          {
            if (*v17 == 221)
            {
              this = AppleBCMWLANCore::validateBrcmExtChIE(v4, v17, v17[1] + 2);
              if (this)
              {
                v22 = *(this + 8);
                v23 = *(this + 12);
                if (*(a2 + 4) == 16 && !(v22 | v23))
                {
                  v22 = *(a2 + 24);
                  v23 = *(a2 + 28);
                }

                if (v22 | v23)
                {
                  this = AppleBCMWLANScanAdapter::processAndSendWLBSSInfo(*(v4[9] + 5424), this, *(this + 4));
                }
              }
            }

            v19 = *(a2 + 20);
            if (v19 == v14)
            {
              return this;
            }

            if (v19 > v14 && v19 - v14 <= 1)
            {
              break;
            }

            if (v16 || (v17 = &v9[v14], v21 = v17 + 1, v17 == -1) || v21 < v5 || v21 > v15 || v5 > v17 || v15 < v17)
            {
              this = (*(*v4 + 1952))(v4);
              if (this)
              {
                (*(*v4 + 1952))(v4);
                this = CCLogStream::shouldLog();
                if (this)
                {
                  return AppleBCMWLANCore::handleExtendedEventData(v4);
                }
              }

              return this;
            }

            v14 += v17[1] + 2;
            if (v14 > v19)
            {
              return this;
            }
          }

          this = (*(*v4 + 1952))(v4);
          if (this)
          {
            (*(*v4 + 1952))(v4);
            this = CCLogStream::shouldLog();
            if (this)
            {
              return AppleBCMWLANCore::handleExtendedEventData(v4);
            }
          }
        }
      }
    }
  }

  return this;
}

uint64_t AppleBCMWLANCore::updateSlowWifiRxAmpduStats(AppleBCMWLANCore *this, OSData *a2)
{
  v7 = 0;
  v4 = IOMallocZeroData();
  if (!a2)
  {
LABEL_7:
    v5 = 3758097084;
    if (v4)
    {
      goto LABEL_8;
    }

    return v5;
  }

  if ((OSData::getBytesNoCopy(a2, 4uLL, 4uLL) & 3) != 0)
  {
    AppleBCMWLANCore::updateSlowWifiRxAmpduStats(this);
    goto LABEL_7;
  }

  if (v4)
  {
    *(v4 + 2160) = AppleBCMWLANUtil::getCounterValueSafe(&v7, 4uLL, a2, 4uLL);
    *(v4 + 2168) = AppleBCMWLANUtil::getCounterValueSafe(&v7, 4uLL, a2, 0x14uLL);
    *(v4 + 2176) = AppleBCMWLANUtil::getCounterValueSafe(&v7, 4uLL, a2, 0x18uLL);
    *(v4 + 2184) = AppleBCMWLANUtil::getCounterValueSafe(&v7, 4uLL, a2, 8uLL);
    *(v4 + 2200) = AppleBCMWLANUtil::getCounterValueSafe(&v7, 4uLL, a2, 0x40uLL);
    *(v4 + 2208) = AppleBCMWLANUtil::getCounterValueSafe(&v7, 4uLL, a2, 0x30uLL);
    *(v4 + 2216) = AppleBCMWLANUtil::getCounterValueSafe(&v7, 4uLL, a2, 0x34uLL);
    *(v4 + 2224) = AppleBCMWLANUtil::getCounterValueSafe(&v7, 4uLL, a2, 0x28uLL);
    *(v4 + 2232) = AppleBCMWLANUtil::getCounterValueSafe(&v7, 4uLL, a2, 0x2CuLL);
    *(v4 + 2240) = AppleBCMWLANUtil::getCounterValueSafe(&v7, 4uLL, a2, 0x1CuLL);
    *(v4 + 2248) = AppleBCMWLANUtil::getCounterValueSafe(&v7, 4uLL, a2, 0xCuLL);
    *(v4 + 2256) = AppleBCMWLANUtil::getCounterValueSafe(&v7, 4uLL, a2, 0x10uLL);
    *(v4 + 2264) = AppleBCMWLANUtil::getCounterValueSafe(&v7, 4uLL, a2, 0x20uLL);
    *(v4 + 2272) = AppleBCMWLANUtil::getCounterValueSafe(&v7, 4uLL, a2, 0x24uLL);
    *(v4 + 2288) = AppleBCMWLANUtil::getCounterValueSafe(&v7, 4uLL, a2, 0x50uLL);
    *(v4 + 2296) = AppleBCMWLANUtil::getCounterValueSafe(&v7, 4uLL, a2, 0x4CuLL);
    *(v4 + 2280) = AppleBCMWLANUtil::getCounterValueSafe(&v7, 4uLL, a2, 0x48uLL);
    *(v4 + 2152) = 3;
    IO80211Controller::setChipCounterStats();
    v5 = v7;
LABEL_8:
    IOFreeData();
    return v5;
  }

  return 0;
}

uint64_t AppleBCMWLANCore::handleDongleEventPacket(uint64_t *a1, unsigned int *a2)
{
  v59 = 0;
  v4 = *(a2 + 1);
  v5 = a1 + 9;
  result = *(a1[9] + 5392);
  if (result)
  {
    result = (*(*result + 368))(result);
    v7 = result;
  }

  else
  {
    v7 = 0;
  }

  v8 = *a2;
  if (*a2 < 4uLL)
  {
    return result;
  }

  v9 = *(a2 + 1);
  v10 = *(v9 + 3);
  v11 = 4 * v10 + 36;
  if (v8 < v11)
  {
    return result;
  }

  v12 = v9 + 4 * v10;
  if (*(v12 + 26) != 1280)
  {
    return result;
  }

  v14 = (v12 + 34);
  v13 = *(v12 + 34);
  v15 = v11 + (bswap32(v13) >> 16);
  if (v8 < v15)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        v16 = (*(*a1 + 1952))(a1);
        CCLogStream::logAlert(v16, "[dk] %s@%d:Event too short for a specified datalen(%d, %d) vs (%d)\n", "handleDongleEventPacket", 14561, bswap32(*v14) >> 16, v15, *a2);
      }
    }

LABEL_31:
    v23 = *(*v5 + 14248);
    v25 = *a2;
    v24 = *(a2 + 1);

    return IO80211Hexdump();
  }

  if (*(v12 + 28) != 256)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleDongleEventPacket(a1);
      }
    }

    goto LABEL_31;
  }

  v17 = *(v12 + 32);
  if (v17 == 512)
  {
    v57 = v4 + v8;
    if (CCLogStream::shouldLog(*(*v5 + 14256), 1uLL))
    {
      LODWORD(keys) = 0;
      CCLogStream::logHeaderAndBuf(*(*v5 + 14256), *(a2 + 1), 0, *a2, *a2, &keys, 4uLL);
    }

    *(v12 + 28) = bswap32(*(v12 + 28)) >> 16;
    *(v12 + 32) = bswap32(*(v12 + 32)) >> 16;
    *(v12 + 34) = bswap32(*(v12 + 34)) >> 16;
    v58 = -469793522;
    v18 = (v12 + 36);
    v19 = v57;
    if (v57 - (v12 + 36) < 5)
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handleDongleEventPacket(a1);
        }
      }

      goto LABEL_27;
    }

    v28 = v59;
    if (*(v12 + 34) <= (*(v12 + 38) - 1))
    {
      v30 = -469793522;
    }

    else
    {
      v29 = 0;
      v30 = -469793522;
      do
      {
        v18 = (v18 + v29);
        if (v19 - v18 <= 4)
        {
          v58 = v30;
          v59 = v28;
          if ((*(*a1 + 1952))(a1))
          {
            (*(*a1 + 1952))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::handleDongleEventPacket(a1);
            }
          }

          goto LABEL_27;
        }

        v31 = *v18;
        if (v31 == 1)
        {
          v30 = -469793504;
        }

        else if (v31 == 2)
        {
          v32 = v18 + 2;
          if (v19 - (v18 + 2) < 5)
          {
            v58 = v30;
            v59 = v28;
            if ((*(*a1 + 1952))(a1))
            {
              (*(*a1 + 1952))(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::handleDongleEventPacket(a1);
              }
            }

            goto LABEL_27;
          }

          if (v18[1] > (v18[3] - 1))
          {
            v33 = 0;
            do
            {
              v34 = (v32 + v33);
              v35 = v19 - v34;
              if (v19 - v34 <= 4)
              {
                v58 = v30;
                v59 = v28;
                if ((*(*a1 + 1952))(a1))
                {
                  (*(*a1 + 1952))(a1);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::handleDongleEventPacket(a1);
                  }
                }

                goto LABEL_27;
              }

              v36 = *v34;
              if (v36 <= 3)
              {
                switch(v36)
                {
                  case 1u:
                    if (v34[1] >= 0x70u)
                    {
                      v58 = v30;
                      v59 = v28;
                      if (v19 - v34 - 4 > 111)
                      {
                        v49 = v34[4];
                        v58 = -469793510;
                        v59 = v49;
                        if (v49 <= 2)
                        {
                          if (v49 == 1)
                          {
                            v50 = -469793509;
                          }

                          else
                          {
                            if (v49 != 2)
                            {
                              goto LABEL_134;
                            }

                            v50 = -469793508;
                          }
                        }

                        else
                        {
                          switch(v49)
                          {
                            case 3:
                              v50 = -469793507;
                              break;
                            case 4:
                              v50 = -469793506;
                              break;
                            case 5:
                              v50 = -469793505;
                              break;
                            default:
                              goto LABEL_134;
                          }
                        }

                        v58 = v50;
                        goto LABEL_134;
                      }

                      if ((*(*a1 + 1952))(a1))
                      {
                        (*(*a1 + 1952))(a1);
                        if (CCLogStream::shouldLog())
                        {
                          AppleBCMWLANCore::handleDongleEventPacket(a1);
                        }
                      }

LABEL_27:
                      v20 = *(*v5 + 14248);
                      v22 = *a2;
                      v21 = *(a2 + 1);
                      return IO80211Hexdump();
                    }

                    break;
                  case 2u:
                    v48 = -469793513;
                    goto LABEL_133;
                  case 3u:
                    v48 = -469793512;
                    goto LABEL_133;
                }
              }

              else if (v36 - 5 >= 2)
              {
                if (v36 == 4)
                {
                  v48 = -469793511;
                  goto LABEL_133;
                }
              }

              else
              {
                v37 = v34[1];
                if (v37 >= 2)
                {
                  v38 = v34 + 2;
                  if (v19 - (v34 + 2) <= 1)
                  {
                    v58 = v30;
                    v59 = v28;
                    if ((*(*a1 + 1952))(a1))
                    {
                      (*(*a1 + 1952))(a1);
                      if (CCLogStream::shouldLog())
                      {
                        AppleBCMWLANCore::handleDongleEventPacket(a1);
                      }
                    }

                    goto LABEL_27;
                  }

                  v28 = *v38;
                  if (v28 <= 7)
                  {
                    if (*v38 > 2u)
                    {
                      if (*v38 > 5u)
                      {
                        if (v28 == 6)
                        {
                          v48 = -469793496;
                          goto LABEL_133;
                        }

                        if (v28 == 7)
                        {
                          v48 = -469793495;
                          goto LABEL_133;
                        }
                      }

                      else
                      {
                        if (v28 == 3)
                        {
                          v48 = -469793514;
                          goto LABEL_133;
                        }

                        if (v28 == 4)
                        {
                          v48 = -469793497;
                          goto LABEL_133;
                        }
                      }

LABEL_132:
                      v48 = -469793517;
                      goto LABEL_133;
                    }

                    if (*v38)
                    {
                      if (v28 == 1)
                      {
                        v45 = v19 - (v34 + 2);
                        v58 = -469793516;
                        v59 = 1;
                        v46 = (*(**(*v5 + 5392) + 368))(*(*v5 + 5392));
                        if ((v46 - 4378) > 0x15 || ((1 << (v46 - 26)) & 0x200601) == 0)
                        {
                          if ((v7 - 4355) > 0x16 || ((1 << (v7 - 3)) & 0x400005) == 0)
                          {
                            goto LABEL_134;
                          }

                          v54 = (*(*a1 + 1952))(a1);
                          if (v45 <= 7)
                          {
                            if (v54)
                            {
                              (*(*a1 + 1952))(a1);
                              if (CCLogStream::shouldLog())
                              {
                                AppleBCMWLANCore::handleDongleEventPacket(a1);
                              }
                            }

                            goto LABEL_134;
                          }

                          if (v54)
                          {
                            (*(*a1 + 1952))(a1);
                            if (CCLogStream::shouldLog())
                            {
                              AppleBCMWLANCore::handleDongleEventPacket(a1);
                            }
                          }
                        }

                        else
                        {
                          if (v45 <= 5)
                          {
                            if ((*(*a1 + 1952))(a1))
                            {
                              (*(*a1 + 1952))(a1);
                              if (CCLogStream::shouldLog())
                              {
                                AppleBCMWLANCore::handleDongleEventPacket(a1);
                              }
                            }

                            goto LABEL_134;
                          }

                          if (v34[3] != 8)
                          {
                            if ((*(*a1 + 1952))(a1))
                            {
                              (*(*a1 + 1952))(a1);
                              if (CCLogStream::shouldLog())
                              {
                                AppleBCMWLANCore::handleDongleEventPacket(a1);
                              }
                            }

                            goto LABEL_134;
                          }

                          v53 = (*(*a1 + 1952))(a1);
                          if (v35 - 8 <= 7)
                          {
                            if (v53)
                            {
                              (*(*a1 + 1952))(a1);
                              if (CCLogStream::shouldLog())
                              {
                                AppleBCMWLANCore::handleDongleEventPacket(a1);
                              }
                            }

                            goto LABEL_134;
                          }

                          if (v53)
                          {
                            (*(*a1 + 1952))(a1);
                            if (CCLogStream::shouldLog())
                            {
                              AppleBCMWLANCore::handleDongleEventPacket(a1);
                            }
                          }
                        }

                        AppleBCMWLANCore::validateRxDMAStall(a1);
LABEL_134:
                        keys = OSString::withCString("DongleEventData.bin");
                        values = OSData::withBytes(*(a2 + 1), *a2);
                        v51 = *(*v5 + 5536);
                        v52 = OSDictionary::withObjects(&values, &keys, 1u, 0);
                        CCFaultReporter::reportFault(v51, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x39F0u, "handleDongleEventPacket", v52, v58, "reason=(0x%x)", v59);
                        return AppleBCMWLANUtil::releaseOSObjectArray(&keys, &values, 1);
                      }

                      v48 = -469793515;
                    }

                    else
                    {
                      v48 = -469793510;
                    }

LABEL_133:
                    v58 = v48;
                    v59 = v28;
                    goto LABEL_134;
                  }

                  if (v28 == 8 || v28 == 14)
                  {
                    if (v37 >= 0x20)
                    {
                      goto LABEL_141;
                    }
                  }

                  else
                  {
                    if (v28 != 16)
                    {
                      goto LABEL_132;
                    }

                    if (v37 > 0x1F)
                    {
LABEL_141:
                      v58 = v30;
                      v59 = v28;
                      result = AppleBCMWLANCore::handleRxStallReasons(a1, v32 + v33, &v59, &v58, v19);
                      if (result)
                      {
                        return result;
                      }

                      goto LABEL_134;
                    }

                    v55 = v32;
                    v56 = v30;
                    v40 = *v38;
                    if ((*(*a1 + 1952))(a1) && ((*(*a1 + 1952))(a1), CCLogStream::shouldLog()))
                    {
                      AppleBCMWLANCore::handleDongleEventPacket(a1);
                      v28 = v40;
                      v19 = v57;
                    }

                    else
                    {
                      v19 = v57;
                      v28 = v40;
                    }

                    v30 = v56;
                    v32 = v55;
                  }
                }
              }

              v41 = v34[1];
              v33 += v41;
              if (v34[1])
              {
                v42 = v33 + v41 > v18[1];
              }

              else
              {
                v42 = 1;
              }
            }

            while (!v42);
          }
        }

        v43 = v18[1];
        v29 += v43;
        if (v18[1])
        {
          v44 = v29 + v43 > *v14;
        }

        else
        {
          v44 = 1;
        }
      }

      while (!v44);
    }

    v58 = v30;
    v59 = v28;
    goto LABEL_134;
  }

  if (v17 != 1024)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleDongleEventPacket(a1);
      }
    }

    goto LABEL_31;
  }

  if (v13 > 7)
  {
    v26 = *(v12 + 40);
    if (v26 <= 1)
    {
      v27 = *(v12 + 38);
      *(*v5 + 4 * v26 + 35648) += v27;
      if (!v26)
      {
        AppleBCMWLANCore::collectSPMIHEBResetStats(a1, v27);
      }
    }

    result = (*(*a1 + 1952))(a1);
    if (result)
    {
      (*(*a1 + 1952))(a1);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleDongleEventPacket(a1);
      }
    }
  }

  else
  {
    result = (*(*a1 + 1952))(a1);
    if (result)
    {
      (*(*a1 + 1952))(a1);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleDongleEventPacket(a1);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::validateRxDMAStall(AppleBCMWLANCore *this)
{
  v2 = *(*(this + 9) + 5392);
  if (v2)
  {
    v3 = (*(*v2 + 752))(v2);
    v4 = OSMetaClassBase::safeMetaCast(v3, gAppleBCMWLANBusSkywalkMetaClass);
    if (v4)
    {
      release = v4->__vftable[2].release;

      return release();
    }

    else
    {
      result = (*(*this + 1952))(this);
      if (result)
      {
        (*(*this + 1952))(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANCore::validateRxDMAStall(this);
        }
      }
    }
  }

  else
  {
    result = (*(*this + 1952))(this);
    if (result)
    {
      (*(*this + 1952))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::validateRxDMAStall(this);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleRxStallReasons(uint64_t *a1, uint64_t a2, int *a3, int *a4, uint64_t a5)
{
  v10 = a1 + 9;
  v11 = (*(**(a1[9] + 5392) + 368))(*(a1[9] + 5392));
  v12 = (*(**(*v10 + 5392) + 368))();
  v14 = v12 == 4388 || v12 == 4399;
  v69 = 0u;
  v70 = 0u;
  *__dst = 0u;
  v68 = 0u;
  v15 = *a3;
  if (v14 && v15 == 16)
  {
    if (a5 - a2 - 4 <= 31)
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        v26 = 1;
        if (!CCLogStream::shouldLog())
        {
          return v26;
        }

LABEL_51:
        AppleBCMWLANCore::handleRxStallReasons(a1);
        return v26;
      }

      return 1;
    }

    *a3 = *(a2 + 24);
    *a4 = -469793456;
    v21 = *(a2 + 12);
    v22 = *(a2 + 20);
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleRxStallReasons(a1);
      }
    }
  }

  else
  {
    v17 = a5 - a2 - 4;
    if (v11 < 0x112F || v15 != 14)
    {
      if (v17 > 31)
      {
        *a3 = *(a2 + 24);
        *a4 = -469793484;
        v19 = *(a2 + 12);
        v20 = *(a2 + 20);
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::handleRxStallReasons(a1);
          }
        }

        goto LABEL_27;
      }

      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        v26 = 1;
        if (!CCLogStream::shouldLog())
        {
          return v26;
        }

        goto LABEL_51;
      }

      return 1;
    }

    if (v17 <= 31)
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        v26 = 1;
        if (!CCLogStream::shouldLog())
        {
          return v26;
        }

        goto LABEL_51;
      }

      return 1;
    }

    *a3 = *(a2 + 24);
    *a4 = -469793465;
    v23 = *(a2 + 12);
    v24 = *(a2 + 20);
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleRxStallReasons(a1);
      }
    }
  }

LABEL_27:
  v25 = *a3;
  if (*a3 <= 3)
  {
    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v26 = 0;
        if (*a4 == -469793465)
        {
          v34 = -469793463;
        }

        else
        {
          v34 = -469793481;
        }

        v35 = -469793454;
        if (*a4 != -469793456)
        {
          v35 = v34;
        }

        *a4 = v35;
        ++*(*v10 + 30032);
      }

      else
      {
        v26 = 0;
        if (v25 == 3)
        {
          v26 = 0;
          if (*a4 == -469793465)
          {
            v30 = -469793462;
          }

          else
          {
            v30 = -469793480;
          }

          v31 = -469793453;
          if (*a4 != -469793456)
          {
            v31 = v30;
          }

          *a4 = v31;
          ++*(*v10 + 30024);
        }
      }

      goto LABEL_88;
    }

    if (v25)
    {
      v26 = 0;
      if (v25 != 1)
      {
        goto LABEL_88;
      }

      v26 = 0;
      v29 = -469793482;
    }

    else
    {
      v26 = 0;
      v29 = -469793483;
    }

    goto LABEL_87;
  }

  if (v25 <= 6)
  {
    if (v25 != 4)
    {
      v26 = 0;
      if (v25 == 6)
      {
        v26 = 0;
        if (*a4 == -469793465)
        {
          v32 = -469793460;
        }

        else
        {
          v32 = -469793478;
        }

        v33 = -469793451;
        if (*a4 != -469793456)
        {
          v33 = v32;
        }

        *a4 = v33;
        ++*(*v10 + 30016);
      }

      goto LABEL_88;
    }

    v26 = 0;
    if (*a4 == -469793465)
    {
      v38 = -469793461;
    }

    else
    {
      v38 = -469793479;
    }

    v29 = -469793452;
    if (*a4 != -469793456)
    {
      v29 = v38;
    }

LABEL_87:
    *a4 = v29;
    goto LABEL_88;
  }

  if (v25 == 7)
  {
    if (*a4 == -469793465)
    {
      v36 = -469793459;
    }

    else
    {
      v36 = -469793477;
    }

    v37 = -469793450;
    if (*a4 != -469793456)
    {
      v37 = v36;
    }

    *a4 = v37;
    ++*(*v10 + 30040);
LABEL_81:
    v26 = 1;
    goto LABEL_88;
  }

  if (v25 != 8)
  {
    v26 = 0;
    if (v25 != 9)
    {
      goto LABEL_88;
    }

    if (*a4 == -469793465)
    {
      v27 = -469793458;
    }

    else
    {
      v27 = -469793475;
    }

    if (*a4 == -469793456)
    {
      v28 = -469793449;
    }

    else
    {
      v28 = v27;
    }

    *a4 = v28;
    ++*(*v10 + 30056);
    goto LABEL_81;
  }

  if (*a4 == -469793465)
  {
    v44 = -469793464;
  }

  else
  {
    v44 = -469793476;
  }

  if (*a4 == -469793456)
  {
    v45 = -469793455;
  }

  else
  {
    v45 = v44;
  }

  *a4 = v45;
  ++*(*v10 + 30048);
  if (*(*v10 + 11288))
  {
    if (*a4 == -469793455 && v14)
    {
      if (*(a2 + 6) != 68)
      {
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::handleRxStallReasons(a1);
          }
        }

        return 1;
      }

      *v64 = 0xE3FF855100340001;
      *&v64[8] = *a3;
      *&v64[12] = *(a2 + 36);
      v65 = *(a2 + 52);
      v66 = *(a2 + 68);
      v47 = *(a2 + 40);
      v49 = *(a2 + 12);
      v48 = *(a2 + 16);
      v50 = *(a2 + 20);
      v63 = *(a2 + 8);
      v51 = *(a2 + 9);
      v52 = *(a2 + 10);
      v53 = v47;
      if (v47)
      {
        strlcat(__dst, "STALL_IN_PROGRESS ", 0x40uLL);
        if ((v53 & 2) == 0)
        {
LABEL_109:
          if ((v53 & 4) == 0)
          {
            goto LABEL_110;
          }

          goto LABEL_136;
        }
      }

      else if ((v47 & 2) == 0)
      {
        goto LABEL_109;
      }

      strlcat(__dst, "STALL_TIM_SET ", 0x40uLL);
      if ((v53 & 4) == 0)
      {
LABEL_110:
        if ((v53 & 8) == 0)
        {
LABEL_112:
          (*(**(a1[9] + 11288) + 864))();
          IO80211Controller::postMessage(a1, *(a1[9] + 11288), 0xF5u, v64, 0x34uLL, 1);
          goto LABEL_113;
        }

LABEL_111:
        strlcat(__dst, "STALL_MU ", 0x40uLL);
        goto LABEL_112;
      }

LABEL_136:
      strlcat(__dst, "STALL_NON_MU ", 0x40uLL);
      if ((v53 & 8) == 0)
      {
        goto LABEL_112;
      }

      goto LABEL_111;
    }
  }

LABEL_113:
  *v64 = 0;
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  v54 = *v64 / 0xF4240uLL;
  v55 = *v10;
  v56 = *(*v10 + 14288);
  v57 = *v64 / 0xF4240uLL >= v56;
  v58 = *v64 / 0xF4240uLL - v56;
  if (v57)
  {
    if (v58 >= 0x5265C01)
    {
      *(v55 + 14288) = v54;
      *(*v10 + 14296) = 0;
      v55 = *v10;
    }

    v59 = *(v55 + 14296);
    v62 = v54;
    if (IO80211BssManager::isAssociated(*(v55 + 5432)))
    {
      memset(v64, 0, sizeof(v64));
      AppleBCMWLANLQM::getExtCCAStats(*(*v10 + 5608), v64);
      v60 = *(*v10 + 5432);
      IO80211BssManager::getCurrentChannel();
      if (v64[6] >= 41)
      {
        v26 = 1;
        if (*&v64[4] == 43690 || v59)
        {
LABEL_88:
          v39 = *a3;
          v40 = (*(*a1 + 1952))(a1);
          if (v39 == 8)
          {
            if (v40)
            {
              (*(*a1 + 1952))(a1);
              if (CCLogStream::shouldLog())
              {
                v41 = (*(*a1 + 1952))(a1);
                v42 = convertAppleBCMWLANReturnToString(*a4);
                CCLogStream::logAlert(v41, "[dk] %s@%d:Rx Stall %s [if_idx=%u ac=%u link=%u] [Bitmap Reason(s): %s] - Pkts=%u Dropped=%u AlertTh=%u\n", "handleRxStallReasons", 15015, v42);
              }
            }
          }

          else if (v40)
          {
            (*(*a1 + 1952))(a1);
            if (CCLogStream::shouldLog())
            {
              v43 = (*(*a1 + 1952))(a1);
              convertAppleBCMWLANReturnToString(*a4);
              CCLogStream::logAlert(v43, "[dk] %s@%d:Rx Stall Reason Code %s - NumPkts Considered=%u, NumPkts Dropped=%u, Alert Threshold=%u\n");
            }
          }

          return v26;
        }

LABEL_132:
        v26 = 0;
        *(*v10 + 14288) = v62;
        ++*(*v10 + 14296);
        goto LABEL_88;
      }

      if (!v59)
      {
        goto LABEL_132;
      }
    }

    else if (!v59)
    {
      goto LABEL_132;
    }

    v26 = 1;
    goto LABEL_88;
  }

  if (!(*(*a1 + 1952))(a1))
  {
    return 1;
  }

  (*(*a1 + 1952))(a1);
  v26 = 1;
  if (CCLogStream::shouldLog())
  {
    AppleBCMWLANCore::handleRxStallReasons(a1);
  }

  return v26;
}

BOOL AppleBCMWLANCore::isEventForInterface(uint64_t a1, IO80211SkywalkInterface *this, uint64_t a3)
{
  v6 = *(a1 + 72);
  if (*(v6 + 780) < 5u)
  {
    v10 = *(v6 + 11296);
    if (v10)
    {
      v11 = v10 == this;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      if (AppleBCMWLANProximityInterface::getBssCfgId(v10) == *(a3 + 47))
      {
        return 1;
      }

      v6 = *(a1 + 72);
    }

    v12 = *(v6 + 29944);
    if (v12)
    {
      v13 = v12 == this;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      if (AppleBCMWLANNANInterface::getBssCfgId(v12) == *(a3 + 47))
      {
        return 1;
      }

      v6 = *(a1 + 72);
    }

    v14 = *(v6 + 11304);
    if (v14)
    {
      v15 = v14 == this;
    }

    else
    {
      v15 = 0;
    }

    return v15 && AppleBCMWLANIO80211APSTAInterface::getBssCfgId(v14) == *(a3 + 47);
  }

  v7 = *(a3 + 46);
  if (IO80211SkywalkInterface::getInterfaceId(this) == v7)
  {
    return 1;
  }

  v8 = *(*(a1 + 72) + 11304);
  v9 = v8 && v8 == this;
  return v9 && *(a3 + 46) == 1 && *(a3 + 4) == 54;
}

uint64_t *AppleBCMWLANCore::checkActionFrameCompleteOverdue(uint64_t *this)
{
  v1 = this + 9;
  if (*(this[9] + 17528) == 1)
  {
    if ((v2 = this, mach_continuous_time(), this = absolutetime_to_nanoseconds(), v3 = *(*v1 + 17536), v3 <= 0xB2F4FC07949) && 0xB2F4FC07949 - v3 > 0x12C || v3 > 0xB2F4FC07949 && v3 - 0xB2F4FC07949 <= 0xFFFFFFFFFFFFFED2)
    {
      *(*v1 + 17528) = 0;
      if ((*(*v2 + 1952))(v2))
      {
        (*(*v2 + 1952))(v2);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::checkActionFrameCompleteOverdue(v2);
        }
      }

      return CCFaultReporter::reportFault(*(*v1 + 5536), 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x3B12u, "checkActionFrameCompleteOverdue", 0, -469793493, 0, 0xB2F4FC07949);
    }
  }

  return this;
}

uint64_t AppleBCMWLANCore::getTransDisabledFlags(AppleBCMWLANCore *this, unsigned __int8 *a2, unint64_t a3)
{
  if (a2 && a3)
  {
    if (a3 >= 7 && (*(a2 + 1) == 28496 ? (v4 = a2[4] == 154) : (v4 = 0), v4 && a2[5] == 32))
    {
      v5 = a2[6];
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::getTransDisabledFlags(this);
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    AppleBCMWLANCore::getTransDisabledFlags(this);
    return v7;
  }

  return v5;
}

uint64_t AppleBCMWLANCore::updateTransitionDisabledInfo(AppleBCMWLANCore *this, uint64_t a2)
{
  if (!a2 || (v4 = *(a2 + 20), v4 <= 1))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::updateTransitionDisabledInfo(this);
      }
    }

    return 0;
  }

  v5 = v4 + 47 + a2;
  if (__CFADD__(v4 + 47, a2) || (v6 = a2 + 48, a2 + 49 < a2) || a2 == -49 || (a2 + 49 <= v5 ? (v7 = v6 < a2) : (v7 = 1), !v7 ? (v8 = v5 < v6) : (v8 = 1), v8))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::updateTransitionDisabledInfo(this);
      }
    }

    return 0;
  }

  v9 = v4 - 1 + v6;
  v10 = __CFADD__(v4 - 1, v6);
  v11 = *(a2 + 49) + 2;
  if (v11 > v4)
  {
    return 0;
  }

  v12 = 0;
  v13 = (a2 + 48);
  do
  {
    if (*v13 == 221)
    {
      TransDisabledFlags = AppleBCMWLANCore::getTransDisabledFlags(this, v13, v13[1] + 2);
      if (TransDisabledFlags)
      {
        v12 = TransDisabledFlags;
      }

      else
      {
        v12 = v12;
      }

      LODWORD(v4) = *(a2 + 20);
    }

    if (v4 - v11 < 2)
    {
      break;
    }

    if (v10)
    {
      break;
    }

    v13 = (v6 + v11);
    v15 = v13 + 1;
    if (v13 == -1)
    {
      break;
    }

    if (v15 < v6)
    {
      break;
    }

    if (v15 > v9)
    {
      break;
    }

    if (v6 > v13)
    {
      break;
    }

    if (v9 < v13)
    {
      break;
    }

    v11 += v13[1] + 2;
  }

  while (v11 <= v4);
  return v12;
}

uint64_t AppleBCMWLANCore::handleScanEvent(AppleBCMWLANCore *a1, uint64_t a2)
{
  v96 = 0;
  v97 = 0;
  v4 = *(a1 + 9);
  v5 = *(v4 + 208);
  v94 = 0xAAAAAAAAAAAAAAAALL;
  v95 = -1431655766;
  CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(*(v4 + 5432));
  result = AppleBCMWLANScanAdapter::handleScanEvent(*(*(a1 + 9) + 5424), a2);
  v8 = *(a2 + 12);
  if (v8 != 3)
  {
    if (v8 == 2)
    {
      v9 = *(a1 + 9);
      if (*(v9 + 17796) == 2)
      {
        AppleBCMWLANRoamAdapter::getRoamCacheAsync(*(v9 + 5568));
        v10 = *(a1 + 9) + 600 * *(*(a1 + 9) + 14164);
        ++*(v10 + 12770);
        *(*(a1 + 9) + 14146) = *(*(a1 + 9) + 600 * *(*(a1 + 9) + 14164) + 12770);
        v9 = *(a1 + 9);
      }

      result = AppleBCMWLANTxPowerManager::dynTxSDBUnPause(*(v9 + 5528), 1);
      *(*(a1 + 9) + 17796) = 0;
    }

    else if (v8 == 1)
    {
      if (*(a2 + 20) > 0xBu)
      {
        *(*(a1 + 9) + 17796) = *(a2 + 52);
        AppleBCMWLANTxPowerManager::dynTxSDBPause(*(*(a1 + 9) + 5528), 1);
        if (2 * (*(a2 + 58) + *(a2 + 56)) + 12 <= *(a2 + 20))
        {
          result = IO80211BssManager::isAssociated(*(*(a1 + 9) + 5432));
          v62 = 0;
          if (result && CurrentBSS)
          {
            result = (*(*CurrentBSS + 256))(CurrentBSS);
            v62 = result;
          }

          if (*(a2 + 48) >= 2u)
          {
            v72 = *(a2 + 56);
            if (v72)
            {
              v73 = 0;
              v74 = 0;
              v92 = v5;
              do
              {
                v75 = (a2 + 60 + v74);
                if (*v75 == v5)
                {
                  v76 = v75[1];
                  if (v76 >= 2)
                  {
                    v77 = 0;
                    v78 = v75 + 2;
                    v79 = v76 >> 1;
                    do
                    {
                      v80 = v77;
                      AppleBCMWLANChanSpec::getAppleChannelSpec(*(*(a1 + 9) + 17744), v78[v77]);
                      result = ChanSpecConvToApple80211Channel();
                      if (v62 != HIDWORD(v94))
                      {
                        result = AppleBCMWLANCore::isPassiveChanSpec(a1, v78[v80]);
                      }

                      v77 = v80 + 1;
                    }

                    while (v79 > (v80 + 1));
                    v72 = *(a2 + 56);
                    v5 = v92;
                  }
                }

                v74 += ((v75[1] + 3) & 0x1FFFC) + 4;
                ++v73;
              }

              while (v72 > v73);
            }
          }

          else
          {
            v63 = *(a2 + 56);
            if (v5)
            {
              v64 = *(a2 + 56);
              v63 += *(a2 + 58);
            }

            else
            {
              v64 = 0;
            }

            if (v64 < v63)
            {
              v82 = (a2 + 2 * v64 + 60);
              v83 = v64 + 1;
              do
              {
                AppleBCMWLANChanSpec::getAppleChannelSpec(*(*(a1 + 9) + 17744), *v82);
                result = ChanSpecConvToApple80211Channel();
                if (v62 != HIDWORD(v94))
                {
                  result = AppleBCMWLANCore::isPassiveChanSpec(a1, *v82);
                }

                ++v82;
                v20 = v63 == v83++;
              }

              while (!v20);
            }
          }
        }

        else
        {
          result = (*(*a1 + 1952))(a1);
          if (result)
          {
            (*(*a1 + 1952))(a1);
            result = CCLogStream::shouldLog();
            if (result)
            {
              v21 = (*(*a1 + 1952))(a1);
              return CCLogStream::logAlert(v21, "[dk] %s@%d:ERROR: Invalid event data length %d, num channels slice0 %d, slice1 %d \n", "handleScanEvent", 22246, *(a2 + 20), *(a2 + 56), *(a2 + 58));
            }
          }
        }
      }

      else
      {
        result = (*(*a1 + 1952))(a1);
        if (result)
        {
          (*(*a1 + 1952))(a1);
          result = CCLogStream::shouldLog();
          if (result)
          {
            return AppleBCMWLANCore::handleScanEvent(a1);
          }
        }
      }
    }

    return result;
  }

  v11 = *(a2 + 20) + 48;
  v96 = a2;
  v97 = v11;
  IO80211BufferCursor::_crop(&v96, 0x30uLL, 0xFFFFFFFFFFFFFFFFLL, v93);
  v12 = IO80211BufferCursor::asType<wl_roam_11kvr_nbr_rpt_req_v1>(v93, 0, 0xC);
  v14 = v12 + (v13 >> 32);
  if (__CFADD__(v12, v13 >> 32))
  {
    v15 = (v13 >> 63) + 1;
  }

  else
  {
    v15 = v13 >> 63;
  }

  v16 = v15 << 63 >> 63;
  if (v16 != v15 || v16 < 0)
  {
    AppleBCMWLANProximityInterface::handleEvent(v12, v13);
  }

  if (v14)
  {
    v17 = v13;
    isAssociated = IO80211BssManager::isAssociated(*(*(a1 + 9) + 5432));
    if (isAssociated)
    {
      v20 = CurrentBSS == 0;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      v22 = 0;
    }

    else
    {
      isAssociated = (*(*CurrentBSS + 256))(CurrentBSS);
      v22 = isAssociated;
    }

    if ((v17 & 0x8000000000000000) != 0 || HIDWORD(v17) + 12 > v17)
    {
      AppleBCMWLANProximityInterface::handleEvent(isAssociated, v19);
    }

    if (*v14 <= 1u)
    {
      v24 = (v14 + 8);
      v23 = *(v14 + 8);
      v26 = (v14 + 10);
      v25 = *(v14 + 10);
      if ((v25 + v23) >= 0x191)
      {
        result = (*(*a1 + 1952))(a1);
        if (result)
        {
          (*(*a1 + 1952))(a1);
          result = CCLogStream::shouldLog();
          if (result)
          {
            return AppleBCMWLANCore::handleScanEvent(a1);
          }
        }

        return result;
      }

      v65 = 0;
      v66 = 0;
      if (v5)
      {
        v67 = *(v14 + 8);
      }

      else
      {
        v67 = 0;
      }

      if (!v5)
      {
        LOWORD(v25) = 0;
      }

      v68 = v23 + v25;
      if (v67 < v68)
      {
        LOBYTE(v66) = 0;
        LOBYTE(v65) = 0;
        v69 = (v14 + 2 * v67 + 12);
        v70 = v67 + 1;
        v71 = v68;
        do
        {
          AppleBCMWLANChanSpec::getAppleChannelSpec(*(*(a1 + 9) + 17744), *v69);
          ChanSpecConvToApple80211Channel();
          if (v22 != HIDWORD(v94))
          {
            if (AppleBCMWLANCore::isPassiveChanSpec(a1, *v69))
            {
              LOBYTE(v66) = v66 + 1;
            }

            else
            {
              LOBYTE(v65) = v65 + 1;
            }
          }

          ++v69;
          v20 = v71 == v70++;
        }

        while (!v20);
        v66 = v66;
        v65 = v65;
      }

      if (IO80211Controller::isLQMOSLOGEnabled(a1))
      {
        v86 = *v24;
        v87 = *v26;
        io80211_os_log();
        if (!IO80211Controller::isLQMIOLOGEnabled(a1))
        {
LABEL_126:
          result = IO80211Controller::isLQMCCLOGEnabled(a1);
          if (result)
          {
            v81 = *v24;
            v88 = *v26;
            return IO80211Controller::logLQMToCC(a1, "LQM-WIFI: SCAN_ADD Event:V%d currentSlice:%d num_chan_slice0:%d num_chan_slice1:%d passiveCnt:%d activeCnt:%d\n");
          }

          return result;
        }
      }

      else if ((IO80211Controller::isLQMIOLOGEnabled(a1) & 1) == 0)
      {
        goto LABEL_126;
      }

      IOLog("LQM-WIFI: SCAN_ADD Event:V%d currentSlice:%d num_chan_slice0:%d num_chan_slice1:%d passiveCnt:%d activeCnt:%d\n", v84, v5, *v24, *v26, v66, v65);
      goto LABEL_126;
    }

    if (*v14 == 2)
    {
      IO80211BufferCursor::_crop(&v96, 0x30uLL, 0xFFFFFFFFFFFFFFFFLL, v93);
      result = IO80211BufferCursor::asType<wl_roam_11kvr_nbr_rpt_resp_v1>(v93, 0, 0x10);
      v28 = (result + (v27 >> 32));
      if (__CFADD__(result, v27 >> 32))
      {
        v29 = (v27 >> 63) + 1;
      }

      else
      {
        v29 = v27 >> 63;
      }

      v30 = v29 << 63 >> 63;
      if (v30 != v29 || v30 < 0)
      {
        AppleBCMWLANProximityInterface::handleEvent(result, v27);
      }

      if (v28)
      {
        if (v27 < 0 || HIDWORD(v27) + 16 > v27)
        {
          AppleBCMWLANProximityInterface::handleEvent(result, v27);
        }

        v89 = (result + (v27 >> 32));
        if (v28[2])
        {
          v31 = 0;
          LOBYTE(v32) = 0;
          v33 = 0;
          v34 = 0;
          v91 = 0;
          v90 = 0;
          v35 = 0;
          v36 = 60;
          while (1)
          {
            IO80211BufferCursor::_crop(&v96, v36, 0xFFFFFFFFFFFFFFFFLL, v93);
            result = IO80211BufferCursor::asType<ether_addr>(v93, 0, 6);
            v38 = (result + (v37 >> 32));
            if (__CFADD__(result, v37 >> 32))
            {
              v39 = (v37 >> 63) + 1;
            }

            else
            {
              v39 = v37 >> 63;
            }

            v40 = v39 << 63 >> 63;
            if (v40 != v39 || v40 < 0)
            {
              AppleBCMWLANProximityInterface::handleEvent(result, v37);
            }

            if (!v38)
            {
LABEL_86:
              v58 = v33;
              v32 = v32;
              v59 = v90;
              v60 = v91;
              v61 = WORD2(v90);
              goto LABEL_140;
            }

            if (v37 < 0 || HIDWORD(v37) + 6 > v37)
            {
              AppleBCMWLANProximityInterface::handleEvent(result, v37);
            }

            v41 = v36 + 4;
            v42 = v38[1];
            if (v38[1])
            {
              if (v34 + (v42 >> 1) >= 0x191)
              {
                result = (*(*a1 + 1952))(a1);
                if (result)
                {
                  (*(*a1 + 1952))(a1);
                  result = CCLogStream::shouldLog();
                  if (result)
                  {
                    return AppleBCMWLANCore::handleScanEvent(a1);
                  }
                }

                return result;
              }

              v31 = v42 >> 1;
              v43 = *v38;
              v45 = v90;
              v44 = HIDWORD(v90);
              if (v43 == 2)
              {
                v46 = v42 >> 1;
              }

              else
              {
                v46 = 0;
              }

              v47 = v46 + HIDWORD(v90);
              v48 = v91;
              v49 = v91 + (v42 >> 1);
              if (v43)
              {
                v49 = v91;
              }

              else
              {
                v47 = HIDWORD(v90);
              }

              if (v43 == 1)
              {
                v45 = v90 + (v42 >> 1);
              }

              else
              {
                v48 = v49;
              }

              LODWORD(v90) = v45;
              if (v43 != 1)
              {
                v44 = v47;
              }

              HIDWORD(v90) = v44;
              v91 = v48;
              if (v42 != 1)
              {
                if (v31 <= 1)
                {
                  v50 = 1;
                }

                else
                {
                  v50 = v42 >> 1;
                }

                v51 = (v50 + v34);
                v52 = v36 + 4;
                do
                {
                  IO80211BufferCursor::_crop(&v96, v52, 0xFFFFFFFFFFFFFFFFLL, v93);
                  result = IO80211BufferCursor::asType<unsigned short>(v93, 0, 2);
                  v54 = (result + (v53 >> 32));
                  if (__CFADD__(result, v53 >> 32))
                  {
                    v55 = (v53 >> 63) + 1;
                  }

                  else
                  {
                    v55 = v53 >> 63;
                  }

                  v56 = v55 << 63 >> 63;
                  if (v56 != v55 || v56 < 0)
                  {
                    AppleBCMWLANProximityInterface::handleEvent(result, v53);
                  }

                  if (!v54)
                  {
                    break;
                  }

                  if (v53 < 0 || HIDWORD(v53) + 2 > v53)
                  {
                    AppleBCMWLANCore::handleScanEvent(result, v53);
                  }

                  isPassiveChanSpec = AppleBCMWLANCore::isPassiveChanSpec(a1, *v54);
                  v52 += 2;
                  v33 += isPassiveChanSpec;
                  LOBYTE(v32) = v32 + (isPassiveChanSpec ^ 1);
                  result = AppleBCMWLANChanSpec::getAppleChannelSpec(*(*(a1 + 9) + 17744), *v54);
                  ++v34;
                }

                while (v51 != v34);
                v28 = v89;
                v31 = v42 >> 1;
              }
            }

            v36 = ((v42 + 3) & 0x1FFFC) + v41;
            if (v28[2] <= ++v35)
            {
              goto LABEL_86;
            }
          }
        }

        v61 = 0;
        v59 = 0;
        v60 = 0;
        v58 = 0;
        v32 = 0;
        v31 = 0;
LABEL_140:
        if (a1)
        {
          if (IO80211Controller::isLQMOSLOGEnabled(a1))
          {
            v85 = *v89;
            io80211_os_log();
          }

          if (IO80211Controller::isLQMIOLOGEnabled(a1))
          {
            IOLog("LQM-WIFI: SCAN_ADD Event:V%d passiveChannelCnt=%d ActiveChannelCnt=%d total channel cnt=%d Num2G=%d Num5G=%d Num6G=%d\n", *v89, v58, v32, v31, v59, v60, v61);
          }

          result = IO80211Controller::isLQMCCLOGEnabled(a1);
          if (result)
          {
            return IO80211Controller::logLQMToCC(a1, "LQM-WIFI: SCAN_ADD Event:V%d passiveChannelCnt=%d ActiveChannelCnt=%d total channel cnt=%d Num2G=%d Num5G=%d Num6G=%d\n", *v89);
          }
        }
      }

      else
      {
        result = (*(*a1 + 1952))(a1);
        if (result)
        {
          (*(*a1 + 1952))(a1);
          result = CCLogStream::shouldLog();
          if (result)
          {
            return AppleBCMWLANCore::handleScanEvent(a1);
          }
        }
      }
    }

    else
    {
      result = (*(*a1 + 1952))(a1);
      if (result)
      {
        (*(*a1 + 1952))(a1);
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANCore::handleScanEvent(a1);
        }
      }
    }
  }

  else
  {
    result = (*(*a1 + 1952))(a1);
    if (result)
    {
      (*(*a1 + 1952))(a1);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleScanEvent(a1);
      }
    }
  }

  return result;
}

_DWORD *AppleBCMWLANCore::handleCCAChanQualEvent(uint64_t *a1, uint64_t a2)
{
  v53 = 0xAAAAAAAAAAAAAAAALL;
  v54 = -1431655766;
  v51 = 0xAAAAAAAAAAAAAAAALL;
  v52 = -1431655766;
  v4 = IOMallocZeroData();
  result = IOMallocZeroData();
  if (result)
  {
    v6 = result;
    v50 = 0xAAAAAAAAAAAAAAAALL;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v48 = v7;
    v49 = v7;
    v47 = 3;
    if (v4)
    {
      v8 = *(a2 + 20);
      if (v8 <= 7)
      {
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::handleCCAChanQualEvent(a1);
          }
        }

LABEL_7:
        v9 = *(a1[9] + 5536);
        if (v9)
        {
          CCFaultReporter::reportFault(v9, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x5F62u, "handleCCAChanQualEvent", 0, -469793488, 0);
        }

        goto LABEL_24;
      }

      v10 = *(a2 + 50);
      if (v10 <= 0xFF)
      {
        if (v10 < 3)
        {
          v11 = 20;
          goto LABEL_27;
        }
      }

      else
      {
        if (*(a2 + 50) <= 0x3FFu)
        {
          if (v10 != 256)
          {
            if (v10 != 512)
            {
              goto LABEL_47;
            }

            goto LABEL_23;
          }

          v11 = 28;
LABEL_27:
          if (v8 < v11 || v8 >= 0x1D)
          {
            if ((*(*a1 + 1952))(a1))
            {
              (*(*a1 + 1952))(a1);
              if (CCLogStream::shouldLog())
              {
                v20 = (*(*a1 + 1952))(a1);
                CCLogStream::logAlert(v20, "[dk] %s@%d:handleCCAChanQualEvent: Invalid wle message length=%u, expected_min=%u expected_max=%u\n", "handleCCAChanQualEvent", 24242, *(a2 + 20), v11, 28);
              }
            }

            goto LABEL_7;
          }

          memcpy(result, (a2 + 48), v11);
          v48 = 0u;
          v49 = 0u;
          v50 = 0;
          BYTE4(v48) = 1;
          LODWORD(v48) = 16;
          AppleChannelSpec = AppleBCMWLANChanSpec::getAppleChannelSpec(*(a1[9] + 17744), *(v6 + 2));
          ChanSpecConvToApple80211Channel();
          *(&v48 + 1) = v53;
          LODWORD(v49) = v54;
          v13 = *(a1[9] + 5432);
          IO80211BssManager::getCurrentBand();
          v14 = *(v6 + 1);
          if (v14 > 1)
          {
            if (v14 == 2)
            {
              v37 = v6[2];
              IO80211Controller::setChanNoiseFloorLTE();
              goto LABEL_24;
            }

            if (v14 != 256)
            {
LABEL_24:
              IOFreeData();
              return IOFreeData();
            }

            v22 = v6 + 3;
            v21 = v6[3];
            v23 = v6[4];
            v24 = __CFADD__(v21, v23);
            v25 = v21 + v23;
            v26 = v24;
            v28 = v6 + 5;
            v27 = v6[5];
            v29 = v25 + v27;
            v30 = __CFADD__(v25, v27);
            v31 = v6[2];
            v46[0] = v31;
            v46[1] = v29;
            v46[2] = v6[6];
            if (!v31)
            {
              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleCCAChanQualEvent(a1);
                }
              }

              goto LABEL_24;
            }

            v45 = v6 + 4;
            if ((v26 & 1) != 0 || v30 || ((100 * v29) & 0xFFFFFFFF00000000) != 0)
            {
              AppleBCMWLANCore::handleCCAChanQualEvent(a1, (v6 + 3), v45, v6 + 5);
              goto LABEL_24;
            }

            AppleBCMWLANChanSpec::convToAscii(AppleChannelSpec, v4, 0x20u);
            io80211_os_log();
            v40 = *v45;
            v41 = *v28;
            v38 = *v22;
            io80211_os_log();
            if (v31 > 0x2710 || v31 < v29)
            {
              goto LABEL_24;
            }

            if (((100 * *v28) & 0xFFFFFFFF00000000) != 0 || ((100 * *v45) & 0xFFFFFFFF00000000) != 0 || ((100 * *v22) & 0xFFFFFFFF00000000) != 0)
            {
              AppleBCMWLANCore::handleCCAChanQualEvent(a1, (v6 + 3), v45, v6 + 5);
              goto LABEL_24;
            }

            IO80211Controller::setChanExtendedCCA();
            v32 = *(a1[9] + 5432);
            if (IO80211BssManager::getCurrentChannel() || HIDWORD(v51) != ChanSpecGetPrimaryChannel() || v47 != AppleChannelSpec >> 14)
            {
              goto LABEL_24;
            }

            v33 = *(a1[9] + 5608);
            v34 = v46;
          }

          else
          {
            if (*(v6 + 1))
            {
              if (v14 != 1)
              {
                goto LABEL_24;
              }

              if (IO80211Controller::isLQMOSLOGEnabled(a1))
              {
                AppleBCMWLANChanSpec::convToAscii(AppleChannelSpec, v4, 0x20u);
                v39 = v6[2];
                io80211_os_log();
              }

              if (IO80211Controller::isLQMIOLOGEnabled(a1))
              {
                v15 = AppleBCMWLANChanSpec::convToAscii(AppleChannelSpec, v4, 0x20u);
                IOLog("LQM-WIFI: %s Noise %d\n", v15, v6[2]);
              }

              if (IO80211Controller::isLQMCCLOGEnabled(a1))
              {
                v16 = AppleBCMWLANChanSpec::convToAscii(AppleChannelSpec, v4, 0x20u);
                IO80211Controller::logLQMToCC(a1, "LQM-WIFI: %s Noise %d\n", v16, v6[2]);
              }

              v17 = v6[2];
              IO80211Controller::setChanNoiseFloor();
              v18 = *(a1[9] + 5432);
              if (IO80211BssManager::getCurrentChannel())
              {
                goto LABEL_24;
              }

              if (HIDWORD(v51) != ChanSpecGetPrimaryChannel())
              {
                goto LABEL_24;
              }

              if (v47 != AppleChannelSpec >> 14)
              {
                goto LABEL_24;
              }

              v19 = *(a1[9] + 11288);
              if (!v19 || ((*(*v19 + 792))(v19, v53, v54, v6[2]) & 1) != 0)
              {
                goto LABEL_24;
              }

              AppleBCMWLANCore::handleCCAChanQualEvent(a1);
              goto LABEL_7;
            }

            if (!v6[2])
            {
              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleCCAChanQualEvent(a1);
                }
              }

              goto LABEL_24;
            }

            if (((100 * v6[3]) & 0xFFFFFFFF00000000) != 0)
            {
              AppleBCMWLANCore::handleCCAChanQualEvent(a1);
              goto LABEL_24;
            }

            AppleBCMWLANChanSpec::convToAscii(AppleChannelSpec, v4, 0x20u);
            v43 = v6[3];
            v44 = v6[4];
            v42 = v6[2];
            io80211_os_log();
            v35 = v6[2];
            if (v35 > 0x2710)
            {
              goto LABEL_24;
            }

            if (v35 < v6[3])
            {
              goto LABEL_24;
            }

            IO80211Controller::setChanCCA();
            v36 = *(a1[9] + 5432);
            if (IO80211BssManager::getCurrentChannel() || HIDWORD(v51) != ChanSpecGetPrimaryChannel() || v47 != AppleChannelSpec >> 14)
            {
              goto LABEL_24;
            }

            v33 = *(a1[9] + 5608);
            v34 = v6 + 2;
          }

          AppleBCMWLANLQM::updateCCA(v33, v34);
          goto LABEL_24;
        }

        if (v10 == 1024 || v10 == 1280)
        {
LABEL_23:
          AppleBCMWLANCore::handleCCAOnlyChanQualEvent(a1, a2);
          goto LABEL_24;
        }
      }

LABEL_47:
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handleCCAChanQualEvent(a1);
        }
      }

      goto LABEL_7;
    }

    return IOFreeData();
  }

  else if (v4)
  {
    return IOFreeData();
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleTxStatusErrEvent(uint64_t *a1, uint64_t a2)
{
  v3 = *(a1[9] + 5504);
  if (v3)
  {
    v4 = (*(a2 + 8) & 1) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    AppleBCMWLANIOReportingCore::incrementBackoffStuckDetected(v3);
  }

  result = (*(*a1 + 1952))(a1);
  if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::handleTxStatusErrEvent(a1);
    }
  }

  return result;
}

AppleBCMWLANCore ***AppleBCMWLANCore::handleWeightAvgLQMEvent(uint64_t *a1, uint64_t a2)
{
  memset(v29, 170, sizeof(v29));
  if ((IO80211BssManager::isAssociated(*(a1[9] + 5432)) & 1) == 0)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleWeightAvgLQMEvent(a1);
      }
    }
  }

  v4 = a2 + 20;
  v5 = *(a2 + 20);
  if (v5 <= 3)
  {
    return AppleBCMWLANCore::handleWeightAvgLQMEvent(a1);
  }

  if (((a2 + 48) & 3) != 0)
  {
    return AppleBCMWLANCore::handleWeightAvgLQMEvent(a1);
  }

  v6 = a2 + 50;
  v7 = *(a2 + 50);
  v8 = v7 - 4;
  if (v7 <= 4)
  {
    return AppleBCMWLANCore::handleWeightAvgLQMEvent(a1);
  }

  if (v5 < v7)
  {
    return AppleBCMWLANCore::handleWeightAvgLQMEvent(a1);
  }

  if (*(a2 + 48))
  {
    result = (*(*a1 + 1952))(a1, v6, v4);
    if (result)
    {
      (*(*a1 + 1952))(a1);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleWeightAvgLQMEvent(a1);
      }
    }
  }

  else
  {
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v44 = v10;
    v45 = v10;
    v42 = v10;
    v43 = v10;
    v40 = v10;
    v41 = v10;
    v38 = v10;
    v39 = v10;
    v36 = v10;
    v37 = v10;
    v34 = v10;
    v35 = v10;
    v32 = v10;
    v33 = v10;
    *__str = v10;
    v31 = v10;
    if (v8 < 5)
    {
LABEL_26:
      v26 = a1[9];
      if (v26[679])
      {
        IO80211BssManager::updateWeightAvgLQM();
        v26 = a1[9];
        v27 = v26[1411];
        if (v27)
        {
          IO80211Controller::postMessage(a1, v27, 0x91u, v29, 0x10uLL, 1);
          v26 = a1[9];
        }
      }

      result = v26[691];
      if (result)
      {
        return AppleBCMWLANTxPowerManager::configureDynSARPwrBoostPerRSSI(result, v29[0]);
      }
    }

    else
    {
      v11 = a2 + 52;
      while (1)
      {
        if ((v11 & 3) != 0)
        {
          return AppleBCMWLANCore::handleWeightAvgLQMEvent(a1);
        }

        v12 = *(v11 + 2);
        if (v8 < v12 + 4)
        {
          break;
        }

        if (*v11)
        {
          result = (*(*a1 + 1952))(a1, v6, v4);
          if (result)
          {
            (*(*a1 + 1952))(a1);
            result = CCLogStream::shouldLog();
            if (result)
            {
              return AppleBCMWLANCore::handleWeightAvgLQMEvent(a1);
            }
          }

          return result;
        }

        if (v12 != 16)
        {
          result = (*(*a1 + 1952))(a1, v6, v4);
          if (result)
          {
            (*(*a1 + 1952))(a1);
            result = CCLogStream::shouldLog();
            if (result)
            {
              return AppleBCMWLANCore::handleWeightAvgLQMEvent(a1);
            }
          }

          return result;
        }

        *v29 = *(v11 + 4);
        snprintf(__str, 0x100uLL, "WeightAvgLQM rssi=%d snr=%d txRate=%u rxRate=%u\n", v29[0], v29[1], v29[2], v29[3]);
        v13 = a1[9];
        if ((*(v13 + 964) - 1) > 1)
        {
          v14 = (v13 + 31437);
          v15 = v43;
          v14[12] = v42;
          v14[13] = v15;
          v16 = v45;
          v14[14] = v44;
          v14[15] = v16;
          v17 = v39;
          v14[8] = v38;
          v14[9] = v17;
          v18 = v41;
          v14[10] = v40;
          v14[11] = v18;
          v19 = v35;
          v14[4] = v34;
          v14[5] = v19;
          v20 = v37;
          v14[6] = v36;
          v14[7] = v20;
          v21 = v31;
          *v14 = *__str;
          v14[1] = v21;
          v22 = v33;
          v14[2] = v32;
          v14[3] = v22;
        }

        else
        {
          io80211_os_log();
        }

        v23 = *(v11 + 2);
        v24 = v23 + 4;
        v11 += v23 + 4;
        v25 = v8 - (v23 + 4);
        if (v8 >= v24)
        {
          v8 = v25;
        }

        else
        {
          v8 = 0;
        }

        if (v8 <= 4)
        {
          goto LABEL_26;
        }
      }

      result = (*(*a1 + 1952))(a1, v6, v4);
      if (result)
      {
        (*(*a1 + 1952))(a1);
        result = CCLogStream::shouldLog();
        if (result)
        {
          v28 = (*(*a1 + 1952))(a1);
          return CCLogStream::logAlert(v28, "[dk] %s@%d:Error: remaining_len = %u, sub_event->len = %d\n", "handleWeightAvgLQMEvent", 23256, v8, *(v11 + 2));
        }
      }
    }
  }

  return result;
}

void AppleBCMWLANCore::handleDynSAREvent(uint64_t *a1, uint64_t a2)
{
  v4 = IOMallocZeroTyped();
  if (v4)
  {
    v5 = v4;
    *(v4 + 80) = 0;
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
    *v4 = 0u;
    if (((a2 + 48) & 3) != 0)
    {
      AppleBCMWLANCore::handleDynSAREvent(a1);
    }

    else if (*(a2 + 20) == 12)
    {
      if (*(a2 + 50) == 12)
      {
        if (*(a2 + 48) - 3 <= 0xFFFFFFFD)
        {
          AppleBCMWLANCore::handleDynSAREvent(a1);
        }

        else
        {
          v7 = (a2 + 57);
          v6 = *(a2 + 57);
          if (v6 < 2)
          {
            *v4 = v6;
            *(v4 + 66) = *(a2 + 56);
            v8 = *(a2 + 58);
            *(v4 + 64) = v8;
            *(v4 + 80) = *(a2 + 59);
            v9 = *(a1[9] + 5528);
            if (v9)
            {
              AppleBCMWLANTxPowerManager::updateDynSARCurState(v9, v8);
              if (!*v5 && *(v5 + 64) == 2)
              {
                *(a1[9] + 29920) = mach_continuous_time();
              }

              AppleBCMWLANTxPowerManager::processDynSAREvent(*(a1[9] + 5528), a2 + 48);
              *(v5 + 76) = AppleBCMWLANTxPowerManager::getDynSARUpdateCnt(*(a1[9] + 5528), *v7);
              *(v5 + 8) = AppleBCMWLANTxPowerManager::getDynSARDurNoOpt(*(a1[9] + 5528), *v7);
              *(v5 + 16) = AppleBCMWLANTxPowerManager::getDynSARDurPwrOpt(*(a1[9] + 5528), *v7);
              *(v5 + 24) = AppleBCMWLANTxPowerManager::getDynSARDurFailSafe(*(a1[9] + 5528), *v7);
              *(v5 + 32) = AppleBCMWLANTxPowerManager::getDynSARDurNoMute(*(a1[9] + 5528), *v7);
              *(v5 + 40) = AppleBCMWLANTxPowerManager::getDynSARDurHybrid(*(a1[9] + 5528), *v7);
              *(v5 + 48) = AppleBCMWLANTxPowerManager::getDynSARDurTxDCThrottle(*(a1[9] + 5528), *v7);
              DynSARDurPwrOptTxDCThrottle = AppleBCMWLANTxPowerManager::getDynSARDurPwrOptTxDCThrottle(*(a1[9] + 5528), *v7);
              *(v5 + 56) = DynSARDurPwrOptTxDCThrottle;
              v11 = *(v5 + 16);
              v12 = *v7;
              *(a1[9] + (v12 << 6) + 4744) = *(v5 + 8) / 0x3E8uLL;
              *(a1[9] + (v12 << 6) + 4752) = v11 / 0x3E8;
              v13 = *(v5 + 32);
              *(a1[9] + (v12 << 6) + 4760) = *(v5 + 24) / 0x3E8uLL;
              *(a1[9] + (v12 << 6) + 4768) = v13 / 0x3E8;
              v14 = *(v5 + 48);
              *(a1[9] + (v12 << 6) + 4776) = *(v5 + 40) / 0x3E8uLL;
              *(a1[9] + (v12 << 6) + 4784) = v14 / 0x3E8;
              *(a1[9] + (v12 << 6) + 4792) = DynSARDurPwrOptTxDCThrottle / 0x3E8uLL;
              ++*(a1[9] + (v12 << 6) + 4800);
              v15 = *(a1[9] + 5528);

              AppleBCMWLANTxPowerManager::handleDynSAREventToPopulateUnsharedTxDCUtil(v15, v5);
            }

            return;
          }

          AppleBCMWLANCore::handleDynSAREvent(a1);
        }
      }

      else
      {
        AppleBCMWLANCore::handleDynSAREvent(a1);
      }
    }

    else
    {
      AppleBCMWLANCore::handleDynSAREvent(a1);
    }

    IOFree(v5, 0x58uLL);
  }

  else if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::handleDynSAREvent(a1);
    }
  }
}

uint64_t AppleBCMWLANCore::handleRangingEvent(uint64_t *a1, uint64_t a2)
{
  v2 = a1;
  v3 = (a2 + 48);
  v4 = *(a2 + 20);
  v5 = v4 - 1 + a2 + 48;
  v6 = __CFADD__(v4 - 1, a2 + 48);
  if (v4)
  {
    v7 = v4 - 1 + a2 + 48;
  }

  else
  {
    v7 = 0;
  }

  if (v4 <= 0x11)
  {
    result = (*(*a1 + 1952))(a1);
    if (result)
    {
      (*(*v2 + 1952))(v2);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleRangingEvent(v2);
      }
    }

    return result;
  }

  if (v6 || a2 + 65 < v3 || v3 >= 0xFFFFFFFFFFFFFFEFLL || (a2 + 65 <= v5 ? (v9 = v5 < v3) : (v9 = 1), v9))
  {
    result = (*(*a1 + 1952))(a1);
    if (result)
    {
      (*(*v2 + 1952))(v2);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleRangingEvent(v2);
      }
    }

    return result;
  }

  if (*(a2 + 52) - 1 <= 0x10)
  {
    v11 = off_1003D0DA8[(*(a2 + 52) - 1)];
  }

  result = (*(*a1 + 1952))(a1);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = AppleBCMWLANCore::handleRangingEvent(v2);
    }
  }

  v12 = v4 - 16;
  v13 = *(a2 + 52);
  if (v13 == 5)
  {
    result = (*(*v2 + 1952))(v2);
    if (result)
    {
      (*(*v2 + 1952))(v2);
      result = CCLogStream::shouldLog();
      if (result)
      {
        result = AppleBCMWLANCore::handleRangingEvent(v2);
      }
    }

    v15 = *(a2 + 60);
    if ((v15 - 515) > 6 || ((1 << (v15 - 3)) & 0x61) == 0)
    {
LABEL_273:
      if ((~v15 & 0x206) == 0)
      {
        if (v12 > 0xB)
        {
          v108 = *(a2 + 64);
          v109 = *(a2 + 66);
          v110 = *(a2 + 68);
          v111 = *(a2 + 72);
          v112 = *(a2 + 74);
          result = (*(*v2 + 1952))(v2);
          if (result)
          {
            (*(*v2 + 1952))(v2);
            result = CCLogStream::shouldLog();
            if (result)
            {
              v113 = (*(*v2 + 1952))(v2);
              if (v110)
              {
                if (v110 == -1)
                {
                  v114 = "error";
                }

                else if ((v110 + 1056) > 0x20)
                {
                  v114 = "unknown";
                }

                else
                {
                  v114 = wl_proxd_error_to_string[v110 + 1056];
                }
              }

              else
              {
                v114 = "OK";
              }

              return CCLogStream::logAlert(v113, "[dk] %s@%d:Proxd: Burst Status - sid: %u state: %d status: %d(%s) BurstNum: %u core supported: %d core id: %d\n", "handleRangingEvent", 24144, v108, v109, v110, v114, v111, v112, v112 >> 8);
            }
          }
        }

        else
        {
          result = (*(*v2 + 1952))(v2);
          if (result)
          {
            (*(*v2 + 1952))(v2);
            result = CCLogStream::shouldLog();
            if (result)
            {
              return AppleBCMWLANCore::handleRangingEvent(v2);
            }
          }
        }
      }

      return result;
    }

    v166 = 0u;
    memset(v165, 0, sizeof(v165));
    v163 = 0u;
    v164 = 0u;
    if (v15 != 521)
    {
      if (v15 != 520)
      {
        if (v15 == 515)
        {
          if (v12 <= 0x7F)
          {
            result = (*(*v2 + 1952))(v2);
            if (result)
            {
              (*(*v2 + 1952))(v2);
              result = CCLogStream::shouldLog();
              if (result)
              {
                return AppleBCMWLANCore::handleRangingEvent(v2);
              }
            }

            return result;
          }

          v72 = *(a2 + 132);
          if ((*(*v2 + 1952))(v2))
          {
            (*(*v2 + 1952))(v2);
            if (CCLogStream::shouldLog())
            {
              v133 = (*(*v2 + 1952))(v2);
              v134 = *(a2 + 68);
              if (v134)
              {
                if (v134 == -1)
                {
                  v135 = "error";
                }

                else if ((v134 + 1056) > 0x20)
                {
                  v135 = "unknown";
                }

                else
                {
                  v135 = wl_proxd_error_to_string[v134 + 1056];
                }
              }

              else
              {
                v135 = "OK";
              }

              CCLogStream::logNotice(v133, "[dk] %s@%d: Ranging result v1: session=%d, flags=0x%x, status=%d(%s) peer=%02X:%02X:%02X:%02X:%02X:%02X, state=%d,avg_dist=%d.%04dm,  num RTT samples=%d, valid=%d, num_ftm %d, burst_num  %d\n ", "handleRangingEvent", 23672, *(a2 + 64), *(a2 + 66), v134, v135, *(a2 + 72), *(a2 + 73), *(a2 + 74), *(a2 + 75), *(a2 + 76), *(a2 + 77), *(a2 + 78), v72 >> 8, (625 * v72) >> 4, *(a2 + 142), *(a2 + 138), *(a2 + 139), *(a2 + 140));
            }
          }

          WORD4(v165[24]) = *(a2 + 66);
          v73 = 1000 * v72;
          if (v73 != v73)
          {
            return AppleBCMWLANCore::handleRangingEvent(v2);
          }

          *(&v165[24] + 3) = (v73 >> 8);
          LOWORD(v166) = *(a2 + 136);
          BYTE2(v166) = *(a2 + 138);
          *(&v164 + 10) = *(a2 + 72);
          HIWORD(v164) = *(a2 + 76);
          v12 = v4 - 100;
          if (*(a2 + 142))
          {
            v74 = 0;
            LOBYTE(v29) = 0;
            v75 = 0;
            v154 = 0;
            v148 = a2 + 148;
            v149 = -100;
            while (1)
            {
              if (v29 > 7u)
              {
                goto LABEL_252;
              }

              if (v12 <= 0x2B)
              {
                result = (*(*v2 + 1952))(v2);
                if (result)
                {
                  (*(*v2 + 1952))(v2);
                  result = CCLogStream::shouldLog();
                  if (result)
                  {
                    return AppleBCMWLANCore::handleRangingEvent(v2);
                  }
                }

                return result;
              }

              v76 = v148 + v74 + 43;
              if ((v148 + v74) >= 0xFFFFFFFFFFFFFFD5 || v76 < v3 || v76 > v7 || v3 > a2 + v74 + 148 || v7 < v148 + v74)
              {
                result = (*(*v2 + 1952))(v2);
                if (result)
                {
                  (*(*v2 + 1952))(v2);
                  result = CCLogStream::shouldLog();
                  if (result)
                  {
                    return AppleBCMWLANCore::handleRangingEvent(v2);
                  }
                }

                return result;
              }

              v145 = (a2 + v74 + 148);
              v159 = v12;
              v77 = a2 + v74;
              v78 = *(a2 + v74 + 152);
              __sizeb = *(a2 + v74 + 166);
              v79 = *(a2 + v74 + 184);
              v80 = *(a2 + v74 + 186);
              v81 = v2[9];
              if (*(v81 + 36088) == 1 && (*(v81 + 36092) || *(v81 + 36096)))
              {
                if (*(a2 + v74 + 188) == 1)
                {
                  v141 = *(a2 + v74 + 152);
                  if ((*(*v2 + 1952))(v2))
                  {
                    (*(*v2 + 1952))(v2);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANCore::handleRangingEvent(v2);
                    }
                  }

                  v81 = v2[9];
                  v82 = 36096;
                }

                else
                {
                  if (*(a2 + v74 + 188))
                  {
                    goto LABEL_220;
                  }

                  v141 = *(a2 + v74 + 152);
                  if ((*(*v2 + 1952))(v2))
                  {
                    (*(*v2 + 1952))(v2);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANCore::handleRangingEvent(v2);
                    }
                  }

                  v81 = v2[9];
                  v82 = 36092;
                }

                v78 = v141 - *(v81 + v82);
              }

LABEL_220:
              if (v80)
              {
                v83 = v79 == 0;
              }

              else
              {
                v83 = 1;
              }

              v84 = !v83;
              v85 = (v78 - 1334) < 0xFFFFF97D;
              if (*(v81 + 976) == 1 && (v78 - 1334) <= 0xFFFFF97C)
              {
                v86 = v78;
                if ((*(*v2 + 1952))(v2))
                {
                  (*(*v2 + 1952))(v2);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::handleRangingEvent(v2);
                  }
                }

                v85 = 0;
                v78 = v86;
              }

              v87 = a2 + v74;
              if (!*(a2 + v74 + 168))
              {
                v89 = *(v87 + 149);
                if (((v89 | v85 | v84) & 1) == 0)
                {
                  v90 = a2 + v74;
                  v91 = &v165[3 * v29] + 8;
                  *(v91 + 3) = *(a2 + v74 + 150);
                  v142 = v78;
                  *(v91 + 6) = v78;
                  *(v91 + 10) = v89;
                  *(v91 + 4) = *(a2 + v74 + 164);
                  *v91 = __sizeb;
                  *(v91 + 11) = 0;
                  *(v91 + 5) = *(v77 + 184);
                  v91[1] = *(v77 + 186);
                  *(v91 + 12) = *(a2 + v74 + 176);
                  v91[2] = *(a2 + v74 + 188);
                  v91[5] = *(a2 + v74 + 160);
                  v91[4] = *(a2 + v74 + 172);
                  if ((*(*v2 + 1952))(v2))
                  {
                    (*(*v2 + 1952))(v2);
                    if (CCLogStream::shouldLog())
                    {
                      v93 = (*(*v2 + 1952))(v2);
                      CCLogStream::logNotice(v93, "[dk] %s@%d:sample[%d]: id=%d rssi=%d snr=%d bitflips=%d tof_phy_error %x tof_tgt_phy_error %x tof_target_snr=%d tof_target_bitflips=%d rtt=%d status=%d coreid = %d\n", "handleRangingEvent", 23756, v75, *v145, *(v90 + 150), *(v90 + 164), *(v77 + 166), *(v90 + 176), *(v90 + 180), *(v77 + 184), *(v77 + 186), *(v77 + 152), *(v87 + 168), *(v90 + 188));
                    }
                  }

                  LOBYTE(v29) = ++BYTE3(v166);
                  v92 = v149;
                  if (v149 <= *(v90 + 150))
                  {
                    v92 = *(v90 + 150);
                  }

                  v149 = v92;
                  v154 += v142;
                  goto LABEL_248;
                }

                if ((v89 & 1) == 0)
                {
                  if (v85)
                  {
                    WORD4(v165[24]) |= 0x2000u;
                  }

                  if (v84)
                  {
                    WORD4(v165[24]) |= 0x8000u;
                  }
                }
              }

              if ((*(*v2 + 1952))(v2))
              {
                (*(*v2 + 1952))(v2);
                if (CCLogStream::shouldLog())
                {
                  v88 = (*(*v2 + 1952))(v2);
                  CCLogStream::logNotice(v88, "[dk] %s@%d:Discarding sample[%d]: id=%d rssi=%d snr=%d bitflips=%d tof_phy_error %x tof_tgt_phy_error %x tof_target_snr=%d tof_target_bitflips=%d rtt=%d status=%d coreid = %d\n", "handleRangingEvent", 23778, v75, *v145, *(a2 + v74 + 150), *(a2 + v74 + 164), *(v77 + 166), *(a2 + v74 + 176), *(a2 + v74 + 180), *(v77 + 184), *(v77 + 186), *(v77 + 152), *(v87 + 168), *(a2 + v74 + 188));
                }
              }

LABEL_248:
              v12 = v159 - 44;
              if (v75 <= 6)
              {
                ++v75;
                v74 += 44;
                if (v75 < *(a2 + 142))
                {
                  continue;
                }
              }

              goto LABEL_252;
            }
          }
        }

        goto LABEL_251;
      }

      if (v12 <= 0x5F)
      {
        result = (*(*v2 + 1952))(v2);
        if (result)
        {
          (*(*v2 + 1952))(v2);
          result = CCLogStream::shouldLog();
          if (result)
          {
            return AppleBCMWLANCore::handleRangingEvent(v2);
          }
        }

        return result;
      }

      if ((*(a2 + 70) & 0x80) != 0)
      {
        v26 = -*(a2 + 92);
      }

      else
      {
        v26 = *(a2 + 92);
      }

      if ((*(*v2 + 1952))(v2))
      {
        (*(*v2 + 1952))(v2);
        if (CCLogStream::shouldLog())
        {
          v130 = (*(*v2 + 1952))(v2);
          v131 = *(a2 + 72);
          if (v131)
          {
            if (v131 == -1)
            {
              v132 = "error";
            }

            else if ((v131 + 1056) > 0x20)
            {
              v132 = "unknown";
            }

            else
            {
              v132 = wl_proxd_error_to_string[v131 + 1056];
            }
          }

          else
          {
            v132 = "OK";
          }

          CCLogStream::logNotice(v130, "[dk] %s@%d: Ranging result V2: session=%d, flags=0x%x, status=%d(%s), peer=%02X:%02X:%02X:%02X:%02X:%02X, state=%d,avg_dist=%d.%04dm,  num RTT samples=%d, valid=%d, num_ftm %d, burst_num  %d\n ", "handleRangingEvent", 23814, *(a2 + 68), *(a2 + 70), v131, v132, *(a2 + 76), *(a2 + 77), *(a2 + 78), *(a2 + 79), *(a2 + 80), *(a2 + 81), *(a2 + 82), v26 >> 8, (625 * v26) >> 4, *(a2 + 102), *(a2 + 98), *(a2 + 99), *(a2 + 100));
        }
      }

      WORD4(v165[24]) = *(a2 + 70);
      v27 = 1000 * v26;
      if (v27 != v27)
      {
        return AppleBCMWLANCore::handleRangingEvent(v2);
      }

      *(&v165[24] + 3) = (v27 >> 8);
      LOWORD(v166) = *(a2 + 96);
      BYTE2(v166) = *(a2 + 98);
      *(&v164 + 10) = *(a2 + 76);
      HIWORD(v164) = *(a2 + 80);
      v12 = v4 - 60;
      if (*(a2 + 102))
      {
        v28 = 0;
        LOBYTE(v29) = 0;
        v154 = 0;
        v146 = a2 + 160;
        v149 = -100;
        v30 = 1;
        while (1)
        {
          if (v29 > 7u)
          {
            goto LABEL_252;
          }

          if (v12 <= 0x33)
          {
            result = (*(*v2 + 1952))(v2);
            if (result)
            {
              (*(*v2 + 1952))(v2);
              result = CCLogStream::shouldLog();
              if (result)
              {
                return AppleBCMWLANCore::handleRangingEvent(v2);
              }
            }

            return result;
          }

          v31 = v146 + v28 + 51;
          if ((v146 + v28) >= 0xFFFFFFFFFFFFFFCDLL || v31 < v3 || v31 > v7 || v3 > a2 + v28 + 160 || v7 < v146 + v28)
          {
            result = (*(*v2 + 1952))(v2);
            if (result)
            {
              (*(*v2 + 1952))(v2);
              result = CCLogStream::shouldLog();
              if (result)
              {
                return AppleBCMWLANCore::handleRangingEvent(v2);
              }
            }

            return result;
          }

          v32 = a2 + v28;
          v33 = "-";
          if (*(a2 + v28 + 165) >= 0)
          {
            v33 = "";
          }

          v143 = v33;
          if (*(a2 + v28 + 165) >= 0)
          {
            v34 = *(a2 + v28 + 168);
          }

          else
          {
            v34 = -*(a2 + v28 + 168);
          }

          __size = *(v32 + 182);
          v156 = *(v32 + 202);
          v35 = v2[9];
          if (*(v35 + 36088) == 1 && (*(v35 + 36092) || *(v35 + 36096)))
          {
            if (*(a2 + v28 + 204) == 1)
            {
              v137 = v30;
              v36 = v34;
              if ((*(*v2 + 1952))(v2))
              {
                (*(*v2 + 1952))(v2);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleRangingEvent(v2);
                }
              }

              v35 = v2[9];
              v37 = 36096;
              goto LABEL_105;
            }

            if (!*(a2 + v28 + 204))
            {
              v137 = v30;
              v36 = v34;
              if ((*(*v2 + 1952))(v2))
              {
                (*(*v2 + 1952))(v2);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleRangingEvent(v2);
                }
              }

              v35 = v2[9];
              v37 = 36092;
LABEL_105:
              v34 = v36 - *(v35 + v37);
              v30 = v137;
            }
          }

          v38 = (v34 - 1334) < 0xFFFFF97D;
          if (*(v35 + 976) == 1 && (v34 - 1334) <= 0xFFFFF97C)
          {
            v39 = v30;
            v40 = v34;
            if ((*(*v2 + 1952))(v2))
            {
              (*(*v2 + 1952))(v2);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::handleRangingEvent(v2);
              }
            }

            v38 = 0;
            v34 = v40;
            v30 = v39;
            v32 = a2 + v28;
          }

          v138 = a2 + v28;
          if (!*(a2 + v28 + 184))
          {
            v42 = v156 - 1;
            v43 = *(v32 + 165);
            if (((v43 | v38) & 1) == 0 && v42 >= 0xFFFE)
            {
              v157 = v12;
              v44 = a2 + v28;
              v45 = &v165[3 * v29] + 8;
              *(v45 + 3) = *(a2 + v28 + 166);
              v136 = v34;
              *(v45 + 6) = v34;
              *(v45 + 10) = v43;
              *(v45 + 4) = *(a2 + v28 + 180);
              *v45 = __size;
              *(v45 + 11) = 0;
              *(v45 + 5) = *(a2 + v28 + 200);
              v45[1] = *(v32 + 202);
              *(v45 + 12) = *(a2 + v28 + 192);
              v45[2] = *(a2 + v28 + 204);
              v45[5] = *(a2 + v28 + 176);
              v45[4] = *(a2 + v28 + 188);
              *(v45 + 14) = *(a2 + v28 + 208);
              if ((*(*v2 + 1952))(v2))
              {
                (*(*v2 + 1952))(v2);
                if (CCLogStream::shouldLog())
                {
                  v48 = (*(*v2 + 1952))(v2);
                  CCLogStream::logNotice(v48, "[dk] %s@%d:sample[%d]: id=%d rssi=%d snr=%d bitflips=%d tof_phy_error %x tof_tgt_phy_error %x tof_target_snr=%d tof_target_bitflips=%d rtt=%s%d status=%d coreid = %d flags=%d channel = %d\n", "handleRangingEvent", 23907, v30, *(a2 + v28 + 164), *(v44 + 166), *(v44 + 180), *(v32 + 182), *(v44 + 192), *(v44 + 196), *(v44 + 200), *(v32 + 202), v143, *(v32 + 168), *(v138 + 184), *(v44 + 204), *(v32 + 165), *(v44 + 208));
                }
              }

              LOBYTE(v29) = ++BYTE3(v166);
              v46 = v149;
              if (v149 <= *(v44 + 166))
              {
                v46 = *(v44 + 166);
              }

              v149 = v46;
              v154 += v136;
              v12 = v157;
              goto LABEL_124;
            }

            if ((v43 & 1) == 0)
            {
              if (v38)
              {
                WORD4(v165[24]) |= 0x2000u;
              }

              if (v42 <= 0xFFFD)
              {
                WORD4(v165[24]) |= 0x8000u;
              }
            }
          }

          if ((*(*v2 + 1952))(v2))
          {
            (*(*v2 + 1952))(v2);
            if (CCLogStream::shouldLog())
            {
              v41 = (*(*v2 + 1952))(v2);
              CCLogStream::logNotice(v41, "[dk] %s@%d:Discarding sample[%d]: id=%d rssi=%d snr=%d bitflips=%d tof_phy_error %x tof_tgt_phy_error %x tof_target_snr=%d tof_target_bitflips=%d rtt=%s%d status=%d coreid = %d flags=%d channel = %d\n", "handleRangingEvent", 23933, v30, *(a2 + v28 + 164), *(a2 + v28 + 166), *(a2 + v28 + 180), *(v32 + 182), *(a2 + v28 + 192), *(a2 + v28 + 196), *(a2 + v28 + 200), *(v32 + 202), v143, *(v32 + 168), *(v138 + 184), *(a2 + v28 + 204), *(v32 + 165), *(a2 + v28 + 208));
            }
          }

LABEL_124:
          v12 -= 52;
          if (v30 <= 6)
          {
            v28 += 52;
            v47 = v30++ >= *(a2 + 102);
            if (!v47)
            {
              continue;
            }
          }

          goto LABEL_252;
        }
      }

LABEL_251:
      LOBYTE(v29) = 0;
      v154 = 0;
      v149 = -100;
LABEL_252:
      v94 = v2[9];
      if (*(v94 + 31081) == 1)
      {
        v160 = v12;
        *&v95 = 0xAAAAAAAAAAAAAAAALL;
        *(&v95 + 1) = 0xAAAAAAAAAAAAAAAALL;
        __src[22] = v95;
        __src[23] = v95;
        __src[20] = v95;
        __src[21] = v95;
        __src[18] = v95;
        __src[19] = v95;
        v96 = v29;
        v97 = v149 - 10;
        __src[16] = v95;
        __src[17] = v95;
        v98 = v96;
        __src[14] = v95;
        __src[15] = v95;
        __src[12] = v95;
        __src[13] = v95;
        __src[10] = v95;
        __src[11] = v95;
        __src[8] = v95;
        __src[9] = v95;
        __src[6] = v95;
        __src[7] = v95;
        __src[4] = v95;
        __src[5] = v95;
        __src[2] = v95;
        __src[3] = v95;
        __src[0] = v95;
        __src[1] = v95;
        __sizec = v96;
        v155 = v154 / v96;
        if ((*(*v2 + 1952))(v2))
        {
          (*(*v2 + 1952))(v2);
          if (CCLogStream::shouldLog())
          {
            v129 = (*(*v2 + 1952))(v2);
            CCLogStream::logAlert(v129, "[dk] %s@%d:Checking RSSI of ranging samples, count=%d, rssiPassThreshold=%d avgRtt=%d\n", "handleRangingEvent", 24099, v98, v97, v155);
          }
        }

        if (__sizec)
        {
          v99 = 0;
          v100 = 0;
          v101 = 0;
          do
          {
            v102 = &v163 + v99 * 16;
            v103 = SHIWORD(v165[v99]);
            if (v97 >= v103 && (v104 = *(v102 + 16), v104 >= v155))
            {
              if ((*(*v2 + 1952))(v2))
              {
                (*(*v2 + 1952))(v2);
                if (CCLogStream::shouldLog())
                {
                  v107 = (*(*v2 + 1952))(v2);
                  CCLogStream::logNotice(v107, "[dk] %s@%d:Discarding sample[%d]: rssi=%d snr=%d bitflips=%d tof_phy_error=%x tof_tgt_phy_error=%x tof_target_snr=%d tof_target_bitflips=%d rtt=%d status=%d coreid=%d flags=%d channel=%d\n", "handleRangingEvent", 24121, v100, v103, LOWORD(v165[v99 + 1]), v102[40], DWORD1(v165[v99 + 1]), DWORD2(v165[v99 + 1]), WORD1(v165[v99 + 1]), BYTE9(v165[v99]), v104, HIWORD(v165[v99 + 1]), BYTE10(v165[v99]), WORD6(v165[v99 + 1]), WORD2(v165[v99 + 2]));
                }
              }
            }

            else
            {
              v105 = &__src[3 * v101];
              v106 = *(v102 + 56);
              *v105 = *(v102 + 40);
              v105[1] = v106;
              v105[2] = *(v102 + 72);
              ++v101;
            }

            ++v100;
            v99 += 3;
          }

          while (3 * __sizec != v99);
        }

        else
        {
          v101 = 0;
        }

        if (__sizec != v101)
        {
          WORD4(v165[24]) |= 0x4000u;
          BYTE2(v166) = v101;
          BYTE3(v166) = v101;
          memcpy(v165 + 8, __src, 0x180uLL);
          if ((*(*v2 + 1952))(v2))
          {
            (*(*v2 + 1952))(v2);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::handleRangingEvent(v2);
            }
          }
        }

        v94 = v2[9];
        v12 = v160;
      }

      result = IO80211Controller::postMessage(v2, *(v94 + 11296), 0x55u, &v163, 0x1C0uLL, 1);
      v15 = *(a2 + 60);
      goto LABEL_273;
    }

    if (v12 <= 0x2B)
    {
      result = (*(*v2 + 1952))(v2);
      if (result)
      {
        (*(*v2 + 1952))(v2);
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANCore::handleRangingEvent(v2);
        }
      }

      return result;
    }

    v49 = *(a2 + 92);
    if ((*(*v2 + 1952))(v2))
    {
      (*(*v2 + 1952))(v2);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleRangingEvent(v2, v2 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a2, v49);
      }
    }

    WORD4(v165[24]) = *(a2 + 70);
    v50 = 1000 * v49;
    if (v50 != v50)
    {
      return AppleBCMWLANCore::handleRangingEvent(v2);
    }

    *(&v165[24] + 3) = (v50 >> 8);
    LOWORD(v166) = *(a2 + 96);
    BYTE2(v166) = *(a2 + 98);
    *(&v164 + 10) = *(a2 + 76);
    HIWORD(v164) = *(a2 + 80);
    v12 = v4 - 60;
    if (!*(a2 + 102))
    {
      goto LABEL_251;
    }

    v51 = 0;
    v29 = 0;
    v154 = 0;
    v144 = a2 + 164;
    v149 = -100;
    v52 = 1;
    while (1)
    {
      if (v29 > 7u)
      {
        goto LABEL_252;
      }

      if (v12 <= 0x37)
      {
        result = (*(*v2 + 1952))(v2);
        if (result)
        {
          (*(*v2 + 1952))(v2);
          result = CCLogStream::shouldLog();
          if (result)
          {
            return AppleBCMWLANCore::handleRangingEvent(v2);
          }
        }

        return result;
      }

      v53 = v144 + v51 + 55;
      if ((v144 + v51) >= 0xFFFFFFFFFFFFFFC9 || v53 < v3 || v53 > v7 || v3 > a2 + v51 + 164 || v7 < v144 + v51)
      {
        result = (*(*v2 + 1952))(v2);
        if (result)
        {
          (*(*v2 + 1952))(v2);
          result = CCLogStream::shouldLog();
          if (result)
          {
            return AppleBCMWLANCore::handleRangingEvent(v2);
          }
        }

        return result;
      }

      __sizea = v29;
      v158 = v12;
      v54 = a2 + v51;
      v55 = *(a2 + v51 + 172);
      v147 = *(a2 + v51 + 186);
      v56 = *(a2 + v51 + 204);
      v57 = *(a2 + v51 + 206);
      v58 = v2[9];
      if (*(v58 + 36088) == 1 && (*(v58 + 36092) || *(v58 + 36096)))
      {
        if (*(a2 + v51 + 208) == 1)
        {
          v139 = *(a2 + v51 + 172);
          if ((*(*v2 + 1952))(v2))
          {
            (*(*v2 + 1952))(v2);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::handleRangingEvent(v2);
            }
          }

          v58 = v2[9];
          v59 = 36096;
        }

        else
        {
          if (*(a2 + v51 + 208))
          {
            goto LABEL_160;
          }

          v139 = *(a2 + v51 + 172);
          if ((*(*v2 + 1952))(v2))
          {
            (*(*v2 + 1952))(v2);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::handleRangingEvent(v2);
            }
          }

          v58 = v2[9];
          v59 = 36092;
        }

        v55 = v139 - *(v58 + v59);
      }

LABEL_160:
      v61 = v57 != -1 && v56 != 0xFFFF;
      v62 = (v55 - 1334) < 0xFFFFF97D;
      if (*(v58 + 976) == 1 && (v55 - 1334) <= 0xFFFFF97C)
      {
        v63 = v55;
        if ((*(*v2 + 1952))(v2))
        {
          (*(*v2 + 1952))(v2);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::handleRangingEvent(v2);
          }
        }

        v62 = 0;
        v55 = v63;
      }

      v64 = a2 + v51;
      if (!*(a2 + v51 + 188))
      {
        v67 = *(v64 + 169);
        if (((v67 | v62 | v61) & 1) == 0)
        {
          v68 = a2 + v51;
          v69 = &v165[3 * __sizea] + 8;
          *(v69 + 3) = *(a2 + v51 + 170);
          v140 = v55;
          *(v69 + 6) = v55;
          *(v69 + 10) = v67;
          *(v69 + 4) = *(a2 + v51 + 184);
          *v69 = v147;
          *(v69 + 11) = 0;
          *(v69 + 5) = *(v54 + 204);
          v69[1] = *(v54 + 206);
          *(v69 + 12) = *(a2 + v51 + 196);
          v69[2] = *(a2 + v51 + 208);
          v69[5] = *(a2 + v51 + 180);
          v69[4] = *(a2 + v51 + 192);
          *(v69 + 14) = *(a2 + v51 + 212);
          *(v69 + 10) = *(a2 + v51 + 216);
          if ((*(*v2 + 1952))(v2))
          {
            (*(*v2 + 1952))(v2);
            if (CCLogStream::shouldLog())
            {
              v71 = (*(*v2 + 1952))(v2);
              CCLogStream::logNotice(v71, "[dk] %s@%d:sample[%d]: id=%d rssi=%d snr=%d bitflips=%d tof_phy_error %x tof_tgt_phy_error %x tof_target_snr=%d tof_target_bitflips=%d rtt=%d status=%d coreid = %d flags=%d channel = %d gd_var=%d\n", "handleRangingEvent", 24049, v52, *(a2 + v51 + 168), *(v68 + 170), *(v68 + 184), *(v54 + 186), *(v68 + 196), *(v68 + 200), *(v54 + 204), *(v54 + 206), *(v54 + 172), *(v64 + 188), *(v68 + 208), *(v64 + 169), *(v68 + 212), *(v68 + 216));
            }
          }

          v29 = BYTE3(v166) + 1;
          ++BYTE3(v166);
          v70 = v149;
          if (v149 <= *(v68 + 170))
          {
            v70 = *(v68 + 170);
          }

          v149 = v70;
          v154 += v140;
          v65 = v158;
          goto LABEL_184;
        }

        if ((v67 & 1) == 0)
        {
          if (v62)
          {
            WORD4(v165[24]) |= 0x2000u;
          }

          if (v61)
          {
            WORD4(v165[24]) |= 0x8000u;
          }
        }
      }

      if ((*(*v2 + 1952))(v2))
      {
        (*(*v2 + 1952))(v2);
        v65 = v158;
        if (CCLogStream::shouldLog())
        {
          v66 = (*(*v2 + 1952))(v2);
          CCLogStream::logNotice(v66, "[dk] %s@%d:Discarding sample[%d]: id=%d rssi=%d snr=%d bitflips=%d tof_phy_error %x tof_tgt_phy_error %x tof_target_snr=%d tof_target_bitflips=%d rtt=%d status=%d coreid = %d flags=%d channel = %d gd_var=%d\n", "handleRangingEvent", 24076, v52, *(a2 + v51 + 168), *(a2 + v51 + 170), *(a2 + v51 + 184), *(v54 + 186), *(a2 + v51 + 196), *(a2 + v51 + 200), *(v54 + 204), *(v54 + 206), *(v54 + 172), *(v64 + 188), *(a2 + v51 + 208), *(a2 + v51 + 169), *(a2 + v51 + 212), *(a2 + v51 + 216));
        }
      }

      else
      {
        v65 = v158;
      }

      v29 = __sizea;
LABEL_184:
      v12 = v65 - 56;
      if (v52 <= 6)
      {
        v51 += 56;
        v47 = v52++ >= *(a2 + 102);
        if (!v47)
        {
          continue;
        }
      }

      goto LABEL_252;
    }
  }

  if (v13 == 6)
  {
    if (*(a2 + 60) == 518)
    {
      if (v12 <= 0xB)
      {
        result = (*(*v2 + 1952))(v2);
        if (result)
        {
          (*(*v2 + 1952))(v2);
          result = CCLogStream::shouldLog();
          if (result)
          {
            return AppleBCMWLANCore::handleRangingEvent(v2);
          }
        }

        return result;
      }

      v16 = *(a2 + 64);
      v17 = *(a2 + 66);
      v18 = *(a2 + 68);
      v19 = *(a2 + 72);
      v20 = *(a2 + 74);
      if ((*(*v2 + 1952))(v2))
      {
        (*(*v2 + 1952))(v2);
        if (CCLogStream::shouldLog())
        {
          v127 = (*(*v2 + 1952))(v2);
          if (v18)
          {
            if (v18 == -1)
            {
              v128 = "error";
            }

            else if ((v18 + 1056) > 0x20)
            {
              v128 = "unknown";
            }

            else
            {
              v128 = wl_proxd_error_to_string[v18 + 1056];
            }
          }

          else
          {
            v128 = "OK";
          }

          CCLogStream::logAlert(v127, "[dk] %s@%d:Proxd: Session Status - sid: %u state: %d status: %d(%s) BurstNum: %u core supported: %d core id: %d\n", "handleRangingEvent", 24158, v16, v17, v18, v128, v19, v20, v20 >> 8);
        }
      }

      if (v18 == -1033)
      {
        v21 = v2[9];
        if ((*(v21 + 10376) & 0x80) == 0)
        {
          CCFaultReporter::reportFault(*(v21 + 5536), 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x5E61u, "handleRangingEvent", 0, -469794531, "Ranging Protocol Error");
        }
      }
    }

    result = IO80211Controller::postMessage(v2, *(v2[9] + 11296), 0x55u, 0, 0, 1);
    atomic_fetch_and((v2[9] + 10376), 0xFFFBFFFF);
    return result;
  }

  if (v13 != 17)
  {
    return result;
  }

  v14 = *v3;
  if (v14 == 3 && v12 > 0x4AC || v14 == 4 && v12 >= 0x4D1)
  {
    result = (*(*v2 + 1952))(v2);
    if (result)
    {
      (*(*v2 + 1952))(v2);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleRangingEvent(v2);
      }
    }
  }

  else
  {
    v22 = v2[9];
    if ((*(v22 + 18194) & 1) != 0 || *(v22 + 31080) == 1)
    {
      v23 = (*(a2 + 20) + 48) & 0xFFFFFFE0;
      result = IOMallocZeroData();
      v24 = result;
      if (result)
      {
        strcpy(result, "Proxd Dump:\n");
        v25 = 12;
      }

      else
      {
        v25 = 0;
      }

      if (v23)
      {
        v115 = (a2 + 15);
        v116 = 31;
        v161 = v2;
        do
        {
          v117 = 0;
          if (!v24 || v25 > 0xC7E || (v118 = 3200, v117 = snprintf(&v24[v25], 3200 - v25, "proxd %05d: ", v116 - 31), v117 <= 0xC7F))
          {
            v118 = v117;
          }

          result = 0;
          v119 = v118 + v25;
          if (!v24 || v119 > 0xC7E || (result = snprintf(&v24[v119], 3200 - v119, "%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x\n", *(v115 - 15), *(v115 - 14), *(v115 - 13), *(v115 - 12), *(v115 - 11), *(v115 - 10), *(v115 - 9), *(v115 - 8), *(v115 - 7), *(v115 - 6), *(v115 - 5), *(v115 - 4), *(v115 - 3), *(v115 - 2), *(v115 - 1), *v115, v115[1], v115[2], v115[3], v115[4], v115[5], v115[6], v115[7], v115[8], v115[9], v115[10], v115[11], v115[12], v115[13], v115[14], v115[15], v115[16]), v120 = 3200, result <= 0xC7F))
          {
            v120 = result;
          }

          v25 = v120 + v119;
          v121 = v116 + 1;
          v116 += 32;
          v115 += 32;
          v2 = v161;
        }

        while (v121 < v23);
        v122 = v23;
      }

      else
      {
        v122 = 0;
      }

      if (*(a2 + 20) + 48 > v122)
      {
        result = 0;
        if (!v24 || v25 > 0xC7E || (v123 = 3200, result = snprintf(&v24[v25], 3200 - v25, "proxd %05d: ", v23), result <= 0xC7F))
        {
          v123 = result;
        }

        v25 += v123;
        if (*(a2 + 20) + 48 > v122)
        {
          v124 = v23 + 1;
          do
          {
            result = 0;
            if (!v24 || v25 > 0xC7E || (v125 = 3200, result = snprintf(&v24[v25], 3200 - v25, "%02x", *(a2 + v122)), result <= 0xC7F))
            {
              v125 = result;
            }

            v25 += v125;
            v122 = v124;
            v9 = *(a2 + 20) + 48 > v124++;
          }

          while (v9);
        }
      }

      if (v24 && v25 <= 0xC7E)
      {
        snprintf(&v24[v25], 3200 - v25, "\n");
      }

      else if (!v24)
      {
        return result;
      }

      if (*(v2[9] + 14248) && CCLogStream::shouldLog())
      {
        v126 = *(v2[9] + 14248);
        CCLogStream::log();
      }

      *v24 = 0;

      return IOFreeData();
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleAuthEvent(AppleBCMWLANCore *a1, uint64_t a2)
{
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  AppleBCMWLANCore::processAuthEvenData(a1, a2);
  v9[0] = mapBcmStatusToApple80211IOReturnScan(*(a2 + 8));
  v9[1] = mapBcmStatusToApple80211IOReturnIEEEStatus(*(a2 + 12));
  v4 = *(a1 + 9);
  v5 = *(v4 + 11288);
  if (v5)
  {
    IO80211Controller::postMessage(a1, v5, 0x4Au, v9, 0x68uLL, 1);
    v4 = *(a1 + 9);
  }

  v6 = *(v4 + 29944);
  if (v6)
  {
    IO80211Controller::postMessage(a1, v6, 0x4Au, v9, 0x68uLL, 1);
  }

  AppleBCMWLANCore::handleExtendedEventData(a1, a2);
  result = AppleBCMWLANJoinAdapter::handleAuth(*(*(a1 + 9) + 5416), a2);
  v8 = *(a1 + 9);
  if (*(v8 + 12152))
  {
    *(v8 + 14108) |= 1u;
    *(*(a1 + 9) + 14112) = mapBcmStatusToApple80211IOReturnScan(*(a2 + 8));
    result = mapBcmStatusToApple80211IOReturnIEEEStatus(*(a2 + 12));
    *(*(a1 + 9) + 14116) = result;
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleAssocEvent(IO80211Controller *a1, uint64_t a2)
{
  v8[0] = mapBcmStatusToApple80211IOReturnScan(*(a2 + 8));
  v8[1] = mapBcmStatusToApple80211IOReturnIEEEStatus(*(a2 + 12));
  v4 = *(a1 + 9);
  v5 = *(v4 + 11288);
  if (v5)
  {
    IO80211Controller::postMessage(a1, v5, 0x4Eu, v8, 8uLL, 1);
    v4 = *(a1 + 9);
  }

  v6 = *(v4 + 29944);
  if (v6)
  {
    IO80211Controller::postMessage(a1, v6, 0x4Eu, v8, 8uLL, 1);
  }

  AppleBCMWLANCore::handleExtendedEventData(a1, a2);
  return AppleBCMWLANJoinAdapter::handleAssoc(*(*(a1 + 9) + 5416), a2);
}

uint64_t AppleBCMWLANCore::handleSetSSIDEvent(IO80211Controller *a1, uint64_t a2)
{
  v8[0] = mapBcmStatusToApple80211IOReturnScan(*(a2 + 8));
  v8[1] = mapBcmReasonToApple80211IOReturnIEEEReason(*(a2 + 12));
  v4 = *(*(a1 + 9) + 11288);
  if (v4)
  {
    IO80211Controller::postMessage(a1, v4, 2u, v8, 8uLL, 1);
  }

  AppleBCMWLANCore::handleExtendedEventData(a1, a2);
  v5 = *(a1 + 9);
  v6 = *(v5 + 11296);
  if (v6)
  {
    IO80211Controller::postMessage(a1, v6, 2u, v8, 8uLL, 1);
    v5 = *(a1 + 9);
  }

  AppleBCMWLANJoinAdapter::handleSetSSID(*(v5 + 5416), a2);
  return AppleBCMWLANCore::collectDtimConfigFromFW(a1);
}

uint64_t AppleBCMWLANCore::handleLinkEvent(uint64_t *a1, uint64_t a2)
{
  v3 = a1[9];
  if (*(v3 + 780) < 5u || (*(a2 + 46) | 2) == 2)
  {
    AppleBCMWLANNetAdapter::handleLink(*(v3 + 5600), a2);
    if (AppleBCMWLANBGScanAdapter::generateAndApplyNewPrivateMACForScans(*(a1[9] + 5496)) && (*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleLinkEvent(a1);
      }
    }

    v4 = *(a1[9] + 5432);
    return IO80211BssManager::getCurrentChannel();
  }

  else
  {
    result = (*(*a1 + 1952))(a1);
    if (result)
    {
      (*(*a1 + 1952))(a1);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleLinkEvent(a1);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleReassocEvent(uint64_t result, uint64_t a2)
{
  if (*(a2 + 8) != 6)
  {
    v3 = result;
    AppleBCMWLANJoinAdapter::enableSupplicantEvents(*(*(result + 72) + 5416));
    v6[0] = mapBcmStatusToApple80211IOReturnScan(*(a2 + 8));
    v6[1] = mapBcmReasonToApple80211IOReturnIEEEReason(*(a2 + 12));
    v4 = *(*(v3 + 9) + 11288);
    if (v4)
    {
      IO80211Controller::postMessage(v3, v4, 0x49u, v6, 8uLL, 1);
    }

    AppleBCMWLANCore::handleExtendedEventData(v3, a2);
    result = AppleBCMWLANCore::collectWmeParameters(v3);
    atomic_fetch_or((*(v3 + 9) + 10376), 0x20000u);
    v5 = *(v3 + 9);
    if (*(v5 + 12152))
    {
      *(v5 + 14108) |= 2u;
      *(*(v3 + 9) + 14120) = mapBcmStatusToApple80211IOReturnScan(*(a2 + 8));
      result = mapBcmStatusToApple80211IOReturnIEEEStatus(*(a2 + 12));
      *(*(v3 + 9) + 14124) = result;
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleRoamScanStartEvent(uint64_t *a1, uint64_t a2)
{
  v34 = 0;
  AppleBCMWLANCore::setBeaconListenInterval(a1);
  *(a1[9] + 6575) = 1;
  v4 = mapBcmStatusToApple80211IOReturnScan(*(a2 + 8));
  v33[0] = v4;
  v5 = mapBcmReasonToApple80211IOReturnRoam(*(a2 + 12));
  v33[1] = v5;
  v6 = (*(**(a1[9] + 5392) + 368))();
  if ((v6 - 4377) > 0x16 || ((1 << (v6 - 25)) & 0x400C03) == 0)
  {
    if (!(*(*a1 + 1952))(a1) || ((*(*a1 + 1952))(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(a2 + 8);
        v25 = *(a2 + 12);
        *buf = 67110658;
        v36 = 73;
        v37 = 2080;
        v38 = "handleRoamScanStartEvent";
        v39 = 1024;
        v40 = 22171;
        v41 = 1024;
        v42 = v4;
        v43 = 1024;
        *v44 = v24;
        *&v44[4] = 1024;
        *&v44[6] = v5;
        v45 = 1024;
        v46 = v25;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: roamStartEv.status: %d wle->status %d roamStartEv.reason: %d wle->reason: %d \n", buf, 0x30u);
      }
    }

    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        v30 = (*(*a1 + 1952))(a1);
        CCLogStream::logInfo(v30, "[dk] %s@%d:roamStartEv.status: %d wle->status %d roamStartEv.reason: %d wle->reason: %d \n", "handleRoamScanStartEvent", 22171, v4, *(a2 + 8), v5, *(a2 + 12));
      }
    }
  }

  else
  {
    v8 = (a2 + 20);
    if (*(a2 + 20) < 6u)
    {
      if (!(*(*a1 + 1952))(a1) || ((*(*a1 + 1952))(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *v8;
          *buf = 67110146;
          v36 = 65;
          v37 = 2080;
          v38 = "handleRoamScanStartEvent";
          v39 = 1024;
          v40 = 22101;
          v41 = 1024;
          v42 = v12;
          v43 = 2048;
          *v44 = 6;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: Insufficient space, wle->datalen[%u] < %lu\n", buf, 0x28u);
        }
      }

      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handleRoamScanStartEvent(a1);
        }
      }
    }

    else
    {
      LOWORD(v34) = *(a2 + 52);
      AppleBCMWLANLQM::updateRSSI(*(a1[9] + 5608), v34);
      if (!(*(*a1 + 1952))(a1) || ((*(*a1 + 1952))(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(a2 + 8);
          v10 = *(a2 + 12);
          *buf = 67110914;
          v36 = 73;
          v37 = 2080;
          v38 = "handleRoamScanStartEvent";
          v39 = 1024;
          v40 = 22098;
          v41 = 1024;
          v42 = v4;
          v43 = 1024;
          *v44 = v9;
          *&v44[4] = 1024;
          *&v44[6] = v5;
          v45 = 1024;
          v46 = v10;
          v47 = 1024;
          v48 = v34;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: roamStartEv.status: %d wle->status %d roamStartEv.reason: %d wle->reason: %d Rssi %d\n", buf, 0x36u);
        }
      }

      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          v11 = (*(*a1 + 1952))(a1);
          CCLogStream::logInfo(v11, "[dk] %s@%d:roamStartEv.status: %d wle->status %d roamStartEv.reason: %d wle->reason: %d Rssi %d\n", "handleRoamScanStartEvent", 22098, v4, *(a2 + 8), v5, *(a2 + 12), v34);
        }
      }
    }

    if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 105) && (*(a1[9] + 17522) & 2) != 0 && v5 == 4)
    {
      v13 = *(a2 + 50);
      if (v13 <= 7)
      {
        AppleBCMWLANCore::handleRoamScanStartEvent(a1);
      }

      else
      {
        v14 = v13 - 8;
        if (*v8 - 8 < (v13 - 8))
        {
          AppleBCMWLANCore::handleRoamScanStartEvent(a1, v14);
        }

        else if (v13 != 8)
        {
          v15 = 0;
          v16 = 0;
          v17 = a2 + 56;
          while (1)
          {
            if (v17 + 4 >= a2 + 48 + *(a2 + 50))
            {
              AppleBCMWLANCore::handleRoamScanStartEvent();
              goto LABEL_42;
            }

            if (*v17 == 1)
            {
              v32 = *(v17 + 8);
              v18 = *(v17 + 16);
              v31 = *(v17 + 12);
              v20 = *(v17 + 20);
              v19 = *(v17 + 24);
              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  v23 = (*(*a1 + 1952))(a1);
                  CCLogStream::logAlert(v23, "[dk] %s@%d: BSSID %02x:%02x:%02x:%02x:%02x:%02x, RSSI %d roaming due to beacon protection failures -> BSS beacon protection: Unprotected beacon rx count (%d), beacons without MME IE (%d), beacon with mic failure (%d), beacon with replay fails (%d), no. of error since good beacon rx (%d)\n", "handleRoamScanStartEvent", 22152, *(a2 + 24), *(a2 + 25), *(a2 + 26), *(a2 + 27), *(a2 + 28), *(a2 + 29), *(a2 + 52), v32, v31, v18, v20, v19);
                }
              }
            }

            v21 = *(v17 + 2);
            if (v15 + v21 >= 0xFFFC)
            {
              break;
            }

            v22 = v16 + v21;
            v16 += v21 + 4;
            v17 += v21 + 4;
            v15 = (v22 + 4);
            if (v15 >= v14)
            {
              goto LABEL_42;
            }
          }

          AppleBCMWLANCore::handleRoamScanStartEvent();
        }
      }
    }
  }

LABEL_42:
  v26 = a1[9];
  v27 = *(v26 + 11288);
  if (v27)
  {
    IO80211Controller::postMessage(a1, v27, 0x89u, v33, 0xCuLL, 1);
    v26 = a1[9];
  }

  v28 = *(v26 + 11296);
  if (v28)
  {
    IO80211Controller::postMessage(a1, v28, 0x89u, 0, 0, 1);
  }

  AppleBCMWLANCore::handleExtendedEventData(a1, a2);
  return AppleBCMWLANLQM::setPendingBssidUpdatePostRoam(*(a1[9] + 5608), 1);
}

uint64_t AppleBCMWLANCore::handleRoamEvent(uint64_t *a1, uint64_t a2)
{
  ++*(a1[9] + 18120);
  ++*(a1[9] + 18152);
  *(a1[9] + 14146) = *(a1[9] + 600 * *(a1[9] + 14164) + 12770);
  isAssociatedOnHighBand = IO80211BssManager::isAssociatedOnHighBand(*(a1[9] + 5432));
  v30 = 0;
  v29 = 0;
  if (AppleBCMWLANCore::dumpEventLogReportedStats(a1, 7))
  {
    if (!(*(*a1 + 1952))(a1) || ((*(*a1 + 1952))(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109634;
        *&buf[4] = 78;
        v32 = 2080;
        v33 = "handleRoamEvent";
        v34 = 1024;
        v35 = 22496;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: LQM-WiFi-Roam: Fail to dump roam target evaluation\n", buf, 0x18u);
      }
    }

    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleRoamEvent(a1);
      }
    }
  }

  *(a1[9] + 13992) = mapBcmStatusToApple80211IOReturnScan(*(a2 + 8));
  *(a1[9] + 13996) = mapBcmReasonToApple80211IOReturnRoam(*(a2 + 12));
  *(a1[9] + 14020) = AppleBCMWLANRoamAdapter::getCurrentRoamProfile(*(a1[9] + 5568));
  CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(*(a1[9] + 5432));
  if (!CurrentBSS)
  {
    goto LABEL_29;
  }

  v6 = CurrentBSS;
  if ((*(*CurrentBSS + 696))(CurrentBSS))
  {
    *(a1[9] + 14016) |= 1u;
  }

  if ((*(*v6 + 704))(v6))
  {
    *(a1[9] + 14016) |= 2u;
  }

  if ((*(*v6 + 648))(v6))
  {
    *(a1[9] + 14016) |= 4u;
  }

  if ((*(*v6 + 712))(v6))
  {
    *(a1[9] + 14016) |= 0x10u;
  }

  if ((*(*v6 + 728))(v6))
  {
    *(a1[9] + 14016) |= 0x20u;
  }

  if ((*(*v6 + 720))(v6))
  {
    *(a1[9] + 14016) |= 8u;
  }

  if (*(a2 + 8))
  {
    v7 = (*(*v6 + 184))(v6);
    if (v7)
    {
      *(a1[9] + 14048) = *v7;
      *(a1[9] + 14049) = *(v7 + 1);
      *(a1[9] + 14050) = *(v7 + 2);
      v8 = a1[9];
      v9 = *(v7 + 4);
      *(v8 + 14080) = *v7;
      *(v8 + 14084) = v9;
    }

    *(a1[9] + 14032) = (*(*v6 + 256))(v6);
    IO80211BssManager::getCurrentRSSI(*(a1[9] + 5432), (a1[9] + 14024));
    (*(*v6 + 264))(v6);
    ChanSpecConvToApple80211Channel();
    *(a1[9] + 14040) = v30;
  }

  v10 = *(a2 + 12);
  if (!((v10 != 1) | isAssociatedOnHighBand & 1))
  {
    if (*(a1[9] + 14024) >= -64)
    {
      *(a1[9] + 13996) = mapBcmReasonToApple80211IOReturnRoam(8);
    }

LABEL_29:
    v10 = *(a2 + 12);
  }

  if (v10 == 1 && (IO80211BssManager::isAssociatedOn5G(*(a1[9] + 5432)) & 1) == 0 && *(a1[9] + 14024) >= -64)
  {
    *(a1[9] + 13996) = mapBcmReasonToApple80211IOReturnRoam(8);
  }

  *buf = 0;
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  *(a1[9] + 14008) = *buf / 0xF4240uLL;
  *(a1[9] + 14060) = IO80211BssManager::getCurrentAuthType(*(a1[9] + 5432));
  *(a1[9] + 14068) = IO80211BssManager::getCurrentBSSAKMs(*(a1[9] + 5432));
  if (*(a1[9] + 12153) == 1)
  {
    if (!(*(*a1 + 1952))(a1) || ((*(*a1 + 1952))(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109634;
        *&buf[4] = 65;
        v32 = 2080;
        v33 = "handleRoamEvent";
        v34 = 1024;
        v35 = 22546;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: Using simulated roam status substate\n", buf, 0x18u);
      }
    }

    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleRoamEvent(a1);
      }
    }

    *(a1[9] + 14108) = *(a1[9] + 12164);
    *(a1[9] + 14112) = *(a1[9] + 12168);
    *(a1[9] + 14116) = *(a1[9] + 12172);
    *(a1[9] + 14120) = *(a1[9] + 12176);
    *(a1[9] + 14124) = *(a1[9] + 12180);
    *(a1[9] + 14128) = *(a1[9] + 12184);
    *(a1[9] + 14132) = *(a1[9] + 12188);
  }

  v11 = *(a2 + 8);
  if (v11 != 3)
  {
    goto LABEL_48;
  }

  if (AppleBCMWLANCore::getRoamNoNetworkReason(a1, a2))
  {
    *(a1[9] + 13992) = -528350133;
  }

  v11 = *(a2 + 8);
  if (v11 == 3)
  {
    ++*(a1[9] + 18112);
    ++*(a1[9] + 18144);
    v12 = a1[9] + 600 * *(a1[9] + 14164);
    ++*(v12 + 12768);
    v13 = a1[9];
    v14 = *(v13 + 600 * *(v13 + 14164) + 12768);
    v15 = 14144;
  }

  else
  {
LABEL_48:
    switch(v11)
    {
      case 1:
        v18 = a1[9] + 600 * *(a1[9] + 14164);
        ++*(v18 + 12774);
        v13 = a1[9];
        v14 = *(v13 + 600 * *(v13 + 14164) + 12774);
        v15 = 14150;
        break;
      case 2:
        v17 = a1[9] + 600 * *(a1[9] + 14164);
        ++*(v17 + 12773);
        v13 = a1[9];
        v14 = *(v13 + 600 * *(v13 + 14164) + 12773);
        v15 = 14149;
        break;
      case 4:
        v16 = a1[9] + 600 * *(a1[9] + 14164);
        ++*(v16 + 12772);
        v13 = a1[9];
        v14 = *(v13 + 600 * *(v13 + 14164) + 12772);
        v15 = 14148;
        break;
      default:
        goto LABEL_55;
    }
  }

  *(v13 + v15) = v14;
LABEL_55:
  AppleBCMWLANCore::handleExtendedEventData(a1, a2);
  AppleBCMWLANNetAdapter::handleRoam(*(a1[9] + 5600), a2);
  AppleBCMWLANRoamAdapter::restoreReassocParams(*(a1[9] + 5568));
  AppleBCMWLANCore::collectDtimConfigFromFW(a1);
  result = AppleBCMWLANBssManager::getCurrentBSS(*(a1[9] + 5432));
  if (result)
  {
    result = AppleBCMWLANCore::postRoamCompletionStatus(a1);
  }

  if (!*(a2 + 8))
  {
    *(a1[9] + 600 * *(a1[9] + 14164) + 12780) = *(a2 + 12);
    v20 = (*(*a1 + 1992))(a1, 0);
    v21 = OSMetaClassBase::safeMetaCast(v20, gAppleBCMWLANSkywalkInterfaceMetaClass);
    *buf = 0;
    v28 = 0;
    if (v21)
    {
      AppleBCMWLANSkywalkInterface::retrievePendingPacketsOnRoam(v21, buf, &v28);
      v22 = buf[0];
      v23 = v28;
    }

    else
    {
      v23 = 0;
      v22 = 0;
    }

    *(a1[9] + 600 * *(a1[9] + 14164) + 12776) = v22;
    *(a1[9] + 600 * *(a1[9] + 14164) + 12352) = *(a1[9] + 600 * *(a1[9] + 14164) + 12776);
    *(a1[9] + 600 * *(a1[9] + 14164) + 12777) = v23;
    *(a1[9] + 600 * *(a1[9] + 14164) + 12353) = *(a1[9] + 600 * *(a1[9] + 14164) + 12777);
    result = AppleBCMWLANBssManager::getCurrentBSS(*(a1[9] + 5432));
    if (result)
    {
      result = (*(*result + 752))(result);
      *(a1[9] + 600 * *(a1[9] + 14164) + 12788) = result;
    }

    v24 = a1[9];
    if ((*(v24 + 14160) & 1) == 0)
    {
      result = AppleBCMWLANCore::printRoamInfo(a1, *(v24 + 14164));
      ++*(a1[9] + 14164);
      v25 = a1[9];
      v26 = *(v25 + 14164);
      if (v26 > 2)
      {
        v26 = 0;
      }

      *(v25 + 14164) = v26;
      v27 = a1[9] + 600 * *(a1[9] + 14164);
      *(v27 + 12768) = 0;
      *(v27 + 12760) = 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleRoamPrepEvent(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 12);
  v32 = 0;
  v31[0] = v4;
  v5 = (*(**(a1[9] + 5392) + 368))(*(a1[9] + 5392));
  if ((v5 - 4377) <= 0x16 && ((1 << (v5 - 25)) & 0x400C03) != 0)
  {
    if (*(a2 + 20) < 8u)
    {
      if (!(*(*a1 + 1952))(a1) || ((*(*a1 + 1952))(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(a2 + 20);
          *buf = 67110146;
          v34 = 65;
          v35 = 2080;
          v36 = "handleRoamPrepEvent";
          v37 = 1024;
          v38 = 22017;
          v39 = 1024;
          v40 = v8;
          v41 = 2048;
          *v42 = 8;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: Insufficent space, wle->datalen[%u] < %zu\n", buf, 0x28u);
        }
      }

      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handleRoamPrepEvent(a1);
        }
      }

      v7 = 0;
    }

    else
    {
      HIWORD(v32) = *(a2 + 52);
      v7 = SHIWORD(v32);
      *(a1[9] + 14028) = SHIWORD(v32);
    }

    if (!(*(*a1 + 1952))(a1) || ((*(*a1 + 1952))(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a2 + 12);
        if (IO80211_io80211isSensitiveInfoAllowed())
        {
          v10 = *(a2 + 24);
        }

        else
        {
          v10 = 0;
        }

        if (IO80211_io80211isSensitiveInfoAllowed())
        {
          v11 = *(a2 + 25);
        }

        else
        {
          v11 = 0;
        }

        if (IO80211_io80211isSensitiveInfoAllowed())
        {
          v12 = *(a2 + 26);
        }

        else
        {
          v12 = 0;
        }

        if (IO80211_io80211isSensitiveInfoAllowed())
        {
          v13 = *(a2 + 27);
        }

        else
        {
          v13 = 0;
        }

        if (IO80211_io80211isSensitiveInfoAllowed())
        {
          v14 = *(a2 + 28);
        }

        else
        {
          v14 = 0;
        }

        if (IO80211_io80211isSensitiveInfoAllowed())
        {
          v15 = *(a2 + 29);
        }

        else
        {
          v15 = 0;
        }

        v16 = *(a1[9] + 14028);
        *buf = 67111938;
        v34 = 65;
        v35 = 2080;
        v36 = "handleRoamPrepEvent";
        v37 = 1024;
        v38 = 22027;
        v39 = 1024;
        v40 = v9;
        v41 = 1024;
        *v42 = v10;
        *&v42[4] = 1024;
        *&v42[6] = v11;
        v43 = 1024;
        v44 = v12;
        v45 = 1024;
        v46 = v13;
        v47 = 1024;
        v48 = v14;
        v49 = 1024;
        v50 = v15;
        v51 = 1024;
        v52 = v7;
        v53 = 1024;
        v54 = v16;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: Roam reason:%d addr = %02X:%02X:%02X:%02X:%02X:%02X  Roam RSSI:%d Target RSSI:%d\n", buf, 0x4Eu);
      }
    }

    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        v23 = (*(*a1 + 1952))(a1);
        v24 = *(a2 + 12);
        if (IO80211_io80211isSensitiveInfoAllowed())
        {
          v25 = *(a2 + 24);
        }

        else
        {
          v25 = 0;
        }

        if (IO80211_io80211isSensitiveInfoAllowed())
        {
          v26 = *(a2 + 25);
        }

        else
        {
          v26 = 0;
        }

        if (IO80211_io80211isSensitiveInfoAllowed())
        {
          v27 = *(a2 + 26);
        }

        else
        {
          v27 = 0;
        }

        if (IO80211_io80211isSensitiveInfoAllowed())
        {
          v28 = *(a2 + 27);
        }

        else
        {
          v28 = 0;
        }

        if (IO80211_io80211isSensitiveInfoAllowed())
        {
          v29 = *(a2 + 28);
        }

        else
        {
          v29 = 0;
        }

        if (IO80211_io80211isSensitiveInfoAllowed())
        {
          v30 = *(a2 + 29);
        }

        else
        {
          v30 = 0;
        }

        CCLogStream::logAlert(v23, "[dk] %s@%d:Roam reason:%d addr = %02X:%02X:%02X:%02X:%02X:%02X  Roam RSSI:%d Target RSSI:%d\n", "handleRoamPrepEvent", 22027, v24, v25, v26, v27, v28, v29, v30, v7, *(a1[9] + 14028));
      }
    }
  }

  v31[1] = *(a2 + 24);
  LOWORD(v32) = *(a2 + 28);
  v17 = a1[9];
  v18 = *(v17 + 11288);
  if (v18)
  {
    IO80211Controller::postMessage(a1, v18, 0x8Bu, v31, 0xCuLL, 1);
    v17 = a1[9];
  }

  v19 = *(v17 + 11296);
  if (v19)
  {
    IO80211Controller::postMessage(a1, v19, 0x8Bu, 0, 0, 1);
  }

  AppleBCMWLANCore::handleExtendedEventData(a1, a2);
  result = AppleBCMWLANCore::setBeaconListenInterval(a1);
  ++*(a1[9] + 12152);
  v21 = a1[9] + 14100;
  v22 = *(a2 + 28);
  *v21 = *(a2 + 24);
  *(v21 + 4) = v22;
  return result;
}

uint64_t AppleBCMWLANCore::handleMICErrorEvent(IO80211Controller *a1, uint64_t a2)
{
  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 0))
  {
    v4 = *(*(a1 + 9) + 11288);
    if (v4)
    {
      if ((*(a2 + 2) & 4) != 0)
      {
        v5 = 6;
      }

      else
      {
        v5 = 5;
      }

      IO80211Controller::postMessage(a1, v4, v5, (a2 + 24), 6uLL, 1);
    }
  }

  result = (*(*a1 + 1952))(a1);
  if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::handleMICErrorEvent(a1);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleCountryCodeChangedEvent(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 20) > 2u)
  {
    v4 = a1 + 9;
    strlcpy((a1[9] + 6744), (a2 + 48), 3uLL);
    *(*v4 + 6747) = 0;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleCountryCodeChangedEvent(a1);
      }
    }

    AppleBCMWLANCore::setLMTPC(a1);
    v5 = strncmp((a1[9] + 6748), (a1[9] + 6744), 4uLL);
    result = (*(*a1 + 1952))(a1);
    if (v5)
    {
      if (result)
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handleCountryCodeChangedEvent(a1);
        }
      }

      strlcpy((a1[9] + 6748), (a1[9] + 6744), 4uLL);
      *(a1[9] + 6751) = 0;
      result = AppleBCMWLANCore::handleCountryCodeChangeToRepopulateChannels(a1);
    }

    else
    {
      if (result)
      {
        (*(*a1 + 1952))(a1);
        result = CCLogStream::shouldLog();
        if (result)
        {
          result = AppleBCMWLANCore::handleCountryCodeChangedEvent(a1);
        }
      }

      v6 = *v4;
      v7 = *(*v4 + 29944);
      if (v7)
      {
        result = IO80211Controller::postMessage(a1, v7, 0xBu, 0, 0, 1);
        v6 = a1[9];
      }

      v8 = *(v6 + 11296);
      if (v8)
      {
        result = IO80211Controller::postMessage(a1, v8, 0xBu, 0, 0, 1);
      }
    }

    v9 = *(*v4 + 11288);
    if (v9)
    {

      return IO80211Controller::postMessage(a1, v9, 0xBu, 0, 0, 1);
    }
  }

  else
  {
    result = (*(*a1 + 1952))(a1);
    if (result)
    {
      (*(*a1 + 1952))(a1);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleCountryCodeChangedEvent(a1);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleICVErrorEvent(IO80211Controller *a1, uint64_t a2)
{
  v7[0] = mapBcmStatusToApple80211IOReturnIEEEStatus(*(a2 + 8));
  v7[1] = mapBcmReasonToApple80211IOReturnIEEEReason(*(a2 + 12));
  v4 = *(a1 + 9);
  v5 = *(v4 + 11288);
  if (v5)
  {
    IO80211Controller::postMessage(a1, v5, 0xEu, v7, 8uLL, 1);
    v4 = *(a1 + 9);
  }

  AppleBCMWLANJoinAdapter::handleICVErrorEvent(*(v4 + 5416), a2);
  result = (*(*a1 + 1952))(a1);
  if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::handleICVErrorEvent(a1);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handlePSKEvent(AppleBCMWLANCore *a1, uint64_t a2)
{
  updated = AppleBCMWLANCore::updateTransitionDisabledInfo(a1, a2);
  if (*(a2 + 8) == 6 && (v5 = updated, AppleBCMWLANCore::featureFlagIsBitSet(a1, 65)))
  {
    AppleBCMWLANJoinAdapter::updateTransDisabledModeAsync(*(*(a1 + 9) + 5416), v5);
  }

  else
  {
    v5 = 0x80000000;
  }

  v16 = -1431655766;
  v13[0] = mapBcmStatusToApple80211IOReturnScan(*(a2 + 8));
  v13[1] = mapBcmReasonToApple80211IOReturnSupplicant(*(a2 + 12));
  v13[2] = mapBcmSupplicantEventToAppleStatus(*(a2 + 8), *(a2 + 12));
  v13[3] = v5;
  v14 = 0uLL;
  v15 = 0;
  LOBYTE(v16) = AppleBCMWLANJoinAdapter::isJoining(*(*(a1 + 9) + 5416));
  v6 = (*(**(*(a1 + 9) + 5392) + 368))();
  if ((v6 - 4378) <= 0x15 && ((1 << (v6 - 26)) & 0x200601) != 0)
  {
    if (*(a2 + 20) < 0x1Eu)
    {
      if (!(*(*a1 + 1952))(a1) || ((*(*a1 + 1952))(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(a2 + 20);
          *buf = 67110146;
          v18 = 65;
          v19 = 2080;
          v20 = "handlePSKEvent";
          v21 = 1024;
          v22 = 21692;
          v23 = 1024;
          v24 = v8;
          v25 = 2048;
          v26 = 30;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: Insufficent space, wle->datalen[%u] < %zu\n", buf, 0x28u);
        }
      }

      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handlePSKEvent(a1);
        }
      }
    }

    else if (*(a2 + 53) == 57)
    {
      v14 = *(a2 + 58);
      v15 = *(a2 + 74);
    }
  }

  v9 = *(a1 + 9);
  v10 = *(v9 + 11288);
  if (v10)
  {
    IO80211Controller::postMessage(a1, v10, 0x4Cu, v13, 0x28uLL, 1);
    v9 = *(a1 + 9);
  }

  result = AppleBCMWLANJoinAdapter::handleSupplicantEvent(*(v9 + 5416), a2);
  v12 = *(a1 + 9);
  if (*(v12 + 12152))
  {
    *(v12 + 14108) |= 4u;
    *(*(a1 + 9) + 14128) = mapBcmStatusToApple80211IOReturnScan(*(a2 + 8));
    result = mapBcmReasonToApple80211IOReturnSupplicant(*(a2 + 12));
    *(*(a1 + 9) + 14132) = result;
  }

  return result;
}

uint64_t AppleBCMWLANCore::handlePruneEvent(uint64_t *a1, uint64_t a2)
{
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::handlePruneEvent(a1);
    }
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::handlePruneEvent(a1);
    }
  }

  v8 = -1431655766;
  v7[0] = mapBcmStatusToApple80211IOReturnScan(*(a2 + 8));
  result = mapBcmReasonToApple80211IOReturnPrune(*(a2 + 12));
  v5 = *(a2 + 24);
  v7[1] = result;
  v7[2] = v5;
  LOWORD(v8) = *(a2 + 28);
  v6 = *(a1[9] + 11288);
  if (v6)
  {
    return IO80211Controller::postMessage(a1, v6, 0x4Bu, v7, 0x10uLL, 1);
  }

  return result;
}

uint64_t *AppleBCMWLANCore::handlePSMWatchdog(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 12);
  if (v4 == 1)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handlePSMWatchdog(a1);
      }
    }
  }

  else
  {
    v5 = *(a2 + 8);
    if (v4 == 3 && v5 == 3)
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handlePSMWatchdog(a1);
        }
      }
    }

    else if (!(v5 | v4))
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handlePSMWatchdog(a1);
        }
      }
    }
  }

  return AppleBCMWLANCore::reportMicrocodeLockup(a1, a2);
}

void *AppleBCMWLANCore::handlePMAlertEvent(uint64_t *a1, uint64_t a2, const void **a3)
{
  v21 = 0;
  AppleBCMWLANCore::retrieveExcessPMParams(a1, a2, &v21);
  v5 = v21;
  *(a1[9] + 6596) = v21 != 0;
  v6 = a1[9];
  if (!*(v6 + 35528))
  {
    v20 = 0;
    values = a1;
    v31 = AppleBCMWLANCore::handleExcessPMPeriodAsyncCallBack;
    v32 = 0;
    v7 = *(v6 + 5408);
    *buf = &v20;
    *v23 = 4;
    v8 = AppleBCMWLANCommander::sendIOVarSet(v7, "excess_pm_period");
    if (v8)
    {
      v9 = v8;
      if (!(*(*a1 + 1952))(a1) || ((*(*a1 + 1952))(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v10 = (*(*a1 + 112))(a1, v9);
          *buf = 67110146;
          *&buf[4] = 65;
          *v23 = 2080;
          *&v23[2] = "handlePMAlertEvent";
          v24 = 1024;
          v25 = 22910;
          v26 = 1024;
          v27 = v9;
          v28 = 2080;
          v29 = v10;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d:  cannot set excess_pm_period to 0 : ret %x: %s  -> got WLC_E_PM_ALERT\n", buf, 0x28u);
        }
      }

      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handlePMAlertEvent(a1);
        }
      }
    }

    v20 = 0;
    values = a1;
    v31 = AppleBCMWLANCore::handleExcessPMPercentAsyncCallBack;
    v32 = 0;
    v11 = *(a1[9] + 5408);
    *buf = &v20;
    *v23 = 4;
    v12 = AppleBCMWLANCommander::sendIOVarSet(v11, "excess_pm_percent");
    if (v12)
    {
      v13 = v12;
      if (!(*(*a1 + 1952))(a1) || ((*(*a1 + 1952))(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v14 = (*(*a1 + 112))(a1, v13);
          *buf = 67110146;
          *&buf[4] = 65;
          *v23 = 2080;
          *&v23[2] = "handlePMAlertEvent";
          v24 = 1024;
          v25 = 22922;
          v26 = 1024;
          v27 = v13;
          v28 = 2080;
          v29 = v14;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d:  cannot set excess_pm_percent to 0 : ret %x: %s  -> got WLC_E_PM_ALERT\n", buf, 0x28u);
        }
      }

      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handlePMAlertEvent(a1);
        }
      }
    }

    values = a1;
    v31 = AppleBCMWLANCore::handleGetPowerSaveModeAsyncCallBack;
    v32 = 0;
    v15 = *(a1[9] + 5408);
    *buf = 262148;
    if (AppleBCMWLANCommander::sendIOCtlGet(v15, 85, &kNoTxPayload, buf, &values, 0))
    {
      if (!(*(*a1 + 1952))(a1) || ((*(*a1 + 1952))(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = 73;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c Failed to get Current Power Save Mode\n", buf, 8u);
        }
      }

      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handlePMAlertEvent(a1);
        }
      }
    }

    v6 = a1[9];
  }

  result = IO80211BssManager::isAssociated(*(v6 + 5432));
  if (result)
  {
    v17 = a1[9];
    if (*(v17 + 6584))
    {
      *(v17 + 6588) = 1;
    }

    else
    {
      if (*(v17 + 11288))
      {
        if (!(*(*a1 + 1952))(a1) || ((*(*a1 + 1952))(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109634;
            *&buf[4] = 65;
            *v23 = 2080;
            *&v23[2] = "handlePMAlertEvent";
            v24 = 1024;
            v25 = 22947;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d:  Send BLACKLIST_NETWORK\n", buf, 0x18u);
          }
        }

        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::handlePMAlertEvent(a1);
          }
        }

        result = IO80211Controller::postMessage(a1, *(a1[9] + 11288), 0x23u, 0, 0, 1);
        v17 = a1[9];
      }

      *(v17 + 6588) = 0;
    }
  }

  else
  {
    if (!(*(*a1 + 1952))(a1) || ((*(*a1 + 1952))(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109634;
        *&buf[4] = 65;
        *v23 = 2080;
        *&v23[2] = "handlePMAlertEvent";
        v24 = 1024;
        v25 = 22953;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: Received PM ALERT Event in Un-Associated Sleep Mode\n", buf, 0x18u);
      }
    }

    result = (*(*a1 + 1952))(a1);
    if (result)
    {
      (*(*a1 + 1952))(a1);
      result = CCLogStream::shouldLog();
      if (result)
      {
        result = AppleBCMWLANCore::handlePMAlertEvent(a1);
      }
    }
  }

  if (v5)
  {
    *buf = OSString::withCString("FirmwareEvent.bin");
    values = OSData::withBytes(a3[1], *a3);
    v18 = *(a1[9] + 5536);
    v19 = OSDictionary::withObjects(&values, buf, 1u, 0);
    CCFaultReporter::reportFault(v18, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x59B6u, "handlePMAlertEvent", v19, -469793529, 0);
    return AppleBCMWLANUtil::releaseOSObjectArray(buf, &values, 1);
  }

  return result;
}

uint64_t *AppleBCMWLANCore::handleTraceEvent(uint64_t *result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 20);
  if (v3 <= 0xF)
  {
    return AppleBCMWLANCore::handleTraceEvent(result);
  }

  if (*(a2 + 48) == 1)
  {
    v5 = bswap32(*(a2 + 50)) >> 16;
    v6 = v5 + 16;
    if (v5 + 16 <= v3)
    {
      if (*(a2 + 49) == 1)
      {
        v8 = v3 - 16;
        if (v8 >= v5)
        {
          v9 = v5;
        }

        else
        {
          v9 = v8;
        }

        v10 = OSData::withBytesNoCopy((a2 + 64), v9);
        if (v10)
        {
          v11 = v10;
          v12 = AppleBCMWLANCore::handleMsgTraceBlock(v2, v10);
          result = (v11->release)(v11);
          if (!v12)
          {
            return result;
          }
        }

        else if ((*(*v2 + 1952))(v2))
        {
          (*(*v2 + 1952))(v2);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::handleTraceEvent(v2);
          }
        }

        v13 = *(v2[9] + 14248);
        v14 = *(a2 + 20);
        IO80211Hexdump();
        keys = OSString::withCString("RawTraceEvent.bin");
        values = OSData::withBytes(a2, *(a2 + 20) + 48);
        v15 = *(v2[9] + 5536);
        v16 = OSDictionary::withObjects(&values, &keys, 1u, 0);
        CCFaultReporter::reportFault(v15, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x546Bu, "handleTraceEvent", v16, -469793521, 0);
        return AppleBCMWLANUtil::releaseOSObjectArray(&keys, &values, 1);
      }
    }

    else
    {
      result = (*(*result + 1952))(result);
      if (result)
      {
        (*(*v2 + 1952))(v2);
        result = CCLogStream::shouldLog();
        if (result)
        {
          v7 = (*(*v2 + 1952))(v2);
          return CCLogStream::logAlert(v7, "[dk] %s@%d: Invalid trace event payload length %u allowed %u\n", "handleTraceEvent", 21578, v6, *(a2 + 20));
        }
      }
    }
  }

  else
  {
    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v2 + 1952))(v2);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleTraceEvent(v2);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::csaReceived(unint64_t this)
{
  if (IO80211BssManager::isAssociated(*(*(this + 72) + 5432)))
  {
    v5[1] = this;
    v5[2] = AppleBCMWLANCore::handleBcnLiBcnIoVarAsyncCallBack;
    v5[3] = 0;
    v5[0] = 1;
    *(*(this + 72) + 19832) = 1;
    v2 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 72) + 5408), "bcn_li_bcn");
    if (v2)
    {
      v3 = v2;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::csaReceived(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v5, v3);
        }
      }
    }

    IO80211Controller::postMessage(this, *(*(this + 72) + 11288), 0xD1u, 0, 0, 1);
    return AppleBCMWLANLQM::setCsaReceived(*(*(this + 72) + 5608));
  }

  else
  {
    result = (*(*this + 1952))(this);
    if (result)
    {
      (*(*this + 1952))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::csaReceived(this);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleWSECEvent(uint64_t *a1, uint64_t a2)
{
  v22 = 0;
  isDevFusedOrCSRInternal = AppleBCMWLAN_isDevFusedOrCSRInternal();
  if (*(a2 + 20) <= 5u)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleWSECEvent(a1);
      }
    }

LABEL_20:
    v16 = "UNKNOWN";
    return CCFaultReporter::reportFault(*(a1[9] + 5536), 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x6080u, "handleWSECEvent", 0, -469793486, "%s", v16);
  }

  if (isDevFusedOrCSRInternal)
  {
    IOParseBootArgNumber("wlan.wsec.reassoc", &v22 + 1, 1);
    IOParseBootArgNumber("wlan.wsec.disassoc", &v22, 1);
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::handleWSECEvent(a1);
    }
  }

  if (*(a2 + 52) != 1)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleWSECEvent(a1);
      }
    }

    goto LABEL_20;
  }

  if (*(a2 + 20) <= 0x2Bu)
  {
    AppleBCMWLANCore::handleWSECEvent();
    v16 = v23;
  }

  else
  {
    v5 = IOMallocZeroData();
    if (v5)
    {
      v6 = v5;
      v21 = *(a2 + 60);
      v20 = *(a2 + 56);
      v19 = *(a2 + 72);
      v7 = *(a2 + 70);
      v8 = *(a2 + 78);
      v10 = *(a2 + 80);
      v9 = *(a2 + 84);
      v11 = *(a2 + 88);
      v12 = *(a2 + 76);
      v13 = *(a2 + 68);
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          v18 = (*(*a1 + 1952))(a1);
          CCLogStream::logAlert(v18, "[dk] %s@%d: WLC_WSEC_EVENT_PTK_PN_SYNC_ERROR: TSF[0x%08x%08x] keyID[%d] keyIDX[0x%04x] tid[%d] rx SN[0x%04x] PN[0x%08x%04x], RX PN[0x%08x%04x] span[ time[0x%08x] pkts[0x%04x]  \n", "handleWSECEvent", 24674, v21, v20, *(a2 + 64), v12, *(a2 + 65), v13, v19, v7, v10, v8, v9, v11);
        }
      }

      *v6 = 0x100000011;
      *(v6 + 2) = 1;
      IO80211BssManager::getCurrentBSSID(*(a1[9] + 5432), v6 + 2);
      *(v6 + 5) = 36;
      v14 = *(a2 + 56);
      v15 = *(a2 + 72);
      *(v6 + 14) = *(a2 + 88);
      *(v6 + 40) = v15;
      *(v6 + 24) = v14;
      IO80211Controller::postMessage(a1, *(a1[9] + 11288), 0x92u, v6, 0x98uLL, 1);
      IOFreeData();
    }

    else if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleWSECEvent(a1);
      }
    }

    v16 = "WLC_WSEC_EVENT_PTK_PN_SYNC_ERROR";
  }

  return CCFaultReporter::reportFault(*(a1[9] + 5536), 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x6080u, "handleWSECEvent", 0, -469793486, "%s", v16);
}

uint64_t AppleBCMWLANCore::handleSCChanQualEvent(uint64_t *a1, uint64_t a2)
{
  v5 = (a2 + 48);
  v4 = *(a2 + 48);
  if (v4 >= 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = 84;
  }

  if (v4 == 6)
  {
    v7 = 80;
  }

  else
  {
    v7 = v6;
  }

  if (v4 >= 6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 72;
  }

  v9 = IOMallocZeroData();
  if (v9)
  {
    v10 = v9;
    if ((v5 & 3) != 0)
    {
      AppleBCMWLANCore::handleSCChanQualEvent(a1);
    }

    else if ((v4 & 0xFFFFFFFC) == 4)
    {
      if (*(a2 + 52) == v8)
      {
        if (*(a2 + 57) == 1)
        {
          if (*(a2 + 58) == 1)
          {
            v11 = *(a2 + 64);
            *v9 = *(a2 + 60);
            *(v9 + 56) = *(a2 + 116);
            *(v9 + 8) = *(a2 + 68);
            *(v9 + 24) = *(a2 + 84);
            *(v9 + 40) = *(a2 + 100);
            *(v9 + 4) = v11;
            v12 = *(a2 + 48);
            if (v12 - 5 <= 1)
            {
              *(v9 + 6) = *(a2 + 66);
            }

            v23 = (v9 + 28);
            v24 = (v9 + 20);
            if (v12 >= 6)
            {
              *(v9 + 60) = *(a2 + 120);
              *(v9 + 64) = *(a2 + 124);
              if (*(a2 + 48) >= 7u)
              {
                *(v9 + 66) = *(a2 + 126);
                *(v9 + 68) = *(a2 + 128);
              }
            }

            AppleBCMWLANChanSpec::getAppleChannelSpec(*(a1[9] + 17744), v11);
            PrimaryChannel = ChanSpecGetPrimaryChannel();
            v25 = PrimaryChannel;
            if (*v10)
            {
              v14 = *v10;
              if (PrimaryChannel > 0x23)
              {
                v15 = ((*v24 / v14) * 100.0);
                v26 = v15;
              }

              else
              {
                v15 = ((50 * *v23) / 100.0) + ((v10[6] / v14) * 100.0);
                if (v15 >= 0x64)
                {
                  v16 = 100;
                }

                else
                {
                  v16 = ((50 * *v23) / 100.0) + ((v10[6] / v14) * 100.0);
                }

                v26 = v16;
              }

              v18 = v15 > 0x19;
              *(a1[9] + 19688) = v18;
            }

            else
            {
              v18 = 0;
              v26 = 0;
            }

            if (*(a1[9] + 18485) == 1)
            {
              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent(a1);
                }
              }

              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent(a1);
                }
              }

              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent(a1);
                }
              }

              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent(a1);
                }
              }

              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent(a1);
                }
              }

              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent(a1);
                }
              }

              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent(a1);
                }
              }

              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent(a1);
                }
              }

              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent(a1);
                }
              }

              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent(a1);
                }
              }

              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent(a1);
                }
              }

              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent(a1);
                }
              }

              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent(a1);
                }
              }

              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent(a1);
                }
              }

              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent(a1);
                }
              }

              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent(a1);
                }
              }

              if ((*v5 - 5) <= 1)
              {
                if ((*(*a1 + 1952))(a1))
                {
                  (*(*a1 + 1952))(a1);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::handleSCChanQualEvent(a1);
                  }
                }
              }

              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent(a1);
                }
              }

              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent(a1);
                }
              }

              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent(a1);
                }
              }

              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent(a1);
                }
              }

              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent(a1);
                }
              }

              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent(a1);
                }
              }
            }

            v19 = *(a1[9] + 5424);
            if (!v19)
            {
              goto LABEL_111;
            }

            if (v18)
            {
              AppleBCMWLANScanAdapter::setSCTxBlankStatus(v19, 4);
              v20 = a1;
              v21 = v26;
            }

            else
            {
              if (!v26)
              {
                AppleBCMWLANScanAdapter::setSCTxBlankStatus(v19, 1);
                ++*(a1[9] + 18088);
                goto LABEL_111;
              }

              AppleBCMWLANScanAdapter::setSCTxBlankStatus(v19, 2);
              v20 = a1;
              v21 = v26;
            }

            AppleBCMWLANCore::updateSCTxBlankingSummary(v20, v21, v25);
LABEL_111:

            return IOFreeData();
          }

          AppleBCMWLANCore::handleSCChanQualEvent(a1);
        }

        else
        {
          AppleBCMWLANCore::handleSCChanQualEvent(a1);
        }
      }

      else
      {
        AppleBCMWLANCore::handleSCChanQualEvent(a1, a2 + 52, v8);
      }
    }

    else
    {
      AppleBCMWLANCore::handleSCChanQualEvent(a1);
    }

    v22 = *(a1[9] + 5536);
    if (v22)
    {
      CCFaultReporter::reportFault(v22, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x6146u, "handleSCChanQualEvent", 0, -469793488, 0);
    }

    goto LABEL_111;
  }

  result = (*(*a1 + 1952))(a1);
  if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::handleSCChanQualEvent(a1);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleUlOfdmaDisableEvent(uint64_t result, uint64_t a2)
{
  if (*(a2 + 48) != 1)
  {
    v2 = result;
    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v2 + 1952))(v2);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleUlOfdmaDisableEvent(v2);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleObssDetectEvent(uint64_t *a1)
{
  result = (*(*a1 + 1952))(a1);
  if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::handleObssDetectEvent(a1);
    }
  }

  return result;
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:OBSS Detection Event: Available channel spec = 0x%x\n", "handleObssDetectEvent", 23504, v5);
}

uint64_t AppleBCMWLANCore::setBeaconListenInterval(unint64_t this)
{
  v2 = *(this + 72);
  if (*(v2 + 8828) == 1)
  {
    result = (*(*this + 1952))(this);
    if (result)
    {
      (*(*this + 1952))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::setBeaconListenInterval(this);
      }
    }
  }

  else
  {
    v12[1] = this;
    v12[2] = AppleBCMWLANCore::handleBcnLiBcnIoVarAsyncCallBack;
    v12[3] = 0;
    v12[0] = 1;
    *(v2 + 19832) = 1;
    v4 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 72) + 5408), "bcn_li_bcn");
    if (v4)
    {
      v5 = v4;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setBeaconListenInterval(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v12, v5);
        }
      }
    }

    v12[0] = 0;
    result = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 72) + 5408), "bcn_li_dtim");
    v6 = result;
    v7 = *(this + 72);
    if ((*(v7 + 10378) & 0x80) == 0)
    {
      *(v7 + 19840) = 0;
    }

    if (result)
    {
      result = (*(*this + 1952))(this);
      if (result)
      {
        (*(*this + 1952))(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          v8 = (*(*this + 1952))(this);
          v9 = v12[0];
          v10 = *(*(this + 72) + 19836);
          v11 = (*(*this + 112))(this, v6);
          return CCLogStream::logAlert(v8, "[dk] %s@%d: Error: cannot disable extended dtim(%d): ret %x: %s\n", "setBeaconListenInterval", 15925, v10, v9, v11);
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordAMPDU(AppleBCMWLANCore *this, OSData *a2, unsigned int a3, unsigned int a4)
{
  if (OSData::getLength(a2) == a4 + 4)
  {
    v9 = OSData::getLength(a2) + 272;
    v10 = IOMallocZeroData();
    if (v10)
    {
      v11 = v10;
      if (a3 >= 0x4C)
      {
        AppleBCMWLANCore::parseEventLogRecordAMPDU(this, &v24, &v25);
        v13 = v25;
      }

      else
      {
        switch(a3)
        {
          case 0u:
          case 1u:
          case 2u:
          case 3u:
          case 8u:
          case 9u:
          case 0xAu:
          case 0xBu:
          case 0x10u:
          case 0x11u:
          case 0x14u:
          case 0x15u:
          case 0x1Au:
          case 0x1Cu:
          case 0x1Eu:
            v12 = 1;
            goto LABEL_15;
          case 4u:
          case 5u:
          case 6u:
          case 7u:
          case 0xCu:
          case 0xDu:
          case 0xEu:
          case 0xFu:
          case 0x12u:
          case 0x13u:
          case 0x16u:
          case 0x17u:
          case 0x1Bu:
          case 0x1Du:
          case 0x1Fu:
            v12 = 2;
            goto LABEL_15;
          case 0x18u:
          case 0x19u:
          case 0x2Du:
            *v10 = 0;
            break;
          case 0x20u:
          case 0x21u:
          case 0x22u:
          case 0x23u:
          case 0x24u:
          case 0x25u:
          case 0x26u:
          case 0x27u:
          case 0x28u:
          case 0x29u:
          case 0x2Au:
          case 0x2Bu:
          case 0x2Cu:
          case 0x2Eu:
          case 0x2Fu:
          case 0x30u:
          case 0x31u:
          case 0x32u:
          case 0x33u:
          case 0x34u:
          case 0x35u:
          case 0x36u:
          case 0x37u:
          case 0x38u:
          case 0x39u:
          case 0x3Au:
          case 0x3Bu:
          case 0x3Cu:
          case 0x3Du:
          case 0x3Eu:
          case 0x3Fu:
          case 0x40u:
          case 0x41u:
          case 0x42u:
          case 0x43u:
          case 0x44u:
          case 0x45u:
          case 0x46u:
          case 0x47u:
          case 0x48u:
          case 0x49u:
          case 0x4Au:
            v12 = 3;
LABEL_15:
            *v10 = v12;
            break;
          default:
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::parseEventLogRecordAMPDU(this);
              }
            }

            break;
        }

        switch(a3)
        {
          case 0u:
          case 1u:
          case 2u:
          case 3u:
          case 4u:
          case 5u:
          case 6u:
          case 7u:
          case 0x10u:
          case 0x12u:
          case 0x14u:
          case 0x16u:
          case 0x18u:
          case 0x1Au:
          case 0x1Bu:
          case 0x20u:
          case 0x21u:
          case 0x22u:
          case 0x23u:
          case 0x24u:
          case 0x25u:
          case 0x26u:
          case 0x2Du:
          case 0x2Eu:
          case 0x2Fu:
          case 0x30u:
          case 0x31u:
          case 0x36u:
          case 0x37u:
          case 0x38u:
          case 0x39u:
          case 0x3Eu:
          case 0x3Fu:
          case 0x40u:
          case 0x41u:
          case 0x42u:
          case 0x43u:
          case 0x44u:
            v11[1] = 0;
            break;
          case 8u:
          case 9u:
          case 0xAu:
          case 0xBu:
          case 0xCu:
          case 0xDu:
          case 0xEu:
          case 0xFu:
          case 0x11u:
          case 0x13u:
          case 0x15u:
          case 0x17u:
          case 0x19u:
          case 0x1Cu:
          case 0x1Du:
          case 0x1Eu:
          case 0x1Fu:
          case 0x27u:
          case 0x28u:
          case 0x29u:
          case 0x2Au:
          case 0x2Bu:
          case 0x2Cu:
          case 0x32u:
          case 0x33u:
          case 0x34u:
          case 0x35u:
          case 0x3Au:
          case 0x3Bu:
          case 0x3Cu:
          case 0x3Du:
          case 0x45u:
          case 0x46u:
          case 0x47u:
          case 0x48u:
          case 0x49u:
          case 0x4Au:
            v11[1] = 1;
            break;
          default:
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::parseEventLogRecordAMPDU(this);
              }
            }

            break;
        }

        switch(a3)
        {
          case 0u:
          case 4u:
          case 8u:
          case 0xCu:
          case 0x2Eu:
          case 0x32u:
            v11[2] = 0;
            break;
          case 1u:
          case 5u:
          case 9u:
          case 0xDu:
          case 0x2Fu:
          case 0x33u:
            v16 = 1;
            goto LABEL_39;
          case 2u:
          case 6u:
          case 0xAu:
          case 0xEu:
          case 0x30u:
          case 0x34u:
            v16 = 2;
            goto LABEL_39;
          case 3u:
          case 7u:
          case 0xBu:
          case 0xFu:
          case 0x31u:
          case 0x35u:
            v16 = 3;
            goto LABEL_39;
          case 0x10u:
          case 0x11u:
          case 0x12u:
          case 0x13u:
            v16 = 4;
            goto LABEL_39;
          case 0x14u:
          case 0x15u:
          case 0x16u:
          case 0x17u:
            v16 = 7;
            goto LABEL_39;
          case 0x18u:
          case 0x19u:
            v16 = 5;
            goto LABEL_39;
          case 0x1Au:
          case 0x1Bu:
          case 0x1Eu:
          case 0x1Fu:
          case 0x20u:
          case 0x28u:
          case 0x3Eu:
          case 0x46u:
            v16 = 8;
            goto LABEL_39;
          case 0x1Cu:
          case 0x1Du:
          case 0x27u:
          case 0x45u:
            v16 = 6;
            goto LABEL_39;
          case 0x21u:
          case 0x3Fu:
            v16 = 10;
            goto LABEL_39;
          case 0x22u:
          case 0x40u:
            v16 = 16;
            goto LABEL_39;
          case 0x23u:
          case 0x41u:
            v16 = 12;
            goto LABEL_39;
          case 0x24u:
          case 0x42u:
            v16 = 15;
            goto LABEL_39;
          case 0x25u:
          case 0x43u:
            v16 = 11;
            goto LABEL_39;
          case 0x26u:
          case 0x2Bu:
          case 0x44u:
          case 0x49u:
            v16 = 17;
            goto LABEL_39;
          case 0x29u:
          case 0x47u:
            v16 = 14;
            goto LABEL_39;
          case 0x2Au:
          case 0x48u:
            v16 = 13;
            goto LABEL_39;
          case 0x2Cu:
          case 0x4Au:
            v16 = 18;
LABEL_39:
            v11[2] = v16;
            break;
          case 0x2Du:
            break;
          default:
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::parseEventLogRecordAMPDU(this);
              }
            }

            break;
        }

        if (v11[2] != 5)
        {
          v11[3] = a4 >> 2;
          BytesNoCopy = OSData::getBytesNoCopy(a2, 4uLL, a4);
          v20 = v11 + 4;
          v21 = a4;
          goto LABEL_46;
        }

        v17 = OSData::getBytesNoCopy(a2);
        v18 = v17;
        if (a4 <= 7)
        {
          v13 = 3758097084;
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::parseEventLogRecordAMPDU();
            }
          }

LABEL_57:
          IOFreeData();
          return v13;
        }

        if (v17[1] != a4)
        {
          v13 = 3758097084;
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              v23 = (*(*this + 1952))(this);
              CCLogStream::logEmergency(v23, "[dk] %s@%d:Length for Density Distribution len %d, aggregationDens->len %d\n", "parseEventLogRecordAMPDU", 16301, a4, v18[1]);
            }
          }

          goto LABEL_57;
        }

        v21 = a4 - 8;
        v11[3] = (a4 - 8) >> 2;
        if (v9 >= v21)
        {
          v20 = v11 + 4;
          BytesNoCopy = v18 + 6;
LABEL_46:
          memcpy(v20, BytesNoCopy, v21);
          if (IO80211Controller::setAMPDUstat())
          {
            v13 = 0;
          }

          else
          {
            v13 = 3758097084;
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::parseEventLogRecordAMPDU(this);
              }
            }
          }

          goto LABEL_57;
        }

        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parseEventLogRecordAMPDU(this);
          }
        }

        v13 = 3758096385;
      }

      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::parseEventLogRecordAMPDU(this);
        }
      }

      goto LABEL_57;
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      v13 = 3758097085;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::parseEventLogRecordAMPDU(this);
      }
    }

    else
    {
      return 3758097085;
    }
  }

  else
  {
    v13 = 3758097084;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        v14 = (*(*this + 1952))(this);
        Length = OSData::getLength(a2);
        CCLogStream::logEmergency(v14, "[dk] %s@%d:Unexpected length payload, total len %d, needs to support nBins %ld totalling %d\n", "parseEventLogRecordAMPDU", 15943, Length, a4 >> 2, a4);
      }
    }
  }

  return v13;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordWLCounters(AppleBCMWLANCore *this, OSData *a2)
{
  v4 = IOMallocZeroData();
  if (!v4)
  {
    return 12;
  }

  if (AppleBCMWLANCore::convertWlCntToApple80211ChipStats(this, a2, v4))
  {
    AppleBCMWLANCore::parseEventLogRecordWLCounters(this);
LABEL_12:
    v6 = v8;
    goto LABEL_6;
  }

  v5 = *(*(this + 9) + 5608);
  if (v5 && AppleBCMWLANLQM::updateInfraStatistics(v5, a2))
  {
    AppleBCMWLANCore::parseEventLogRecordWLCounters(this);
    goto LABEL_12;
  }

  v6 = 0;
  if ((IO80211Controller::setChipCounterStats() & 1) == 0)
  {
    AppleBCMWLANCore::parseEventLogRecordWLCounters(this);
    goto LABEL_12;
  }

LABEL_6:
  IOFreeData();
  return v6;
}

uint64_t AppleBCMWLANCore::convertWlCntToApple80211ChipStats(AppleBCMWLANCore *a1, OSData *a2, unsigned __int16 **a3)
{
  v10 = 0;
  memset(v11, 170, sizeof(v11));
  AppleBCMWLANUtil::AutoreleasedAlignedOSData::AutoreleasedAlignedOSData(v11, a2, 4);
  v5 = v11[0];
  if (v11[0])
  {
    a3[153] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v11[0], 4uLL);
    a3[154] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 8uLL);
    a3[155] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0xCuLL);
    a3[156] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x10uLL);
    a3[157] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x14uLL);
    a3[158] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x18uLL);
    a3[159] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1CuLL);
    a3[160] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x20uLL);
    a3[161] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x24uLL);
    a3[162] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x28uLL);
    a3[163] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x2CuLL);
    a3[164] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x30uLL);
    a3[172] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x40uLL);
    a3[173] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x44uLL);
    a3[174] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x48uLL);
    a3[175] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x4CuLL);
    a3[176] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x50uLL);
    a3[177] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x34CuLL);
    a3[178] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x54uLL);
    a3[179] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x58uLL);
    a3[180] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x5CuLL);
    a3[181] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x60uLL);
    a3[182] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x64uLL);
    a3[183] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x68uLL);
    a3[184] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x6CuLL);
    a3[185] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x70uLL);
    a3[186] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x74uLL);
    a3[187] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x78uLL);
    a3[188] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x7CuLL);
    a3[166] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x34uLL);
    a3[167] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x38uLL);
    a3[168] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x3CuLL);
    a3[169] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x210uLL);
    a3[170] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x2A0uLL);
    a3[190] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x104uLL);
    a3[191] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x108uLL);
    a3[192] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x10CuLL);
    a3[193] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x110uLL);
    a3[194] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x114uLL);
    a3[195] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x118uLL);
    a3[196] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x11CuLL);
    a3[213] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x294uLL);
    a3[214] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x298uLL);
    a3[215] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x29CuLL);
    a3[199] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x120uLL);
    a3[200] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x124uLL);
    a3[201] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x128uLL);
    a3[202] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x12CuLL);
    a3[203] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x130uLL);
    a3[204] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x134uLL);
    a3[205] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x138uLL);
    a3[206] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x13CuLL);
    a3[207] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x140uLL);
    a3[208] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x144uLL);
    a3[209] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x148uLL);
    a3[210] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x14CuLL);
    a3[211] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x150uLL);
    a3[212] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x154uLL);
    a3[22] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x35CuLL);
    a3[23] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1A4uLL);
    a3[24] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x364uLL);
    a3[25] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0xC8uLL);
    a3[26] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0xCCuLL);
    a3[27] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0xD0uLL);
    *a3 = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x360uLL);
    a3[1] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1A0uLL);
    a3[2] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x368uLL);
    CounterValueSafe = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x12CuLL);
    a3[3] = (CounterValueSafe + AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x144uLL));
    v7 = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x130uLL);
    a3[4] = (v7 + AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x148uLL));
    a3[5] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x134uLL);
    a3[122] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x37CuLL);
    a3[123] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x394uLL);
    a3[124] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x384uLL);
    a3[125] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x39CuLL);
    a3[126] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x3B4uLL);
    a3[127] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x3BCuLL);
    a3[128] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0xD8uLL);
    *(*(a1 + 9) + 17504) = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0xD8uLL);
    a3[130] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x38CuLL);
    a3[131] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x3A4uLL);
    a3[132] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x3ACuLL);
    a3[133] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x3C4uLL);
    a3[106] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x380uLL);
    a3[107] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x398uLL);
    a3[108] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x388uLL);
    a3[109] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x3A0uLL);
    a3[110] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x3B8uLL);
    a3[111] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x3C0uLL);
    if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 93))
    {
      a3[118] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x3CCuLL);
    }

    a3[112] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x158uLL);
    *(*(a1 + 9) + 17496) = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x158uLL);
    a3[114] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x390uLL);
    a3[115] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x3A8uLL);
    a3[116] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x3B0uLL);
    a3[117] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x3C8uLL);
    a3[79] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x36CuLL);
    a3[86] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x374uLL);
    a3[48] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x370uLL);
    a3[55] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x378uLL);
    a3[217] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1E0uLL);
    a3[218] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1E4uLL);
    a3[219] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1E8uLL);
    a3[220] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1ECuLL);
    a3[221] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1F0uLL);
    a3[222] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1F4uLL);
    a3[223] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1F8uLL);
    a3[224] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1FCuLL);
    a3[225] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x200uLL);
    a3[226] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x204uLL);
    a3[227] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x208uLL);
    a3[228] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x20CuLL);
    a3[230] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x2B8uLL);
    a3[231] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x2BCuLL);
    a3[232] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x2C0uLL);
    a3[233] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x2C4uLL);
    a3[234] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x2C8uLL);
    a3[235] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x2CCuLL);
    a3[236] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x2D0uLL);
    a3[237] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x2D4uLL);
    a3[238] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x2D8uLL);
    a3[239] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x2DCuLL);
    a3[240] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x2E0uLL);
    a3[241] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x2E4uLL);
    a3[243] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1A8uLL);
    a3[244] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1ACuLL);
    a3[245] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1B0uLL);
    a3[246] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1B4uLL);
    a3[247] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1B8uLL);
    a3[248] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1BCuLL);
    a3[249] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1C0uLL);
    a3[250] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1C4uLL);
    a3[251] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1C8uLL);
    a3[252] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1CCuLL);
    a3[253] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1D0uLL);
    a3[254] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1D4uLL);
    a3[255] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1D8uLL);
    a3[256] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1DCuLL);
    v8 = v10;
  }

  else
  {
    v8 = 3758097084;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::convertWlCntToApple80211ChipStats(a1);
      }
    }
  }

  AppleBCMWLANUtil::AutoreleasedAlignedOSData::~AutoreleasedAlignedOSData(v11);
  return v8;
}