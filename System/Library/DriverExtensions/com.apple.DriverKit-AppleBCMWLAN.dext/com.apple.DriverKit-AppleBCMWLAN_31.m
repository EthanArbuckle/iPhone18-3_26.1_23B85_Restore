uint64_t AppleBCMWLANCore::prepareScanRejectStatsForCA(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Prepared Scan Reject Stats event to CA\n", "prepareScanRejectStatsForCA", 42441);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueRejBlocked\n", "prepareScanRejectStatsForCA", 42438);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyRejBlocked\n", "prepareScanRejectStatsForCA", 42436);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueRejLLSupp\n", "prepareScanRejectStatsForCA", 42432);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyRejLLSupp\n", "prepareScanRejectStatsForCA", 42430);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueRejLowRssiRoam\n", "prepareScanRejectStatsForCA", 42426);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyRejLowRssiRoam\n", "prepareScanRejectStatsForCA", 42424);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueRejIPRes\n", "prepareScanRejectStatsForCA", 42420);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyRejIPRes\n", "prepareScanRejectStatsForCA", 42418);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueRejBusy\n", "prepareScanRejectStatsForCA", 42414);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyRejBusy\n", "prepareScanRejectStatsForCA", 42412);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueRejJoin\n", "prepareScanRejectStatsForCA", 42408);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyRejJoin\n", "prepareScanRejectStatsForCA", 42406);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueRejLowPrio\n", "prepareScanRejectStatsForCA", 42402);
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyRejLowPrio\n", "prepareScanRejectStatsForCA", 42400);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logCrit(v5, "[dk] %s@%d:Failed to allocate AppleBCMWLANRoamManager_IVars\n", "prepareScanRejectStatsForCA", 42398);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Fail to allocate numValue\n", "SendSlicesScanStatsCoreAnalytics", 42962);
    }
  }

  *v1 = v2;
  return result;
}

{
  v3 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:Fail to allocate keyString\n", "SendSlicesScanStatsCoreAnalytics", 42959);
    }
  }

  *v1 = 0;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Fail to allocate numValue\n", "SendSlicesScanStatsCoreAnalytics", 42952);
    }
  }

  *v1 = v2;
  return result;
}

{
  v3 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:Fail to allocate keyString\n", "SendSlicesScanStatsCoreAnalytics", 42949);
    }
  }

  *v1 = 0;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Fail to allocate numValue\n", "SendSlicesScanStatsCoreAnalytics", 42942);
    }
  }

  *v1 = v2;
  return result;
}

{
  v3 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:Fail to allocate keyString\n", "SendSlicesScanStatsCoreAnalytics", 42939);
    }
  }

  *v1 = 0;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Fail to allocate numValue\n", "SendSlicesScanStatsCoreAnalytics", 42932);
    }
  }

  *v1 = v2;
  return result;
}

{
  v3 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:Fail to allocate keyString\n", "SendSlicesScanStatsCoreAnalytics", 42929);
    }
  }

  *v1 = 0;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Fail to allocate numValue\n", "SendSlicesScanStatsCoreAnalytics", 42922);
    }
  }

  *v1 = v2;
  return result;
}

{
  v3 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:Fail to allocate keyString\n", "SendSlicesScanStatsCoreAnalytics", 42919);
    }
  }

  *v1 = 0;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Fail to allocate numValue\n", "SendSlicesScanStatsCoreAnalytics", 42909);
    }
  }

  *v1 = v2;
  return result;
}

{
  v3 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:Fail to allocate keyString\n", "SendSlicesScanStatsCoreAnalytics", 42906);
    }
  }

  *v1 = 0;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Fail to allocate numValue\n", "SendSlicesScanStatsCoreAnalytics", 42899);
    }
  }

  *v1 = v2;
  return result;
}

{
  v3 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:Fail to allocate keyString\n", "SendSlicesScanStatsCoreAnalytics", 42896);
    }
  }

  *v1 = 0;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Fail to allocate numValue\n", "SendSlicesScanStatsCoreAnalytics", 42889);
    }
  }

  *v1 = v2;
  return result;
}

{
  v3 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:Fail to allocate keyString\n", "SendSlicesScanStatsCoreAnalytics", 42886);
    }
  }

  *v1 = 0;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Fail to allocate numValue\n", "SendSlicesScanStatsCoreAnalytics", 42879);
    }
  }

  *v1 = v2;
  return result;
}

{
  v3 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:Fail to allocate keyString\n", "SendSlicesScanStatsCoreAnalytics", 42876);
    }
  }

  *v1 = 0;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Fail to allocate numValue\n", "SendSlicesScanStatsCoreAnalytics", 42869);
    }
  }

  *v1 = v2;
  return result;
}

{
  v3 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:Fail to allocate keyString\n", "SendSlicesScanStatsCoreAnalytics", 42866);
    }
  }

  *v1 = 0;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Fail to allocate numValue\n", "SendSlicesScanStatsCoreAnalytics", 42858);
    }
  }

  *v1 = v2;
  return result;
}

{
  v3 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:Fail to allocate keyString\n", "SendSlicesScanStatsCoreAnalytics", 42855);
    }
  }

  *v1 = 0;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Fail to allocate numValue\n", "SendSlicesScanStatsCoreAnalytics", 42848);
    }
  }

  *v1 = v2;
  return result;
}

{
  v3 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:Fail to allocate keyString\n", "SendSlicesScanStatsCoreAnalytics", 42845);
    }
  }

  *v1 = 0;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Fail to allocate numValue\n", "SendSlicesScanStatsCoreAnalytics", 42838);
    }
  }

  *v1 = v2;
  return result;
}

{
  v3 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:Fail to allocate keyString\n", "SendSlicesScanStatsCoreAnalytics", 42835);
    }
  }

  *v1 = 0;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Fail to allocate numValue\n", "SendSlicesScanStatsCoreAnalytics", 42828);
    }
  }

  *v1 = v2;
  return result;
}

{
  v3 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:Fail to allocate keyString\n", "SendSlicesScanStatsCoreAnalytics", 42825);
    }
  }

  *v1 = 0;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Fail to allocate numValue\n", "SendSlicesScanStatsCoreAnalytics", 42818);
    }
  }

  *v1 = v2;
  return result;
}

{
  v3 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:Fail to allocate keyString\n", "SendSlicesScanStatsCoreAnalytics", 42815);
    }
  }

  *v1 = 0;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Fail to allocate numValue\n", "SendSlicesScanStatsCoreAnalytics", 42806);
    }
  }

  *v1 = v2;
  return result;
}

{
  v3 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:Fail to allocate keyString\n", "SendSlicesScanStatsCoreAnalytics", 42804);
    }
  }

  *v1 = 0;
  return result;
}

{
  v3 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:Fail to allocate eventPayload\n", "SendSlicesScanStatsCoreAnalytics", 42799);
    }
  }

  *v1 = 0;
  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate eventName\n", "SendSlicesScanStatsCoreAnalytics", 42797);
    }
  }

  return result;
}

void AppleBCMWLANCore::sendePNOEventsCoreAnalytics(uint64_t *a1)
{
  OUTLINED_FUNCTION_33_3(a1);
  if ((*(v2 + 1952))())
  {
    (*(*v1 + 1952))(v1);
    if (CCLogStream::shouldLog())
    {
      v3 = (*(*v1 + 1952))(v1);
      CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate eventPayload\n", "sendePNOEventsCoreAnalytics", 43026);
    }
  }

  OUTLINED_FUNCTION_208();
}

{
  OUTLINED_FUNCTION_33_3(a1);
  if ((*(v2 + 1952))())
  {
    (*(*v1 + 1952))(v1);
    if (CCLogStream::shouldLog())
    {
      v3 = (*(*v1 + 1952))(v1);
      CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate eventPayload\n", "sendePNOEventsCoreAnalytics", 43017);
    }
  }

  OUTLINED_FUNCTION_208();
}

{
  OUTLINED_FUNCTION_33_3(a1);
  if ((*(v2 + 1952))())
  {
    (*(*v1 + 1952))(v1);
    if (CCLogStream::shouldLog())
    {
      v3 = (*(*v1 + 1952))(v1);
      CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate eventPayload\n", "sendePNOEventsCoreAnalytics", 43008);
    }
  }

  OUTLINED_FUNCTION_208();
}

{
  OUTLINED_FUNCTION_33_3(a1);
  if ((*(v2 + 1952))())
  {
    (*(*v1 + 1952))(v1);
    if (CCLogStream::shouldLog())
    {
      v3 = (*(*v1 + 1952))(v1);
      CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate eventPayload\n", "sendePNOEventsCoreAnalytics", 42999);
    }
  }

  OUTLINED_FUNCTION_208();
}

uint64_t AppleBCMWLANCore::sendePNOEventsCoreAnalytics(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate eventName\n", "sendePNOEventsCoreAnalytics", 43024);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate eventName\n", "sendePNOEventsCoreAnalytics", 43015);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate eventName\n", "sendePNOEventsCoreAnalytics", 43006);
    }
  }

  return result;
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Submitted ePNO event type %d to CA\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate valueePNOevent\n", "sendePNOEventsCoreAnalytics", 43033);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate eventName\n", "sendePNOEventsCoreAnalytics", 42997);
    }
  }

  return result;
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyePNOevent\n", "sendePNOEventsCoreAnalytics", 43031);
}

uint64_t AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendSCTxBlankingStatsEventCoreAnalytics", 43221);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendSCTxBlankingStatsEventCoreAnalytics", 43213);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendSCTxBlankingStatsEventCoreAnalytics", 43205);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendSCTxBlankingStatsEventCoreAnalytics", 43197);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendSCTxBlankingStatsEventCoreAnalytics", 43189);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendSCTxBlankingStatsEventCoreAnalytics", 43181);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendSCTxBlankingStatsEventCoreAnalytics", 43173);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendSCTxBlankingStatsEventCoreAnalytics", 43165);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendSCTxBlankingStatsEventCoreAnalytics", 43157);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendSCTxBlankingStatsEventCoreAnalytics", 43149);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendSCTxBlankingStatsEventCoreAnalytics", 43141);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendSCTxBlankingStatsEventCoreAnalytics", 43133);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendSCTxBlankingStatsEventCoreAnalytics", 43125);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendSCTxBlankingStatsEventCoreAnalytics", 43117);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendSCTxBlankingStatsEventCoreAnalytics", 43109);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendSCTxBlankingStatsEventCoreAnalytics", 43101);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendSCTxBlankingStatsEventCoreAnalytics", 43093);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate eventPayload\n", "sendSCTxBlankingStatsEventCoreAnalytics", 43090);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate eventName\n", "sendSCTxBlankingStatsEventCoreAnalytics", 43088);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::updateDynSARSimpleReport(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      v8 = *v2 + (v1 << 6);
      v9 = *(v8 + 4760);
      return CCLogStream::logEmergency(v7, "[dk] %s@%d: Overflow detected: non_opt_dur[%llu] pwr_opt_dur[%llu] fail_safe_dur[%llu] no_mute_dur[%llu] hybrid_dur[%llu] txdc_throttle_dur[%llu] pwr_opt_txdc_throttle_dur[%llu]\n", "updateDynSARSimpleReport", 43268, *(v8 + 4744), *(v8 + 4752), *(v8 + 4760), *(v8 + 4768), *(v8 + 4776), *(v8 + 4784), *(v8 + 4792));
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::configureLPASEntry(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to enable LPAS mode in F/W\n", "configureLPASEntry", 43751);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to Configure LPAS Packet Filters\n", "configureLPASEntry", 43783);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::configureWoWEntry(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Configuring NAT/CarPlay/VPN Keep-Alives Not Supported\n", "configureWoWEntry", 43890);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to configure NAT/CarPlay/VPN Keep Alives\n", "configureWoWEntry", 43892);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to Configure Pkt Filters\n", "configureWoWEntry", 43898);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to UnConfigure Pkt Filters\n", "configureWoWEntry", 43901);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::configureAssociatedSleepEntryParams(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to turn on Link Up filtering: %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_6(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_232();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: rval[0x%08x], fAssociatedbeforeSleep[%u] -> true, fPowerSaveMode[%u]\n", v5, v6, v7, v8, v9);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::configureLPASMode(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v5, v6, v7);
}

{
  v3 = OUTLINED_FUNCTION_10_5(a1);
  (*(v4 + 1952))(v3);
  v5 = OUTLINED_FUNCTION_12_1();
  IsBitSet = AppleBCMWLANCore::featureFlagIsBitSet(v5, 26);
  v7 = AppleBCMWLANCore::featureFlagIsBitSet(v1, 70);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: rval[0x%08x], supported[%u] concurrency[%u] softAP[%u] fLPASEnabledBeforeSleep[%u] fPowerSaveMode[%u]\n", "configureLPASMode", 50458, 0, IsBitSet, v7, (*(*(v1 + 9) + 19801) >> 2) & 1, *(*(v1 + 9) + 777), *(*(v1 + 9) + 6724));
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failure to configure LPAS in FW: %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::configureLPASMode(uint64_t *a1, uint64_t a2, _DWORD *a3)
{
  v5 = OUTLINED_FUNCTION_0_8(a1);
  (*(v6 + 1952))(v5);
  OUTLINED_FUNCTION_3_5();
  v8 = *(v7 + 112);
  v9 = OUTLINED_FUNCTION_172();
  v11 = v10(v9);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: LPAS request in FW: %s %d \n", "configureLPASMode", 50485, v11, *a3);
}

uint64_t AppleBCMWLANCore::configurePktFilters(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Lost Link while configuring Packet Filters\n", "configurePktFilters", 50071);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to get packet filter data\n", "configurePktFilters", 50091);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to Configure Legacy Unicast Filter\n", "configurePktFilters", 50157);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to Configure IPv4 Pkt Filter ID %d\n", "configurePktFilters", 50118, 102);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Failed to Configure Max Num of Pkt Filters\n", "configurePktFilters", 50130);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to Configure IPv6 Pkt Filter %d\n", "configurePktFilters", 50137, 107);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Added %s Filters\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to Configure Magic Packet Filter %d at offset %d\n", "configurePktFilters", 50178, 104, 14);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to configure Magic Packet Filter %d\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to configure Active Ports, Disable Port Filtering and rely on IP Filtering\n", "configurePktFilters", 50211);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to turn on IP packet filter: %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unicast IPv4 filter enabled (ID=%d)\n", "configurePktFilters", 50232, 102);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to turn on ARP Offload\n", "configurePktFilters", 50238);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ARP Offload enabled\n", "configurePktFilters", 50242);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Enabled the 'ICMP' packet filter\n", "configurePktFilters", 50261);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Neighbor Discovery Offload Enabled in F/W\n", "configurePktFilters", 50268);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Enabled IPv6 Pkt Filters\n", "configurePktFilters", 50272);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to turn on IPv6 packet filter: %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logNotice(v4, "(ID=%d) \n", v1);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to turn on Magic packet filter: %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Enabled WOMP filter  (ID=%d) (ID=%d)\n", "configurePktFilters", 50292, 104, 105);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s: Enable WoWEapolFilter\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to turn on EAPOL filter: %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to turn on Magic packet filter: %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: WOMP Magic Packet filter enabled (ID=%d)  \n", "configurePktFilters", 50310, 104);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to allocate packet filter buffer\n", "configurePktFilters", 50078);
}

uint64_t AppleBCMWLANCore::unConfigurePktFilters(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to configure Active Ports\n", "unConfigurePktFilters", 50328);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to turn off IPv4 packet filter: %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d: Disabled IPv4 packet filter\n", "unConfigurePktFilters", 50338);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d: Disabled ARP Offload:\n", "unConfigurePktFilters", 50345);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d: Disabled the 'ICMP' packet filter\n", "unConfigurePktFilters", 50350);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to turn off IPv6 packet filter: %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Disabling WoWEapolFiter\n", "unConfigurePktFilters", 50361);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to turn off magic packet filter: %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::initialize6GCapabilities(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlertIf(v3, 0x4000uLL, "[dk] %s@%d:%s WiFiRoam : 6GHz configuration not allowed\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlertIf(v3, 0x4000uLL, "[dk] %s@%d:%s WiFiRoam : 6GHz configuration IS allowed\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::configureAvgRssiParamsForAssociatedSleepEntry(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d:Associated to IBSS, Bailout\n", "configureAvgRssiParamsForAssociatedSleepEntry", 55794);
}

uint64_t AppleBCMWLANCore::resetClockDrifts(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Failed to reset drift stats\n", "resetClockDrifts", 44646);
}

uint64_t AppleBCMWLANCore::updateInactivityAndSleepCounters(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1952))(v3);
  return CCLogStream::logInfo(v5, "[dk] %s@%d:Most recent traffic inactivity duration = %llu, Accumulated = %llu \n", "updateInactivityAndSleepCounters", 55631, v1 - *(*v2 + 17712), *(*v2 + 17728));
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1952))(v3);
  return CCLogStream::logAlert(v5, "[dk] %s@%d:Most recent LPAS/WoW duration = %llu Accumulated = %llu \n", "updateInactivityAndSleepCounters", 55625, v1 - *(*v2 + 17720), *(*v2 + 17736));
}

uint64_t AppleBCMWLANCore::configureAvgRssiParamsForAssociatedSleepExit(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d:Associated to IBSS, Bailout\n", "configureAvgRssiParamsForAssociatedSleepExit", 55823);
}

uint64_t AppleBCMWLANCore::configureLPASExit(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_12_1();
  AppleBCMWLANCore::featureFlagIsBitSet(v4, 26);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: LPAS supported[%u]\n", v6, v7, v8);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to disable LPAS mode in F/W\n", "configureLPASExit", 44199);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to UnConfigure Pkt Filters\n", "configureLPASExit", 44205);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::configureWoWExit(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to UnConfigure Keep-Alives\n", "configureWoWExit", 44251);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to UnConfigure Pkt Filters\n", "configureWoWExit", 44264);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::configureAssociatedSleepExitParams(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to turn off Link Up filtering %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to release Events\n", "configureAssociatedSleepExitParams", 44326);
}

{
  v1 = OUTLINED_FUNCTION_5_6(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_232();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: rval[0x%08x], fAssociatedbeforeSleep[%u] -> false, fPowerSaveMode[%u]\n", v5, v6, v7, v8, v9);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::timeSinceLastActivity_abs(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_19_6(a1);
  result = (*(v8 + 1952))();
  if (result)
  {
    (*(*v6 + 1952))(v6);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v10 = (*(*v6 + 1952))(v6);
      result = CCLogStream::logEmergency(v10, "[dk] %s@%d: Overflow detected, now_abs[%llu] ivars->fLastLinkActivity_abs[%llu]\n", "timeSinceLastActivity_abs", 44804, *v5, *(*v4 + 6536));
    }
  }

  *a4 = 0;
  return result;
}

uint64_t AppleBCMWLANCore::captureRequestCallback(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Problem reported from corecapture: %s \n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Faulter Reporter is busy!\n", "captureRequestCallback", 45490);
}

uint64_t AppleBCMWLANCore::setLogFlagsCallback(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Setting loggerstream flags to 0x%llX\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::getFeatures(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1952))(v3);
  return CCLogStream::logInfoIf(v5, 0x80uLL, "[dk] %s@%d:[WiFiTimeSync] ptmMode = %d supported features = 0x%x\n", "getFeatures", 45960, *(*v2 + 30088), v1);
}

uint64_t AppleBCMWLANCore::getCHANNELS_INFO(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*v1 + 19916);
  OUTLINED_FUNCTION_198();
  return CCLogStream::logAlert(v5, "[dk] %s@%d:Querying FW as number of chanspecs is %d, current CC %s\n", "getCHANNELS_INFO", 46077, v7, v8);
}

uint64_t AppleBCMWLANCore::getCOUNTRY_BAND_SUPPORT(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logInfo(v3, "[dk] %s@%d: %s WiFiMC : Country supports 6GHz\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::handleGetChanSpecs(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error: cannot get chanspecs: %s\n", v9, v10, v11);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1952))(v3);
  return CCLogStream::logNoticeIf(v5, 0x4000000400uLL, "[dk] %s@%d:Num chanspecs in response: %d, Saved: %d\n", "handleGetChanSpecs", 46214, *v2, v1);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_234();
  OUTLINED_FUNCTION_139();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:WiFiCC : Writing current FW country code [%s] to fChanListQueriedForCountryCode\n", "handleGetChanSpecs", 46235, v5);
}

uint64_t AppleBCMWLANCore::get6GTxPowerFromFW(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Invalid power mode %d\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::handleGetCountryListAsyncCallBack(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to retrieve country code list from firmware: %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d:No valid data\n", "handleGetCountryListAsyncCallBack", 46593);
}

uint64_t AppleBCMWLANCore::handleGet6ECountryListAsyncCallBack(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to retrieve country code list from firmware: %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:WiFiCC : Total # of 6E supported countries in CLM: %d\n", "handleGet6ECountryListAsyncCallBack", 46628, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d:No valid data\n", "handleGet6ECountryListAsyncCallBack", 46623);
}

uint64_t AppleBCMWLANCore::getGUARD_INTERVAL(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:nrate failed, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::getPOWER_DEBUG_INFO(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d: Failed to get PM/MPC Duration Values, retrieving Cached Values \n", "getPOWER_DEBUG_INFO", 47498);
}

uint64_t AppleBCMWLANCore::collectOPSEBTStatus(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to Collect OPS Stats\n", "collectOPSEBTStatus", 48103);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to Collect EBT Status\n", "collectOPSEBTStatus", 48121);
}

uint64_t AppleBCMWLANCore::getActivePortsFromNetworkStack(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to get packet filter data\n", "getActivePortsFromNetworkStack", 48296);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1952))(v3);
  return CCLogStream::logAlert(v5, "[dk] %s@%d:%s: Number of active ports - %d networking %d arr size %lu \n", "getActivePortsFromNetworkStack", 48305, "getActivePortsFromNetworkStack", *(*v2 + 10300), *v1, 128);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: is enabled but there are no active ports in the system, falling back to legacy WoW \n", "getActivePortsFromNetworkStack", 48315);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to allocate packet filter buffer\n", "getActivePortsFromNetworkStack", 48283);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ivars->fInfraSkywalkInterface is null\n", "getActivePortsFromNetworkStack", 48235);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::configureActivePortsInToChip(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to configure Packet Port List : %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::configureMaxPktFilter(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::configureComplexFilters(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::configureComplexFilters(uint64_t *a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = OUTLINED_FUNCTION_11_4(a1);
  v7 = (*(v6 + 1952))(v5);
  my_ip6_sprintf((*(v3 + 72) + 16 * a3 + 9524));
  OUTLINED_FUNCTION_6();
  return CCLogStream::logInfo(v7, "[dk] %s@%d:IPv6 address %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::configureComplexFilters()
{
  OUTLINED_FUNCTION_32_1();
  v3 = OUTLINED_FUNCTION_5_5(v2);
  v5 = (*(v4 + 1952))(v3);
  v6 = *v0;
  v7 = *(*v0 + 10040);
  v8 = my_ip6_sprintf((v6 + 16 * v1 + 9524));
  return CCLogStream::logAlert(v5, "[dk] %s@%d: Added complex filter: ipv6 filterType[%u] index[%u], addr count[%u] '%s'\n", "configureComplexFilters", 48638, 107, v1, v7, v8);
}

uint64_t AppleBCMWLANCore::configureEapolFilter(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s: Configuring WoWEapolFilter\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: pkt_filter_add failed to set packet filter: %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::configureMagicPktFilter(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:%s: Failed to get magic pattern data (%d)\n", "configureMagicPktFilter", 48713, "configureMagicPktFilter", v1);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: pkt_filter_add failed to set packet filter: %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::configureMagicPktFilter()
{
  OUTLINED_FUNCTION_32_1();
  v3 = OUTLINED_FUNCTION_5_5(v2);
  v5 = (*(v4 + 1952))(v3);
  return CCLogStream::logAlert(v5, "[dk] %s@%d:Magic pattern(%d) length - %d\n", "configureMagicPktFilter", 48729, v1, *(v0 + 42 * v1 + 4));
}

uint64_t AppleBCMWLANCore::configureMagicPktFilter(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = OUTLINED_FUNCTION_29_5(a1);
  (*(v8 + 1952))(v7);
  v9 = OUTLINED_FUNCTION_77();
  ClassNameHelper = getClassNameHelper(v9);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:%s::%s():invalid parameters %d %u\n", "configureMagicPktFilter", 48750, ClassNameHelper, "configureMagicPktFilter", *(*a3 + 19848), a4);
}

uint64_t AppleBCMWLANCore::configureLegacyFilters(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to set IP address packet filter: %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Added Unicast IP filter \n", "configureLegacyFilters", 48806);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::enablePacketFilters(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Lost Link while enabling Packet Filters\n", "enablePacketFilters", 48821);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::disablePacketFilters(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::deleteIPv6PktFilters(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to delete Unicast IPv6 address packet filter: %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::deleteIPv4PktFilters(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Failed SET IOCTL, cret[0x%08x]\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::deleteEapolFilter(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s: deleting WoWEapolFilter\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Failed SET IOCTL, cret[0x%08x]\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::deleteMagicPktFilters(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Failed SET IOCTL, cret[0x%08x]\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Failed SET IOCTL, cret[0x%08x]\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::resetWoWConfig(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to enable EBT in F/W\n", "resetWoWConfig", 49019);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d: Deleted IPv4/IPv6 and Magic packet filters\n", "resetWoWConfig", 49025);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::resetOffloads(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::configureICMP(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::isIPv6AlreadyProgrammed(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::configureARPOffload(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Unable to turn on ARP monitoring: %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Failed SET IOCTL, cret[0x%08x]\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:%s: Failed to get protocol offload data (%d)\n", "configureARPOffload", 49124, "configureARPOffload", v1);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to program IP address for ARP filtering: %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::configureNeighbourDiscovery(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Failed to configure HOST IPs for Neighbor Discovery\n", "configureNeighbourDiscovery", 49320);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::clearHostIPv6TableForNeighbourDiscovery(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to Clear IPV6 addresses from to IPV6 Table %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::configureHostIPsForNeighbourDiscovery(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:%s: Failed to get protocol offload data (%d)\n", "configureHostIPsForNeighbourDiscovery", 49341, "configureHostIPsForNeighbourDiscovery", v1);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to add IPV6 address in to IPV6 Table %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::getNeighbourDiscoveryStats(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failure to get Neighbour Discovery status: %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed collect Neighbor Discovery Stats %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::ignoreUnicastPackets(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to configure Packet Port  0 : %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::disableECounters(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:setEcountersEnableStateSync fail =(0x%x) from disableECounters\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::enableECounters(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:setEcountersEnableStateSync fail =(0x%x) from enableECounters\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::enableECountersV2(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Unable to set ecounters V2: %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::enableECountersV1(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Unable to set ecounters: %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::disableECountersV1(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Unable to set ecounters: %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::configureEventLogShrinkStats(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Event Log Configuration failed\n", "configureEventLogShrinkStats", 52662);
}

uint64_t AppleBCMWLANCore::handleEventLogGetAsyncCallback(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:LQM-WiFi-Roam: fail to dump roam target evaluation - %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::setTxHighCapTimeout(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: txcap high power timeout is not supported!\n", "setTxHighCapTimeout", 53497);
}

uint64_t AppleBCMWLANCore::sendTxPowerCapBypassToFirmware(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to set txcapbypass: %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_233();
  v5 = "UNINITIALIZED";
  v6 = *(v4 + 3388);
  if (v6)
  {
    v7 = "UNINITIALIZED";
  }

  else
  {
    v7 = "INACTIVE";
  }

  if (v6 == 1)
  {
    v8 = "ACTIVE";
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 3392);
  if (!v9)
  {
    v5 = "INACTIVE";
  }

  if (v9 == 1)
  {
    v10 = "ACTIVE";
  }

  else
  {
    v10 = v5;
  }

  return CCLogStream::logAlert(v3, "[dk] %s@%d:builtInReceiverState is %s and cellularTxState is %s. Skipping setting txcapbypass iovar\n", "sendTxPowerCapBypassToFirmware", 53289, v8, v10);
}

uint64_t AppleBCMWLANCore::getTxPowerCapState(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to retrive txcap state: ret  %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: txcap state is not supported!\n", "getTxPowerCapState", 53366);
}

uint64_t AppleBCMWLANCore::getTxPowerCapStateV3(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to retrive txcap state: ret  %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: txcap state is not supported!\n", "getTxPowerCapStateV3", 53389);
}

uint64_t AppleBCMWLANCore::getTxPowerCapStateV4(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to retrive txcap state: ret  %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: txcap state is not supported!\n", "getTxPowerCapStateV4", 53412);
}

uint64_t AppleBCMWLANCore::getTxPowerCapDebugInfoV3(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to retrive txcap state: ret  %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: txcap dump is not supported!\n", "getTxPowerCapDebugInfoV3", 53434);
}

uint64_t AppleBCMWLANCore::getTxPowerCapDebugInfoV5(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to retrive txcap state: ret  %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: txcap dump is not supported!\n", "getTxPowerCapDebugInfoV5", 53454);
}

uint64_t AppleBCMWLANCore::getTxPowerCapDebugInfoV7(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to retrive txcap state: ret  %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: txcap dump is not supported!\n", "getTxPowerCapDebugInfoV7", 53473);
}

uint64_t AppleBCMWLANCore::getTxHighCapTimeout(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: txcap high power timeout is not supported!\n", "getTxHighCapTimeout", 53543);
}

uint64_t AppleBCMWLANCore::selfDiagnosticsReport(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d: kIO80211ReturnPostMessageError Reported. Skipping capture ...\n", "selfDiagnosticsReport", 53598);
    }
  }

  return result;
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:SlowWiFiRecovery due to %s. Attempting to trap.\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:SlowDPS Reported. Attempting to trap.\n", "selfDiagnosticsReport", 53569);
}

uint64_t AppleBCMWLANCore::configureReportGated()
{
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_20_3(v4);
  result = (*(v6 + 1952))(v5);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      v8 = OUTLINED_FUNCTION_86();
      getClassNameHelper(v8);
      OUTLINED_FUNCTION_74_0();
      result = CCLogStream::logEmergency(v2, "[dk] %s@%d:DKReporter::%s::%s(%d) getIOReporterCore()->configureReport failed", v9, v10, v11, v12, v13);
    }
  }

  *v0 = v3;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_20_3(v4);
  result = (*(v6 + 1952))(v5);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      v8 = OUTLINED_FUNCTION_86();
      getClassNameHelper(v8);
      OUTLINED_FUNCTION_74_0();
      result = CCLogStream::logEmergency(v2, "[dk] %s@%d:DKReporter::%s::%s(%d) getIOReporterPerSlice()->configureReport failed", v9, v10, v11, v12, v13);
    }
  }

  *v0 = v3;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_20_3(v4);
  result = (*(v6 + 1952))(v5);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      v8 = OUTLINED_FUNCTION_86();
      getClassNameHelper(v8);
      OUTLINED_FUNCTION_74_0();
      result = CCLogStream::logEmergency(v2, "[dk] %s@%d:DKReporter::%s::%s(%d) fAudioProtector->configureReport failed", v9, v10, v11, v12, v13);
    }
  }

  *v0 = v3;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_20_3(v4);
  result = (*(v6 + 1952))(v5);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      v8 = OUTLINED_FUNCTION_86();
      getClassNameHelper(v8);
      OUTLINED_FUNCTION_74_0();
      result = CCLogStream::logEmergency(v2, "[dk] %s@%d:DKReporter::%s::%s(%d) fCommander->configureReport failed", v9, v10, v11, v12, v13);
    }
  }

  *v0 = v3;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_20_3(v4);
  result = (*(v6 + 1952))(v5);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      v8 = OUTLINED_FUNCTION_86();
      getClassNameHelper(v8);
      OUTLINED_FUNCTION_74_0();
      result = CCLogStream::logEmergency(v2, "[dk] %s@%d:DKReporter::%s::%s(%d) fApStaInterface->configureReport failed", v9, v10, v11, v12, v13);
    }
  }

  *v0 = v3;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_20_3(v4);
  result = (*(v6 + 1952))(v5);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      v8 = OUTLINED_FUNCTION_86();
      getClassNameHelper(v8);
      OUTLINED_FUNCTION_74_0();
      result = CCLogStream::logEmergency(v2, "[dk] %s@%d:DKReporter::%s::%s(%d) super::configureReport(channels, action, sumCount) failed", v9, v10, v11, v12, v13);
    }
  }

  *v0 = v3;
  return result;
}

uint64_t AppleBCMWLANCore::configureReportGated(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logEmergency(v7, "[dk] %s@%d:outCount pointer invalid\n", "configureReportGated", 53885);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logEmergency(v7, "[dk] %s@%d:channels pointer invalid\n", "configureReportGated", 53884);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logEmergency(v7, "[dk] %s@%d:No valid vars given to configureReportGated\n", "configureReportGated", 53879);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANCore::configureReport(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_12_1();
  getClassNameHelper(v4);
  OUTLINED_FUNCTION_74_0();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DKReporter::%s::%s(%d) \n", v6, v7, v8, v9, v10);
}

uint64_t AppleBCMWLANCore::updateReportGated(uint64_t *a1, _DWORD *a2, void *a3, void *a4)
{
  v8 = OUTLINED_FUNCTION_5_0(a1);
  result = (*(v9 + 1952))(v8);
  if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v11 = (*(*a1 + 1952))(a1);
      ClassNameHelper = getClassNameHelper(a1);
      return CCLogStream::logEmergency(v11, "[dk] %s@%d:DKReporter::%s::%s(%d) super::updateReport failed count %u offset %llu capacity %llu", "updateReportGated", 54058, ClassNameHelper, "updateReportGated", 54058, *a2, *a3, *a4);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::updateReportGated(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logEmergency(v3, "[dk] %s@%d:buffer pointer invalid\n", "updateReportGated", 54012);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logEmergency(v3, "[dk] %s@%d:count pointer invalid\n", "updateReportGated", 54011);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logEmergency(v3, "[dk] %s@%d:channels pointer invalid\n", "updateReportGated", 54010);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logEmergency(v3, "[dk] %s@%d:No valid vars given to updateReportGated\n", "updateReportGated", 53999);
}

uint64_t AppleBCMWLANCore::updateReportGated(uint64_t *a1, uint64_t a2, int *a3, void *a4)
{
  v7 = OUTLINED_FUNCTION_5_5(a1);
  v9 = (*(v8 + 1952))(v7);
  ClassNameHelper = getClassNameHelper(a1);
  if (a3)
  {
    v11 = *a3;
  }

  else
  {
    v11 = 0;
  }

  return CCLogStream::logEmergency(v9, "[dk] %s@%d:DKReporter::%s::%s(%d) FAILED outElementCount %u capacity %llu", "updateReportGated", 54072, ClassNameHelper, "updateReportGated", 54072, v11, *a4);
}

uint64_t AppleBCMWLANCore::updateReport(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_12_1();
  getClassNameHelper(v4);
  OUTLINED_FUNCTION_74_0();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DKReporter::%s::%s(%d) \n", v6, v7, v8, v9, v10);
}

uint64_t AppleBCMWLANCore::configureManagementFrameProtection(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:MFP boot-arg override: %d\n", "configureManagementFrameProtection", 54306, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logNoticeIf(v3, 0x80uLL, "[dk] %s@%d:MFP is %d(0 -- Disabled, 1 -- Enabled, 2 -- Required)\n", "configureManagementFrameProtection", 54327, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s: MFP boot-arg disable mfp but it is required\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::enablePacketTimestamping(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_12_1();
  ClassNameHelper = getClassNameHelper(v4);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:[WiFiTimeSync] %s::%s\n", "enablePacketTimestamping", 54547, ClassNameHelper, "enablePacketTimestamping");
}

uint64_t AppleBCMWLANCore::disablePacketTimestamping(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_12_1();
  ClassNameHelper = getClassNameHelper(v4);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:[WiFiTimeSync] %s::%s\n", "disablePacketTimestamping", 54555, ClassNameHelper, "disablePacketTimestamping");
}

uint64_t AppleBCMWLANCore::setLMTPCCallback(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Setting lpc failed: %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::setConcurrencyState(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:%s: concurrent state %d\n", "setConcurrencyState", 54871, "setConcurrencyState", *(*v1 + 19801));
}

uint64_t AppleBCMWLANCore::destroySkywalkInterface(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v5 = OUTLINED_FUNCTION_11_4(a1);
  v7 = (*(v6 + 1952))(v5);
  return CCLogStream::logAlert(v7, "[dk] %s@%d:AppleBCMWLANCore::destroySkywalkInterface ifid:%d %p\n", "destroySkywalkInterface", 55161, a3, **(*(v3 + 72) + 8 * a3 + 11192));
}

uint64_t AppleBCMWLANCore::setRADIO_CHANSEQ_CONTROL(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logCrit(v3, "[dk] %s@%d:Bad Parameter,no AWDL interface but AWDL channel sequence is specified \n", "setRADIO_CHANSEQ_CONTROL", 55209);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logCrit(v3, "[dk] %s@%d:Bad Parameter, no NAN interface but NAN channel sequence is specified \n", "setRADIO_CHANSEQ_CONTROL", 55225);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logCrit(v3, "[dk] %s@%d:No AWDL Interface present \n", "setRADIO_CHANSEQ_CONTROL", 55236);
}

uint64_t AppleBCMWLANCore::setRC2CoexMode(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:rc2cx setting coexmode failed, error %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:rc2cx cmd alloc fail\n", "setRC2CoexMode", 55396);
}

uint64_t AppleBCMWLANCore::setRC2CoexMode(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_0_8(a1);
  (*(v6 + 1952))(v5);
  OUTLINED_FUNCTION_3_5();
  v8 = *(v7 + 112);
  v9 = OUTLINED_FUNCTION_172();
  v11 = v10(v9);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Configured RC2 Coex mode to %s, 0x%x\n", "setRC2CoexMode", 55436, v11, *(*a3 + 10712));
}

uint64_t AppleBCMWLANCore::setRC2CoexPMProtectionMode(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:rc2cx setting PM Protection mode failed, error %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:rc2cx cmd alloc fail\n", "setRC2CoexPMProtectionMode", 55465);
}

uint64_t AppleBCMWLANCore::setRC2CoexCTS2Sconfig(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:rc2cx setting CTS2S config mode failed, error %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:rc2cx cmd alloc fail\n", "setRC2CoexCTS2Sconfig", 55534);
}

uint64_t AppleBCMWLANCore::setRC1CoexMode(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:rc1coex_mode failed, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::handleConfigureAvgRssiParamsAsyncCallback(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot Configure RSSI Window: %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::handleGetDtimParam(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error: cannot get DTIM param: %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:AP DTIM = %d\n", "handleGetDtimParam", 55874, *(*v1 + 10364));
}

uint64_t AppleBCMWLANCore::setHP2P_CTRL()
{
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_3(v2);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v6 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v8 = (*(v7 + 1952))(v1);
      result = CCLogStream::logAlert(v8, "[dk] %s@%d:FW does not support llw", "setHP2P_CTRL", 56037);
    }
  }

  *v0 = 711;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_3(v2);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v6 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v8 = (*(v7 + 1952))(v1);
      result = CCLogStream::logAlert(v8, "[dk] %s@%d:hp2p cmd alloc fail\n", "setHP2P_CTRL", 56039);
    }
  }

  *v0 = 701;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_3(v2);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v6 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v8 = (*(v7 + 1952))(v1);
      result = CCLogStream::logAlert(v8, "[dk] %s@%d:bad argument\n", "setHP2P_CTRL", 56038);
    }
  }

  *v0 = 706;
  return result;
}

