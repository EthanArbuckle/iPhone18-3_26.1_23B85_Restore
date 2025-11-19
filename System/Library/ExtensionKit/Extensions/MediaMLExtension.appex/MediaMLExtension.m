uint64_t one-time initialization function for kMediaML_rssi()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("rssi", 4uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_rssi = v1;
  return result;
}

Swift::String *kMediaML_rssi.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_rssi != -1)
  {
    swift_once();
  }

  return &kMediaML_rssi;
}

uint64_t one-time initialization function for kMediaML_cca()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("cca", 3uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_cca = v1;
  return result;
}

Swift::String *kMediaML_cca.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_cca != -1)
  {
    swift_once();
  }

  return &kMediaML_cca;
}

uint64_t one-time initialization function for kMediaML_snr()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("snr", 3uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_snr = v1;
  return result;
}

Swift::String *kMediaML_snr.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_snr != -1)
  {
    swift_once();
  }

  return &kMediaML_snr;
}

uint64_t one-time initialization function for kMediaML_noise()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("noise", 5uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_noise = v1;
  return result;
}

Swift::String *kMediaML_noise.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_noise != -1)
  {
    swift_once();
  }

  return &kMediaML_noise;
}

uint64_t one-time initialization function for kMediaML_throughputTrue()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("throughput_true", 0xFuLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_throughputTrue = v1;
  return result;
}

Swift::String *kMediaML_throughputTrue.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_throughputTrue != -1)
  {
    swift_once();
  }

  return &kMediaML_throughputTrue;
}

uint64_t one-time initialization function for kMediaML_txRate()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("tx_rate", 7uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_txRate = v1;
  return result;
}

Swift::String *kMediaML_txRate.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_txRate != -1)
  {
    swift_once();
  }

  return &kMediaML_txRate;
}

uint64_t one-time initialization function for kMediaML_rxRate()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("rx_rate", 7uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_rxRate = v1;
  return result;
}

Swift::String *kMediaML_rxRate.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_rxRate != -1)
  {
    swift_once();
  }

  return &kMediaML_rxRate;
}

uint64_t one-time initialization function for kMediaML_dayOfWeek()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("dow", 3uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_dayOfWeek = v1;
  return result;
}

Swift::String *kMediaML_dayOfWeek.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_dayOfWeek != -1)
  {
    swift_once();
  }

  return &kMediaML_dayOfWeek;
}

uint64_t one-time initialization function for kMediaML_hourOfDay()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("hour", 4uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_hourOfDay = v1;
  return result;
}

Swift::String *kMediaML_hourOfDay.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_hourOfDay != -1)
  {
    swift_once();
  }

  return &kMediaML_hourOfDay;
}

uint64_t one-time initialization function for kMediaML_ssid()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ssid", 4uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_ssid = v1;
  return result;
}

Swift::String *kMediaML_ssid.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_ssid != -1)
  {
    swift_once();
  }

  return &kMediaML_ssid;
}

uint64_t one-time initialization function for kMediaML_interfaceType()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ifty", 4uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_interfaceType = v1;
  return result;
}

Swift::String *kMediaML_interfaceType.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_interfaceType != -1)
  {
    swift_once();
  }

  return &kMediaML_interfaceType;
}

uint64_t one-time initialization function for kMediaML_nData()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ndata", 5uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_nData = v1;
  return result;
}

Swift::String *kMediaML_nData.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_nData != -1)
  {
    swift_once();
  }

  return &kMediaML_nData;
}

uint64_t one-time initialization function for kMediaML_appName()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app_name", 8uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_appName = v1;
  return result;
}

Swift::String *kMediaML_appName.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_appName != -1)
  {
    swift_once();
  }

  return &kMediaML_appName;
}

uint64_t one-time initialization function for kMediaML_sessionID()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("session_id", 0xAuLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_sessionID = v1;
  return result;
}

Swift::String *kMediaML_sessionID.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_sessionID != -1)
  {
    swift_once();
  }

  return &kMediaML_sessionID;
}

uint64_t one-time initialization function for kMediaML_carrier()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("carrier", 7uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_carrier = v1;
  return result;
}

Swift::String *kMediaML_carrier.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_carrier != -1)
  {
    swift_once();
  }

  return &kMediaML_carrier;
}

uint64_t one-time initialization function for kMediaML_rsrp()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("rsrp", 4uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_rsrp = v1;
  return result;
}

Swift::String *kMediaML_rsrp.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_rsrp != -1)
  {
    swift_once();
  }

  return &kMediaML_rsrp;
}

uint64_t one-time initialization function for kMediaML_rscp()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("rscp", 4uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_rscp = v1;
  return result;
}

Swift::String *kMediaML_rscp.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_rscp != -1)
  {
    swift_once();
  }

  return &kMediaML_rscp;
}

uint64_t one-time initialization function for kMediaML_rsrq()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("rsrq", 4uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_rsrq = v1;
  return result;
}

Swift::String *kMediaML_rsrq.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_rsrq != -1)
  {
    swift_once();
  }

  return &kMediaML_rsrq;
}

uint64_t one-time initialization function for kMediaML_bars()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("bars", 4uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_bars = v1;
  return result;
}

Swift::String *kMediaML_bars.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_bars != -1)
  {
    swift_once();
  }

  return &kMediaML_bars;
}

uint64_t one-time initialization function for kMediaML_count()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("count", 5uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_count = v1;
  return result;
}

Swift::String *kMediaML_count.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_count != -1)
  {
    swift_once();
  }

  return &kMediaML_count;
}

uint64_t one-time initialization function for kMediaML_medianThroughputTrue()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("quantile(throughput_true)", 0x19uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_medianThroughputTrue = v1;
  return result;
}

Swift::String *kMediaML_medianThroughputTrue.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_medianThroughputTrue != -1)
  {
    swift_once();
  }

  return &kMediaML_medianThroughputTrue;
}

uint64_t one-time initialization function for kMediaML_binnedRssi()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("binned_rssi", 0xBuLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_binnedRssi = v1;
  return result;
}

Swift::String *kMediaML_binnedRssi.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_binnedRssi != -1)
  {
    swift_once();
  }

  return &kMediaML_binnedRssi;
}

uint64_t one-time initialization function for kMediaML_binnedRsrp()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("binned_rsrp", 0xBuLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_binnedRsrp = v1;
  return result;
}

Swift::String *kMediaML_binnedRsrp.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_binnedRsrp != -1)
  {
    swift_once();
  }

  return &kMediaML_binnedRsrp;
}

uint64_t one-time initialization function for kMediaML_binnedRsrq()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("binned_rsrq", 0xBuLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_binnedRsrq = v1;
  return result;
}

Swift::String *kMediaML_binnedRsrq.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_binnedRsrq != -1)
  {
    swift_once();
  }

  return &kMediaML_binnedRsrq;
}

uint64_t one-time initialization function for kMediaML_binnedRscp()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("binned_rscp", 0xBuLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_binnedRscp = v1;
  return result;
}

Swift::String *kMediaML_binnedRscp.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_binnedRscp != -1)
  {
    swift_once();
  }

  return &kMediaML_binnedRscp;
}

uint64_t one-time initialization function for kMediaML_binnedSnr()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("binned_snr", 0xAuLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_binnedSnr = v1;
  return result;
}

Swift::String *kMediaML_binnedSnr.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_binnedSnr != -1)
  {
    swift_once();
  }

  return &kMediaML_binnedSnr;
}

uint64_t one-time initialization function for kMediaML_throughputStdDev()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("predStdDev", 0xAuLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_throughputStdDev = v1;
  return result;
}

Swift::String *kMediaML_throughputStdDev.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_throughputStdDev != -1)
  {
    swift_once();
  }

  return &kMediaML_throughputStdDev;
}

uint64_t one-time initialization function for kMediaML_throughputPrediction()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("predVal", 7uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_throughputPrediction = v1;
  return result;
}

Swift::String *kMediaML_throughputPrediction.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_throughputPrediction != -1)
  {
    swift_once();
  }

  return &kMediaML_throughputPrediction;
}

uint64_t one-time initialization function for rssiBucket_low()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("low", 3uLL, 1);
  result = v1._countAndFlagsBits;
  rssiBucket_low = v1;
  return result;
}

Swift::String *rssiBucket_low.unsafeMutableAddressor()
{
  if (one-time initialization token for rssiBucket_low != -1)
  {
    swift_once();
  }

  return &rssiBucket_low;
}

uint64_t one-time initialization function for rssiBucket_medium()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("medium", 6uLL, 1);
  result = v1._countAndFlagsBits;
  rssiBucket_medium = v1;
  return result;
}

Swift::String *rssiBucket_medium.unsafeMutableAddressor()
{
  if (one-time initialization token for rssiBucket_medium != -1)
  {
    swift_once();
  }

  return &rssiBucket_medium;
}

uint64_t one-time initialization function for rssiBucket_high()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("high", 4uLL, 1);
  result = v1._countAndFlagsBits;
  rssiBucket_high = v1;
  return result;
}

Swift::String *rssiBucket_high.unsafeMutableAddressor()
{
  if (one-time initialization token for rssiBucket_high != -1)
  {
    swift_once();
  }

  return &rssiBucket_high;
}

uint64_t one-time initialization function for kMediaML_trainingRowCount()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("trainingRowCount", 0x10uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_trainingRowCount = v1;
  return result;
}

Swift::String *kMediaML_trainingRowCount.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_trainingRowCount != -1)
  {
    swift_once();
  }

  return &kMediaML_trainingRowCount;
}

uint64_t one-time initialization function for kMediaML_validationRowCount()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("validationRowCount", 0x12uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_validationRowCount = v1;
  return result;
}

Swift::String *kMediaML_validationRowCount.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_validationRowCount != -1)
  {
    swift_once();
  }

  return &kMediaML_validationRowCount;
}

uint64_t one-time initialization function for kMediaML_ssidCount()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ssidCount", 9uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_ssidCount = v1;
  return result;
}

Swift::String *kMediaML_ssidCount.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_ssidCount != -1)
  {
    swift_once();
  }

  return &kMediaML_ssidCount;
}

uint64_t one-time initialization function for kMediaML_appNameCount()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("appNameCount", 0xCuLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_appNameCount = v1;
  return result;
}

Swift::String *kMediaML_appNameCount.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_appNameCount != -1)
  {
    swift_once();
  }

  return &kMediaML_appNameCount;
}

uint64_t one-time initialization function for kMediaML_sessionIDCount()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sessionIDCount", 0xEuLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_sessionIDCount = v1;
  return result;
}

Swift::String *kMediaML_sessionIDCount.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_sessionIDCount != -1)
  {
    swift_once();
  }

  return &kMediaML_sessionIDCount;
}

uint64_t one-time initialization function for kMediaML_trainingMAPE()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("trainingMAPE", 0xCuLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_trainingMAPE = v1;
  return result;
}

Swift::String *kMediaML_trainingMAPE.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_trainingMAPE != -1)
  {
    swift_once();
  }

  return &kMediaML_trainingMAPE;
}

uint64_t one-time initialization function for kMediaML_validationMAPE()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("validationMAPE", 0xEuLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_validationMAPE = v1;
  return result;
}

Swift::String *kMediaML_validationMAPE.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_validationMAPE != -1)
  {
    swift_once();
  }

  return &kMediaML_validationMAPE;
}

uint64_t one-time initialization function for mediaMLBaseDirectory()
{
  v1 = type metadata accessor for URL();
  __swift_allocate_value_buffer(v1, mediaMLBaseDirectory);
  __swift_project_value_buffer(v1, mediaMLBaseDirectory);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("/private/var/mobile/Library/MediaML/", 0x24uLL, 1);
  URL.init(fileURLWithPath:)();
}

uint64_t mediaMLBaseDirectory.unsafeMutableAddressor()
{
  if (one-time initialization token for mediaMLBaseDirectory != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for URL();
  return __swift_project_value_buffer(v0, mediaMLBaseDirectory);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t one-time initialization function for mediaMLModelDirectory()
{
  v1 = type metadata accessor for URL();
  __swift_allocate_value_buffer(v1, mediaMLModelDirectory);
  __swift_project_value_buffer(v1, mediaMLModelDirectory);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("/private/var/mobile/Library/MediaML/model/", 0x2AuLL, 1);
  URL.init(fileURLWithPath:)();
}

uint64_t mediaMLModelDirectory.unsafeMutableAddressor()
{
  if (one-time initialization token for mediaMLModelDirectory != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for URL();
  return __swift_project_value_buffer(v0, mediaMLModelDirectory);
}

uint64_t one-time initialization function for mediaMLDataDirectory()
{
  v1 = type metadata accessor for URL();
  __swift_allocate_value_buffer(v1, mediaMLDataDirectory);
  __swift_project_value_buffer(v1, mediaMLDataDirectory);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("/private/var/mobile/Library/MediaML/data/", 0x29uLL, 1);
  URL.init(fileURLWithPath:)();
}

uint64_t mediaMLDataDirectory.unsafeMutableAddressor()
{
  if (one-time initialization token for mediaMLDataDirectory != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for URL();
  return __swift_project_value_buffer(v0, mediaMLDataDirectory);
}

uint64_t __swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v6 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = *(*(a1 - 8) + 64);
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return v6;
}

uint64_t one-time initialization function for logger()
{
  v1 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v1, logger);
  __swift_project_value_buffer(v1, logger);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.MediaML", 0x11uLL, 1);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DataValidation", 0xEuLL, 1);
  return Logger.init(subsystem:category:)();
}

{
  v1 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v1, static SQLiteDB.logger);
  __swift_project_value_buffer(v1, static SQLiteDB.logger);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.MediaML", 0x11uLL, 1);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sql", 3uLL, 1);
  return Logger.init(subsystem:category:)();
}

{
  v1 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v1, static MediaMLWorker.logger);
  __swift_project_value_buffer(v1, static MediaMLWorker.logger);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.MediaMLPluginApp.MediaMLExtension", 0x2BuLL, 1);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Extension", 9uLL, 1);
  return Logger.init(subsystem:category:)();
}

uint64_t logger.unsafeMutableAddressor()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return __swift_project_value_buffer(v0, logger);
}

Swift::Bool __swiftcall checkValidInterfaceType(data:)(Swift::OpaquePointer data)
{
  rawValue = data._rawValue;
  v12 = 0;
  v8 = *kMediaML_interfaceType.unsafeMutableAddressor();

  v10 = v8;
  Dictionary.subscript.getter();
  outlined destroy of String(&v10);
  if (v11[3])
  {
    if (swift_dynamicCast())
    {
      v6 = v9;
      v7 = 0;
    }

    else
    {
      v6 = 0;
      v7 = 1;
    }

    v4 = v6;
    v5 = v7;
  }

  else
  {
    outlined destroy of Any?(v11);
    v4 = 0;
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  if (v4 != *kMediaML_InterfaceType_WiFi.unsafeMutableAddressor() && v4 != *kMediaML_InterfaceType_Cellular.unsafeMutableAddressor())
  {
    return 0;
  }

  v12 = 1;
  return 1;
}

uint64_t outlined destroy of String(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

uint64_t *outlined destroy of Any?(uint64_t *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v3 = a1[3];
  if ((*(*(v3 - 8) + 80) & 0x20000) == 0)
  {
    return (*(*(v3 - 8) + 8))(a1);
  }

  v2 = *a1;
}

Swift::Bool __swiftcall checkValidThroughputTrue(data:)(Swift::OpaquePointer data)
{
  rawValue = data._rawValue;
  v11 = 0;
  v7 = *kMediaML_throughputTrue.unsafeMutableAddressor();

  v9 = v7;
  Dictionary.subscript.getter();
  outlined destroy of String(&v9);
  if (v10[3])
  {
    if (swift_dynamicCast())
    {
      v5 = v8;
      v6 = 0;
    }

    else
    {
      v5 = 0.0;
      v6 = 1;
    }

    v3 = v5;
    v4 = v6;
  }

  else
  {
    outlined destroy of Any?(v10);
    v3 = 0.0;
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  if (v3 <= 0.0)
  {
    return 0;
  }

  v11 = 1;
  return 1;
}

Swift::Bool __swiftcall validateAppName(text:)(Swift::String text)
{
  v19 = 0;
  v17 = 0;
  v18 = 0;
  v13 = 0;
  v21 = text;
  type metadata accessor for NSRegularExpression();
  pattern = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("^[A-Za-z0-9./]{1,155}$", 0x16uLL, 1);
  type metadata accessor for NSRegularExpressionOptions();
  _allocateUninitializedArray<A>(_:)();
  lazy protocol witness table accessor for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions();
  SetAlgebra<>.init(arrayLiteral:)();
  NSRegularExpression.__allocating_init(pattern:options:)(v1, pattern, v20);
  v9 = v2;
  if (v3)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v19 = v2;
    v17 = 0;
    v18 = String.count.getter();

    v6 = String._bridgeToObjectiveC()();

    type metadata accessor for NSMatchingOptions();
    _allocateUninitializedArray<A>(_:)();
    lazy protocol witness table accessor for type NSMatchingOptions and conformance NSMatchingOptions();
    SetAlgebra<>.init(arrayLiteral:)();
    v14 = 0;
    v15 = v18;
    v7 = [v9 matchesInString:v6 options:v16 range:{0, v18}];

    type metadata accessor for NSTextCheckingResult();
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo20NSTextCheckingResultCGMd, &_sSaySo20NSTextCheckingResultCGMR);
    lazy protocol witness table accessor for type [NSTextCheckingResult] and conformance [A]();
    Collection.first.getter();
    v10 = v11;
    v5 = v11 != 0;
    outlined destroy of NSTextCheckingResult?(&v10);

    return v5;
  }

  return result;
}

unint64_t type metadata accessor for NSRegularExpression()
{
  v2 = lazy cache variable for type metadata for NSRegularExpression;
  if (!lazy cache variable for type metadata for NSRegularExpression)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSRegularExpression);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t type metadata accessor for NSRegularExpressionOptions()
{
  v4 = lazy cache variable for type metadata for NSRegularExpressionOptions;
  if (!lazy cache variable for type metadata for NSRegularExpressionOptions)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for NSRegularExpressionOptions);
      return v1;
    }
  }

  return v4;
}

unint64_t lazy protocol witness table accessor for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions()
{
  v2 = lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions;
  if (!lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions)
  {
    type metadata accessor for NSRegularExpressionOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions;
  if (!lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions)
  {
    type metadata accessor for NSRegularExpressionOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions;
  if (!lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions)
  {
    type metadata accessor for NSRegularExpressionOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions;
  if (!lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions)
  {
    type metadata accessor for NSRegularExpressionOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions;
  if (!lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions)
  {
    type metadata accessor for NSRegularExpressionOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions);
    return WitnessTable;
  }

  return v2;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NSRegularExpression.__allocating_init(pattern:options:)(NSRegularExpression *__return_ptr retstr, Swift::String pattern, NSRegularExpressionOptions options)
{
  countAndFlagsBits = pattern._countAndFlagsBits;
  object = pattern._object;
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  @nonobjc NSRegularExpression.init(pattern:options:)(countAndFlagsBits, object, options);
}

uint64_t type metadata accessor for NSMatchingOptions()
{
  v4 = lazy cache variable for type metadata for NSMatchingOptions;
  if (!lazy cache variable for type metadata for NSMatchingOptions)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for NSMatchingOptions);
      return v1;
    }
  }

  return v4;
}

unint64_t lazy protocol witness table accessor for type NSMatchingOptions and conformance NSMatchingOptions()
{
  v2 = lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions;
  if (!lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions)
  {
    type metadata accessor for NSMatchingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions;
  if (!lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions)
  {
    type metadata accessor for NSMatchingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions;
  if (!lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions)
  {
    type metadata accessor for NSMatchingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions;
  if (!lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions)
  {
    type metadata accessor for NSMatchingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions;
  if (!lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions)
  {
    type metadata accessor for NSMatchingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for NSTextCheckingResult()
{
  v2 = lazy cache variable for type metadata for NSTextCheckingResult;
  if (!lazy cache variable for type metadata for NSTextCheckingResult)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSTextCheckingResult);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v6;
}

unint64_t lazy protocol witness table accessor for type [NSTextCheckingResult] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [NSTextCheckingResult] and conformance [A];
  if (!lazy protocol witness table cache variable for type [NSTextCheckingResult] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo20NSTextCheckingResultCGMd, &_sSaySo20NSTextCheckingResultCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [NSTextCheckingResult] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v6;
}

Swift::Bool __swiftcall validateSessionID(text:)(Swift::String text)
{
  v19 = 0;
  v17 = 0;
  v18 = 0;
  v13 = 0;
  v21 = text;
  type metadata accessor for NSRegularExpression();
  pattern = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("^[A-Z0-9]{8}-[A-Z0-9]{4}-[A-Z0-9]{4}-[A-Z0-9]{4}-[A-Z0-9]{12}$", 0x3EuLL, 1);
  type metadata accessor for NSRegularExpressionOptions();
  _allocateUninitializedArray<A>(_:)();
  lazy protocol witness table accessor for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions();
  SetAlgebra<>.init(arrayLiteral:)();
  NSRegularExpression.__allocating_init(pattern:options:)(v1, pattern, v20);
  v9 = v2;
  if (v3)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v19 = v2;
    v17 = 0;
    v18 = String.count.getter();

    v6 = String._bridgeToObjectiveC()();

    type metadata accessor for NSMatchingOptions();
    _allocateUninitializedArray<A>(_:)();
    lazy protocol witness table accessor for type NSMatchingOptions and conformance NSMatchingOptions();
    SetAlgebra<>.init(arrayLiteral:)();
    v14 = 0;
    v15 = v18;
    v7 = [v9 matchesInString:v6 options:v16 range:{0, v18}];

    type metadata accessor for NSTextCheckingResult();
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo20NSTextCheckingResultCGMd, &_sSaySo20NSTextCheckingResultCGMR);
    lazy protocol witness table accessor for type [NSTextCheckingResult] and conformance [A]();
    Collection.first.getter();
    v10 = v11;
    v5 = v11 != 0;
    outlined destroy of NSTextCheckingResult?(&v10);

    return v5;
  }

  return result;
}

Swift::Bool __swiftcall validateSSID(text:)(Swift::String text)
{
  object = text._object;
  countAndFlagsBits = text._countAndFlagsBits;
  v36 = 0;
  v31 = 0;
  v38 = text;
  v37 = 0;
  v33 = String.count.getter();
  v34 = *maxSSIDLength.unsafeMutableAddressor();

  if (v34 < v33)
  {
    v29 = 1;
  }

  else
  {
    v28 = String.count.getter();
    v29 = v28 < *minSSIDLength.unsafeMutableAddressor();
  }

  v27 = v29;

  if (v29)
  {
    v25 = 0;
    v26 = v31;
  }

  else
  {
    v1 = v31;
    v18 = &type metadata for String;
    v17 = _allocateUninitializedArray<A>(_:)();
    v16 = v2;
    v14 = 6;
    v15 = 1;
    *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("select", 6uLL, 1);
    v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("delete", 6uLL, 1);
    v4 = v15;
    v16[1] = v3;
    v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("drop table", 0xAuLL, v4);
    v6 = v17;
    v16[2] = v5;
    _finalizeUninitializedArray<A>(_:)();
    v19 = v6;
    v36 = v6;
    v35 = v6;

    v20 = &v11;
    __chkstk_darwin();
    v21 = v10;
    v10[2] = countAndFlagsBits;
    v10[3] = v7;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v8 = Sequence.contains(where:)();
    v23 = v1;
    v24 = v8;
    v12 = v8;

    v13 = v12 ^ 1;
    v37 = (v12 ^ 1) & 1;

    v25 = v13;
    v26 = v23;
  }

  return v25 & 1;
}

uint64_t closure #1 in validateSSID(text:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v7 = 0;
  v8 = 0;
  v4 = a1[1];
  v9 = *a1;
  v10 = v4;
  v7 = a2;
  v8 = a3;
  v6 = String.lowercased()();
  lazy protocol witness table accessor for type String and conformance String();
  lazy protocol witness table accessor for type String and conformance String();
  v5 = BidirectionalCollection<>.starts<A>(with:)();
  outlined destroy of String(&v6);
  return v5 & 1;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [String] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [String] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

Swift::Bool __swiftcall checkValidTextInputs(data:)(Swift::OpaquePointer data)
{
  rawValue = data._rawValue;
  v168 = partial apply for implicit closure #1 in checkValidTextInputs(data:);
  v169 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v170 = partial apply for closure #1 in OSLogArguments.append(_:);
  v171 = closure #1 in OSLogArguments.append(_:)partial apply;
  v172 = partial apply for closure #1 in OSLogArguments.append(_:);
  v173 = partial apply for implicit closure #2 in checkValidTextInputs(data:);
  v174 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v175 = closure #1 in OSLogArguments.append(_:)partial apply;
  v176 = closure #1 in OSLogArguments.append(_:)partial apply;
  v177 = closure #1 in OSLogArguments.append(_:)partial apply;
  v178 = partial apply for implicit closure #3 in checkValidTextInputs(data:);
  v179 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v180 = closure #1 in OSLogArguments.append(_:)partial apply;
  v181 = closure #1 in OSLogArguments.append(_:)partial apply;
  v182 = closure #1 in OSLogArguments.append(_:)partial apply;
  v238 = 0;
  v237 = 0;
  v233 = 0;
  v234 = 0;
  v183 = 0;
  v224 = 0;
  v225 = 0;
  v210 = 0;
  v211 = 0;
  v184 = type metadata accessor for Logger();
  v185 = *(v184 - 8);
  v186 = v184 - 8;
  v187 = (*(v185 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(rawValue);
  v188 = v59 - v187;
  v189 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v1);
  v190 = v59 - v189;
  v191 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v192 = v59 - v191;
  v238 = v5;
  v237 = 0;
  v193 = *kMediaML_appName.unsafeMutableAddressor();

  v195 = &v235;
  v235 = v193;
  Dictionary.subscript.getter();
  outlined destroy of String(v195);
  if (v236[3])
  {
    if (swift_dynamicCast())
    {
      v166 = v196;
      v167 = v197;
    }

    else
    {
      v166 = 0;
      v167 = 0;
    }

    v164 = v166;
    v165 = v167;
  }

  else
  {
    outlined destroy of Any?(v236);
    v164 = 0;
    v165 = 0;
  }

  v162 = v165;
  v163 = v164;
  if (!v165)
  {
    return 0;
  }

  v160 = v163;
  v161 = v162;
  v6._countAndFlagsBits = v163;
  v6._object = v162;
  v158 = v162;
  v159 = v163;
  v233 = v163;
  v234 = v162;
  if (validateAppName(text:)(v6))
  {
    v156 = *kMediaML_sessionID.unsafeMutableAddressor();

    v157 = &v226;
    v226 = v156;
    Dictionary.subscript.getter();
    outlined destroy of String(v157);
    if (v227[3])
    {
      if (swift_dynamicCast())
      {
        v154 = v198;
        v155 = v199;
      }

      else
      {
        v154 = 0;
        v155 = 0;
      }

      v152 = v154;
      v153 = v155;
    }

    else
    {
      outlined destroy of Any?(v227);
      v152 = 0;
      v153 = 0;
    }

    v150 = v153;
    v151 = v152;
    if (!v153)
    {

      return 0;
    }

    v148 = v151;
    v149 = v150;
    v7._countAndFlagsBits = v151;
    v7._object = v150;
    v146 = v150;
    v147 = v151;
    v224 = v151;
    v225 = v150;
    if (validateSessionID(text:)(v7))
    {
      v144 = *kMediaML_interfaceType.unsafeMutableAddressor();

      v145 = &v217;
      v217 = v144;
      Dictionary.subscript.getter();
      outlined destroy of String(v145);
      if (v218[3])
      {
        if (swift_dynamicCast())
        {
          v142 = v200;
          v143 = 0;
        }

        else
        {
          v142 = 0;
          v143 = 1;
        }

        v140 = v142;
        v141 = v143;
      }

      else
      {
        outlined destroy of Any?(v218);
        v140 = 0;
        v141 = 1;
      }

      v139 = v141;
      v138 = v140;
      v8 = *kMediaML_InterfaceType_WiFi.unsafeMutableAddressor();
      v213[4] = v138;
      v214 = v139 & 1;
      v215 = v8;
      v216 = 0;
      if (v139)
      {
        v137 = 0;
      }

      else
      {
        v201 = v138;
        v202 = v139 & 1;
        v137 = v138 == v215;
      }

      if (!v137)
      {
        goto LABEL_41;
      }

      v135 = *kMediaML_ssid.unsafeMutableAddressor();

      v136 = &v212;
      v212 = v135;
      Dictionary.subscript.getter();
      outlined destroy of String(v136);
      if (v213[3])
      {
        if (swift_dynamicCast())
        {
          v133 = v203;
          v134 = v204;
        }

        else
        {
          v133 = 0;
          v134 = 0;
        }

        v131 = v133;
        v132 = v134;
      }

      else
      {
        outlined destroy of Any?(v213);
        v131 = 0;
        v132 = 0;
      }

      v129 = v132;
      v130 = v131;
      if (v132)
      {
        v127 = v130;
        v128 = v129;
        v9._countAndFlagsBits = v130;
        v9._object = v129;
        v125 = v129;
        v126 = v130;
        v210 = v130;
        v211 = v129;
        if (validateSSID(text:)(v9))
        {

LABEL_41:
          v237 = 1;

          return 1;
        }

        v10 = v192;
        v11 = logger.unsafeMutableAddressor();
        (*(v185 + 16))(v10, v11, v184);

        v113 = 32;
        v114 = 7;
        v12 = swift_allocObject();
        v13 = v125;
        v115 = v12;
        *(v12 + 16) = v126;
        *(v12 + 24) = v13;
        v123 = Logger.logObject.getter();
        v124 = static os_log_type_t.error.getter();
        v112 = 17;
        v117 = swift_allocObject();
        *(v117 + 16) = 32;
        v118 = swift_allocObject();
        *(v118 + 16) = 8;
        v14 = swift_allocObject();
        v15 = v115;
        v116 = v14;
        *(v14 + 16) = v178;
        *(v14 + 24) = v15;
        v16 = swift_allocObject();
        v17 = v116;
        v120 = v16;
        *(v16 + 16) = v179;
        *(v16 + 24) = v17;
        v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v119 = _allocateUninitializedArray<A>(_:)();
        v121 = v18;

        v19 = v117;
        v20 = v121;
        *v121 = v180;
        v20[1] = v19;

        v21 = v118;
        v22 = v121;
        v121[2] = v181;
        v22[3] = v21;

        v23 = v120;
        v24 = v121;
        v121[4] = v182;
        v24[5] = v23;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v123, v124))
        {
          v25 = v183;
          v105 = static UnsafeMutablePointer.allocate(capacity:)();
          v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v106 = createStorage<A>(capacity:type:)(0);
          v107 = createStorage<A>(capacity:type:)(1);
          v108 = &v209;
          v209 = v105;
          v109 = &v208;
          v208 = v106;
          v110 = &v207;
          v207 = v107;
          serialize(_:at:)(2, &v209);
          serialize(_:at:)(1, v108);
          v205 = v180;
          v206 = v117;
          closure #1 in osLogInternal(_:log:type:)(&v205, v108, v109, v110);
          v111 = v25;
          if (v25)
          {

            __break(1u);
          }

          else
          {
            v205 = v181;
            v206 = v118;
            closure #1 in osLogInternal(_:log:type:)(&v205, &v209, &v208, &v207);
            v103 = 0;
            v205 = v182;
            v206 = v120;
            closure #1 in osLogInternal(_:log:type:)(&v205, &v209, &v208, &v207);
            _os_log_impl(&_mh_execute_header, v123, v124, "ssid in data directory failed validation: %s", v105, 0xCu);
            destroyStorage<A>(_:count:)(v106);
            destroyStorage<A>(_:count:)(v107);
            UnsafeMutablePointer.deallocate()();
          }
        }

        else
        {
        }

        (*(v185 + 8))(v192, v184);

        return 0;
      }

      else
      {

        return 0;
      }
    }

    else
    {
      v26 = v190;
      v27 = logger.unsafeMutableAddressor();
      (*(v185 + 16))(v26, v27, v184);

      v90 = 32;
      v91 = 7;
      v28 = swift_allocObject();
      v29 = v146;
      v92 = v28;
      *(v28 + 16) = v147;
      *(v28 + 24) = v29;
      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.error.getter();
      v89 = 17;
      v94 = swift_allocObject();
      *(v94 + 16) = 32;
      v95 = swift_allocObject();
      *(v95 + 16) = 8;
      v30 = swift_allocObject();
      v31 = v92;
      v93 = v30;
      *(v30 + 16) = v173;
      *(v30 + 24) = v31;
      v32 = swift_allocObject();
      v33 = v93;
      v97 = v32;
      *(v32 + 16) = v174;
      *(v32 + 24) = v33;
      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v96 = _allocateUninitializedArray<A>(_:)();
      v98 = v34;

      v35 = v94;
      v36 = v98;
      *v98 = v175;
      v36[1] = v35;

      v37 = v95;
      v38 = v98;
      v98[2] = v176;
      v38[3] = v37;

      v39 = v97;
      v40 = v98;
      v98[4] = v177;
      v40[5] = v39;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v100, v101))
      {
        v41 = v183;
        v82 = static UnsafeMutablePointer.allocate(capacity:)();
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v83 = createStorage<A>(capacity:type:)(0);
        v84 = createStorage<A>(capacity:type:)(1);
        v85 = &v223;
        v223 = v82;
        v86 = &v222;
        v222 = v83;
        v87 = &v221;
        v221 = v84;
        serialize(_:at:)(2, &v223);
        serialize(_:at:)(1, v85);
        v219 = v175;
        v220 = v94;
        closure #1 in osLogInternal(_:log:type:)(&v219, v85, v86, v87);
        v88 = v41;
        if (v41)
        {

          __break(1u);
        }

        else
        {
          v219 = v176;
          v220 = v95;
          closure #1 in osLogInternal(_:log:type:)(&v219, &v223, &v222, &v221);
          v80 = 0;
          v219 = v177;
          v220 = v97;
          closure #1 in osLogInternal(_:log:type:)(&v219, &v223, &v222, &v221);
          _os_log_impl(&_mh_execute_header, v100, v101, "sessionID in data directory failed validation: %s", v82, 0xCu);
          destroyStorage<A>(_:count:)(v83);
          destroyStorage<A>(_:count:)(v84);
          UnsafeMutablePointer.deallocate()();
        }
      }

      else
      {
      }

      (*(v185 + 8))(v190, v184);

      return 0;
    }
  }

  else
  {
    v42 = v188;
    v43 = logger.unsafeMutableAddressor();
    (*(v185 + 16))(v42, v43, v184);

    v68 = 32;
    v69 = 7;
    v44 = swift_allocObject();
    v45 = v158;
    v70 = v44;
    *(v44 + 16) = v159;
    *(v44 + 24) = v45;
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.error.getter();
    v67 = 17;
    v72 = swift_allocObject();
    *(v72 + 16) = 32;
    v73 = swift_allocObject();
    *(v73 + 16) = 8;
    v46 = swift_allocObject();
    v47 = v70;
    v71 = v46;
    *(v46 + 16) = v168;
    *(v46 + 24) = v47;
    v48 = swift_allocObject();
    v49 = v71;
    v75 = v48;
    *(v48 + 16) = v169;
    *(v48 + 24) = v49;
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v74 = _allocateUninitializedArray<A>(_:)();
    v76 = v50;

    v51 = v72;
    v52 = v76;
    *v76 = v170;
    v52[1] = v51;

    v53 = v73;
    v54 = v76;
    v76[2] = v171;
    v54[3] = v53;

    v55 = v75;
    v56 = v76;
    v76[4] = v172;
    v56[5] = v55;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v78, v79))
    {
      v57 = v183;
      v60 = static UnsafeMutablePointer.allocate(capacity:)();
      v59[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v61 = createStorage<A>(capacity:type:)(0);
      v62 = createStorage<A>(capacity:type:)(1);
      v63 = &v232;
      v232 = v60;
      v64 = &v231;
      v231 = v61;
      v65 = &v230;
      v230 = v62;
      serialize(_:at:)(2, &v232);
      serialize(_:at:)(1, v63);
      v228 = v170;
      v229 = v72;
      closure #1 in osLogInternal(_:log:type:)(&v228, v63, v64, v65);
      v66 = v57;
      if (v57)
      {

        __break(1u);
      }

      else
      {
        v228 = v171;
        v229 = v73;
        closure #1 in osLogInternal(_:log:type:)(&v228, &v232, &v231, &v230);
        v59[0] = 0;
        v228 = v172;
        v229 = v75;
        closure #1 in osLogInternal(_:log:type:)(&v228, &v232, &v231, &v230);
        _os_log_impl(&_mh_execute_header, v78, v79, "AppName in data directory failed validation: %s", v60, 0xCu);
        destroyStorage<A>(_:count:)(v61);
        destroyStorage<A>(_:count:)(v62);
        UnsafeMutablePointer.deallocate()();
      }
    }

    else
    {
    }

    (*(v185 + 8))(v188, v184);

    return 0;
  }
}

