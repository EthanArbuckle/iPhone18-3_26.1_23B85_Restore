@interface CTDataStatus
- (BOOL)newRadioCoverage;
- (BOOL)newRadioMmWaveDataBearer;
- (BOOL)newRadioNsaCoverage;
- (BOOL)newRadioSaCoverage;
- (BOOL)newRadioSub6DataBearer;
- (CTDataStatus)initWithCoder:(id)a3;
- (id)copyBasic;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTDataStatus

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", attached=%d", -[CTDataStatus attached](self, "attached")];
  [v3 appendFormat:@", dataSim=%d", -[CTDataStatus dataSim](self, "dataSim")];
  [v3 appendFormat:@", indicator=%s (%d)", indicatorToString(-[CTDataStatus indicator](self, "indicator")), -[CTDataStatus indicator](self, "indicator")];
  [v3 appendFormat:@", indicatorOverride=%s (%d)", indicatorToString(-[CTDataStatus indicatorOverride](self, "indicatorOverride")), -[CTDataStatus indicatorOverride](self, "indicatorOverride")];
  [v3 appendFormat:@", roamAllowed=%d", -[CTDataStatus roamAllowed](self, "roamAllowed")];
  [v3 appendFormat:@", radioTechnology=%s (%d)", wirelessAccessTechnologyToString(-[CTDataStatus radioTechnology](self, "radioTechnology")), -[CTDataStatus radioTechnology](self, "radioTechnology")];
  [v3 appendFormat:@", reg.dataMode=%s (%d)", dataModeToString(-[CTDataStatus dataMode](self, "dataMode")), -[CTDataStatus dataMode](self, "dataMode")];
  [v3 appendFormat:@", dataBearerTechnology=%s (%d)", dataBearerTechnologyToString(-[CTDataStatus dataBearerTechnology](self, "dataBearerTechnology")), -[CTDataStatus dataBearerTechnology](self, "dataBearerTechnology")];
  [v3 appendFormat:@", dataBearerSoMask=0x%x", -[CTDataStatus dataBearerSoMask](self, "dataBearerSoMask")];
  [v3 appendFormat:@", signalingReduction=%d", -[CTDataStatus dataPlanSignalingReductionOverride](self, "dataPlanSignalingReductionOverride")];
  [v3 appendFormat:@", cellularDataPossible=%d", -[CTDataStatus cellularDataPossible](self, "cellularDataPossible")];
  [v3 appendFormat:@", activeContexts=%d", -[CTDataStatus activeContexts](self, "activeContexts")];
  [v3 appendFormat:@", totalActiveContexts=%d", -[CTDataStatus totalActiveContexts](self, "totalActiveContexts")];
  [v3 appendFormat:@", inHomeCountry=%d", -[CTDataStatus inHomeCountry](self, "inHomeCountry")];
  [v3 appendFormat:@", newRadioCoverage=%d", -[CTDataStatus newRadioCoverage](self, "newRadioCoverage")];
  [v3 appendFormat:@", reason=%s (%d)", ctReasonToString(-[CTDataStatus reason](self, "reason")), -[CTDataStatus reason](self, "reason")];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)newRadioCoverage
{
  if ([(CTDataStatus *)self radioTechnology]== 10 || [(CTDataStatus *)self newRadioDataBearer]|| (v5 = [(CTDataStatus *)self indicator]- 8, v5 < 0xC) && ((0xF01u >> v5) & 1) != 0)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v6 = [(CTDataStatus *)self indicatorOverride];
    v3 = 0xF0100u >> v6;
    if (v6 >= 0x14)
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3 & 1;
}