uint64_t AppleBCMWLANCore::setHP2P_CTRL(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:hp2p set iovar failed\n", "setHP2P_CTRL", 56075);
    }
  }

  *v1 = v2;
  return result;
}

uint64_t AppleBCMWLANCore::setBSS_BLACKLIST(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_102_0(*v1);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:BSS Blacklist configured - bssCount:%d\n", "setBSS_BLACKLIST", 56222, v6);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_64_0((*v2 + 6 * v1 + 17859));
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v5, v6);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:BSS Blacklist cleared!\n", "setBSS_BLACKLIST", 56233);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Bad argument for BSS Blacklist!\n", "setBSS_BLACKLIST", 56243);
}

uint64_t AppleBCMWLANCore::setBssBlacklistMode(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Configuring FW with BSS Blacklist mode:%d\n", v5, v6, v7);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Error: cannot set macmode: ret %x: %s\n", "setBssBlacklistMode", 56411, v1, v9);
}

uint64_t AppleBCMWLANCore::getBssBlacklistModeAsync(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Error: cannot get macmode: ret %x: %s\n", "getBssBlacklistModeAsync", 56436, v1, v9);
}

uint64_t AppleBCMWLANCore::setBssBlacklist(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Configuring FW with BSS Blacklist - bssCount:%d\n", "setBssBlacklist", 56310, v5);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_64_0((v2 + 6 * v1));
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v5, v6);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Error: cannot set maclist: ret %x: %s\n", "setBssBlacklist", 56318, v1, v9);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Clearing FW BSS Blacklist\n", "setBssBlacklist", 56321);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Error: cannot set maclist: ret %x: %s\n", "setBssBlacklist", 56327, v1, v9);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Exceeded BSSID count %u > %u\n", "setBssBlacklist", 56282, *v1, 7);
}

uint64_t AppleBCMWLANCore::getBssBlacklistAsyncGated(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Error: cannot get maclist: ret %x: %s\n", "getBssBlacklistAsyncGated", 56384, v1, v9);
}

uint64_t AppleBCMWLANCore::setBssBlacklistAsyncCallback(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: setting maclist failure, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::getBssBlacklistAsyncCallback(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: getting maclist failure, error %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:FW BSS Blacklist - bssCount:%d\n", "getBssBlacklistAsyncCallback", 56353, v5);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_64_0((v2 + 6 * v1));
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v5, v6);
}

uint64_t AppleBCMWLANCore::setBssBlacklistModeAsyncCallback(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: setting maclist failure, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::getBssBlacklistModeAsyncCallback(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: getting maclist failure, error %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Mode = %d\n", "getBssBlacklistModeAsyncCallback", 56422, **v1);
}

uint64_t AppleBCMWLANCore::handleSetEntropyForRNGAsyncCallback(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot set entroy for RNG: %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::setDBRG_ENTROPY(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to set entropy to RNG: %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::isP2pAirplayActive(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Null proximity interface! \n", "isP2pAirplayActive", 56528);
}

uint64_t AppleBCMWLANCore::mapLowLatencyLowPriority(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Null proximity interface! \n", "mapLowLatencyLowPriority", 56547);
}

uint64_t AppleBCMWLANCore::isLlwRequeueEnabled(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Null proximity interface! \n", "isLlwRequeueEnabled", 56562);
}

uint64_t AppleBCMWLANCore::getCUR_PMK(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Get PMK: %p len=%d\n", "getCUR_PMK", 56665, (*(v1 + 72) + 223), *(*(v1 + 72) + 288));
}

uint64_t AppleBCMWLANCore::saveCUR_PMK(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v9 = *(v1 + 4);
  v10 = *(v1 + 8);
  OUTLINED_FUNCTION_113();
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Save PMK: %p len=%d type=0x%x\n", v6, v7, v8, v9, v10);
}

{
  v1 = OUTLINED_FUNCTION_5_6(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_134();
  v12 = v3[237];
  v13 = v3[238];
  v10 = v3[235];
  v11 = v3[236];
  v8 = v3[233];
  v9 = v3[234];
  v7 = v3[232];
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v4, v5);
}

uint64_t AppleBCMWLANCore::wasDynSARInFailSafeMode(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:DynSAR: wasDynSARInFailSafeMode, %d\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::qosSetIOVar(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:WiFi-QoS: QoS Management is disabled\n", "qosSetIOVar", 58077);
}

uint64_t AppleBCMWLANCore::qosSetIOVar(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_77_0();
  v6 = OUTLINED_FUNCTION_5_0(v5);
  result = (*(v7 + 1952))(v6);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v3 + 1952))(v3);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logAlert(v9, "[dk] %s@%d:Failed to allocate qos_iov_buf for %s\n", v10, v11, v12);
    }
  }

  *a3 = -536870211;
  return result;
}

uint64_t AppleBCMWLANCore::enableQoSMgmtMSCS(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:WiFi-QoS: QoS Management is disabled\n", "enableQoSMgmtMSCS", 58112);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:WiFi-QoS: QoS Management enableFlags = %u\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::confiQoSMgmtMSCS(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:WiFi-QoS: QoS Management is disabled\n", "confiQoSMgmtMSCS", 58133);
}

uint64_t AppleBCMWLANCore::confiQoSMgmtMSCS(uint64_t *a1, uint64_t a2, unsigned __int8 a3, unsigned __int8 a4)
{
  v6 = OUTLINED_FUNCTION_5_5(a1);
  v8 = (*(v7 + 1952))(v6);
  return CCLogStream::logAlert(v8, "[dk] %s@%d:WiFi-QoS: qosReqType=%d qosFCMask=0x%x\n", "confiQoSMgmtMSCS", 58146, a3, a4);
}

uint64_t AppleBCMWLANCore::initQoSMgmtMSCS(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:WiFi-QoS: boot-arg wlan.qos.enableFlags=%d\n", "initQoSMgmtMSCS", 58173, v1);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:WiFi-QoS: boot-arg wlan.qos.FCMask=0x%x\n", "initQoSMgmtMSCS", 58180, v1);
}

uint64_t AppleBCMWLANCore::sendQoSMgmtMSCSReq(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:WiFi-QoS: QoS Management is disabled\n", "sendQoSMgmtMSCSReq", 58201);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:WiFi-QoS: AP does not support QoS MSCS\n", "sendQoSMgmtMSCSReq", 58206);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:WiFi-QoS: QoS MSCS is already terminated\n", "sendQoSMgmtMSCSReq", 58215);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:WiFi-QoS: QoS MSCS is already active\n", "sendQoSMgmtMSCSReq", 58211);
}

uint64_t AppleBCMWLANCore::collectRealTimeAppCongestionState(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Traffic Monitoring not supported \n", "collectRealTimeAppCongestionState", 58264);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Trigger check overflows on RT packet count\n", "collectRealTimeAppCongestionState", 58273);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Trigger check overflows on NRT packet count\n", "collectRealTimeAppCongestionState", 58278);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*v1 + 35290);
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_113();
  return CCLogStream::logInfo(v5, "[dk] %s@%d:[Traffic Engineering]: Real Time Application is %s\n", v7, v8, v9);
}

uint64_t AppleBCMWLANCore::trafficMonitorCallback(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Provider for Skywalk interface set WMMBWReset false for dqeue mechanism", "trafficMonitorCallback", 58392);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Provider for Skywalk interface set WMMBWReset false for dqeue mechanism", "trafficMonitorCallback", 58363);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Provider for Skywalk interface set WMMBWReset true for dqeue mechanism", "trafficMonitorCallback", 58339);
}

uint64_t AppleBCMWLANCore::handleAppTrafficIndication(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:[TrafficEngineering]:RealTime/Non-Real Time Application are running, Inform TrafficEng Module\n", "handleAppTrafficIndication", 58517);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:[TrafficEngineering]:Non Real Time Application Exited, Real Time application Running\n", "handleAppTrafficIndication", 58520);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:[TrafficEngineering]:Real Time Application launched, Inform TrafficEng Module\n", "handleAppTrafficIndication", 58522);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:[TrafficEngineering]:Real Time Application Exited, Non Real Time application Running\n", "handleAppTrafficIndication", 58526);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:[TrafficEngineering]:Non-Real Time Application launched, Inform TrafficEng Module\n", "handleAppTrafficIndication", 58528);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:[TrafficEngineering]:No application is using significant bandwidth, Inform TrafficEng Module\n", "handleAppTrafficIndication", 58531);
}

uint64_t AppleBCMWLANCore::changeAggregationPerEDCATID(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_26_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Error: cannot set Block Ack Policy on TID %d", "changeAggregationPerEDCATID", 58470, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:INFO: BA session change executed successfully", "changeAggregationPerEDCATID", 58491);
}

uint64_t AppleBCMWLANCore::changeAggregationPerEDCATID(uint64_t *a1, uint64_t a2, char a3, unsigned __int8 *a4)
{
  v6 = OUTLINED_FUNCTION_5_5(a1);
  v8 = (*(v7 + 1952))(v6);
  v9 = "deletion";
  if (a3)
  {
    v9 = "establishment";
  }

  return CCLogStream::logAlert(v8, "[dk] %s@%d: Error: BA session %s failed for TID %d", "changeAggregationPerEDCATID", 58488, v9, *a4);
}

uint64_t AppleBCMWLANCore::dbgConfigureBcnlossCoreCapture(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Beacon loss CC will trigger after %d link downs due to beacon loss \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::Start_Impl(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:core driverkit framework start fail 0x%x\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Start done", "Start_Impl", 58682);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to create ReporterProxy 0x%x\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ReporterProxy Create Successful\n", "Start_Impl", 58687);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Started provider[%p]\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to setup the Deispatch Queue 0x%x\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to create System State Notification Service 0x%x", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Successfully created System State Notification Service\n", "Start_Impl", 58703);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to create System State Notification 0x%x", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to create System State Notification Action 0x%x", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to Set System State Notification Action 0x%x", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Skipping setting up listeners for Audio Notifications! No Audio Protector created\n", "Start_Impl", 58733);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_211();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:wlan core start done 0x%x\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:invalid dispatch queue\n", "Start_Impl", 58696);
}

uint64_t ___ZN16AppleBCMWLANCore10Start_ImplEP9IOService_block_invoke_cold_1(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Firmware not initialized\n", "Start_Impl_block_invoke", 58740);
}

uint64_t AppleBCMWLANCore::SystemStateNotificationReady_Impl(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logCrit(v3, "[dk] %s@%d:Successfully received Mic State notification\n", "SystemStateNotificationReady_Impl", 58808);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logCrit(v3, "[dk] %s@%d:Successfully received Receiver State notification\n", "SystemStateNotificationReady_Impl", 58816);
}

uint64_t AppleBCMWLANCore::Stop_Impl(uint64_t *a1, uint64_t a2, const void *a3)
{
  v5 = OUTLINED_FUNCTION_11_4(a1);
  v7 = (*(v6 + 1952))(v5);
  return CCLogStream::logAlert(v7, "[dk] %s@%d:::Stop_Impl[%u] stop( %p) this[%p]\n", "Stop_Impl", 58834, 58834, a3, v3);
}

{
  v5 = OUTLINED_FUNCTION_11_4(a1);
  v7 = (*(v6 + 1952))(v5);
  return CCLogStream::logAlert(v7, "[dk] %s@%d:::Stop_Impl[%u] stop( %p) this[%p] unregisterDriver\n", "Stop_Impl", 58840, 58840, a3, v3);
}

uint64_t AppleBCMWLANCore::newUserClientGated(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logEmergency(v3, "[dk] %s@%d:wifiFirmwareLoader logic is not supported\n", "newUserClientGated", 58868);
}

uint64_t AppleBCMWLANCore::setAndBootInfraInterface(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_209();
  return CCLogStream::logEmergency(v4, "[dk] %s@%d:%s:%s: interfaceId (%d) is not kAPPLE80211InterfaceIdSTA\n", v6, v7, v8, "setAndBootInfraInterface", v1);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_209();
  return CCLogStream::logEmergency(v3, "[dk] %s@%d:%s:%s: interfaceId %d failed to boot. trying wifiFirmwareLoader.\n", v5, v6, v7, "setAndBootInfraInterface", 0);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_209();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:%s:%s: interfaceId %d booted\n", v5, v6, v7, "setAndBootInfraInterface", 0);
}

uint64_t AppleBCMWLANCore::downloadFdr(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s unavailable in ioreg\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d: %s, bcmInterfaceState[%u]\n", "downloadFdr", 58979, "wifi-calibration-fdr", v1 & 1);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Failed WLC_DOWN, rv 0x%x/'%s'\n", "downloadFdr", 58982, v1, v9);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: downloadCal, calling ...\n", "downloadFdr", 58985);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v13 = v8(v7);
  OUTLINED_FUNCTION_211();
  return CCLogStream::logAlert(v2, "[dk] %s@%d: downloadCal, called ..., isGeneric[%u], rv[0x%08x]/'%s'\n", v10, v11, v12, v1, v13);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v13 = v8(v7);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Failed to download %s, rv 0x%x %s\n", v10, v11, v12, v1, v13);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v11 = v8(v7);
  OUTLINED_FUNCTION_168();
  return CCLogStream::logAlert(v2, "[dk] %s@%d: bcmInterfaceState[%u], restored rv[0x%08x]/'%s'\n", "downloadFdr", 58993, v10, v1, v11);
}

uint64_t AppleBCMWLANCore::downloadGenericCalibrationData(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:OSBundle\n", "downloadGenericCalibrationData", 59030);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Checked bcmInterfaceState[%u], down firmware sending ...\n", v5, v6, v7);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Failed WLC_DOWN, rv 0x%x %s\n", "downloadGenericCalibrationData", 59046, v1, v9);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1952))(v3);
  v6 = OSMappedFile::size(*v2);
  return CCLogStream::logAlert(v5, "[dk] %s@%d: calload calling ..., %s: size[%zu]\n", "downloadGenericCalibrationData", 59048, v1, v6);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_168();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: retrieveCalMSFStatus calling ..., isGeneric[%u]\n", "downloadGenericCalibrationData", 59053, v5);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: retrieveCalMSFStatus ... called, rv[0x%08x]/'%s'\n", "downloadGenericCalibrationData", 59055, v1, v9);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:retrieveCalMSFStatus error, rv 0x%x %s\n", "downloadGenericCalibrationData", 59058, v1, v9);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1952))(v3);
  v6 = OSMappedFile::size(*v2);
  return CCLogStream::logAlert(v5, "[dk] %s@%d: clmload calling ..., %s: size[%zu]\n", "downloadGenericCalibrationData", 59067, v1, v6);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: retrieveRegTableStatus calling ...\n", "downloadGenericCalibrationData", 59072);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: retrieveRegTableStatus ... called, rv[0x%08x]/'%s'\n", "downloadGenericCalibrationData", 59074, v1, v9);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:retrieveRegTableStatus error, rv %s 0x%x\n", "downloadGenericCalibrationData", 59077, v9, v1);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v11 = v8(v7);
  OUTLINED_FUNCTION_168();
  return CCLogStream::logAlert(v2, "[dk] %s@%d: bcmInterfaceState[%u], restored rv[0x%08x]/'%s'\n", "downloadGenericCalibrationData", 59082, v10, v1, v11);
}

{
  v4 = OUTLINED_FUNCTION_21_3(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Invalid OSBundle\n", "downloadGenericCalibrationData", 59034);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANCore::isHWIdentifiersLate(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:isHWIdentifiersLate %d\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::handleFdr(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:platform does not need FDR.\n", "handleFdr", 59113);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: FDR platform\n", "handleFdr", 59117);
}

uint64_t AppleBCMWLANCore::userSetPropertiesGated(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_10_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Calling setPlatformConfigProperties: [%p]\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_10_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Calling setPlatformConfigProperties: [%p] ... done\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Write %s to ioreg\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:failed to get %s\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Write %s to ioreg\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:failed to get %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::configureDynamicRssiWindow(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:InCorrect RSSI Window Size %u\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::triggerTTR(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unrecognised TTR reason %d", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::is6ESupportedInCurrentCountry(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_234();
  OUTLINED_FUNCTION_251();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:WiFiCC : Current FW country code [%s] does not match the country for channels last queried [%s]\n", "is6ESupportedInCurrentCountry", 60553, v5, v6);
}

{
  v2 = OUTLINED_FUNCTION_1_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_4_6();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_118();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: fw queried again for chanspecs : %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_198();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:WiFiCC : Host country code [%s] does not match FW country code[%s].\n", "is6ESupportedInCurrentCountry", 60536, v5, v6);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_251();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:WiFiCC : Current Host country code [%s] does not match the country for channels last queried [%s] \n", "is6ESupportedInCurrentCountry", 60540, v5, v6);
}

{
  v2 = OUTLINED_FUNCTION_1_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_4_6();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_118();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: fw queried again for chanspecs : %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::setMWS_WIFI_TYPE_7_BITMAP_WIFI_ENH(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Got APPLE80211_IOC_MWS_WIFI_TYPE_7_BITMAP_WIFI_ENH indication\n", "setMWS_WIFI_TYPE_7_BITMAP_WIFI_ENH", 60998);
}

uint64_t AppleBCMWLANCore::setMWS_COEX_BITMAP_WIFI_ENH(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Got APPLE80211_IOC_MWS_COEX_BITMAP_WIFI_ENH indication\n", "setMWS_COEX_BITMAP_WIFI_ENH", 61020);
}

uint64_t AppleBCMWLANCore::setMWS_DISABLE_OCL_BITMAP_WIFI_ENH(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Got APPLE80211_IOC_MWS_DisableOCL_BITMAP_WiFiEnh indication\n", "setMWS_DISABLE_OCL_BITMAP_WIFI_ENH", 61047);
}

uint64_t AppleBCMWLANCore::setMWS_RFEM_CONFIG_WIFI_ENH(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Got APPLE80211_IOC_MWS_RFEM_CONFIG_WIFI_ENH indication\n", "setMWS_RFEM_CONFIG_WIFI_ENH", 61074);
}

uint64_t AppleBCMWLANCore::setMWS_ASSOC_PROTECTION_BITMAP_WIFI_ENH(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Got APPLE80211_IOC_MWS_ASSOC_PROTECTION_BITMAP_WIFI_ENH indication\n", "setMWS_ASSOC_PROTECTION_BITMAP_WIFI_ENH", 61102);
}

uint64_t AppleBCMWLANCore::setMWS_SCAN_FREQ_WIFI_ENH(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Got APPLE80211_IOC_MWS_SCAN_FREQ_WIFI_ENH indication\n", "setMWS_SCAN_FREQ_WIFI_ENH", 61129);
}

uint64_t AppleBCMWLANCore::setMWS_SCAN_FREQ_MODE_WIFI_ENH(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Got APPLE80211_IOC_MWS_SCAN_FREQ_MODE_WIFI_ENH indication\n", "setMWS_SCAN_FREQ_MODE_WIFI_ENH", 61160);
}

uint64_t AppleBCMWLANCore::setMWS_CONDITION_ID_BITMAP_WIFI_ENH(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Got APPLE80211_IOC_MWS_CONDITION_ID_BITMAP_WIFI_ENH indication for entire config\n", "setMWS_CONDITION_ID_BITMAP_WIFI_ENH", 61182);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Got APPLE80211_IOC_MWS_CONDITION_ID_BITMAP_WIFI_ENH indication for 1 bitmap\n", "setMWS_CONDITION_ID_BITMAP_WIFI_ENH", 61186);
}

uint64_t AppleBCMWLANCore::setMWS_ANTENNA_SELECTION_WIFI_ENH(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Got APPLE80211_IOC_MWS_ANTENNA_SELECTION_WIFI_ENH indication\n", "setMWS_ANTENNA_SELECTION_WIFI_ENH", 61228);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1952))(v3);
  return CCLogStream::logAlert(v5, "[dk] %s@%d:APPLE80211_IOC_MWS_ANTENNA_SELECTION_WIFI_ENH wifiBand = %d, AntSel[0]=0x%X, AntSel[1]=0x%X, AntSel[2]=0x%X, AntSel[3]=0x%X\n", "setMWS_ANTENNA_SELECTION_WIFI_ENH", 61238, *v2, *v1, v1[1], v1[2], v1[3]);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  OUTLINED_FUNCTION_112();
  return CCLogStream::logAlert(v8, "[dk] %s@%d:APPLE80211_IOC_MWS_ANTENNA_SELECTION_WIFI_ENH AntSel[4]=0x%X, AntSel[5]=0x%X, AntSel[6]=0x%X, AntSel[7]=0x%X\n", "setMWS_ANTENNA_SELECTION_WIFI_ENH", 61240, v10, v11, v12, v13);
}

uint64_t AppleBCMWLANCore::setOS_FEATURE_FLAGS(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: rejecting OS_FEATURE_FLAGS\n", "setOS_FEATURE_FLAGS", 61391);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*v1 + 17520);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v5, "[dk] %s@%d:LBT Feature flag: 0x%llx\n", v7, v8, v9);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*v1 + 30064);
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_113();
  return CCLogStream::logAlert(v5, "[dk] %s@%d:WiFi LQM CrashTracer Feature flag %s\n", v7, v8, v9);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*v1 + 30069);
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_113();
  return CCLogStream::logAlert(v5, "[dk] %s@%d:WiFi ViVODatapath Tuning Feature flag %s\n\n", v7, v8, v9);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*v1 + 31176);
  v5 = *(*v1 + 31172);
  v6 = *(*v1 + 31168);
  OUTLINED_FUNCTION_247();
  return CCLogStream::logAlert(v7, "[dk] %s@%d:Dynamic RTS Algorithm Setting: enable %u, p95-latency-th = %u, tx-per-th = %u\n", "setOS_FEATURE_FLAGS", 61418, v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*v1 + 30070);
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_113();
  return CCLogStream::logAlert(v5, "[dk] %s@%d:DNS symptoms feature flag %s\n", v7, v8, v9);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*v1 + 30081);
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_113();
  return CCLogStream::logAlert(v5, "[dk] %s@%d:WiFi-QoS: Feature flag %s\n", v7, v8, v9);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*v1 + 30080);
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_113();
  return CCLogStream::logAlert(v5, "[dk] %s@%d:P2P Optimization For Ultra Low Latency Realtime Infra Feature flag %s\n", v7, v8, v9);
}

uint64_t AppleBCMWLANCore::setDHCP_RENEWAL_DATA(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*v1 + 6730);
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_113();
  return CCLogStream::logAlert(v5, "[dk] %s@%d:Active during sleep supported (%s)\n", v7, v8, v9);
}

uint64_t AppleBCMWLANCore::setBATTERY_POWERSAVE_CONFIG(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logNoticeIf(v3, 0x20uLL, "[dk] %s@%d:MIMO_PS: Battery Save Mode = %s  \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::setMIMO_CONFIG(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logNoticeIf(v3, 0x20uLL, "[dk] %s@%d:MIMO_PS: Device %s  Mode\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::setFACETIME_WIFICALLING_PARAMS(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:FaceTime/WiFi Call = %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::setIPV4_PARAMS(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_8_7(a1);
  (*(v3 + 1952))(v2);
  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v4 = *(*v1 + 9496);
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v5 = *(*v1 + 9497);
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v6 = *(*v1 + 9498);
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v7 = *(*v1 + 9499);
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v8 = *(*v1 + 9500);
  }

  v9 = IO80211_io80211isSensitiveInfoAllowed();
  if (v9)
  {
    v16 = *(*v1 + 9501);
  }

  return OUTLINED_FUNCTION_228(v9, "[dk] %s@%d: Router MAC address for IPv4 = %02X:%02X:%02X:%02X:%02X:%02X\n", v10, v11, v12, v13, v14, v15, v18, v19);
}

uint64_t AppleBCMWLANCore::setEAP_FILTER_CONFIG(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*v1 + 19784);
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_113();
  return CCLogStream::logAlert(v5, "[dk] %s@%d:WoWEapolFilterEnable is %s\n", v7, v8, v9);
}

uint64_t AppleBCMWLANCore::setCONGESTION_CTRL_IND(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *v1;
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_113();
  return CCLogStream::logInfo(v5, "[dk] %s@%d:[Traffic Engineering]: Congestion Control State = (%s)\n", v7, v8, v9);
}

uint64_t AppleBCMWLANCore::setLMTPC_CONFIG(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Got APPLE80211_IOC_LMTPC_CONFIG indication\n", "setLMTPC_CONFIG", 62007);
}

uint64_t AppleBCMWLANCore::setBTMRejectionAsyncCallback(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Setting wnm_bsstrans_rej callback failed: %s(%d)\n", "setBTMRejectionAsyncCallback", 62028, v9, v1);
}

uint64_t AppleBCMWLANCore::setBTMRejection(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Issuing wnm_bsstrans_rej (%d) to FW\n", v5, v6, v7);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Error: cannot async set wnm_bsstrans_rej : ret %x: %s\n", "setBTMRejection", 62046, v1, v9);
}

uint64_t AppleBCMWLANCore::setBTCSlottedBssPolicyAsyncCallback(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Setting btc_slotted_bss_policy callback failed: %s(%d)\n", "setBTCSlottedBssPolicyAsyncCallback", 62056, v9, v1);
}

uint64_t AppleBCMWLANCore::setBTCSlottedBssPolicy(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Issuing btc_slotted_bss_policy (%d) to FW\n", v5, v6, v7);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Error: cannot async set wnm_bsstrans_rej : ret %x: %s\n", "setBTCSlottedBssPolicy", 62074, v1, v9);
}

uint64_t AppleBCMWLANCore::setWCL_ASSOCIATED_SLEEP(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Enters for %d state\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Exiting associated sleep\n", "setWCL_ASSOCIATED_SLEEP", 62101);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*v1 + 6728);
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_113();
  return CCLogStream::logAlert(v5, "[dk] %s@%d:Entering associated sleep for %s...\n", v7, v8, v9);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*v1 + 19784);
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_113();
  return CCLogStream::logAlert(v5, "[dk] %s@%d:Eapol filter - %s", v7, v8, v9);
}

uint64_t AppleBCMWLANCore::getPLATFORM_CONFIG(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d:Enter: \n", "getPLATFORM_CONFIG", 62130);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_26_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:WiFiRoam : 6GHz support defaults to disable for platform, %d\n", "getPLATFORM_CONFIG", 62154, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_26_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:WiFiRoam : 6GHz support explicitly disabled via platform config, %d\n", "getPLATFORM_CONFIG", 62150, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_26_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:WiFiRoam : 6GHz supported for this platform, %d\n", "getPLATFORM_CONFIG", 62147, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d:Exit: \n", "getPLATFORM_CONFIG", 62198);
}

uint64_t AppleBCMWLANCore::processScanForwardStats(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_12_3();
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Incorrect ID in scan metrics %u\n", "processScanForwardStats", 62349, v6);
    }
  }

  return result;
}

{
  v3 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v2 + 1952))(v2);
      return CCLogStream::logAlert(v6, "[dk] %s@%d:Incorrect data in scan metrics received length %u expected %lu\n", "processScanForwardStats", 62352, *v1, 76);
    }
  }

  return result;
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Overflow occurred in scan metric\n", "processScanForwardStats", 62356);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Overflow occurred in scan metric\n", "processScanForwardStats", 62357);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Overflow occurred in scan metric\n", "processScanForwardStats", 62358);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Overflow occurred in scan metric\n", "processScanForwardStats", 62359);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Overflow occurred in scan metric\n", "processScanForwardStats", 62360);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Overflow occurred in scan metric\n", "processScanForwardStats", 62361);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Overflow occurred in scan metric\n", "processScanForwardStats", 62362);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Overflow occurred in scan metric\n", "processScanForwardStats", 62363);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Overflow occurred in scan metric\n", "processScanForwardStats", 62364);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Overflow occurred in scan metric\n", "processScanForwardStats", 62365);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Overflow occurred in scan metric\n", "processScanForwardStats", 62366);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Overflow occurred in scan metric\n", "processScanForwardStats", 62367);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Overflow occurred in scan metric\n", "processScanForwardStats", 62368);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Overflow occurred in scan metric\n", "processScanForwardStats", 62369);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Overflow occurred in scan metric\n", "processScanForwardStats", 62370);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Overflow occurred in scan metric\n", "processScanForwardStats", 62371);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Submitting new scan forward metrics\n", "processScanForwardStats", 62390);
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:NULL data in scan metrics\n", "processScanForwardStats", 62346);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::setOS_ELIGIBILITY(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1952))(v3);
  return CCLogStream::logAlert(v5, "[dk] %s@%d: Aggressive EDCA eligibility changed: %u->%u\n", "setOS_ELIGIBILITY", 62523, *(*v2 + 36084) & 1, *v1 & 1);
}

uint64_t AppleBCMWLANBusInterfacePCIe::publishHWIdentifiers(AppleBCMWLANBusInterfacePCIe *this)
{
  anObject = 0;
  if (!AppleBCMWLANPCIeSkywalk::getPacketPool(this))
  {
    v2 = 3758097090;
    if (!AppleBCMWLANBusInterface::getLogger(this))
    {
      return v2;
    }

    AppleBCMWLANBusInterface::getLogger(this);
    if (!CCLogStream::shouldLog())
    {
      return v2;
    }

    Logger = AppleBCMWLANBusInterface::getLogger(this);
    v53 = 5694;
LABEL_75:
    CCLogStream::logAlert(Logger, "[dk] %s@%d: Bad argument\n", "publishHWIdentifiers", v53);
    return v2;
  }

  v2 = 3758097090;
  if (!AppleBCMWLANBusInterface::getProduct(this))
  {
    if (!AppleBCMWLANBusInterface::getLogger(this))
    {
      return v2;
    }

    AppleBCMWLANBusInterface::getLogger(this);
    if (!CCLogStream::shouldLog())
    {
      return v2;
    }

    Logger = AppleBCMWLANBusInterface::getLogger(this);
    v53 = 5695;
    goto LABEL_75;
  }

  if (!AppleBCMWLANBusInterface::getProductInfo0(this))
  {
    if (!AppleBCMWLANBusInterface::getLogger(this))
    {
      return v2;
    }

    AppleBCMWLANBusInterface::getLogger(this);
    if (!CCLogStream::shouldLog())
    {
      return v2;
    }

    Logger = AppleBCMWLANBusInterface::getLogger(this);
    v53 = 5696;
    goto LABEL_75;
  }

  if (!AppleBCMWLANBusInterface::getProductInfo1(this))
  {
    if (!AppleBCMWLANBusInterface::getLogger(this))
    {
      return v2;
    }

    AppleBCMWLANBusInterface::getLogger(this);
    if (!CCLogStream::shouldLog())
    {
      return v2;
    }

    Logger = AppleBCMWLANBusInterface::getLogger(this);
    v53 = 5697;
    goto LABEL_75;
  }

  v3 = OSDictionary::withCapacity(0x10u);
  if (!v3)
  {
    return 3758097085;
  }

  v4 = v3;
  PacketPool = AppleBCMWLANPCIeSkywalk::getPacketPool(this);
  v6 = OUTLINED_FUNCTION_22_5(PacketPool);
  if (v6 || (Product = AppleBCMWLANBusInterface::getProduct(this), v6 = OUTLINED_FUNCTION_22_5(Product), v6) || (ProductInfo0 = AppleBCMWLANBusInterface::getProductInfo0(this), v6 = OUTLINED_FUNCTION_22_5(ProductInfo0), v6) || (ProductInfo1 = AppleBCMWLANBusInterface::getProductInfo1(this), v6 = OUTLINED_FUNCTION_22_5(ProductInfo1), v6))
  {
    v2 = v6;
    goto LABEL_60;
  }

  v10 = OSNumber::withNumber(*(*(this + 9) + 3312), 0x20uLL);
  if (!v10)
  {
    v2 = 3758097085;
    goto LABEL_60;
  }

  v11 = v10;
  if (!OSDictionary::setObject(v4, "C", v10))
  {
    goto LABEL_62;
  }

  OUTLINED_FUNCTION_19_1();
  v13 = (*(v12 + 984))(this);
  v15 = AppleBCMWLANUtil::copyDTParameterString(v13, "IOService", "module-instance", 0, v14);
  if (!v15)
  {
    OUTLINED_FUNCTION_19_1();
    v27 = (*(v26 + 984))(this);
    acquireProperty<OSObject>(v27, "module-instance", &anObject, 0, "IOService");
    if (!anObject)
    {
      goto LABEL_14;
    }

    if (OSMetaClassBase::safeMetaCast(anObject, gOSDataMetaClass) && (v28 = OSMetaClassBase::safeMetaCast(anObject, gOSDataMetaClass), OSData::getBytesNoCopy(v28)))
    {
      v29 = OSMetaClassBase::safeMetaCast(anObject, gOSDataMetaClass);
      if (!OSData::getBytesNoCopy(v29))
      {
        goto LABEL_58;
      }

      v30 = OSMetaClassBase::safeMetaCast(anObject, gOSDataMetaClass);
      BytesNoCopy = OSData::getBytesNoCopy(v30);
    }

    else
    {
      if (!anObject)
      {
        goto LABEL_14;
      }

      if (!OSMetaClassBase::safeMetaCast(anObject, gOSStringMetaClass))
      {
        goto LABEL_56;
      }

      v42 = OSMetaClassBase::safeMetaCast(anObject, gOSStringMetaClass);
      if (!OSString::getCStringNoCopy(v42))
      {
        goto LABEL_56;
      }

      v43 = OSMetaClassBase::safeMetaCast(anObject, gOSStringMetaClass);
      if (!OSString::getCStringNoCopy(v43))
      {
        goto LABEL_58;
      }

      v44 = OSMetaClassBase::safeMetaCast(anObject, gOSStringMetaClass);
      BytesNoCopy = OSString::getCStringNoCopy(v44);
    }

    v45 = OSString::withCString(BytesNoCopy);
    if (v45)
    {
      v46 = v45;
      v47 = OSDictionary::setObject(v4, "P", v45);
      (v46->release)(v46);
      if (v47)
      {
LABEL_56:
        if (anObject)
        {
          v48 = OUTLINED_FUNCTION_5_0(anObject);
          (*(v49 + 16))(v48);
          anObject = 0;
        }

        goto LABEL_14;
      }

LABEL_62:
      v2 = 3758097086;
      goto LABEL_59;
    }

LABEL_58:
    v2 = 3758097085;
    goto LABEL_59;
  }

  if (!OSDictionary::setObject(v4, "P", v15))
  {
    v2 = 3758097086;
    goto LABEL_88;
  }

LABEL_14:
  Object = OSDictionary::getObject(v4, "M");
  v17 = OSMetaClassBase::safeMetaCast(Object, gOSStringMetaClass);
  if (v17)
  {
    *__str = 0u;
    v63 = 0u;
    CStringNoCopy = OSString::getCStringNoCopy(v17);
    if (snprintf(__str, 0x20uLL, "module-instance_M-%s", CStringNoCopy) > 31)
    {
      v2 = 3758097128;
      goto LABEL_87;
    }

    OUTLINED_FUNCTION_19_1();
    v21 = (*(v20 + 984))(this);
    v23 = AppleBCMWLANUtil::copyDTParameterString(v21, "IOService", __str, 0, v22);
    if (v23)
    {
      if (!OSDictionary::setObject(v4, "P", v23))
      {
        goto LABEL_85;
      }

      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          v24 = AppleBCMWLANBusInterface::getLogger(this);
          v25 = OSString::getCStringNoCopy(v23);
          CCLogStream::logAlert(v24, "[dk] %s@%d:Platform overriden via Device Tree %s=%s\n", "publishHWIdentifiers", 5776, __str, v25);
        }
      }
    }
  }

  else
  {
    v23 = 0;
  }

  v32 = AppleBCMWLANUtil::copyDTParameterString(this, "IOService", "wlan.debug.module-instance", 0, v18);
  if (v32)
  {
    if (!OSDictionary::setObject(v4, "P", v32))
    {
      goto LABEL_84;
    }

    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v58 = AppleBCMWLANBusInterface::getLogger(this);
        v55 = OSString::getCStringNoCopy(v32);
        CCLogStream::logAlert(v58, "[dk] %s@%d:Platform overriden via boot-arg %s=%s\n", "publishHWIdentifiers", 5785, "wlan.debug.module-instance", v55);
      }
    }
  }

  v33 = OSDictionary::getObject(v4, "P");
  v34 = OSMetaClassBase::safeMetaCast(v33, gOSStringMetaClass);
  if (v34)
  {
    v35 = v34;
    if (!setPropertyHelper(this, "module-instance", v34))
    {
      goto LABEL_83;
    }

    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v59 = AppleBCMWLANBusInterface::getLogger(this);
        v56 = OSString::getCStringNoCopy(v35);
        CCLogStream::logAlert(v59, "[dk] %s@%d:Platform set to %s=%s\n", "publishHWIdentifiers", 5793, "module-instance", v56);
      }
    }
  }

  v36 = AppleBCMWLANBusInterface::getLogger(this);
  if (CCLogStream::shouldLog(v36, 0x80uLL))
  {
    *__str = 0;
    *&__str[8] = __str;
    v63 = 0x2000000000uLL;
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 1107296256;
    v60[2] = ___ZN28AppleBCMWLANBusInterfacePCIe20publishHWIdentifiersEv_block_invoke;
    v60[3] = &__block_descriptor_tmp_261;
    v60[4] = __str;
    v60[5] = this;
    v60[6] = v4;
    OUTLINED_FUNCTION_24_1();
    (*(v37 + 56))(v4, v60);
    _Block_object_dispose(__str, 8);
  }

  removePropertyHelper(this, "HWIdentifiers");
  OUTLINED_FUNCTION_19_1();
  if (((*(v38 + 1056))(this, "HWIdentifiers", v4) & 1) == 0)
  {
    if (!AppleBCMWLANBusInterface::getLogger(this) || (AppleBCMWLANBusInterface::getLogger(this), !CCLogStream::shouldLog()))
    {
LABEL_83:
      if (!v32)
      {
        goto LABEL_85;
      }

      goto LABEL_84;
    }

    v54 = AppleBCMWLANBusInterface::getLogger(this);
    CCLogStream::logAlert(v54, "[dk] %s@%d: Unable to setProperty() on OLYHAL\n");
    goto LABEL_92;
  }

  if ((setPropertyHelper(this, "HWIdentifiers", v4) & 1) == 0)
  {
    if (!AppleBCMWLANBusInterface::getLogger(this))
    {
      goto LABEL_83;
    }

    AppleBCMWLANBusInterface::getLogger(this);
    if (!CCLogStream::shouldLog())
    {
      goto LABEL_83;
    }

    v57 = AppleBCMWLANBusInterface::getLogger(this);
    CCLogStream::logAlert(v57, "[dk] %s@%d: Unable to setProperty()\n");
LABEL_92:
    if (!v32)
    {
LABEL_85:
      v2 = 3758097086;
      if (v23)
      {
        (v23->release)(v23);
      }

LABEL_87:
      if (v15)
      {
LABEL_88:
        (*(*v15 + 16))(v15);
      }

LABEL_59:
      OUTLINED_FUNCTION_89_0();
      (*(v50 + 16))(v11);
LABEL_60:
      OUTLINED_FUNCTION_24_1();
      (*(v51 + 16))(v4);
      return v2;
    }

LABEL_84:
    (v32->release)(v32);
    goto LABEL_85;
  }

  if (v32)
  {
    (v32->release)(v32);
  }

  if (v23)
  {
    (v23->release)(v23);
  }

  if (v15)
  {
    (*(*v15 + 16))(v15);
  }

  OUTLINED_FUNCTION_89_0();
  (*(v39 + 16))(v11);
  OUTLINED_FUNCTION_24_1();
  (*(v40 + 16))(v4);
  return 0;
}