uint64_t sub_100005F58()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in checkValidTextInputs(data:)()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  implicit closure #1 in checkValidTextInputs(data:)();
  return result;
}

Swift::Bool __swiftcall checkValidNumericInputRange(data:)(Swift::OpaquePointer data)
{
  rawValue = data._rawValue;
  v439 = partial apply for implicit closure #11 in checkValidNumericInputRange(data:);
  v440 = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
  v441 = closure #1 in OSLogArguments.append(_:)partial apply;
  v442 = closure #1 in OSLogArguments.append(_:)partial apply;
  v443 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
  v444 = partial apply for implicit closure #13 in checkValidNumericInputRange(data:);
  v445 = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  v446 = closure #1 in OSLogArguments.append(_:)partial apply;
  v447 = closure #1 in OSLogArguments.append(_:)partial apply;
  v448 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v449 = partial apply for implicit closure #15 in checkValidNumericInputRange(data:);
  v450 = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  v451 = closure #1 in OSLogArguments.append(_:)partial apply;
  v452 = closure #1 in OSLogArguments.append(_:)partial apply;
  v453 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v454 = partial apply for implicit closure #17 in checkValidNumericInputRange(data:);
  v455 = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  v456 = closure #1 in OSLogArguments.append(_:)partial apply;
  v457 = closure #1 in OSLogArguments.append(_:)partial apply;
  v458 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v459 = partial apply for implicit closure #19 in checkValidNumericInputRange(data:);
  v460 = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  v461 = closure #1 in OSLogArguments.append(_:)partial apply;
  v462 = closure #1 in OSLogArguments.append(_:)partial apply;
  v463 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v464 = partial apply for implicit closure #21 in checkValidNumericInputRange(data:);
  v465 = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  v466 = closure #1 in OSLogArguments.append(_:)partial apply;
  v467 = closure #1 in OSLogArguments.append(_:)partial apply;
  v468 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v469 = partial apply for implicit closure #23 in checkValidNumericInputRange(data:);
  v470 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:);
  v471 = closure #1 in OSLogArguments.append(_:)partial apply;
  v472 = closure #1 in OSLogArguments.append(_:)partial apply;
  v473 = partial apply for closure #1 in OSLogArguments.append(_:);
  v474 = partial apply for implicit closure #25 in checkValidNumericInputRange(data:);
  v475 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)partial apply;
  v476 = closure #1 in OSLogArguments.append(_:)partial apply;
  v477 = closure #1 in OSLogArguments.append(_:)partial apply;
  v478 = closure #1 in OSLogArguments.append(_:)partial apply;
  v479 = partial apply for implicit closure #27 in checkValidNumericInputRange(data:);
  v480 = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  v481 = closure #1 in OSLogArguments.append(_:)partial apply;
  v482 = closure #1 in OSLogArguments.append(_:)partial apply;
  v483 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v610 = 0;
  v609 = 0;
  v604 = 0;
  v599 = 0;
  v594 = 0;
  v589 = 0;
  v584 = 0;
  v579 = 0;
  v574 = 0.0;
  v569 = 0.0;
  v564 = 0;
  v484 = 0;
  v485 = type metadata accessor for Logger();
  v486 = *(v485 - 8);
  v487 = v485 - 8;
  v488 = *(v486 + 64);
  v489 = (v488 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(rawValue);
  v490 = v145 - v489;
  v491 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v1);
  v492 = v145 - v491;
  v493 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v494 = v145 - v493;
  v495 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v5);
  v496 = v145 - v495;
  v497 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = __chkstk_darwin(v7);
  v498 = v145 - v497;
  v499 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = __chkstk_darwin(v9);
  v500 = v145 - v499;
  v501 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = __chkstk_darwin(v11);
  v502 = v145 - v501;
  v503 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = __chkstk_darwin(v13);
  v504 = v145 - v503;
  v505 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = __chkstk_darwin(v15);
  v506 = v145 - v505;
  v610 = v17;
  v609 = 0;
  v507 = *kMediaML_rssi.unsafeMutableAddressor();

  v509 = &v607;
  v607 = v507;
  Dictionary.subscript.getter();
  outlined destroy of String(v509);
  if (v608[3])
  {
    if (swift_dynamicCast())
    {
      v437 = v510;
      v438 = 0;
    }

    else
    {
      v437 = 0;
      v438 = 1;
    }

    v435 = v437;
    v436 = v438;
  }

  else
  {
    outlined destroy of Any?(v608);
    v435 = 0;
    v436 = 1;
  }

  v605 = v435;
  v606 = v436 & 1;
  if (v436)
  {
    v434 = 0;
  }

  else
  {
    v434 = v605;
  }

  v431 = v434;
  v604 = v434;
  v432 = *kMediaML_rsrp.unsafeMutableAddressor();

  v433 = &v602;
  v602 = v432;
  Dictionary.subscript.getter();
  outlined destroy of String(v433);
  if (v603[3])
  {
    if (swift_dynamicCast())
    {
      v429 = v511;
      v430 = 0;
    }

    else
    {
      v429 = 0;
      v430 = 1;
    }

    v427 = v429;
    v428 = v430;
  }

  else
  {
    outlined destroy of Any?(v603);
    v427 = 0;
    v428 = 1;
  }

  v600 = v427;
  v601 = v428 & 1;
  if (v428)
  {
    v426 = 0;
  }

  else
  {
    v426 = v600;
  }

  v423 = v426;
  v599 = v426;
  v424 = *kMediaML_rsrq.unsafeMutableAddressor();

  v425 = &v597;
  v597 = v424;
  Dictionary.subscript.getter();
  outlined destroy of String(v425);
  if (v598[3])
  {
    if (swift_dynamicCast())
    {
      v421 = v512;
      v422 = 0;
    }

    else
    {
      v421 = 0;
      v422 = 1;
    }

    v419 = v421;
    v420 = v422;
  }

  else
  {
    outlined destroy of Any?(v598);
    v419 = 0;
    v420 = 1;
  }

  v595 = v419;
  v596 = v420 & 1;
  if (v420)
  {
    v418 = 0;
  }

  else
  {
    v418 = v595;
  }

  v415 = v418;
  v594 = v418;
  v416 = *kMediaML_rscp.unsafeMutableAddressor();

  v417 = &v592;
  v592 = v416;
  Dictionary.subscript.getter();
  outlined destroy of String(v417);
  if (v593[3])
  {
    if (swift_dynamicCast())
    {
      v413 = v513;
      v414 = 0;
    }

    else
    {
      v413 = 0;
      v414 = 1;
    }

    v411 = v413;
    v412 = v414;
  }

  else
  {
    outlined destroy of Any?(v593);
    v411 = 0;
    v412 = 1;
  }

  v590 = v411;
  v591 = v412 & 1;
  if (v412)
  {
    v410 = 0;
  }

  else
  {
    v410 = v590;
  }

  v407 = v410;
  v589 = v410;
  v408 = *kMediaML_noise.unsafeMutableAddressor();

  v409 = &v587;
  v587 = v408;
  Dictionary.subscript.getter();
  outlined destroy of String(v409);
  if (v588[3])
  {
    if (swift_dynamicCast())
    {
      v405 = v514;
      v406 = 0;
    }

    else
    {
      v405 = 0;
      v406 = 1;
    }

    v403 = v405;
    v404 = v406;
  }

  else
  {
    outlined destroy of Any?(v588);
    v403 = 0;
    v404 = 1;
  }

  v585 = v403;
  v586 = v404 & 1;
  if (v404)
  {
    v402 = 0;
  }

  else
  {
    v402 = v585;
  }

  v399 = v402;
  v584 = v402;
  v400 = *kMediaML_bars.unsafeMutableAddressor();

  v401 = &v582;
  v582 = v400;
  Dictionary.subscript.getter();
  outlined destroy of String(v401);
  if (v583[3])
  {
    if (swift_dynamicCast())
    {
      v397 = v515;
      v398 = 0;
    }

    else
    {
      v397 = 0;
      v398 = 1;
    }

    v395 = v397;
    v396 = v398;
  }

  else
  {
    outlined destroy of Any?(v583);
    v395 = 0;
    v396 = 1;
  }

  v580 = v395;
  v581 = v396 & 1;
  if (v396)
  {
    v394 = 0;
  }

  else
  {
    v394 = v580;
  }

  v391 = v394;
  v579 = v394;
  v392 = *kMediaML_rxRate.unsafeMutableAddressor();

  v393 = &v577;
  v577 = v392;
  Dictionary.subscript.getter();
  outlined destroy of String(v393);
  if (v578[3])
  {
    if (swift_dynamicCast())
    {
      v389 = v516;
      v390 = 0;
    }

    else
    {
      v389 = 0.0;
      v390 = 1;
    }

    v387 = v389;
    v388 = v390;
  }

  else
  {
    outlined destroy of Any?(v578);
    v387 = 0.0;
    v388 = 1;
  }

  v575 = v387;
  v576 = v388 & 1;
  if (v388)
  {
    v386 = 0.0;
  }

  else
  {
    v386 = v575;
  }

  v383 = v386;
  v574 = v386;
  v384 = *kMediaML_txRate.unsafeMutableAddressor();

  v385 = &v572;
  v572 = v384;
  Dictionary.subscript.getter();
  outlined destroy of String(v385);
  if (v573[3])
  {
    if (swift_dynamicCast())
    {
      v381 = v517;
      v382 = 0;
    }

    else
    {
      v381 = 0.0;
      v382 = 1;
    }

    v379 = v381;
    v380 = v382;
  }

  else
  {
    outlined destroy of Any?(v573);
    v379 = 0.0;
    v380 = 1;
  }

  v570 = v379;
  v571 = v380 & 1;
  if (v380)
  {
    v378 = 0.0;
  }

  else
  {
    v378 = v570;
  }

  v375 = v378;
  v569 = v378;
  v376 = *kMediaML_throughputTrue.unsafeMutableAddressor();

  v377 = &v567;
  v567 = v376;
  Dictionary.subscript.getter();
  outlined destroy of String(v377);
  if (v568[3])
  {
    if (swift_dynamicCast())
    {
      v373 = v518;
      v374 = 0;
    }

    else
    {
      v373 = 0;
      v374 = 1;
    }

    v371 = v373;
    v372 = v374;
  }

  else
  {
    outlined destroy of Any?(v568);
    v371 = 0;
    v372 = 1;
  }

  v565 = v371;
  v566 = v372 & 1;
  if (v372)
  {
    v370 = 0;
  }

  else
  {
    v370 = v565;
  }

  v369 = v370;
  v564 = v370;
  if (v431 <= 0 && v431 >= *minSignalStrength.unsafeMutableAddressor())
  {
    if (v423 <= 0 && v423 >= *minSignalStrength.unsafeMutableAddressor())
    {
      if (v415 <= 0 && v415 >= *minSignalStrength.unsafeMutableAddressor())
      {
        if (v407 <= 0 && v407 >= *minSignalStrength.unsafeMutableAddressor())
        {
          if (v399 <= 0 && v399 >= *minNoise.unsafeMutableAddressor())
          {
            if ((v391 & 0x8000000000000000) == 0 && *maxBars.unsafeMutableAddressor() >= v391)
            {
              if (v383 >= 0.0 && v383 <= *maxRxRate.unsafeMutableAddressor())
              {
                if (v375 >= 0.0 && v375 <= *maxTxRate.unsafeMutableAddressor())
                {
                  if (v369 > 0 && *maxThroughput.unsafeMutableAddressor() >= v369)
                  {
                    v609 = 1;
                    return 1;
                  }

                  else
                  {
                    v18 = v506;
                    v19 = logger.unsafeMutableAddressor();
                    (*(v486 + 16))(v18, v19, v485);
                    v348 = 7;
                    v349 = swift_allocObject();
                    *(v349 + 16) = v369;
                    v357 = Logger.logObject.getter();
                    v358 = static os_log_type_t.error.getter();
                    v346 = 17;
                    v351 = swift_allocObject();
                    *(v351 + 16) = 0;
                    v352 = swift_allocObject();
                    *(v352 + 16) = 8;
                    v347 = 32;
                    v20 = swift_allocObject();
                    v21 = v349;
                    v350 = v20;
                    *(v20 + 16) = v479;
                    *(v20 + 24) = v21;
                    v22 = swift_allocObject();
                    v23 = v350;
                    v354 = v22;
                    *(v22 + 16) = v480;
                    *(v22 + 24) = v23;
                    v356 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
                    v353 = _allocateUninitializedArray<A>(_:)();
                    v355 = v24;

                    v25 = v351;
                    v26 = v355;
                    *v355 = v481;
                    v26[1] = v25;

                    v27 = v352;
                    v28 = v355;
                    v355[2] = v482;
                    v28[3] = v27;

                    v29 = v354;
                    v30 = v355;
                    v355[4] = v483;
                    v30[5] = v29;
                    _finalizeUninitializedArray<A>(_:)();

                    if (os_log_type_enabled(v357, v358))
                    {
                      v31 = v484;
                      v339 = static UnsafeMutablePointer.allocate(capacity:)();
                      v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                      v338 = 0;
                      v340 = createStorage<A>(capacity:type:)(0);
                      v341 = createStorage<A>(capacity:type:)(v338);
                      v342 = &v523;
                      v523 = v339;
                      v343 = &v522;
                      v522 = v340;
                      v344 = &v521;
                      v521 = v341;
                      serialize(_:at:)(0, &v523);
                      serialize(_:at:)(1, v342);
                      v519 = v481;
                      v520 = v351;
                      closure #1 in osLogInternal(_:log:type:)(&v519, v342, v343, v344);
                      v345 = v31;
                      if (v31)
                      {

                        __break(1u);
                      }

                      else
                      {
                        v519 = v482;
                        v520 = v352;
                        closure #1 in osLogInternal(_:log:type:)(&v519, &v523, &v522, &v521);
                        v336 = 0;
                        v519 = v483;
                        v520 = v354;
                        closure #1 in osLogInternal(_:log:type:)(&v519, &v523, &v522, &v521);
                        _os_log_impl(&_mh_execute_header, v357, v358, "throughput_true in data directory failed validation: %ld", v339, 0xCu);
                        v335 = 0;
                        destroyStorage<A>(_:count:)(v340);
                        destroyStorage<A>(_:count:)(v341);
                        UnsafeMutablePointer.deallocate()();
                      }
                    }

                    else
                    {
                    }

                    (*(v486 + 8))(v506, v485);
                    return 0;
                  }
                }

                else
                {
                  v32 = v504;
                  v33 = logger.unsafeMutableAddressor();
                  (*(v486 + 16))(v32, v33, v485);
                  v324 = 7;
                  v325 = swift_allocObject();
                  *(v325 + 16) = v375;
                  v333 = Logger.logObject.getter();
                  v334 = static os_log_type_t.error.getter();
                  v322 = 17;
                  v327 = swift_allocObject();
                  *(v327 + 16) = 0;
                  v328 = swift_allocObject();
                  *(v328 + 16) = 8;
                  v323 = 32;
                  v34 = swift_allocObject();
                  v35 = v325;
                  v326 = v34;
                  *(v34 + 16) = v474;
                  *(v34 + 24) = v35;
                  v36 = swift_allocObject();
                  v37 = v326;
                  v330 = v36;
                  *(v36 + 16) = v475;
                  *(v36 + 24) = v37;
                  v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
                  v329 = _allocateUninitializedArray<A>(_:)();
                  v331 = v38;

                  v39 = v327;
                  v40 = v331;
                  *v331 = v476;
                  v40[1] = v39;

                  v41 = v328;
                  v42 = v331;
                  v331[2] = v477;
                  v42[3] = v41;

                  v43 = v330;
                  v44 = v331;
                  v331[4] = v478;
                  v44[5] = v43;
                  _finalizeUninitializedArray<A>(_:)();

                  if (os_log_type_enabled(v333, v334))
                  {
                    v45 = v484;
                    v315 = static UnsafeMutablePointer.allocate(capacity:)();
                    v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                    v314 = 0;
                    v316 = createStorage<A>(capacity:type:)(0);
                    v317 = createStorage<A>(capacity:type:)(v314);
                    v318 = &v528;
                    v528 = v315;
                    v319 = &v527;
                    v527 = v316;
                    v320 = &v526;
                    v526 = v317;
                    serialize(_:at:)(0, &v528);
                    serialize(_:at:)(1, v318);
                    v524 = v476;
                    v525 = v327;
                    closure #1 in osLogInternal(_:log:type:)(&v524, v318, v319, v320);
                    v321 = v45;
                    if (v45)
                    {

                      __break(1u);
                    }

                    else
                    {
                      v524 = v477;
                      v525 = v328;
                      closure #1 in osLogInternal(_:log:type:)(&v524, &v528, &v527, &v526);
                      v312 = 0;
                      v524 = v478;
                      v525 = v330;
                      closure #1 in osLogInternal(_:log:type:)(&v524, &v528, &v527, &v526);
                      _os_log_impl(&_mh_execute_header, v333, v334, "txRate in data directory failed validation: %f", v315, 0xCu);
                      v311 = 0;
                      destroyStorage<A>(_:count:)(v316);
                      destroyStorage<A>(_:count:)(v317);
                      UnsafeMutablePointer.deallocate()();
                    }
                  }

                  else
                  {
                  }

                  (*(v486 + 8))(v504, v485);
                  return 0;
                }
              }

              else
              {
                v46 = v502;
                v47 = logger.unsafeMutableAddressor();
                (*(v486 + 16))(v46, v47, v485);
                v300 = 7;
                v301 = swift_allocObject();
                *(v301 + 16) = v383;
                v309 = Logger.logObject.getter();
                v310 = static os_log_type_t.error.getter();
                v298 = 17;
                v303 = swift_allocObject();
                *(v303 + 16) = 0;
                v304 = swift_allocObject();
                *(v304 + 16) = 8;
                v299 = 32;
                v48 = swift_allocObject();
                v49 = v301;
                v302 = v48;
                *(v48 + 16) = v469;
                *(v48 + 24) = v49;
                v50 = swift_allocObject();
                v51 = v302;
                v306 = v50;
                *(v50 + 16) = v470;
                *(v50 + 24) = v51;
                v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
                v305 = _allocateUninitializedArray<A>(_:)();
                v307 = v52;

                v53 = v303;
                v54 = v307;
                *v307 = v471;
                v54[1] = v53;

                v55 = v304;
                v56 = v307;
                v307[2] = v472;
                v56[3] = v55;

                v57 = v306;
                v58 = v307;
                v307[4] = v473;
                v58[5] = v57;
                _finalizeUninitializedArray<A>(_:)();

                if (os_log_type_enabled(v309, v310))
                {
                  v59 = v484;
                  v291 = static UnsafeMutablePointer.allocate(capacity:)();
                  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                  v290 = 0;
                  v292 = createStorage<A>(capacity:type:)(0);
                  v293 = createStorage<A>(capacity:type:)(v290);
                  v294 = &v533;
                  v533 = v291;
                  v295 = &v532;
                  v532 = v292;
                  v296 = &v531;
                  v531 = v293;
                  serialize(_:at:)(0, &v533);
                  serialize(_:at:)(1, v294);
                  v529 = v471;
                  v530 = v303;
                  closure #1 in osLogInternal(_:log:type:)(&v529, v294, v295, v296);
                  v297 = v59;
                  if (v59)
                  {

                    __break(1u);
                  }

                  else
                  {
                    v529 = v472;
                    v530 = v304;
                    closure #1 in osLogInternal(_:log:type:)(&v529, &v533, &v532, &v531);
                    v288 = 0;
                    v529 = v473;
                    v530 = v306;
                    closure #1 in osLogInternal(_:log:type:)(&v529, &v533, &v532, &v531);
                    _os_log_impl(&_mh_execute_header, v309, v310, "rxRate in data directory failed validation: %f", v291, 0xCu);
                    v287 = 0;
                    destroyStorage<A>(_:count:)(v292);
                    destroyStorage<A>(_:count:)(v293);
                    UnsafeMutablePointer.deallocate()();
                  }
                }

                else
                {
                }

                (*(v486 + 8))(v502, v485);
                return 0;
              }
            }

            else
            {
              v60 = v500;
              v61 = logger.unsafeMutableAddressor();
              (*(v486 + 16))(v60, v61, v485);
              v276 = 7;
              v277 = swift_allocObject();
              *(v277 + 16) = v391;
              v285 = Logger.logObject.getter();
              v286 = static os_log_type_t.error.getter();
              v274 = 17;
              v279 = swift_allocObject();
              *(v279 + 16) = 0;
              v280 = swift_allocObject();
              *(v280 + 16) = 8;
              v275 = 32;
              v62 = swift_allocObject();
              v63 = v277;
              v278 = v62;
              *(v62 + 16) = v464;
              *(v62 + 24) = v63;
              v64 = swift_allocObject();
              v65 = v278;
              v282 = v64;
              *(v64 + 16) = v465;
              *(v64 + 24) = v65;
              v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
              v281 = _allocateUninitializedArray<A>(_:)();
              v283 = v66;

              v67 = v279;
              v68 = v283;
              *v283 = v466;
              v68[1] = v67;

              v69 = v280;
              v70 = v283;
              v283[2] = v467;
              v70[3] = v69;

              v71 = v282;
              v72 = v283;
              v283[4] = v468;
              v72[5] = v71;
              _finalizeUninitializedArray<A>(_:)();

              if (os_log_type_enabled(v285, v286))
              {
                v73 = v484;
                v267 = static UnsafeMutablePointer.allocate(capacity:)();
                v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                v266 = 0;
                v268 = createStorage<A>(capacity:type:)(0);
                v269 = createStorage<A>(capacity:type:)(v266);
                v270 = &v538;
                v538 = v267;
                v271 = &v537;
                v537 = v268;
                v272 = &v536;
                v536 = v269;
                serialize(_:at:)(0, &v538);
                serialize(_:at:)(1, v270);
                v534 = v466;
                v535 = v279;
                closure #1 in osLogInternal(_:log:type:)(&v534, v270, v271, v272);
                v273 = v73;
                if (v73)
                {

                  __break(1u);
                }

                else
                {
                  v534 = v467;
                  v535 = v280;
                  closure #1 in osLogInternal(_:log:type:)(&v534, &v538, &v537, &v536);
                  v264 = 0;
                  v534 = v468;
                  v535 = v282;
                  closure #1 in osLogInternal(_:log:type:)(&v534, &v538, &v537, &v536);
                  _os_log_impl(&_mh_execute_header, v285, v286, "bars in data directory failed validation: %ld", v267, 0xCu);
                  v263 = 0;
                  destroyStorage<A>(_:count:)(v268);
                  destroyStorage<A>(_:count:)(v269);
                  UnsafeMutablePointer.deallocate()();
                }
              }

              else
              {
              }

              (*(v486 + 8))(v500, v485);
              return 0;
            }
          }

          else
          {
            v74 = v498;
            v75 = logger.unsafeMutableAddressor();
            (*(v486 + 16))(v74, v75, v485);
            v252 = 7;
            v253 = swift_allocObject();
            *(v253 + 16) = v399;
            v261 = Logger.logObject.getter();
            v262 = static os_log_type_t.error.getter();
            v250 = 17;
            v255 = swift_allocObject();
            *(v255 + 16) = 0;
            v256 = swift_allocObject();
            *(v256 + 16) = 8;
            v251 = 32;
            v76 = swift_allocObject();
            v77 = v253;
            v254 = v76;
            *(v76 + 16) = v459;
            *(v76 + 24) = v77;
            v78 = swift_allocObject();
            v79 = v254;
            v258 = v78;
            *(v78 + 16) = v460;
            *(v78 + 24) = v79;
            v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
            v257 = _allocateUninitializedArray<A>(_:)();
            v259 = v80;

            v81 = v255;
            v82 = v259;
            *v259 = v461;
            v82[1] = v81;

            v83 = v256;
            v84 = v259;
            v259[2] = v462;
            v84[3] = v83;

            v85 = v258;
            v86 = v259;
            v259[4] = v463;
            v86[5] = v85;
            _finalizeUninitializedArray<A>(_:)();

            if (os_log_type_enabled(v261, v262))
            {
              v87 = v484;
              v243 = static UnsafeMutablePointer.allocate(capacity:)();
              v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
              v242 = 0;
              v244 = createStorage<A>(capacity:type:)(0);
              v245 = createStorage<A>(capacity:type:)(v242);
              v246 = &v543;
              v543 = v243;
              v247 = &v542;
              v542 = v244;
              v248 = &v541;
              v541 = v245;
              serialize(_:at:)(0, &v543);
              serialize(_:at:)(1, v246);
              v539 = v461;
              v540 = v255;
              closure #1 in osLogInternal(_:log:type:)(&v539, v246, v247, v248);
              v249 = v87;
              if (v87)
              {

                __break(1u);
              }

              else
              {
                v539 = v462;
                v540 = v256;
                closure #1 in osLogInternal(_:log:type:)(&v539, &v543, &v542, &v541);
                v240 = 0;
                v539 = v463;
                v540 = v258;
                closure #1 in osLogInternal(_:log:type:)(&v539, &v543, &v542, &v541);
                _os_log_impl(&_mh_execute_header, v261, v262, "noise in data directory failed validation: %ld", v243, 0xCu);
                v239 = 0;
                destroyStorage<A>(_:count:)(v244);
                destroyStorage<A>(_:count:)(v245);
                UnsafeMutablePointer.deallocate()();
              }
            }

            else
            {
            }

            (*(v486 + 8))(v498, v485);
            return 0;
          }
        }

        else
        {
          v88 = v496;
          v89 = logger.unsafeMutableAddressor();
          (*(v486 + 16))(v88, v89, v485);
          v228 = 7;
          v229 = swift_allocObject();
          *(v229 + 16) = v407;
          v237 = Logger.logObject.getter();
          v238 = static os_log_type_t.error.getter();
          v226 = 17;
          v231 = swift_allocObject();
          *(v231 + 16) = 0;
          v232 = swift_allocObject();
          *(v232 + 16) = 8;
          v227 = 32;
          v90 = swift_allocObject();
          v91 = v229;
          v230 = v90;
          *(v90 + 16) = v454;
          *(v90 + 24) = v91;
          v92 = swift_allocObject();
          v93 = v230;
          v234 = v92;
          *(v92 + 16) = v455;
          *(v92 + 24) = v93;
          v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
          v233 = _allocateUninitializedArray<A>(_:)();
          v235 = v94;

          v95 = v231;
          v96 = v235;
          *v235 = v456;
          v96[1] = v95;

          v97 = v232;
          v98 = v235;
          v235[2] = v457;
          v98[3] = v97;

          v99 = v234;
          v100 = v235;
          v235[4] = v458;
          v100[5] = v99;
          _finalizeUninitializedArray<A>(_:)();

          if (os_log_type_enabled(v237, v238))
          {
            v101 = v484;
            v219 = static UnsafeMutablePointer.allocate(capacity:)();
            v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v218 = 0;
            v220 = createStorage<A>(capacity:type:)(0);
            v221 = createStorage<A>(capacity:type:)(v218);
            v222 = &v548;
            v548 = v219;
            v223 = &v547;
            v547 = v220;
            v224 = &v546;
            v546 = v221;
            serialize(_:at:)(0, &v548);
            serialize(_:at:)(1, v222);
            v544 = v456;
            v545 = v231;
            closure #1 in osLogInternal(_:log:type:)(&v544, v222, v223, v224);
            v225 = v101;
            if (v101)
            {

              __break(1u);
            }

            else
            {
              v544 = v457;
              v545 = v232;
              closure #1 in osLogInternal(_:log:type:)(&v544, &v548, &v547, &v546);
              v216 = 0;
              v544 = v458;
              v545 = v234;
              closure #1 in osLogInternal(_:log:type:)(&v544, &v548, &v547, &v546);
              _os_log_impl(&_mh_execute_header, v237, v238, "rscp in data directory failed validation: %ld", v219, 0xCu);
              v215 = 0;
              destroyStorage<A>(_:count:)(v220);
              destroyStorage<A>(_:count:)(v221);
              UnsafeMutablePointer.deallocate()();
            }
          }

          else
          {
          }

          (*(v486 + 8))(v496, v485);
          return 0;
        }
      }

      else
      {
        v102 = v494;
        v103 = logger.unsafeMutableAddressor();
        (*(v486 + 16))(v102, v103, v485);
        v204 = 7;
        v205 = swift_allocObject();
        *(v205 + 16) = v415;
        v213 = Logger.logObject.getter();
        v214 = static os_log_type_t.error.getter();
        v202 = 17;
        v207 = swift_allocObject();
        *(v207 + 16) = 0;
        v208 = swift_allocObject();
        *(v208 + 16) = 8;
        v203 = 32;
        v104 = swift_allocObject();
        v105 = v205;
        v206 = v104;
        *(v104 + 16) = v449;
        *(v104 + 24) = v105;
        v106 = swift_allocObject();
        v107 = v206;
        v210 = v106;
        *(v106 + 16) = v450;
        *(v106 + 24) = v107;
        v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v209 = _allocateUninitializedArray<A>(_:)();
        v211 = v108;

        v109 = v207;
        v110 = v211;
        *v211 = v451;
        v110[1] = v109;

        v111 = v208;
        v112 = v211;
        v211[2] = v452;
        v112[3] = v111;

        v113 = v210;
        v114 = v211;
        v211[4] = v453;
        v114[5] = v113;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v213, v214))
        {
          v115 = v484;
          v195 = static UnsafeMutablePointer.allocate(capacity:)();
          v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v194 = 0;
          v196 = createStorage<A>(capacity:type:)(0);
          v197 = createStorage<A>(capacity:type:)(v194);
          v198 = &v553;
          v553 = v195;
          v199 = &v552;
          v552 = v196;
          v200 = &v551;
          v551 = v197;
          serialize(_:at:)(0, &v553);
          serialize(_:at:)(1, v198);
          v549 = v451;
          v550 = v207;
          closure #1 in osLogInternal(_:log:type:)(&v549, v198, v199, v200);
          v201 = v115;
          if (v115)
          {

            __break(1u);
          }

          else
          {
            v549 = v452;
            v550 = v208;
            closure #1 in osLogInternal(_:log:type:)(&v549, &v553, &v552, &v551);
            v192 = 0;
            v549 = v453;
            v550 = v210;
            closure #1 in osLogInternal(_:log:type:)(&v549, &v553, &v552, &v551);
            _os_log_impl(&_mh_execute_header, v213, v214, "rsrq in data directory failed validation: %ld", v195, 0xCu);
            v191 = 0;
            destroyStorage<A>(_:count:)(v196);
            destroyStorage<A>(_:count:)(v197);
            UnsafeMutablePointer.deallocate()();
          }
        }

        else
        {
        }

        (*(v486 + 8))(v494, v485);
        return 0;
      }
    }

    else
    {
      v116 = v492;
      v117 = logger.unsafeMutableAddressor();
      (*(v486 + 16))(v116, v117, v485);
      v180 = 7;
      v181 = swift_allocObject();
      *(v181 + 16) = v423;
      v189 = Logger.logObject.getter();
      v190 = static os_log_type_t.error.getter();
      v178 = 17;
      v183 = swift_allocObject();
      *(v183 + 16) = 0;
      v184 = swift_allocObject();
      *(v184 + 16) = 8;
      v179 = 32;
      v118 = swift_allocObject();
      v119 = v181;
      v182 = v118;
      *(v118 + 16) = v444;
      *(v118 + 24) = v119;
      v120 = swift_allocObject();
      v121 = v182;
      v186 = v120;
      *(v120 + 16) = v445;
      *(v120 + 24) = v121;
      v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v185 = _allocateUninitializedArray<A>(_:)();
      v187 = v122;

      v123 = v183;
      v124 = v187;
      *v187 = v446;
      v124[1] = v123;

      v125 = v184;
      v126 = v187;
      v187[2] = v447;
      v126[3] = v125;

      v127 = v186;
      v128 = v187;
      v187[4] = v448;
      v128[5] = v127;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v189, v190))
      {
        v129 = v484;
        v171 = static UnsafeMutablePointer.allocate(capacity:)();
        v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v170 = 0;
        v172 = createStorage<A>(capacity:type:)(0);
        v173 = createStorage<A>(capacity:type:)(v170);
        v174 = &v558;
        v558 = v171;
        v175 = &v557;
        v557 = v172;
        v176 = &v556;
        v556 = v173;
        serialize(_:at:)(0, &v558);
        serialize(_:at:)(1, v174);
        v554 = v446;
        v555 = v183;
        closure #1 in osLogInternal(_:log:type:)(&v554, v174, v175, v176);
        v177 = v129;
        if (v129)
        {

          __break(1u);
        }

        else
        {
          v554 = v447;
          v555 = v184;
          closure #1 in osLogInternal(_:log:type:)(&v554, &v558, &v557, &v556);
          v168 = 0;
          v554 = v448;
          v555 = v186;
          closure #1 in osLogInternal(_:log:type:)(&v554, &v558, &v557, &v556);
          _os_log_impl(&_mh_execute_header, v189, v190, "rsrp in data directory failed validation: %ld", v171, 0xCu);
          v167 = 0;
          destroyStorage<A>(_:count:)(v172);
          destroyStorage<A>(_:count:)(v173);
          UnsafeMutablePointer.deallocate()();
        }
      }

      else
      {
      }

      (*(v486 + 8))(v492, v485);
      return 0;
    }
  }

  else
  {
    v130 = v490;
    v131 = logger.unsafeMutableAddressor();
    (*(v486 + 16))(v130, v131, v485);
    v156 = 7;
    v157 = swift_allocObject();
    *(v157 + 16) = v431;
    v165 = Logger.logObject.getter();
    v166 = static os_log_type_t.error.getter();
    v154 = 17;
    v159 = swift_allocObject();
    *(v159 + 16) = 0;
    v160 = swift_allocObject();
    *(v160 + 16) = 8;
    v155 = 32;
    v132 = swift_allocObject();
    v133 = v157;
    v158 = v132;
    *(v132 + 16) = v439;
    *(v132 + 24) = v133;
    v134 = swift_allocObject();
    v135 = v158;
    v162 = v134;
    *(v134 + 16) = v440;
    *(v134 + 24) = v135;
    v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v161 = _allocateUninitializedArray<A>(_:)();
    v163 = v136;

    v137 = v159;
    v138 = v163;
    *v163 = v441;
    v138[1] = v137;

    v139 = v160;
    v140 = v163;
    v163[2] = v442;
    v140[3] = v139;

    v141 = v162;
    v142 = v163;
    v163[4] = v443;
    v142[5] = v141;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v165, v166))
    {
      v143 = v484;
      v147 = static UnsafeMutablePointer.allocate(capacity:)();
      v145[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v146 = 0;
      v148 = createStorage<A>(capacity:type:)(0);
      v149 = createStorage<A>(capacity:type:)(v146);
      v150 = &v563;
      v563 = v147;
      v151 = &v562;
      v562 = v148;
      v152 = &v561;
      v561 = v149;
      serialize(_:at:)(0, &v563);
      serialize(_:at:)(1, v150);
      v559 = v441;
      v560 = v159;
      closure #1 in osLogInternal(_:log:type:)(&v559, v150, v151, v152);
      v153 = v143;
      if (v143)
      {

        __break(1u);
      }

      else
      {
        v559 = v442;
        v560 = v160;
        closure #1 in osLogInternal(_:log:type:)(&v559, &v563, &v562, &v561);
        v145[2] = 0;
        v559 = v443;
        v560 = v162;
        closure #1 in osLogInternal(_:log:type:)(&v559, &v563, &v562, &v561);
        _os_log_impl(&_mh_execute_header, v165, v166, "rssi in data directory failed validation: %ld", v147, 0xCu);
        v145[1] = 0;
        destroyStorage<A>(_:count:)(v148);
        destroyStorage<A>(_:count:)(v149);
        UnsafeMutablePointer.deallocate()();
      }
    }

    else
    {
    }

    (*(v486 + 8))(v490, v485);
    return 0;
  }
}

