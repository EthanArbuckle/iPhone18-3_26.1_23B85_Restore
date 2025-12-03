@interface CTDataStatus
- (BOOL)newRadioCoverage;
- (BOOL)newRadioMmWaveDataBearer;
- (BOOL)newRadioNsaCoverage;
- (BOOL)newRadioSaCoverage;
- (BOOL)newRadioSub6DataBearer;
- (CTDataStatus)initWithCoder:(id)coder;
- (id)copyBasic;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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
    indicatorOverride = [(CTDataStatus *)self indicatorOverride];
    v3 = 0xF0100u >> indicatorOverride;
    if (indicatorOverride >= 0x14)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  attached = [(CTDataStatus *)self attached];
  if ([(CTDataStatus *)self dataSim])
  {
    attached |= 0x40u;
  }

  if ([(CTDataStatus *)self inHomeCountry])
  {
    attached |= 4u;
  }

  if ([(CTDataStatus *)self roamAllowed])
  {
    attached |= 8u;
  }

  if ([(CTDataStatus *)self dataPlanSignalingReductionOverride])
  {
    attached |= 0x80u;
  }

  if ([(CTDataStatus *)self cellularDataPossible])
  {
    v5 = attached | 0x10;
  }

  else
  {
    v5 = attached;
  }

  [coderCopy encodeInt:v5 forKey:@"DataStatusFlags"];
  [coderCopy encodeInt:-[CTDataStatus indicator](self forKey:{"indicator"), @"indicator"}];
  [coderCopy encodeInt:-[CTDataStatus indicatorOverride](self forKey:{"indicatorOverride"), @"indicatorOverride"}];
  [coderCopy encodeInt:-[CTDataStatus radioTechnology](self forKey:{"radioTechnology"), @"radioTechnology"}];
  [coderCopy encodeInt:-[CTDataStatus dataMode](self forKey:{"dataMode"), @"dataMode"}];
  [coderCopy encodeInt:-[CTDataStatus dataBearerTechnology](self forKey:{"dataBearerTechnology"), @"dataBearerTechnology"}];
  [coderCopy encodeInt:-[CTDataStatus dataBearerSoMask](self forKey:{"dataBearerSoMask"), @"dataBearerSoMask"}];
  [coderCopy encodeInt:-[CTDataStatus activeContexts](self forKey:{"activeContexts"), @"activeContexts"}];
  [coderCopy encodeInt:-[CTDataStatus totalActiveContexts](self forKey:{"totalActiveContexts"), @"totalActiveContexts"}];
  [coderCopy encodeInt:-[CTDataStatus reason](self forKey:{"reason"), @"reason"}];
}

- (CTDataStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CTDataStatus;
  v5 = [(CTDataStatus *)&v8 init];
  if (v5)
  {
    v6 = [coderCopy decodeIntForKey:@"DataStatusFlags"];
    v5->_attached = v6 & 1;
    v5->_dataPlanSignalingReductionOverride = v6 < 0;
    v5->_inHomeCountry = (v6 & 4) != 0;
    v5->_roamAllowed = (v6 & 8) != 0;
    v5->_cellularDataPossible = (v6 & 0x10) != 0;
    v5->_dataSim = (v6 & 0x40) != 0;
    v5->_indicator = [coderCopy decodeIntForKey:@"indicator"];
    v5->_indicatorOverride = [coderCopy decodeIntForKey:@"indicatorOverride"];
    v5->_radioTechnology = [coderCopy decodeIntForKey:@"radioTechnology"];
    v5->_dataMode = [coderCopy decodeIntForKey:@"dataMode"];
    v5->_dataBearerTechnology = [coderCopy decodeIntForKey:@"dataBearerTechnology"];
    v5->_dataBearerSoMask = [coderCopy decodeIntForKey:@"dataBearerSoMask"];
    v5->_activeContexts = [coderCopy decodeIntForKey:@"activeContexts"];
    v5->_totalActiveContexts = [coderCopy decodeIntForKey:@"totalActiveContexts"];
    v5->_reason = [coderCopy decodeIntForKey:@"reason"];
  }

  return v5;
}

- (BOOL)newRadioSaCoverage
{
  newRadioCoverage = [(CTDataStatus *)self newRadioCoverage];
  if (newRadioCoverage)
  {
    LOBYTE(newRadioCoverage) = [(CTDataStatus *)self radioTechnology]== 10;
  }

  return newRadioCoverage;
}

- (BOOL)newRadioNsaCoverage
{
  newRadioCoverage = [(CTDataStatus *)self newRadioCoverage];
  if (newRadioCoverage)
  {
    LOBYTE(newRadioCoverage) = ![(CTDataStatus *)self newRadioSaCoverage];
  }

  return newRadioCoverage;
}

- (BOOL)newRadioMmWaveDataBearer
{
  newRadioDataBearer = [(CTDataStatus *)self newRadioDataBearer];
  if (newRadioDataBearer)
  {
    return ([(CTDataStatus *)self dataBearerSoMask]>> 3) & 1;
  }

  return newRadioDataBearer;
}

- (BOOL)newRadioSub6DataBearer
{
  newRadioDataBearer = [(CTDataStatus *)self newRadioDataBearer];
  if (newRadioDataBearer)
  {
    return ([(CTDataStatus *)self dataBearerSoMask]>> 2) & 1;
  }

  return newRadioDataBearer;
}

@end