uint64_t AppleBCMWLANBusInterfacePCIe::performBPReset(AppleBCMWLANBusInterfacePCIe *this)
{
  v18 = 0;
  v16 = 0;
  v17 = 0;
  v2 = OUTLINED_FUNCTION_5_0(this);
  (*(v3 + 1208))(v2, "performBPReset", 4695);
  v4 = *(*(this + 9) + 3312);
  if ((v4 - 4345) <= 0x36 && ((1 << (v4 + 7)) & 0x400C0300000001) != 0 || v4 == 43452 || v4 == 276347)
  {
    return 0;
  }

  read_random();
  v10 = OUTLINED_FUNCTION_27_5();
  AppleBCMWLANChipBackplane::writeCommonCoreReg32(v10, 0xD0u, v17);
  v11 = AppleBCMWLANChipConfigSpace::readReg16(*(*(this + 9) + 3352), 0x88u, &v18);
  if (v11)
  {
    return v11;
  }

  v12 = OUTLINED_FUNCTION_27_5();
  AppleBCMWLANChipBackplane::writeCommonCoreReg32(v12, 0x80u, 1u);
  IOSleep(4uLL);
  v13 = OUTLINED_FUNCTION_27_5();
  v11 = AppleBCMWLANChipBackplane::readCommonCoreReg32(v13, 0xD0u, &v16);
  if (v11)
  {
    return v11;
  }

  v8 = 3758097084;
  if (v17 != v16)
  {
    v14 = OUTLINED_FUNCTION_27_5();
    if (AppleBCMWLANChipBackplane::validateCores(v14))
    {
      v15 = OUTLINED_FUNCTION_27_5();
      if (AppleBCMWLANChipBackplane::validateWrappers(v15))
      {
        return 0;
      }
    }
  }

  return v8;
}

const OSString *AppleBCMWLANBusInterfacePCIe::doesHWIdentifiersKeyContainString(AppleBCMWLANBusInterfacePCIe *this, OSDictionary *a2, const char *a3, const char *a4)
{
  v4 = 0;
  anObject = 0;
  if (a2 && a3)
  {
    v8 = OUTLINED_FUNCTION_5_0(this);
    v10 = (*(v9 + 984))(v8);
    if (acquireProperty<OSString>(v10, "HWIdentifiers", &anObject, 0, "IOService"))
    {
      v11 = OSMetaClassBase::safeMetaCast(anObject, gOSDictionaryMetaClass);
      v4 = AppleBCMWLANUtil::doesDictionaryKeyContainString(v11, a2, a3, a4);
      if (anObject)
      {
        v12 = OUTLINED_FUNCTION_5_0(anObject);
        (*(v13 + 16))(v12);
      }
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

const OSString *AppleBCMWLANBusInterfacePCIe::doesHWIdentifiersKeyEqualString(AppleBCMWLANBusInterfacePCIe *this, OSDictionary *a2, const char *a3, const char *a4)
{
  v4 = 0;
  anObject = 0;
  if (a2 && a3)
  {
    v8 = OUTLINED_FUNCTION_5_0(this);
    v10 = (*(v9 + 984))(v8);
    if (acquireProperty<OSString>(v10, "HWIdentifiers", &anObject, 0, "IOService"))
    {
      v11 = OSMetaClassBase::safeMetaCast(anObject, gOSDictionaryMetaClass);
      v4 = AppleBCMWLANUtil::doesDictionaryKeyEqualString(v11, a2, a3, a4);
      if (anObject)
      {
        v12 = OUTLINED_FUNCTION_5_0(anObject);
        (*(v13 + 16))(v12);
      }
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

uint64_t AppleBCMWLANBusInterfacePCIe::deassertDeviceWake(AppleBCMWLANBusInterfacePCIe *this)
{
  if (AppleOLYHALPortInterfacePCIe::deviceWakeGPIOAvailableDK(*(*(this + 9) + 5192), 0))
  {
    *(*(this + 9) + 1232) = 0;
    v2 = *(this + 9);
    if (*(v2 + 2844) != 2)
    {
      *(v2 + 1232) = 0;
      AppleOLYHALPortInterfacePCIe::setDeviceWakeDK(*(*(this + 9) + 5192), 0, 0);
    }
  }

  result = AppleBCMWLANBusInterface::getLogger(this);
  if (result)
  {
    AppleBCMWLANBusInterface::getLogger(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANBusInterface::getLogger(this);
      return CCLogStream::logAlert(Logger, "[dk] %s@%d:deassertDeviceWake failed", "deassertDeviceWake", 7329);
    }
  }

  return result;
}

void *AppleBCMWLANBusInterfacePCIe::prepareForRingSubmission(void *this)
{
  v1 = this[9];
  if (*(v1 + 2844) == 2 && *(v1 + 1306) == 1 && *(v1 + 1224) == 7)
  {
    v2 = this;
    v3 = *(v1 + 5204);
    v4 = *(v1 + 5208);
    *(v1 + 5208) = 64;
    *(this[9] + 5204) = 1;
    AppleBCMWLANBusInterfacePCIe::changeSleepState(this, 8, 11364);
    v5 = OUTLINED_FUNCTION_5_0(*(v2[9] + 312));
    (*(v6 + 192))(v5, 1, 0);
    this = AppleBCMWLANPCIeDoorbell::cancelRing(*(v2[9] + 3640));
    *(v2[9] + 5204) = v3;
    *(v2[9] + 5208) = v4;
  }

  return this;
}

uint64_t AppleBCMWLANBusInterfacePCIe::hitDoorbell(AppleBCMWLANBusInterfacePCIe *this, const char *a2)
{
  v3 = OUTLINED_FUNCTION_5_0(this);
  result = (*(v4 + 1208))(v3, "hitDoorbell", 17001);
  v6 = *(this + 9);
  if ((*(v6 + 3706) & 1) == 0 && *(v6 + 1306) == 1)
  {
    OUTLINED_FUNCTION_218();
    kdebug_trace();
    v7 = *(this + 9);
    if (*(v7 + 2844) == 2 && *(v7 + 1224) == 8 && !AppleBCMWLANBusInterfacePCIe::changeSleepState(this, 9, 17020))
    {
      result = AppleBCMWLANBusInterface::getLogger(this);
      if (result)
      {
        AppleBCMWLANBusInterface::getLogger(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          Logger = AppleBCMWLANBusInterface::getLogger(this);
          return CCLogStream::logCrit(Logger, "[dk] %s@%d:hitDoorbell: failed to change SleepState\n", "hitDoorbell", 17052);
        }
      }
    }

    else
    {
      mach_continuous_time();
      v8 = *(this + 9);
      absolutetime_to_nanoseconds();
      AppleBCMWLANChipBackplane::writePCIeDoorbell(*(*(this + 9) + 3360), 0x140u, *(*(this + 9) + 2936) / 0x3E8uLL);
      ++*(*(this + 9) + 1296);
      AppleBCMWLANBusInterface::getTxCommittedCommandDescriptor(this);
      if (AppleBCMWLANCommandQueue::getSize(v9))
      {
        AppleBCMWLANBusInterface::reportCommittedTxCommands(this);
      }

      v10 = *(*(this + 9) + 2936);
      OUTLINED_FUNCTION_218();

      return kdebug_trace();
    }
  }

  return result;
}

AppleBCMWLANPCIeTransmitFlowRing *AppleBCMWLANBusInterfacePCIe::workPendingForFlow(AppleBCMWLANBusInterfacePCIe *this, unsigned int a2)
{
  v3 = *(this + 9);
  result = *(v3 + 8 * a2 + 4816);
  if (result)
  {
    LODWORD(result) = AppleBCMWLANPCIeTransmitFlowRing::packetsWaitingForRingCount(result, *(v3 + 1244) ^ 3u);
    v3 = *(this + 9);
  }

  v5 = *(v3 + 2840);
  if (result >= v5)
  {
    return v5;
  }

  else
  {
    return result;
  }
}

AppleBCMWLANPCIeTransmitFlowRing *AppleBCMWLANBusInterfacePCIe::findAndReleaseFlowQueue(AppleBCMWLANBusInterface *this, unsigned __int8 *a2)
{
  if (a2)
  {
    v3 = *(*(this + 9) + 4480);
    if (v3)
    {
      v5 = OUTLINED_FUNCTION_5_0(v3);
      result = (*(v6 + 120))(v5);
      v8 = *(this + 9);
      if (*(v8 + 372) <= result)
      {
        v9 = result;
        if (*(v8 + 376) > result)
        {
          result = *(v8 + 8 * result + 4816);
          if (result)
          {
            v10 = *(v8 + 4480);
            v11 = *a2;
            v12 = a2[1];
            isLowLatencyRing = AppleBCMWLANPCIeTransmitFlowRing::isLowLatencyRing(result);

            return AppleBCMWLANPCIeSkywalk::detachTxSubmFwQueue(v10, v11, v12, v9, isLowLatencyRing);
          }
        }
      }
    }

    else
    {
      result = AppleBCMWLANBusInterface::getLogger(this);
      if (result)
      {
        AppleBCMWLANBusInterface::getLogger(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          Logger = AppleBCMWLANBusInterface::getLogger(this);
          return CCLogStream::logAlert(Logger, "[dk] %s@%d:find and release flow queue, invalid skywalk instance\n");
        }
      }
    }
  }

  else
  {
    result = AppleBCMWLANBusInterface::getLogger(this);
    if (result)
    {
      AppleBCMWLANBusInterface::getLogger(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        v14 = AppleBCMWLANBusInterface::getLogger(this);
        return CCLogStream::logAlert(v14, "[dk] %s@%d:find and release flow queue, invalid hash\n");
      }
    }
  }

  return result;
}

AppleBCMWLANBusInterface *AppleBCMWLANBusInterfacePCIe::findAndReleaseFlowQueueWithFlowId(AppleBCMWLANBusInterface *this, unsigned __int8 *a2, unsigned int a3)
{
  v3 = this;
  if (a2)
  {
    v4 = *(this + 9);
    if (*(v4 + 4480))
    {
      if (*(v4 + 372) <= a3 && *(v4 + 376) > a3)
      {
        this = *(v4 + 8 * a3 + 4816);
        if (this)
        {
          v6 = *a2;
          v7 = a2[1];
          AppleBCMWLANPCIeTransmitFlowRing::isLowLatencyRing(this);
          v8 = OUTLINED_FUNCTION_16_2();

          return AppleBCMWLANPCIeSkywalk::detachTxSubmFwQueue(v8, v9, v7, a3, v10);
        }
      }
    }

    else
    {
      this = AppleBCMWLANBusInterface::getLogger(this);
      if (this)
      {
        AppleBCMWLANBusInterface::getLogger(v3);
        this = CCLogStream::shouldLog();
        if (this)
        {
          Logger = AppleBCMWLANBusInterface::getLogger(v3);
          return CCLogStream::logAlert(Logger, "[dk] %s@%d:find and release flow queue, invalid skywalk instance\n");
        }
      }
    }
  }

  else
  {
    this = AppleBCMWLANBusInterface::getLogger(this);
    if (this)
    {
      AppleBCMWLANBusInterface::getLogger(v3);
      this = CCLogStream::shouldLog();
      if (this)
      {
        v11 = AppleBCMWLANBusInterface::getLogger(v3);
        return CCLogStream::logAlert(v11, "[dk] %s@%d:find and release flow queue, invalid hash\n");
      }
    }
  }

  return this;
}

uint64_t AppleBCMWLANBusInterfacePCIe::start(AppleBCMWLANBusInterface *a1, uint64_t a2)
{
  AppleBCMWLANBusInterface::getLogger(a1);
  v3 = *(*a2 + 2868);
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_113();
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Deep Sleep is %s\n", v6, v7, v8);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to set wlan.pcie.DSState Property - %u\n", "start", 1849, *(*a2 + 2868));
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d: Setting WLAN_REG_ON reset duration to %lu milliseconds\n", "start", 1858, *(*a2 + 2848));
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:PCIe HMAP window limit from boot config: %uMB\n", "start", 1935, *(*a2 + 4544));
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:PCIe HMAP window limit from device tree:%uMB\n", "start", 1949, *(*a2 + 4544));
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:port enable retry override: %u\n", "start", 1990, *(*a2 + 3129));
}

uint64_t AppleBCMWLANBusInterfacePCIe::start(AppleBCMWLANBusInterface *a1, uint64_t *a2)
{
  AppleBCMWLANBusInterface::getLogger(a1);
  OUTLINED_FUNCTION_102_0(*a2);
  return CCLogStream::logCrit(v3, "[dk] %s@%d:Disable MultiFunction ASPM Workaround override: %u\n", "start", 1898, v5);
}

{
  AppleBCMWLANBusInterface::getLogger(a1);
  OUTLINED_FUNCTION_102_0(*a2);
  return CCLogStream::logCrit(v3, "[dk] %s@%d:Enable MultiFunction D3 collection override: %u\n", "start", 1904, v5);
}

{
  AppleBCMWLANBusInterface::getLogger(a1);
  OUTLINED_FUNCTION_102_0(*a2);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Enable log collection when upgrade to full reset: %u\n", "start", 1909, v5);
}

{
  AppleBCMWLANBusInterface::getLogger(a1);
  OUTLINED_FUNCTION_102_0(*a2);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Enable log collection of WLAN APB registers : %u\n", "start", 1915, v5);
}

{
  AppleBCMWLANBusInterface::getLogger(a1);
  OUTLINED_FUNCTION_102_0(*a2);
  return CCLogStream::logCrit(v3, "[dk] %s@%d:Panic on Pending Backplane Errors override: %u\n", "start", 1928, v5);
}

uint64_t AppleBCMWLANBusInterfacePCIe::start(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Opt-out port enable retry for new HW\n", "start", 1980);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Starting PCIe \n", "start", 2035);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d: Failed to allocate IPC Descriptor queues!", "start", 2107);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d: Failed to allocate IPC pools!", "start", 2113);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d: Failed to allocate IPC pools!", "start", 2119);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d: Failed to create IOReporters\n", "start", 2128);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Failed to allocate pcie error handling lock\n", "start", 2073);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Failed to create command gate\n", "start", 2065);
}

uint64_t AppleBCMWLANBusInterfacePCIe::createDestroyRequestTracker(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d: Unable to allocate debug IO Rx tracker\n", "createDestroyRequestTracker", 2251);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d: Unable to allocate Tx data IO tracker\n", "createDestroyRequestTracker", 2244);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d: Unable to allocate Rx data IO tracker\n", "createDestroyRequestTracker", 2237);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d: Unable to allocate control IO Rx tracker\n", "createDestroyRequestTracker", 2230);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d: Unable to allocate D2H ring destroy tracker\n", "createDestroyRequestTracker", 2217);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d: Unable to allocate D2H ring create tracker\n", "createDestroyRequestTracker", 2210);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d: Unable to allocate H2D ring destroy tracker\n", "createDestroyRequestTracker", 2203);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d: Unable to allocate H2D ring create tracker\n", "createDestroyRequestTracker", 2196);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d: Unable to allocate flow destroy tracker\n", "createDestroyRequestTracker", 2189);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d: Unable to allocate flow create tracker\n", "createDestroyRequestTracker", 2182);
}

uint64_t AppleBCMWLANBusInterfacePCIe::allocateIPCTimers(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d: Unable to create adjust busy timer\n", "allocateIPCTimers", 2324);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d: Unable to create debug ring create timer\n", "allocateIPCTimers", 2315);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d: Unable to create flow ring create timer\n", "allocateIPCTimers", 2307);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d: Unable to create attach D0 ack timer\n", "allocateIPCTimers", 2299);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d: Unable to create attach bus timer\n", "allocateIPCTimers", 2291);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d: Unable to create delete flow timer\n", "allocateIPCTimers", 2283);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to create link change signal handler!\n", "allocateIPCTimers", 2271);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to creat doorbell ringer object!\n", "allocateIPCTimers", 2263);
}

uint64_t AppleBCMWLANBusInterfacePCIe::commitRings()
{
  OUTLINED_FUNCTION_4();
  AppleBCMWLANBusInterface::getLogger(v1);
  OUTLINED_FUNCTION_52_0();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_130();
  v5(v4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:retainCTS Not kIOReturnSuccess(%s)n", v7, v8, v9);
}

uint64_t AppleBCMWLANBusInterfacePCIe::commitRings(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Enabling WA for Deep exit timeout to Full powercycle instead of FLR and to not collect logs", "commitRings", 17107);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Deep sleep unit test crash commit rings\n", "commitRings", 17115);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:commitRings: failed to acquire CTS\n", "commitRings", 17123);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:link down detected. Bailing out\n", "commitRings", 17084);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:link down detected. Bailing out\n", "commitRings", 17064);
}

uint64_t AppleBCMWLANBusInterfacePCIe::deleteFlowTimeout(AppleBCMWLANBusInterface *a1, uint64_t a2)
{
  AppleBCMWLANBusInterface::getLogger(a1);
  v3 = *(*a2 + 8 * *(*a2 + 3008) + 736);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logCrit(v4, "[dk] %s@%d:Delaying Ring deletion Failure due to pending work epoch %llu\n", v6, v7, v8);
}

uint64_t AppleBCMWLANBusInterfacePCIe::createFlowRingTimeout(AppleBCMWLANBusInterface *a1)
{
  AppleBCMWLANBusInterface::getLogger(a1);
  v2 = *(*(a1 + 9) + 8 * *(*(a1 + 9) + 3012) + 384);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Timed out waiting for ring create, epoch=%llu\n", v5, v6, v7);
}

uint64_t AppleBCMWLANBusInterfacePCIe::createFlowRingTimeout(AppleBCMWLANBusInterface *a1, uint64_t a2)
{
  AppleBCMWLANBusInterface::getLogger(a1);
  v3 = *(*a2 + 8 * *(*a2 + 3012) + 384);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logCrit(v4, "[dk] %s@%d:Delaying Ring creation Failure due to pending work epoch %llu\n", v6, v7, v8);
}

uint64_t AppleBCMWLANBusInterfacePCIe::allocateIPCDescriptorQueues(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d: Unable to allocate command input queue\n", "allocateIPCDescriptorQueues", 2363);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d: Unable to allocate event input queue\n", "allocateIPCDescriptorQueues", 2356);
}

uint64_t AppleBCMWLANBusInterfacePCIe::allocateIPCPools(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d: Unable to allocate debug buffer pool\n", "allocateIPCPools", 2465);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d: Unable to allocate control RX Buffer pool\n", "allocateIPCPools", 2453);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d: Unable to allocate debug Rx IO pool\n", "allocateIPCPools", 2436);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d: Unable to allocate data Rx IO pool\n", "allocateIPCPools", 2430);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d: Unable to allocate data Tx IO pool\n", "allocateIPCPools", 2424);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d: Unable to allocate control Rx IO pool\n", "allocateIPCPools", 2418);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d: Unable to allocate control Tx IO pool\n", "allocateIPCPools", 2412);
}

uint64_t AppleBCMWLANBusInterfacePCIe::setupBootMSI(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Unable to allocate work queue for boot msi\n", "setupBootMSI", 2493);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Unable to allocate command gate for boot msi\n", "setupBootMSI", 2500);
}

uint64_t AppleBCMWLANBusInterfacePCIe::deferredStart(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:enter, this[%p] fPCIeBus[%p]\n", "deferredStart", 2574, a1, *(*(a1 + 9) + 3248));
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Opt-in manual S2R port control\n", "deferredStart", 2651);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to create external reset timer\n", "deferredStart", 2658);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logInfo(Logger, "[dk] %s@%d:deferredStart: kIOPCIConfigurationOffsetCommand : enable BME\n", "deferredStart", 2862);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d: Registering service\n", "deferredStart", 2914);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to create firmware logger\n", "deferredStart", 2923);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to create crash tacer logger\n", "deferredStart", 2935);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:This platform needs PTM Workaround\n", "deferredStart", 2978);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d: Unable to create attach PTM ack timer\n", "deferredStart", 2981);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Unable to create trap crashtracer mini dump buffer free timer\n", "deferredStart", 2949);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to find function-pcieport_on function\n", "deferredStart", 2619);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to find platform function\n", "deferredStart", 2608);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:deferd setting adjust busy timer, will stop when core register or timeout %u\n", "deferredStart", 3014, 30000);
}

uint64_t AppleBCMWLANBusInterfacePCIe::deferredStart(AppleBCMWLANBusInterface *a1, uint64_t *a2)
{
  AppleBCMWLANBusInterface::getLogger(a1);
  OUTLINED_FUNCTION_102_0(*a2);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Setting wifi firmware download throttle %u\n", "deferredStart", 2966, v5);
}

uint64_t AppleBCMWLANBusInterfacePCIe::startOLYHAL(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logInfo(Logger, "[dk] %s@%d:Create platform function\n", "startOLYHAL", 22310);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logInfo(Logger, "[dk] %s@%d:Create PERST# port\n", "startOLYHAL", 22318);
}

uint64_t AppleBCMWLANBusInterfacePCIe::startOLYHAL(AppleBCMWLANBusInterface *a1, uint64_t a2)
{
  AppleBCMWLANBusInterface::getLogger(a1);
  v3 = *(*a2 + 5184);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v4, "[dk] %s@%d:Platform interface %p\n", v6, v7, v8);
}

{
  AppleBCMWLANBusInterface::getLogger(a1);
  v3 = *(*a2 + 5192);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v4, "[dk] %s@%d:Port interface %p\n", v6, v7, v8);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logInfo(Logger, "[dk] %s@%d:%s %p\n", "startOLYHAL", 22355, "OLYHALKextToDextQueue", *(*a2 + 5296));
}

{
  AppleBCMWLANBusInterface::getLogger(a1);
  v3 = *(*a2 + 5288);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v4, "[dk] %s@%d:CreateActionPortErrorMsgHandler action %p\n", v6, v7, v8);
}

{
  AppleBCMWLANBusInterface::getLogger(a1);
  v3 = *(*a2 + 5280);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v4, "[dk] %s@%d:CreateActionPortEventMsgHandler action %p\n", v6, v7, v8);
}

uint64_t AppleBCMWLANBusInterfacePCIe::prepareFRCallback(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Failed to create memory access.\n", "prepareFRCallback", 19368);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Host initiated trap timed out\n", "prepareFRCallback", 19406);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Host initiated DAR based trap timed out\n", "prepareFRCallback", 19398);
}

uint64_t AppleBCMWLANBusInterfacePCIe::prepareFRCallback(AppleBCMWLANBusInterface *a1, uint64_t a2)
{
  AppleBCMWLANBusInterface::getLogger(a1);
  v3 = *(*a2 + 4564);
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_113();
  return CCLogStream::logAlert(v4, "[dk] %s@%d:APB is not accessible, upgrading to full reset ? %s\n", v6, v7, v8);
}

uint64_t AppleBCMWLANBusInterfacePCIe::collectImmediateFaultDataCallback(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Upgrade to full reset. No longer safe to collect register dump\n", "collectImmediateFaultDataCallback", 19520);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Skipped reading SoCRAM. TCM memory is not accessible. \n", "collectImmediateFaultDataCallback", 19616);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logInfo(Logger, "[dk] %s@%d:Going to attach SoCRAM immediate CB\n", "collectImmediateFaultDataCallback", 19612);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:fInD3 is true\n", "collectImmediateFaultDataCallback", 19585);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Minimum log capture we don't collect bus interface\n", "collectImmediateFaultDataCallback", 19433);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:ResetInLowPower. No longer safe to collect logs\n", "collectImmediateFaultDataCallback", 19429);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Skip WDT logging\n", "collectImmediateFaultDataCallback", 19424);
}

uint64_t AppleBCMWLANBusInterfacePCIe::collectImmediateFaultDataCallback(AppleBCMWLANBusInterface *a1, uint64_t a2)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Bus is not accessible ivars->fBackplane %u fInD3 %u ivars->fChipHalted %u fLinkDownFailure %u\n", "collectImmediateFaultDataCallback", 19592, *(*a2 + 3360) != 0, *(*a2 + 3725), *(*a2 + 1304), *(*a2 + 3706));
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logInfo(Logger, "[dk] %s@%d:fTimestampingMode:0x%x, fPacketTimestampingEnabled:%u fLastTimePowerOnTicks:%llu fLastConvertedTicks:%llu fPTMConvertedErrors:%zu\n", "collectImmediateFaultDataCallback", 19641, *(*a2 + 3992), *(*a2 + 3996), *(*a2 + 4040), *(*a2 + 4048), *(*a2 + 4056));
}

uint64_t AppleBCMWLANBusInterfacePCIe::collectDeferredFaultDataCallback(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Upgrade to full reset. No longer safe to collect register dump\n", "collectDeferredFaultDataCallback", 20242);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Power control register access failed; no longer safe to collect SoCRAM dump\n", "collectDeferredFaultDataCallback", 20253);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:external reset request pending\n", "collectDeferredFaultDataCallback", 20255);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:APB is not accessible\n", "collectDeferredFaultDataCallback", 20247);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Bus is not accessible\n", "collectDeferredFaultDataCallback", 20237);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Minimum log capture we don't collect bus interface\n", "collectDeferredFaultDataCallback", 20232);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:ResetInLowPower. No longer safe to collect logs\n", "collectDeferredFaultDataCallback", 20227);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Skip WDT logging\n", "collectDeferredFaultDataCallback", 20222);
}

uint64_t AppleBCMWLANBusInterfacePCIe::completeFaultReportCallback(AppleBCMWLANBusInterface *a1)
{
  AppleBCMWLANBusInterface::getLogger(a1);
  v2 = OUTLINED_FUNCTION_12_1();
  CCFaultReport::getWatchdogResult(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:watchdog result %#x\n", v4, v5, v6);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Core layer watchdog did not succeed; cancel external reset request timer\n", "completeFaultReportCallback", 20290);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Core layer aborted watchdog!", "completeFaultReportCallback", 20298);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Set PreS2R reason string to handle the eventual setPowerState and recovery\n", "completeFaultReportCallback", 20306);
}

uint64_t AppleBCMWLANBusInterfacePCIe::modifyASPM(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:endpoint pcie capability not found\n", "modifyASPM", 6484);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:wlan IOPCIDevice not found\n", "modifyASPM", 6473);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:MultiFunction ASPM Workaround disabled \n", "modifyASPM", 6462);
}

uint64_t AppleBCMWLANBusInterfacePCIe::createFirmwareLogger(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Failed to allocate memory\n", "createFirmwareLogger", 16624);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Failed to allocate memory\n", "createFirmwareLogger", 16566);
}

uint64_t AppleBCMWLANBusInterfacePCIe::createCrashTracerLogger(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Failed to allocate memory\n", "createCrashTracerLogger", 16710);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Failed to allocate memory\n", "createCrashTracerLogger", 16678);
}

uint64_t AppleBCMWLANBusInterfacePCIe::waitForBusAttachWithTimeoutGated()
{
  OUTLINED_FUNCTION_4();
  Logger = AppleBCMWLANBusInterface::getLogger(v2);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:exit, this[%p] fPCIeBus[%p]\n", "waitForBusAttachWithTimeoutGated", 3048, v1, *(*v0 + 3248));
}

uint64_t AppleBCMWLANBusInterfacePCIe::handleShutdownAtTermination(AppleBCMWLANBusInterface *a1, uint64_t a2, uint64_t a3)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  OUTLINED_FUNCTION_89_0();
  v8 = (*(v7 + 104))(a1, a2);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:BusInterfacePCIe: could not retrieve system state; ret=%s, state value[0x%016llx]\n", "handleShutdownAtTermination", 3120, v8, a3);
}

uint64_t AppleBCMWLANBusInterfacePCIe::Stop_Impl()
{
  OUTLINED_FUNCTION_4();
  Logger = AppleBCMWLANBusInterface::getLogger(v2);
  v4 = *(v1[9] + 3248);
  v5 = "valid";
  if (!v4)
  {
    v5 = "NULL";
  }

  return CCLogStream::logAlert(Logger, "[dk] %s@%d:::Stop_Impl: fPCIeBus %s, fPCIeBus[%p] stop( %p) this[%p]\n", "Stop_Impl", 3175, v5, v4, v0, v1);
}

uint64_t AppleBCMWLANBusInterfacePCIe::Stop_Impl(AppleBCMWLANBusInterface *a1, uint64_t a2)
{
  AppleBCMWLANBusInterface::getLogger(a1);
  v3 = *(*a2 + 3248);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v4, "[dk] %s@%d:fPCIeBus Closing(), [%p]\n", v6, v7, v8);
}

uint64_t AppleBCMWLANBusInterfacePCIe::destroyFirmwarePCIeIPC(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:destroy ipc: this[%p] fIPCCreated[%u]\n", "destroyFirmwarePCIeIPC", 10575, a1, *(*(a1 + 9) + 1306));
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:destroy ipc: this[%p] ... destroyed\n", "destroyFirmwarePCIeIPC", 10709, a1);
}

uint64_t AppleBCMWLANBusInterfacePCIe::attachPCIeBusGated()
{
  OUTLINED_FUNCTION_4();
  AppleBCMWLANBusInterface::getLogger(v0);
  OUTLINED_FUNCTION_26_5();
  OUTLINED_FUNCTION_66();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:enter, this[%p] pcie[%p] fPCIeBus[%p]\n", v3, v4, v5, v6, v7);
}

{
  OUTLINED_FUNCTION_77_0();
  AppleBCMWLANBusInterface::getLogger(v0);
  OUTLINED_FUNCTION_20_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:From %p to add bus %p was %p\n", "attachPCIeBusGated", 3783, v3, v4, v5);
}

uint64_t AppleBCMWLANBusInterfacePCIe::attachPCIeBusGated(AppleBCMWLANBusInterface *a1)
{
  OUTLINED_FUNCTION_5_14(a1);
  OUTLINED_FUNCTION_3_5();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_16_2();
  v5(v4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:Failed to configure, %s\n", v7, v8, v9);
}

{
  OUTLINED_FUNCTION_5_14(a1);
  OUTLINED_FUNCTION_3_5();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_16_2();
  v5(v4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:WiFi chip environment compromised, %s\n", v7, v8, v9);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:kIOPCIDeviceMapperPageSize property not found\n", "attachPCIeBusGated", 3897);
}

{
  OUTLINED_FUNCTION_5_14(a1);
  OUTLINED_FUNCTION_3_5();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_16_2();
  v5(v4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to Parse OTP %s\n", v7, v8, v9);
}

{
  OUTLINED_FUNCTION_5_14(a1);
  OUTLINED_FUNCTION_3_5();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_16_2();
  v5(v4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to publish HW identifiers %s\n", v7, v8, v9);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d: Limiting HW platform, disabling: Publishing AWDL\n", "attachPCIeBusGated", 4080);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:failed to create wifi cap Dict\n", "attachPCIeBusGated", 4092);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Skipping Interrupt DispatchSource creation\n", "attachPCIeBusGated", 4205);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:No interrupt, bail\n", "attachPCIeBusGated", 4222);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Failed to create memory access.\n", "attachPCIeBusGated", 3944);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Failed to create backplane access.\n", "attachPCIeBusGated", 3938);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Failed to get DART page size\n", "attachPCIeBusGated", 3900);
}

{
  AppleBCMWLANBusInterface::getLogger(a1);
  OUTLINED_FUNCTION_25_4();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:Failed to create chip manager for chip %u.\n", "attachPCIeBusGated", 3853, v3);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Failed to create config space wrapper\n", "attachPCIeBusGated", 3830);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Invalid pcie device passed\n", "attachPCIeBusGated", 3686);
}

uint64_t AppleBCMWLANBusInterfacePCIe::attachPCIeBusGated(AppleBCMWLANBusInterface *a1, uint64_t a2)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  isAWDLSupported = AppleBCMWLANChipManagerPCIe::isAWDLSupported(*(*a2 + 3280));
  isRangingSupported = AppleBCMWLANChipManagerPCIe::isRangingSupported(*(*a2 + 3280));
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(Logger, "[dk] %s@%d: Published '%s': [awdl:%d, ranging:%d]\n", v6, v7, v8, isAWDLSupported, isRangingSupported);
}

uint64_t AppleBCMWLANBusInterfacePCIe::identifyDevice(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:%u:%u:%u - Bus %u, Device %u, Function %u\n", "identifyDevice", 4623, _MergedGlobals, byte_1003E8B11, byte_1003E8B12, _MergedGlobals, byte_1003E8B11, byte_1003E8B12);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCritIf(Logger, 0x80uLL, "[dk] %s@%d:Driver: %p\n", "identifyDevice", 4660, a1);
}

uint64_t AppleBCMWLANBusInterfacePCIe::identifyDevice(AppleBCMWLANBusInterface *a1, uint64_t a2)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:ID: vendor %#x, device %#x, revision %#X\n", "identifyDevice", 4658, *(*a2 + 3332), *(*a2 + 3334), *(*a2 + 3336));
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:ID: class %#x, subsystemVendor %#x, subsystem %#X\n", "identifyDevice", 4659, *(*a2 + 3337), *(*a2 + 3338), *(*a2 + 3340));
}

uint64_t AppleBCMWLANBusInterfacePCIe::detectSabotage(AppleBCMWLANBusInterface *a1)
{
  AppleBCMWLANBusInterface::getLogger(a1);
  OUTLINED_FUNCTION_25_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:failed to obtain TCM address for chip %d\n", "detectSabotage", 21492, v3);
}

uint64_t AppleBCMWLANBusInterfacePCIe::checkErrors(AppleBCMWLANBusInterface *a1, __int16 a2, __int16 a3)
{
  v4 = a3;
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  v6 = "DataParity";
  if (v4 >= 0)
  {
    v6 = "";
  }

  v7 = "SystemErr";
  if ((a2 & 0x4000) == 0)
  {
    v7 = "";
  }

  v8 = "MasterAbort";
  if ((a2 & 0x2000) == 0)
  {
    v8 = "";
  }

  v9 = "TargetAbort";
  if ((a2 & 0x1000) == 0)
  {
    v9 = "";
  }

  return CCLogStream::logNotice(Logger, "[dk] %s@%d:PCI Errors: %s %s %s %s %s\n", "checkErrors", 5137, v6, v7, v8, v9, "");
}

uint64_t AppleBCMWLANBusInterfacePCIe::checkErrors(AppleBCMWLANBusInterface *a1, __int16 a2)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  v4 = "Correctable";
  v5 = "";
  if ((a2 & 1) == 0)
  {
    v4 = "";
  }

  v6 = "Nonfatal";
  if ((a2 & 2) == 0)
  {
    v6 = "";
  }

  v7 = "Fatal";
  if ((a2 & 4) == 0)
  {
    v7 = "";
  }

  if ((a2 & 0xFFF8) != 0)
  {
    v5 = "UnsupportedRequest";
  }

  return CCLogStream::logNotice(Logger, "[dk] %s@%d:PCIe Errors: %s %s %s %s\n", "checkErrors", 5169, v4, v6, v7, v5);
}

uint64_t AppleBCMWLANBusInterfacePCIe::checkErrors(AppleBCMWLANBusInterface *a1)
{
  AppleBCMWLANBusInterface::getLogger(a1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:PCIe Link Error: %s\n", v3, v4, v5);
}

uint64_t AppleBCMWLANBusInterfacePCIe::readOTP(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to create OTP buffer\n", "readOTP", 5302);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to create OTP buffer\n", "readOTP", 5271);
}