id @nonobjc NSRegularExpression.init(pattern:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = String._bridgeToObjectiveC()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSAySo7NSErrorCSgGMd, &_sSAySo7NSErrorCSgGMR);
  lazy protocol witness table accessor for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>();
  _convertInOutToPointerArgument<A>(_:)();
  v8 = [v5 initWithPattern:v6 options:a3 error:v9];
  0;

  if (v8)
  {

    return v8;
  }

  else
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return v4;
  }
}

uint64_t protocol witness for SetAlgebra.init() in conformance NSRegularExpressionOptions()
{
  lazy protocol witness table accessor for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.init()();
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance NSRegularExpressionOptions()
{
  lazy protocol witness table accessor for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formUnion(_:)();
}

uint64_t protocol witness for SetAlgebra.formIntersection(_:) in conformance NSRegularExpressionOptions()
{
  lazy protocol witness table accessor for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formIntersection(_:)();
}

uint64_t protocol witness for SetAlgebra.formSymmetricDifference(_:) in conformance NSRegularExpressionOptions()
{
  lazy protocol witness table accessor for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formSymmetricDifference(_:)();
}

uint64_t protocol witness for SetAlgebra.init() in conformance NSMatchingOptions()
{
  lazy protocol witness table accessor for type NSMatchingOptions and conformance NSMatchingOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.init()();
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance NSMatchingOptions()
{
  lazy protocol witness table accessor for type NSMatchingOptions and conformance NSMatchingOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formUnion(_:)();
}

uint64_t protocol witness for SetAlgebra.formIntersection(_:) in conformance NSMatchingOptions()
{
  lazy protocol witness table accessor for type NSMatchingOptions and conformance NSMatchingOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formIntersection(_:)();
}

uint64_t protocol witness for SetAlgebra.formSymmetricDifference(_:) in conformance NSMatchingOptions()
{
  lazy protocol witness table accessor for type NSMatchingOptions and conformance NSMatchingOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formSymmetricDifference(_:)();
}

NSRegularExpressionOptions protocol witness for OptionSet.init(rawValue:) in conformance NSRegularExpressionOptions@<X0>(Swift::UInt *a1@<X0>, NSRegularExpressionOptions *a2@<X8>)
{
  result = NSRegularExpressionOptions.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

NSMatchingOptions protocol witness for OptionSet.init(rawValue:) in conformance NSMatchingOptions@<X0>(Swift::UInt *a1@<X0>, NSMatchingOptions *a2@<X8>)
{
  result = NSMatchingOptions.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

NSRegularExpressionOptions protocol witness for RawRepresentable.init(rawValue:) in conformance NSRegularExpressionOptions@<X0>(Swift::UInt *a1@<X0>, uint64_t a2@<X8>)
{
  result = NSRegularExpressionOptions.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NSRegularExpressionOptions@<X0>(uint64_t *a1@<X8>)
{
  result = NSRegularExpressionOptions.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

NSMatchingOptions protocol witness for RawRepresentable.init(rawValue:) in conformance NSMatchingOptions@<X0>(Swift::UInt *a1@<X0>, uint64_t a2@<X8>)
{
  result = NSMatchingOptions.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NSMatchingOptions@<X0>(uint64_t *a1@<X8>)
{
  result = NSMatchingOptions.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t createStorage<A>(capacity:type:)(uint64_t a1)
{
  if (a1)
  {
    return static UnsafeMutablePointer.allocate(capacity:)();
  }

  else
  {
    return 0;
  }
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void destroyStorage<A>(_:count:)(uint64_t a1)
{
  if (a1)
  {
    UnsafeMutablePointer.deinitialize(count:)();
    UnsafeMutablePointer.deallocate()();
  }
}

void *closure #1 in OSLogArguments.append(_:)(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = a4();
  getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, a3);
  v8 = *a1;

  UnsafeMutableRawBufferPointer.copyMemory(from:)();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  v14 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      outlined init with copy of Any(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v13[3] = &type metadata for _StringGuts;
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      outlined init with copy of Any(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  return v11;
}

uint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(uint64_t result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        _sSv16initializeMemory2as4from5countSpyxGxm_SPyxGSitlFs5UInt8V_Ttgq5(v22, v17, v16);
        UnsafeMutableRawBufferPointer.subscript.setter();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = _StringGuts._allocateForDeconstruct()(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = _StringObject.sharedUTF8.getter();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

char *_sSv16initializeMemory2as4from5countSpyxGxm_SPyxGSitlFs5UInt8V_Ttgq5(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, uint64_t a2)
{
  v7 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  inited = swift_initStackObject();
  v3 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs5UInt8V_Tt1gq5(inited, 1);
  *v4 = 0;
  specialized _finalizeUninitializedArray<A>(_:)();
  specialized Array.append<A>(contentsOf:)(v3);

  v8 = specialized Array.count.getter(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = String.UTF8View._foreignCount()();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return _ss15ContiguousArrayVAByxGycfCs5UInt8V_Ttgq5();
  }

  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    return _ss15ContiguousArrayVAByxGycfCs5UInt8V_Ttgq5();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        specialized UnsafeMutablePointer.initialize(from:count:)(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = _StringObject.sharedUTF8.getter();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      specialized UnsafeMutablePointer.initialize(from:count:)(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = _StringGuts._foreignCopyUTF8(into:)();
  if (v2)
  {
LABEL_29:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  outlined destroy of String.UTF8View(v17);
  return v10;
}

uint64_t _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v20 = specialized Array.count.getter(a1);
  v2 = specialized Array.count.getter(*v1);
  v21 = v2 + v20;
  if (__OFADD__(v2, v20))
  {
    goto LABEL_31;
  }

  v16 = *v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v19 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v21 > *(*v19 + 24) >> 1)
  {
    if (*(*v19 + 16) < v21)
    {
      v15 = v21;
    }

    else
    {
      v15 = *(*v19 + 16);
    }

    v14 = *v19;

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v15, 1, v14);
    v5 = *v19;
    *v19 = v4;
  }

  v6 = *(*v19 + 16);
  v12 = (*v19 + 32 + v6);
  v7 = *(*v19 + 24) >> 1;
  v13 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    goto LABEL_32;
  }

  if (v13 < 0)
  {
LABEL_30:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!specialized Array._getCount()(a1))
  {
LABEL_21:

    if (v20 <= 0)
    {
      goto LABEL_28;
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_30;
  }

  if (v13 < v20)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_21;
  }

  specialized UnsafeMutablePointer.initialize(from:count:)((a1 + 32), v20, v12);

  swift_unknownObjectRelease();
  if (v20 <= 0)
  {
    goto LABEL_28;
  }

  v9 = *(*v19 + 16);
  v11 = v9 + v20;
  if (!__OFADD__(v9, v20))
  {
    *(*v19 + 16) = v11;
LABEL_28:
    specialized Array._endMutation()();
    return;
  }

LABEL_33:
  __break(1u);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v5 = swift_allocObject();

    if (_swift_stdlib_has_malloc_size())
    {
      v3 = _swift_stdlib_malloc_size(v5) - 32;
      v5[2] = a1;
      v5[3] = 2 * v3;
    }

    else
    {
      v5[2] = a1;
      v5[3] = 2 * v6;
    }

    return v5;
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }
}

void *specialized UnsafeMutablePointer.initialize(from:count:)(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = String.UTF8View._foreignIndex(_:offsetBy:)();
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v5 = String.UTF16View.index(_:offsetBy:)();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v4, v6);
  if (v7)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v4, v5 + 32);

    *(a4 + 16) = 0;
  }

  else
  {

    specialized UnsafeMutablePointer.initialize(from:count:)((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

_BYTE **closure #1 in OSLogArguments.append(_:)partial apply(_BYTE **a1, uint64_t a2, uint64_t a3)
{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

uint64_t sub_10000C488()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10000C4D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10000C520()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #2 in checkValidTextInputs(data:)()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  implicit closure #2 in checkValidTextInputs(data:)();
  return result;
}

uint64_t sub_10000C5D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply()
{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

uint64_t sub_10000C620()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void *closure #1 in OSLogArguments.append(_:)partial apply(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

uint64_t sub_10000C66C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #3 in checkValidTextInputs(data:)()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  implicit closure #3 in checkValidTextInputs(data:)();
  return result;
}

uint64_t sub_10000C720()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10000C76C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t closure #1 in OSLogArguments.append<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a7;
  v24 = a6;
  v26 = a1;
  v20 = 0;
  v30 = a6;
  v21 = *(a6 - 8);
  v22 = v21;
  v7 = *(v21 + 64);
  __chkstk_darwin(0);
  v23 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9();
  v27 = dispatch thunk of static FixedWidthInteger.bitWidth.getter() >> 3;
  v28 = *v26;
  v29 = v28;
  if (v27 < 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v19 = v28 + v27;
    v18 = &v18;
    v10 = __chkstk_darwin(v23);
    v16 = v29;
    v17 = v11;
    _ss27_withUnprotectedUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v10, partial apply for closure #1 in serialize<A>(_:at:), v15, v12, &type metadata for Never, &type metadata for () + 8, v13, &type metadata for ());
    (*(v22 + 8))(v23, v24);
    result = v18;
    *v26 = v19;
  }

  return result;
}

uint64_t _ss27_withUnprotectedUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v11[2] = a8;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v17 = a7;
  v18 = "Fatal error";
  v19 = "UnsafeRawBufferPointer with negative count";
  v20 = "Swift/UnsafeRawBufferPointer.swift";
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v21 = *(a5 - 8);
  v22 = a5 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v24 = v11 - v23;
  v25 = *(*(v8 - 8) + 64);
  if (v25 < 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v9 = v16;
    result = v13(v12, v12 + v25, v24);
    v11[1] = v9;
    if (v9)
    {
      return (*(v21 + 32))(v17, v24, v15);
    }
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_10000CC94()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10000CCE0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in OSLogArguments.append<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  v2 = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Int and conformance Int);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Int and conformance Int);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10000CEA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  v2 = *(v1 + 24);
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  v2 = *(v1 + 24);
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  v2 = *(v1 + 24);
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  v2 = *(v1 + 24);
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  v2 = *(v1 + 24);
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  v2 = *(v1 + 24);
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  v2 = *(v1 + 24);
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  v2 = *(v1 + 24);
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  v2 = *(v1 + 24);
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  v2 = *(v1 + 24);
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  v2 = *(v1 + 24);
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  v2 = *(v1 + 24);
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  v2 = *(v1 + 24);
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  v2 = *(v1 + 24);
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  v2 = *(v1 + 24);
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  v2 = *(v1 + 24);
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  v2 = *(v1 + 24);
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  v2 = *(v1 + 24);
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  v2 = *(v1 + 24);
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  v2 = *(v1 + 24);
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  v2 = *(v1 + 24);
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  v2 = *(v1 + 24);
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  v2 = *(v1 + 24);
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  v2 = *(v1 + 24);
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  v2 = *(v1 + 24);
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

uint64_t sub_10000CEF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t closure #1 in OSLogArguments.append<A>(_:)partial apply(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

uint64_t sub_10000D044()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10000D090()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10000D1E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10000D22C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10000D37C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10000D3C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10000D518()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10000D564()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10000D6DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void *closure #1 in OSLogArguments.append(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();
  v5 = *a1;
  UnsafeMutableRawBufferPointer.copyMemory(from:)();
  result = a1;
  *a1 = v5 + 8;
  return result;
}

uint64_t sub_10000D794()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10000D87C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10000D8C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10000D9B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10000D9FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type UInt and conformance UInt()
{
  v2 = lazy protocol witness table cache variable for type UInt and conformance UInt;
  if (!lazy protocol witness table cache variable for type UInt and conformance UInt)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UInt and conformance UInt);
    return WitnessTable;
  }

  return v2;
}

uint64_t partial apply for closure #1 in serialize<A>(_:at:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #1 in serialize<A>(_:at:)();
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t outlined destroy of String.UTF8View(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  v2 = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type String and conformance String);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type String and conformance String);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type String and conformance String);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>()
{
  v2 = lazy protocol witness table cache variable for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>;
  if (!lazy protocol witness table cache variable for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSAySo7NSErrorCSgGMd, &_sSAySo7NSErrorCSgGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>);
    return WitnessTable;
  }

  return v2;
}

Swift::Double __swiftcall getMean(nums:)(Swift::OpaquePointer nums)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
  lazy protocol witness table accessor for type [Double] and conformance [A]();
  Sequence.reduce<A>(_:_:)();
  v2 = Double.init(_:)(v3);
  return v2 / Array.count.getter();
}

double implicit closure #1 in getMean(nums:)@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 + *a2;
  *a3 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type [Double] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [Double] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Double] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySdGMd, &_sSaySdGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Double] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [Double] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Double] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySdGMd, &_sSaySdGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Double] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

Swift::Double __swiftcall getMedian(nums:)(Swift::OpaquePointer nums)
{
  v6 = Array.count.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
  lazy protocol witness table accessor for type [Double] and conformance [A]();
  Sequence<>.sorted()();
  if (Array.count.getter() % 2)
  {
    Array.subscript.getter();
    v3 = Double.init(_:)(v9);

    return v3;
  }

  Array.subscript.getter();
  result = v8;
  if (!__OFSUB__(v6 / 2, 1))
  {
    Array.subscript.getter();
    v4 = Double.init(_:)((v8 + v7) / 2.0);

    return v4;
  }

  __break(1u);
  return result;
}

{
  v5 = Array.count.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  lazy protocol witness table accessor for type [Int] and conformance [A]();
  Sequence<>.sorted()();
  if (Array.count.getter() % 2)
  {
    Array.subscript.getter();

    return v8;
  }

  Array.subscript.getter();
  if (__OFSUB__(v5 / 2, 1))
  {
    __break(1u);
  }

  else
  {
    Array.subscript.getter();
    if (!__OFADD__(v7, v6))
    {

      return ((v7 + v6) / 2);
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type [Int] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [Int] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Int] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySiGMd, &_sSaySiGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Int] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [Int] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Int] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySiGMd, &_sSaySiGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Int] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t getSteadyList(windowSize:rssiThreshold:rssiList:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30[5] = a1;
  v30[4] = a2;
  v30[3] = a3;
  v20 = Array.count.getter();
  v30[2] = v20;
  v18 = a1 / 2;
  v30[1] = a1 / 2;
  v30[0] = _allocateUninitializedArray<A>(_:)();
  if (v20 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  Collection<>.makeIterator()();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnySiGGMd, &_ss16IndexingIteratorVySnySiGGMR);
    result = IndexingIterator.next()();
    if (v29)
    {
      v11 = v30[0];

      outlined destroy of [Int](v30);
      return v11;
    }

    if (v18 < v20)
    {
      if (v28 >= v18)
      {
        if (__OFSUB__(v28, v18))
        {
          goto LABEL_50;
        }

        result = max<A>(_:_:)();
        if (__OFADD__(v28, v18))
        {
          goto LABEL_51;
        }

        if (__OFSUB__(v20, 1))
        {
          goto LABEL_52;
        }

        min<A>(_:_:)();
        v14 = v22;
        v15 = v23;
      }

      else
      {
        if (__OFADD__(v28, v18))
        {
          goto LABEL_53;
        }

        if (__OFSUB__(v20, 1))
        {
          goto LABEL_54;
        }

        min<A>(_:_:)();
        v14 = v21;
        v15 = 0;
      }

      v16 = v14;
      v17 = v15;
    }

    else
    {
      if (__OFSUB__(v20, 1))
      {
        goto LABEL_55;
      }

      v16 = v20 - 1;
      v17 = 0;
    }

    if (v16 < v17)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNySiGMd, &_sSNySiGMR);
    lazy protocol witness table accessor for type [Int] and conformance [A]();
    lazy protocol witness table accessor for type ClosedRange<Int> and conformance ClosedRange<A>();
    MutableCollection.subscript.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVySiGMd, &_ss10ArraySliceVySiGMR);
    lazy protocol witness table accessor for type ArraySlice<Int> and conformance ArraySlice<A>();
    Sequence<>.max()();
    if (v27)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      v13 = v26;
    }

    result = Sequence<>.min()();
    if (v25)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      v12 = v24;
    }

    if (__OFSUB__(v13, v12))
    {
      break;
    }

    abs<A>(_:)();
    Array.append(_:)();
    swift_unknownObjectRelease();
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>()
{
  v2 = lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Int and conformance Int();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>);
    return WitnessTable;
  }

  return v2;
}