- (id)copyBasic
{
  v3 = objc_opt_new();
  [v3 setAttached:{-[CTDataStatus attached](self, "attached")}];
  [v3 setHasIndicator:{-[CTDataStatus indicator](self, "indicator") != 0}];
  [v3 setInHomeCountry:{-[CTDataStatus inHomeCountry](self, "inHomeCountry")}];
  [v3 setRoamAllowed:{-[CTDataStatus roamAllowed](self, "roamAllowed")}];
  [v3 setCellularDataPossible:{-[CTDataStatus cellularDataPossible](self, "cellularDataPossible")}];
  [v3 setNewRadioCoverage:{-[CTDataStatus newRadioCoverage](self, "newRadioCoverage")}];
  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setAttached:{-[CTDataStatus attached](self, "attached")}];
  [v4 setDataSim:{-[CTDataStatus dataSim](self, "dataSim")}];
  [v4 setIndicator:{-[CTDataStatus indicator](self, "indicator")}];
  [v4 setIndicatorOverride:{-[CTDataStatus indicatorOverride](self, "indicatorOverride")}];
  [v4 setRoamAllowed:{-[CTDataStatus roamAllowed](self, "roamAllowed")}];
  [v4 setRadioTechnology:{-[CTDataStatus radioTechnology](self, "radioTechnology")}];
  [v4 setDataMode:{-[CTDataStatus dataMode](self, "dataMode")}];
  [v4 setDataBearerTechnology:{-[CTDataStatus dataBearerTechnology](self, "dataBearerTechnology")}];
  [v4 setDataBearerSoMask:{-[CTDataStatus dataBearerSoMask](self, "dataBearerSoMask")}];
  [v4 setDataPlanSignalingReductionOverride:{-[CTDataStatus dataPlanSignalingReductionOverride](self, "dataPlanSignalingReductionOverride")}];
  [v4 setCellularDataPossible:{-[CTDataStatus cellularDataPossible](self, "cellularDataPossible")}];
  [v4 setActiveContexts:{-[CTDataStatus activeContexts](self, "activeContexts")}];
  [v4 setTotalActiveContexts:{-[CTDataStatus totalActiveContexts](self, "totalActiveContexts")}];
  [v4 setInHomeCountry:{-[CTDataStatus inHomeCountry](self, "inHomeCountry")}];
  [v4 setReason:{-[CTDataStatus reason](self, "reason")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(CTDataStatus *)self attached];
  if ([(CTDataStatus *)self dataSim])
  {
    v4 |= 0x40u;
  }

  if ([(CTDataStatus *)self inHomeCountry])
  {
    v4 |= 4u;
  }

  if ([(CTDataStatus *)self roamAllowed])
  {
    v4 |= 8u;
  }

  if ([(CTDataStatus *)self dataPlanSignalingReductionOverride])
  {
    v4 |= 0x80u;
  }

  if ([(CTDataStatus *)self cellularDataPossible])
  {
    v5 = v4 | 0x10;
  }

  else
  {
    v5 = v4;
  }

  [v6 encodeInt:v5 forKey:@"DataStatusFlags"];
  [v6 encodeInt:-[CTDataStatus indicator](self forKey:{"indicator"), @"indicator"}];
  [v6 encodeInt:-[CTDataStatus indicatorOverride](self forKey:{"indicatorOverride"), @"indicatorOverride"}];
  [v6 encodeInt:-[CTDataStatus radioTechnology](self forKey:{"radioTechnology"), @"radioTechnology"}];
  [v6 encodeInt:-[CTDataStatus dataMode](self forKey:{"dataMode"), @"dataMode"}];
  [v6 encodeInt:-[CTDataStatus dataBearerTechnology](self forKey:{"dataBearerTechnology"), @"dataBearerTechnology"}];
  [v6 encodeInt:-[CTDataStatus dataBearerSoMask](self forKey:{"dataBearerSoMask"), @"dataBearerSoMask"}];
  [v6 encodeInt:-[CTDataStatus activeContexts](self forKey:{"activeContexts"), @"activeContexts"}];
  [v6 encodeInt:-[CTDataStatus totalActiveContexts](self forKey:{"totalActiveContexts"), @"totalActiveContexts"}];
  [v6 encodeInt:-[CTDataStatus reason](self forKey:{"reason"), @"reason"}];
}

- (CTDataStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CTDataStatus;
  v5 = [(CTDataStatus *)&v8 init];
  if (v5)
  {
    v6 = [v4 decodeIntForKey:@"DataStatusFlags"];
    v5->_attached = v6 & 1;
    v5->_dataPlanSignalingReductionOverride = v6 < 0;
    v5->_inHomeCountry = (v6 & 4) != 0;
    v5->_roamAllowed = (v6 & 8) != 0;
    v5->_cellularDataPossible = (v6 & 0x10) != 0;
    v5->_dataSim = (v6 & 0x40) != 0;
    v5->_indicator = [v4 decodeIntForKey:@"indicator"];
    v5->_indicatorOverride = [v4 decodeIntForKey:@"indicatorOverride"];
    v5->_radioTechnology = [v4 decodeIntForKey:@"radioTechnology"];
    v5->_dataMode = [v4 decodeIntForKey:@"dataMode"];
    v5->_dataBearerTechnology = [v4 decodeIntForKey:@"dataBearerTechnology"];
    v5->_dataBearerSoMask = [v4 decodeIntForKey:@"dataBearerSoMask"];
    v5->_activeContexts = [v4 decodeIntForKey:@"activeContexts"];
    v5->_totalActiveContexts = [v4 decodeIntForKey:@"totalActiveContexts"];
    v5->_reason = [v4 decodeIntForKey:@"reason"];
  }

  return v5;
}

- (BOOL)newRadioSaCoverage
{
  v3 = [(CTDataStatus *)self newRadioCoverage];
  if (v3)
  {
    LOBYTE(v3) = [(CTDataStatus *)self radioTechnology]== 10;
  }

  return v3;
}

- (BOOL)newRadioNsaCoverage
{
  v3 = [(CTDataStatus *)self newRadioCoverage];
  if (v3)
  {
    LOBYTE(v3) = ![(CTDataStatus *)self newRadioSaCoverage];
  }

  return v3;
}

- (BOOL)newRadioMmWaveDataBearer
{
  v3 = [(CTDataStatus *)self newRadioDataBearer];
  if (v3)
  {
    return ([(CTDataStatus *)self dataBearerSoMask]>> 3) & 1;
  }

  return v3;
}

- (BOOL)newRadioSub6DataBearer
{
  v3 = [(CTDataStatus *)self newRadioDataBearer];
  if (v3)
  {
    return ([(CTDataStatus *)self dataBearerSoMask]>> 2) & 1;
  }

  return v3;
}

@end