uint64_t AppleBCMWLANBusInterfacePCIe::detachPCIeBusGated()
{
  OUTLINED_FUNCTION_77_0();
  AppleBCMWLANBusInterface::getLogger(v0);
  OUTLINED_FUNCTION_20_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:From %p to remove bus %p was %p\n", "detachPCIeBusGated", 4354, v3, v4, v5);
}

uint64_t AppleBCMWLANBusInterfacePCIe::nanoPowerCycleGated(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to enable port, reset and retrying\n", "nanoPowerCycleGated", 4529);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Turning power back on\n", "nanoPowerCycleGated", 4534);
}

void AppleBCMWLANBusInterfacePCIe::nanoPowerCycleGated()
{
  OUTLINED_FUNCTION_4();
  getClassNameHelper(v1);
  OUTLINED_FUNCTION_52_0();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_130();
  v6 = v5(v4);
  panic("%s::%s(): Failed to enable port (%s)\n", v0, "nanoPowerCycleGated", v6);
}

uint64_t AppleBCMWLANBusInterfacePCIe::registerDriver()
{
  OUTLINED_FUNCTION_4();
  AppleBCMWLANBusInterface::getLogger(v0);
  OUTLINED_FUNCTION_26_5();
  OUTLINED_FUNCTION_66();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:enter, this[%p] driver[%p] fPCIeBus[%p]\n", v3, v4, v5, v6, v7);
}

uint64_t AppleBCMWLANBusInterfacePCIe::unregisterDriver()
{
  OUTLINED_FUNCTION_4();
  AppleBCMWLANBusInterface::getLogger(v0);
  OUTLINED_FUNCTION_26_5();
  OUTLINED_FUNCTION_66();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:enter, this[%p] driver[%p] fPCIeBus[%p]\n", v3, v4, v5, v6, v7);
}

uint64_t AppleBCMWLANBusInterfacePCIe::notifyDriverFail()
{
  OUTLINED_FUNCTION_4();
  Logger = AppleBCMWLANBusInterface::getLogger(v2);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:busystate %u, fAdjustBusyCnt %u\n", "notifyDriverFail", 5236, *v0, *(*(v1 + 72) + 3856));
}

uint64_t AppleBCMWLANBusInterfacePCIe::parseOTP()
{
  OUTLINED_FUNCTION_4();
  AppleBCMWLANBusInterface::getLogger(v1);
  OUTLINED_FUNCTION_52_0();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_130();
  v5(v4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Error parsing OTP, %s. Using default provisioning data\n", v7, v8, v9);
}

{
  OUTLINED_FUNCTION_4();
  AppleBCMWLANBusInterface::getLogger(v1);
  OUTLINED_FUNCTION_52_0();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_130();
  v5(v4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Error parsing OTP Data 2, %s\n", v7, v8, v9);
}

uint64_t ___ZN28AppleBCMWLANBusInterfacePCIe20publishHWIdentifiersEv_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_16_6();
  Logger = AppleBCMWLANBusInterface::getLogger(v1);
  OSString::getCStringNoCopy(*(*(*v0 + 8) + 24));
  v3 = OUTLINED_FUNCTION_12_1();
  CStringNoCopy = OSString::getCStringNoCopy(v3);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d: %s = %s\n", "publishHWIdentifiers_block_invoke", 5826, v0, CStringNoCopy);
}

uint64_t AppleBCMWLANBusInterfacePCIe::setVendorIdProperty(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logNoticeIf(Logger, 0x80uLL, "[dk] %s@%d: Failed to set vendor-id property\n", "setVendorIdProperty", 5948);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logNoticeIf(Logger, 0x80uLL, "[dk] %s@%d: Matching moduleInfo not found\n", "setVendorIdProperty", 5938);
}

uint64_t AppleBCMWLANBusInterfacePCIe::getModuleInfo(AppleBCMWLANBusInterface *a1)
{
  AppleBCMWLANBusInterface::getLogger(a1);
  v3 = OUTLINED_FUNCTION_12_1();
  PacketPool = AppleBCMWLANPCIeSkywalk::getPacketPool(v3);
  CStringNoCopy = OSString::getCStringNoCopy(PacketPool);
  Product = AppleBCMWLANBusInterface::getProduct(a1);
  v7 = OSString::getCStringNoCopy(Product);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:fMan %s fProd %s\n", "getModuleInfo", 6007, CStringNoCopy, v7);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logNoticeIf(Logger, 0x80uLL, "[dk] %s@%d: Failed to set vendor-id", "getModuleInfo", 6040);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Can not extract ChipInfo and/or ModuleInfo\n", "getModuleInfo", 6013);
}

uint64_t AppleBCMWLANBusInterfacePCIe::PortEventMsgHandler_Impl(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logInfo(Logger, "[dk] %s@%d:The previous low power transition seems to be clean\n", "PortEventMsgHandler_Impl", 6117);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Reset happened during low power, skipping port on\n", "PortEventMsgHandler_Impl", 6121);
}

uint64_t AppleBCMWLANBusInterfacePCIe::PortEventMsgHandlerGated(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Dump Log requested before driver is registered\n", "PortEventMsgHandlerGated", 6351);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logInfo(Logger, "[dk] %s@%d:Triggering Wifi Log dump on BT flr\n", "PortEventMsgHandlerGated", 6355);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Fault reporter busy\n", "PortEventMsgHandlerGated", 6358);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logInfo(Logger, "[dk] %s@%d:IOPCIDevice powered on\n", "PortEventMsgHandlerGated", 6318);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:reset request before driver is registered\n", "PortEventMsgHandlerGated", 6217);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:forced power cycle while in low power\n", "PortEventMsgHandlerGated", 6292);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:OLYHAL powered off; no need to handle this message.\n", "PortEventMsgHandlerGated", 6223);
}

void AppleBCMWLANBusInterfacePCIe::PortEventMsgHandlerGated(OSObject *a1)
{
  getClassNameHelper(a1);
  v2 = OUTLINED_FUNCTION_12_1();
  v3 = OSNumber::unsigned32BitValue(v2);
  panic("%s::%s(): PCIe port error type %u not handled\n", v1, "PortEventMsgHandlerGated", v3);
}

uint64_t AppleBCMWLANBusInterfacePCIe::flr()
{
  OUTLINED_FUNCTION_4();
  AppleBCMWLANBusInterface::getLogger(v1);
  OUTLINED_FUNCTION_52_0();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_130();
  v5(v4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:fPlatform->flrHold() failed with error %s\n", v7, v8, v9);
}

{
  OUTLINED_FUNCTION_4();
  AppleBCMWLANBusInterface::getLogger(v1);
  OUTLINED_FUNCTION_52_0();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_130();
  v5(v4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:fPlatform->flrRelease() failed with error %s\n", v7, v8, v9);
}

uint64_t AppleBCMWLANBusInterfacePCIe::halt(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlertIf(Logger, 0x80uLL, "[dk] %s@%d:\n", "halt", 6648);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to issue device trap\n", "halt", 6720);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logInfo(Logger, "[dk] %s@%d:Halt while entering DS\n", "halt", 6731);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logInfo(Logger, "[dk] %s@%d:Halt while entering D3, not sure how this is to be handled!\n", "halt", 6735);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logInfo(Logger, "[dk] %s@%d:Halt while exiting D3\n", "halt", 6740);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:halt before saving shadow permanent device state\n", "halt", 6794);
}

{
  OUTLINED_FUNCTION_5_14(a1);
  OUTLINED_FUNCTION_3_5();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_16_2();
  v5(v4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:halt failed because saveDeviceState returned %s\n", v7, v8, v9);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Skip device state save\n", "halt", 6798);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Sleeping to allow the detach event source to run!", "halt", 6804);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Detach is complete!\n", "halt", 6812);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlertIf(Logger, 0x80uLL, "[dk] %s@%d: Line:%d, setPowerEnable(false)\n", "halt", 6859, 6859);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Failed to enable port\n", "halt", 6847);
}

{
  result = AppleBCMWLANBusInterface::getLogger(a1);
  if (result)
  {
    AppleBCMWLANBusInterface::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANBusInterface::getLogger(a1);
      return CCLogStream::logCrit(Logger, "[dk] %s@%d: Invalid responseMemory\n", "halt", 6875);
    }
  }

  return result;
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to disable and power off port\n", "halt", 6830);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logInfo(Logger, "[dk] %s@%d:chip is already halted\n", "halt", 6664);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Port enable has failed, bailing from halt\n", "halt", 6655);
}

uint64_t AppleBCMWLANBusInterfacePCIe::halt()
{
  OUTLINED_FUNCTION_4();
  AppleBCMWLANBusInterface::getLogger(v1);
  OUTLINED_FUNCTION_52_0();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_130();
  v5(v4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:fPlatform->flrHold() failed with error %s\n", v7, v8, v9);
}

uint64_t AppleBCMWLANBusInterfacePCIe::trapDevice(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Power control register access failed; no longer safe to trap device\n", "trapDevice", 19263);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:external reset request pending\n", "trapDevice", 19265);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Mailbox Trap timeout\n", "trapDevice", 19283);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Host Initiated Trap timeout, upgrading to a full reset\n", "trapDevice", 19331);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Host Initiated Trap timeout\n", "trapDevice", 19328);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:APB is not accessible\n", "trapDevice", 19294);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Cannot issue chip trap\n", "trapDevice", 19339);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Cannot issue chip trap\n", "trapDevice", 19257);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Chip already trapped or chip not yet booted\n", "trapDevice", 19247);
}

uint64_t AppleBCMWLANBusInterfacePCIe::reset(AppleBCMWLANBusInterface *a1, uint64_t a2)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  v4 = &off_1003D18C8;
  v5 = 14;
  v6 = "UNKNOWN";
  while (*(v4 - 2) != *(*a2 + 1224))
  {
    v4 += 2;
    if (!--v5)
    {
      return CCLogStream::logAlert(Logger, "[dk] %s@%d:fPcieBus=%p pwr=%s\n", "reset", 6909, *(*a2 + 3248), v6);
    }
  }

  v6 = *v4;
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:fPcieBus=%p pwr=%s\n", "reset", 6909, *(*a2 + 3248), v6);
}

uint64_t AppleBCMWLANBusInterfacePCIe::reset(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to halt\n", "reset", 6919);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:halt invoked before S2R without full reset\n", "reset", 6923);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Host powered off, no reset continue. \n", "reset", 6929);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d: Line:%d, setPowerEnable(true)\n", "reset", 6935, 6935);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Host powered off, no reset continue. \n", "reset", 6961);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:%d: portStatus = fPCIEPort->enable(true) \n", "reset", 6966, 6966);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to enable port, reset and retrying\n", "reset", 6971);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Turning power back on\n", "reset", 6979);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Enabling port\n", "reset", 6986);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Skip device state restore\n", "reset", 7045);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:detach/attach PCIe\n", "reset", 7059);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Chip has been reset after unsuccessful FW setup. Deregistering from OLYHAL\n", "reset", 7089);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Port enable has failed, bailing from reset\n", "reset", 6912);
}

uint64_t AppleBCMWLANBusInterfacePCIe::reset()
{
  OUTLINED_FUNCTION_4();
  AppleBCMWLANBusInterface::getLogger(v1);
  OUTLINED_FUNCTION_52_0();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_130();
  v5(v4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Failed to enable port (%s)\n", v7, v8, v9);
}

uint64_t AppleBCMWLANBusInterfacePCIe::dumpRegistersFWDebug(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Either bus or backplane is not accessible , so skipping register dump\n", "dumpRegistersFWDebug", 7343);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d: Failed to allocate buffer for register dump\n", "dumpRegistersFWDebug", 7339);
}

uint64_t AppleBCMWLANBusInterfacePCIe::loadChipImage(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Loading loadChipImage\n", "loadChipImage", 7393);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:WARNING: ivars->fInD3 set while loading FW.\n", "loadChipImage", 7401);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Unable to reset chip. Bailing\n", "loadChipImage", 7414);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Begin chip boot", "loadChipImage", 7430);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:ARM failed to get ready\n", "loadChipImage", 7472);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:ARM failed to reset\n", "loadChipImage", 7486);
}

{
  AppleBCMWLANBusInterface::getLogger(a1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Dump SOCRAM - On '%s'\n", v3, v4, v5);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Enabling BusLead\n", "loadChipImage", 7542);
}

{
  AppleBCMWLANBusInterface::getLogger(a1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Dump SOCRAM - On '%s'\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_14(a1);
  OUTLINED_FUNCTION_3_5();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_16_2();
  v5(v4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to create firmware IPC, %s\n", v7, v8, v9);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Enabling BusLead\n", "loadChipImage", 7732);
}

{
  OUTLINED_FUNCTION_5_14(a1);
  OUTLINED_FUNCTION_3_5();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_16_2();
  v5(v4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to enable BusLead %s\n", v7, v8, v9);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:BusLead enabled; ring doorbell immediately\n", "loadChipImage", 7760);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:loadChipImage complete\n", "loadChipImage", 7765);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:last 4 bytes in WiFi chip RAM is 0xffffffff\n", "loadChipImage", 7690);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:last 4 bytes in WiFi chip RAM does not change after init!\n", "loadChipImage", 7671);
}

{
  OUTLINED_FUNCTION_5_14(a1);
  OUTLINED_FUNCTION_3_5();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_16_2();
  v5(v4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to enable BusLead %s\n", v7, v8, v9);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Bus is not accessable\n", "loadChipImage", 7425);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:No backplane object!!\n", "loadChipImage", 7420);
}

uint64_t AppleBCMWLANBusInterfacePCIe::loadChipImage(AppleBCMWLANBusInterface *a1, uint64_t a2)
{
  AppleBCMWLANBusInterface::getLogger(a1);
  v3 = *(*a2 + 4809);
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_113();
  return CCLogStream::logAlert(v4, "[dk] %s@%d:%s\n", v6, v7, v8);
}

uint64_t AppleBCMWLANBusInterfacePCIe::loadImage(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to write VStatus RTLV\n", "loadImage", 8394);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to write memoryMap RTLV\n", "loadImage", 8398);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Invalid allocation of randomized bytes\n", "loadImage", 8272);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Not enough free RAM space for randomized bytes\n", "loadImage", 8264);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Invalid chip memory\n", "loadImage", 8222);
}

uint64_t AppleBCMWLANBusInterfacePCIe::dumpSocRAMToRegistry(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:TCM Not accessible. Skipping dumping of SocRAM\n", "dumpSocRAMToRegistry", 7889);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Either bus or backplane is not accessible , so skipping socram dump\n", "dumpSocRAMToRegistry", 7894);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:No/invalid RAM size. Skipping dumping of SocRAM", "dumpSocRAMToRegistry", 7884);
}

uint64_t AppleBCMWLANBusInterfacePCIe::dumpSocRAMToRegistry(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_77_0();
  result = AppleBCMWLANBusInterface::getLogger(v6);
  if (result)
  {
    AppleBCMWLANBusInterface::getLogger(v4);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANBusInterface::getLogger(v4);
      result = CCLogStream::logAlert(Logger, "[dk] %s@%d:Data not allocated. Skipping dumping of SocRAM", "dumpSocRAMToRegistry", 7905);
    }
  }

  *a3 = v3;
  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::dumpSocRAMToRegistry()
{
  OUTLINED_FUNCTION_4();
  result = AppleBCMWLANBusInterface::getLogger(v2);
  if (result)
  {
    AppleBCMWLANBusInterface::getLogger(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANBusInterface::getLogger(v1);
      result = CCLogStream::logAlert(Logger, "[dk] %s@%d:MD not allocated. Skipping dumping of SocRAM", "dumpSocRAMToRegistry", 7900);
    }
  }

  *v0 = 0;
  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::retainCTS(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d: Timeout on waiting for Deep Sleep exit notification\n", "retainCTS", 14520);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:DK: rearming DS exit timer\n", "retainCTS", 14523);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:DK: failed to trigger DS exit after 3 attempts", "retainCTS", 14527);
}

uint64_t AppleBCMWLANBusInterfacePCIe::printVStatus(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:printVStatus: failed to read buffer from device mem\n", "printVStatus", 8034);
}

{
  result = AppleBCMWLANBusInterface::getLogger(a1);
  if (result)
  {
    AppleBCMWLANBusInterface::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANBusInterface::getLogger(a1);
      return CCLogStream::logAlert(Logger, "[dk] %s@%d:MD not allocated. Skipping dumping of vstatus", "printVStatus", 8031);
    }
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::printVStatus(AppleBCMWLANBusInterface *a1, unsigned int *a2)
{
  AppleBCMWLANBusInterface::getLogger(a1);
  v3 = *a2;
  v15 = a2[8];
  v16 = a2[9];
  v13 = a2[6];
  v14 = a2[7];
  v11 = a2[4];
  v12 = a2[5];
  v9 = a2[2];
  v10 = a2[3];
  v7 = *(a2 + 2);
  v8 = *(a2 + 3);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v4, v5);
}

uint64_t AppleBCMWLANBusInterfacePCIe::createFirmwarePCIeIPC(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Disabled phase bit checking in FW\n", "createFirmwarePCIeIPC", 10060);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to allocate trap info buffer\n", "createFirmwarePCIeIPC", 10083);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:DAR Based trap supported\n", "createFirmwarePCIeIPC", 10107);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Forcing out-of-band device wake\n", "createFirmwarePCIeIPC", 10114);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:device wake GPIO not available, and inband device wake not supported by endpoint, bailing", "createFirmwarePCIeIPC", 10139);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Enabling Extended TX Status support\n", "createFirmwarePCIeIPC", 10147);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Enabling DB0 doorbell timestamp support\n", "createFirmwarePCIeIPC", 10157);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Enabling packet timestamp support\n", "createFirmwarePCIeIPC", 10163);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Enabling low latency FW support\n", "createFirmwarePCIeIPC", 10170);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:PTM is not to be enabled on this platform\n", "createFirmwarePCIeIPC", 10195);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Setting up host Capability for fatal error indication \n", "createFirmwarePCIeIPC", 10201);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Fails to create DSDebug Logger\n", "createFirmwarePCIeIPC", 10243);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to map DART memory\n", "createFirmwarePCIeIPC", 10322);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:createFirmwareIPC successful\n", "createFirmwarePCIeIPC", 10523);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Driver only supports FW with bi-directional ring index DMA.\n", "createFirmwarePCIeIPC", 10431);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Fail to allocate DART memory for trap dump\n", "createFirmwarePCIeIPC", 10303);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:device does not support oob or inband device wake, bailing", "createFirmwarePCIeIPC", 10127);
}

uint64_t AppleBCMWLANBusInterfacePCIe::createFirmwarePCIeIPC(AppleBCMWLANBusInterface *a1, _DWORD *a2)
{
  AppleBCMWLANBusInterface::getLogger(a1);
  *a2;
  OUTLINED_FUNCTION_113();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Force %s FW low latency features\n", v5, v6, v7);
}

uint64_t AppleBCMWLANBusInterfacePCIe::createFirmwarePCIeIPC(AppleBCMWLANBusInterface *a1, uint64_t a2)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Using txChipDelayToUsecMultiplier=%d rxChipDelayToUsecMultiplier=%d\n", "createFirmwarePCIeIPC", 10235, *(*a2 + 4628), *(*a2 + 4632));
}

{
  AppleBCMWLANBusInterface::getLogger(a1);
  *(*a2 + 2844);
  OUTLINED_FUNCTION_113();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:DW negotiation result: %s\n", v5, v6, v7);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  AppleBCMWLANDMASlab::getBytesNoCopy(*(*a2 + 3504), 0);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Segments: %p\n", v5, v6, v7);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlertIf(Logger, 0x80uLL, "[dk] %s@%d:EventBuffers : %d, Control sub/cpl ring items: %d\n", "createFirmwarePCIeIPC", 10424, *(*a2 + 2888), *(*a2 + 2890));
}

uint64_t AppleBCMWLANBusInterfacePCIe::createFirmwarePCIeIPC(AppleBCMWLANBusInterface *a1, int a2)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  v4 = "not configured";
  if (!a2)
  {
    v4 = "configured";
  }

  return CCLogStream::logCrit(Logger, "[dk] %s@%d:HMAP %s : 0x%x\n", "createFirmwarePCIeIPC", 10351, v4, a2);
}

uint64_t AppleBCMWLANBusInterfacePCIe::dumpCoexSoCRAMToRegistry(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Bail out Coex SoCRAM dump: TCM Not accessible.\n", "dumpCoexSoCRAMToRegistry", 7929);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Coex SoCRAM dump: MMIO access starts \n", "dumpCoexSoCRAMToRegistry", 7954);
}

{
  result = AppleBCMWLANBusInterface::getLogger(a1);
  if (result)
  {
    AppleBCMWLANBusInterface::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANBusInterface::getLogger(a1);
      return CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to read CoEX SoCRAM; bailing out", "dumpCoexSoCRAMToRegistry", 7959);
    }
  }

  return result;
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Coex SoCRAM dump: MMIO access complete \n", "dumpCoexSoCRAMToRegistry", 7964);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Coex SoCRAM dump: complete; updating registry \n", "dumpCoexSoCRAMToRegistry", 7999);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Coex SoCRAM dump: overflow2 \n", "dumpCoexSoCRAMToRegistry", 7979);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Bail out Coex SoCRAM dump: No Memory\n", "dumpCoexSoCRAMToRegistry", 7950);
}

uint64_t AppleBCMWLANBusInterfacePCIe::writeVStatusRTLV(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Downloading VStatus RTLV to RAM\n", "writeVStatusRTLV", 8111);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Invalid allocation of vStatus RTLV buffer\n", "writeVStatusRTLV", 8114);
}

uint64_t AppleBCMWLANBusInterfacePCIe::writeMemoryMapRTLV(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Downloading MemoryMap RTLV to RAM\n", "writeMemoryMapRTLV", 8126);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Invalid allocation of memMap buffer\n", "writeMemoryMapRTLV", 8134);
}

uint64_t AppleBCMWLANBusInterfacePCIe::isSecureBootEnabled(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Secure Boot is not supported\n", "isSecureBootEnabled", 8165);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Checking DAR Register to determine secure boot status\n", "isSecureBootEnabled", 8172);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Cannot access DAR security register\n", "isSecureBootEnabled", 8177);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Invalid Chip Manager\n", "isSecureBootEnabled", 8160);
}

uint64_t AppleBCMWLANBusInterfacePCIe::D2HDebugRingCreateComplete()
{
  OUTLINED_FUNCTION_4();
  AppleBCMWLANBusInterface::getLogger(v1);
  OUTLINED_FUNCTION_52_0();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_130();
  v5(v4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d:%s\n", v7, v8, v9);
}

uint64_t AppleBCMWLANBusInterfacePCIe::createTransmitFlowRing(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:createTransmitFlowRing: IPC not created\n", "createTransmitFlowRing", 9126);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Failed to add flow to tracker\n", "createTransmitFlowRing", 9174);
}

uint64_t AppleBCMWLANBusInterfacePCIe::createFlow(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:[%d]Failed to create flow \n", "createFlow", 9218, 9218);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Failed to create flow \n", "createFlow", 9246);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:[%d]Failed to create flow \n", "createFlow", 9211, 9211);
}

uint64_t AppleBCMWLANBusInterfacePCIe::createFlowCallback(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:State changed while creating\n", "createFlowCallback", 9273);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Flow is not skywalk\n", "createFlowCallback", 9353);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Trackers being flushed; skip triggering fault-reporter\n", "createFlowCallback", 9327);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Unexpected flow create callback\n", "createFlowCallback", 9268);
}

uint64_t AppleBCMWLANBusInterfacePCIe::deleteFlowCallback(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to unassign flow\n", "deleteFlowCallback", 9450);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Unexpected flow deletion callback\n", "deleteFlowCallback", 9439);
}

uint64_t AppleBCMWLANBusInterfacePCIe::deleteFlow(AppleBCMWLANBusInterface *a1, void *a2, uint64_t a3, int a4)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  v8 = (*(**(*a2 + 8 * a3 + 4816) + 312))();
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Tried to delete non-created ring %d. State: %d.\n", "deleteFlow", 9425, a4, v8);
}

uint64_t AppleBCMWLANBusInterfacePCIe::deleteFlow(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Failed to add flow to tracker\n", "deleteFlow", 9417);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Unexpected flow deletion\n", "deleteFlow", 9378);
}

uint64_t AppleBCMWLANBusInterfacePCIe::workPendingForEpoch(AppleBCMWLANBusInterface *a1, uint64_t a2, uint64_t a3)
{
  AppleBCMWLANBusInterface::getLogger(a1);
  v9 = *(*a3 + 4800);
  v10 = *(*a3 + 3004);
  v8 = *(*a3 + 4792);
  v7 = *(*a3 + 4776);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v4, v5);
}

uint64_t AppleBCMWLANBusInterfacePCIe::configHMAP(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:HMAP is not supported on this device\n", "configHMAP", 9575);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:kIOPCIDeviceMemoryMapBase property not found\n", "configHMAP", 9622);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:kIOPCIDeviceMemoryMapSize property not found\n", "configHMAP", 9629);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Chip Manager Unavailable\n", "configHMAP", 9570);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:HMAP is not supported for external device\n", "configHMAP", 9565);
}

uint64_t AppleBCMWLANBusInterfacePCIe::initRingInfo(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlertIf(Logger, 0x80uLL, "[dk] %s@%d: ring_info initialization \n", "initRingInfo", 9762);
}

{
  AppleBCMWLANBusInterface::getLogger(a1);
  OUTLINED_FUNCTION_14_8();
  return CCLogStream::logAlertIf(v1, 0x80uLL, "[dk] %s@%d: submission ring read index baseAddressLow : 0x%x, baseAddressHigh: 0x%x \n", "initRingInfo", 9767, v3, v4);
}

{
  AppleBCMWLANBusInterface::getLogger(a1);
  OUTLINED_FUNCTION_14_8();
  return CCLogStream::logAlertIf(v1, 0x80uLL, "[dk] %s@%d: submission ring write index baseAddressLow : 0x%x, baseAddressHigh: 0x%x \n", "initRingInfo", 9773, v3, v4);
}

{
  AppleBCMWLANBusInterface::getLogger(a1);
  OUTLINED_FUNCTION_14_8();
  return CCLogStream::logAlertIf(v1, 0x80uLL, "[dk] %s@%d: completion ring read index baseAddressLow : 0x%x, baseAddressHigh: 0x%x \n", "initRingInfo", 9779, v3, v4);
}

{
  AppleBCMWLANBusInterface::getLogger(a1);
  OUTLINED_FUNCTION_14_8();
  return CCLogStream::logAlertIf(v1, 0x80uLL, "[dk] %s@%d: completion ring write index baseAddressLow : 0x%x, baseAddressHigh: 0x%x \n", "initRingInfo", 9785, v3, v4);
}

uint64_t AppleBCMWLANBusInterfacePCIe::createDARTMappings(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to allocate host submission ring read index array\n", "createDARTMappings", 9902);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to allocate host submission ring write index array\n", "createDARTMappings", 9919);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to allocate host completion ring read index array\n", "createDARTMappings", 9936);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to allocate host completion ring write index array\n", "createDARTMappings", 9953);
}

uint64_t AppleBCMWLANBusInterfacePCIe::createFirmwareEcounterLogger(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Failed to allocate memory\n", "createFirmwareEcounterLogger", 16802);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Failed to allocate memory\n", "createFirmwareEcounterLogger", 16749);
}

void AppleBCMWLANBusInterfacePCIe::flushTrackedControlIO(OSObject *a1, const void *a2)
{
  getClassNameHelper(a1);
  v4 = OUTLINED_FUNCTION_12_1();
  Direction = AppleBCMWLANPCIeIO::getDirection(v4);
  panic("%s::%s():  Bad direction on io %p, %#X", v2, "flushTrackedControlIO", a2, Direction);
}

uint64_t AppleBCMWLANBusInterfacePCIe::flushTrackedFlowDeleteRequest(AppleBCMWLANBusInterface *a1, unsigned __int16 a2)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  v5 = OUTLINED_FUNCTION_5_0(*(*(a1 + 9) + 1096));
  v7 = (*(v6 + 72))(v5);
  return CCLogStream::logInfo(Logger, "[dk] %s@%d:Trigger deleteFlowCallback for ring %u, tracker count %u\n", "flushTrackedFlowDeleteRequest", 10837, a2, v7);
}

uint64_t AppleBCMWLANBusInterfacePCIe::requestFlowId()
{
  OUTLINED_FUNCTION_16_6();
  Logger = AppleBCMWLANBusInterface::getLogger(v2);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Invalidating previous flowId: %d. Flows: max_possible=%d max_seen=%d current=%d\n", "requestFlowId", 11081, *v1, *(*v0 + 368), *(*v0 + 4616), *(*v0 + 4620));
}

uint64_t AppleBCMWLANBusInterfacePCIe::requestIOTx(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_5_0(*(*a1 + 3472));
  v5 = *(v4 + 56);
  OUTLINED_FUNCTION_218();
  result = v6();
  *a3 = result;
  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::requestIOTxGated(AppleBCMWLANBusInterface *a1, int a2)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  TxDescriptorCommandQueueSize = AppleBCMWLANBusInterface::getTxDescriptorCommandQueueSize(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Ring overflow: control (submit=%u, remain=%u)\n", "requestIOTxGated", 11339, a2, TxDescriptorCommandQueueSize);
}

uint64_t AppleBCMWLANBusInterfacePCIe::requestIOTxGated(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_218();
  kdebug_trace();
  result = AppleBCMWLANBusInterface::getLogger(v4);
  if (result)
  {
    AppleBCMWLANBusInterface::getLogger(v4);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANBusInterface::getLogger(v4);
      result = CCLogStream::logCrit(Logger, "[dk] %s@%d:requestIOTxGated: transport not ready, chipHalted %u, fPCIeBus %p, IPC %u", "requestIOTxGated", 11284, *(*v3 + 1304), *(*v3 + 3248), *(*v3 + 1306));
    }
  }

  *a3 = -536870173;
  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::printWorkPendingForIPCStats(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:IPC not available\n", "printWorkPendingForIPCStats", 11559);
}

{
  AppleBCMWLANBusInterface::getLogger(a1);
  OUTLINED_FUNCTION_23_7();
  v4 = OUTLINED_FUNCTION_5_0(*(v3 + 1112));
  (*(v5 + 72))(v4);
  OUTLINED_FUNCTION_13_8();
  v7 = *(v6 + 4120);
  OUTLINED_FUNCTION_31_3();
  if (v10 < v9)
  {
    v11 = OUTLINED_FUNCTION_5_0(*(v8 + 1112));
    v9 = v2 - (*(v12 + 72))(v11);
  }

  return CCLogStream::logAlert(v1, "[dk] %s@%d:IPC H2D ring create %u\n", "printWorkPendingForIPCStats", 11570, v9);
}

{
  AppleBCMWLANBusInterface::getLogger(a1);
  OUTLINED_FUNCTION_23_7();
  v4 = OUTLINED_FUNCTION_5_0(*(v3 + 1120));
  (*(v5 + 72))(v4);
  OUTLINED_FUNCTION_13_8();
  v7 = *(v6 + 4152);
  OUTLINED_FUNCTION_31_3();
  if (v10 < v9)
  {
    v11 = OUTLINED_FUNCTION_5_0(*(v8 + 1120));
    v9 = v2 - (*(v12 + 72))(v11);
  }

  return CCLogStream::logAlert(v1, "[dk] %s@%d:IPC H2D ring destroy %u\n", "printWorkPendingForIPCStats", 11571, v9);
}

{
  AppleBCMWLANBusInterface::getLogger(a1);
  OUTLINED_FUNCTION_23_7();
  v4 = OUTLINED_FUNCTION_5_0(*(v3 + 1128));
  (*(v5 + 72))(v4);
  OUTLINED_FUNCTION_13_8();
  v7 = *(v6 + 4136);
  OUTLINED_FUNCTION_31_3();
  if (v10 < v9)
  {
    v11 = OUTLINED_FUNCTION_5_0(*(v8 + 1128));
    v9 = v2 - (*(v12 + 72))(v11);
  }

  return CCLogStream::logAlert(v1, "[dk] %s@%d:IPC D2H ring create %u\n", "printWorkPendingForIPCStats", 11572, v9);
}

{
  AppleBCMWLANBusInterface::getLogger(a1);
  OUTLINED_FUNCTION_23_7();
  v4 = OUTLINED_FUNCTION_5_0(*(v3 + 1136));
  (*(v5 + 72))(v4);
  OUTLINED_FUNCTION_13_8();
  v7 = *(v6 + 4168);
  OUTLINED_FUNCTION_31_3();
  if (v10 < v9)
  {
    v11 = OUTLINED_FUNCTION_5_0(*(v8 + 1136));
    v9 = v2 - (*(v12 + 72))(v11);
  }

  return CCLogStream::logAlert(v1, "[dk] %s@%d:IPC D2H ring destroy %u\n", "printWorkPendingForIPCStats", 11573, v9);
}

{
  AppleBCMWLANBusInterface::getLogger(a1);
  v2 = OUTLINED_FUNCTION_12_1();
  AppleBCMWLANBusInterface::getTxDescriptorCommandQueueSize(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:IPC txDescr command queue %u\n", v4, v5, v6);
}

uint64_t AppleBCMWLANBusInterfacePCIe::printWorkPendingForIPCStats(AppleBCMWLANBusInterface *a1, uint64_t a2)
{
  AppleBCMWLANBusInterface::getLogger(a1);
  v3 = *(*a2 + 5232);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v4, "[dk] %s@%d:IPC RequestIOTx ts=%llu\n", v6, v7, v8);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:IPC active command %u\n", "printWorkPendingForIPCStats", 11574, 1 - *(*a2 + 1152));
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:IPC active event %u\n", "printWorkPendingForIPCStats", 11575, *(*a2 + 2888) - *(*a2 + 1156));
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:IPC timestamp buffer %u\n", "printWorkPendingForIPCStats", 11578, 8 - *(*a2 + 1188));
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  v4 = *(*a2 + 2904);
  v5 = *(*a2 + 2928);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:MSI: Last: %06llu.%06llu to %06llu.%06llu; LAST H2D DB: at=%06llu.%06llu. CtrlCompl@lastMSI: {%d,%d}, ringDrain=%06llu.%06llu, cbReportStart=%06llu.%06llu, cbReportComplete=%06llu.%06llu\n", "printWorkPendingForIPCStats", 11589, v4 / 0x3B9ACA00, v4 % 0x3B9ACA00 / 0x3E8, v5 / 0x3B9ACA00, v5 % 0x3B9ACA00 / 0x3E8, *(*a2 + 2936) / 0x3B9ACA00uLL, *(*a2 + 2936) % 0x3B9ACA00uLL / 0x3E8, *(*a2 + 3860), *(*a2 + 3864), *(*a2 + 2960) / 0x3B9ACA00uLL, *(*a2 + 2960) % 0x3B9ACA00uLL / 0x3E8, *(*a2 + 2968) / 0x3B9ACA00uLL, *(*a2 + 2968) % 0x3B9ACA00uLL / 0x3E8, *(*a2 + 2976) / 0x3B9ACA00uLL, *(*a2 + 2976) % 0x3B9ACA00uLL / 0x3E8);
}

uint64_t AppleBCMWLANBusInterfacePCIe::printWorkPendingForIPCStats(AppleBCMWLANBusInterface *a1, uint64_t *a2)
{
  AppleBCMWLANBusInterface::getLogger(a1);
  OUTLINED_FUNCTION_102_0(*a2);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:IPC ivars->fH2DMailboxPending.pending %u\n", "printWorkPendingForIPCStats", 11567, v5);
}

{
  AppleBCMWLANBusInterface::getLogger(a1);
  OUTLINED_FUNCTION_23_7();
  v5 = 1 - *(v4 + 1176);
  v6 = OUTLINED_FUNCTION_5_0(*(v4 + 1088));
  v8 = (*(v7 + 72))(v6);
  v9 = *a2;
  if (v5 >= v8)
  {
    v11 = OUTLINED_FUNCTION_5_0(*(v9 + 1088));
    (*(v12 + 72))(v11);
  }

  else
  {
    v10 = (1 - *(v9 + 1176));
  }

  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:IPC flow create %u\n", v14, v15, v16);
}

{
  AppleBCMWLANBusInterface::getLogger(a1);
  OUTLINED_FUNCTION_23_7();
  v5 = 1 - *(v4 + 1180);
  v6 = OUTLINED_FUNCTION_5_0(*(v4 + 1096));
  v8 = (*(v7 + 72))(v6);
  v9 = *a2;
  if (v5 >= v8)
  {
    v11 = OUTLINED_FUNCTION_5_0(*(v9 + 1096));
    (*(v12 + 72))(v11);
  }

  else
  {
    v10 = (1 - *(v9 + 1180));
  }

  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:IPC flow destroy %u\n", v14, v15, v16);
}

uint64_t AppleBCMWLANBusInterfacePCIe::submitDeleteFlowRequestMsg(AppleBCMWLANBusInterface *a1, uint64_t a2)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  v4 = OUTLINED_FUNCTION_5_0(*(*a2 + 24));
  (*(v5 + 208))(v4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logInfo(Logger, "[dk] %s@%d:Deleting flow: %u\n", v7, v8, v9);
}

uint64_t AppleBCMWLANBusInterfacePCIe::completeDebugBufferCompletetMsg(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_77_0();
  result = AppleBCMWLANBusInterface::getLogger(v6);
  if (result)
  {
    AppleBCMWLANBusInterface::getLogger(v4);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANBusInterface::getLogger(v4);
      result = CCLogStream::logCrit(Logger, "[dk] %s@%d:Unsupported PCI Info Buffer Version (%d)\n", "completeDebugBufferCompletetMsg", 12611, *v3);
    }
  }

  *a3 = -536870201;
  return result;
}