uint64_t *outlined destroy of [Int](uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

unint64_t lazy protocol witness table accessor for type ClosedRange<Int> and conformance ClosedRange<A>()
{
  v2 = lazy protocol witness table cache variable for type ClosedRange<Int> and conformance ClosedRange<A>;
  if (!lazy protocol witness table cache variable for type ClosedRange<Int> and conformance ClosedRange<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSNySiGMd, &_sSNySiGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ClosedRange<Int> and conformance ClosedRange<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type ArraySlice<Int> and conformance ArraySlice<A>()
{
  v2 = lazy protocol witness table cache variable for type ArraySlice<Int> and conformance ArraySlice<A>;
  if (!lazy protocol witness table cache variable for type ArraySlice<Int> and conformance ArraySlice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss10ArraySliceVySiGMd, &_ss10ArraySliceVySiGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ArraySlice<Int> and conformance ArraySlice<A>);
    return WitnessTable;
  }

  return v2;
}

uint64_t getFlatList(durationThreshold:steadyList:)(uint64_t a1, uint64_t a2)
{
  v52[3] = a1;
  v52[2] = a2;
  v41 = Array.count.getter();
  v52[1] = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi5start_Si3endSi5counttMd, &_sSi5start_Si3endSi5counttMR);
  v2 = _allocateUninitializedArray<A>(_:)();
  result = v41;
  v52[0] = v2;
  if (v41 < a1)
  {
LABEL_97:
    v18 = v52[0];

    outlined destroy of [(start: Int, end: Int, count: Int)](v52);
    return v18;
  }

  if (!__OFSUB__(v41, 2))
  {
    if (v41 - 2 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNySiGMd, &_sSNySiGMR);
    lazy protocol witness table accessor for type ClosedRange<Int> and conformance <> ClosedRange<A>();
    Collection<>.makeIterator()();
    v36 = 0;
    v37 = 0;
    v38 = 0;
    for (i = 0; ; i = v34)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySNySiGGMd, &_ss16IndexingIteratorVySNySiGGMR);
      IndexingIterator.next()();
      if (v51)
      {
        break;
      }

      Array.subscript.getter();

      if (v49)
      {
        v35 = 0;
      }

      else
      {
        if (__OFADD__(v50, 1))
        {
          goto LABEL_111;
        }

        Array.subscript.getter();
        v35 = v42 == 1;
      }

      if (v35)
      {
        if (__OFADD__(v50, 1))
        {
          goto LABEL_110;
        }

        v31 = v50 + 1;
        v32 = v50 + 1;
        v33 = 0;
        v34 = v50 + 1;
      }

      else
      {
        Array.subscript.getter();

        if (v48 == 1)
        {
          if (__OFADD__(v50, 1))
          {
            goto LABEL_109;
          }

          Array.subscript.getter();
          v30 = v43 == 0;
        }

        else
        {
          v30 = 0;
        }

        if (v30)
        {
          if (__OFSUB__(v50, i))
          {
            goto LABEL_106;
          }

          if (v50 - i >= a1)
          {
            if (__OFSUB__(v50, i))
            {
              goto LABEL_107;
            }

            if (__OFADD__(v50 - i, 1))
            {
              goto LABEL_108;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi5start_Si3endSi5counttGMd, &_sSaySi5start_Si3endSi5counttGMR);
            result = Array.append(_:)();
          }

          v27 = i;
          v28 = i;
          v29 = 0;
        }

        else
        {
          Array.subscript.getter();

          if (v47 == 1)
          {
            if (__OFADD__(v50, 1))
            {
              goto LABEL_105;
            }

            Array.subscript.getter();
            v26 = v44 == 1;
          }

          else
          {
            v26 = 0;
          }

          if (v26)
          {
            v25 = 1;
          }

          else
          {
            Array.subscript.getter();

            if (v46)
            {
              v24 = 0;
            }

            else
            {
              if (__OFADD__(v50, 1))
              {
                goto LABEL_104;
              }

              Array.subscript.getter();
              v24 = v45 == 0;
            }

            if (v24)
            {
              v23 = 0;
            }

            else
            {
              v23 = v38;
            }

            v25 = v23;
          }

          v27 = v36;
          v28 = v37;
          v29 = v25;
        }

        v31 = v27;
        v32 = v28;
        v33 = v29;
        v34 = i;
      }

      if (__OFSUB__(v41, 2))
      {
        goto LABEL_99;
      }

      if (v50 == v41 - 2 && (v33 & 1) == 1)
      {
        v21 = v41 - 1;
        if (__OFSUB__(v41, 1))
        {
          goto LABEL_102;
        }

        if (__OFSUB__(v21, v32))
        {
          goto LABEL_103;
        }

        v19 = v21 - v32 >= a1;
        v20 = v32;
      }

      else
      {
        v19 = 0;
        v20 = v31;
      }

      if (v19)
      {
        if (__OFSUB__(v41, 1))
        {
          goto LABEL_100;
        }

        if (__OFSUB__(v41, v20))
        {
          goto LABEL_101;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi5start_Si3endSi5counttGMd, &_sSaySi5start_Si3endSi5counttGMR);
        Array.append(_:)();
      }

      v36 = v20;
      v37 = v32;
      v38 = v33;
    }

    goto LABEL_97;
  }

  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type ClosedRange<Int> and conformance <> ClosedRange<A>()
{
  v2 = lazy protocol witness table cache variable for type ClosedRange<Int> and conformance <> ClosedRange<A>;
  if (!lazy protocol witness table cache variable for type ClosedRange<Int> and conformance <> ClosedRange<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSNySiGMd, &_sSNySiGMR);
    lazy protocol witness table accessor for type Int and conformance Int();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ClosedRange<Int> and conformance <> ClosedRange<A>);
    return WitnessTable;
  }

  return v2;
}

uint64_t getReducedData(flatList:rssiList:obrList:noiseList:txRateList:rxRateList:dowList:hourList:ssidList:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v37[0] = 0;
  v37[1] = 0;
  v38[9] = a1;
  v38[8] = a2;
  v38[7] = a3;
  v38[6] = a4;
  v38[5] = a5;
  v38[4] = a6;
  v38[3] = a7;
  v38[2] = a8;
  v38[1] = a9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
  v38[0] = _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi5start_Si3endSi5counttMd, &_sSi5start_Si3endSi5counttMR);
  if (Array.count.getter() > 0)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi5start_Si3endSi5counttGMd, &_sSaySi5start_Si3endSi5counttGMR);
    lazy protocol witness table accessor for type [(start: Int, end: Int, count: Int)] and conformance [A]();
    Collection<>.makeIterator()();
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySi5start_Si3endSi5counttGGMd, &_ss16IndexingIteratorVySaySi5start_Si3endSi5counttGGMR);
      IndexingIterator.next()();
      if (v36)
      {
        break;
      }

      if (v35 < v34)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNySiGMd, &_sSNySiGMR);
      lazy protocol witness table accessor for type [Double] and conformance [A]();
      lazy protocol witness table accessor for type ClosedRange<Int> and conformance ClosedRange<A>();
      MutableCollection.subscript.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVySdGMd, &_ss10ArraySliceVySdGMR);
      lazy protocol witness table accessor for type ArraySlice<Double> and conformance ArraySlice<A>();
      nums = Array.init<A>(_:)();
      if (v35 < v34)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
      lazy protocol witness table accessor for type [Int] and conformance [A]();
      MutableCollection.subscript.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVySiGMd, &_ss10ArraySliceVySiGMR);
      lazy protocol witness table accessor for type ArraySlice<Int> and conformance ArraySlice<A>();
      v25 = Array.init<A>(_:)();
      if (v35 < v34)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      MutableCollection.subscript.getter();
      v24 = Array.init<A>(_:)();
      if (v35 < v34)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      MutableCollection.subscript.getter();
      v23 = Array.init<A>(_:)();
      if (v35 < v34)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      MutableCollection.subscript.getter();
      v22 = Array.init<A>(_:)();
      if (v35 < v34)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      MutableCollection.subscript.getter();
      Array.init<A>(_:)();
      if (v35 < v34)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      MutableCollection.subscript.getter();
      Array.init<A>(_:)();
      if (v35 < v34)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      MutableCollection.subscript.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVySSGMd, &_ss10ArraySliceVySSGMR);
      lazy protocol witness table accessor for type ArraySlice<String> and conformance ArraySlice<A>();
      Array.init<A>(_:)();
      v17 = getMedian(nums:)(nums);
      v18 = getMedian(nums:)(v25);
      v19 = getMedian(nums:)(v24);
      v20 = getMedian(nums:)(v23);
      v21 = getMedian(nums:)(v22);
      lazy protocol witness table accessor for type [Int] and conformance [A]();
      Sequence<>.min()();
      if (v33)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      else
      {
        v16 = v32;
      }

      Sequence<>.min()();
      if (v31)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      else
      {
        v15 = v30;
      }

      lazy protocol witness table accessor for type [String] and conformance [A]();
      Sequence<>.min()();
      if (v29)
      {
        v13 = v28;
        v14 = v29;
      }

      else
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      v27 = Array.count.getter();
      _allocateUninitializedArray<A>(_:)();
      v12 = v9;
      v9[3] = &type metadata for Double;
      *v9 = v17;
      v9[7] = &type metadata for Double;
      *(v9 + 4) = v18;
      v9[11] = &type metadata for Double;
      *(v9 + 8) = v19;
      v9[15] = &type metadata for Double;
      *(v9 + 12) = v20;
      v9[19] = &type metadata for Double;
      *(v9 + 16) = v21;
      v9[23] = &type metadata for Int;
      v9[20] = v16;
      v9[27] = &type metadata for Int;
      v9[24] = v15;

      v12[31] = &type metadata for String;
      v12[28] = v13;
      v12[29] = v14;
      v12[35] = &type metadata for Int;
      v12[32] = v27;
      _finalizeUninitializedArray<A>(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySayypGGMd, &_sSaySayypGGMR);
      Array.append(_:)();
    }

    outlined destroy of IndexingIterator<[(start: Int, end: Int, count: Int)]>(v37);
  }

  v11 = v38[0];

  outlined destroy of [[Any]](v38);
  return v11;
}

uint64_t *outlined destroy of [[Any]](uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

unint64_t lazy protocol witness table accessor for type ArraySlice<Double> and conformance ArraySlice<A>()
{
  v2 = lazy protocol witness table cache variable for type ArraySlice<Double> and conformance ArraySlice<A>;
  if (!lazy protocol witness table cache variable for type ArraySlice<Double> and conformance ArraySlice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss10ArraySliceVySdGMd, &_ss10ArraySliceVySdGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ArraySlice<Double> and conformance ArraySlice<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type ArraySlice<String> and conformance ArraySlice<A>()
{
  v2 = lazy protocol witness table cache variable for type ArraySlice<String> and conformance ArraySlice<A>;
  if (!lazy protocol witness table cache variable for type ArraySlice<String> and conformance ArraySlice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss10ArraySliceVySSGMd, &_ss10ArraySliceVySSGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ArraySlice<String> and conformance ArraySlice<A>);
    return WitnessTable;
  }

  return v2;
}

uint64_t preprocessData(rssiList:obrList:noiseList:txRateList:rxRateList:dowList:hourList:ssidList:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = getSteadyList(windowSize:rssiThreshold:rssiList:)(7, 5, a1);
  v18 = getFlatList(durationThreshold:steadyList:)(3, v19);
  v17 = getReducedData(flatList:rssiList:obrList:noiseList:txRateList:rxRateList:dowList:hourList:ssidList:)(v18, a1, a2, a3, a4, a5, a6, a7, a8);

  return v17;
}

uint64_t SQLError.description.getter(unsigned int a1, uint64_t a2, void *a3)
{
  v6._countAndFlagsBits = a2;
  v6._object = a3;
  v9 = a1;
  v10 = a2;
  v11 = a3;

  v7 = v6;
  if (v6._object)
  {
    v8 = v7;
  }

  else
  {
    v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SQL Error", 9uLL, 1);
  }

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(": ", 2uLL, 1);
  static String.+ infix(_:_:)();

  if (!sqlite3_errstr(a1))
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  String.init(cString:)();
  v4 = static String.+ infix(_:_:)();

  return v4;
}

uint64_t outlined destroy of String?(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

uint64_t SQLError.desc.setter(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 16);
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t DBError.description.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("statement returned no rows", 0x1AuLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("statement returned too many rows", 0x20uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("statement returned wrong columns count", 0x26uLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("closed", 6uLL, 1)._countAndFlagsBits;
  }
}

BOOL static DBError.__derived_enum_equals(_:_:)(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else if (a1 == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else if (a2 == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t lazy protocol witness table accessor for type DBError and conformance DBError()
{
  v2 = lazy protocol witness table cache variable for type DBError and conformance DBError;
  if (!lazy protocol witness table cache variable for type DBError and conformance DBError)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type DBError and conformance DBError);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type DBError and conformance DBError;
  if (!lazy protocol witness table cache variable for type DBError and conformance DBError)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type DBError and conformance DBError);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type DBError and conformance DBError;
  if (!lazy protocol witness table cache variable for type DBError and conformance DBError)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type DBError and conformance DBError);
    return WitnessTable;
  }

  return v2;
}

uint64_t SQLiteDB.logger.unsafeMutableAddressor()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return __swift_project_value_buffer(v0, static SQLiteDB.logger);
}

uint64_t static SQLiteDB.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = SQLiteDB.logger.unsafeMutableAddressor();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t SQLiteDB.handle.getter()
{
  v2 = *(v0 + 112);

  return v2;
}

uint64_t SQLiteDB.Location.path.getter()
{
  v16 = 0;
  v17 = 0;
  v7 = 0;
  v14 = type metadata accessor for URL();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v8 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v9 = &v4 - v8;
  v17 = &v4 - v8;
  v11 = (*(*(type metadata accessor for SQLiteDB.Location() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = __chkstk_darwin(v10);
  v15 = &v4 - v11;
  v16 = v0;
  outlined init with copy of SQLiteDB.Location(v0, &v4 - v11);
  if ((*(v12 + 48))(v15, 1, v14) == 1)
  {
    v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(":memory:", 8uLL, 1);
  }

  else
  {
    v1 = v9;
    (*(v12 + 32))(v9, v15, v14);
    v17 = v1;
    v5._countAndFlagsBits = URL.path.getter();
    v5._object = v2;
    (*(v12 + 8))(v9, v14);
    v6 = v5;
  }

  return v6._countAndFlagsBits;
}

uint64_t type metadata accessor for SQLiteDB.Location()
{
  v1 = type metadata singleton initialization cache for SQLiteDB.Location;
  if (!type metadata singleton initialization cache for SQLiteDB.Location)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

void *outlined init with copy of SQLiteDB.Location(const void *a1, void *a2)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = type metadata accessor for SQLiteDB.Location();
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t SQLiteDB.DBHandle.closed.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 24);
  swift_endAccess();
  return v2 & 1;
}

uint64_t SQLiteDB.DBHandle.closed.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
  return swift_endAccess();
}

uint64_t *SQLiteDB.DBHandle.__allocating_init(location:)(uint64_t a1)
{
  swift_allocObject();
  v5 = SQLiteDB.DBHandle.init(location:)(a1);
  if (v3)
  {
    return v2;
  }

  else
  {
    return v5;
  }
}

uint64_t *SQLiteDB.DBHandle.init(location:)(uint64_t a1)
{
  v10 = *v1;
  *(v1 + 24) = 0;
  v13 = 0;
  SQLiteDB.Location.path.getter();
  v11 = String.utf8CString.getter();

  v12 = sqlite3_open_v2((v11 + 32), &v13, 32774, 0);
  swift_unknownObjectRelease();

  if (!v13 || v12)
  {
    v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to open database", 0x17uLL, 1);
    v14 = SQLError.init(code:desc:)(v12, v3);
    code = v14.code;
    desc_8 = v14.desc.value._countAndFlagsBits;
    object = v14.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v4 = code;
    *(v4 + 8) = desc_8;
    *(v4 + 16) = object;
    swift_willThrow();
    swift_deallocPartialClassInstance();
    outlined destroy of SQLiteDB.Location(a1);
    return v5;
  }

  else
  {
    v1[2] = v13;
    outlined destroy of SQLiteDB.Location(a1);
    return v1;
  }
}

unint64_t lazy protocol witness table accessor for type SQLError and conformance SQLError()
{
  v2 = lazy protocol witness table cache variable for type SQLError and conformance SQLError;
  if (!lazy protocol witness table cache variable for type SQLError and conformance SQLError)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SQLError and conformance SQLError);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined destroy of SQLiteDB.Location(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t SQLiteDB.DBHandle.close()()
{
  swift_beginAccess();
  v3 = *(v0 + 24);
  result = swift_endAccess();
  if ((v3 & 1) == 0)
  {
    swift_beginAccess();
    *(v2 + 24) = 1;
    swift_endAccess();
    return sqlite3_close_v2(*(v2 + 16));
  }

  return result;
}

uint64_t SQLiteDB.Statement.sqlString.getter()
{
  v4 = sqlite3_expanded_sql(*(v0 + 16));
  if (!v4)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  }

  v2 = String.init(cString:)();
  $defer #1 () in SQLiteDB.Statement.sqlString.getter(v4);
  return v2;
}

uint64_t key path getter for SQLiteDB.Statement.finished : SQLiteDB.Statement@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 104))(v2) & 1;
}

uint64_t key path setter for SQLiteDB.Statement.finished : SQLiteDB.Statement(char *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;

  SQLiteDB.Statement.finished.setter(v4 & 1);
}

uint64_t SQLiteDB.Statement.finished.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 24);
  swift_endAccess();
  return v2 & 1;
}

uint64_t SQLiteDB.Statement.finished.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
  return swift_endAccess();
}

uint64_t SQLiteDB.Statement.init(handle:)(uint64_t a1)
{
  result = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = a1;
  return result;
}

uint64_t SQLiteDB.Statement.step()()
{
  v20 = 0;
  v21 = v0;
  v17 = sqlite3_step(*(v0 + 16));
  v20 = v17;
  if (v17 == 100)
  {

    return (SQLiteDB.Row.init(statement:))();
  }

  else
  {
    if (v17 != 101)
    {
      v19[0] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v19[1] = v1;
      v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Statement ((", 0xCuLL, 1);
      DefaultStringInterpolation.appendLiteral(_:)(v2);

      v18[0] = (*(*v16 + 96))(v3);
      v18[1] = v4;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      outlined destroy of String(v18);
      v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(")) could not be executed", 0x18uLL, 1);
      DefaultStringInterpolation.appendLiteral(_:)(v5);

      outlined destroy of DefaultStringInterpolation(v19);
      desc = String.init(stringInterpolation:)();
      v7.value._object = v6;
      v7.value._countAndFlagsBits = desc;
      v22 = SQLError.init(code:desc:)(v17, v7);
      code = v22.code;
      desc_8 = v22.desc.value._countAndFlagsBits;
      object = v22.desc.value._object;
      lazy protocol witness table accessor for type SQLError and conformance SQLError();
      swift_allocError();
      *v8 = code;
      *(v8 + 8) = desc_8;
      *(v8 + 16) = object;
      swift_willThrow();
      return v14;
    }

    swift_beginAccess();
    v16[24] = 1;
    swift_endAccess();
    return 0;
  }
}

uint64_t outlined destroy of DefaultStringInterpolation(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

uint64_t SQLiteDB.Statement.forEach(handler:)(void (*a1)(void))
{
  while (1)
  {
    result = SQLiteDB.Statement.step()();
    if (v3 || !result)
    {
      break;
    }

    a1();

    v3 = 0;
  }

  return result;
}

uint64_t SQLiteDB.Statement.queryOneRow<A>(handler:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v33 = a1;
  v34 = a2;
  v35 = a3;
  v49 = 0;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  v45 = 0;
  v50 = a3;
  v36 = *(a3 - 8);
  v37 = a3 - 8;
  v38 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v39 = v14 - v38;
  v49 = v14 - v38;
  v47 = __chkstk_darwin(a1);
  v48 = v6;
  v46 = v4;
  result = SQLiteDB.Statement.step()();
  v40 = v5;
  v41 = result;
  v42 = v5;
  if (v5)
  {
    v17 = v42;
  }

  else
  {
    v31 = v41;
    if (v41)
    {
      v30 = v31;
      v8 = v40;
      v27 = v31;
      v45 = v31;
      v33();
      v28 = v8;
      v29 = v8;
      v9 = SQLiteDB.Statement.step()();
      *&v24[8] = 0;
      v25 = v9;
      v26 = 0;
      v44 = v9;
      *v24 = v9 != 0;
      v23 = v9 != 0;
      outlined destroy of SQLiteDB.Row?(&v44);
      if (v23)
      {
        for (i = *&v24[4]; ; i = *&v19[4])
        {
          v10 = i;
          v11 = SQLiteDB.Statement.step()();
          *&v19[4] = v10;
          v20 = v11;
          v21 = v10;
          if (v10)
          {
            break;
          }

          v43 = v20;
          *v19 = v20 != 0;
          v18 = v20 != 0;
          outlined destroy of SQLiteDB.Row?(&v43);
          if (!v18)
          {
            lazy protocol witness table accessor for type DBError and conformance DBError();
            v16 = swift_allocError();
            *v12 = 1;
            swift_willThrow();
            (*(v36 + 8))(v39, v35);

            result = v16;
            v17 = v16;
            return result;
          }
        }

        v14[1] = v21;
        (*(v36 + 8))(v39, v35);
      }

      else
      {
        (*(v36 + 16))(v32, v39, v35);
        (*(v36 + 8))(v39, v35);
      }
    }

    else
    {
      lazy protocol witness table accessor for type DBError and conformance DBError();
      v15 = swift_allocError();
      *v13 = 0;
      swift_willThrow();
      result = v15;
      v17 = v15;
    }
  }

  return result;
}

uint64_t *outlined destroy of SQLiteDB.Row?(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t SQLiteDB.Statement.queryOne<A>()(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v7 = v2;
  v5 = a1;
  v6 = a2;
  return (*(*v2 + 152))(partial apply for closure #1 in SQLiteDB.Statement.queryOne<A>(), v4);
}

{
  v10 = a1;
  v9 = v2;
  v7 = a1;
  v8 = a2;
  v5 = *(*v2 + 152);
  v3 = type metadata accessor for Optional();
  return v5(partial apply for closure #1 in SQLiteDB.Statement.queryOne<A>(), v6, v3);
}

uint64_t closure #1 in SQLiteDB.Statement.queryOne<A>()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (SQLiteDB.Row.count.getter(a1) == 1)
  {

    return (*(a3 + 8))(a1, 0);
  }

  else
  {
    lazy protocol witness table accessor for type DBError and conformance DBError();
    swift_allocError();
    *v4 = 2;
    return swift_willThrow();
  }
}

{
  if (SQLiteDB.Row.count.getter(a1) == 1)
  {

    return (*(a3 + 8))(a1, 0);
  }

  else
  {
    lazy protocol witness table accessor for type DBError and conformance DBError();
    swift_allocError();
    *v4 = 2;
    return swift_willThrow();
  }
}

uint64_t partial apply for closure #1 in SQLiteDB.Statement.queryOne<A>()(uint64_t a1)
{
  return closure #1 in SQLiteDB.Statement.queryOne<A>()(a1, *(v1 + 16), *(v1 + 24));
}

{
  return closure #1 in SQLiteDB.Statement.queryOne<A>()(a1, *(v1 + 16), *(v1 + 24));
}

uint64_t SQLiteDB.Row.count.getter(uint64_t a1)
{

  pStmt = *(a1 + 16);

  return sqlite3_column_count(pStmt);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteDB.Statement.execute()()
{
  v3[1] = 0;
  while (1)
  {
    *&v0[8] = HIDWORD(v2);
    v1 = SQLiteDB.Statement.step()();
    if (v2)
    {
      break;
    }

    v3[0] = v1;
    outlined destroy of SQLiteDB.Row?(v3);
    if (!v1)
    {
      break;
    }

    *v0 = 1;
    v2 = *&v0[4];
  }
}

uint64_t SQLiteDB.Statement.bind(at:to:)(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  return (*(v5 + 8))(v6, a1, v4);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

uint64_t *SQLiteDB.Statement.bind(values:)(uint64_t a1)
{
  memset(v10, 0, 32);
  v10[4] = a1;
  __dst[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16MediaMLExtension11SQLBindable_pGMd, &_sSay16MediaMLExtension11SQLBindable_pGMR);
  lazy protocol witness table accessor for type [SQLBindable] and conformance [A]();
  Sequence.enumerated()();
  __dst[6] = __dst[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceVySay16MediaMLExtension11SQLBindable_pGGMd, &_ss18EnumeratedSequenceVySay16MediaMLExtension11SQLBindable_pGGMR);
  EnumeratedSequence.makeIterator()();
  for (i = v5; ; i = 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceV8IteratorVySay16MediaMLExtension11SQLBindable_pG_GMd, &_ss18EnumeratedSequenceV8IteratorVySay16MediaMLExtension11SQLBindable_pG_GMR);
    EnumeratedSequence.Iterator.next()();
    memcpy(__dst, v8, 0x30uLL);
    if (!__dst[4])
    {
      return outlined destroy of EnumeratedSequence<[SQLBindable]>.Iterator(v10);
    }

    v3 = __dst[0];
    result = outlined init with take of SQLBindable(&__dst[1], v7);
    if (__OFADD__(v3, 1))
    {
      break;
    }

    (*(*v4 + 184))(v3 + 1, v7);
    if (i)
    {
      __swift_destroy_boxed_opaque_existential_1(v7);
      return outlined destroy of EnumeratedSequence<[SQLBindable]>.Iterator(v10);
    }

    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type [SQLBindable] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [SQLBindable] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SQLBindable] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay16MediaMLExtension11SQLBindable_pGMd, &_sSay16MediaMLExtension11SQLBindable_pGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [SQLBindable] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t *outlined destroy of EnumeratedSequence<[SQLBindable]>.Iterator(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v3 = a1[3];
  if ((*(*(v3 - 8) + 80) & 0x20000) == 0)
  {
    return (*(*(v3 - 8) + 8))(a1);
  }

  v2 = *a1;
}

uint64_t SQLiteDB.Row.get<A>(at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return (*(a4 + 8))(a2, a1);
}

{

  return (*(a4 + 8))(a2, a1);
}

uint64_t SQLiteDB.Transaction.db.getter()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t key path getter for SQLiteDB.Transaction.finalized : SQLiteDB.Transaction@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 96))(v2) & 1;
}

uint64_t key path setter for SQLiteDB.Transaction.finalized : SQLiteDB.Transaction(char *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;

  (*(*v3 + 104))(v4 & 1);
}

uint64_t SQLiteDB.Transaction.finalized.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 24);
  swift_endAccess();
  return v2 & 1;
}

uint64_t SQLiteDB.Transaction.finalized.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
  return swift_endAccess();
}

uint64_t SQLiteDB.Transaction.init(_:)(uint64_t a1)
{
  *(v1 + 24) = 0;

  *(v1 + 16) = a1;

  return v4;
}

uint64_t SQLiteDB.Transaction.withStatement<A>(sql:handler:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if ((*(*v3 + 96))())
  {
    v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("transaction already finalized", 0x1DuLL, 1);
    v18 = SQLError.init(code:desc:)(1, v5);
    code = v18.code;
    desc_8 = v18.desc.value._countAndFlagsBits;
    object = v18.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    v10 = swift_allocError();
    *v6 = code;
    *(v6 + 8) = desc_8;
    *(v6 + 16) = object;
    swift_willThrow();
    return v10;
  }

  else
  {
    v11 = *(v16 + 16);

    v12 = SQLiteDB.makeStatement(with:)(a1, a2);
    if (!v17)
    {

      a3(v12);
    }
  }
}

uint64_t SQLiteDB.makeStatement(with:)(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v37 = a1;
  v38 = 0;
  v48 = 0;
  v45 = 0;
  v43 = 0;
  v42 = 0;
  v49 = a1;
  v50 = a2;
  v40 = *(v2 + 112);

  v39 = &v47;
  swift_beginAccess();
  v41 = *(v40 + 24);
  swift_endAccess();

  if (v41)
  {
    lazy protocol witness table accessor for type DBError and conformance DBError();
    v15 = 0;
    v16 = swift_allocError();
    *v13 = 3;
    swift_willThrow();
    result = v16;
    v23 = v16;
  }

  else
  {
    v30 = v35;
    v46 = 0;
    v3 = v35;
    v32 = String.utf8CString.getter();
    v31 = v32;
    v45 = v32;

    v33 = &v15;
    __chkstk_darwin(&v15);
    v14[2] = v4;
    v14[3] = v5;
    v14[4] = &v46;
    _ss15ContiguousArrayV23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in SQLiteDB.makeStatement(with:), v14, v5, &type metadata for Int8, &type metadata for Int32, &type metadata for Never, &protocol witness table for Never, v6);
    v34 = v3;
    if (v3)
    {

      __break(1u);
    }

    else
    {

      v28 = v44;
      v43 = v44;
      v29 = v46;
      if (!v46 || (v27 = v29, v26 = v27, v42 = v27, v28))
      {
        v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to prepare statement", 0x1BuLL, 1);
        countAndFlagsBits = v8._countAndFlagsBits;
        v51 = SQLError.init(code:desc:)(v28, v8);
        code = v51.code;
        v18 = v51.desc.value._countAndFlagsBits;
        object = v51.desc.value._object;
        lazy protocol witness table accessor for type SQLError and conformance SQLError();
        v21 = 0;
        v9 = swift_allocError();
        v10 = v18;
        v11 = object;
        v22 = v9;
        *v12 = code;
        *(v12 + 8) = v10;
        *(v12 + 16) = v11;
        swift_willThrow();

        result = v22;
        v23 = v22;
      }

      else
      {
        v25 = v34;
        type metadata accessor for SQLiteDB.Statement();
        v24 = SQLiteDB.Statement.__allocating_init(handle:)(v26);

        return v24;
      }
    }
  }

  return result;
}

