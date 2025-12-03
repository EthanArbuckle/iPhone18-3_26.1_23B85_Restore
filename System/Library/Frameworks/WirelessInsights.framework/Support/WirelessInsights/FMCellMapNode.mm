@interface FMCellMapNode
- (FMCellMapNode)initWithGCI:(id)i rat:(signed __int16)rat frequency:(unsigned int)frequency cellIdentity:(unint64_t)identity tac:(unsigned int)tac mcc:(unsigned int)mcc mnc:(unsigned int)mnc band:(unsigned int)self0 pci:(unsigned int)self1 dsDuration:(unsigned int)self2 totalDuration:(unsigned int)self3 dlCongestionCount:(unsigned int)self4 ulCongestionCount:(unsigned int)self5 l1MitigationCount:(unsigned int)self6 weight:(unsigned int)self7 scs:(id)self8;
@end

@implementation FMCellMapNode

- (FMCellMapNode)initWithGCI:(id)i rat:(signed __int16)rat frequency:(unsigned int)frequency cellIdentity:(unint64_t)identity tac:(unsigned int)tac mcc:(unsigned int)mcc mnc:(unsigned int)mnc band:(unsigned int)self0 pci:(unsigned int)self1 dsDuration:(unsigned int)self2 totalDuration:(unsigned int)self3 dlCongestionCount:(unsigned int)self4 ulCongestionCount:(unsigned int)self5 l1MitigationCount:(unsigned int)self6 weight:(unsigned int)self7 scs:(id)self8
{
  iCopy = i;
  scsCopy = scs;
  v31.receiver = self;
  v31.super_class = FMCellMapNode;
  v20 = [(FMCellMapNode *)&v31 init];
  gci = v20->_gci;
  v20->_gci = iCopy;
  v22 = iCopy;

  v20->_rat = rat;
  v20->_frequency = frequency;
  v20->_tac = tac;
  v20->_mcc = mcc;
  v20->_mnc = mnc;
  v20->_band = band;
  v20->_pci = pci;
  v20->_dsDuration = duration;
  v20->_totalDuration = totalDuration;
  v20->_dlCongestionCount = count;
  v20->_ulCongestionCount = congestionCount;
  v20->_l1MitigationCount = mitigationCount;
  v20->_weight = weight;
  scs = v20->_scs;
  v20->_cellIdentity = identity;
  v20->_scs = scsCopy;

  return v20;
}

@end