{
  OUTLINED_FUNCTION_77_0();
  result = AppleBCMWLANBusInterface::getLogger(v6);
  if (result)
  {
    AppleBCMWLANBusInterface::getLogger(v4);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANBusInterface::getLogger(v4);
      result = CCLogStream::logCrit(Logger, "[dk] %s@%d:Unsupported PCI Info Message Type (%d)\n", "completeDebugBufferCompletetMsg", 12617, *v3);
    }
  }

  *a3 = -536870201;
  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::completeDebugBufferCompletetMsg()
{
  OUTLINED_FUNCTION_24_7();
  v4 = v3;
  result = AppleBCMWLANBusInterface::getLogger(v3);
  if (result)
  {
    AppleBCMWLANBusInterface::getLogger(v4);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANBusInterface::getLogger(v4);
      result = CCLogStream::logCrit(Logger, "[dk] %s@%d:Unexpected message(%d) length vs debug buffer length (%d)\n", "completeDebugBufferCompletetMsg", 12623, *v2, *v1);
    }
  }

  *v0 = -536870175;
  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::completeIOCtlRequestMsg(AppleBCMWLANBusInterface *a1, CCLogStream *a2, _DWORD *a3)
{
  if (AppleBCMWLANBusInterface::getLogger(a1))
  {
    AppleBCMWLANBusInterface::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANBusInterface::getLogger(a1);
      OUTLINED_FUNCTION_19_1();
      v9 = (*(v8 + 104))(a1, 3758097094);
      CCLogStream::logCrit(Logger, "[dk] %s@%d:Tx IO not found for resourceID %x, %s\n", "completeIOCtlRequestMsg", 12897, a2, v9);
    }
  }

  result = AppleBCMWLANBusInterface::getLogger(a1);
  if (result)
  {
    AppleBCMWLANBusInterface::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANBusInterface::getLogger(a1);
      OUTLINED_FUNCTION_52_0();
      v11 = (*(v10 + 104))(a1, 3758097094);
      result = CCLogStream::logCrit(a2, "[dk] %s@%d:Error during drain: %s\n", "completeIOCtlRequestMsg", 12901, v11);
    }
  }

  *a3 = -536870202;
  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::completeIOCtlResponseMsg(AppleBCMWLANBusInterface *a1, int a2, _BYTE *a3, _DWORD *a4)
{
  result = AppleBCMWLANBusInterface::getLogger(a1);
  if (result)
  {
    AppleBCMWLANBusInterface::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANBusInterface::getLogger(a1);
      v10 = (*(*a1 + 104))(a1, 3758097094);
      result = CCLogStream::logCrit(Logger, "[dk] %s@%d:Rx IO not found for resourceID %x, %s\n", "completeIOCtlResponseMsg", 13000, a2, v10);
    }
  }

  *a4 = -536870202;
  *a3 = 1;
  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::completeIOCtlResponseMsg()
{
  OUTLINED_FUNCTION_4();
  AppleBCMWLANBusInterface::getLogger(v1);
  OUTLINED_FUNCTION_52_0();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_130();
  v5(v4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d:Error during drain: %s\n", v7, v8, v9);
}

uint64_t AppleBCMWLANBusInterfacePCIe::completeRxEventMsg()
{
  OUTLINED_FUNCTION_24_7();
  Logger = AppleBCMWLANBusInterface::getLogger(v3);
  v5 = *v2;
  v6 = *(v1 + 1);
  v7 = *(v1 + 10);
  v8 = *(v1 + 12);
  v9 = *(v1 + 14);
  OUTLINED_FUNCTION_24_1();
  v11 = (*(v10 + 224))(v0);
  OUTLINED_FUNCTION_24_1();
  v13 = (*(v12 + 232))(v0);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Rx event, wake packet bit, header flags %d ifId %d flowid %d, length %d, SN %d @ {%d %d}, type:0x%08x\n", "completeRxEventMsg", 13220, v5, v6, v7, v8, v9, v11, v13, 16);
}

uint64_t AppleBCMWLANBusInterfacePCIe::completeRxEventMsg(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_5_0(a1);
  result = (*(v3 + 1104))(v2);
  if (result)
  {
    v5 = (*(*a1 + 1104))(a1);

    return AppleBCMWLANCore::setWiFiWakeType(v5, 16);
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::completeRxEventMsg(AppleBCMWLANBusInterface *a1, uint64_t a2, int a3)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  OUTLINED_FUNCTION_89_0();
  v8 = (*(v7 + 104))(a1, a2);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Event (resourceID %#X) failed, %s\n", "completeRxEventMsg", 13288, a3, v8);
}

uint64_t AppleBCMWLANBusInterfacePCIe::completeIOCtlGeneralResponseMsg(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Out of BT debug log buffers\n", "completeIOCtlGeneralResponseMsg", 13164);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Exceeding Max Event buffers\n", "completeIOCtlGeneralResponseMsg", 13153);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Exceeding Max IOCTL response buffers\n", "completeIOCtlGeneralResponseMsg", 13149);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Out of IOCTL response buffers\n", "completeIOCtlGeneralResponseMsg", 13145);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Out of receive buffers\n", "completeIOCtlGeneralResponseMsg", 13141);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Out of event buffers\n", "completeIOCtlGeneralResponseMsg", 13137);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Packet is returned because of flow ring flush or delete\n", "completeIOCtlGeneralResponseMsg", 13133);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Invalid ring ID\n", "completeIOCtlGeneralResponseMsg", 13129);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Ring Index is in use\n", "completeIOCtlGeneralResponseMsg", 13125);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d: Request at bad state\n", "completeIOCtlGeneralResponseMsg", 13121);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Memory failure\n", "completeIOCtlGeneralResponseMsg", 13117);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:No proper resource found\n", "completeIOCtlGeneralResponseMsg", 13113);
}

uint64_t AppleBCMWLANBusInterfacePCIe::completeIOCtlRingStatusMsg(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Invalid Completion Ring ID\n", "completeIOCtlRingStatusMsg", 13083);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Exceeding Max Event buffers\n", "completeIOCtlRingStatusMsg", 13072);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Exceeding Max IOCTL response buffers\n", "completeIOCtlRingStatusMsg", 13068);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Out of IOCTL response buffers\n", "completeIOCtlRingStatusMsg", 13064);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Out of receive buffers\n", "completeIOCtlRingStatusMsg", 13060);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Out of event buffers\n", "completeIOCtlRingStatusMsg", 13056);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Packet is returned because of flow ring flush or delete\n", "completeIOCtlRingStatusMsg", 13052);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Invalid ring ID\n", "completeIOCtlRingStatusMsg", 13048);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Ring Index is in use\n", "completeIOCtlRingStatusMsg", 13044);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d: Request at bad state\n", "completeIOCtlRingStatusMsg", 13040);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Memory failure\n", "completeIOCtlRingStatusMsg", 13036);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:No proper resource found\n", "completeIOCtlRingStatusMsg", 13032);
}

uint64_t AppleBCMWLANBusInterfacePCIe::completeFlowRingCreateResponseMsg(AppleBCMWLANBusInterface *a1, IO80211WorkSource *a2)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  IO80211WorkSource::isEnabled(a2);
  OUTLINED_FUNCTION_89_0();
  (*(v4 + 312))(a2);
  (*(*a2 + 392))(a2);
  (*(*a2 + 344))(a2);
  OUTLINED_FUNCTION_66();
  return CCLogStream::logAlert(Logger, v5);
}

uint64_t AppleBCMWLANBusInterfacePCIe::completeFlowRingDeleteResponseMsg(AppleBCMWLANBusInterface *a1, unsigned __int16 *a2, IO80211WorkSource *a3)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  v6 = *a2;
  LODWORD(a2) = IO80211WorkSource::isEnabled(a3);
  v7 = (*(*a3 + 312))(a3);
  v8 = (*(*a3 + 392))(a3);
  v9 = (*(*a3 + 344))(a3);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Unexpected ring delete response for Ring ID: %d IsEnabled: %u State: %x IfIndex: %d Tid: %d \n", "completeFlowRingDeleteResponseMsg", 13373, v6, a2, v7, v8, v9);
}

uint64_t AppleBCMWLANBusInterfacePCIe::completeFlowRingDeleteResponseMsg()
{
  OUTLINED_FUNCTION_16_6();
  Logger = AppleBCMWLANBusInterface::getLogger(v2);
  v4 = *v1;
  v5 = OUTLINED_FUNCTION_5_0(*(*v0 + 1096));
  v7 = (*(v6 + 72))(v5);
  return CCLogStream::logInfo(Logger, "[dk] %s@%d:Trigger deleteFlowCallback for ring %u, tracker count %u\n", "completeFlowRingDeleteResponseMsg", 13378, v4, v7);
}

uint64_t AppleBCMWLANBusInterfacePCIe::handleMBDataInbandDS(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Chip seems to have recovered after a low power sleep\n", "handleMBDataInbandDS", 13524);
}

{
  result = AppleBCMWLANBusInterface::getLogger(a1);
  if (result)
  {
    AppleBCMWLANBusInterface::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANBusInterface::getLogger(a1);
      return CCLogStream::logAlert(Logger, "[dk] %s@%d:Crash Test, Ignored deep sleep exit message\n", "handleMBDataInbandDS", 13536);
    }
  }

  return result;
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Invalid PTM Response\n", "handleMBDataInbandDS", 13569);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:PTM Enabled\n", "handleMBDataInbandDS", 13566);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:PTM Disabled\n", "handleMBDataInbandDS", 13563);
}

uint64_t AppleBCMWLANBusInterfacePCIe::handleMBDataInbandDS()
{
  OUTLINED_FUNCTION_24_7();
  ++*(v3 + 3016);
  mach_continuous_time();
  v4 = *v2;
  result = absolutetime_to_nanoseconds();
  if ((*(*v2 + 3725) & 1) == 0)
  {
    result = AppleBCMWLANBusInterfacePCIe::changeSleepState(v1, 6, 13580);
    if (!result)
    {
      v6 = -536870167;
      goto LABEL_8;
    }

    if ((*(*v2 + 4496) & 2) != 0)
    {
      v6 = 0;
      *(*v2 + 4528) = 1;
      goto LABEL_8;
    }

    result = AppleBCMWLANBusInterfacePCIe::ackDSRequest(v1);
  }

  v6 = 0;
LABEL_8:
  *v0 = v6;
  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::handleMBDataOOBDW(AppleBCMWLANBusInterface *a1)
{
  result = AppleBCMWLANBusInterface::getLogger(a1);
  if (result)
  {
    AppleBCMWLANBusInterface::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANBusInterface::getLogger(a1);
      return CCLogStream::logAlert(Logger, "[dk] %s@%d:Crash Test, Ignored deep sleep exit message\n", "handleMBDataOOBDW", 13438);
    }
  }

  return result;
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Invalid PTM Response\n", "handleMBDataOOBDW", 13461);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:PTM Enabled\n", "handleMBDataOOBDW", 13458);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:PTM Disabled\n", "handleMBDataOOBDW", 13455);
}

uint64_t AppleBCMWLANBusInterfacePCIe::handleMBDataOOBDW()
{
  OUTLINED_FUNCTION_4();
  result = AppleBCMWLANBusInterface::getLogger(v2);
  if (result)
  {
    AppleBCMWLANBusInterface::getLogger(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANBusInterface::getLogger(v1);
      result = CCLogStream::logAlert(Logger, "[dk] %s@%d:Crash Test, Ignored deep sleep exit message\n", "handleMBDataOOBDW", 13470);
    }
  }

  *(*v0 + 2871) = 0;
  return result;
}

AppleBCMWLANBusInterface *AppleBCMWLANBusInterfacePCIe::handleMBDataOOBDW(AppleBCMWLANBusInterface *result)
{
  if ((*(result + 4496) & 2) == 0)
  {
    OUTLINED_FUNCTION_16_6();
    ++*(v3 + 3016);
    mach_continuous_time();
    v4 = *v2;
    absolutetime_to_nanoseconds();

    return AppleBCMWLANBusInterfacePCIe::ackDSRequest(v1);
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::handleFWTrap(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:AppleBCMWLANBusInterfacePCIe::handleFWTrap\n", "handleFWTrap", 13670);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:TCM is not accessible. Skipping collecting trap Information\n", "handleFWTrap", 13677);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Fail to access trap buffer\n", "handleFWTrap", 13767);
}

{
  AppleBCMWLANBusInterface::getLogger(a1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Dump SOCRAM - On '%s'\n", v3, v4, v5);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Fail to allocate Memory\n", "handleFWTrap", 13761);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Trap Address is 0\n", "handleFWTrap", 13737);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:PCIe: Failed to map resources Read/Write\n", "handleFWTrap", 13698);
}

uint64_t AppleBCMWLANBusInterfacePCIe::handleFWTrap()
{
  OUTLINED_FUNCTION_16_6();
  Logger = AppleBCMWLANBusInterface::getLogger(v2);
  ForcedFwTrapReasonString = getForcedFwTrapReasonString(*(*v1 + 4192));
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:ForcedTrapReason :%s: trap seen in %llu ms since ForcedTrap setup\n", "handleFWTrap", 13832, ForcedFwTrapReasonString, v0);
}

uint64_t AppleBCMWLANBusInterfacePCIe::setupForcedTrap(AppleBCMWLANBusInterface *a1, uint64_t a2, int a3)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  ForcedFwTrapReasonString = getForcedFwTrapReasonString(*(*a2 + 4192));
  v7 = getForcedFwTrapReasonString(a3);
  return CCLogStream::logInfo(Logger, "[dk] %s@%d:Forced trap %s already in progress, ignoring %s\n", "setupForcedTrap", 13864, ForcedFwTrapReasonString, v7);
}

uint64_t AppleBCMWLANBusInterfacePCIe::readSoCRAM(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:pBuffer is NULL\n", "readSoCRAM", 14095);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:pMemoryDescriptor is NULL\n", "readSoCRAM", 14083);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Fail to allocate Memory\n", "readSoCRAM", 14078);
}

uint64_t AppleBCMWLANBusInterfacePCIe::readSoCRAM(AppleBCMWLANBusInterface *a1, uint64_t *a2)
{
  AppleBCMWLANBusInterface::getLogger(a1);
  v3 = *(*a2 + 1304);
  OUTLINED_FUNCTION_7_14(*a2);
  OUTLINED_FUNCTION_6_10();
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Bus is NOT accessible ivars->fChipHalted:%s, ivars->fPCIeBus:%s\n", "readSoCRAM", 14061, v6, v7);
}

uint64_t AppleBCMWLANBusInterfacePCIe::readcoexSoCRAM(AppleBCMWLANBusInterface *a1, uint64_t *a2)
{
  AppleBCMWLANBusInterface::getLogger(a1);
  v3 = *(*a2 + 1304);
  OUTLINED_FUNCTION_7_14(*a2);
  OUTLINED_FUNCTION_6_10();
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Bus is NOT accessible ivars->fChipHalted:%s, ivars->fPCIeBus:%s\n", "readcoexSoCRAM", 14155, v6, v7);
}

uint64_t AppleBCMWLANBusInterfacePCIe::readUCodeRAM(AppleBCMWLANBusInterface *a1, uint64_t *a2)
{
  AppleBCMWLANBusInterface::getLogger(a1);
  v3 = *(*a2 + 1304);
  OUTLINED_FUNCTION_7_14(*a2);
  OUTLINED_FUNCTION_6_10();
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Bus is NOT accessible ivars->fChipHalted:%s, ivars->fPCIeBus:%s\n", "readUCodeRAM", 14235, v6, v7);
}

AppleBCMWLANBusInterface *AppleBCMWLANBusInterfacePCIe::ackDSRequestInbandDS(uint64_t a1, uint64_t a2, AppleBCMWLANBusInterfacePCIe *a3)
{
  *(a1 + 5208) = 2;
  *(*a2 + 5204) = 1;
  v5 = OUTLINED_FUNCTION_5_0(*(*a2 + 312));
  (*(v6 + 192))(v5, 1, 0);
  AppleBCMWLANPCIeDoorbell::cancelRing(*(*a2 + 3640));
  AppleBCMWLANBusInterfacePCIe::hitDoorbell(a3, v7);
  result = AppleBCMWLANBusInterfacePCIe::setDeviceInDeepSleep(a3, 1);
  v9 = *a2;
  if (*(*a2 + 2868) == 1)
  {
    v9[1124] = v9[1124] & 0xFFFFFFFA | 4;
    v9 = *a2;
  }

  v9[323] = v9[314];
  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::retainCTSInbandDS(uint64_t a1, uint64_t a2)
{
  *(a1 + 5208) = 64;
  *(*a2 + 5204) = 1;
  v3 = OUTLINED_FUNCTION_5_0(*(*a2 + 312));
  (*(v4 + 192))(v3, 1, 0);
  v5 = *(*a2 + 3640);

  return AppleBCMWLANPCIeDoorbell::cancelRing(v5);
}

uint64_t AppleBCMWLANBusInterfacePCIe::SetPowerState_Impl(AppleBCMWLANBusInterface *a1)
{
  result = AppleBCMWLANBusInterface::getLogger(a1);
  if (result)
  {
    AppleBCMWLANBusInterface::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANBusInterface::getLogger(a1);
      return CCLogStream::logAlert(Logger, "[dk] %s@%d:DK: SetPowerState: chip unrecoverable\n", "SetPowerState_Impl", 14930);
    }
  }

  return result;
}

{
  result = AppleBCMWLANBusInterface::getLogger(a1);
  if (result)
  {
    AppleBCMWLANBusInterface::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANBusInterface::getLogger(a1);
      return CCLogStream::logAlert(Logger, "[dk] %s@%d:DK: SetPowerState: invalid powerstate change request \n", "SetPowerState_Impl", 14936);
    }
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::SetPowerStateGatedAMFM_Impl(AppleBCMWLANBusInterface *a1, uint64_t a2)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  v4 = "before init";
  if (*(*a2 + 1306) == 1 && !*(*a2 + 1304))
  {
    v4 = "after chip start";
  }

  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Power transition %s\n", "SetPowerStateGatedAMFM_Impl", 15168, v4);
}

uint64_t AppleBCMWLANBusInterfacePCIe::SetPowerStateGatedAMFM_Impl(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Power on after an unclean low power transition\n", "SetPowerStateGatedAMFM_Impl", 15155);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Power state did not change to host sleep within time limit\n", "SetPowerStateGatedAMFM_Impl", 15096);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Force a SoCRAM Collection\n", "SetPowerStateGatedAMFM_Impl", 15102);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Deep Sleep crash power off Unit test\n", "SetPowerStateGatedAMFM_Impl", 15044);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:FW Failed to respond with DS Exit - hit doorbell\n", "SetPowerStateGatedAMFM_Impl", 15050);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Failed to get RTS\n", "SetPowerStateGatedAMFM_Impl", 15059);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Skip Power off handshake since FW is already trapped.\n", "SetPowerStateGatedAMFM_Impl", 15029);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Power transition before init\n", "SetPowerStateGatedAMFM_Impl", 15021);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Acking a pending external reset request\n", "SetPowerStateGatedAMFM_Impl", 15012);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:SetPowerStateGatedAMFM complete\n", "SetPowerStateGatedAMFM_Impl", 15248);
}

uint64_t AppleBCMWLANBusInterfacePCIe::SetPowerStateGated_Impl(AppleBCMWLANBusInterface *a1, uint64_t a2, int a3)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  v6 = &off_1003D18C8;
  v7 = 14;
  v8 = "UNKNOWN";
  while (*(v6 - 2) != *(*a2 + 1224))
  {
    v6 += 2;
    if (!--v7)
    {
      goto LABEL_6;
    }
  }

  v8 = *v6;
LABEL_6:
  v9 = &off_1003D18C8;
  v10 = 14;
  v11 = "UNKNOWN";
  while (*(v9 - 2) != a3)
  {
    v9 += 2;
    if (!--v10)
    {
      return CCLogStream::logCritIf(Logger, 2uLL, "[dk] %s@%d:Current: %s Prev This Transition: %s\n", "SetPowerStateGated_Impl", 15275, v8, v11);
    }
  }

  v11 = *v9;
  return CCLogStream::logCritIf(Logger, 2uLL, "[dk] %s@%d:Current: %s Prev This Transition: %s\n", "SetPowerStateGated_Impl", 15275, v8, v11);
}

uint64_t AppleBCMWLANBusInterfacePCIe::SetPowerStateGated_Impl(AppleBCMWLANBusInterface *a1, uint64_t *a2, int a3)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  v6 = *a2;
  v7 = "before init";
  if (*(*a2 + 1306) == 1 && !*(v6 + 1304))
  {
    v7 = "after chip start";
  }

  v8 = *(v6 + 1224);
  v9 = &off_1003D18C8;
  v10 = 14;
  v11 = "UNKNOWN";
  while (*(v9 - 2) != v8)
  {
    v9 += 2;
    if (!--v10)
    {
      goto LABEL_9;
    }
  }

  v11 = *v9;
LABEL_9:
  v12 = &off_1003D18C8;
  v13 = 14;
  v14 = "UNKNOWN";
  while (*(v12 - 2) != a3)
  {
    v12 += 2;
    if (!--v13)
    {
      return CCLogStream::logCrit(Logger, "[dk] %s@%d:Power transition %s (%s --> %s)\n", "SetPowerStateGated_Impl", 15283, v7, v11, v14);
    }
  }

  v14 = *v12;
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Power transition %s (%s --> %s)\n", "SetPowerStateGated_Impl", 15283, v7, v11, v14);
}

uint64_t AppleBCMWLANBusInterfacePCIe::SetPowerStateGated_Impl(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:link down detected, skipping power on\n", "SetPowerStateGated_Impl", 15526);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:D3 inform missing before S2R, skipping power on\n", "SetPowerStateGated_Impl", 15511);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:link up pending, skipping power on\n", "SetPowerStateGated_Impl", 15506);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:D3 inform timed out\n", "SetPowerStateGated_Impl", 15471);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Device trapped\n", "SetPowerStateGated_Impl", 15473);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:sleep state was not moved to host sleep\n", "SetPowerStateGated_Impl", 15487);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Deep Sleep crash power off Unit test\n", "SetPowerStateGated_Impl", 15355);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:FW Failed to respond with DS Exit - hit doorbell\n", "SetPowerStateGated_Impl", 15360);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Failed to get RTS", "SetPowerStateGated_Impl", 15387);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:FW is trapped, skipping S2R handshake\n", "SetPowerStateGated_Impl", 15391);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:handling of link down pending\n", "SetPowerStateGated_Impl", 15338);
}

uint64_t AppleBCMWLANBusInterfacePCIe::SetPowerStateGated_Impl(AppleBCMWLANBusInterface *a1, uint64_t a2)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  v4 = &off_1003D18C8;
  v5 = 14;
  v6 = "UNKNOWN";
  while (*(v4 - 2) != *(*a2 + 1224))
  {
    v4 += 2;
    if (!--v5)
    {
      return CCLogStream::logCritIf(Logger, 2uLL, "[dk] %s@%d:Completed, now: %s\n", "SetPowerStateGated_Impl", 15623, v6);
    }
  }

  v6 = *v4;
  return CCLogStream::logCritIf(Logger, 2uLL, "[dk] %s@%d:Completed, now: %s\n", "SetPowerStateGated_Impl", 15623, v6);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  v4 = "before init";
  if (*(*a2 + 1306) == 1 && !*(*a2 + 1304))
  {
    v4 = "after chip start";
  }

  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Power transition %s\n", "SetPowerStateGated_Impl", 15305, v4);
}

uint64_t AppleBCMWLANBusInterfacePCIe::dumpRegisters(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  v3 = *(a1 + 9);
  v4 = "FALSE";
  if (*(v3 + 1304))
  {
    v4 = "TRUE";
  }

  if (*(v3 + 3248))
  {
    v5 = "Not NULL";
  }

  else
  {
    v5 = "NULL";
  }

  v6 = *(v3 + 1224);
  v7 = &off_1003D18C8;
  v8 = 14;
  v9 = "UNKNOWN";
  while (*(v7 - 2) != v6)
  {
    v7 += 2;
    if (!--v8)
    {
      return CCLogStream::logAlert(Logger, "[dk] %s@%d:Bus is not accessable. ivars->fChipHalted:%s, ivars->fPCIeBus:%s, power state:%s\n", "dumpRegisters", 15812, v4, v5, v9);
    }
  }

  v9 = *v7;
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Bus is not accessable. ivars->fChipHalted:%s, ivars->fPCIeBus:%s, power state:%s\n", "dumpRegisters", 15812, v4, v5, v9);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:MAC Core in reset!\n", "dumpRegisters", 15851);
}

uint64_t AppleBCMWLANBusInterfacePCIe::dumpDebugInfo(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logInfo(Logger, "[dk] %s@%d:APB not accessible\n", "dumpDebugInfo", 15914);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logInfo(Logger, "[dk] %s@%d:Reading PMU registers\n", "dumpDebugInfo", 15995);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d: Failed to create Dict for register dump\n", "dumpDebugInfo", 15897);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d: Failed to allocate buffer for register dump\n", "dumpDebugInfo", 15890);
}

uint64_t AppleBCMWLANBusInterfacePCIe::dumpDebugInfo(AppleBCMWLANBusInterface *a1, uint64_t *a2)
{
  AppleBCMWLANBusInterface::getLogger(a1);
  v3 = *(*a2 + 1304);
  OUTLINED_FUNCTION_7_14(*a2);
  OUTLINED_FUNCTION_6_10();
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Bus is NOT accessible ivars->fChipHalted:%s, ivars->fPCIeBus:%s\n", "dumpDebugInfo", 15884, v6, v7);
}

uint64_t AppleBCMWLANBusInterfacePCIe::checkAPBAccessibility(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Skip APB accessible check\n", "checkAPBAccessibility", 19865);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:APB not accessible\n", "checkAPBAccessibility", 19861);
}

uint64_t AppleBCMWLANBusInterfacePCIe::checkTCMAccessibility(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:skipping TCM access\n", "checkTCMAccessibility", 19668);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Host trap timed out; skip peripheral access\n", "checkTCMAccessibility", 19674);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d: APB is not accessible; skip peripheral access\n", "checkTCMAccessibility", 19680);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:configSpace accessible\n", "checkTCMAccessibility", 19685);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d: No configuration space, bailng", "checkTCMAccessibility", 19684);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:LinkDownFailure: logs collection disabled\n", "checkTCMAccessibility", 19662);
}

uint64_t AppleBCMWLANBusInterfacePCIe::checkTCMAccessibility()
{
  OUTLINED_FUNCTION_4();
  result = AppleBCMWLANBusInterface::getLogger(v2);
  if (result)
  {
    AppleBCMWLANBusInterface::getLogger(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANBusInterface::getLogger(v1);
      result = CCLogStream::logAlert(Logger, "[dk] %s@%d: No backplane, bailng", "checkTCMAccessibility", 19699);
    }
  }

  *v0 = 0;
  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::dumpUCodeRegistersDebugInfo(AppleBCMWLANBusInterface *a1, uint64_t *a2)
{
  AppleBCMWLANBusInterface::getLogger(a1);
  v3 = *(*a2 + 1304);
  OUTLINED_FUNCTION_7_14(*a2);
  OUTLINED_FUNCTION_6_10();
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Bus is NOT accessible ivars->fChipHalted:%s, ivars->fPCIeBus:%s\n", "dumpUCodeRegistersDebugInfo", 16054, v6, v7);
}

uint64_t AppleBCMWLANBusInterfacePCIe::configureReportGated(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_77_0();
  result = AppleBCMWLANBusInterface::getLogger(v6);
  if (result)
  {
    AppleBCMWLANBusInterface::getLogger(v4);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANBusInterface::getLogger(v4);
      return CCLogStream::logEmergency(Logger, "[dk] %s@%d:outCount is %d ret is %d", "configureReportGated", 17455, *v3, a3);
    }
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::updateReportGated(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_77_0();
  result = AppleBCMWLANBusInterface::getLogger(v6);
  if (result)
  {
    AppleBCMWLANBusInterface::getLogger(v4);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANBusInterface::getLogger(v4);
      return CCLogStream::logEmergency(Logger, "[dk] %s@%d:outElementCount is %d ret is %d", "updateReportGated", 17467, *v3, a3);
    }
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::PortErrorMsgHandlerGated(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Bad request received from endpoint\n", "PortErrorMsgHandlerGated", 17928);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Updating registry with forced WLAN SoCRAM\n", "PortErrorMsgHandlerGated", 17931);
}

uint64_t AppleBCMWLANBusInterfacePCIe::forcedSoCRAMRead(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Collecting Coex SocRAM\n", "forcedSoCRAMRead", 18026);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:PCIe: Failed to map resources Read/Write\n", "forcedSoCRAMRead", 18013);
}

uint64_t AppleBCMWLANBusInterfacePCIe::wakeupHost(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logInfo(Logger, "[dk] %s@%d:Attempting to trigger immediate host wake with trap\n", "wakeupHost", 18099);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Forced Host wake Trap failed\n", "wakeupHost", 18104);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Skipping Forced Host wake on account of Link Down\n", "wakeupHost", 18090);
}

uint64_t AppleBCMWLANBusInterfacePCIe::enableTimeSyncEngine(AppleBCMWLANBusInterface *a1)
{
  AppleBCMWLANBusInterface::getLogger(a1);
  v3 = OUTLINED_FUNCTION_12_1();
  ClassNameHelper = getClassNameHelper(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:[WiFiTimeSync] %s::%s fTimestampingMode = %d\n", "enableTimeSyncEngine", 18165, ClassNameHelper, "enableTimeSyncEngine", *(*(a1 + 9) + 3992));
}

uint64_t AppleBCMWLANBusInterfacePCIe::enablePacketTimestamping(AppleBCMWLANBusInterface *a1)
{
  AppleBCMWLANBusInterface::getLogger(a1);
  v3 = OUTLINED_FUNCTION_12_1();
  ClassNameHelper = getClassNameHelper(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:[WiFiTimeSync] %s::%s fPacketTimestampingEnabled:%d\n", "enablePacketTimestamping", 18212, ClassNameHelper, "enablePacketTimestamping", *(*(a1 + 9) + 3996));
}

uint64_t AppleBCMWLANBusInterfacePCIe::disablePacketTimestamping()
{
  OUTLINED_FUNCTION_4();
  Logger = AppleBCMWLANBusInterface::getLogger(v2);
  ClassNameHelper = getClassNameHelper(v1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:[WiFiTimeSync] %s::%s fPacketTimestampingEnabled:%d\n", "disablePacketTimestamping", 18251, ClassNameHelper, "disablePacketTimestamping", *(*v0 + 3996));
}

uint64_t AppleBCMWLANBusInterfacePCIe::configureTimeSyncCapability(AppleBCMWLANBusInterface *a1, unsigned __int8 *a2)
{
  AppleBCMWLANBusInterface::getLogger(a1);
  v3 = *a2;
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_113();
  return CCLogStream::logAlert(v4, "[dk] %s@%d:[WiFiTimeSync] Force WiFi software timestamping %s\n", v6, v7, v8);
}

uint64_t AppleBCMWLANBusInterfacePCIe::configureTimeSyncCapability(AppleBCMWLANBusInterface *a1, uint64_t a2)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:[WiFiTimeSync] fIgnoreTimeStampingIfBitmap : 0x%x\n", "configureTimeSyncCapability", 18675, *(*a2 + 4000));
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:[WiFiTimeSync] fTweakAllTxAsTS : %d\n", "configureTimeSyncCapability", 18682, *(*a2 + 4000));
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:[WiFiTimeSync] fTSTxExtendedFlags : 0x%x\n", "configureTimeSyncCapability", 18707, *(*a2 + 4005));
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:[WiFiTimeSync] host fHWTimestampingCapable=%d, host fSWTimestampingCapable=%d\n", "configureTimeSyncCapability", 18711, *(*a2 + 3992) == 2, *(*a2 + 3992) == 3);
}

uint64_t AppleBCMWLANBusInterfacePCIe::attachSoCRAMFile()
{
  OUTLINED_FUNCTION_4();
  Logger = AppleBCMWLANBusInterface::getLogger(v2);
  AppleBCMWLANBusInterface::getCCLogs(v1, v10);
  CCDataStream::hasProfileLoaded(v11);
  isSoCRAMCaptureAllowed = AppleBCMWLAN_isSoCRAMCaptureAllowed();
  isSafeToCaptureSoCRAM = AppleBCMWLANChipManagerPCIe::isSafeToCaptureSoCRAM(*(*v0 + 3280));
  OUTLINED_FUNCTION_66();
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Bail out SoCRAM dump: hasProfileLoaded()=%d, AppleBCMWLAN_isSoCRAMCaptureAllowed()=%d, isSafeToCaptureSoCRAM()=%d\n", v6, v7, v8, isSoCRAMCaptureAllowed, isSafeToCaptureSoCRAM);
}

uint64_t AppleBCMWLANBusInterfacePCIe::attachSoCRAMFile(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Bail out SoCRAM dump: TCM Not accessible.\n", "attachSoCRAMFile", 18849);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Coex SoCRAM ivars->fCoexCPUTrapped  %d  ivars->fCoexCPUTrapRequested %d\n", "attachSoCRAMFile", 18878, *(*(a1 + 9) + 3715), *(*(a1 + 9) + 3716));
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Bail out SoCRAM dump: No Memory\n", "attachSoCRAMFile", 18861);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Bail out SoCRAM dump: SoCRAM size is 0\n", "attachSoCRAMFile", 18840);
}

uint64_t AppleBCMWLANBusInterfacePCIe::attachCoexSoCRAMFile(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Bail out Coex SoCRAM dump: TCM Not accessible.\n", "attachCoexSoCRAMFile", 18900);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Bail out Coex SoCRAM dump: No Memory\n", "attachCoexSoCRAMFile", 18924);
}

uint64_t AppleBCMWLANBusInterfacePCIe::createTrapMiniDumpLog(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Error: Invalid buf_ss pointer", "createTrapMiniDumpLog", 19146);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Preview trap crashtracer mini dump is in process.\n", "createTrapMiniDumpLog", 19211);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to allocate trap crashtracer mini dump buffer\n", "createTrapMiniDumpLog", 19215);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Error: Invalid buf_ss FWMiniDumpBuffer pointer", "createTrapMiniDumpLog", 19185);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Error: Invalid buf_ss marker_sdmp pointer", "createTrapMiniDumpLog", 19178);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Error: Invalid buf_ss uuid_buf pointer", "createTrapMiniDumpLog", 19171);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Error: Invalid buf_ss header pointer", "createTrapMiniDumpLog", 19164);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Error: Invalid buf_ss pointer", "createTrapMiniDumpLog", 19153);
}

uint64_t AppleBCMWLANBusInterfacePCIe::H2DDebugRingCreateComplete()
{
  OUTLINED_FUNCTION_4();
  AppleBCMWLANBusInterface::getLogger(v1);
  OUTLINED_FUNCTION_52_0();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_130();
  v5(v4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d:%s\n", v7, v8, v9);
}

uint64_t AppleBCMWLANBusInterfacePCIe::isSystemHibernating(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:System waking up from Hibernation %u\n", "isSystemHibernating", 21615, AppleBCMWLANBusInterfacePCIe::isSystemHibernating(unsigned int &)::hasHibernateStarted);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:System entering Hibernation %u\n", "isSystemHibernating", 21610, AppleBCMWLANBusInterfacePCIe::isSystemHibernating(unsigned int &)::hasHibernateStarted);
}

uint64_t AppleBCMWLANBusInterfacePCIe::Start_Impl(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Could not open IOPCIDevice\n", "Start_Impl", 21980);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:wlan businterface start failed\n", "Start_Impl", 22016);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:AppleBCMWLANBusIntefacePCIe: deviceReady check failed\n", "Start_Impl", 22030);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Unrecognized device\n", "Start_Impl", 22055);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to read OTP data\n", "Start_Impl", 22114);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Bus PCIe init success\n", "Start_Impl", 22120);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Successfully created System State Notification Service\n", "Start_Impl", 22127);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed deferredStart()", "Start_Impl", 22134);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to create memory access.\n", "Start_Impl", 22091);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to create backplane access.\n", "Start_Impl", 22083);
}

{
  AppleBCMWLANBusInterface::getLogger(a1);
  OUTLINED_FUNCTION_25_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to create chip manager for chip %u.\n", "Start_Impl", 22064, v3);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:No config space\n", "Start_Impl", 22024);
}

void AppleBCMWLANBusInterfacePCIe::InterruptOccurredHelper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_77_0();
  if (AppleBCMWLANBusInterface::getLogger(v6))
  {
    AppleBCMWLANBusInterface::getLogger(v4);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANBusInterface::getLogger(v4);
      CCLogStream::logAlert(Logger, "[dk] %s@%d:BusInterfacePCIe: MSIEpoch %llu greater than interrupt timestamp %llu", "InterruptOccurredHelper", 22184, *(*v3 + 4768), a3);
    }
  }

  panic("AppleBCMWLANBusInterfacePCIe: MSIEpoch %llu greater than interrupt timestamp %llu", *(*v3 + 4768), a3);
}

uint64_t AppleBCMWLANBusInterfacePCIe::InterruptOccurredHelper(AppleBCMWLANBusInterface *a1)
{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logCrit(Logger, "[dk] %s@%d:Reset BackPlane Address Register\n", "InterruptOccurredHelper", 22213);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Host Initiated Mailbox Trap\n", "InterruptOccurredHelper", 22223);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Fatal error indicated from Firmware, upgrade to full reset and enabling log collection\n", "InterruptOccurredHelper", 22228);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Coex CPU trap Indicated\n", "InterruptOccurredHelper", 22234);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Coex CPU trap Requested\n", "InterruptOccurredHelper", 22238);
}

uint64_t AppleBCMWLANTimeKeeper::handleRteTimesyncIoVarAsyncCallBack(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_26(a1);
  v4 = (*(v3 + 112))(v2);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Cannot set rte_timestync: %s\n", "handleRteTimesyncIoVarAsyncCallBack", 103, v4);
}

uint64_t AppleBCMWLANTimeKeeper::synchronizeTime(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_26(a1);
  v4 = (*(v3 + 112))(v2);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Unable to set rte_timesync: %s\n", "synchronizeTime", 139, v4);
}