Swift::Int64 __swiftcall SQLiteDB.Transaction.changes()()
{
  v2 = *(v0 + 16);

  v3 = *(v2 + 112);

  v4 = *(v3 + 16);

  return sqlite3_changes64(v4);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteDB.Transaction.commit()()
{
  if ((*(*v0 + 96))())
  {
    v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("transaction already finalized", 0x1DuLL, 1);
    v9 = SQLError.init(code:desc:)(1, v1);
    code = v9.code;
    desc_8 = v9.desc.value._countAndFlagsBits;
    object = v9.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v2 = code;
    *(v2 + 8) = desc_8;
    *(v2 + 16) = object;
    swift_willThrow();
  }

  else
  {
    v6 = v7[2];

    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("COMMIT", 6uLL, 1);
    SQLiteDB.executeRaw(_:)();

    if (!v8)
    {
      (*(*v7 + 104))(1);
    }
  }
}

uint64_t SQLiteDB.executeRaw(_:)()
{
  v17 = *(v0 + 112);

  swift_beginAccess();
  v18 = *(v17 + 24);
  swift_endAccess();

  if (v18)
  {
    lazy protocol witness table accessor for type DBError and conformance DBError();
    v6 = swift_allocError();
    *v5 = 3;
    swift_willThrow();
    return v6;
  }

  else
  {
    v12 = *(v16 + 112);

    v13 = *(v12 + 16);

    v14 = String.utf8CString.getter();

    code = sqlite3_exec(v13, (v14 + 32), 0, 0, 0);
    swift_unknownObjectRelease();

    result = code;
    if (code)
    {
      desc = default argument 1 of SQLError.init(code:desc:)();
      v3.value._object = v2;
      v3.value._countAndFlagsBits = desc;
      v19 = SQLError.init(code:desc:)(code, v3);
      v10 = v19.code;
      desc_8 = v19.desc.value._countAndFlagsBits;
      object = v19.desc.value._object;
      lazy protocol witness table accessor for type SQLError and conformance SQLError();
      v11 = swift_allocError();
      *v4 = v10;
      *(v4 + 8) = desc_8;
      *(v4 + 16) = object;
      swift_willThrow();
      return v11;
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteDB.Transaction.rollback()()
{
  if ((*(*v0 + 96))())
  {
    v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("transaction already finalized", 0x1DuLL, 1);
    v9 = SQLError.init(code:desc:)(1, v1);
    code = v9.code;
    desc_8 = v9.desc.value._countAndFlagsBits;
    object = v9.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v2 = code;
    *(v2 + 8) = desc_8;
    *(v2 + 16) = object;
    swift_willThrow();
  }

  else
  {
    v6 = v7[2];

    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ROLLBACK", 8uLL, 1);
    SQLiteDB.executeRaw(_:)();

    if (!v8)
    {
      (*(*v7 + 104))(1);
    }
  }
}

uint64_t SQLiteDB.Transaction.deinit()
{
  v1 = *(v0 + 16);

  return v3;
}

void *SQLiteDB.__allocating_init(_:)(const void *a1)
{
  swift_allocObject();
  v5 = SQLiteDB.init(_:)(a1);
  if (v3)
  {
    return v2;
  }

  else
  {
    return v5;
  }
}

void *SQLiteDB.init(_:)(const void *a1)
{
  v45 = a1;
  v42 = v1;
  v41 = *v1;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v44 = 0;
  v43 = (*(*(type metadata accessor for SQLiteDB.Location() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v1);
  v47 = v17 - v43;
  v55 = v3;
  v54 = v2;
  swift_defaultActor_initialize();
  type metadata accessor for SQLiteDB.DBHandle();
  outlined init with copy of SQLiteDB.Location(v45, v47);
  v4 = v46;
  v5 = SQLiteDB.DBHandle.__allocating_init(location:)(v47);
  v48 = v4;
  v49 = v5;
  v50 = v4;
  if (v4)
  {
    v28 = v50;
    v29 = v42;
  }

  else
  {
    v35 = v49;
    v53 = v49;
    v37 = v49[2];
    object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PRAGMA journal_mode=WAL;", 0x18uLL, 1)._object;
    v38 = String.utf8CString.getter();

    v36 = (v38 + 32);

    v40 = sqlite3_exec(v37, v36, 0, 0, 0);
    swift_unknownObjectRelease();

    v52 = v40;
    if (v40)
    {
      v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to enable WAL", 0x14uLL, 1);
      v17[3] = v12._countAndFlagsBits;
      v57 = SQLError.init(code:desc:)(v40, v12);
      code = v57.code;
      countAndFlagsBits = v57.desc.value._countAndFlagsBits;
      v19 = v57.desc.value._object;
      lazy protocol witness table accessor for type SQLError and conformance SQLError();
      v13 = swift_allocError();
      v14 = countAndFlagsBits;
      v15 = v19;
      v21 = v13;
      *v16 = code;
      *(v16 + 8) = v14;
      *(v16 + 16) = v15;
      swift_willThrow();

      v28 = v21;
      v29 = v42;
    }

    else
    {
      v31 = v35[2];
      v33 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PRAGMA foreign_keys=ON;", 0x17uLL, 1)._object;
      v32 = String.utf8CString.getter();

      v30 = (v32 + 32);

      v34 = sqlite3_exec(v31, v30, 0, 0, 0);
      swift_unknownObjectRelease();

      v51 = v34;
      if (!v34)
      {

        v42[14] = v35;

        outlined destroy of SQLiteDB.Location(v45);
        return v42;
      }

      v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to enable FK", 0x13uLL, 1);
      v23 = v7._countAndFlagsBits;
      v56 = SQLError.init(code:desc:)(v34, v7);
      v26 = v56.code;
      v24 = v56.desc.value._countAndFlagsBits;
      v25 = v56.desc.value._object;
      lazy protocol witness table accessor for type SQLError and conformance SQLError();
      v8 = swift_allocError();
      v9 = v24;
      v10 = v25;
      v27 = v8;
      *v11 = v26;
      *(v11 + 8) = v9;
      *(v11 + 16) = v10;
      swift_willThrow();

      v28 = v27;
      v29 = v42;
    }
  }

  v17[1] = v29;
  v17[2] = v28;
  swift_defaultActor_destroy();
  swift_deallocPartialClassInstance();
  outlined destroy of SQLiteDB.Location(v45);
  return v22;
}

uint64_t closure #1 in SQLiteDB.makeStatement(with:)@<X0>(uint64_t a1@<X2>, sqlite3_stmt **a2@<X4>, _DWORD *a3@<X8>)
{
  v7 = *(a1 + 112);

  v8 = *(v7 + 16);

  v9 = UnsafeBufferPointer.baseAddress.getter();
  if (!v9)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  nByte = ContiguousArray.count.getter();
  if (nByte < 0xFFFFFFFF80000000)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (nByte > 0x7FFFFFFF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  result = sqlite3_prepare_v2(v8, v9, nByte, a2, 0);
  *a3 = result;
  return result;
}

uint64_t _ss15ContiguousArrayV23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t (*a1)(unint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = a1;
  v18 = a3;
  v14 = a6;
  v15 = a8;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v16 = *(a6 - 8);
  v17 = a6 - 8;
  v9 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v20 = &v13 - v10;
  result = v19(v18 + ((*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80)), *(v18 + 16));
  v21 = v8;
  if (v8)
  {
    return (*(v16 + 32))(v15, v20, v14);
  }

  return result;
}

uint64_t SQLiteDB.withStatement<A>(sql:handler:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  result = SQLiteDB.makeStatement(with:)(a1, a2);
  if (!v3)
  {
    a3();
  }

  return result;
}

uint64_t SQLiteDB.withTransaction<A>(handler:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a4;
  v25 = a1;
  v26 = a2;
  v27 = a3;
  v42 = 0;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v38 = 0;
  v43 = a3;
  v28 = *(a3 - 8);
  v29 = a3 - 8;
  v30 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = v13 - v30;
  v42 = v13 - v30;
  v40 = __chkstk_darwin(a1);
  v41 = v5;
  v39 = v4;
  type metadata accessor for SQLiteDB.Transaction();

  v33 = SQLiteDB.Transaction.__allocating_init(_:)(v32);
  v38 = v33;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("BEGIN TRANSACTION", 0x11uLL, 1);
  v7 = v34;
  object = v6._object;
  SQLiteDB.executeRaw(_:)();
  v36 = v7;
  v37 = v7;
  if (v7)
  {
    v15 = v37;

    v16 = v15;
  }

  else
  {

    v8 = v36;
    v9 = v25(v33);
    v22 = v8;
    v23 = v8;
    if (v8)
    {
      v14 = v23;

      v16 = v14;
    }

    else
    {
      if ((*(*v33 + 96))(v9))
      {
        v18 = v22;
        goto LABEL_7;
      }

      v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("COMMIT", 6uLL, 1);
      v11 = v22;
      v19 = v10._object;
      SQLiteDB.executeRaw(_:)();
      v20 = v11;
      v21 = v11;
      if (!v11)
      {

        v18 = v20;
LABEL_7:
        v17 = v18;
        (*(v28 + 16))(v24, v31, v27);
        (*(v28 + 8))(v31, v27);
      }

      v13[1] = v21;

      (*(v28 + 8))(v31, v27);
    }
  }

  return result;
}

Swift::Void __swiftcall SQLiteDB.close()()
{
  v1 = *(v0 + 112);

  SQLiteDB.DBHandle.close()();
}

uint64_t SQLiteDB.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v3;
}

uint64_t SQLNullableType<>.init(with:column:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = a5;
  v23 = a1;
  v25 = a2;
  v11 = a3;
  v12 = a4;
  v13 = "Fatal error";
  v14 = "Not enough bits to represent the passed value";
  v15 = "Swift/Integers.swift";
  v16 = "Not enough bits to represent a signed value";
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v29 = a3;
  v17 = *(a3 - 8);
  v18 = a3 - 8;
  v19 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(a1);
  v20 = &v10 - v19;
  v21 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v5);
  v22 = &v10 - v21;
  v28 = &v10 - v21;
  v27 = v7;
  v26 = v8;

  v24 = *(v23 + 16);

  if (v25 < 0xFFFFFFFF80000000)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v25 > 0x7FFFFFFF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (sqlite3_column_type(v24, v25) == 5)
  {

    return (*(v17 + 56))(v10, 1, 1, v11);
  }

  else
  {
    (*(v12 + 8))(v23, v25);
    (*(v17 + 32))(v22, v20, v11);
    (*(v17 + 16))(v10, v22, v11);
    (*(v17 + 56))(v10, 0, 1, v11);
    return (*(v17 + 8))(v22, v11);
  }
}

uint64_t Int.init(with:column:)(uint64_t a1, uint64_t a2)
{

  v5 = *(a1 + 16);

  if (a2 < 0xFFFFFFFF80000000)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a2 > 0x7FFFFFFF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v3 = sqlite3_column_int(v5, a2);

  return v3;
}

uint64_t Int.bind(to:at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *(a1 + 16);
  if (a2 < 0xFFFFFFFF80000000)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a2 > 0x7FFFFFFF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a3 < 0xFFFFFFFF80000000)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a3 > 0x7FFFFFFF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  result = sqlite3_bind_int(v12, a2, a3);
  code = result;
  if (result)
  {
    v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to bind Int", 0x12uLL, 1);
    v13 = SQLError.init(code:desc:)(code, v4);
    v8 = v13.code;
    desc_8 = v13.desc.value._countAndFlagsBits;
    object = v13.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v5 = v8;
    *(v5 + 8) = desc_8;
    *(v5 + 16) = object;
    return swift_willThrow();
  }

  return result;
}

uint64_t protocol witness for SQLType.init(with:column:) in conformance Int@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Int.init(with:column:)(a1, a2);
  *a3 = result;
  return result;
}

sqlite3_int64 Int64.init(with:column:)(uint64_t a1, uint64_t a2)
{

  v4 = *(a1 + 16);

  if (a2 < 0xFFFFFFFF80000000)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a2 > 0x7FFFFFFF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v6 = sqlite3_column_int64(v4, a2);

  return v6;
}

uint64_t Int64.bind(to:at:)(uint64_t a1, uint64_t a2, sqlite3_int64 a3)
{
  v12 = *(a1 + 16);
  if (a2 < 0xFFFFFFFF80000000)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a2 > 0x7FFFFFFF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  result = sqlite3_bind_int64(v12, a2, a3);
  code = result;
  if (result)
  {
    v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to bind Int64", 0x14uLL, 1);
    v13 = SQLError.init(code:desc:)(code, v4);
    v8 = v13.code;
    desc_8 = v13.desc.value._countAndFlagsBits;
    object = v13.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v5 = v8;
    *(v5 + 8) = desc_8;
    *(v5 + 16) = object;
    return swift_willThrow();
  }

  return result;
}

sqlite3_int64 protocol witness for SQLType.init(with:column:) in conformance Int64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, sqlite3_int64 *a3@<X8>)
{
  result = Int64.init(with:column:)(a1, a2);
  *a3 = result;
  return result;
}

double Double.init(with:column:)(uint64_t a1, uint64_t a2)
{

  v5 = *(a1 + 16);

  if (a2 < 0xFFFFFFFF80000000)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a2 > 0x7FFFFFFF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v2 = sqlite3_column_double(v5, a2);
  v7 = Double.init(_:)(v2);

  return v7;
}

uint64_t Double.bind(to:at:)(uint64_t a1, uint64_t a2, double a3)
{
  v12 = *(a1 + 16);
  if (a2 < 0xFFFFFFFF80000000)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a2 > 0x7FFFFFFF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  result = sqlite3_bind_double(v12, a2, a3);
  code = result;
  if (result)
  {
    v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to bind Double", 0x15uLL, 1);
    v13 = SQLError.init(code:desc:)(code, v4);
    v8 = v13.code;
    desc_8 = v13.desc.value._countAndFlagsBits;
    object = v13.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v5 = v8;
    *(v5 + 8) = desc_8;
    *(v5 + 16) = object;
    return swift_willThrow();
  }

  return result;
}

uint64_t String.init(with:column:)(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11 = 0;

  v8 = *(a1 + 16);

  if (a2 < 0xFFFFFFFF80000000)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a2 > 0x7FFFFFFF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (sqlite3_column_text(v8, a2))
  {
    v5 = String.init(cString:)();
    v4 = v2;

    v10 = v5;
    v11 = v4;

    outlined destroy of String(&v10);
    return v5;
  }

  else
  {

    return 0;
  }
}

uint64_t String.bind(to:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = 0;
  v25 = a1;
  v24 = a2;
  v22 = a3;
  v23 = a4;
  v21 = String.utf8CString.getter();

  v16 = a1;
  v17 = a2;
  v18 = v21;
  _ss15ContiguousArrayV23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in String.bind(to:at:), v15, v21, &type metadata for Int8, &type metadata for Int32, &type metadata for Never, &protocol witness table for Never, v14);
  if (v11)
  {

    __break(1u);
  }

  else
  {

    code = v20;
    v19 = v20;
    if (v20)
    {
      v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to bind String", 0x15uLL, 1);
      v26 = SQLError.init(code:desc:)(code, v5);
      v9 = v26.code;
      desc_8 = v26.desc.value._countAndFlagsBits;
      object = v26.desc.value._object;
      lazy protocol witness table accessor for type SQLError and conformance SQLError();
      swift_allocError();
      *v6 = v9;
      *(v6 + 8) = desc_8;
      *(v6 + 16) = object;
      swift_willThrow();
    }
  }

  return result;
}

uint64_t closure #1 in String.bind(to:at:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, _DWORD *a3@<X8>)
{
  v9 = *(a1 + 16);
  if (a2 < 0xFFFFFFFF80000000)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a2 > 0x7FFFFFFF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v5 = UnsafeBufferPointer.baseAddress.getter();
  v6 = ContiguousArray.count.getter();
  if (v6 < 0xFFFFFFFF80000000)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v6 > 0x7FFFFFFF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v3 = SQLITE_TRANSIENT.unsafeMutableAddressor();
  result = sqlite3_bind_text(v9, a2, v5, v6, *v3);
  *a3 = result;
  return result;
}

uint64_t *SQLITE_TRANSIENT.unsafeMutableAddressor()
{
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    swift_once();
  }

  return &SQLITE_TRANSIENT;
}

uint64_t protocol witness for SQLNullableType.init(with:column:) in conformance String@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = String.init(with:column:)(a1, a2);
  *a3 = result;
  a3[1] = v4;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  return result;
}

