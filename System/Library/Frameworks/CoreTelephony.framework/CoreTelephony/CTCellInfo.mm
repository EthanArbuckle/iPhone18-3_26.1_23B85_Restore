@interface CTCellInfo
- (CTCellInfo)initWithCoder:(id)coder;
- (NSString)ct_shortDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTCellInfo

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  legacyInfo = [(CTCellInfo *)self legacyInfo];
  [v3 appendFormat:@", info=%@", legacyInfo];

  return v3;
}

- (NSString)ct_shortDescription
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_legacyInfo, "count")}];
  legacyInfo = self->_legacyInfo;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__CTCellInfo_CTXPCLogging__ct_shortDescription__block_invoke;
  v10[3] = &unk_1E6A445A8;
  v11 = v3;
  v5 = v3;
  [(NSArray *)legacyInfo enumerateObjectsUsingBlock:v10];
  v6 = MEMORY[0x1E696AEC0];
  ct_shortName = [(CTCellInfo *)self ct_shortName];
  v8 = [v6 stringWithFormat:@"<%@ info=%@>", ct_shortName, v5];

  return v8;
}

void __47__CTCellInfo_CTXPCLogging__ct_shortDescription__block_invoke(uint64_t a1, void *a2)
{
  v70 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v70;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 32);
    v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
    v8 = [v5 objectForKeyedSubscript:@"kCTCellMonitorBandInfo"];
    [v7 setObject:v8 forKeyedSubscript:@"band"];

    v9 = [v5 objectForKeyedSubscript:@"kCTCellMonitorBandwidth"];
    [v7 setObject:v9 forKeyedSubscript:@"bandwidth"];

    v10 = [v5 objectForKeyedSubscript:@"kCTCellMonitorCSGIndication"];
    [v7 setObject:v10 forKeyedSubscript:@"csgIndication"];

    v11 = [v5 objectForKeyedSubscript:@"kCTCellMonitorCellId"];
    [v7 setObject:v11 forKeyedSubscript:@"cellID"];

    v12 = [v5 objectForKeyedSubscript:@"kCTCellMonitorCellRadioAccessTechnology"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (v14)
    {
      v15 = v14;
      if ([v15 isEqualToString:@"kCTCellMonitorRadioAccessTechnologyGSM"])
      {
        v16 = @"GSM";
      }

      else if ([v15 isEqualToString:@"kCTCellMonitorRadioAccessTechnologyUMTS"])
      {
        v16 = @"UMTS";
      }

      else if ([v15 isEqualToString:@"kCTCellMonitorRadioAccessTechnologyUTRAN"])
      {
        v16 = @"UTRAN";
      }

      else if ([v15 isEqualToString:@"kCTCellMonitorRadioAccessTechnologyCDMA1x"])
      {
        v16 = @"CDMA1x";
      }

      else if ([v15 isEqualToString:@"kCTCellMonitorRadioAccessTechnologyCDMAEVDO"])
      {
        v16 = @"CDMAEVDO";
      }

      else if ([v15 isEqualToString:@"kCTCellMonitorRadioAccessTechnologyCDMAHybrid"])
      {
        v16 = @"CDMAHybrid";
      }

      else if ([v15 isEqualToString:@"kCTCellMonitorRadioAccessTechnologyLTE"])
      {
        v16 = @"LTE";
      }

      else if ([v15 isEqualToString:@"kCTCellMonitorRadioAccessTechnologyTDSCDMA"])
      {
        v16 = @"TDSCDMA";
      }

      else if ([v15 isEqualToString:@"kCTCellMonitorRadioAccessTechnologyNR"])
      {
        v16 = @"NR";
      }

      else if ([v15 isEqualToString:@"kCTCellMonitorRadioAccessTechnologyUnknown"])
      {
        v16 = @"Unknown";
      }

      else if ([v15 isEqualToString:@"kCTCellMonitorRadioAccessTechnologyUnknownTech4"])
      {
        v16 = @"UnknownTech4";
      }

      else if ([v15 isEqualToString:@"kCTCellMonitorRadioAccessTechnologyUnknownTech5"])
      {
        v16 = @"UnknownTech5";
      }

      else if ([v15 isEqualToString:@"kCTCellMonitorRadioAccessTechnologyUnknownTech6"])
      {
        v16 = @"UnknownTech6";
      }

      else if ([v15 isEqualToString:@"kCTCellMonitorRadioAccessTechnologyUnknownTech7"])
      {
        v16 = @"UnknownTech7";
      }

      else
      {
        v16 = 0;
      }

      [v7 setObject:v16 forKeyedSubscript:@"rat"];
    }

    v17 = [v5 objectForKeyedSubscript:@"kCTCellMonitorCellType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    if (v19)
    {
      v20 = v19;
      if ([v20 isEqualToString:@"kCTCellMonitorCellTypeServing"])
      {
        v21 = @"serving";
      }

      else if ([v20 isEqualToString:@"kCTCellMonitorCellTypeNeighbor"])
      {
        v21 = @"neighbor";
      }

      else if ([v20 isEqualToString:@"kCTCellMonitorCellTypeDetected"])
      {
        v21 = @"detected";
      }

      else
      {
        v21 = 0;
      }

      [v7 setObject:v21 forKeyedSubscript:@"type"];
    }

    v22 = [v5 objectForKeyedSubscript:@"kCTCellMonitorCsgId"];
    [v7 setObject:v22 forKeyedSubscript:@"csgID"];

    v23 = [v5 objectForKeyedSubscript:@"kCTCellMonitorMCC"];
    [v7 setObject:v23 forKeyedSubscript:@"mcc"];

    v24 = [v5 objectForKeyedSubscript:@"kCTCellMonitorMNC"];
    [v7 setObject:v24 forKeyedSubscript:@"mnc"];

    v25 = [v5 objectForKeyedSubscript:@"kCTCellMonitorPID"];
    [v7 setObject:v25 forKeyedSubscript:@"pid"];

    v26 = [v5 objectForKeyedSubscript:@"kCTCellMonitorPMax"];
    [v7 setObject:v26 forKeyedSubscript:@"pMax"];

    v27 = [v5 objectForKeyedSubscript:@"kCTCellMonitorRSRP"];
    [v7 setObject:v27 forKeyedSubscript:@"rsrp"];

    v28 = [v5 objectForKeyedSubscript:@"kCTCellMonitorRSRQ"];
    [v7 setObject:v28 forKeyedSubscript:@"rsrq"];

    v29 = [v5 objectForKeyedSubscript:@"kCTCellMonitorSectorLat"];
    [v7 setObject:v29 forKeyedSubscript:@"sectorLat"];

    v30 = [v5 objectForKeyedSubscript:@"kCTCellMonitorSectorLong"];
    [v7 setObject:v30 forKeyedSubscript:@"sectorLon"];

    v31 = [v5 objectForKeyedSubscript:@"kCTCellMonitorTAC"];
    [v7 setObject:v31 forKeyedSubscript:@"tac"];

    v32 = [v5 objectForKeyedSubscript:@"kCTCellMonitorThroughput"];
    [v7 setObject:v32 forKeyedSubscript:@"throughput"];

    v33 = [v5 objectForKeyedSubscript:@"kCTCellMonitorUARFCN"];
    [v7 setObject:v33 forKeyedSubscript:@"uarfcn"];

    v34 = [v5 objectForKeyedSubscript:@"kCTCellMonitorARFCN"];
    [v7 setObject:v34 forKeyedSubscript:@"arfcn"];

    v35 = [v5 objectForKeyedSubscript:@"kCTCellMonitorRSSI"];
    [v7 setObject:v35 forKeyedSubscript:@"rssi"];

    v36 = [v5 objectForKeyedSubscript:@"kCTCellMonitorPSC"];
    [v7 setObject:v36 forKeyedSubscript:@"psc"];

    v37 = [v5 objectForKeyedSubscript:@"kCTCellMonitorRSCP"];
    [v7 setObject:v37 forKeyedSubscript:@"rscp"];

    v38 = [v5 objectForKeyedSubscript:@"kCTCellMonitorECN0"];
    [v7 setObject:v38 forKeyedSubscript:@"ecn0"];

    v39 = [v5 objectForKeyedSubscript:@"kCTCellMonitorSCN"];
    [v7 setObject:v39 forKeyedSubscript:@"scn"];

    v40 = [v5 objectForKeyedSubscript:@"kCTCellMonitorDeploymentType"];
    [v7 setObject:v40 forKeyedSubscript:@"deploymentType"];

    v41 = [v5 objectForKeyedSubscript:@"kCTCellMonitorPCI"];
    [v7 setObject:v41 forKeyedSubscript:@"pci"];

    v42 = [v5 objectForKeyedSubscript:@"kCTCellMonitorSNR"];
    [v7 setObject:v42 forKeyedSubscript:@"snr"];

    v43 = [v5 objectForKeyedSubscript:@"kCTCellMonitorNeighborType"];
    [v7 setObject:v43 forKeyedSubscript:@"neighborType"];

    v44 = [v5 objectForKeyedSubscript:@"kCTCellMonitorBWPSupport"];
    [v7 setObject:v44 forKeyedSubscript:@"bwpSupport"];

    v45 = [v5 objectForKeyedSubscript:@"kCTCellMonitorNRARFCN"];
    [v7 setObject:v45 forKeyedSubscript:@"nrarfcn"];

    v46 = [v5 objectForKeyedSubscript:@"kCTCellMonitorGSCN"];
    [v7 setObject:v46 forKeyedSubscript:@"gscn"];

    v47 = [v5 objectForKeyedSubscript:@"kCTCellMonitorSCS"];
    [v7 setObject:v47 forKeyedSubscript:@"scs"];

    v48 = [v5 objectForKeyedSubscript:@"kCTCellMonitorIsSA"];
    [v7 setObject:v48 forKeyedSubscript:@"isSA"];

    v49 = [v5 objectForKeyedSubscript:@"kCTCellMonitorBandClass"];
    [v7 setObject:v49 forKeyedSubscript:@"bandClass"];

    v50 = [v5 objectForKeyedSubscript:@"kCTCellMonitorChannelNumber"];
    [v7 setObject:v50 forKeyedSubscript:@"channelNumber"];

    v51 = [v5 objectForKeyedSubscript:@"kCTCellMonitorPNOffset"];
    [v7 setObject:v51 forKeyedSubscript:@"pnOffset"];

    v52 = [v5 objectForKeyedSubscript:@"kCTCellMonitorDerivedMCC"];
    [v7 setObject:v52 forKeyedSubscript:@"derivedMCC"];

    v53 = [v5 objectForKeyedSubscript:@"kCTCellMonitorEcio"];
    [v7 setObject:v53 forKeyedSubscript:@"ecio"];

    v54 = [v5 objectForKeyedSubscript:@"kCTCellMonitorEcioFiltered"];
    [v7 setObject:v54 forKeyedSubscript:@"ecioFiltered"];

    v55 = [v5 objectForKeyedSubscript:@"kCTCellMonitorRxAGC"];
    [v7 setObject:v55 forKeyedSubscript:@"rxagc"];

    v56 = [v5 objectForKeyedSubscript:@"kCTCellMonitorRefEcio"];
    [v7 setObject:v56 forKeyedSubscript:@"refEcio"];

    v57 = [v5 objectForKeyedSubscript:@"kCTCellMonitorRefPn"];
    [v7 setObject:v57 forKeyedSubscript:@"refPn"];

    v58 = [v5 objectForKeyedSubscript:@"kCTCellMonitorNgbrPn"];
    [v7 setObject:v58 forKeyedSubscript:@"ngbrPn"];

    v59 = [v5 objectForKeyedSubscript:@"kCTCellMonitorSID"];
    [v7 setObject:v59 forKeyedSubscript:@"sid"];

    v60 = [v5 objectForKeyedSubscript:@"kCTCellMonitorNID"];
    [v7 setObject:v60 forKeyedSubscript:@"nid"];

    v61 = [v5 objectForKeyedSubscript:@"kCTCellMonitorBaseStationId"];
    [v7 setObject:v61 forKeyedSubscript:@"baseStationID"];

    v62 = [v5 objectForKeyedSubscript:@"kCTCellMonitorBaseStationLat"];
    [v7 setObject:v62 forKeyedSubscript:@"baseStationLat"];

    v63 = [v5 objectForKeyedSubscript:@"kCTCellMonitorBaseStationLong"];
    [v7 setObject:v63 forKeyedSubscript:@"baseStationLon"];

    v64 = [v5 objectForKeyedSubscript:@"kCTCellMonitorZoneId"];
    [v7 setObject:v64 forKeyedSubscript:@"zoneID"];

    v65 = [v5 objectForKeyedSubscript:@"kCTCellMonitorLtmOffset"];
    [v7 setObject:v65 forKeyedSubscript:@"ltmOffset"];

    v66 = [v5 objectForKeyedSubscript:@"kCTCellMonitorDayLightSaving"];
    [v7 setObject:v66 forKeyedSubscript:@"daylightSaving"];

    v67 = [v5 objectForKeyedSubscript:@"kCTCellMonitorSectorId"];
    [v7 setObject:v67 forKeyedSubscript:@"sectorID"];

    v68 = [v5 objectForKeyedSubscript:@"kCTCellMonitorLAC"];
    [v7 setObject:v68 forKeyedSubscript:@"lac"];

    v69 = [v7 copy];
    [v6 addObject:v69];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  legacyInfo = [(CTCellInfo *)self legacyInfo];
  v6 = [legacyInfo copy];
  [v4 setLegacyInfo:v6];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  legacyInfo = [(CTCellInfo *)self legacyInfo];
  [coderCopy encodeObject:legacyInfo forKey:@"info"];
}

- (CTCellInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = CTCellInfo;
  v5 = [(CTCellInfo *)&v16 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v6 setWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"info"];
    legacyInfo = v5->_legacyInfo;
    v5->_legacyInfo = v13;
  }

  return v5;
}

@end