uint64_t AppleBCMWLANTimeKeeper::free(uint64_t a1)
{
  result = MEMORY[0x20];
  if (MEMORY[0x20])
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return CCLogStream::logCrit(*(*a1 + 32), "[dk] %s@%d:Failed to allocate AppleBCMWLANTimeKeeper_IVars\n", "free", 168);
    }
  }

  return result;
}

uint64_t AppleBCMWLANPowerManager::initWithDriver(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 24);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return CCLogStream::logAlert(*(*a2 + 24), "[dk] %s@%d: Failed to get Command Manager\n", "initWithDriver", 149);
    }
  }

  return result;
}

{
  result = *(a1 + 24);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return CCLogStream::logAlert(*(*a2 + 24), "[dk] %s@%d:Unable to get Config Manager\n", "initWithDriver", 145);
    }
  }

  return result;
}

uint64_t AppleBCMWLANPowerManager::freeResources(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

{
  result = MEMORY[0x18];
  if (MEMORY[0x18])
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return CCLogStream::logCrit(*(*a1 + 24), "[dk] %s@%d:Failed to allocate AppleBCMWLANCommander_IVars\n", "freeResources", 199);
    }
  }

  return result;
}

uint64_t AppleBCMWLANPowerManager::quiesce(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANPowerManager::configureMIMOPowerSaveConfiguration(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:Failed to configure Scan Power Policy\n", "configureMIMOPowerSaveConfiguration", 252);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANPowerManager::configureSISOPowerSavePolicy(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:MIMO_PS: Failed to Configure MIMO Power Save Params %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANPowerManager::configureSISOPowerSavePolicy(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

void AppleBCMWLANPowerManager::configureScanPowerPolicy(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_1_21(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  CCLogStream::logAlert(v1, "[dk] %s@%d:MIMO_PS: Failed to Configure Scan Power Policy  %s\n", v4, v5, v6);
  OUTLINED_FUNCTION_12_2();
}

uint64_t AppleBCMWLANPowerManager::configureScanPowerPolicy(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANPowerManager::configureMRCThreshold(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:MIMO_PS: Failed to Configure Beacon Based Radio Chain Configuration  %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANPowerManager::configureMRCThreshold(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

void AppleBCMWLANPowerManager::configureBeaconBasedRadioChainSwitch(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_1_21(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  CCLogStream::logAlert(v1, "[dk] %s@%d:MIMO_PS: Failed to Configure Beacon Based Radio Chain Configuration  %s\n", v4, v5, v6);
  OUTLINED_FUNCTION_12_2();
}

uint64_t AppleBCMWLANPowerManager::configureBeaconBasedRadioChainSwitch(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANPowerManager::handleConfigureBcnBasedRadioChainSwitchAsyncCallback(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANPowerManager::handleConfigureBcnBasedRadioChainSwitchAsyncCallback(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:MIMO_PS: Error: Failed to Configure Beacon Based Radio Chain Switch: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANPowerManager::handleMRCThresholdConfigurationAsyncCallback(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANPowerManager::handleMRCThresholdConfigurationAsyncCallback(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:MIMO_PS: Error: Failed to Configure MRC Threshold: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANPowerManager::handleScanPowerPolicyConfigurationAsyncCallback(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANPowerManager::handleScanPowerPolicyConfigurationAsyncCallback(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:MIMO_PS: Error: Failed to Configure Scan Power Policy: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANPowerManager::configureMIMOPowerSaveParams(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  if (v2 == 1)
  {
    v3 = "SISO";
  }

  else
  {
    v3 = "MIMO";
  }

  return CCLogStream::logAlert(v1, "[dk] %s@%d:Power Policy - %s Not Allowed in Associated state \n", "configureMIMOPowerSaveParams", 509, v3);
}

uint64_t AppleBCMWLANPowerManager::configureMIMOPowerSavePolicy(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:MIMO PS: Failed to configure MIMO Power Save Policy\n", "configureMIMOPowerSavePolicy", 410);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANPowerManager::configureMIMOPowerSaveAssociatedSleepEntry(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:Failed to Configure MRC Threshold\n", "configureMIMOPowerSaveAssociatedSleepEntry", 436);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

void AppleBCMWLANPowerManager::configureMIMOPowerSaveAssociatedSleepEntry(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_21(a1);
  (*(v2 + 112))(v1);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_11(v3, v4, "[dk] %s@%d: Error: cannot configure beacon based Channel Width : %s\n");
  OUTLINED_FUNCTION_12_2();
}

uint64_t AppleBCMWLANPowerManager::configureTVPMPeriodicity(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:TVPM: Failed to Configure TVPM Periodicity  %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANPowerManager::configureTVPMPeriodicity(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d: TVPM Periodicity is = %d\n", "configureTVPMPeriodicity", 3620, *(v2 + 136));
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:TVPM: invalid request buffer length %lu\n", "configureTVPMPeriodicity", 3599, 12);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logInfoIf(v1, 0x20uLL, "[dk] %s@%d:Programmed TVPM period is same as new TVPM Period\n", "configureTVPMPeriodicity", 3577);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Can not program TVPM Periodicty to %d, Waiting for IP address\n", "configureTVPMPeriodicity", 3572, 1);
}

uint64_t AppleBCMWLANPowerManager::configureBeaconBasedChannelWidthSwitch(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2, 3825173508);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:MIMO_PS: Failed to Configure Beacon Based Radio Channel Width Configuration  %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:MIMO_PS: Failed to Configure Beacon Based Radio Channel Width Configuration  %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANPowerManager::configureMIMOPowerSaveAssociatedSleepExit(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:Failed to Configure MRC Threshold\n", "configureMIMOPowerSaveAssociatedSleepExit", 478);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

void AppleBCMWLANPowerManager::configureMIMOPowerSaveAssociatedSleepExit(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_21(a1);
  (*(v2 + 112))(v1);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_11(v3, v4, "[dk] %s@%d:MIMO_PS: Failed to Configure Beacon Based Radio Channel Width Configuration  %s\n");
  OUTLINED_FUNCTION_12_2();
}

uint64_t AppleBCMWLANPowerManager::handleConfigureMIMOPSCfgAsyncCallback(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANPowerManager::handleConfigureMIMOPSCfgAsyncCallback(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:MIMO_PS: Error: Failed MIMO Power Save Configuration: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANPowerManager::setBatterySaveModeConfiguration(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:Device is not Associated, operate in SISO while Un-Associated\n", "setBatterySaveModeConfiguration", 573);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANPowerManager::configureMIMOPowerSaveForJoin(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:Failed to configure MIMO Power Policy\n", "configureMIMOPowerSaveForJoin", 643);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANPowerManager::configureMIMOPowerSaveForJoinFailure(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANPowerManager::handleGetTxRadioChainsAsyncCallback(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANPowerManager::handleGetTxRadioChainsAsyncCallback(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:MIMO_PS: Error: Failed to Get Tx Radio Chain Configuration: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANPowerManager::handleGetRxRadioChainsAsyncCallback(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANPowerManager::handleGetRxRadioChainsAsyncCallback(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:MIMO_PS: Error: Failed to Get Rx Radio Chain Configuration: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANPowerManager::handleGetRxChannelSpecAsyncCallback(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANPowerManager::handleGetRxChannelSpecAsyncCallback(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:MIMO_PS: Error: Failed to Get Rx Radio Chain Configuration: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANPowerManager::handleConfigureMIMOPSCfgGetAsyncCallback(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANPowerManager::handleConfigureMIMOPSCfgGetAsyncCallback(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:MIMO_PS: Error: Failed MIMO Power Save Configuration: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANPowerManager::handleLinkDownConfiguration(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:Failed to configure SISO Power Save Policy\n", "handleLinkDownConfiguration", 829);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANPowerManager::handleLinkUpConfiguration(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANPowerManager::handleGetMRCRssiThresholdAsyncCallback(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANPowerManager::handleGetMRCRssiThresholdAsyncCallback(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:MIMO_PS: Error: Failed to Get MRC Threshold: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANPowerManager::handleGetBCNRXAsyncCallback(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANPowerManager::handleGetBCNRXAsyncCallback(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:MIMO_PS: Error: Failed to Get Beacon Based Radio Switch State: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANPowerManager::handleGetMIMOGaurdAsyncCallback(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANPowerManager::handleGetMIMOGaurdAsyncCallback(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:MIMO_PS: Error: Failed to get MIMO Leak Gaurd Interval: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANPowerManager::handleGetMIMOPowerSaveStatusAsyncCallback(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANPowerManager::handleGetMIMOPowerSaveStatusAsyncCallback(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:MIMO_PS: Error: Failed to get MIMO Power Save Status: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANPowerManager::handleConfigureBcnBasedRadioChannelWidthSwitchAsyncCallback(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANPowerManager::handleConfigureBcnBasedRadioChannelWidthSwitchAsyncCallback(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:MIMO_PS: Error: Failed to Configure Beacon Based Radio Channel Width Switch: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANPowerManager::handleConfigureTVPMPeriodicityAsyncCallback(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANPowerManager::handleConfigureTVPMPeriodicityAsyncCallback(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:TVPM: Error: Failed to Configure TVPM Periodicity: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANPowerManager::configureOCLParams(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:OCL: OCL NOT Enabled by Host!\n", "configureOCLParams", 1945);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANPowerManager::configureOCLSetting(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:OCL: OCL NOT Enabled by Host!\n", "configureOCLSetting", 2259);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANPowerManager::configureOCLSetting(uint64_t ***a1)
{
  v1 = OUTLINED_FUNCTION_0(a1);
  (*(v2 + 112))(v1);
  OUTLINED_FUNCTION_6();
  return OUTLINED_FUNCTION_8_14(v3, v4, "[dk] %s@%d:OCL: Failed to Configure OCL %s\n");
}

uint64_t AppleBCMWLANPowerManager::configureOCLRssiThreshold(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:OCL: OCL NOT Enabled by Host!\n", "configureOCLRssiThreshold", 2296);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:OCL Threshold = %d dB\n", "configureOCLRssiThreshold", 2315, *v2);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANPowerManager::configureOCLRssiThreshold(uint64_t ***a1)
{
  v1 = OUTLINED_FUNCTION_0(a1);
  (*(v2 + 112))(v1);
  OUTLINED_FUNCTION_6();
  return OUTLINED_FUNCTION_8_14(v3, v4, "[dk] %s@%d:OCL: Failed to Configure OCL Threshold  %s\n");
}

uint64_t AppleBCMWLANPowerManager::configurePowerSaveForAWDL(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:OCL: OCL NOT Enabled by Host!\n", "configurePowerSaveForAWDL", 1998);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANPowerManager::configureEarlyBeaconTermination(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANPowerManager::configureDigitalNapPowerSave(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANPowerManager::configurePowerSaveForVirtualInterface(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:OCL: OCL NOT Enabled by Host!\n", "configurePowerSaveForVirtualInterface", 2052);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANPowerManager::handleEBTConfigurationAsyncCallback(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANPowerManager::handleEBTConfigurationAsyncCallback(uint64_t ***a1)
{
  v1 = OUTLINED_FUNCTION_0(a1);
  (*(v2 + 112))(v1);
  OUTLINED_FUNCTION_6();
  return OUTLINED_FUNCTION_8_14(v3, v4, "[dk] %s@%d:EBT: Error: Failed to Configure Opportunistic Power Save: %s\n");
}

uint64_t AppleBCMWLANPowerManager::handleOPSConfigurationAsyncCallback(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANPowerManager::handleOPSConfigurationAsyncCallback(uint64_t ***a1)
{
  v1 = OUTLINED_FUNCTION_0(a1);
  (*(v2 + 112))(v1);
  OUTLINED_FUNCTION_6();
  return OUTLINED_FUNCTION_8_14(v3, v4, "[dk] %s@%d:OPS: Error: Failed to Configure Opportunistic Power Save: %s\n");
}

uint64_t AppleBCMWLANPowerManager::handleDigitalNapConfigurationAsyncCallback(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANPowerManager::handleDigitalNapConfigurationAsyncCallback(uint64_t ***a1)
{
  v1 = OUTLINED_FUNCTION_0(a1);
  (*(v2 + 112))(v1);
  OUTLINED_FUNCTION_6();
  return OUTLINED_FUNCTION_8_14(v3, v4, "[dk] %s@%d:OPS: Error: Failed to Configure Digital Nap Power Save: %s\n");
}

uint64_t AppleBCMWLANPowerManager::handleOCLConfigurationAsyncCallback(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANPowerManager::handleOCLConfigurationAsyncCallback(uint64_t ***a1)
{
  v1 = OUTLINED_FUNCTION_0(a1);
  (*(v2 + 112))(v1);
  OUTLINED_FUNCTION_6();
  return OUTLINED_FUNCTION_8_14(v3, v4, "[dk] %s@%d:OCL: Error: Failed to Configure OCL: %s\n");
}

uint64_t AppleBCMWLANPowerManager::handleOCLRssiThresholdConfigurationAsyncCallback(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANPowerManager::handleOCLRssiThresholdConfigurationAsyncCallback(uint64_t ***a1)
{
  v1 = OUTLINED_FUNCTION_0(a1);
  (*(v2 + 112))(v1);
  OUTLINED_FUNCTION_6();
  return OUTLINED_FUNCTION_8_14(v3, v4, "[dk] %s@%d:OCL: Error: Failed to Configure OCL Threshold: %s\n");
}

uint64_t AppleBCMWLANPowerManager::setMWSCoexIoVarsAsync_mws_ocl_coex_bitmap(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:OCL or LBT not Enabled!\n", "setMWSCoexIoVarsAsync_mws_ocl_coex_bitmap", 3393);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:Error - empty Array of Channels(dictionary)!", "setMWSCoexIoVarsAsync_mws_ocl_coex_bitmap", 3421);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:NO OCL Disabled Channels Dictionary in Params\n", "setMWSCoexIoVarsAsync_mws_ocl_coex_bitmap", 3413);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:NO Properties for OCL Coex settings \n", "setMWSCoexIoVarsAsync_mws_ocl_coex_bitmap", 3402);
}

uint64_t AppleBCMWLANPowerManager::configureTVPM(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to Configure TVPM Periodicity\n", "configureTVPM", 3546);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANPowerManager::getOPSStatus(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:OPS: OPS is not Supported!\n", "getOPSStatus", 3633);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:Failed to collect OPS Status values \n", "getOPSStatus", 3668);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_7_15(v1, v2, v3, v4);
  return CCLogStream::logAlertIf(v6, 0x20uLL, "[dk] %s@%d:OPS STATUS: Version=%d Len=%d slice_index=%d disable_obss=%d disable_reasons=%d disable_duration=%d applied_ops_config=%d partial_ops_dur=%d full_ops_dur=%d OPS Histogram[%d] [%d] [%d] [%d] [%d] nav_cnt=%d plcp_cnt=%d mybss_cnt=%d obss_cnt=%d miss_dur_cnt=%d miss_pret_cnt=%d max_dur_cnt=%d wake_cnt=%d bcn_wait_cnt=%d\n", "getOPSStatus", 3684, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v7, v8, v5[10], v5[11], v5[12], v5[13], v5[14], v5[15], v5[16], v5[17], v5[18], v5[19], v5[20]);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_7_15(v1, v2, v3, v4);
  return CCLogStream::logAlertIf(v6, 0x20uLL, "[dk] %s@%d:OPS STATUS: Version=%d Len=%d slice_index=%d disable_obss=%d disable_reasons=%d disable_duration=%d applied_ops_config=%d partial_ops_dur=%d full_ops_dur=%d OPS Histogram[%d] [%d] [%d] [%d] [%d] nav_cnt=%d plcp_cnt=%d mybss_cnt=%d obss_cnt=%d miss_dur_cnt=%d miss_pret_cnt=%d max_dur_cnt=%d wake_cnt=%d bcn_wait_cnt=%d rx_time_mybss=%d,rx_time_ibss=%d,rx_time_obss=%d\n", "getOPSStatus", 3681, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v7, v8, v5[10], v5[11], v5[12], v5[13], v5[14], v5[15], v5[16], v5[17], v5[18], v5[19], v5[20], v5[21], v5[22], v5[23]);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Incorrect OPS Version\n", "getOPSStatus", 3675);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:OPS: Unable to allocate memory for rxBuffSize\n", "getOPSStatus", 3652);
}

uint64_t AppleBCMWLANPowerManager::getEBTStatus(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:EBT: EBT is not Supported!\n", "getEBTStatus", 3704);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:Failed to collect EBT Status values \n", "getEBTStatus", 3713);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANPowerManager::handleConfigureMPCThresholdAsyncCallback(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot configure MPC Threshold  value: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANPowerManager::handleConfigureBCMInterfaceStateAsyncCallback(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot configure BCM Interface State : %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANPowerManager::configureUnAssocFRTS(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:mpc_threshold value configuration failed %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANPowerManager::configureUnAssocFRTS(uint64_t a1, _DWORD *a2)
{
  result = MEMORY[0x18];
  if (MEMORY[0x18])
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logAlert(*(*a1 + 24), "[dk] %s@%d:AppleBCMWLANPowerManager_IVARS failed\n", "configureUnAssocFRTS", 3930);
    }
  }

  *a2 = -536870212;
  return result;
}

uint64_t AppleBCMWLANPowerManager::configureBCMInterface(uint64_t ***a1, char a2)
{
  v2 = (*a1)[3];
  if (a2)
  {
    v3 = "Up";
  }

  else
  {
    v3 = "Down";
  }

  v4 = OUTLINED_FUNCTION_1_0(*a1);
  v7 = (*(v5 + 112))(v4, v6);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Failed to Config BCM Interface to %s %s\n", "configureBCMInterface", 4010, v3, v7);
}

{
  v2 = (*a1)[3];
  if (a2)
  {
    v3 = "Up";
  }

  else
  {
    v3 = "Down";
  }

  v4 = OUTLINED_FUNCTION_1_0(*a1);
  v6 = (*(v5 + 112))(v4, 0);
  return CCLogStream::logInfo(v2, "[dk] %s@%d:BCM Interface is = %s %s\n", "configureBCMInterface", 4008, v3, v6);
}

uint64_t AppleBCMWLANPowerManager::setHtSisoOnly(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  v5 = *v4;
  v7 = (*(v3 + 112))(v2, v6);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:isHtSisoOnly <%d> rval=<%s>\n", "setHtSisoOnly", 4022, v5, v7);
}

uint64_t AppleBCMWLANPowerManager::getHtSisoOnly(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  v5 = *v4;
  v7 = (*(v3 + 112))(v2, v6);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:isHtSisoOnly <%d> rval=<%s>\n", "getHtSisoOnly", 4035, v5, v7);
}

uint64_t AppleBCMWLANBSSBeacon::setBeaconData(IO80211BSSBeacon *a1, _BYTE *a2)
{
  result = IO80211BSSBeacon::getLogger(a1);
  if (result)
  {
    IO80211BSSBeacon::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = IO80211BSSBeacon::getLogger(a1);
      result = CCLogStream::logAlert(Logger, "[dk] %s@%d:Beacon assembly failure\n", "setBeaconData", 140);
    }
  }

  *a2 = 0;
  return result;
}

uint64_t AppleBCMWLANBSSBeacon::setBeaconData(IO80211BSSBeacon *a1, char a2)
{
  if (IO80211BSSBeacon::getLogger(a1))
  {
    IO80211BSSBeacon::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      Logger = IO80211BSSBeacon::getLogger(a1);
      CCLogStream::logAlert(Logger, "[dk] %s@%d: Invalid argument\n", "setBeaconData", 122);
    }
  }

  return a2 & 1;
}

uint64_t AppleBCMWLANCommander::checkCurrentCmdStuck(uint64_t result)
{
  v1 = *(result + 64);
  if ((*(v1 + 244) & 1) == 0)
  {
    v2 = result;
    v3 = AppleBCMWLANCommandQueue::lockPeek(*(v1 + 104));
    if (!v3)
    {
      v3 = AppleBCMWLANCommandQueue::lockPeek(*(*(v2 + 64) + 96));
      if (!v3)
      {
        v3 = AppleBCMWLANCommandQueue::lockPeek(*(*(v2 + 64) + 88));
        if (!v3)
        {
          v6 = *(v2 + 64);
          return (*(**(v6 + 232) + 56))(*(v6 + 232), 10000);
        }
      }
    }

    QueuedTime_ns = AppleBCMWLANCommand::getQueuedTime_ns(v3, 1u);
    mach_continuous_time();
    absolutetime_to_nanoseconds();
    v5 = -QueuedTime_ns / 0xF4240uLL;
    v6 = *(v2 + 64);
    if (v5 < *(v6 + 268))
    {
      return (*(**(v6 + 232) + 56))(*(v6 + 232), 10000);
    }

    if (*(v6 + 216))
    {
      shouldLog = CCLogStream::shouldLog();
      v6 = *(v2 + 64);
      if (shouldLog)
      {
        CCLogStream::logAlert(*(v6 + 216), "[dk] %s@%d:cmd is stuck more than diff<%llu> now<%llu> qTime<%llu> \n", "checkCurrentCmdStuck", 3438, v5, 0, QueuedTime_ns);
        v6 = *(v2 + 64);
      }
    }

    (*(**(v6 + 208) + 688))(*(v6 + 208));
    return CCFaultReporter::reportFault(*(*(v2 + 64) + 312), 5u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCommander.cpp", 0xD70u, "checkCurrentCmdStuck", 0, -469793762, 0);
  }

  return result;
}

AppleBCMWLANCommand *AppleBCMWLANCommander::dequeueTxCommands(AppleBCMWLANCommander *a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 148);
  LODWORD(v2) = *(v2 + 152);
  v4 = v2 >= v3;
  v5 = v2 - v3;
  if (v5 == 0 || !v4)
  {
    return 0;
  }

  if (HIWORD(v5))
  {
    return 3758097128;
  }

  result = 0;
  if (v5 > *a2)
  {
    LOWORD(v5) = *a2;
  }

  *a2 = v5;
  if ((*(*(a1 + 8) + 321) & 1) == 0 && v5)
  {
    v9 = 0;
    while (1)
    {
      result = AppleBCMWLANCommander::dequeueCommand(a1, 1u);
      if (!result)
      {
        break;
      }

      v10 = result;
      v11 = *(a2 + 1);
      Buffer = AppleBCMWLANCommand::getBuffer(result);
      AppleBCMWLANCommandQueue::lockEnqueue(v11, Buffer);
      atomic_fetch_add_explicit((*(a1 + 8) + 148), 1u, memory_order_relaxed);
      QueuedDuration_ms = AppleBCMWLANCommand::getQueuedDuration_ms(v10);
      v14 = *(a1 + 8);
      if (QueuedDuration_ms > *(v14 + 172))
      {
        AppleBCMWLANCommand::logCmd(v10, *(v14 + 216), "Command Delayed", 1, 3, -1);
      }

      AppleBCMWLANCommand::getTransactionID(v10);
      kdebug_trace();
      AppleBCMWLANCommander::enqueueCommand(a1, 2u, v10);
      if (++v9 >= *a2)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCommander::sendCommandResponseEventToCoreAnalytics(AppleBCMWLANCommander *this, int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  read_random();
  v10 = OSString::withCString("com.apple.wifi.commanderResponseTime");
  if (v10)
  {
    v11 = v10;
    v12 = OSDictionary::withCapacity(4u);
    if (!v12)
    {
      if (OUTLINED_FUNCTION_4_17() && CCLogStream::shouldLog())
      {
        v29 = OUTLINED_FUNCTION_4_17();
        CCLogStream::logAlert(v29, "[dk] %s@%d:Fail to allocate eventPayload\n");
      }

      goto LABEL_16;
    }

    if (a2)
    {
      v13 = "pendingQueueSync";
    }

    else
    {
      v13 = "pendingQueueAsync";
    }

    v14 = OSString::withCString(v13);
    if (v14)
    {
      v15 = v14;
      v16 = OSNumber::withNumber(a3, 0x20uLL);
      if (!v16)
      {
        v31 = *(this + 8);
        v30 = this + 64;
        if (!*(v31 + 216) || (CCLogStream::shouldLog() & 1) == 0)
        {
          goto LABEL_42;
        }

        v32 = 2482;
        goto LABEL_44;
      }

      v17 = v16;
      OSDictionary::setObject(v12, v15, v16);
      OUTLINED_FUNCTION_1_10();
      (*(v18 + 16))(v15);
      (v17->release)(v17);
      v19 = OSString::withCString("outboundQueue");
      if (v19)
      {
        v15 = v19;
        v20 = OSNumber::withNumber(a4, 0x20uLL);
        if (!v20)
        {
          v33 = *(this + 8);
          v30 = this + 64;
          if (!*(v33 + 216) || (CCLogStream::shouldLog() & 1) == 0)
          {
            goto LABEL_42;
          }

          v32 = 2490;
LABEL_44:
          CCLogStream::logAlert(*(*v30 + 216), "[dk] %s@%d:Fail to allocate numValue\n", "sendCommandResponseEventToCoreAnalytics", v32);
LABEL_42:
          OUTLINED_FUNCTION_1_10();
          (*(v36 + 16))(v15);
LABEL_16:
          result = (v11->release)(v11);
          if (v12)
          {
            return (v12->release)(v12);
          }

          return result;
        }

        v21 = v20;
        OSDictionary::setObject(v12, v15, v20);
        OUTLINED_FUNCTION_1_10();
        (*(v22 + 16))(v15);
        (v21->release)(v21);
        v23 = OSString::withCString("activeQueue");
        if (v23)
        {
          v15 = v23;
          v24 = OSNumber::withNumber(a5, 0x20uLL);
          if (v24)
          {
            v25 = v24;
            OSDictionary::setObject(v12, v15, v24);
            OUTLINED_FUNCTION_1_10();
            (*(v26 + 16))(v15);
            (v25->release)(v25);
            if (IOService::CoreAnalyticsSendEvent(*(*(this + 8) + 176), 0, v11, v12, 0) && OUTLINED_FUNCTION_4_17() && CCLogStream::shouldLog())
            {
              v37 = *(*(this + 8) + 216);
              OSString::getCStringNoCopy(v11);
              OUTLINED_FUNCTION_6();
              CCLogStream::logEmergency(v37, "[dk] %s@%d:Failed to send CoreAnalyticsSendEvent for event %s", v38, v39, v40);
            }

            goto LABEL_16;
          }

          v35 = *(this + 8);
          v30 = this + 64;
          if (!*(v35 + 216) || (CCLogStream::shouldLog() & 1) == 0)
          {
            goto LABEL_42;
          }

          v32 = 2498;
          goto LABEL_44;
        }

        if (!OUTLINED_FUNCTION_4_17() || !CCLogStream::shouldLog())
        {
          goto LABEL_16;
        }
      }

      else if (!OUTLINED_FUNCTION_4_17() || !CCLogStream::shouldLog())
      {
        goto LABEL_16;
      }
    }

    else if (!OUTLINED_FUNCTION_4_17() || !CCLogStream::shouldLog())
    {
      goto LABEL_16;
    }

    v34 = OUTLINED_FUNCTION_4_17();
    CCLogStream::logAlert(v34, "[dk] %s@%d:Fail to allocate keyString\n");
    goto LABEL_16;
  }

  result = OUTLINED_FUNCTION_4_17();
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v28 = OUTLINED_FUNCTION_4_17();
      return CCLogStream::logAlert(v28, "[dk] %s@%d:Fail to allocate eventName\n", "sendCommandResponseEventToCoreAnalytics", 2470);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCommander::initWithConfig(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_12(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to create ivars->fCommandsStatus\n", "initWithConfig", 931);
}

{
  v1 = OUTLINED_FUNCTION_3_12(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:unable to create ivars->fCommandReporters\n", "initWithConfig", 923);
}

{
  v1 = OUTLINED_FUNCTION_3_12(a1);
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Unable to allocate control RX Buffer pool\n", "initWithConfig", 867);
}

{
  v1 = OUTLINED_FUNCTION_3_12(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to register command timer\n", "initWithConfig", 837);
}

{
  v1 = OUTLINED_FUNCTION_3_12(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to register command timer\n", "initWithConfig", 830);
}

{
  v1 = OUTLINED_FUNCTION_3_12(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to creat Command Monitor\n", "initWithConfig", 760);
}

{
  v1 = OUTLINED_FUNCTION_3_12(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: No bus provided to CmdManager\n", "initWithConfig", 751);
}

uint64_t AppleBCMWLANCommander::updateTimestamp(uint64_t a1, int a2)
{
  result = *(*(a1 + 64) + 216);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return CCLogStream::logAlert(*(*(a1 + 64) + 216), "[dk] %s@%d:Commander commit() failed, [0x%08x]\n", "updateTimestamp", 2729, a2);
    }
  }

  return result;
}

void AppleBCMWLANCommander::checkQueues(uint64_t a1, AppleBCMWLANCommand *this)
{
  v3 = *(a1 + 216);
  CmdName = AppleBCMWLANCommand::getCmdName(this);
  TransactionID = AppleBCMWLANCommand::getTransactionID(this);
  QueuedDuration_ms = AppleBCMWLANCommand::getQueuedDuration_ms(this);
  v7 = AppleBCMWLANCommand::getQueuedTime_ns(this) / 0x3B9ACA00uLL;
  QueuedTime_ns = AppleBCMWLANCommand::getQueuedTime_ns(this);
  CCLogStream::logEmergency(v3, "[dk] %s@%d: Command Timeout on %s (transID %u) after %lld ms (queued @ %llu.%06llu)\n", "checkQueues", 2827, CmdName, TransactionID, QueuedDuration_ms, v7, QueuedTime_ns % 0x3B9ACA00 / 0x3E8);
  OUTLINED_FUNCTION_12_2();
}

void AppleBCMWLANCommander::checkQueues(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_8_15(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  CCLogStream::logAlert(v1, "[dk] %s@%d:Command error occured while having a FW trap code=%s\n", v4, v5, v6);
  OUTLINED_FUNCTION_12_2();
}

uint64_t AppleBCMWLANCommander::completeFaultReportCallback(uint64_t a1, CCFaultReport *a2)
{
  OUTLINED_FUNCTION_12_9(a1);
  v5 = (*(*v4 + 56))(v4);
  CStringNoCopy = OSString::getCStringNoCopy(v5);
  WatchdogResult = CCFaultReport::getWatchdogResult(a2);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Failed to trigger WD %s, error 0x%x\n", "completeFaultReportCallback", 3319, CStringNoCopy, WatchdogResult);
}

uint64_t AppleBCMWLANCommander::completeFaultReportCallback(uint64_t a1)
{
  OUTLINED_FUNCTION_12_9(a1);
  v4 = *(v3 + 172);
  Size = AppleBCMWLANCommandQueue::getSize(*(v3 + 88));
  v6 = AppleBCMWLANCommandQueue::getSize(*(*a1 + 96));
  v7 = AppleBCMWLANCommandQueue::getSize(*(*a1 + 104));
  return CCLogStream::logNoticeIf(v1, 4uLL, "[dk] %s@%d:Give more time %d, P %u, O %u, A %u\n", "completeFaultReportCallback", 3333, v4, Size, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_3_12(a1);
  return CCLogStream::logNoticeIf(v1, 4uLL, "[dk] %s@%d:No command in flight\n", "completeFaultReportCallback", 3336);
}

uint64_t AppleBCMWLANCommander::issueCommand(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_12(a1);
  v3 = *v2;
  *(v2 + 1);
  v4 = *(v2 + 4);
  OUTLINED_FUNCTION_1_22(v1, v2);
  return CCLogStream::logAlert(v5, "[dk] %s@%d: CommandID info: interface[%3u] type[0x%04x] ioctl[0x%04x/%4u] iovar['%s']\n", "issueCommand", 1753, v7, v8, v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_3_12(a1);
  v3 = *v2;
  *v4;
  v5 = *(v2 + 4);
  OUTLINED_FUNCTION_1_22(v1, v2);
  return CCLogStream::logAlert(v6, "[dk] %s@%d: CommandID info: interface[%3u] type[0x%04x] ioctl[0x%04x/%4u] iovar['%s']\n", "issueCommand", 1763, v8, v9, v10, v11, v12);
}

uint64_t AppleBCMWLANCommander::issueCommand(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t *a4)
{
  v4 = OUTLINED_FUNCTION_2_19(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_27(v4, v5, v6);
  return CCLogStream::logAlert(v7, "[dk] %s@%d: CommandID info: interface[%3u] type[0x%04x] ioctl[0x%04x/%4u] iovar['%s']\n", "issueCommand", 1774, v9, v10, v11, v12, v13);
}

{
  v4 = OUTLINED_FUNCTION_2_19(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_27(v4, v5, v6);
  return CCLogStream::logAlert(v7, "[dk] %s@%d: CommandID info: interface[%3u] type[0x%04x] ioctl[0x%04x/%4u] iovar['%s']\n", "issueCommand", 1799, v9, v10, v11, v12, v13);
}

{
  v4 = OUTLINED_FUNCTION_2_19(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_27(v4, v5, v6);
  return CCLogStream::logAlert(v7, "[dk] %s@%d: CommandID info: interface[%3u] type[0x%04x] ioctl[0x%04x/%4u] iovar['%s']\n", "issueCommand", 1793, v9, v10, v11, v12, v13);
}

{
  v4 = OUTLINED_FUNCTION_2_19(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_27(v4, v5, v6);
  return CCLogStream::logAlert(v7, "[dk] %s@%d: CommandID info: interface[%3u] type[0x%04x] ioctl[0x%04x/%4u] iovar['%s']\n", "issueCommand", 1787, v9, v10, v11, v12, v13);
}

{
  v4 = OUTLINED_FUNCTION_2_19(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_27(v4, v5, v6);
  return CCLogStream::logAlert(v7, "[dk] %s@%d: CommandID info: interface[%3u] type[0x%04x] ioctl[0x%04x/%4u] iovar['%s']\n", "issueCommand", 1780, v9, v10, v11, v12, v13);
}

{
  v4 = OUTLINED_FUNCTION_2_19(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_27(v4, v5, v6);
  return CCLogStream::logAlert(v7, "[dk] %s@%d: CommandID info: interface[%3u] type[0x%04x] ioctl[0x%04x/%4u] iovar['%s']\n", "issueCommand", 1843, v9, v10, v11, v12, v13);
}

{
  v4 = OUTLINED_FUNCTION_2_19(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_27(v4, v5, v6);
  return CCLogStream::logAlert(v7, "[dk] %s@%d: CommandID info: interface[%3u] type[0x%04x] ioctl[0x%04x/%4u] iovar['%s']\n", "issueCommand", 1813, v9, v10, v11, v12, v13);
}

{
  v4 = OUTLINED_FUNCTION_2_19(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_27(v4, v5, v6);
  return CCLogStream::logAlert(v7, "[dk] %s@%d: CommandID info: interface[%3u] type[0x%04x] ioctl[0x%04x/%4u] iovar['%s']\n", "issueCommand", 1807, v9, v10, v11, v12, v13);
}

{
  v4 = OUTLINED_FUNCTION_2_19(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_27(v4, v5, v6);
  return CCLogStream::logAlert(v7, "[dk] %s@%d: CommandID info: interface[%3u] type[0x%04x] ioctl[0x%04x/%4u] iovar['%s']\n", "issueCommand", 1838, v9, v10, v11, v12, v13);
}

{
  v4 = OUTLINED_FUNCTION_2_19(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_27(v4, v5, v6);
  return CCLogStream::logAlert(v7, "[dk] %s@%d: CommandID info: interface[%3u] type[0x%04x] ioctl[0x%04x/%4u] iovar['%s']\n", "issueCommand", 1832, v9, v10, v11, v12, v13);
}

{
  v4 = OUTLINED_FUNCTION_2_19(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_27(v4, v5, v6);
  return CCLogStream::logAlert(v7, "[dk] %s@%d: CommandID info: interface[%3u] type[0x%04x] ioctl[0x%04x/%4u] iovar['%s']\n", "issueCommand", 1826, v9, v10, v11, v12, v13);
}

{
  v4 = OUTLINED_FUNCTION_2_19(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_27(v4, v5, v6);
  return CCLogStream::logAlert(v7, "[dk] %s@%d: CommandID info: interface[%3u] type[0x%04x] ioctl[0x%04x/%4u] iovar['%s']\n", "issueCommand", 1820, v9, v10, v11, v12, v13);
}

void AppleBCMWLANCommander::issueCommand(uint64_t *a1)
{
  if (OUTLINED_FUNCTION_3_12(a1))
  {
    shouldLog = CCLogStream::shouldLog();
    v2 = *a1;
    if (shouldLog)
    {
      CCLogStream::logAlert(*(v2 + 216), "[dk] %s@%d:Dumping IPC stats before assert , current ts=%llu\n", "issueCommand", 2026, *(v2 + 392));
      v2 = *a1;
    }
  }

  (*(**(v2 + 208) + 688))(*(v2 + 208));
  panic("%s Induce Dext Crash as Command is not in Completed State", "issueCommand");
}

{
  if (OUTLINED_FUNCTION_3_12(a1))
  {
    shouldLog = CCLogStream::shouldLog();
    v2 = *a1;
    if (shouldLog)
    {
      CCLogStream::logAlert(*(v2 + 216), "[dk] %s@%d:Dumping IPC stats before assert , current ts=%llu\n", "issueCommand", 2020, *(v2 + 392));
      v2 = *a1;
    }
  }

  (*(**(v2 + 208) + 688))(*(v2 + 208));
  panic("%s Induce Dext Crash as issueCommand timeout occurs", "issueCommand");
}

uint64_t AppleBCMWLANCommander::issueCommand(uint64_t a1, _DWORD *a2, const char *a3)
{
  v6 = *(*a1 + 216);
  Size = AppleBCMWLANCommandQueue::getSize(*(*a1 + 80));
  v8 = AppleBCMWLANCommandQueue::getSize(*(*a1 + 88));
  v9 = AppleBCMWLANCommandQueue::getSize(*(*a1 + 96));
  v10 = AppleBCMWLANCommandQueue::getSize(*(*a1 + 104));
  v11 = AppleBCMWLANCommandQueue::getSize(*(*a1 + 112));
  return CCLogStream::logInfo(v6, "[dk] %s@%d: ACK, no free commands left!!!! Queues: [f%u p%u o%u a%u c%u] async pending=%u drop: %s\n", "issueCommand", 1944, Size, v8, v9, v10, v11, *a2, a3);
}

uint64_t AppleBCMWLANCommander::freeResources(uint64_t a1)
{
  result = MEMORY[0xD8];
  if (MEMORY[0xD8])
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return CCLogStream::logCrit(*(*a1 + 216), "[dk] %s@%d:Failed to allocate AppleBCMWLANCommander_IVars\n", "freeResources", 1421);
    }
  }

  return result;
}

void AppleBCMWLANCommander::quiesce(uint64_t a1)
{
  OUTLINED_FUNCTION_10_9(a1);
  AppleBCMWLANCommandQueue::getSize(*(*v1 + 104));
  AppleBCMWLANCommandQueue::getSize(*(*v1 + 96));
  AppleBCMWLANCommandQueue::getSize(*(*v1 + 112));
  AppleBCMWLANCommandQueue::getSize(*(*v1 + 88));
  OUTLINED_FUNCTION_14_9();
  OUTLINED_FUNCTION_6_11();
  CCLogStream::logAlert(v2, "[dk] %s@%d:quiesce commander before fq %d aq %d obq %d compq %d pq %d, sleeping[%u] busy[%u] paused[%u]\n", "quiesce", 1510, v3, v4, v5, v6, v7, v8, v9, v10);
  OUTLINED_FUNCTION_12_2();
}

{
  OUTLINED_FUNCTION_10_9(a1);
  AppleBCMWLANCommandQueue::getSize(*(*v1 + 104));
  AppleBCMWLANCommandQueue::getSize(*(*v1 + 96));
  AppleBCMWLANCommandQueue::getSize(*(*v1 + 112));
  AppleBCMWLANCommandQueue::getSize(*(*v1 + 88));
  OUTLINED_FUNCTION_14_9();
  OUTLINED_FUNCTION_6_11();
  CCLogStream::logAlert(v2, "[dk] %s@%d:quiesce commander after fq %d aq %d obq %d compq %d pq %d, sleeping[%u] busy[%u] paused[%u]\n", "quiesce", 1545, v3, v4, v5, v6, v7, v8, v9, v10);
  OUTLINED_FUNCTION_12_2();
}

uint64_t AppleBCMWLANCommander::quiesce(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_12(a1);
  return CCLogStream::logAlertIf(v1, 4uLL, "[dk] %s@%d: waiting for %lu commands\n", "quiesce", 1522, *(v2 + 144));
}

{
  v1 = OUTLINED_FUNCTION_3_12(a1);
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Time out waiting %d ms commands %u\n", "quiesce", 1535, 500, *(v2 + 144));
}

uint64_t AppleBCMWLANCommander::reset(uint64_t a1)
{
  OUTLINED_FUNCTION_12_9(a1);
  Size = AppleBCMWLANCommandQueue::getSize(*(v3 + 80));
  v5 = AppleBCMWLANCommandQueue::getSize(*(*a1 + 104));
  v6 = AppleBCMWLANCommandQueue::getSize(*(*a1 + 96));
  v7 = AppleBCMWLANCommandQueue::getSize(*(*a1 + 112));
  v8 = AppleBCMWLANCommandQueue::getSize(*(*a1 + 88));
  return CCLogStream::logAlert(v1, "[dk] %s@%d:reset commander before move fq %d aq %d obq %d compq %d pq %d\n", "reset", 1631, Size, v5, v6, v7, v8);
}

void AppleBCMWLANCommander::reset()
{
  panic("Induce Dext Crash as AQ not Empty\n");
}

{
  panic("Induce Dext Crash as OQ not Empty\n");
}

void AppleBCMWLANCommander::reset(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_10_9(a1);
  Size = AppleBCMWLANCommandQueue::getSize(*(*v1 + 104));
  v5 = AppleBCMWLANCommandQueue::getSize(*(*v1 + 96));
  v6 = AppleBCMWLANCommandQueue::getSize(*(*v1 + 112));
  v7 = AppleBCMWLANCommandQueue::getSize(*(*v1 + 88));
  CCLogStream::logAlert(v2, "[dk] %s@%d:reset commander after move fq %d aq %d obq %d compq %d pq %d\n", "reset", 1657, v3, Size, v5, v6, v7);
  OUTLINED_FUNCTION_12_2();
}

uint64_t AppleBCMWLANCommander::parseResponseHeader()
{
  OUTLINED_FUNCTION_13_9();
  result = *(*(v3 + 64) + 216);
  if (result)
  {
    v5 = v2;
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = OUTLINED_FUNCTION_4_17();
      result = CCLogStream::logAlert(v6, "[dk] %s@%d: Invalid CDC Header Length %d.\n", "parseResponseHeader", 2073, *v5);
    }
  }

  *v0 = v1;
  return result;
}

uint64_t AppleBCMWLANCommander::parseResponseHeader(uint64_t a1)
{
  result = OUTLINED_FUNCTION_7_16(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logAlert(*(*(v2 + 64) + 216), "[dk] %s@%d: Unable to copy header data, %d\n", "parseResponseHeader", 2063, 0);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_7_16(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logAlert(*(*(v2 + 64) + 216), "[dk] %s@%d: Buffer too small for header.\n", "parseResponseHeader", 2056);
    }
  }

  *v1 = v3;
  return result;
}

void AppleBCMWLANCommander::enqueueRxCommands(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_8_15(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to trigger WD, %s\n", v4, v5, v6);
  OUTLINED_FUNCTION_12_2();
}

uint64_t AppleBCMWLANCommander::processCompletedCommand(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_12(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to update queue wait time\n", "processCompletedCommand", 2538);
}

{
  v1 = OUTLINED_FUNCTION_3_12(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to update queue wait time\n", "processCompletedCommand", 2561);
}

{
  v1 = OUTLINED_FUNCTION_3_12(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Crash IOVAR Unit Test\n", "processCompletedCommand", 2621);
}

uint64_t AppleBCMWLANCommander::processCompletedCommand(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*a1 + 216);
  v4 = *(a2 + 16);
  v5 = *(a2 + 12);
  v6 = *(a2 + 4);
  if ((*a2 & 2) != 0)
  {
    v7 = "set";
  }

  else
  {
    v7 = "get";
  }

  v8 = (*(**(*a1 + 176) + 112))(*(*a1 + 176), a3);
  return CCLogStream::logEmergency(v3, "[dk] %s@%d:\tResponse: %5u) [ cmd 0x%08lX len %6lu flags %s status %s]\n", "processCompletedCommand", 2619, v4, v5, v6, v7, v8);
}

uint64_t AppleBCMWLANCommander::processCompletedCommand(uint64_t a1, AppleBCMWLANCommand *this, uint64_t a3)
{
  v5 = *(*a1 + 216);
  CmdName = AppleBCMWLANCommand::getCmdName(this);
  v7 = (*(**(*a1 + 176) + 112))(*(*a1 + 176), a3);
  return CCLogStream::logInfo(v5, "[dk] %s@%d:Not Triggering WD, ignoring failed command %s with return code %s\n", "processCompletedCommand", 2639, CmdName, v7);
}

uint64_t ___ZN21AppleBCMWLANCommander11checkQueuesEP18IO80211TimerSource_block_invoke_cold_1(uint64_t a1, AppleBCMWLANCommand *a2)
{
  OUTLINED_FUNCTION_12_9(a1);
  CmdName = AppleBCMWLANCommand::getCmdName(v4);
  TransactionID = AppleBCMWLANCommand::getTransactionID(a2);
  v7 = AppleBCMWLANCommand::getQueuedTime_ns(a2) / 0x3B9ACA00uLL;
  QueuedTime_ns = AppleBCMWLANCommand::getQueuedTime_ns(a2);
  return CCLogStream::logEmergency(v2, "[dk] %s@%d: Command Timeout on %s (transID %u) (queued @ %llu.%06llu) suppressed\n", "checkQueues_block_invoke", 2800, CmdName, TransactionID, v7, QueuedTime_ns % 0x3B9ACA00 / 0x3E8);
}

uint64_t AppleBCMWLANCommander::configureReport(uint64_t a1, OSObject *a2)
{
  v2 = *(*a1 + 216);
  getClassNameHelper(a2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logEmergency(v2, "[dk] %s@%d:DKReporter::%s::%s(%d) ivars->fCommandMonitor->configureReport failed", v4, v5, v6, "configureReport", 3179);
}

uint64_t AppleBCMWLANCommander::configureReport()
{
  OUTLINED_FUNCTION_13_9();
  result = OUTLINED_FUNCTION_3_12(v3);
  if (result)
  {
    v6 = v5;
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = *(*v1 + 216);
      getClassNameHelper(v6);
      OUTLINED_FUNCTION_6();
      result = CCLogStream::logEmergency(v7, "[dk] %s@%d:DKReporter::%s::%s(%d) testPostConfigureAllAndAdjustV3 failed\n", v8, v9, v10, "configureReport", 3184);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t mapAppleKeyToBcomKey(_DWORD *a1, uint64_t a2)
{
  v2 = 3758097084;
  v16 = -1;
  v15 = -1;
  if (a2)
  {
    bzero(a1, 0xA4uLL);
    v5 = *(a2 + 14);
    v6 = *(a2 + 4);
    v7 = *(a2 + 8);
    if (v6 >= 0x20)
    {
      v8 = 32;
    }

    else
    {
      v8 = v6;
    }

    *a1 = v5;
    a1[1] = v8;
    if (v7 == 3)
    {
      if (v6 < 0x20)
      {
        return v2;
      }

      *(a1 + 2) = *(a2 + 16);
      *(a1 + 3) = *(a2 + 40);
      *(a1 + 4) = *(a2 + 32);
    }

    else
    {
      memcpy(a1 + 2, (a2 + 16), v8);
    }

    v9 = *(a2 + 8);
    if (v9 <= 0xC)
    {
      v10 = mapAppleCipherToBcomCryptoAlg(unsigned int &,unsigned int)::map[v9];
      if (v5 == 1 && v9 == 8)
      {
        v12 = 0;
      }

      else
      {
        v12 = (*(a2 + 12) >> 1) & 2;
      }

      a1[28] = v10;
      a1[29] = v12;
      v2 = 0;
      if (memcmp((a2 + 92), &v15, 6uLL))
      {
        v13 = *(a2 + 92);
        *(a1 + 80) = *(a2 + 96);
        a1[39] = v13;
      }
    }

    else
    {
      return 3758097090;
    }
  }

  return v2;
}

uint64_t AppleBCMWLANSensingAdapter::initWithDriver(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to get fFaultReporter\n", "initWithDriver", 568);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to get Command Manager\n", "initWithDriver", 560);
}

uint64_t AppleBCMWLANSensingAdapter::updateSensingVersion(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = *a1;
      v4 = *(*a1 + 24);
      AppleBCMWLANCore::isSensingCapable(*(v3 + 8));
      OUTLINED_FUNCTION_6();
      return CCLogStream::logAlert(v4, "[dk] %s@%d:Sensing not supported %d\n", v5, v6, v7);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_0_28(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to get WL_CSI_SUBCMD_VERSION: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANSensingAdapter::handleSensingVersion(uint64_t a1, int a2)
{
  result = *(*(a1 + 40) + 24);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return CCLogStream::logAlert(*(*(a1 + 40) + 24), "[dk] %s@%d:Unable to get sensing version from FW %d\n", "handleSensingVersion", 140, a2);
    }
  }

  return result;
}

uint64_t AppleBCMWLANSensingAdapter::handleSensingVersion(uint64_t a1, unsigned __int16 *a2)
{
  result = *(*(a1 + 40) + 24);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return CCLogStream::logAlert(*(*(a1 + 40) + 24), "[dk] %s@%d:Payload length is not of expected value, expected %zu, received %u\n", "handleSensingVersion", 144, 2uLL, *a2);
    }
  }

  return result;
}

uint64_t AppleBCMWLANSensingAdapter::setSENSING_ENABLE(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 24);
  (*(**(a1 + 8) + 112))(*(a1 + 8));
  OUTLINED_FUNCTION_6();
  result = CCLogStream::logAlert(v6, "[dk] %s@%d:Unable to set WL_CSI_SUBCMD_ENABLE: %s\n", v8, v9, v10);
  *a4 = *a3;
  return result;
}

uint64_t AppleBCMWLANSensingAdapter::getSENSING_DATA(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_28(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to get WL_CSI_SUBCMD_GET_DATA: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANSensingAdapter::getSENSING_DATA_INFO(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_28(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to get WL_CSI_SUBCMD_DATA_INFO: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANChipManagerPCIe4378::prepareHardware(AppleBCMWLANChipManagerPCIe4378 *this, AppleBCMWLANChipConfigSpace *a2, AppleBCMWLANChipBackplane *a3)
{
  v3 = 3758097090;
  v6 = 0;
  if (a2 && a3)
  {
    if (AppleBCMWLANChipBackplane::readGCICoreReg32(a3, 0xE64u, &v6))
    {
      return 3758097098;
    }

    else
    {
      v6 = v6 & 0xFFFFFFFC | 1;
      AppleBCMWLANChipBackplane::writeGCICoreReg32(a3, 0xE64u, v6);
      return 0;
    }
  }

  return v3;
}

uint64_t AppleBCMWLANChipManagerPCIe4378::checkHardware(AppleBCMWLANChipManagerPCIe4378 *this, AppleBCMWLANChipConfigSpace *a2, AppleBCMWLANChipBackplane *a3)
{
  v6 = 0;
  result = 3758097090;
  if (a2 && a3)
  {
    AppleBCMWLANChipBackplane::writeGCICoreReg32(a3, 0x40u, 4u);
    if (AppleBCMWLANChipBackplane::readGCICoreReg32(a3, 0x204u, &v6) || (v6 & 0x4000) != 0)
    {
      return 3758097098;
    }

    else
    {
      v5 = AppleBCMWLANChipBackplane::readGCICoreReg32(a3, 0x40u, &v6);
      result = 3758097098;
      if (!v5)
      {
        if (v6 == 4)
        {
          return 0;
        }

        else
        {
          return 3758097098;
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeFlowQueue::initWithProviderAndQueueInfo(OSObject *a1, AppleBCMWLANBusInterfacePCIe *a2, uint64_t a3, unsigned __int8 a4, IO80211SkywalkInterface *a5, BOOL (__cdecl *a6)(OSObjectInterface *__hidden this), void (__cdecl *a7)(OSObjectInterface *__hidden this))
{
  *v26.octet = a3;
  *&v26.octet[4] = WORD2(a3);
  result = OSObject::init(a1);
  if (result)
  {
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(a5);
    result = IO80211FlowQueue::initWithParamaters(a1, &v26, InterfaceId, a4);
    if (result)
    {
      result = IOMallocZeroTyped();
      a1[1].OSObjectInterface::__vftable = result;
      if (result)
      {
        *(result + 36) = v26;
        a1[1].OSObjectInterface::__vftable[5].init = a6;
        v15 = a1[1].OSObjectInterface::__vftable;
        init = v15[5].init;
        if (init)
        {
          (*(*init + 8))(init);
          v15 = a1[1].OSObjectInterface::__vftable;
        }

        v15[5].free = a7;
        a1[1].OSObjectInterface::__vftable[6].free = a5;
        LOWORD(a1[1].OSObjectInterface::__vftable[8].free) = -1;
        a1[1].OSObjectInterface::__vftable[6].init = a2;
        a1[1].OSObjectInterface::__vftable[4].free = 0;
        v17 = (*(*a1[1].OSObjectInterface::__vftable[6].init + 752))();
        v18 = OSMetaClassBase::safeMetaCast(v17, gAppleBCMWLANPCIeSkywalkMetaClass);
        a1[1].OSObjectInterface::__vftable[7].free = AppleBCMWLANPCIeSkywalk::getPacketPool(v18);
        v19 = a1[1].OSObjectInterface::__vftable;
        if (v19[5].init)
        {
          shouldLog = CCLogStream::shouldLog();
          v19 = a1[1].OSObjectInterface::__vftable;
          if (shouldLog)
          {
            v24 = v19[5].init;
            v25 = IO80211SkywalkInterface::getInterfaceId(a5);
            CCLogStream::logAlert(v24, "[dk] %s@%d:%s: flowQ %p IfID:%u ac:%u \n", "initWithProviderAndQueueInfo", 335, "initWithProviderAndQueueInfo", a1, v25, a4);
            v19 = a1[1].OSObjectInterface::__vftable;
          }
        }

        v19[3].init = &v19[3];
        a1[1].OSObjectInterface::__vftable[3].free = &a1[1].OSObjectInterface::__vftable[3];
        WORD1(a1[1].OSObjectInterface::__vftable[8].free) = 0;
        LODWORD(a1[1].OSObjectInterface::__vftable[4].init) = 0;
        BYTE1(a1[1].OSObjectInterface::__vftable[8].init) = a4;
        LOBYTE(a1[1].OSObjectInterface::__vftable[8].init) = IO80211SkywalkInterface::getInterfaceId(a5);
        v21 = a1[1].OSObjectInterface::__vftable;
        HIWORD(v21[8].init) = v21[2].free;
        *(&v21[8].init + 2) = HIDWORD(v21[2].init);
        if (AppleBCMWLANBusInterfacePCIe::isTSICMPV6LoggingEnabled(a2))
        {
          TweakAllTxAsTS = 1;
        }

        else
        {
          TweakAllTxAsTS = AppleBCMWLANBusInterfacePCIe::getTweakAllTxAsTS(a2);
        }

        BYTE4(a1[1].OSObjectInterface::__vftable[8].free) = TweakAllTxAsTS;
        BYTE5(a1[1].OSObjectInterface::__vftable[8].free) = AppleBCMWLANBusInterfacePCIe::isTSLoggingEnabled(a2);
        IgnoreTSIfBitmap = AppleBCMWLANBusInterfacePCIe::getIgnoreTSIfBitmap(a2);
        BYTE6(a1[1].OSObjectInterface::__vftable[8].free) = (IgnoreTSIfBitmap >> IO80211SkywalkInterface::getInterfaceId(a5)) & 1;
        HIBYTE(a1[1].OSObjectInterface::__vftable[8].free) = AppleBCMWLANBusInterfacePCIe::getTSTxExtendedFlags(a2);
        LODWORD(a1[1].OSObjectInterface::__vftable[9].init) = AppleBCMWLANBusInterfacePCIe::getTimestampingMode(a2);
        return 1;
      }
    }
  }

  return result;
}

AppleBCMWLANItemRing *AppleBCMWLANPCIeFlowQueue::getRingFreeSpace(AppleBCMWLANPCIeFlowQueue *this)
{
  v2 = *(this + 8);
  result = *(v2 + 112);
  if (result)
  {
    v4 = *(v2 + 64);
    if (v4 > AppleBCMWLANItemRing::getWritableItemCount(result))
    {
      return 0;
    }

    else
    {
      return (AppleBCMWLANItemRing::getWritableItemCount(*(*(this + 8) + 112)) - *(*(this + 8) + 64));
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeFlowQueue::pendingPackets(uint64_t a1, int a2)
{
  ReadableItemCount = AppleBCMWLANItemRing::getReadableItemCount(*(*a1 + 24));
  v5 = AppleBCMWLANPCIeTransmitFlowRing::packetsWaitingForRingCount(*(*a1 + 24), 3);
  return IOLog(" AppleBCMWLANPCIeFlowQueue::pendingPackets(), Overflow detected, getReadableItemCount[%u] packetsWaitingForRingCount[%u] packets[%u]", ReadableItemCount, v5, a2);
}

uint64_t AppleBCMWLANPCIeFlowQueue::fwRingFill(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_0_29(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid parentIf\n", "fwRingFill", 611);
}

{
  v1 = OUTLINED_FUNCTION_0_29(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:tx submit, out of tracker\n", "fwRingFill", 701);
}

OSObject *AppleBCMWLANTimeTrace::withSize(AppleBCMWLANTimeTrace *this, int a2, int a3)
{
  if (!this)
  {
    return 0;
  }

  v5 = this;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANTimeTraceMetaClass, &v9))
  {
    return 0;
  }

  v6 = v9;
  if (v9)
  {
    if (((v9->init)(v9) & 1) == 0 || (LODWORD(v6[1].retain) = v5, HIDWORD(v6[1].getMetaClass) = a2, LODWORD(v6[1].getMetaClass) = a3, HIDWORD(v6[1].retain) = 0, v6[1].Dispatch = (552 * LODWORD(v6[1].retain)), Dispatch = v6[1].Dispatch, (v6[1].isEqualTo = IOMallocZeroData()) == 0))
    {
      (v6->release)(v6);
      return 0;
    }
  }

  return v6;
}

BOOL AppleBCMWLANTimeTrace::init(OSObject *this)
{
  result = OSObject::init(this);
  if (result)
  {
    v3 = IOMallocZeroTyped();
    this[1].OSMetaClassBase::__vftable = v3;
    return v3 != 0;
  }

  return result;
}

uint64_t AppleBCMWLANTimeTrace::iterate(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a1 + 40);
  if (!a3)
  {
    a3 = *(v11 + 12);
  }

  if (!*(v11 + 8))
  {
    return 0;
  }

  if (!a2)
  {
    return 3758097090;
  }

  result = 0;
  if (*(v11 + 12) && a3)
  {
    v13 = 0;
    v14 = a3;
    for (i = 1; ; ++i)
    {
      result = a2(*(v11 + 24) + v13, a4, a5, a6);
      if (result)
      {
        break;
      }

      v11 = *(a1 + 40);
      v13 += 552;
      if (i >= *(v11 + 12) || i >= v14)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANTimeTrace::recordTracevWithTimestamp(AppleBCMWLANTimeTrace *this, unint64_t *a2, uint64_t a3, uint64_t a4, const char *a5, va_list a6)
{
  if (!**(this + 5))
  {
    return 0;
  }

  mach_continuous_nanoseconds = AppleBCMWLANUtil::get_mach_continuous_nanoseconds(0, a2);
  result = AppleBCMWLANTimeTrace::getRecordTraceElement(this);
  if (result)
  {
    *(result + 8) = mach_continuous_nanoseconds;
    *(result + 16) = a2;
    *(result + 24) = a3;
    *(result + 32) = a4;
    vsnprintf((result + 40), 0x200uLL, a5, a6);
    return 1;
  }

  return result;
}

void *AppleBCMWLANTimeTrace::getRecordTraceElement(AppleBCMWLANTimeTrace *this)
{
  v1 = *(this + 5);
  v2 = *(v1 + 24);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v1 + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v1 + 12);
  if (v4 >= v3)
  {
    return 0;
  }

  result = (v2 + 552 * v4);
  *result = v4;
  v7 = *(this + 5);
  v8 = v7[3] + 1;
  if (v7[1] == 1)
  {
    v8 %= v7[2];
  }

  v7[3] = v8;
  return result;
}

uint64_t AppleBCMWLANTimeTrace::recordTracevFromMarkTimestamp(AppleBCMWLANTimeTrace *this, unint64_t *a2, uint64_t a3, const char *a4, va_list a5)
{
  if (!**(this + 5))
  {
    return 0;
  }

  mach_continuous_nanoseconds = AppleBCMWLANUtil::get_mach_continuous_nanoseconds(0, a2);
  return AppleBCMWLANTimeTrace::recordTracevWithTimestamp(this, (mach_continuous_nanoseconds - *(*(this + 5) + 16)), a2, a3, a4, a5);
}

OSObject *AppleBCMWLANChipManagerPCIe::getChipProvisioningData(AppleBCMWLANChipManagerPCIe *this, const char *a2)
{
  v2 = *(*(this + 8) + 168);
  if (!v2 || !(*(*v2 + 72))(v2))
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_1_23();

  return OSDictionary::getObject(v4, a2);
}

uint64_t AppleBCMWLANChipManagerPCIe::getChipProvisioningData(AppleBCMWLANChipManagerPCIe *this, const char *a2, unsigned __int8 *a3, size_t Length, unint64_t *a5)
{
  v5 = 3758097086;
  if (*(*(this + 8) + 168))
  {
    ChipProvisioningData = AppleBCMWLANChipManagerPCIe::getChipProvisioningData(this, a2);
    if (ChipProvisioningData)
    {
      v10 = OSMetaClassBase::safeMetaCast(ChipProvisioningData, gOSDataMetaClass);
      if (v10)
      {
        v11 = v10;
        if (OSData::getLength(v10))
        {
          if (OSData::getBytesNoCopy(v11))
          {
            if (OSData::getLength(v11) < Length)
            {
              Length = OSData::getLength(v11);
            }

            if (a3 && Length)
            {
              BytesNoCopy = OSData::getBytesNoCopy(v11);
              memcpy(a3, BytesNoCopy, Length);
            }

            v5 = 0;
            if (a5)
            {
              *a5 = OSData::getLength(v11);
            }
          }
        }
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANChipManagerPCIe::setChipProvisioningData(AppleBCMWLANChipManagerPCIe *this, const char *a2, OSObject *a3)
{
  result = 0;
  if (a3)
  {
    v5 = *(*(this + 8) + 168);
    if (v5)
    {
      if (OSDictionary::setObject(v5, a2, a3))
      {
        return 0;
      }

      else
      {
        return 3758097084;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANChipManagerPCIe::readChipProvisioningData(AppleBCMWLANChipManagerPCIe *this, AppleBCMWLANChipBackplane *a2, const OSData *a3)
{
  v49 = 0;
  if (*(*(this + 8) + 176))
  {
    return 0;
  }

  v3 = 3758097085;
  if (!a2 || AppleBCMWLANChipManagerPCIe::readSROM(this, a2, a3))
  {
    return 3758097086;
  }

  v5 = OUTLINED_FUNCTION_3_13();
  if (!v5)
  {
    return 3758097086;
  }

  v7 = (2 * *(v6 + 140));
  if (OSData::getLength(v5) != v7)
  {
    return 3825175817;
  }

  v8 = OUTLINED_FUNCTION_3_13();
  BytesNoCopy = OSData::getBytesNoCopy(v8);
  if (!BytesNoCopy)
  {
    return 3825175818;
  }

  v10 = BytesNoCopy;
  v11 = OSData::withBytes(BytesNoCopy, (2 * *(*(this + 8) + 140)));
  if (v11)
  {
    v12 = v11;
    v13 = OUTLINED_FUNCTION_1_23();
    if (v13)
    {
      OSDictionary::setObject(v13, "SROM", v12);
    }

    OUTLINED_FUNCTION_1_10();
    (*(v14 + 16))(v12);
    v15 = OUTLINED_FUNCTION_3_13();
    v16 = OSData::getBytesNoCopy(v15) + *(*(this + 8) + 156);
    bytes[0] = v16[1];
    bytes[1] = *v16;
    bytes[2] = v16[3];
    bytes[3] = v16[2];
    bytes[4] = v16[5];
    bytes[5] = v16[4];
    v17 = OSData::withBytes(bytes, 6uLL);
    if (v17)
    {
      v18 = v17;
      v19 = OUTLINED_FUNCTION_1_23();
      if (v19)
      {
        OSDictionary::setObject(v19, "macaddress", v18);
      }

      OUTLINED_FUNCTION_1_10();
      (*(v20 + 16))(v18);
      v21 = OSData::withCapacity(1u);
      if (v21)
      {
        v22 = v21;
        OSData::appendBytes(v21, &v10[*(*(this + 8) + 148)], 1uLL);
        v23 = OUTLINED_FUNCTION_1_23();
        if (v23)
        {
          OSDictionary::setObject(v23, "SROM:version", v22);
        }

        OUTLINED_FUNCTION_1_10();
        (*(v24 + 16))(v22);
        v25 = OSData::withCapacity(2u);
        if (v25)
        {
          v26 = v25;
          OSData::appendBytes(v25, &v10[*(*(this + 8) + 152) + 1], 1uLL);
          OSData::appendBytes(v26, &v10[*(*(this + 8) + 152)], 1uLL);
          v27 = OUTLINED_FUNCTION_1_23();
          if (v27)
          {
            OSDictionary::setObject(v27, "SROM:signature", v26);
          }

          OUTLINED_FUNCTION_1_10();
          (*(v28 + 16))(v26);
          v29 = OSData::withCapacity(2u);
          if (v29)
          {
            v30 = v29;
            OSData::appendBytes(v29, v10 + 7, 1uLL);
            OSData::appendBytes(v30, v10 + 6, 1uLL);
            v31 = OUTLINED_FUNCTION_1_23();
            if (v31)
            {
              OSDictionary::setObject(v31, "svid", v30);
            }

            OUTLINED_FUNCTION_1_10();
            (*(v32 + 16))(v30);
            v48 = getcrc8(v10, 2 * *(*(this + 8) + 140), 0xFFu);
            v33 = OSData::withCapacity(1u);
            if (v33)
            {
              v34 = v33;
              OSData::appendBytes(v33, &v48, 1uLL);
              v35 = OUTLINED_FUNCTION_1_23();
              if (v35)
              {
                OSDictionary::setObject(v35, "checksum:value", v34);
              }

              (v34->release)(v34);
              v47 = v48 == 159;
              v36 = OSData::withCapacity(1u);
              if (v36)
              {
                v37 = v36;
                OSData::appendBytes(v36, &v47, 1uLL);
                v38 = OUTLINED_FUNCTION_1_23();
                if (v38)
                {
                  OSDictionary::setObject(v38, "checksum:valid", v37);
                }

                (v37->release)(v37);
                v39 = OUTLINED_FUNCTION_3_13();
                LOBYTE(v49) = *OSData::getBytesNoCopy(v39, (*(v40 + 160) + 1), 1uLL);
                v41 = OUTLINED_FUNCTION_3_13();
                HIBYTE(v49) = *OSData::getBytesNoCopy(v41, *(v42 + 160), 1uLL);
                v43 = OSData::withCapacity(2u);
                if (v43)
                {
                  v44 = v43;
                  OSData::appendBytes(v43, &v49, 1uLL);
                  OSData::appendBytes(v44, &v49 + 1, 1uLL);
                  v45 = OUTLINED_FUNCTION_1_23();
                  if (v45)
                  {
                    OSDictionary::setObject(v45, "SKU", v44);
                  }

                  (v44->release)(v44);
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v3;
}

uint64_t AppleBCMWLANChipManagerPCIe::readSROM(AppleBCMWLANChipManagerPCIe *this, AppleBCMWLANChipBackplane *a2, const OSData *a3)
{
  v31 = 0;
  v29 = 0;
  v30 = 0;
  bytes = 0;
  v5 = *(this + 8);
  if (*(v5 + 176))
  {
    goto LABEL_20;
  }

  v7 = 3758097105;
  if (!a2)
  {
    v7 = 3758097086;
    goto LABEL_21;
  }

  if (a3)
  {
    if (OSData::getLength(a3))
    {
      v8 = OSData::withData(a3);
      goto LABEL_8;
    }

    v5 = *(this + 8);
  }

  v8 = OSData::withCapacity(2 * *(v5 + 140));
LABEL_8:
  *(*(this + 8) + 176) = v8;
  if (!*(*(this + 8) + 176))
  {
    goto LABEL_25;
  }

  if (AppleBCMWLANChipBackplane::readCommonCoreReg32(a2, 4u, &v29))
  {
    OUTLINED_FUNCTION_19_1();
    if ((*(v18 + 72))(this) && (OUTLINED_FUNCTION_19_1(), (*(v19 + 72))(this), CCLogStream::shouldLog()))
    {
      OUTLINED_FUNCTION_19_1();
      v27 = (*(v26 + 72))(this);
      CCLogStream::logAlert(v27, "[dk] %s@%d:Failed to read core capabilities\n", "readSROM", 1025);
      v7 = 3758097129;
    }

    else
    {
      v7 = 3758097129;
    }

    goto LABEL_21;
  }

  if ((v29 & 0x40000000) != 0)
  {
    AppleBCMWLANChipBackplane::readCommonCoreReg32(a2, 0x190u, &v30);
    if (!a3)
    {
      v9 = *(this + 8);
      if ((*(v9 + 140) & 0x7FFFFFFF) != 0)
      {
        v10 = 0;
        do
        {
          OSData::appendBytes(*(v9 + 176), &bytes, 1uLL);
          ++v10;
          v9 = *(this + 8);
        }

        while (v10 < 2 * *(v9 + 140));
      }

      if (OSData::getBytesNoCopy(*(v9 + 176)))
      {
        BytesNoCopy = AppleBCMWLANChipBackplane::writeCommonCoreReg32(a2, 0x190u, v30 & 0xFFFFFFEF);
        if ((*(*(this + 8) + 140) & 0x7FFFFFFF) != 0)
        {
          v12 = 0;
          do
          {
            AppleBCMWLANChipManagerPCIe::SROM_cc_cmd(BytesNoCopy, a2, 0, v12, &v31);
            v13 = v31;
            v14 = OUTLINED_FUNCTION_3_13();
            BytesNoCopy = OSData::getBytesNoCopy(v14);
            *(BytesNoCopy + v12++) = v13;
          }

          while (v12 < (*(*(this + 8) + 140) & 0x7FFFFFFFu));
        }

        AppleBCMWLANChipBackplane::writeCommonCoreReg32(a2, 0x190u, v30);
        goto LABEL_20;
      }

LABEL_25:
      v7 = 3758097085;
      goto LABEL_21;
    }

LABEL_20:
    v7 = 0;
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_19_1();
  if ((*(v20 + 72))(this))
  {
    OUTLINED_FUNCTION_19_1();
    (*(v21 + 72))(this);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_19_1();
      v23 = (*(v22 + 72))(this);
      CCLogStream::logAlert(v23, "[dk] %s@%d:Chip does not support SPROM\n", "readSROM", 1029);
    }
  }

LABEL_21:
  OUTLINED_FUNCTION_19_1();
  if ((*(v15 + 72))(this))
  {
    OUTLINED_FUNCTION_19_1();
    (*(v16 + 72))(this);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_19_1();
      v25 = (*(v24 + 72))(this);
      CCLogStream::logAlert(v25, "[dk] %s@%d: SROM present:%d, OTP present:%d, SROM forced:%d\n", "readSROM", 1061, v30 & 1, (v30 >> 5) & 1, a3 != 0);
    }
  }

  return v7;
}

uint64_t AppleBCMWLANChipManagerPCIe::validateChipProvisioningData(AppleBCMWLANChipManagerPCIe *this)
{
  v34 = 0;
  if (!*(*(this + 8) + 168))
  {
    return 3758097086;
  }

  *v35 = 0u;
  v36 = 0u;
  if (AppleBCMWLANChipManagerPCIe::getChipProvisioningData(this, "checksum:valid", v35, 0x20uLL, &v34) || !v35[0])
  {
    OUTLINED_FUNCTION_24_1();
    if ((*(v24 + 72))(this))
    {
      OUTLINED_FUNCTION_24_1();
      (*(v25 + 72))(this);
      v14 = 3825175815;
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_24_1();
        v27 = (*(v26 + 72))(this);
        CCLogStream::logAlert(v27, "[dk] %s@%d: Invalid checksum\n");
      }
    }

    else
    {
      return 3825175815;
    }
  }

  else
  {
    *v35 = 0u;
    v36 = 0u;
    if (OUTLINED_FUNCTION_3_6(0, "SROM:version", v2, v3, v4, v5, v6, v7, v28, v30, v32, v34, 0) || *(*(this + 8) + 136) != v35[0])
    {
      v14 = 3825175811;
      OUTLINED_FUNCTION_24_1();
      if ((*(v15 + 72))(this))
      {
        OUTLINED_FUNCTION_24_1();
        (*(v16 + 72))(this);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_24_1();
          v18 = (*(v17 + 72))(this);
          CCLogStream::logAlert(v18, "[dk] %s@%d: Invalid version\n");
        }
      }
    }

    else
    {
      *v35 = 0u;
      v36 = 0u;
      if (OUTLINED_FUNCTION_3_6(0, "SROM:signature", v8, v9, v10, v11, v12, v13, v29, v31, v33, v34, 0) || *(*(this + 8) + 144) != bswap32(*v35) >> 16)
      {
        OUTLINED_FUNCTION_24_1();
        v14 = 3825175812;
        if ((*(v19 + 72))(this))
        {
          OUTLINED_FUNCTION_24_1();
          (*(v20 + 72))(this);
          if (CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_24_1();
            v22 = (*(v21 + 72))(this);
            CCLogStream::logAlert(v22, "[dk] %s@%d: Invalid signature\n", "validateChipProvisioningData", 936);
            return 3825175812;
          }
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return v14;
}

OSDataPtr AppleBCMWLANChipManagerPCIe::copySROM(AppleBCMWLANChipManagerPCIe *this)
{
  v2 = *(*(this + 8) + 176);
  if (!v2 || !OSData::getLength(v2))
  {
    return 0;
  }

  v3 = *(*(this + 8) + 176);

  return OSData::withData(v3);
}

uint64_t AppleBCMWLANChipManagerPCIe::SROM_cc_cmd(AppleBCMWLANChipManagerPCIe *this, AppleBCMWLANChipBackplane *a2, int a3, int a4, unsigned __int16 *a5)
{
  v5 = 3758097090;
  v10 = -1;
  v11 = -1;
  *a5 = -1;
  if (a2 && !a3)
  {
    AppleBCMWLANChipBackplane::writeCommonCoreReg32(a2, 0x194u, 2 * a4);
    AppleBCMWLANChipBackplane::writeCommonCoreReg32(a2, 0x190u, 0x80000000);
    v8 = -1000;
    do
    {
      if (!v8)
      {
        goto LABEL_7;
      }

      AppleBCMWLANChipBackplane::readCommonCoreReg32(a2, 0x190u, &v11);
      ++v8;
    }

    while ((v11 & 0x80000000) != 0);
    if (v8)
    {
LABEL_7:
      AppleBCMWLANChipBackplane::readCommonCoreReg32(a2, 0x198u, &v10);
      v5 = 0;
      *a5 = v10;
      return v5;
    }

    return 3758097110;
  }

  return v5;
}

uint64_t AppleBCMWLANChipManagerPCIe::prepareHardware(AppleBCMWLANChipManagerPCIe *this, AppleBCMWLANChipConfigSpace *a2, AppleBCMWLANChipBackplane *a3)
{
  result = OUTLINED_FUNCTION_4_18();
  if (v6)
  {
    v7 = v5;
    if (v5)
    {
      v8 = OUTLINED_FUNCTION_7_17();
      AppleBCMWLANChipBackplane::writeCommonCoreReg32(v8, v9, 6u);
      if (AppleBCMWLANChipBackplane::readCommonCoreReg32(v7, 0xE00u, &v14))
      {
        return OUTLINED_FUNCTION_6_12();
      }

      else
      {
        AppleBCMWLANChipBackplane::writeCommonCoreReg32(v7, 0xE00u, v14 | 0x10);
        v10 = OUTLINED_FUNCTION_7_17();
        AppleBCMWLANChipBackplane::readCommonCoreReg32(v10, v11, v12);
        result = OUTLINED_FUNCTION_6_12();
        if (!v13)
        {
          if (v14 == 6)
          {
            return 0;
          }

          else
          {
            return v3;
          }
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANChipManagerPCIe::checkHardware(AppleBCMWLANChipManagerPCIe *this, AppleBCMWLANChipConfigSpace *a2, AppleBCMWLANChipBackplane *a3)
{
  result = OUTLINED_FUNCTION_4_18();
  if (v6)
  {
    v7 = v5;
    if (v5)
    {
      v8 = OUTLINED_FUNCTION_7_17();
      AppleBCMWLANChipBackplane::writeCommonCoreReg32(v8, v9, 6u);
      if (AppleBCMWLANChipBackplane::readCommonCoreReg32(v7, 0xE00u, &v14) || (v14 & 0x10) == 0)
      {
        return OUTLINED_FUNCTION_6_12();
      }

      else
      {
        v10 = OUTLINED_FUNCTION_7_17();
        AppleBCMWLANChipBackplane::readCommonCoreReg32(v10, v11, v12);
        result = OUTLINED_FUNCTION_6_12();
        if (!v13)
        {
          if (v14 == 6)
          {
            return 0;
          }

          else
          {
            return v3;
          }
        }
      }
    }
  }

  return result;
}

uint64_t *IO80211TLVIterator<IO80211TLVHeader<unsigned char,unsigned char,0ul,1ul,0ul>>::operator++(uint64_t a1)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 16);
  if (v3 >= 2 && *v2)
  {
    if (*(*v2 + 1) + 2 > v3)
    {
      v4 = 0;
    }

    else
    {
      v4 = *(*v2 + 1) + 2;
    }
  }

  else
  {
    v4 = 0;
  }

  result = IO80211BufferCursor::_crop((a1 + 8), v4, 0xFFFFFFFFFFFFFFFFLL, v7);
  if (v2 == v7)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = v7[1];
    *(a1 + 8) = v7[0];
    *(a1 + 16) = v6;
  }

  if (v6 < 2 || !*v2 || *(*v2 + 1) + 2 > v6)
  {
    *v2 = 0;
    v2[1] = 0;
  }

  return result;
}

uint64_t AppleBCMWLANScanAdapter::setScanHomeAwayTimeCallback(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error setting scan home away time request: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANScanAdapter::startEventScan(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error in fillScanParams4\n", "startEventScan", 1072);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:No memory for escan v4\n", "startEventScan", 1062);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error in fillScanParams2\n", "startEventScan", 1216);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:No memory for escan v2\n", "startEventScan", 1206);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error in fillScanParams3\n", "startEventScan", 1119);
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error sending event scan request: %s\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:No memory for escan v3\n", "startEventScan", 1109);
}

uint64_t AppleBCMWLANScanAdapter::eventRoamScanResult(uint64_t a1)
{
  result = OUTLINED_FUNCTION_4_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return CCLogStream::logAlert(*(*(a1 + 48) + 72), "[dk] %s@%d:Found the sync id to be non zero in roam scan results event!\n", "eventRoamScanResult", 202);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_3_14(a1);
  if (result)
  {
    v3 = v2;
    result = CCLogStream::shouldLog();
    if (result)
    {
      v4 = OUTLINED_FUNCTION_5_15();
      return CCLogStream::logAlert(v4, "[dk] %s@%d:res->buflen %u is less than wl_escan_result_t %lu\n", "eventRoamScanResult", 249, *v3, 144);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_4_19(a1);
  if (result)
  {
    v6 = v5;
    v7 = v4;
    v8 = v3;
    result = CCLogStream::shouldLog();
    if (result)
    {
      return CCLogStream::logAlert(*(*(a1 + 48) + 72), "[dk] %s@%d: Not enough space datalen(%lu) for bss_info(%u), buflen(%u) offset(%lu)\n", "eventRoamScanResult", 246, *v8, v6, *v7, 12);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_3_14(a1);
  if (result)
  {
    v3 = v2;
    result = CCLogStream::shouldLog();
    if (result)
    {
      v4 = OUTLINED_FUNCTION_5_15();
      return CCLogStream::logAlert(v4, "[dk] %s@%d: Too large buflen for bss_info(%u)\n", "eventRoamScanResult", 242, *v3);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_3_14(a1);
  if (result)
  {
    v3 = v2;
    result = CCLogStream::shouldLog();
    if (result)
    {
      v4 = OUTLINED_FUNCTION_5_15();
      return CCLogStream::logAlert(v4, "[dk] %s@%d:wle->datalen %lu is less than wl_escan_result_t %lu\n", "eventRoamScanResult", 206, *v3, 144);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_4_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return CCLogStream::logAlert(*(*(a1 + 48) + 72), "[dk] %s@%d:Invalid escan result!\n", "eventRoamScanResult", 200);
    }
  }

  return result;
}

uint64_t AppleBCMWLANScanAdapter::processScanResults(uint64_t a1, _DWORD *a2)
{
  result = OUTLINED_FUNCTION_3_14(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v4 = OUTLINED_FUNCTION_5_15();
      result = CCLogStream::logAlert(v4, "[dk] %s@%d: Allocation failure\n", "processScanResults", 349);
    }
  }

  *a2 = 0;
  return result;
}

uint64_t AppleBCMWLANScanAdapter::eventScanComplete(uint64_t *a1, uint64_t a2, _DWORD *a3)
{
  result = OUTLINED_FUNCTION_6_5(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = OUTLINED_FUNCTION_9_12(*a1);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:res->buflen %u is less than wl_escan_result_t %lu\n", "eventScanComplete", 315, v7, v8);
    }
  }

  *a3 = 0;
  return result;
}

uint64_t AppleBCMWLANScanAdapter::eventScanComplete(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = OUTLINED_FUNCTION_6_5(a1);
  if (result)
  {
    v7 = v6;
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logAlert(*(*a1 + 72), "[dk] %s@%d: Too large buflen for bss_info(%u)\n", "eventScanComplete", 308, *v7);
    }
  }

  *a3 = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_4_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = OUTLINED_FUNCTION_9_12(*(a1 + 48));
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:wle->datalen %lu is less than wl_escan_result_t %lu\n", "eventScanComplete", 269, v7, v8);
    }
  }

  *a3 = 0;
  return result;
}

uint64_t AppleBCMWLANScanAdapter::eventScanComplete(uint64_t a1, _DWORD *a2)
{
  result = OUTLINED_FUNCTION_3_14(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v4 = OUTLINED_FUNCTION_5_15();
      result = CCLogStream::logCrit(v4, "[dk] %s@%d:Event message invalid\n", "eventScanComplete", 259);
    }
  }

  *a2 = 0;
  return result;
}

uint64_t AppleBCMWLANScanAdapter::dumpScanResult(uint64_t a1, _BYTE *a2)
{
  result = OUTLINED_FUNCTION_6_5(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_15_3();
      result = CCLogStream::log();
    }
  }

  *a2 = 0;
  return result;
}

uint64_t AppleBCMWLANScanAdapter::dumpScanResult(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_14(a1);
  if (result)
  {
    v3 = v2;
    result = CCLogStream::shouldLog();
    if (result)
    {
      v4 = OUTLINED_FUNCTION_5_15();
      return CCLogStream::logCrit(v4, "[dk] %s@%d:Invalid BSS cursor size[%zu], expected %zu\n", "dumpScanResult", 416, *v3, 0x84uLL);
    }
  }

  return result;
}

uint64_t AppleBCMWLANScanAdapter::abortEventScan(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:No memory for escan v4\n", "abortEventScan", 508);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:No memory for escan v2\n", "abortEventScan", 566);
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error aborting event scan: %s\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:No memory for escan v3\n", "abortEventScan", 527);
}

uint64_t AppleBCMWLANScanAdapter::handleEScanAbortResults(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error aborting scan : %s\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logNoticeIf(v1, 0x40uLL, "[dk] %s@%d: : Success in Scan Abort\n", "handleEScanAbortResults", 604);
}

uint64_t AppleBCMWLANScanAdapter::processAndSendWLBSSInfo(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:\n", "processAndSendWLBSSInfo", 648);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logNoticeIf(v1, 0x8000uLL, "[dk] %s@%d: Adding beacon\n", "processAndSendWLBSSInfo", 676);
}

{
  result = OUTLINED_FUNCTION_1_24(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v4 = OUTLINED_FUNCTION_15_3();
      result = CCLogStream::logNotice(v4, "[dk] %s@%d: Can't add beacon, bssid is zero\n", "processAndSendWLBSSInfo", 682);
    }
  }

  *v1 = v2;
  return result;
}

{
  result = OUTLINED_FUNCTION_1_24(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v4 = OUTLINED_FUNCTION_15_3();
      result = CCLogStream::logAlert(v4, "[dk] %s@%d: bss too small\n", "processAndSendWLBSSInfo", 656);
    }
  }

  *v1 = v2;
  return result;
}

{
  result = OUTLINED_FUNCTION_1_24(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v4 = OUTLINED_FUNCTION_15_3();
      result = CCLogStream::logAlert(v4, "[dk] %s@%d: Can't add beacon, bss is null \n", "processAndSendWLBSSInfo", 655);
    }
  }

  *v1 = v2;
  return result;
}

{
  result = OUTLINED_FUNCTION_1_24(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v4 = OUTLINED_FUNCTION_15_3();
      result = CCLogStream::logAlert(v4, "[dk] %s@%d: Can't add beacon, allocation failure\n", "processAndSendWLBSSInfo", 653);
    }
  }

  *v1 = v2;
  return result;
}

uint64_t AppleBCMWLANScanAdapter::handleGetSCChanQualAsyncCallback(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:LPSC: Error: Failed to get SC chanim_stats: %s\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:LPSC: Invalid version for LPSC chanim_stats response\n", "handleGetSCChanQualAsyncCallback", 718);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logNotice(v1, "[dk] %s@%d:LPSC: No valid data\n", "handleGetSCChanQualAsyncCallback", 711);
}

uint64_t AppleBCMWLANScanAdapter::getSCChanQual(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:LPSC is not supported \n", "getSCChanQual", 808);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:LPSC: Failed to get sc chanim_stats\n", "getSCChanQual", 842);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:LPSC: Invalid version for LPSC chanim_stats response\n", "getSCChanQual", 847);
}

uint64_t AppleBCMWLANScanAdapter::fillScanParams4(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logNoticeIf(v1, 0x40uLL, "[dk] %s@%d: This is a directed scan for short SSID: %u\n", "fillScanParams4", 1277, *v2);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logNoticeIf(v1, 0x40uLL, "[dk] %s@%d: Low span scan\n", "fillScanParams4", 1313);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logNoticeIf(v1, 0x40uLL, "[dk] %s@%d: High accuracy scan\n", "fillScanParams4", 1309);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logNoticeIf(v1, 0x40uLL, "[dk] %s@%d: Passive scan\n", "fillScanParams4", 1305);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logNoticeIf(v1, 0x40uLL, "[dk] %s@%d: Active scan\n", "fillScanParams4", 1302);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logNoticeIf(v1, 0x40uLL, "[dk] %s@%d: Restrict scan to low power only\n", "fillScanParams4", 1328);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logNoticeIf(v1, 0x40uLL, "[dk] %s@%d: Offchannel scan results requested\n", "fillScanParams4", 1343);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logNoticeIf(v1, 0x40uLL, "[dk] %s@%d: FILS Discovery frames will be included in scan results\n", "fillScanParams4", 1348);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logNoticeIf(v1, 0x40uLL, "[dk] %s@%d: 6GHz followup probe requests NOT allowed\n", "fillScanParams4", 1354);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logNoticeIf(v1, 0x40uLL, "[dk] %s@%d: Originating RNR scan results will be included\n", "fillScanParams4", 1359);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logNoticeIf(v1, 0x40uLL, "[dk] %s@%d: Originating RNR scan results will be included\n", "fillScanParams4", 1364);
}

uint64_t AppleBCMWLANScanAdapter::resetSCChanimStats(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:LPSC: reset_chanim_stats failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANScanAdapter::fillScanParams3(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logNoticeIf(v1, 0x40uLL, "[dk] %s@%d: This is a directed scan for short SSID: %u\n", "fillScanParams3", 1491, *v2);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logNoticeIf(v1, 0x40uLL, "[dk] %s@%d: Low span scan\n", "fillScanParams3", 1526);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logNoticeIf(v1, 0x40uLL, "[dk] %s@%d: High accuracy scan\n", "fillScanParams3", 1522);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logNoticeIf(v1, 0x40uLL, "[dk] %s@%d: Passive scan\n", "fillScanParams3", 1518);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logNoticeIf(v1, 0x40uLL, "[dk] %s@%d: Active scan\n", "fillScanParams3", 1515);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logNoticeIf(v1, 0x40uLL, "[dk] %s@%d: Restrict scan to low power only\n", "fillScanParams3", 1541);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logNoticeIf(v1, 0x40uLL, "[dk] %s@%d: Offchannel scan results requested\n", "fillScanParams3", 1556);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logNoticeIf(v1, 0x40uLL, "[dk] %s@%d: FILS Discovery frames will be included in scan results\n", "fillScanParams3", 1561);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logNoticeIf(v1, 0x40uLL, "[dk] %s@%d: 6GHz followup probe requests NOT allowed\n", "fillScanParams3", 1570);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logNoticeIf(v1, 0x40uLL, "[dk] %s@%d: Originating RNR scan results will be included\n", "fillScanParams3", 1575);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logNoticeIf(v1, 0x40uLL, "[dk] %s@%d: Originating RNR scan results will be included\n", "fillScanParams3", 1580);
}

uint64_t AppleBCMWLANScanAdapter::fillScanParams2(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logNoticeIf(v1, 0x40uLL, "[dk] %s@%d: Low span scan\n", "fillScanParams2", 1732);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logNoticeIf(v1, 0x40uLL, "[dk] %s@%d: High accuracy scan\n", "fillScanParams2", 1728);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logNoticeIf(v1, 0x40uLL, "[dk] %s@%d: Passive scan\n", "fillScanParams2", 1724);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logNoticeIf(v1, 0x40uLL, "[dk] %s@%d: Active scan\n", "fillScanParams2", 1721);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logNoticeIf(v1, 0x40uLL, "[dk] %s@%d: Offchannel scan results requested\n", "fillScanParams2", 1757);
}

uint64_t AppleBCMWLANScanAdapter::fillScanParams(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logNoticeIf(v1, 0x40uLL, "[dk] %s@%d: Passive scan\n", "fillScanParams", 1890);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logNoticeIf(v1, 0x40uLL, "[dk] %s@%d: Active scan\n", "fillScanParams", 1887);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logNoticeIf(v1, 0x40uLL, "[dk] %s@%d: Offchannel scan results requested\n", "fillScanParams", 1906);
}

uint64_t AppleBCMWLANScanAdapter::handleEventScanStart(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventScanStart", 2234);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventScanStart", 2250);
}

{
  result = OUTLINED_FUNCTION_6_5(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_8_16();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:safe_align_up failed\n", "handleEventScanStart", 2263);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_6_5(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_8_16();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:UINT16_MAX overflow nextAlignedIndex\n", "handleEventScanStart", 2264);
    }
  }

  return result;
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:Failed to parse Event Log Record xtlv \n", "handleEventScanStart", 2279);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventScanStart", 2228);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventScanStart", 2195);
}

uint64_t AppleBCMWLANScanAdapter::handleEventScanAdd(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventScanAdd", 2367);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventScanAdd", 2375);
}

{
  result = OUTLINED_FUNCTION_6_5(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_8_16();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:safe_align_up failed\n", "handleEventScanAdd", 2390);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_6_5(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_8_16();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:UINT16_MAX overflow nextAlignedIndex\n", "handleEventScanAdd", 2391);
    }
  }

  return result;
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:Failed to parse Event Log Record xtlv \n", "handleEventScanAdd", 2405);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventScanAdd", 2361);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventScanAdd", 2325);
}

uint64_t AppleBCMWLANTxBuffer::initWithParams(IOCommand *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  result = 0;
  if (a2 && a3)
  {
    v8 = a2 + 48;
    v9 = (*(*(a2 + 48) + 168))(a2 + 48);
    OUTLINED_FUNCTION_19_1();
    if ((*(v10 + 144))(v8) + v9 < a3)
    {
      return 0;
    }

    OUTLINED_FUNCTION_19_1();
    if ((*(v11 + 144))(v8) >= a3)
    {
      return 0;
    }

    result = IOCommand::init(a1);
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v13 = (*(v12 + 168))(v8);
      OUTLINED_FUNCTION_19_1();
      if ((*(v14 + 144))(v8) + v13 < a3)
      {
        return 0;
      }

      v15 = IOMallocZeroTyped();
      *(a1 + 7) = v15;
      if (!v15)
      {
        IOLog("Failed to allocate AppleBCMWLANTxBuffer_IVars\n");
        return 0;
      }

      *(v15 + 40) = a4;
      v16 = *(*(a1 + 7) + 40);
      if (!v16)
      {
        IOLog("invalid buffer pool\n");
        return 0;
      }

      *(*(a1 + 7) + 32) = (*(*v16 + 56))(v16);
      v17 = *(*(a1 + 7) + 32);
      if (!v17)
      {
        IOLog("get buffer descriptor fail\n");
        return 0;
      }

      IO80211Buffer::setLength(v17, a3);
      **(a1 + 7) = IO80211Buffer::getBytesNoCopy(*(*(a1 + 7) + 32));
      v18 = *(a1 + 7);
      if (!*(v18 + 32))
      {
        IOLog("get buffer fail\n");
        return 0;
      }

      bzero(*v18, a3);
      OUTLINED_FUNCTION_19_1();
      *(*(a1 + 7) + 16) = (*(v19 + 144))(v8);
      *(*(a1 + 7) + 20) = -536870911;
      return 1;
    }
  }

  return result;
}

uint64_t AppleBCMWLANChipBackplane::isCoreMapped(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xA)
  {
    return 0;
  }

  v2 = *(a1 + 48);
  v3 = v2 + 32 * a2;
  if (*(v3 + 1664) == 1)
  {
    v4 = (v3 + 1640);
    if (v4[2])
    {
      if (*v4 == a2)
      {
        return 1;
      }
    }
  }

  v6 = *(v2 + 2000);
  if (!v6)
  {
    return 0;
  }

  v7 = *(v2 + 1992);
  v8 = v6 - 1;
  do
  {
    v9 = v8;
    v10 = *v7;
    v7 += 8;
    v11 = v10;
    v12 = v10 != -1 && a2 == v11;
    result = v12;
    if (v12)
    {
      break;
    }

    v8 = v9 - 1;
  }

  while (v9);
  return result;
}

uint64_t AppleBCMWLANChipBackplane::copyRegisters16(uint64_t a1, uint64_t a2, unsigned int *a3, IO80211Buffer *this)
{
  v4 = 3825173258;
  readData = 0;
  if (a2)
  {
    v7 = *(a2 + 8);
    if (*a3 < v7)
    {
      v8 = a3[1];
      if (v8 + *a3 < v7 && IO80211Buffer::getLength(this) >= v8)
      {
        BytesNoCopy = IO80211Buffer::getBytesNoCopy(this);
        v12 = *a3;
        if ((v12 & 1) == 0)
        {
          v13 = a3[1];
          if ((v13 & 1) == 0)
          {
            if (v13)
            {
              v14 = BytesNoCopy;
              v15 = 0;
              v16 = v12 >> 1;
              v17 = (v12 >> 1) + (v13 >> 1);
              v18 = 2 * (v12 >> 1);
              do
              {
                v19 = *(a2 + 16);
                v20 = *(*(a1 + 48) + 3112);
                if (v20)
                {
                  v20 = AppleBCMWLANPCIeMMIOHistory::recordMMIOBackPlane(v20, v18 + v19, 0, 2, 1, 1);
                }

                Device = AppleBCMWLANBusInterfacePCIe::getDevice(v20);
                IOPCIDevice::MemoryRead16(Device, *(a2 + 12), v18 + *(a2 + 16), &readData);
                v22 = readData;
                v23 = readData == 0xFFFFLL;
                *v14 = readData;
                v24 = *(*(a1 + 48) + 3112);
                if (v24)
                {
                  AppleBCMWLANPCIeMMIOHistory::recordMMIOBackPlane(v24, v18 + v19, v22, 2, 1, 0);
                }

                v15 |= v23;
                ++v16;
                v18 += 2;
                ++v14;
              }

              while (v16 < v17);
              if (v15)
              {
                return 3825173258;
              }

              else
              {
                return 0;
              }
            }

            else
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return v4;
}

uint64_t AppleBCMWLANChipBackplane::copyOTPReg16(uint64_t a1)
{
  OTPCoreID = AppleBCMWLANChipManagerPCIe::getOTPCoreID(*(*(a1 + 48) + 3120));
  AppleBCMWLANChipBackplane::mapCore(a1, OTPCoreID);
  v3 = OUTLINED_FUNCTION_2_20();

  return AppleBCMWLANChipBackplane::copyRegisters16(v3, v4, v5, v6);
}

uint64_t AppleBCMWLANChipBackplane::sysmemReset(AppleBCMWLANChipBackplane *this, uint32_t a2)
{
  v3 = *(*(this + 6) + 3120);
  if (v3 && AppleBCMWLANChipManagerPCIe::sysmemEnabled(v3))
  {
    v5 = OUTLINED_FUNCTION_1_25();
    AppleBCMWLANChipBackplane::writeRegister32(this, v5, 0x800u, a2);
    IOSleep(2uLL);
    if (a2)
    {
      v6 = 3;
    }

    else
    {
      v6 = 1;
    }

    v7 = OUTLINED_FUNCTION_1_25();
    AppleBCMWLANChipBackplane::writeRegister32(this, v7, 0x408u, v6);
    IOSleep(2uLL);
  }

  return 0;
}

uint64_t AppleBCMWLANChipBackplane::forcePowerLite(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_0_30(*a1);
  v3 = (*(v2 + 72))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to read PowerControl register\n", "forcePowerLite", 1949);
}

void AppleBCMWLANChipBackplane::forcePowerLite()
{
  panic("read failed for power control reg");
}

{
  panic("power control ON not in effect");
}

uint64_t AppleBCMWLANChipBackplane::writePCIeDoorbell(uint64_t a1, uint64_t *a2, int a3, int a4)
{
  result = (*(**(a1 + 3120) + 72))(*(a1 + 3120));
  if (result)
  {
    v8 = OUTLINED_FUNCTION_0_30(*a2);
    (*(v9 + 72))(v8);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v10 = OUTLINED_FUNCTION_0_30(*a2);
      v12 = (*(v11 + 72))(v10);
      return CCLogStream::logAlert(v12, "[dk] %s@%d:Invalid DB index %u, db= %u", "writePCIeDoorbell", 779, a3, a4);
    }
  }

  return result;
}

uint64_t AppleBCMWLANChipBackplane::forcePower(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_0_30(*a1);
  v3 = (*(v2 + 72))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:link down detected. Bailing out\n", "forcePower", 1876);
}

uint64_t AppleBCMWLANCommandWithXTLV::addXTLV(AppleBCMWLANCommandWithXTLV *this, __int16 a2, size_t __n, const void *__src)
{
  v4 = 3758097084;
  v5 = *(this + 5);
  v6 = *(v5 + 16);
  if (v6 + __n - *(v5 + 8) + 4 <= *(v5 + 4))
  {
    *v6 = a2;
    v6[1] = __n;
    *(*(this + 5) + 16) += 4;
    if (__n)
    {
      v8 = __n;
      memcpy(*(*(this + 5) + 16), __src, __n);
      v11 = 0;
      if (!AppleBCMWLANUtil::safe_align_up(v8, 4, &v11, v9))
      {
        v4 = 0;
        *(*(this + 5) + 16) += v11;
      }
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

uint64_t AppleBCMWLANCommandWithXTLV::initWithLengthAndHeader(uint64_t a1, uint64_t a2, int a3)
{
  result = *(a1 + 24);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return CCLogStream::logEmergency(*(*a2 + 24), "[dk] %s@%d:hdr_length too large %d\n", "initWithLengthAndHeader", 72, a3);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCommandWithXTLV::initWithLengthAndHeader(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 24);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return CCLogStream::logEmergency(*(*a2 + 24), "[dk] %s@%d:Bad fBuffer\n", "initWithLengthAndHeader", 68);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCommandWithXTLV::initWithLengthAndHeader(uint64_t a1)
{
  result = *(*(a1 + 40) + 24);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return CCLogStream::logEmergency(*(*(a1 + 40) + 24), "[dk] %s@%d:invalid hdr\n", "initWithLengthAndHeader", 52);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCommandWithXTLV::initWithLengthAndHeader(uint64_t a1, int a2)
{
  result = *(*(a1 + 40) + 24);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return CCLogStream::logEmergency(*(*(a1 + 40) + 24), "[dk] %s@%d:hdr_length too large %d\n", "initWithLengthAndHeader", 51, a2);
    }
  }

  return result;
}

{
  result = *(*(a1 + 40) + 24);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return CCLogStream::logEmergency(*(*(a1 + 40) + 24), "[dk] %s@%d:length too large %d\n", "initWithLengthAndHeader", 50, a2);
    }
  }

  return result;
}

uint64_t AppleBCMWLANUtil::safe_align_up(AppleBCMWLANUtil *this, uint64_t a2, void *a3, unint64_t *a4)
{
  result = 3758097084;
  if (!this)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_4;
  }

  if (a2)
  {
    v6 = (this - 1) & -a2;
    v7 = __CFADD__(a2, v6);
    a2 += v6;
    if (!v7)
    {
LABEL_4:
      result = 0;
      *a3 = a2;
    }
  }

  return result;
}

uint64_t AppleBCMWLANUtil::getHwFeatureFlags(IOService *this, IOService *a2, const char *a3)
{
  if (!this || !a2)
  {
    return 0;
  }

  DTParameter32 = AppleBCMWLANUtil::getDTParameter32(this, a2, "wlan.hw.feature-flags.set", 0);
  v6 = (DTParameter32 & ~AppleBCMWLANUtil::getDTParameter32(this, a2, "wlan.hw.feature-flags.clr", 0));

  return AppleBCMWLANUtil::getDTParameter32(this, a2, "wlan.hw.feature-flags", v6);
}

const OSString *AppleBCMWLANUtil::doesDictionaryKeyContainString(const OSDictionary *this, OSDictionary *a2, const char *a3, const char *a4)
{
  result = 0;
  if (this)
  {
    if (a2)
    {
      if (a3)
      {
        result = (this->getCount)(this);
        if (result)
        {
          Object = OSDictionary::getObject(this, a2);
          result = OSMetaClassBase::safeMetaCast(Object, gOSStringMetaClass);
          if (result)
          {
            v10 = result;
            result = OSString::getCStringNoCopy(result);
            if (result)
            {
              Length = OSString::getLength(v10);
              if (a4)
              {
                if (Length > a4)
                {
LABEL_11:
                  CStringNoCopy = OSString::getCStringNoCopy(v10);
                  return (strnstr(CStringNoCopy, a3, a4) != 0);
                }

                Length = OSString::getLength(v10);
              }

              a4 = Length;
              if (!Length)
              {
                return 0;
              }

              goto LABEL_11;
            }
          }
        }
      }
    }
  }

  return result;
}

const OSString *AppleBCMWLANUtil::doesDictionaryKeyEqualString(const OSDictionary *this, OSDictionary *a2, const char *a3, const char *a4)
{
  result = 0;
  if (this)
  {
    if (a2)
    {
      if (a3)
      {
        result = (this->getCount)(this);
        if (result)
        {
          Object = OSDictionary::getObject(this, a2);
          result = OSMetaClassBase::safeMetaCast(Object, gOSStringMetaClass);
          if (result)
          {
            v10 = result;
            result = OSString::getCStringNoCopy(result);
            if (result)
            {
              Length = OSString::getLength(v10);
              if (a4)
              {
                if (Length > a4)
                {
LABEL_11:
                  CStringNoCopy = OSString::getCStringNoCopy(v10);
                  return (strncmp(CStringNoCopy, a3, a4) == 0);
                }

                Length = OSString::getLength(v10);
              }

              a4 = Length;
              if (!Length)
              {
                return 0;
              }

              goto LABEL_11;
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL AppleBCMWLANUtil::AutoreleasedTimeTrace::setMarkTimestamp(AppleBCMWLANTimeTrace **this, uint64_t a2)
{
  v2 = *this;
  if (*this)
  {
    AppleBCMWLANTimeTrace::setMarkTimestamp(*this, a2);
  }

  return v2 != 0;
}

uint64_t AppleBCMWLANUtil::AutoreleasedTimeTrace::recordTraceWithTimestamp(AppleBCMWLANTimeTrace **this, unint64_t *a2, uint64_t a3, uint64_t a4, const char *a5, ...)
{
  va_start(va, a5);
  if (*this)
  {
    return AppleBCMWLANTimeTrace::recordTracevWithTimestamp(*this, a2, a3, a4, a5, va);
  }

  else
  {
    return 0;
  }
}

uint64_t AppleBCMWLANUtil::AutoreleasedTimeTrace::recordTraceFromMarkTimestamp(AppleBCMWLANTimeTrace **this, unint64_t *a2, uint64_t a3, const char *a4, ...)
{
  va_start(va, a4);
  if (*this)
  {
    return AppleBCMWLANTimeTrace::recordTracevFromMarkTimestamp(*this, a2, a3, a4, va);
  }

  else
  {
    return 0;
  }
}

uint64_t AppleBCMWLANUtil::AutoreleasedTimeTrace::timeTraceCallback(void *a1, uint64_t a2)
{
  if (a1 && a2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v4 = a1[2];
    v5 = a1[3];
    v6 = a1[4];
    v8 = 134219522;
    v9 = v3 / 0x3B9ACA00;
    v10 = 2048;
    v11 = v3 % 0x3B9ACA00;
    v12 = 2048;
    v13 = v4 / 0x3B9ACA00;
    v14 = 2048;
    v15 = v4 % 0x3B9ACA00;
    v16 = 2048;
    v17 = v5;
    v18 = 2048;
    v19 = v6;
    v20 = 2080;
    v21 = a1 + 5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "OSLog: AutoreleasedTimeTrace: logged@[%016llu.%09llu] trace@[%016llu.%09llu] type[0x%016llx] tag[0x%016llx] log['%s']\n", &v8, 0x48u);
  }

  return 0;
}

BOOL AppleBCMWLANUtil::AutoreleasedTimeTrace::dumpToLog(AppleBCMWLANUtil::AutoreleasedTimeTrace *this, unsigned int a2, unsigned int a3)
{
  v3 = *this;
  if (*this)
  {
    AppleBCMWLANTimeTrace::iterate(*this, AppleBCMWLANUtil::AutoreleasedTimeTrace::timeTraceCallback, a2, this, a3, 0);
  }

  return v3 != 0;
}

BOOL AppleBCMWLAN_isVerboseDebugLoggingAllowed(void)
{
  if ((_MergedGlobals_0 & 1) == 0)
  {
    dword_1003E8BAC |= AppleBCMWLAN_isDevFusedOrCSRInternal();
    IOParseBootArgNumber("wlan.debug.enable", &dword_1003E8BAC, 4);
    _MergedGlobals_0 = 1;
  }

  return dword_1003E8BAC != 0;
}

BOOL AppleBCMWLAN_isDevFusedOrCSRInternal(void)
{
  if ((byte_1003E8BAA & 1) == 0)
  {
    dword_1003E8BB4 = isDevFusedOrCSRInternal();
    IOParseBootArgNumber("v3.internal", &dword_1003E8BB4, 4);
    byte_1003E8BAA = 1;
  }

  return dword_1003E8BB4 == 1;
}

BOOL AppleBCMWLAN_isSoCRAMCaptureAllowed(void)
{
  if ((byte_1003E8BA9 & 1) == 0)
  {
    dword_1003E8BB0 |= AppleBCMWLAN_isDevFusedOrCSRInternal();
    IOParseBootArgNumber("wlan.debug.enable", &dword_1003E8BB0, 4);
    byte_1003E8BA9 = 1;
  }

  return dword_1003E8BB0 != 0;
}

uint64_t AppleBCMWLANLeakyApParser::parseRxRate(CCLogStream ***a1)
{
  result = AppleBCMWLANBssManager::getCurrentBSS(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return CCLogStream::logAlert(*a1[6], "[dk] %s@%d: ERROR: Received NULL pointer parameter \n", "parseRxRate", 165);
    }
  }

  return result;
}

uint64_t AppleBCMWLANLeakyApParser::parseLeakyApGuardTimeMrk()
{
  OUTLINED_FUNCTION_4();
  result = AppleBCMWLANBssManager::getCurrentBSS(v2);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logAlert(**(v1 + 48), "[dk] %s@%d: ERROR: Bad wlcLeakyInfraGrdMark \n", "parseLeakyApGuardTimeMrk", 221);
    }
  }

  *v0 = -536870206;
  return result;
}

uint64_t AppleBCMWLANLeakyApParser::parseLeakyApPacket()
{
  OUTLINED_FUNCTION_4();
  result = OUTLINED_FUNCTION_11_5(v2);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logAlert(**v1, "[dk] %s@%d:Failed to parseRxRate \n", "parseLeakyApPacket", 270);
    }
  }

  *v0 = -536870206;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  result = OUTLINED_FUNCTION_11_5(v2);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logAlert(**v1, "[dk] %s@%d:Failed to allocate pckLog\n", "parseLeakyApPacket", 263);
    }
  }

  *v0 = -536870211;
  return result;
}

uint64_t AppleBCMWLANLeakyApParser::parseLeakyApPacket(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_11_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Received too many leaky ap packets \n", "parseLeakyApPacket", 260);
}

{
  v1 = OUTLINED_FUNCTION_11_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: packet management failed. Num of log is %d, but expected zero \n", "parseLeakyApPacket", 258, *(v2 + 8));
}

{
  v1 = OUTLINED_FUNCTION_11_5(a1);
  return CCLogStream::logWarn(v1, "[dk] %s@%d: ERROR: Received NULL pointer parameter \n", "parseLeakyApPacket", 256);
}

uint64_t AppleBCMWLANLeakyApParser::parseEventLogRecordLeakyAP(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_11_5(a1);
  return CCLogStream::logInfoIf(v1, 0x200000000uLL, "[dk] %s@%d: Received  WL_LEAKY_AP_STATS_GT_TYPE \n", "parseEventLogRecordLeakyAP", 311);
}

{
  v1 = OUTLINED_FUNCTION_11_5(a1);
  return CCLogStream::logWarn(v1, "[dk] %s@%d: WARNING: FAILED to send Guard Time infomartion to the Family... \n", "parseEventLogRecordLeakyAP", 316);
}

{
  v1 = OUTLINED_FUNCTION_11_5(a1);
  return CCLogStream::logInfoIf(v1, 0x200000000uLL, "[dk] %s@%d: Received  WL_LEAKY_AP_STATS_PKT_TYPE \n", "parseEventLogRecordLeakyAP", 306);
}

{
  v1 = OUTLINED_FUNCTION_11_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: WARNING: Leaky AP event tag len/type mismatch: \n", "parseEventLogRecordLeakyAP", 328);
}

{
  v1 = OUTLINED_FUNCTION_11_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to allocate wlc_leaked_infra_packet_stat_t buf", "parseEventLogRecordLeakyAP", 295);
}

uint64_t AppleBCMWLANLeakyApParser::parseEventLogRecordLeakyAP()
{
  OUTLINED_FUNCTION_4();
  result = AppleBCMWLANBssManager::getCurrentBSS(v2);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logAlert(**(v1 + 48), "[dk] %s@%d: Received NULL pointer or malformed data \n", "parseEventLogRecordLeakyAP", 301);
    }
  }

  *v0 = -536870212;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  result = AppleBCMWLANBssManager::getCurrentBSS(v2);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logEmergency(**(v1 + 48), "[dk] %s@%d:Insufficient buf sized wlc_leaked_infra_datarecord_t %ld to hold payload", "parseEventLogRecordLeakyAP", 298, 24);
    }
  }

  *v0 = 0;
  return result;
}

uint64_t AppleBCMWLANLeakyApParser::sendLeakyApInfo(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_11_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Family callback function returned status  FAIL,\n", "sendLeakyApInfo", 355);
}

{
  v1 = OUTLINED_FUNCTION_11_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Family callback function or owner is NULL \n", "sendLeakyApInfo", 346);
}

uint64_t AppleBCMWLAN11axAdapter::handleUlOfdmaConfigurationAsyncCallback(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  v4 = (*(v3 + 112))(v2);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:11ax: Error: Failed to Configure UL OFDMA: %s\n", "handleUlOfdmaConfigurationAsyncCallback", 250, v4);
}

uint64_t CCLogStream::shouldLog()
{
  return CCLogStream::shouldLog();
}

{
  return CCLogStream::shouldLog();
}

uint64_t IO80211Buffer::getBytesNoCopy(IO80211Buffer *this)
{
  return IO80211Buffer::getBytesNoCopy(this);
}

{
  return IO80211Buffer::getBytesNoCopy(this);
}

uint64_t IO80211WorkQueue::Create()
{
  return IO80211WorkQueue::Create();
}

{
  return IO80211WorkQueue::Create();
}