uint64_t getEnumTagSinglePayload for SQLError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (!HIDWORD(*(a1 + 16)))
      {
        v4 = *(a1 + 16);
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SQLError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DBError(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFC)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 3) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 252;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 4;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DBError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFC)
  {
    v5 = ((a3 + 3) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFC)
  {
    v4 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_10001793C(uint64_t a1, unsigned int a2)
{
  v2 = type metadata accessor for URL();
  v3 = (*(*(v2 - 8) + 48))(a1, a2);
  if (v3 > 1)
  {
    return v3 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000179D4(uint64_t a1, int a2, unsigned int a3)
{
  if (a2)
  {
    v3 = a2 + 1;
  }

  else
  {
    v3 = 0;
  }

  v7 = v3;
  v4 = type metadata accessor for URL();
  return (*(*(v4 - 8) + 56))(a1, v7, a3);
}

uint64_t type metadata completion function for SQLiteDB.Location()
{
  v2 = type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

MediaMLExtension::WorkerErrors_optional __swiftcall WorkerErrors.init(rawValue:)(Swift::String rawValue)
{
  v1 = _allocateUninitializedArray<A>(_:)();
  *v2 = "wrongDataFrame";
  *(v2 + 8) = 14;
  *(v2 + 16) = 2;
  *(v2 + 24) = "dbLocked";
  *(v2 + 32) = 8;
  *(v2 + 40) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v1, rawValue);

  if (!v7)
  {
    v5.value = MediaMLExtension_WorkerErrors_wrongDataFrame;
LABEL_6:

    return v5;
  }

  if (v7 == 1)
  {
    v5.value = MediaMLExtension_WorkerErrors_dbLocked;
    goto LABEL_6;
  }

  return 2;
}

uint64_t WorkerErrors.rawValue.getter(char a1)
{
  if (a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("dbLocked", 8uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("wrongDataFrame", 0xEuLL, 1)._countAndFlagsBits;
  }
}

MediaMLExtension::WorkerErrors_optional protocol witness for RawRepresentable.init(rawValue:) in conformance WorkerErrors@<W0>(Swift::String *a1@<X0>, MediaMLExtension::WorkerErrors_optional *a2@<X8>)
{
  result.value = WorkerErrors.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WorkerErrors@<X0>(uint64_t *a1@<X8>)
{
  result = WorkerErrors.rawValue.getter(*v1 & 1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MediaMLWorker.logger.unsafeMutableAddressor()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return __swift_project_value_buffer(v0, static MediaMLWorker.logger);
}

uint64_t static MediaMLWorker.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MediaMLWorker.logger.unsafeMutableAddressor();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t variable initialization expression of MediaMLWorker.dbPath@<X0>(uint64_t a1@<X8>)
{
  v6 = a1;
  v11 = type metadata accessor for URL();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v1 = &v4 - v5;
  v10 = &v4 - v5;
  v2 = mediaMLDataDirectory.unsafeMutableAddressor();
  (*(v8 + 16))(v1, v2, v11);
  object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("rawdata.db", 0xAuLL, 1)._object;
  URL.appendingPathComponent(_:isDirectory:)();

  return (*(v8 + 8))(v10, v11);
}

uint64_t MediaMLWorker.database.getter()
{
  v7 = partial apply for implicit closure #1 in MediaMLWorker.database.getter;
  v8 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
  v9 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
  v10 = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
  v11 = closure #1 in OSLogArguments.append(_:)partial apply;
  v12 = partial apply for closure #1 in OSLogArguments.append(_:);
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v19 = 0;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = v13 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v17 = &v3[-v16];
  v18 = (*(*(type metadata accessor for SQLiteDB.Location() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v24 = &v3[-v18];
  v30 = v0;
  type metadata accessor for SQLiteDB();
  v23 = type metadata accessor for URL();
  v21 = *(v23 - 8);
  v22 = v23 - 8;
  (*(v21 + 16))(v24, v20);
  (*(v21 + 56))(v24, 0, 1, v23);
  v25 = SQLiteDB.__allocating_init(_:)(v24);
  v26 = 0;
  v5 = v25;
  v28 = v25;

  v4 = &v27;
  v27 = v5;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension8SQLiteDBCSgMd, &_s16MediaMLExtension8SQLiteDBCSgMR);
  v6 = OSAllocatedUnfairLock<A>.init(initialState:)(v4, v1);

  return v6;
}

uint64_t OSAllocatedUnfairLock<A>.init(initialState:)(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v7 = a2;
  v10 = a2;
  v5 = *(a2 - 8);
  v6 = a2 - 8;
  v3 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v4 = &v3 - v3;
  (*(v5 + 16))();
  v9 = OSAllocatedUnfairLock.init(uncheckedState:)(v4, v7);
  (*(v5 + 8))(v8, v7);
  return v9;
}

uint64_t sub_100018BD4()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in MediaMLWorker.database.getter()
{
  result = *(v0 + 16);
  implicit closure #1 in MediaMLWorker.database.getter();
  return result;
}

uint64_t MediaMLWorker.shouldRun(context:)(uint64_t a1)
{
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  v3 = v2[2];
  return _swift_task_switch(MediaMLWorker.shouldRun(context:), 0);
}

uint64_t MediaMLWorker.shouldRun(context:)()
{
  *(v0 + 16) = v0;
  type metadata accessor for MLHostResult();
  v1 = MLHostResult.__allocating_init(status:policy:)();
  v2 = *(*(v0 + 16) + 8);
  v3 = *(v0 + 16);

  return v2(v1);
}

uint64_t MediaMLWorker.doWork(context:)(uint64_t a1)
{
  v2[9] = v1;
  v2[8] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  v2[3] = a1;
  v2[4] = v1;
  v3 = v2[2];
  return _swift_task_switch(MediaMLWorker.doWork(context:), 0);
}

uint64_t MediaMLWorker.doWork(context:)()
{
  v9 = v0[9];
  v10 = v0[8];
  v0[2] = v0;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.MediaMLPlugin.perform-task", 0x24uLL, 1);
  String.utf8CString.getter();

  v8 = os_transaction_create();
  swift_unknownObjectRelease();

  v0[5] = v8;
  v0[7] = v8;
  v10;
  v11 = swift_task_alloc();
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_os_transaction_pSgMd, &_sSo17OS_os_transaction_pSgMR);
  v1 = type metadata accessor for MLHostResult();
  _ss20withExtendedLifetimeyq0_x_q0_yq_YKXEtq_YKs5ErrorR_Ri_zRi0_zRi_0_r1_lF((v0 + 7), partial apply for closure #1 in MediaMLWorker.doWork(context:), v11, v12, &type metadata for Never, v1, &protocol witness table for Never, v13);
  v5 = v7[8];

  v6 = v7[6];
  swift_unknownObjectRelease();
  v2 = *(v7[2] + 8);
  v3 = v7[2];

  return v2(v6);
}

void closure #1 in MediaMLWorker.doWork(context:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v130 = a3;
  v131 = a1;
  v158 = a2;
  v166 = 0;
  v169 = closure #1 in closure #1 in MediaMLWorker.doWork(context:);
  v132 = partial apply for implicit closure #1 in closure #1 in MediaMLWorker.doWork(context:);
  v133 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v134 = closure #1 in OSLogArguments.append(_:)partial apply;
  v135 = closure #1 in OSLogArguments.append(_:)partial apply;
  v136 = closure #1 in OSLogArguments.append(_:)partial apply;
  v137 = &async function pointer to partial apply for closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  v138 = partial apply for implicit closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  v139 = _s2os18OSLogInterpolationV06appendC0_6format5align7privacyySdyXA_AA0B15FloatFormattingVAA0B15StringAlignmentVAA0B7PrivacyVtFSdycfu_TA_0;
  v140 = closure #1 in OSLogArguments.append(_:)partial apply;
  v141 = closure #1 in OSLogArguments.append(_:)partial apply;
  v142 = _s2os14OSLogArgumentsV6appendyySdycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
  v193 = 0;
  v192 = 0;
  v191 = 0;
  v186 = 0;
  v185 = 0;
  v183 = 0;
  v184 = 0;
  v181 = 0.0;
  v150 = 0;
  v4 = type metadata accessor for MediaMLWorker();
  v143 = *(v4 - 8);
  v144 = v143;
  v145 = *(v143 + 64);
  v146 = (v145 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v147 = v56 - v146;
  v148 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v150);
  v149 = v56 - v148;
  v151 = type metadata accessor for Logger();
  v152 = *(v151 - 8);
  v153 = v151 - 8;
  v154 = (v152[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v150);
  v155 = v56 - v154;
  v156 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v157 = v56 - v156;
  v159 = type metadata accessor for DispatchTime();
  v160 = *(v159 - 8);
  v161 = v159 - 8;
  v162 = (*(v160 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v159);
  v163 = v56 - v162;
  v164 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v56 - v162);
  v165 = v56 - v164;
  v193 = v56 - v164;
  v192 = a1;
  v191 = v8;
  v167 = MediaMLWorker.database.getter();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension8SQLiteDBCSgMd, &_s16MediaMLExtension8SQLiteDBCSgMR);
  v10 = v168;
  OSAllocatedUnfairLock.withLock<A>(_:)(v169, v166, v167, v9, v9);
  v170 = v10;
  if (v10)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  v129 = v190;
  if (!v190)
  {
    type metadata accessor for MLHostResult();
    v126 = &v187;
    v188 = &type metadata for WorkerErrors;
    v189 = lazy protocol witness table accessor for type WorkerErrors and conformance WorkerErrors();
    v187 = 1;
    v11 = MLHostResult.__allocating_init(error:policy:)();
    v12 = v170;
    *v130 = v11;
    v127 = v12;
    return;
  }

  v128 = v129;
  v13 = v157;
  v110 = v129;
  v186 = v129;
  static DispatchTime.now()();
  v14 = MediaMLWorker.logger.unsafeMutableAddressor();
  v111 = v152[2];
  v112 = v152 + 2;
  v111(v13, v14, v151);
  v158;
  v115 = 7;
  v116 = swift_allocObject();
  *(v116 + 16) = v158;
  v124 = Logger.logObject.getter();
  v125 = static os_log_type_t.info.getter();
  v113 = 17;
  v118 = swift_allocObject();
  *(v118 + 16) = 32;
  v119 = swift_allocObject();
  *(v119 + 16) = 8;
  v114 = 32;
  v15 = swift_allocObject();
  v16 = v116;
  v117 = v15;
  *(v15 + 16) = v132;
  *(v15 + 24) = v16;
  v17 = swift_allocObject();
  v18 = v117;
  v121 = v17;
  *(v17 + 16) = v133;
  *(v17 + 24) = v18;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v120 = _allocateUninitializedArray<A>(_:)();
  v122 = v19;

  v20 = v118;
  v21 = v122;
  *v122 = v134;
  v21[1] = v20;

  v22 = v119;
  v23 = v122;
  v122[2] = v135;
  v23[3] = v22;

  v24 = v121;
  v25 = v122;
  v122[4] = v136;
  v25[5] = v24;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v124, v125))
  {
    v103 = static UnsafeMutablePointer.allocate(capacity:)();
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v104 = createStorage<A>(capacity:type:)(0);
    v105 = createStorage<A>(capacity:type:)(1);
    v106 = &v175;
    v175 = v103;
    v107 = &v174;
    v174 = v104;
    v108 = &v173;
    v173 = v105;
    serialize(_:at:)(2, &v175);
    serialize(_:at:)(1, v106);
    v26 = v170;
    v171 = v134;
    v172 = v118;
    closure #1 in osLogInternal(_:log:type:)(&v171, v106, v107, v108);
    v109 = v26;
    if (v26)
    {

      __break(1u);
    }

    else
    {
      v171 = v135;
      v172 = v119;
      closure #1 in osLogInternal(_:log:type:)(&v171, &v175, &v174, &v173);
      v100 = 0;
      v171 = v136;
      v172 = v121;
      closure #1 in osLogInternal(_:log:type:)(&v171, &v175, &v174, &v173);
      v99 = 0;
      _os_log_impl(&_mh_execute_header, v124, v125, "Running MLHost task: %s", v103, 0xCu);
      destroyStorage<A>(_:count:)(v104);
      destroyStorage<A>(_:count:)(v105);
      UnsafeMutablePointer.deallocate()();

      v101 = v99;
    }
  }

  else
  {

    v101 = v170;
  }

  v84 = v101;

  v85 = v152[1];
  v86 = v152 + 1;
  v85(v157, v151);
  v93 = 0;
  v27 = dispatch_semaphore_create(0);
  v87 = v27;
  v185 = v27;
  v88 = [objc_opt_self() namespaceNameFromId:314];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v89 = v29;
  v183 = v28;
  v184 = v29;

  v30 = type metadata accessor for TaskPriority();
  (*(*(v30 - 8) + 56))(v149, 1);
  outlined init with copy of MediaMLWorker(v131, v147);
  v158;
  v27;
  v90 = (*(v144 + 80) + 32) & ~*(v144 + 80);
  v91 = (v90 + v145 + 7) & 0xFFFFFFFFFFFFFFF8;
  v92 = (v91 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v32 = v90;
  v33 = v31;
  v34 = v147;
  v94 = v33;
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  outlined init with take of MediaMLWorker(v34, v33 + v32);
  v35 = v92;
  v36 = v93;
  v37 = v149;
  v38 = v137;
  v39 = v94;
  *(v94 + v91) = v158;
  *(v39 + v35) = v27;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC(v36, v36, v37, v38, v39, &type metadata for () + 8);

  OS_dispatch_semaphore.wait()();
  static DispatchTime.now()();
  v97 = DispatchTime.uptimeNanoseconds.getter();
  v95 = *(v160 + 8);
  v96 = v160 + 8;
  v95(v163, v159);
  v40 = DispatchTime.uptimeNanoseconds.getter();
  v98 = v97 - v40;
  if (v97 < v40)
  {
    goto LABEL_18;
  }

  v41 = v155;
  v69 = &v182;
  v182 = v98;
  lazy protocol witness table accessor for type UInt64 and conformance UInt64();
  Double.init<A>(_:)();
  v70 = v42;
  v71 = v42 / *kSecondsFromNanoseconds.unsafeMutableAddressor();
  v181 = v71;
  v43 = MediaMLWorker.logger.unsafeMutableAddressor();
  v111(v41, v43, v151);
  v74 = 7;
  v75 = swift_allocObject();
  *(v75 + 16) = v71;
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.info.getter();
  v72 = 17;
  v77 = swift_allocObject();
  *(v77 + 16) = 0;
  v78 = swift_allocObject();
  *(v78 + 16) = 8;
  v73 = 32;
  v44 = swift_allocObject();
  v45 = v75;
  v76 = v44;
  *(v44 + 16) = v138;
  *(v44 + 24) = v45;
  v46 = swift_allocObject();
  v47 = v76;
  v80 = v46;
  *(v46 + 16) = v139;
  *(v46 + 24) = v47;
  v79 = _allocateUninitializedArray<A>(_:)();
  v81 = v48;

  v49 = v77;
  v50 = v81;
  *v81 = v140;
  v50[1] = v49;

  v51 = v78;
  v52 = v81;
  v81[2] = v141;
  v52[3] = v51;

  v53 = v80;
  v54 = v81;
  v81[4] = v142;
  v54[5] = v53;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v82, v83))
  {
    v62 = static UnsafeMutablePointer.allocate(capacity:)();
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v61 = 0;
    v63 = createStorage<A>(capacity:type:)(0);
    v64 = createStorage<A>(capacity:type:)(v61);
    v65 = &v180;
    v180 = v62;
    v66 = &v179;
    v179 = v63;
    v67 = &v178;
    v178 = v64;
    serialize(_:at:)(0, &v180);
    serialize(_:at:)(1, v65);
    v55 = v84;
    v176 = v140;
    v177 = v77;
    closure #1 in osLogInternal(_:log:type:)(&v176, v65, v66, v67);
    v68 = v55;
    if (v55)
    {

      __break(1u);
    }

    else
    {
      v176 = v141;
      v177 = v78;
      closure #1 in osLogInternal(_:log:type:)(&v176, &v180, &v179, &v178);
      v58 = 0;
      v176 = v142;
      v177 = v80;
      closure #1 in osLogInternal(_:log:type:)(&v176, &v180, &v179, &v178);
      v57 = 0;
      _os_log_impl(&_mh_execute_header, v82, v83, "Total Time taken to finish running plugin=%f[s]", v62, 0xCu);
      v56[1] = 0;
      destroyStorage<A>(_:count:)(v63);
      destroyStorage<A>(_:count:)(v64);
      UnsafeMutablePointer.deallocate()();

      v59 = v57;
    }
  }

  else
  {

    v59 = v84;
  }

  v56[0] = v59;

  v85(v155, v151);
  type metadata accessor for MLHostResult();
  *v130 = MLHostResult.__allocating_init(status:policy:)();

  v95(v165, v159);

  v127 = v56[0];
}

uint64_t closure #2 in closure #1 in MediaMLWorker.doWork(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 6088) = a6;
  *(v6 + 6080) = a5;
  *(v6 + 6072) = a4;
  *(v6 + 5632) = v6;
  *(v6 + 5640) = 0;
  *(v6 + 5648) = 0;
  *(v6 + 5656) = 0;
  *(v6 + 5664) = 0;
  *(v6 + 5672) = 0;
  *(v6 + 5680) = 0;
  *(v6 + 5600) = 0;
  *(v6 + 5608) = 0;
  *(v6 + 5616) = 0;
  *(v6 + 5624) = 0;
  *(v6 + 100) = 0;
  v7 = type metadata accessor for Logger();
  *(v6 + 6096) = v7;
  v12 = *(v7 - 8);
  *(v6 + 6104) = v12;
  v13 = *(v12 + 64);
  *(v6 + 6112) = swift_task_alloc();
  *(v6 + 6120) = swift_task_alloc();
  *(v6 + 6128) = swift_task_alloc();
  *(v6 + 6136) = swift_task_alloc();
  *(v6 + 6144) = swift_task_alloc();
  *(v6 + 6152) = swift_task_alloc();
  *(v6 + 6160) = swift_task_alloc();
  *(v6 + 6168) = swift_task_alloc();
  *(v6 + 6176) = swift_task_alloc();
  *(v6 + 6184) = swift_task_alloc();
  *(v6 + 6192) = swift_task_alloc();
  *(v6 + 6200) = swift_task_alloc();
  *(v6 + 6208) = swift_task_alloc();
  v8 = type metadata accessor for DataFrame();
  *(v6 + 6216) = v8;
  v14 = *(v8 - 8);
  *(v6 + 6224) = v14;
  v15 = *(v14 + 64);
  *(v6 + 6232) = swift_task_alloc();
  *(v6 + 6240) = swift_task_alloc();
  *(v6 + 6248) = swift_task_alloc();
  *(v6 + 6256) = swift_task_alloc();
  *(v6 + 6264) = swift_task_alloc();
  *(v6 + 5640) = a4;
  *(v6 + 5648) = a5;
  *(v6 + 5656) = a6;
  type metadata accessor for WifiModel();
  v9 = async function pointer to WifiModel.__allocating_init()[1];
  v10 = swift_task_alloc();
  *(v19 + 6272) = v10;
  *v10 = *(v19 + 5632);
  v10[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);

  return WifiModel.__allocating_init()();
}

uint64_t closure #2 in closure #1 in MediaMLWorker.doWork(context:)(uint64_t a1)
{
  v8 = *v1;
  v3 = *(*v1 + 6272);
  v8[704] = *v1;
  v8[785] = a1;

  v8[708] = a1;
  type metadata accessor for CellularModel();
  v4 = async function pointer to CellularModel.__allocating_init()[1];
  v5 = swift_task_alloc();
  v8[786] = v5;
  *v5 = v8[704];
  v5[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);

  return CellularModel.__allocating_init()();
}

{
  v9 = *v1;
  v8 = *v1;
  v3 = *(*v1 + 6288);
  v8[704] = *v1;
  v8[787] = a1;

  v8[709] = a1;
  v4 = swift_task_alloc();
  v8[788] = v4;
  *v4 = v8[704];
  v4[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  v5 = v9[759];

  return MediaMLWorker.checkAndPruneProcessedCellDB()();
}

uint64_t closure #2 in closure #1 in MediaMLWorker.doWork(context:)()
{
  v10 = *v1;
  v8 = (*v1 + 16);
  v9 = (*v1 + 5632);
  v2 = *(*v1 + 6304);
  *(v10 + 5632) = *v1;
  *(v10 + 6312) = v0;

  if (v0)
  {
    v7 = *v9;

    return _swift_task_switch(closure #2 in closure #1 in MediaMLWorker.doWork(context:), 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v8[788] = v3;
    *v3 = *v9;
    v3[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
    v4 = v8[781];
    v5 = v8[757];

    return MediaMLWorker.getRawCellDataFromDB()(v4);
  }
}

{
  v10 = *v1;
  v8 = (*v1 + 16);
  v9 = (*v1 + 5632);
  v2 = *(*v1 + 6320);
  *(v10 + 5632) = *v1;
  *(v10 + 6328) = v0;

  if (v0)
  {
    v7 = *v9;

    return _swift_task_switch(closure #2 in closure #1 in MediaMLWorker.doWork(context:), 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v8[790] = v3;
    *v3 = *v9;
    v3[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
    v4 = v8[780];
    v5 = v8[757];

    return MediaMLWorker.getCellDataStandardDeviation()(v4);
  }
}

{
  v11 = *v1;
  v9 = (*v1 + 16);
  v10 = (*v1 + 5632);
  v2 = *(*v1 + 6336);
  *(v11 + 5632) = *v1;
  *(v11 + 6344) = v0;

  if (v0)
  {
    v8 = *v10;

    return _swift_task_switch(closure #2 in closure #1 in MediaMLWorker.doWork(context:), 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v9[792] = v3;
    *v3 = *v10;
    v3[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
    v4 = v9[781];
    v5 = v9[779];
    v6 = v9[757];

    return MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:)(v5, v4);
  }
}

{
  v14 = *v1;
  v11 = *v1 + 16;
  v12 = (*v1 + 5632);
  v13 = *v1 + 104;
  v2 = *(*v1 + 6352);
  *(v14 + 5632) = *v1;
  *(v14 + 6360) = v0;

  if (v0)
  {
    v9 = *v12;

    return _swift_task_switch(closure #2 in closure #1 in MediaMLWorker.doWork(context:), 0);
  }

  else
  {
    v3 = *(**(v11 + 6280) + 168);
    v10 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    *(v11 + 6352) = v5;
    *v5 = *v12;
    v5[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
    v6 = *(v11 + 6280);
    v7 = *(v11 + 6232);

    return v10(v13, v7);
  }
}

{
  v15 = *v1;
  v11 = *v1 + 16;
  v12 = (*v1 + 5632);
  v13 = *v1 + 104;
  v14 = *v1 + 280;
  v2 = *(*v1 + 6368);
  *(v15 + 5632) = *v1;
  *(v15 + 6376) = v0;

  if (v0)
  {
    v10 = *v12;

    return _swift_task_switch(closure #2 in closure #1 in MediaMLWorker.doWork(context:), 0);
  }

  else
  {
    v3 = *v13;
    *(v14 + 16) = *(v13 + 16);
    *v14 = v3;
    v4 = *(v13 + 32);
    v5 = *(v13 + 48);
    v6 = *(v13 + 64);
    *(v14 + 80) = *(v13 + 80);
    *(v14 + 64) = v6;
    *(v14 + 48) = v5;
    *(v14 + 32) = v4;
    v7 = swift_task_alloc();
    *(v11 + 6368) = v7;
    *v7 = *v12;
    v7[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
    v8 = *(v11 + 6056);

    return MediaMLWorker.cleanRawCellDataFromDB()();
  }
}

{
  v8 = *v1;
  v7 = (v8 + 5632);
  v2 = *(*v1 + 6384);
  *(v8 + 5632) = *v1;
  *(v8 + 6392) = v0;

  if (v0)
  {
    v5 = *v7;
    v4 = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  }

  else
  {
    v3 = *v7;
    v4 = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  }

  return _swift_task_switch(v4, 0);
}

{
  v1 = v0[776];
  v17 = v0[763];
  v18 = v0[762];
  v0[704] = v0;
  v2 = MediaMLWorker.logger.unsafeMutableAddressor();
  v3 = *(v17 + 16);
  v0[800] = v3;
  v0[801] = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v1, v2, v18);
  oslog = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  v0[802] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v21 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v19))
  {
    v4 = *(v16 + 6392);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v13 = createStorage<A>(capacity:type:)(0);
    v14 = createStorage<A>(capacity:type:)(0);
    *(v16 + 6040) = buf;
    *(v16 + 6048) = v13;
    *(v16 + 6056) = v14;
    serialize(_:at:)(0, (v16 + 6040));
    serialize(_:at:)(0, (v16 + 6040));
    *(v16 + 6064) = v21;
    v15 = swift_task_alloc();
    v15[2] = v16 + 6040;
    v15[3] = v16 + 6048;
    v15[4] = v16 + 6056;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v4)
    {
    }

    _os_log_impl(&_mh_execute_header, oslog, v19, "Finished cell model training and received modelStats", buf, 2u);
    destroyStorage<A>(_:count:)(v13);
    destroyStorage<A>(_:count:)(v14);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v10 = *(v16 + 6208);
  v11 = *(v16 + 6096);
  v9 = *(v16 + 6104);

  v6 = *(v9 + 8);
  *(v16 + 6424) = v6;
  *(v16 + 6432) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v10, v11);
  v7 = swift_task_alloc();
  *(v16 + 6440) = v7;
  *v7 = *(v16 + 5632);
  v7[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  v8 = *(v16 + 6072);

  return MediaMLWorker.checkAndPruneProcessedWifiDB()();
}

{
  v10 = *v1;
  v8 = (*v1 + 16);
  v9 = (*v1 + 5632);
  v2 = *(*v1 + 6440);
  *(v10 + 5632) = *v1;
  *(v10 + 6448) = v0;

  if (v0)
  {
    v7 = *v9;

    return _swift_task_switch(closure #2 in closure #1 in MediaMLWorker.doWork(context:), 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v8[805] = v3;
    *v3 = *v9;
    v3[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
    v4 = v8[778];
    v5 = v8[757];

    return MediaMLWorker.getRawWiFiDataFromDB()(v4);
  }
}

{
  v11 = *v1;
  v9 = (*v1 + 16);
  v10 = (*v1 + 5632);
  v2 = *(*v1 + 6456);
  *(v11 + 5632) = *v1;
  *(v11 + 6464) = v0;

  if (v0)
  {
    v8 = *v10;

    return _swift_task_switch(closure #2 in closure #1 in MediaMLWorker.doWork(context:), 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v9[807] = v3;
    *v3 = *v10;
    v3[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
    v4 = v9[778];
    v5 = v9[777];
    v6 = v9[757];

    return MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:)(v5, v4);
  }
}

{
  v13 = *v1;
  v11 = *v1 + 16;
  v12 = (*v1 + 5632);
  v2 = *(*v1 + 6472);
  *(v13 + 5632) = *v1;
  *(v13 + 6480) = v0;

  if (v0)
  {
    v9 = *v12;

    return _swift_task_switch(closure #2 in closure #1 in MediaMLWorker.doWork(context:), 0);
  }

  else
  {
    v3 = *(**(v11 + 6264) + 160);
    v10 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    *(v11 + 6472) = v5;
    *v5 = *v12;
    v5[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
    v6 = *(v11 + 6264);
    v7 = *(v11 + 6216);

    return v10(v11, v7);
  }
}

{
  v14 = *v1;
  v11 = *v1 + 16;
  v12 = (*v1 + 5632);
  v13 = *v1 + 192;
  v2 = *(*v1 + 6488);
  *(v14 + 5632) = *v1;
  *(v14 + 6496) = v0;

  if (v0)
  {
    v10 = *v12;

    return _swift_task_switch(closure #2 in closure #1 in MediaMLWorker.doWork(context:), 0);
  }

  else
  {
    v3 = *v11;
    *(v13 + 16) = *(v11 + 16);
    *v13 = v3;
    v4 = *(v11 + 32);
    v5 = *(v11 + 48);
    v6 = *(v11 + 64);
    *(v13 + 80) = *(v11 + 80);
    *(v13 + 64) = v6;
    *(v13 + 48) = v5;
    *(v13 + 32) = v4;
    v7 = swift_task_alloc();
    *(v11 + 6488) = v7;
    *v7 = *v12;
    v7[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
    v8 = *(v11 + 6056);

    return MediaMLWorker.cleanRawWiFiDataFromDB()();
  }
}

{
  v8 = *v1;
  v7 = (v8 + 5632);
  v2 = *(*v1 + 6504);
  *(v8 + 5632) = *v1;
  *(v8 + 6512) = v0;

  if (v0)
  {
    v5 = *v7;
    v4 = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  }

  else
  {
    v3 = *v7;
    v4 = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  }

  return _swift_task_switch(v4, 0);
}

{
  v8 = *v1;
  v7 = (v8 + 5632);
  v2 = *(*v1 + 6552);
  *(v8 + 5632) = *v1;
  *(v8 + 6560) = v0;

  if (v0)
  {
    v5 = *v7;
    v4 = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  }

  else
  {
    v3 = *v7;
    v4 = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  }

  return _swift_task_switch(v4, 0);
}

{
  v19 = v0[802];
  v17 = v0[801];
  v18 = v0[800];
  v1 = v0[773];
  v16 = v0[762];
  v0[704] = v0;
  v2 = MediaMLWorker.logger.unsafeMutableAddressor();
  v18(v1, v2, v16);
  v21 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  v22 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v21, v20))
  {
    v3 = *(v15 + 6560);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = createStorage<A>(capacity:type:)(0);
    v13 = createStorage<A>(capacity:type:)(0);
    *(v15 + 5944) = buf;
    *(v15 + 5952) = v12;
    *(v15 + 5960) = v13;
    serialize(_:at:)(0, (v15 + 5944));
    serialize(_:at:)(0, (v15 + 5944));
    *(v15 + 5968) = v22;
    v14 = swift_task_alloc();
    v14[2] = v15 + 5944;
    v14[3] = v15 + 5952;
    v14[4] = v15 + 5960;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v3)
    {
    }

    _os_log_impl(&_mh_execute_header, v21, v20, "Saved wifiModelStats to modelStats table", buf, 2u);
    destroyStorage<A>(_:count:)(v12);
    destroyStorage<A>(_:count:)(v13);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v9 = *(v15 + 6432);
  v10 = *(v15 + 6424);
  v7 = *(v15 + 6184);
  v8 = *(v15 + 6096);

  v10(v7, v8);
  memcpy((v15 + 4856), (v15 + 192), 0x51uLL);
  memcpy((v15 + 4768), (v15 + 4856), 0x51uLL);
  if (*(v15 + 4848))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  memcpy((v15 + 5200), (v15 + 4768), 0x50uLL);
  v5 = swift_task_alloc();
  *(v15 + 6568) = v5;
  *v5 = *(v15 + 5632);
  v5[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  v6 = *(v15 + 6072);

  return MediaMLWorker.deletePreviousModelStatsFromDB(modelStats:)(v15 + 5200);
}

{
  v8 = *v1;
  v7 = (v8 + 5632);
  v2 = *(*v1 + 6568);
  *(v8 + 5632) = *v1;
  *(v8 + 6576) = v0;

  if (v0)
  {
    v5 = *v7;
    v4 = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  }

  else
  {
    v3 = *v7;
    v4 = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  }

  return _swift_task_switch(v4, 0);
}

{
  v19 = v0[802];
  v17 = v0[801];
  v18 = v0[800];
  v1 = v0[772];
  v16 = v0[762];
  v0[704] = v0;
  v2 = MediaMLWorker.logger.unsafeMutableAddressor();
  v18(v1, v2, v16);
  oslog = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  v22 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v20))
  {
    v3 = *(v15 + 6576);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = createStorage<A>(capacity:type:)(0);
    v13 = createStorage<A>(capacity:type:)(0);
    *(v15 + 5912) = buf;
    *(v15 + 5920) = v12;
    *(v15 + 5928) = v13;
    serialize(_:at:)(0, (v15 + 5912));
    serialize(_:at:)(0, (v15 + 5912));
    *(v15 + 5936) = v22;
    v14 = swift_task_alloc();
    v14[2] = v15 + 5912;
    v14[3] = v15 + 5920;
    v14[4] = v15 + 5928;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v3)
    {
    }

    _os_log_impl(&_mh_execute_header, oslog, v20, "Deleted previous wifiModelStats from modelStats table", buf, 2u);
    destroyStorage<A>(_:count:)(v12);
    destroyStorage<A>(_:count:)(v13);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v9 = *(v15 + 6432);
  v10 = *(v15 + 6424);
  v7 = *(v15 + 6176);
  v8 = *(v15 + 6096);

  v10(v7, v8);
  v5 = swift_task_alloc();
  *(v15 + 6584) = v5;
  *v5 = *(v15 + 5632);
  v5[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  v6 = *(v15 + 6072);

  return MediaMLWorker.saveWiFiDataStandardDeviation()();
}

{
  v8 = *v1;
  v7 = (v8 + 5632);
  v2 = *(*v1 + 6584);
  *(v8 + 5632) = *v1;
  *(v8 + 6592) = v0;

  if (v0)
  {
    v5 = *v7;
    v4 = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  }

  else
  {
    v3 = *v7;
    v4 = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  }

  return _swift_task_switch(v4, 0);
}

{
  v19 = v0[802];
  v17 = v0[801];
  v18 = v0[800];
  v1 = v0[771];
  v16 = v0[762];
  v0[704] = v0;
  v2 = MediaMLWorker.logger.unsafeMutableAddressor();
  v18(v1, v2, v16);
  v21 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  v22 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v21, v20))
  {
    v3 = *(v15 + 6592);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = createStorage<A>(capacity:type:)(0);
    v13 = createStorage<A>(capacity:type:)(0);
    *(v15 + 5880) = buf;
    *(v15 + 5888) = v12;
    *(v15 + 5896) = v13;
    serialize(_:at:)(0, (v15 + 5880));
    serialize(_:at:)(0, (v15 + 5880));
    *(v15 + 5904) = v22;
    v14 = swift_task_alloc();
    v14[2] = v15 + 5880;
    v14[3] = v15 + 5888;
    v14[4] = v15 + 5896;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v3)
    {
    }

    _os_log_impl(&_mh_execute_header, v21, v20, "Saved wifiStandardDeviation to wifiStdDev table", buf, 2u);
    destroyStorage<A>(_:count:)(v12);
    destroyStorage<A>(_:count:)(v13);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v9 = *(v15 + 6432);
  v10 = *(v15 + 6424);
  v7 = *(v15 + 6168);
  v8 = *(v15 + 6096);

  v10(v7, v8);
  memcpy((v15 + 5032), (v15 + 192), 0x51uLL);
  memcpy((v15 + 4944), (v15 + 5032), 0x51uLL);
  if (*(v15 + 5024))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  memcpy((v15 + 5280), (v15 + 4944), 0x50uLL);
  v5 = swift_task_alloc();
  *(v15 + 6600) = v5;
  *v5 = *(v15 + 5632);
  v5[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  v6 = *(v15 + 6072);

  return MediaMLWorker.deletePreviousWiFiStdDevDB(modelStats:)(v15 + 5280);
}

{
  v8 = *v1;
  v7 = (v8 + 5632);
  v2 = *(*v1 + 6600);
  *(v8 + 5632) = *v1;
  *(v8 + 6608) = v0;

  if (v0)
  {
    v5 = *v7;
    v4 = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  }

  else
  {
    v3 = *v7;
    v4 = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  }

  return _swift_task_switch(v4, 0);
}

{
  v8 = *v1;
  v7 = (v8 + 5632);
  v2 = *(*v1 + 6616);
  *(v8 + 5632) = *v1;
  *(v8 + 6624) = v0;

  if (v0)
  {
    v5 = *v7;
    v4 = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  }

  else
  {
    v3 = *v7;
    v4 = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  }

  return _swift_task_switch(v4, 0);
}

{
  v19 = v0[802];
  v17 = v0[801];
  v18 = v0[800];
  v1 = v0[768];
  v16 = v0[762];
  v0[704] = v0;
  v2 = MediaMLWorker.logger.unsafeMutableAddressor();
  v18(v1, v2, v16);
  v21 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  v22 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v21, v20))
  {
    v3 = *(v15 + 6624);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = createStorage<A>(capacity:type:)(0);
    v13 = createStorage<A>(capacity:type:)(0);
    *(v15 + 5784) = buf;
    *(v15 + 5792) = v12;
    *(v15 + 5800) = v13;
    serialize(_:at:)(0, (v15 + 5784));
    serialize(_:at:)(0, (v15 + 5784));
    *(v15 + 5808) = v22;
    v14 = swift_task_alloc();
    v14[2] = v15 + 5784;
    v14[3] = v15 + 5792;
    v14[4] = v15 + 5800;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v3)
    {
    }

    _os_log_impl(&_mh_execute_header, v21, v20, "Saved cellModelStats to modelStats table", buf, 2u);
    destroyStorage<A>(_:count:)(v12);
    destroyStorage<A>(_:count:)(v13);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v9 = *(v15 + 6432);
  v10 = *(v15 + 6424);
  v7 = *(v15 + 6144);
  v8 = *(v15 + 6096);

  v10(v7, v8);
  memcpy((v15 + 2568), (v15 + 280), 0x51uLL);
  memcpy((v15 + 2480), (v15 + 2568), 0x51uLL);
  if (*(v15 + 2560))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  memcpy((v15 + 5440), (v15 + 2480), 0x50uLL);
  v5 = swift_task_alloc();
  *(v15 + 6632) = v5;
  *v5 = *(v15 + 5632);
  v5[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  v6 = *(v15 + 6072);

  return MediaMLWorker.deletePreviousModelStatsFromDB(modelStats:)(v15 + 5440);
}

{
  v8 = *v1;
  v7 = (v8 + 5632);
  v2 = *(*v1 + 6632);
  *(v8 + 5632) = *v1;
  *(v8 + 6640) = v0;

  if (v0)
  {
    v5 = *v7;
    v4 = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  }

  else
  {
    v3 = *v7;
    v4 = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  }

  return _swift_task_switch(v4, 0);
}

{
  v20 = v0[802];
  v18 = v0[801];
  v19 = v0[800];
  v1 = v0[767];
  v17 = v0[762];
  v0[704] = v0;
  v2 = MediaMLWorker.logger.unsafeMutableAddressor();
  v19(v1, v2, v17);
  oslog = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  v23 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v21))
  {
    v3 = *(v16 + 6640);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v13 = createStorage<A>(capacity:type:)(0);
    v14 = createStorage<A>(capacity:type:)(0);
    *(v16 + 5752) = buf;
    *(v16 + 5760) = v13;
    *(v16 + 5768) = v14;
    serialize(_:at:)(0, (v16 + 5752));
    serialize(_:at:)(0, (v16 + 5752));
    *(v16 + 5776) = v23;
    v15 = swift_task_alloc();
    v15[2] = v16 + 5752;
    v15[3] = v16 + 5760;
    v15[4] = v16 + 5768;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v3)
    {
    }

    _os_log_impl(&_mh_execute_header, oslog, v21, "Deleted previous cellModelStats from modelStats table", buf, 2u);
    destroyStorage<A>(_:count:)(v13);
    destroyStorage<A>(_:count:)(v14);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v10 = *(v16 + 6432);
  v11 = *(v16 + 6424);
  v8 = *(v16 + 6136);
  v9 = *(v16 + 6096);

  v11(v8, v9);
  v5 = swift_task_alloc();
  *(v16 + 6648) = v5;
  *v5 = *(v16 + 5632);
  v5[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  v6 = *(v16 + 6256);
  v7 = *(v16 + 6072);

  return MediaMLWorker.saveCellDataStandardDeviation(dataFrame:)(v6);
}

{
  v8 = *v1;
  v7 = (v8 + 5632);
  v2 = *(*v1 + 6648);
  *(v8 + 5632) = *v1;
  *(v8 + 6656) = v0;

  if (v0)
  {
    v5 = *v7;
    v4 = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  }

  else
  {
    v3 = *v7;
    v4 = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  }

  return _swift_task_switch(v4, 0);
}

{
  v19 = v0[802];
  v17 = v0[801];
  v18 = v0[800];
  v1 = v0[766];
  v16 = v0[762];
  v0[704] = v0;
  v2 = MediaMLWorker.logger.unsafeMutableAddressor();
  v18(v1, v2, v16);
  v21 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  v22 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v21, v20))
  {
    v3 = *(v15 + 6656);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = createStorage<A>(capacity:type:)(0);
    v13 = createStorage<A>(capacity:type:)(0);
    *(v15 + 5720) = buf;
    *(v15 + 5728) = v12;
    *(v15 + 5736) = v13;
    serialize(_:at:)(0, (v15 + 5720));
    serialize(_:at:)(0, (v15 + 5720));
    *(v15 + 5744) = v22;
    v14 = swift_task_alloc();
    v14[2] = v15 + 5720;
    v14[3] = v15 + 5728;
    v14[4] = v15 + 5736;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v3)
    {
    }

    _os_log_impl(&_mh_execute_header, v21, v20, "Saved cellStandardDeviation to cellStdDev table", buf, 2u);
    destroyStorage<A>(_:count:)(v12);
    destroyStorage<A>(_:count:)(v13);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v9 = *(v15 + 6432);
  v10 = *(v15 + 6424);
  v7 = *(v15 + 6128);
  v8 = *(v15 + 6096);

  v10(v7, v8);
  memcpy((v15 + 2744), (v15 + 280), 0x51uLL);
  memcpy((v15 + 2656), (v15 + 2744), 0x51uLL);
  if (*(v15 + 2736))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  memcpy((v15 + 5520), (v15 + 2656), 0x50uLL);
  v5 = swift_task_alloc();
  *(v15 + 6664) = v5;
  *v5 = *(v15 + 5632);
  v5[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  v6 = *(v15 + 6072);

  return MediaMLWorker.deletePreviousCellStdDevDB(modelStats:)(v15 + 5520);
}

{
  v8 = *v1;
  v7 = (v8 + 5632);
  v2 = *(*v1 + 6664);
  *(v8 + 5632) = *v1;
  *(v8 + 6672) = v0;

  if (v0)
  {
    v5 = *v7;
    v4 = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  }

  else
  {
    v3 = *v7;
    v4 = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  }

  return _swift_task_switch(v4, 0);
}

{
  v50 = v0[802];
  v48 = v0[801];
  v49 = v0[800];
  v1 = v0[765];
  v47 = v0[762];
  v0[704] = v0;
  v2 = MediaMLWorker.logger.unsafeMutableAddressor();
  v49(v1, v2, v47);
  v52 = Logger.logObject.getter();
  v51 = static os_log_type_t.info.getter();
  v53 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v52, v51))
  {
    v3 = *(v46 + 6672);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v43 = createStorage<A>(capacity:type:)(0);
    v44 = createStorage<A>(capacity:type:)(0);
    *(v46 + 5688) = buf;
    *(v46 + 5696) = v43;
    *(v46 + 5704) = v44;
    serialize(_:at:)(0, (v46 + 5688));
    serialize(_:at:)(0, (v46 + 5688));
    *(v46 + 5712) = v53;
    v45 = swift_task_alloc();
    v45[2] = v46 + 5688;
    v45[3] = v46 + 5696;
    v45[4] = v46 + 5704;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v3)
    {
    }

    _os_log_impl(&_mh_execute_header, v52, v51, "Deleted previous cellStandardDeviation from cellStdDev table", buf, 2u);
    destroyStorage<A>(_:count:)(v43);
    destroyStorage<A>(_:count:)(v44);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v11 = *(v46 + 6432);
  v12 = *(v46 + 6424);
  v9 = *(v46 + 6120);
  v10 = *(v46 + 6096);

  v12(v9, v10);
  v5 = *(v46 + 6544);
  v13 = *(v46 + 6528);
  v19 = *(v46 + 6264);
  v18 = *(v46 + 6256);
  v17 = *(v46 + 6248);
  v16 = *(v46 + 6240);
  v15 = *(v46 + 6232);
  v20 = *(v46 + 6216);
  v14 = *(v46 + 6224);

  v21 = *(v14 + 8);
  v21(v15, v20);
  v21(v16, v20);
  v21(v17, v20);
  v21(v18, v20);
  v21(v19, v20);
  v22 = *(v46 + 6296);
  v23 = *(v46 + 6280);
  v24 = *(v46 + 6264);
  v25 = *(v46 + 6256);
  v26 = *(v46 + 6248);
  v27 = *(v46 + 6240);
  v28 = *(v46 + 6232);
  v29 = *(v46 + 6208);
  v30 = *(v46 + 6200);
  v31 = *(v46 + 6192);
  v32 = *(v46 + 6184);
  v33 = *(v46 + 6176);
  v34 = *(v46 + 6168);
  v35 = *(v46 + 6160);
  v36 = *(v46 + 6152);
  v37 = *(v46 + 6144);
  v38 = *(v46 + 6136);
  v39 = *(v46 + 6128);
  v40 = *(v46 + 6120);
  v41 = *(v46 + 6112);
  v6 = *(v46 + 6088);
  OS_dispatch_semaphore.signal()();

  v7 = *(*(v46 + 5632) + 8);
  v8 = *(v46 + 5632);

  return v7();
}

{
  v52 = v0;
  v0[704] = v0;
  v37 = v0[789];
  v1 = v0[764];
  v35 = v0[763];
  v36 = v0[762];
  swift_errorRetain();
  v0[710] = v37;
  v2 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v35 + 16))(v1, v2, v36);
  swift_errorRetain();
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();
  v41 = swift_allocObject();
  *(v41 + 16) = 64;
  v42 = swift_allocObject();
  *(v42 + 16) = 8;
  v39 = swift_allocObject();
  *(v39 + 16) = partial apply for implicit closure #1 in closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  *(v39 + 24) = v38;
  v40 = swift_allocObject();
  *(v40 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v40 + 24) = v39;
  v43 = swift_allocObject();
  *(v43 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v43 + 24) = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v44 = v3;

  *v44 = closure #1 in OSLogArguments.append(_:)partial apply;
  v44[1] = v41;

  v44[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v44[3] = v42;

  v44[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v44[5] = v43;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v46))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v32 = createStorage<A>(capacity:type:)(1);
    v33 = createStorage<A>(capacity:type:)(0);
    v47 = buf;
    v48 = v32;
    v49 = v33;
    serialize(_:at:)(2, &v47);
    serialize(_:at:)(1, &v47);
    v50 = closure #1 in OSLogArguments.append(_:)partial apply;
    v51 = v41;
    closure #1 in osLogInternal(_:log:type:)(&v50, &v47, &v48, &v49);
    v50 = closure #1 in OSLogArguments.append(_:)partial apply;
    v51 = v42;
    closure #1 in osLogInternal(_:log:type:)(&v50, &v47, &v48, &v49);
    v50 = closure #1 in OSLogArguments.append(_:)partial apply;
    v51 = v43;
    closure #1 in osLogInternal(_:log:type:)(&v50, &v47, &v48, &v49);
    _os_log_impl(&_mh_execute_header, oslog, v46, "Failed to train model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v32);
    destroyStorage<A>(_:count:)(v33);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v9 = v34[764];
  v10 = v34[762];
  v8 = v34[763];

  (*(v8 + 8))(v9, v10);

  v11 = v34[787];
  v12 = v34[785];
  v13 = v34[783];
  v14 = v34[782];
  v15 = v34[781];
  v16 = v34[780];
  v17 = v34[779];
  v18 = v34[776];
  v19 = v34[775];
  v20 = v34[774];
  v21 = v34[773];
  v22 = v34[772];
  v23 = v34[771];
  v24 = v34[770];
  v25 = v34[769];
  v26 = v34[768];
  v27 = v34[767];
  v28 = v34[766];
  v29 = v34[765];
  v30 = v34[764];
  v4 = v34[761];
  OS_dispatch_semaphore.signal()();

  v5 = *(v34[704] + 8);
  v6 = v34[704];

  return v5();
}

{
  v52 = v0;
  v0[704] = v0;
  v37 = v0[791];
  v1 = v0[764];
  v35 = v0[763];
  v36 = v0[762];
  swift_errorRetain();
  v0[710] = v37;
  v2 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v35 + 16))(v1, v2, v36);
  swift_errorRetain();
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();
  v41 = swift_allocObject();
  *(v41 + 16) = 64;
  v42 = swift_allocObject();
  *(v42 + 16) = 8;
  v39 = swift_allocObject();
  *(v39 + 16) = partial apply for implicit closure #1 in closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  *(v39 + 24) = v38;
  v40 = swift_allocObject();
  *(v40 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v40 + 24) = v39;
  v43 = swift_allocObject();
  *(v43 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v43 + 24) = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v44 = v3;

  *v44 = closure #1 in OSLogArguments.append(_:)partial apply;
  v44[1] = v41;

  v44[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v44[3] = v42;

  v44[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v44[5] = v43;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v46))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v32 = createStorage<A>(capacity:type:)(1);
    v33 = createStorage<A>(capacity:type:)(0);
    v47 = buf;
    v48 = v32;
    v49 = v33;
    serialize(_:at:)(2, &v47);
    serialize(_:at:)(1, &v47);
    v50 = closure #1 in OSLogArguments.append(_:)partial apply;
    v51 = v41;
    closure #1 in osLogInternal(_:log:type:)(&v50, &v47, &v48, &v49);
    v50 = closure #1 in OSLogArguments.append(_:)partial apply;
    v51 = v42;
    closure #1 in osLogInternal(_:log:type:)(&v50, &v47, &v48, &v49);
    v50 = closure #1 in OSLogArguments.append(_:)partial apply;
    v51 = v43;
    closure #1 in osLogInternal(_:log:type:)(&v50, &v47, &v48, &v49);
    _os_log_impl(&_mh_execute_header, oslog, v46, "Failed to train model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v32);
    destroyStorage<A>(_:count:)(v33);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v9 = v34[764];
  v10 = v34[762];
  v8 = v34[763];

  (*(v8 + 8))(v9, v10);

  v11 = v34[787];
  v12 = v34[785];
  v13 = v34[783];
  v14 = v34[782];
  v15 = v34[781];
  v16 = v34[780];
  v17 = v34[779];
  v18 = v34[776];
  v19 = v34[775];
  v20 = v34[774];
  v21 = v34[773];
  v22 = v34[772];
  v23 = v34[771];
  v24 = v34[770];
  v25 = v34[769];
  v26 = v34[768];
  v27 = v34[767];
  v28 = v34[766];
  v29 = v34[765];
  v30 = v34[764];
  v4 = v34[761];
  OS_dispatch_semaphore.signal()();

  v5 = *(v34[704] + 8);
  v6 = v34[704];

  return v5();
}

{
  v55 = v0;
  v1 = v0[783];
  v2 = v0[778];
  v3 = v0[777];
  v0[704] = v0;
  (*(v2 + 8))(v1, v3);
  v40 = v0[793];
  v4 = v0[764];
  v38 = v0[763];
  v39 = v0[762];
  swift_errorRetain();
  v0[710] = v40;
  v5 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v38 + 16))(v4, v5, v39);
  swift_errorRetain();
  v41 = swift_allocObject();
  *(v41 + 16) = v40;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();
  v44 = swift_allocObject();
  *(v44 + 16) = 64;
  v45 = swift_allocObject();
  *(v45 + 16) = 8;
  v42 = swift_allocObject();
  *(v42 + 16) = partial apply for implicit closure #1 in closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  *(v42 + 24) = v41;
  v43 = swift_allocObject();
  *(v43 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v43 + 24) = v42;
  v46 = swift_allocObject();
  *(v46 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v46 + 24) = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v47 = v6;

  *v47 = closure #1 in OSLogArguments.append(_:)partial apply;
  v47[1] = v44;

  v47[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v47[3] = v45;

  v47[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v47[5] = v46;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v49))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v35 = createStorage<A>(capacity:type:)(1);
    v36 = createStorage<A>(capacity:type:)(0);
    v50 = buf;
    v51 = v35;
    v52 = v36;
    serialize(_:at:)(2, &v50);
    serialize(_:at:)(1, &v50);
    v53 = closure #1 in OSLogArguments.append(_:)partial apply;
    v54 = v44;
    closure #1 in osLogInternal(_:log:type:)(&v53, &v50, &v51, &v52);
    v53 = closure #1 in OSLogArguments.append(_:)partial apply;
    v54 = v45;
    closure #1 in osLogInternal(_:log:type:)(&v53, &v50, &v51, &v52);
    v53 = closure #1 in OSLogArguments.append(_:)partial apply;
    v54 = v46;
    closure #1 in osLogInternal(_:log:type:)(&v53, &v50, &v51, &v52);
    _os_log_impl(&_mh_execute_header, oslog, v49, "Failed to train model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v35);
    destroyStorage<A>(_:count:)(v36);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v12 = v37[764];
  v13 = v37[762];
  v11 = v37[763];

  (*(v11 + 8))(v12, v13);

  v14 = v37[787];
  v15 = v37[785];
  v16 = v37[783];
  v17 = v37[782];
  v18 = v37[781];
  v19 = v37[780];
  v20 = v37[779];
  v21 = v37[776];
  v22 = v37[775];
  v23 = v37[774];
  v24 = v37[773];
  v25 = v37[772];
  v26 = v37[771];
  v27 = v37[770];
  v28 = v37[769];
  v29 = v37[768];
  v30 = v37[767];
  v31 = v37[766];
  v32 = v37[765];
  v33 = v37[764];
  v7 = v37[761];
  OS_dispatch_semaphore.signal()();

  v8 = *(v37[704] + 8);
  v9 = v37[704];

  return v8();
}

{
  v57 = v0;
  v37 = v0[783];
  v1 = v0[782];
  v2 = v0[778];
  v38 = v0[777];
  v0[704] = v0;
  v39 = *(v2 + 8);
  v39(v1);
  (v39)(v37, v38);
  v42 = v0[795];
  v3 = v0[764];
  v40 = v0[763];
  v41 = v0[762];
  swift_errorRetain();
  v0[710] = v42;
  v4 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v40 + 16))(v3, v4, v41);
  swift_errorRetain();
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v51 = static os_log_type_t.error.getter();
  v46 = swift_allocObject();
  *(v46 + 16) = 64;
  v47 = swift_allocObject();
  *(v47 + 16) = 8;
  v44 = swift_allocObject();
  *(v44 + 16) = partial apply for implicit closure #1 in closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  *(v44 + 24) = v43;
  v45 = swift_allocObject();
  *(v45 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v45 + 24) = v44;
  v48 = swift_allocObject();
  *(v48 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v48 + 24) = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v49 = v5;

  *v49 = closure #1 in OSLogArguments.append(_:)partial apply;
  v49[1] = v46;

  v49[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v49[3] = v47;

  v49[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v49[5] = v48;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v51))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v34 = createStorage<A>(capacity:type:)(1);
    v35 = createStorage<A>(capacity:type:)(0);
    v52 = buf;
    v53 = v34;
    v54 = v35;
    serialize(_:at:)(2, &v52);
    serialize(_:at:)(1, &v52);
    v55 = closure #1 in OSLogArguments.append(_:)partial apply;
    v56 = v46;
    closure #1 in osLogInternal(_:log:type:)(&v55, &v52, &v53, &v54);
    v55 = closure #1 in OSLogArguments.append(_:)partial apply;
    v56 = v47;
    closure #1 in osLogInternal(_:log:type:)(&v55, &v52, &v53, &v54);
    v55 = closure #1 in OSLogArguments.append(_:)partial apply;
    v56 = v48;
    closure #1 in osLogInternal(_:log:type:)(&v55, &v52, &v53, &v54);
    _os_log_impl(&_mh_execute_header, oslog, v51, "Failed to train model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v34);
    destroyStorage<A>(_:count:)(v35);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v11 = v36[764];
  v12 = v36[762];
  v10 = v36[763];

  (*(v10 + 8))(v11, v12);

  v13 = v36[787];
  v14 = v36[785];
  v15 = v36[783];
  v16 = v36[782];
  v17 = v36[781];
  v18 = v36[780];
  v19 = v36[779];
  v20 = v36[776];
  v21 = v36[775];
  v22 = v36[774];
  v23 = v36[773];
  v24 = v36[772];
  v25 = v36[771];
  v26 = v36[770];
  v27 = v36[769];
  v28 = v36[768];
  v29 = v36[767];
  v30 = v36[766];
  v31 = v36[765];
  v32 = v36[764];
  v6 = v36[761];
  OS_dispatch_semaphore.signal()();

  v7 = *(v36[704] + 8);
  v8 = v36[704];

  return v7();
}

{
  v58 = v0;
  v38 = v0[783];
  v37 = v0[782];
  v1 = v0[781];
  v2 = v0[778];
  v39 = v0[777];
  v0[704] = v0;
  v40 = *(v2 + 8);
  v40(v1);
  (v40)(v37, v39);
  (v40)(v38, v39);
  v43 = v0[797];
  v3 = v0[764];
  v41 = v0[763];
  v42 = v0[762];
  swift_errorRetain();
  v0[710] = v43;
  v4 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v41 + 16))(v3, v4, v42);
  swift_errorRetain();
  v44 = swift_allocObject();
  *(v44 + 16) = v43;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();
  v47 = swift_allocObject();
  *(v47 + 16) = 64;
  v48 = swift_allocObject();
  *(v48 + 16) = 8;
  v45 = swift_allocObject();
  *(v45 + 16) = partial apply for implicit closure #1 in closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  *(v45 + 24) = v44;
  v46 = swift_allocObject();
  *(v46 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v46 + 24) = v45;
  v49 = swift_allocObject();
  *(v49 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v49 + 24) = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v50 = v5;

  *v50 = closure #1 in OSLogArguments.append(_:)partial apply;
  v50[1] = v47;

  v50[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v50[3] = v48;

  v50[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v50[5] = v49;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v52))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v34 = createStorage<A>(capacity:type:)(1);
    v35 = createStorage<A>(capacity:type:)(0);
    v53 = buf;
    v54 = v34;
    v55 = v35;
    serialize(_:at:)(2, &v53);
    serialize(_:at:)(1, &v53);
    v56 = closure #1 in OSLogArguments.append(_:)partial apply;
    v57 = v47;
    closure #1 in osLogInternal(_:log:type:)(&v56, &v53, &v54, &v55);
    v56 = closure #1 in OSLogArguments.append(_:)partial apply;
    v57 = v48;
    closure #1 in osLogInternal(_:log:type:)(&v56, &v53, &v54, &v55);
    v56 = closure #1 in OSLogArguments.append(_:)partial apply;
    v57 = v49;
    closure #1 in osLogInternal(_:log:type:)(&v56, &v53, &v54, &v55);
    _os_log_impl(&_mh_execute_header, oslog, v52, "Failed to train model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v34);
    destroyStorage<A>(_:count:)(v35);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v11 = v36[764];
  v12 = v36[762];
  v10 = v36[763];

  (*(v10 + 8))(v11, v12);

  v13 = v36[787];
  v14 = v36[785];
  v15 = v36[783];
  v16 = v36[782];
  v17 = v36[781];
  v18 = v36[780];
  v19 = v36[779];
  v20 = v36[776];
  v21 = v36[775];
  v22 = v36[774];
  v23 = v36[773];
  v24 = v36[772];
  v25 = v36[771];
  v26 = v36[770];
  v27 = v36[769];
  v28 = v36[768];
  v29 = v36[767];
  v30 = v36[766];
  v31 = v36[765];
  v32 = v36[764];
  v6 = v36[761];
  OS_dispatch_semaphore.signal()();

  v7 = *(v36[704] + 8);
  v8 = v36[704];

  return v7();
}

{
  v58 = v0;
  v38 = v0[783];
  v37 = v0[782];
  v1 = v0[781];
  v2 = v0[778];
  v39 = v0[777];
  v0[704] = v0;
  v40 = *(v2 + 8);
  v40(v1);
  (v40)(v37, v39);
  (v40)(v38, v39);
  v43 = v0[799];
  v3 = v0[764];
  v41 = v0[763];
  v42 = v0[762];
  swift_errorRetain();
  v0[710] = v43;
  v4 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v41 + 16))(v3, v4, v42);
  swift_errorRetain();
  v44 = swift_allocObject();
  *(v44 + 16) = v43;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();
  v47 = swift_allocObject();
  *(v47 + 16) = 64;
  v48 = swift_allocObject();
  *(v48 + 16) = 8;
  v45 = swift_allocObject();
  *(v45 + 16) = partial apply for implicit closure #1 in closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  *(v45 + 24) = v44;
  v46 = swift_allocObject();
  *(v46 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v46 + 24) = v45;
  v49 = swift_allocObject();
  *(v49 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v49 + 24) = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v50 = v5;

  *v50 = closure #1 in OSLogArguments.append(_:)partial apply;
  v50[1] = v47;

  v50[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v50[3] = v48;

  v50[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v50[5] = v49;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v52))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v34 = createStorage<A>(capacity:type:)(1);
    v35 = createStorage<A>(capacity:type:)(0);
    v53 = buf;
    v54 = v34;
    v55 = v35;
    serialize(_:at:)(2, &v53);
    serialize(_:at:)(1, &v53);
    v56 = closure #1 in OSLogArguments.append(_:)partial apply;
    v57 = v47;
    closure #1 in osLogInternal(_:log:type:)(&v56, &v53, &v54, &v55);
    v56 = closure #1 in OSLogArguments.append(_:)partial apply;
    v57 = v48;
    closure #1 in osLogInternal(_:log:type:)(&v56, &v53, &v54, &v55);
    v56 = closure #1 in OSLogArguments.append(_:)partial apply;
    v57 = v49;
    closure #1 in osLogInternal(_:log:type:)(&v56, &v53, &v54, &v55);
    _os_log_impl(&_mh_execute_header, oslog, v52, "Failed to train model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v34);
    destroyStorage<A>(_:count:)(v35);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v11 = v36[764];
  v12 = v36[762];
  v10 = v36[763];

  (*(v10 + 8))(v11, v12);

  v13 = v36[787];
  v14 = v36[785];
  v15 = v36[783];
  v16 = v36[782];
  v17 = v36[781];
  v18 = v36[780];
  v19 = v36[779];
  v20 = v36[776];
  v21 = v36[775];
  v22 = v36[774];
  v23 = v36[773];
  v24 = v36[772];
  v25 = v36[771];
  v26 = v36[770];
  v27 = v36[769];
  v28 = v36[768];
  v29 = v36[767];
  v30 = v36[766];
  v31 = v36[765];
  v32 = v36[764];
  v6 = v36[761];
  OS_dispatch_semaphore.signal()();

  v7 = *(v36[704] + 8);
  v8 = v36[704];

  return v7();
}

{
  v58 = v0;
  v38 = v0[783];
  v37 = v0[782];
  v1 = v0[781];
  v2 = v0[778];
  v39 = v0[777];
  v0[704] = v0;
  v40 = *(v2 + 8);
  v40(v1);
  (v40)(v37, v39);
  (v40)(v38, v39);
  v43 = v0[806];
  v3 = v0[764];
  v41 = v0[763];
  v42 = v0[762];
  swift_errorRetain();
  v0[710] = v43;
  v4 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v41 + 16))(v3, v4, v42);
  swift_errorRetain();
  v44 = swift_allocObject();
  *(v44 + 16) = v43;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();
  v47 = swift_allocObject();
  *(v47 + 16) = 64;
  v48 = swift_allocObject();
  *(v48 + 16) = 8;
  v45 = swift_allocObject();
  *(v45 + 16) = partial apply for implicit closure #1 in closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  *(v45 + 24) = v44;
  v46 = swift_allocObject();
  *(v46 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v46 + 24) = v45;
  v49 = swift_allocObject();
  *(v49 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v49 + 24) = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v50 = v5;

  *v50 = closure #1 in OSLogArguments.append(_:)partial apply;
  v50[1] = v47;

  v50[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v50[3] = v48;

  v50[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v50[5] = v49;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v52))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v34 = createStorage<A>(capacity:type:)(1);
    v35 = createStorage<A>(capacity:type:)(0);
    v53 = buf;
    v54 = v34;
    v55 = v35;
    serialize(_:at:)(2, &v53);
    serialize(_:at:)(1, &v53);
    v56 = closure #1 in OSLogArguments.append(_:)partial apply;
    v57 = v47;
    closure #1 in osLogInternal(_:log:type:)(&v56, &v53, &v54, &v55);
    v56 = closure #1 in OSLogArguments.append(_:)partial apply;
    v57 = v48;
    closure #1 in osLogInternal(_:log:type:)(&v56, &v53, &v54, &v55);
    v56 = closure #1 in OSLogArguments.append(_:)partial apply;
    v57 = v49;
    closure #1 in osLogInternal(_:log:type:)(&v56, &v53, &v54, &v55);
    _os_log_impl(&_mh_execute_header, oslog, v52, "Failed to train model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v34);
    destroyStorage<A>(_:count:)(v35);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v11 = v36[764];
  v12 = v36[762];
  v10 = v36[763];

  (*(v10 + 8))(v11, v12);

  v13 = v36[787];
  v14 = v36[785];
  v15 = v36[783];
  v16 = v36[782];
  v17 = v36[781];
  v18 = v36[780];
  v19 = v36[779];
  v20 = v36[776];
  v21 = v36[775];
  v22 = v36[774];
  v23 = v36[773];
  v24 = v36[772];
  v25 = v36[771];
  v26 = v36[770];
  v27 = v36[769];
  v28 = v36[768];
  v29 = v36[767];
  v30 = v36[766];
  v31 = v36[765];
  v32 = v36[764];
  v6 = v36[761];
  OS_dispatch_semaphore.signal()();

  v7 = *(v36[704] + 8);
  v8 = v36[704];

  return v7();
}

{
  v58 = v0;
  v38 = v0[783];
  v37 = v0[782];
  v1 = v0[781];
  v2 = v0[778];
  v39 = v0[777];
  v0[704] = v0;
  v40 = *(v2 + 8);
  v40(v1);
  (v40)(v37, v39);
  (v40)(v38, v39);
  v43 = v0[808];
  v3 = v0[764];
  v41 = v0[763];
  v42 = v0[762];
  swift_errorRetain();
  v0[710] = v43;
  v4 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v41 + 16))(v3, v4, v42);
  swift_errorRetain();
  v44 = swift_allocObject();
  *(v44 + 16) = v43;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();
  v47 = swift_allocObject();
  *(v47 + 16) = 64;
  v48 = swift_allocObject();
  *(v48 + 16) = 8;
  v45 = swift_allocObject();
  *(v45 + 16) = partial apply for implicit closure #1 in closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  *(v45 + 24) = v44;
  v46 = swift_allocObject();
  *(v46 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v46 + 24) = v45;
  v49 = swift_allocObject();
  *(v49 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v49 + 24) = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v50 = v5;

  *v50 = closure #1 in OSLogArguments.append(_:)partial apply;
  v50[1] = v47;

  v50[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v50[3] = v48;

  v50[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v50[5] = v49;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v52))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v34 = createStorage<A>(capacity:type:)(1);
    v35 = createStorage<A>(capacity:type:)(0);
    v53 = buf;
    v54 = v34;
    v55 = v35;
    serialize(_:at:)(2, &v53);
    serialize(_:at:)(1, &v53);
    v56 = closure #1 in OSLogArguments.append(_:)partial apply;
    v57 = v47;
    closure #1 in osLogInternal(_:log:type:)(&v56, &v53, &v54, &v55);
    v56 = closure #1 in OSLogArguments.append(_:)partial apply;
    v57 = v48;
    closure #1 in osLogInternal(_:log:type:)(&v56, &v53, &v54, &v55);
    v56 = closure #1 in OSLogArguments.append(_:)partial apply;
    v57 = v49;
    closure #1 in osLogInternal(_:log:type:)(&v56, &v53, &v54, &v55);
    _os_log_impl(&_mh_execute_header, oslog, v52, "Failed to train model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v34);
    destroyStorage<A>(_:count:)(v35);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v11 = v36[764];
  v12 = v36[762];
  v10 = v36[763];

  (*(v10 + 8))(v11, v12);

  v13 = v36[787];
  v14 = v36[785];
  v15 = v36[783];
  v16 = v36[782];
  v17 = v36[781];
  v18 = v36[780];
  v19 = v36[779];
  v20 = v36[776];
  v21 = v36[775];
  v22 = v36[774];
  v23 = v36[773];
  v24 = v36[772];
  v25 = v36[771];
  v26 = v36[770];
  v27 = v36[769];
  v28 = v36[768];
  v29 = v36[767];
  v30 = v36[766];
  v31 = v36[765];
  v32 = v36[764];
  v6 = v36[761];
  OS_dispatch_semaphore.signal()();

  v7 = *(v36[704] + 8);
  v8 = v36[704];

  return v7();
}

{
  v59 = v0;
  v39 = v0[783];
  v38 = v0[782];
  v37 = v0[781];
  v1 = v0[780];
  v2 = v0[778];
  v40 = v0[777];
  v0[704] = v0;
  v41 = *(v2 + 8);
  v41(v1);
  (v41)(v37, v40);
  (v41)(v38, v40);
  (v41)(v39, v40);
  v44 = v0[810];
  v3 = v0[764];
  v42 = v0[763];
  v43 = v0[762];
  swift_errorRetain();
  v0[710] = v44;
  v4 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v42 + 16))(v3, v4, v43);
  swift_errorRetain();
  v45 = swift_allocObject();
  *(v45 + 16) = v44;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  v48 = swift_allocObject();
  *(v48 + 16) = 64;
  v49 = swift_allocObject();
  *(v49 + 16) = 8;
  v46 = swift_allocObject();
  *(v46 + 16) = partial apply for implicit closure #1 in closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  *(v46 + 24) = v45;
  v47 = swift_allocObject();
  *(v47 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v47 + 24) = v46;
  v50 = swift_allocObject();
  *(v50 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v50 + 24) = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v51 = v5;

  *v51 = closure #1 in OSLogArguments.append(_:)partial apply;
  v51[1] = v48;

  v51[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v51[3] = v49;

  v51[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v51[5] = v50;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v53))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v34 = createStorage<A>(capacity:type:)(1);
    v35 = createStorage<A>(capacity:type:)(0);
    v54 = buf;
    v55 = v34;
    v56 = v35;
    serialize(_:at:)(2, &v54);
    serialize(_:at:)(1, &v54);
    v57 = closure #1 in OSLogArguments.append(_:)partial apply;
    v58 = v48;
    closure #1 in osLogInternal(_:log:type:)(&v57, &v54, &v55, &v56);
    v57 = closure #1 in OSLogArguments.append(_:)partial apply;
    v58 = v49;
    closure #1 in osLogInternal(_:log:type:)(&v57, &v54, &v55, &v56);
    v57 = closure #1 in OSLogArguments.append(_:)partial apply;
    v58 = v50;
    closure #1 in osLogInternal(_:log:type:)(&v57, &v54, &v55, &v56);
    _os_log_impl(&_mh_execute_header, oslog, v53, "Failed to train model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v34);
    destroyStorage<A>(_:count:)(v35);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v11 = v36[764];
  v12 = v36[762];
  v10 = v36[763];

  (*(v10 + 8))(v11, v12);

  v13 = v36[787];
  v14 = v36[785];
  v15 = v36[783];
  v16 = v36[782];
  v17 = v36[781];
  v18 = v36[780];
  v19 = v36[779];
  v20 = v36[776];
  v21 = v36[775];
  v22 = v36[774];
  v23 = v36[773];
  v24 = v36[772];
  v25 = v36[771];
  v26 = v36[770];
  v27 = v36[769];
  v28 = v36[768];
  v29 = v36[767];
  v30 = v36[766];
  v31 = v36[765];
  v32 = v36[764];
  v6 = v36[761];
  OS_dispatch_semaphore.signal()();

  v7 = *(v36[704] + 8);
  v8 = v36[704];

  return v7();
}

{
  v60 = v0;
  v40 = v0[783];
  v39 = v0[782];
  v38 = v0[781];
  v37 = v0[780];
  v1 = v0[779];
  v2 = v0[778];
  v41 = v0[777];
  v0[704] = v0;
  v42 = *(v2 + 8);
  v42(v1);
  (v42)(v37, v41);
  (v42)(v38, v41);
  (v42)(v39, v41);
  (v42)(v40, v41);
  v45 = v0[812];
  v3 = v0[764];
  v43 = v0[763];
  v44 = v0[762];
  swift_errorRetain();
  v0[710] = v45;
  v4 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v43 + 16))(v3, v4, v44);
  swift_errorRetain();
  v46 = swift_allocObject();
  *(v46 + 16) = v45;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v54 = static os_log_type_t.error.getter();
  v49 = swift_allocObject();
  *(v49 + 16) = 64;
  v50 = swift_allocObject();
  *(v50 + 16) = 8;
  v47 = swift_allocObject();
  *(v47 + 16) = partial apply for implicit closure #1 in closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  *(v47 + 24) = v46;
  v48 = swift_allocObject();
  *(v48 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v48 + 24) = v47;
  v51 = swift_allocObject();
  *(v51 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v51 + 24) = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v52 = v5;

  *v52 = closure #1 in OSLogArguments.append(_:)partial apply;
  v52[1] = v49;

  v52[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v52[3] = v50;

  v52[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v52[5] = v51;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v54))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v34 = createStorage<A>(capacity:type:)(1);
    v35 = createStorage<A>(capacity:type:)(0);
    v55 = buf;
    v56 = v34;
    v57 = v35;
    serialize(_:at:)(2, &v55);
    serialize(_:at:)(1, &v55);
    v58 = closure #1 in OSLogArguments.append(_:)partial apply;
    v59 = v49;
    closure #1 in osLogInternal(_:log:type:)(&v58, &v55, &v56, &v57);
    v58 = closure #1 in OSLogArguments.append(_:)partial apply;
    v59 = v50;
    closure #1 in osLogInternal(_:log:type:)(&v58, &v55, &v56, &v57);
    v58 = closure #1 in OSLogArguments.append(_:)partial apply;
    v59 = v51;
    closure #1 in osLogInternal(_:log:type:)(&v58, &v55, &v56, &v57);
    _os_log_impl(&_mh_execute_header, oslog, v54, "Failed to train model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v34);
    destroyStorage<A>(_:count:)(v35);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v11 = v36[764];
  v12 = v36[762];
  v10 = v36[763];

  (*(v10 + 8))(v11, v12);

  v13 = v36[787];
  v14 = v36[785];
  v15 = v36[783];
  v16 = v36[782];
  v17 = v36[781];
  v18 = v36[780];
  v19 = v36[779];
  v20 = v36[776];
  v21 = v36[775];
  v22 = v36[774];
  v23 = v36[773];
  v24 = v36[772];
  v25 = v36[771];
  v26 = v36[770];
  v27 = v36[769];
  v28 = v36[768];
  v29 = v36[767];
  v30 = v36[766];
  v31 = v36[765];
  v32 = v36[764];
  v6 = v36[761];
  OS_dispatch_semaphore.signal()();

  v7 = *(v36[704] + 8);
  v8 = v36[704];

  return v7();
}

{
  v60 = v0;
  v40 = v0[783];
  v39 = v0[782];
  v38 = v0[781];
  v37 = v0[780];
  v1 = v0[779];
  v2 = v0[778];
  v41 = v0[777];
  v0[704] = v0;
  v42 = *(v2 + 8);
  v42(v1);
  (v42)(v37, v41);
  (v42)(v38, v41);
  (v42)(v39, v41);
  (v42)(v40, v41);
  v45 = v0[814];
  v3 = v0[764];
  v43 = v0[763];
  v44 = v0[762];
  swift_errorRetain();
  v0[710] = v45;
  v4 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v43 + 16))(v3, v4, v44);
  swift_errorRetain();
  v46 = swift_allocObject();
  *(v46 + 16) = v45;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v54 = static os_log_type_t.error.getter();
  v49 = swift_allocObject();
  *(v49 + 16) = 64;
  v50 = swift_allocObject();
  *(v50 + 16) = 8;
  v47 = swift_allocObject();
  *(v47 + 16) = partial apply for implicit closure #1 in closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  *(v47 + 24) = v46;
  v48 = swift_allocObject();
  *(v48 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v48 + 24) = v47;
  v51 = swift_allocObject();
  *(v51 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v51 + 24) = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v52 = v5;

  *v52 = closure #1 in OSLogArguments.append(_:)partial apply;
  v52[1] = v49;

  v52[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v52[3] = v50;

  v52[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v52[5] = v51;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v54))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v34 = createStorage<A>(capacity:type:)(1);
    v35 = createStorage<A>(capacity:type:)(0);
    v55 = buf;
    v56 = v34;
    v57 = v35;
    serialize(_:at:)(2, &v55);
    serialize(_:at:)(1, &v55);
    v58 = closure #1 in OSLogArguments.append(_:)partial apply;
    v59 = v49;
    closure #1 in osLogInternal(_:log:type:)(&v58, &v55, &v56, &v57);
    v58 = closure #1 in OSLogArguments.append(_:)partial apply;
    v59 = v50;
    closure #1 in osLogInternal(_:log:type:)(&v58, &v55, &v56, &v57);
    v58 = closure #1 in OSLogArguments.append(_:)partial apply;
    v59 = v51;
    closure #1 in osLogInternal(_:log:type:)(&v58, &v55, &v56, &v57);
    _os_log_impl(&_mh_execute_header, oslog, v54, "Failed to train model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v34);
    destroyStorage<A>(_:count:)(v35);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v11 = v36[764];
  v12 = v36[762];
  v10 = v36[763];

  (*(v10 + 8))(v11, v12);

  v13 = v36[787];
  v14 = v36[785];
  v15 = v36[783];
  v16 = v36[782];
  v17 = v36[781];
  v18 = v36[780];
  v19 = v36[779];
  v20 = v36[776];
  v21 = v36[775];
  v22 = v36[774];
  v23 = v36[773];
  v24 = v36[772];
  v25 = v36[771];
  v26 = v36[770];
  v27 = v36[769];
  v28 = v36[768];
  v29 = v36[767];
  v30 = v36[766];
  v31 = v36[765];
  v32 = v36[764];
  v6 = v36[761];
  OS_dispatch_semaphore.signal()();

  v7 = *(v36[704] + 8);
  v8 = v36[704];

  return v7();
}

{
  v62 = v0;
  v1 = v0[818];
  v36 = v0[816];
  v42 = v0[783];
  v41 = v0[782];
  v40 = v0[781];
  v39 = v0[780];
  v38 = v0[779];
  v37 = v0[778];
  v43 = v0[777];
  v0[704] = v0;

  v44 = *(v37 + 8);
  v44(v38, v43);
  v44(v39, v43);
  v44(v40, v43);
  v44(v41, v43);
  v44(v42, v43);
  v47 = v0[820];
  v2 = v0[764];
  v45 = v0[763];
  v46 = v0[762];
  swift_errorRetain();
  v0[710] = v47;
  v3 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v45 + 16))(v2, v3, v46);
  swift_errorRetain();
  v48 = swift_allocObject();
  *(v48 + 16) = v47;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v56 = static os_log_type_t.error.getter();
  v51 = swift_allocObject();
  *(v51 + 16) = 64;
  v52 = swift_allocObject();
  *(v52 + 16) = 8;
  v49 = swift_allocObject();
  *(v49 + 16) = partial apply for implicit closure #1 in closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  *(v49 + 24) = v48;
  v50 = swift_allocObject();
  *(v50 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v50 + 24) = v49;
  v53 = swift_allocObject();
  *(v53 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v53 + 24) = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v54 = v4;

  *v54 = closure #1 in OSLogArguments.append(_:)partial apply;
  v54[1] = v51;

  v54[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v54[3] = v52;

  v54[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v54[5] = v53;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v56))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v33 = createStorage<A>(capacity:type:)(1);
    v34 = createStorage<A>(capacity:type:)(0);
    v57 = buf;
    v58 = v33;
    v59 = v34;
    serialize(_:at:)(2, &v57);
    serialize(_:at:)(1, &v57);
    v60 = closure #1 in OSLogArguments.append(_:)partial apply;
    v61 = v51;
    closure #1 in osLogInternal(_:log:type:)(&v60, &v57, &v58, &v59);
    v60 = closure #1 in OSLogArguments.append(_:)partial apply;
    v61 = v52;
    closure #1 in osLogInternal(_:log:type:)(&v60, &v57, &v58, &v59);
    v60 = closure #1 in OSLogArguments.append(_:)partial apply;
    v61 = v53;
    closure #1 in osLogInternal(_:log:type:)(&v60, &v57, &v58, &v59);
    _os_log_impl(&_mh_execute_header, oslog, v56, "Failed to train model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v33);
    destroyStorage<A>(_:count:)(v34);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v10 = v35[764];
  v11 = v35[762];
  v9 = v35[763];

  (*(v9 + 8))(v10, v11);

  v12 = v35[787];
  v13 = v35[785];
  v14 = v35[783];
  v15 = v35[782];
  v16 = v35[781];
  v17 = v35[780];
  v18 = v35[779];
  v19 = v35[776];
  v20 = v35[775];
  v21 = v35[774];
  v22 = v35[773];
  v23 = v35[772];
  v24 = v35[771];
  v25 = v35[770];
  v26 = v35[769];
  v27 = v35[768];
  v28 = v35[767];
  v29 = v35[766];
  v30 = v35[765];
  v31 = v35[764];
  v5 = v35[761];
  OS_dispatch_semaphore.signal()();

  v6 = *(v35[704] + 8);
  v7 = v35[704];

  return v6();
}

{
  v62 = v0;
  v1 = v0[818];
  v36 = v0[816];
  v42 = v0[783];
  v41 = v0[782];
  v40 = v0[781];
  v39 = v0[780];
  v38 = v0[779];
  v37 = v0[778];
  v43 = v0[777];
  v0[704] = v0;

  v44 = *(v37 + 8);
  v44(v38, v43);
  v44(v39, v43);
  v44(v40, v43);
  v44(v41, v43);
  v44(v42, v43);
  v47 = v0[822];
  v2 = v0[764];
  v45 = v0[763];
  v46 = v0[762];
  swift_errorRetain();
  v0[710] = v47;
  v3 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v45 + 16))(v2, v3, v46);
  swift_errorRetain();
  v48 = swift_allocObject();
  *(v48 + 16) = v47;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v56 = static os_log_type_t.error.getter();
  v51 = swift_allocObject();
  *(v51 + 16) = 64;
  v52 = swift_allocObject();
  *(v52 + 16) = 8;
  v49 = swift_allocObject();
  *(v49 + 16) = partial apply for implicit closure #1 in closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  *(v49 + 24) = v48;
  v50 = swift_allocObject();
  *(v50 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v50 + 24) = v49;
  v53 = swift_allocObject();
  *(v53 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v53 + 24) = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v54 = v4;

  *v54 = closure #1 in OSLogArguments.append(_:)partial apply;
  v54[1] = v51;

  v54[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v54[3] = v52;

  v54[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v54[5] = v53;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v56))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v33 = createStorage<A>(capacity:type:)(1);
    v34 = createStorage<A>(capacity:type:)(0);
    v57 = buf;
    v58 = v33;
    v59 = v34;
    serialize(_:at:)(2, &v57);
    serialize(_:at:)(1, &v57);
    v60 = closure #1 in OSLogArguments.append(_:)partial apply;
    v61 = v51;
    closure #1 in osLogInternal(_:log:type:)(&v60, &v57, &v58, &v59);
    v60 = closure #1 in OSLogArguments.append(_:)partial apply;
    v61 = v52;
    closure #1 in osLogInternal(_:log:type:)(&v60, &v57, &v58, &v59);
    v60 = closure #1 in OSLogArguments.append(_:)partial apply;
    v61 = v53;
    closure #1 in osLogInternal(_:log:type:)(&v60, &v57, &v58, &v59);
    _os_log_impl(&_mh_execute_header, oslog, v56, "Failed to train model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v33);
    destroyStorage<A>(_:count:)(v34);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v10 = v35[764];
  v11 = v35[762];
  v9 = v35[763];

  (*(v9 + 8))(v10, v11);

  v12 = v35[787];
  v13 = v35[785];
  v14 = v35[783];
  v15 = v35[782];
  v16 = v35[781];
  v17 = v35[780];
  v18 = v35[779];
  v19 = v35[776];
  v20 = v35[775];
  v21 = v35[774];
  v22 = v35[773];
  v23 = v35[772];
  v24 = v35[771];
  v25 = v35[770];
  v26 = v35[769];
  v27 = v35[768];
  v28 = v35[767];
  v29 = v35[766];
  v30 = v35[765];
  v31 = v35[764];
  v5 = v35[761];
  OS_dispatch_semaphore.signal()();

  v6 = *(v35[704] + 8);
  v7 = v35[704];

  return v6();
}

{
  v62 = v0;
  v1 = v0[818];
  v36 = v0[816];
  v42 = v0[783];
  v41 = v0[782];
  v40 = v0[781];
  v39 = v0[780];
  v38 = v0[779];
  v37 = v0[778];
  v43 = v0[777];
  v0[704] = v0;

  v44 = *(v37 + 8);
  v44(v38, v43);
  v44(v39, v43);
  v44(v40, v43);
  v44(v41, v43);
  v44(v42, v43);
  v47 = v0[824];
  v2 = v0[764];
  v45 = v0[763];
  v46 = v0[762];
  swift_errorRetain();
  v0[710] = v47;
  v3 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v45 + 16))(v2, v3, v46);
  swift_errorRetain();
  v48 = swift_allocObject();
  *(v48 + 16) = v47;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v56 = static os_log_type_t.error.getter();
  v51 = swift_allocObject();
  *(v51 + 16) = 64;
  v52 = swift_allocObject();
  *(v52 + 16) = 8;
  v49 = swift_allocObject();
  *(v49 + 16) = partial apply for implicit closure #1 in closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  *(v49 + 24) = v48;
  v50 = swift_allocObject();
  *(v50 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v50 + 24) = v49;
  v53 = swift_allocObject();
  *(v53 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v53 + 24) = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v54 = v4;

  *v54 = closure #1 in OSLogArguments.append(_:)partial apply;
  v54[1] = v51;

  v54[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v54[3] = v52;

  v54[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v54[5] = v53;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v56))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v33 = createStorage<A>(capacity:type:)(1);
    v34 = createStorage<A>(capacity:type:)(0);
    v57 = buf;
    v58 = v33;
    v59 = v34;
    serialize(_:at:)(2, &v57);
    serialize(_:at:)(1, &v57);
    v60 = closure #1 in OSLogArguments.append(_:)partial apply;
    v61 = v51;
    closure #1 in osLogInternal(_:log:type:)(&v60, &v57, &v58, &v59);
    v60 = closure #1 in OSLogArguments.append(_:)partial apply;
    v61 = v52;
    closure #1 in osLogInternal(_:log:type:)(&v60, &v57, &v58, &v59);
    v60 = closure #1 in OSLogArguments.append(_:)partial apply;
    v61 = v53;
    closure #1 in osLogInternal(_:log:type:)(&v60, &v57, &v58, &v59);
    _os_log_impl(&_mh_execute_header, oslog, v56, "Failed to train model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v33);
    destroyStorage<A>(_:count:)(v34);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v10 = v35[764];
  v11 = v35[762];
  v9 = v35[763];

  (*(v9 + 8))(v10, v11);

  v12 = v35[787];
  v13 = v35[785];
  v14 = v35[783];
  v15 = v35[782];
  v16 = v35[781];
  v17 = v35[780];
  v18 = v35[779];
  v19 = v35[776];
  v20 = v35[775];
  v21 = v35[774];
  v22 = v35[773];
  v23 = v35[772];
  v24 = v35[771];
  v25 = v35[770];
  v26 = v35[769];
  v27 = v35[768];
  v28 = v35[767];
  v29 = v35[766];
  v30 = v35[765];
  v31 = v35[764];
  v5 = v35[761];
  OS_dispatch_semaphore.signal()();

  v6 = *(v35[704] + 8);
  v7 = v35[704];

  return v6();
}

{
  v62 = v0;
  v1 = v0[818];
  v36 = v0[816];
  v42 = v0[783];
  v41 = v0[782];
  v40 = v0[781];
  v39 = v0[780];
  v38 = v0[779];
  v37 = v0[778];
  v43 = v0[777];
  v0[704] = v0;

  v44 = *(v37 + 8);
  v44(v38, v43);
  v44(v39, v43);
  v44(v40, v43);
  v44(v41, v43);
  v44(v42, v43);
  v47 = v0[826];
  v2 = v0[764];
  v45 = v0[763];
  v46 = v0[762];
  swift_errorRetain();
  v0[710] = v47;
  v3 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v45 + 16))(v2, v3, v46);
  swift_errorRetain();
  v48 = swift_allocObject();
  *(v48 + 16) = v47;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v56 = static os_log_type_t.error.getter();
  v51 = swift_allocObject();
  *(v51 + 16) = 64;
  v52 = swift_allocObject();
  *(v52 + 16) = 8;
  v49 = swift_allocObject();
  *(v49 + 16) = partial apply for implicit closure #1 in closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  *(v49 + 24) = v48;
  v50 = swift_allocObject();
  *(v50 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v50 + 24) = v49;
  v53 = swift_allocObject();
  *(v53 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v53 + 24) = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v54 = v4;

  *v54 = closure #1 in OSLogArguments.append(_:)partial apply;
  v54[1] = v51;

  v54[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v54[3] = v52;

  v54[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v54[5] = v53;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v56))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v33 = createStorage<A>(capacity:type:)(1);
    v34 = createStorage<A>(capacity:type:)(0);
    v57 = buf;
    v58 = v33;
    v59 = v34;
    serialize(_:at:)(2, &v57);
    serialize(_:at:)(1, &v57);
    v60 = closure #1 in OSLogArguments.append(_:)partial apply;
    v61 = v51;
    closure #1 in osLogInternal(_:log:type:)(&v60, &v57, &v58, &v59);
    v60 = closure #1 in OSLogArguments.append(_:)partial apply;
    v61 = v52;
    closure #1 in osLogInternal(_:log:type:)(&v60, &v57, &v58, &v59);
    v60 = closure #1 in OSLogArguments.append(_:)partial apply;
    v61 = v53;
    closure #1 in osLogInternal(_:log:type:)(&v60, &v57, &v58, &v59);
    _os_log_impl(&_mh_execute_header, oslog, v56, "Failed to train model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v33);
    destroyStorage<A>(_:count:)(v34);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v10 = v35[764];
  v11 = v35[762];
  v9 = v35[763];

  (*(v9 + 8))(v10, v11);

  v12 = v35[787];
  v13 = v35[785];
  v14 = v35[783];
  v15 = v35[782];
  v16 = v35[781];
  v17 = v35[780];
  v18 = v35[779];
  v19 = v35[776];
  v20 = v35[775];
  v21 = v35[774];
  v22 = v35[773];
  v23 = v35[772];
  v24 = v35[771];
  v25 = v35[770];
  v26 = v35[769];
  v27 = v35[768];
  v28 = v35[767];
  v29 = v35[766];
  v30 = v35[765];
  v31 = v35[764];
  v5 = v35[761];
  OS_dispatch_semaphore.signal()();

  v6 = *(v35[704] + 8);
  v7 = v35[704];

  return v6();
}

{
  v62 = v0;
  v1 = v0[818];
  v36 = v0[816];
  v42 = v0[783];
  v41 = v0[782];
  v40 = v0[781];
  v39 = v0[780];
  v38 = v0[779];
  v37 = v0[778];
  v43 = v0[777];
  v0[704] = v0;

  v44 = *(v37 + 8);
  v44(v38, v43);
  v44(v39, v43);
  v44(v40, v43);
  v44(v41, v43);
  v44(v42, v43);
  v47 = v0[828];
  v2 = v0[764];
  v45 = v0[763];
  v46 = v0[762];
  swift_errorRetain();
  v0[710] = v47;
  v3 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v45 + 16))(v2, v3, v46);
  swift_errorRetain();
  v48 = swift_allocObject();
  *(v48 + 16) = v47;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v56 = static os_log_type_t.error.getter();
  v51 = swift_allocObject();
  *(v51 + 16) = 64;
  v52 = swift_allocObject();
  *(v52 + 16) = 8;
  v49 = swift_allocObject();
  *(v49 + 16) = partial apply for implicit closure #1 in closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  *(v49 + 24) = v48;
  v50 = swift_allocObject();
  *(v50 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v50 + 24) = v49;
  v53 = swift_allocObject();
  *(v53 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v53 + 24) = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v54 = v4;

  *v54 = closure #1 in OSLogArguments.append(_:)partial apply;
  v54[1] = v51;

  v54[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v54[3] = v52;

  v54[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v54[5] = v53;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v56))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v33 = createStorage<A>(capacity:type:)(1);
    v34 = createStorage<A>(capacity:type:)(0);
    v57 = buf;
    v58 = v33;
    v59 = v34;
    serialize(_:at:)(2, &v57);
    serialize(_:at:)(1, &v57);
    v60 = closure #1 in OSLogArguments.append(_:)partial apply;
    v61 = v51;
    closure #1 in osLogInternal(_:log:type:)(&v60, &v57, &v58, &v59);
    v60 = closure #1 in OSLogArguments.append(_:)partial apply;
    v61 = v52;
    closure #1 in osLogInternal(_:log:type:)(&v60, &v57, &v58, &v59);
    v60 = closure #1 in OSLogArguments.append(_:)partial apply;
    v61 = v53;
    closure #1 in osLogInternal(_:log:type:)(&v60, &v57, &v58, &v59);
    _os_log_impl(&_mh_execute_header, oslog, v56, "Failed to train model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v33);
    destroyStorage<A>(_:count:)(v34);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v10 = v35[764];
  v11 = v35[762];
  v9 = v35[763];

  (*(v9 + 8))(v10, v11);

  v12 = v35[787];
  v13 = v35[785];
  v14 = v35[783];
  v15 = v35[782];
  v16 = v35[781];
  v17 = v35[780];
  v18 = v35[779];
  v19 = v35[776];
  v20 = v35[775];
  v21 = v35[774];
  v22 = v35[773];
  v23 = v35[772];
  v24 = v35[771];
  v25 = v35[770];
  v26 = v35[769];
  v27 = v35[768];
  v28 = v35[767];
  v29 = v35[766];
  v30 = v35[765];
  v31 = v35[764];
  v5 = v35[761];
  OS_dispatch_semaphore.signal()();

  v6 = *(v35[704] + 8);
  v7 = v35[704];

  return v6();
}

{
  v62 = v0;
  v1 = v0[818];
  v36 = v0[816];
  v42 = v0[783];
  v41 = v0[782];
  v40 = v0[781];
  v39 = v0[780];
  v38 = v0[779];
  v37 = v0[778];
  v43 = v0[777];
  v0[704] = v0;

  v44 = *(v37 + 8);
  v44(v38, v43);
  v44(v39, v43);
  v44(v40, v43);
  v44(v41, v43);
  v44(v42, v43);
  v47 = v0[830];
  v2 = v0[764];
  v45 = v0[763];
  v46 = v0[762];
  swift_errorRetain();
  v0[710] = v47;
  v3 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v45 + 16))(v2, v3, v46);
  swift_errorRetain();
  v48 = swift_allocObject();
  *(v48 + 16) = v47;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v56 = static os_log_type_t.error.getter();
  v51 = swift_allocObject();
  *(v51 + 16) = 64;
  v52 = swift_allocObject();
  *(v52 + 16) = 8;
  v49 = swift_allocObject();
  *(v49 + 16) = partial apply for implicit closure #1 in closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  *(v49 + 24) = v48;
  v50 = swift_allocObject();
  *(v50 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v50 + 24) = v49;
  v53 = swift_allocObject();
  *(v53 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v53 + 24) = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v54 = v4;

  *v54 = closure #1 in OSLogArguments.append(_:)partial apply;
  v54[1] = v51;

  v54[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v54[3] = v52;

  v54[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v54[5] = v53;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v56))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v33 = createStorage<A>(capacity:type:)(1);
    v34 = createStorage<A>(capacity:type:)(0);
    v57 = buf;
    v58 = v33;
    v59 = v34;
    serialize(_:at:)(2, &v57);
    serialize(_:at:)(1, &v57);
    v60 = closure #1 in OSLogArguments.append(_:)partial apply;
    v61 = v51;
    closure #1 in osLogInternal(_:log:type:)(&v60, &v57, &v58, &v59);
    v60 = closure #1 in OSLogArguments.append(_:)partial apply;
    v61 = v52;
    closure #1 in osLogInternal(_:log:type:)(&v60, &v57, &v58, &v59);
    v60 = closure #1 in OSLogArguments.append(_:)partial apply;
    v61 = v53;
    closure #1 in osLogInternal(_:log:type:)(&v60, &v57, &v58, &v59);
    _os_log_impl(&_mh_execute_header, oslog, v56, "Failed to train model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v33);
    destroyStorage<A>(_:count:)(v34);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v10 = v35[764];
  v11 = v35[762];
  v9 = v35[763];

  (*(v9 + 8))(v10, v11);

  v12 = v35[787];
  v13 = v35[785];
  v14 = v35[783];
  v15 = v35[782];
  v16 = v35[781];
  v17 = v35[780];
  v18 = v35[779];
  v19 = v35[776];
  v20 = v35[775];
  v21 = v35[774];
  v22 = v35[773];
  v23 = v35[772];
  v24 = v35[771];
  v25 = v35[770];
  v26 = v35[769];
  v27 = v35[768];
  v28 = v35[767];
  v29 = v35[766];
  v30 = v35[765];
  v31 = v35[764];
  v5 = v35[761];
  OS_dispatch_semaphore.signal()();

  v6 = *(v35[704] + 8);
  v7 = v35[704];

  return v6();
}

{
  v62 = v0;
  v1 = v0[818];
  v36 = v0[816];
  v42 = v0[783];
  v41 = v0[782];
  v40 = v0[781];
  v39 = v0[780];
  v38 = v0[779];
  v37 = v0[778];
  v43 = v0[777];
  v0[704] = v0;

  v44 = *(v37 + 8);
  v44(v38, v43);
  v44(v39, v43);
  v44(v40, v43);
  v44(v41, v43);
  v44(v42, v43);
  v47 = v0[832];
  v2 = v0[764];
  v45 = v0[763];
  v46 = v0[762];
  swift_errorRetain();
  v0[710] = v47;
  v3 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v45 + 16))(v2, v3, v46);
  swift_errorRetain();
  v48 = swift_allocObject();
  *(v48 + 16) = v47;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v56 = static os_log_type_t.error.getter();
  v51 = swift_allocObject();
  *(v51 + 16) = 64;
  v52 = swift_allocObject();
  *(v52 + 16) = 8;
  v49 = swift_allocObject();
  *(v49 + 16) = partial apply for implicit closure #1 in closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  *(v49 + 24) = v48;
  v50 = swift_allocObject();
  *(v50 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v50 + 24) = v49;
  v53 = swift_allocObject();
  *(v53 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v53 + 24) = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v54 = v4;

  *v54 = closure #1 in OSLogArguments.append(_:)partial apply;
  v54[1] = v51;

  v54[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v54[3] = v52;

  v54[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v54[5] = v53;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v56))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v33 = createStorage<A>(capacity:type:)(1);
    v34 = createStorage<A>(capacity:type:)(0);
    v57 = buf;
    v58 = v33;
    v59 = v34;
    serialize(_:at:)(2, &v57);
    serialize(_:at:)(1, &v57);
    v60 = closure #1 in OSLogArguments.append(_:)partial apply;
    v61 = v51;
    closure #1 in osLogInternal(_:log:type:)(&v60, &v57, &v58, &v59);
    v60 = closure #1 in OSLogArguments.append(_:)partial apply;
    v61 = v52;
    closure #1 in osLogInternal(_:log:type:)(&v60, &v57, &v58, &v59);
    v60 = closure #1 in OSLogArguments.append(_:)partial apply;
    v61 = v53;
    closure #1 in osLogInternal(_:log:type:)(&v60, &v57, &v58, &v59);
    _os_log_impl(&_mh_execute_header, oslog, v56, "Failed to train model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v33);
    destroyStorage<A>(_:count:)(v34);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v10 = v35[764];
  v11 = v35[762];
  v9 = v35[763];

  (*(v9 + 8))(v10, v11);

  v12 = v35[787];
  v13 = v35[785];
  v14 = v35[783];
  v15 = v35[782];
  v16 = v35[781];
  v17 = v35[780];
  v18 = v35[779];
  v19 = v35[776];
  v20 = v35[775];
  v21 = v35[774];
  v22 = v35[773];
  v23 = v35[772];
  v24 = v35[771];
  v25 = v35[770];
  v26 = v35[769];
  v27 = v35[768];
  v28 = v35[767];
  v29 = v35[766];
  v30 = v35[765];
  v31 = v35[764];
  v5 = v35[761];
  OS_dispatch_semaphore.signal()();

  v6 = *(v35[704] + 8);
  v7 = v35[704];

  return v6();
}

{
  v62 = v0;
  v1 = v0[818];
  v36 = v0[816];
  v42 = v0[783];
  v41 = v0[782];
  v40 = v0[781];
  v39 = v0[780];
  v38 = v0[779];
  v37 = v0[778];
  v43 = v0[777];
  v0[704] = v0;

  v44 = *(v37 + 8);
  v44(v38, v43);
  v44(v39, v43);
  v44(v40, v43);
  v44(v41, v43);
  v44(v42, v43);
  v47 = v0[834];
  v2 = v0[764];
  v45 = v0[763];
  v46 = v0[762];
  swift_errorRetain();
  v0[710] = v47;
  v3 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v45 + 16))(v2, v3, v46);
  swift_errorRetain();
  v48 = swift_allocObject();
  *(v48 + 16) = v47;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v56 = static os_log_type_t.error.getter();
  v51 = swift_allocObject();
  *(v51 + 16) = 64;
  v52 = swift_allocObject();
  *(v52 + 16) = 8;
  v49 = swift_allocObject();
  *(v49 + 16) = partial apply for implicit closure #1 in closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  *(v49 + 24) = v48;
  v50 = swift_allocObject();
  *(v50 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v50 + 24) = v49;
  v53 = swift_allocObject();
  *(v53 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v53 + 24) = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v54 = v4;

  *v54 = closure #1 in OSLogArguments.append(_:)partial apply;
  v54[1] = v51;

  v54[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v54[3] = v52;

  v54[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v54[5] = v53;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v56))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v33 = createStorage<A>(capacity:type:)(1);
    v34 = createStorage<A>(capacity:type:)(0);
    v57 = buf;
    v58 = v33;
    v59 = v34;
    serialize(_:at:)(2, &v57);
    serialize(_:at:)(1, &v57);
    v60 = closure #1 in OSLogArguments.append(_:)partial apply;
    v61 = v51;
    closure #1 in osLogInternal(_:log:type:)(&v60, &v57, &v58, &v59);
    v60 = closure #1 in OSLogArguments.append(_:)partial apply;
    v61 = v52;
    closure #1 in osLogInternal(_:log:type:)(&v60, &v57, &v58, &v59);
    v60 = closure #1 in OSLogArguments.append(_:)partial apply;
    v61 = v53;
    closure #1 in osLogInternal(_:log:type:)(&v60, &v57, &v58, &v59);
    _os_log_impl(&_mh_execute_header, oslog, v56, "Failed to train model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v33);
    destroyStorage<A>(_:count:)(v34);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v10 = v35[764];
  v11 = v35[762];
  v9 = v35[763];

  (*(v9 + 8))(v10, v11);

  v12 = v35[787];
  v13 = v35[785];
  v14 = v35[783];
  v15 = v35[782];
  v16 = v35[781];
  v17 = v35[780];
  v18 = v35[779];
  v19 = v35[776];
  v20 = v35[775];
  v21 = v35[774];
  v22 = v35[773];
  v23 = v35[772];
  v24 = v35[771];
  v25 = v35[770];
  v26 = v35[769];
  v27 = v35[768];
  v28 = v35[767];
  v29 = v35[766];
  v30 = v35[765];
  v31 = v35[764];
  v5 = v35[761];
  OS_dispatch_semaphore.signal()();

  v6 = *(v35[704] + 8);
  v7 = v35[704];

  return v6();
}