@interface FMCellMapNode
- (FMCellMapNode)initWithGCI:(id)a3 rat:(signed __int16)a4 frequency:(unsigned int)a5 cellIdentity:(unint64_t)a6 tac:(unsigned int)a7 mcc:(unsigned int)a8 mnc:(unsigned int)a9 band:(unsigned int)a10 pci:(unsigned int)a11 dsDuration:(unsigned int)a12 totalDuration:(unsigned int)a13 dlCongestionCount:(unsigned int)a14 ulCongestionCount:(unsigned int)a15 l1MitigationCount:(unsigned int)a16 weight:(unsigned int)a17 scs:(id)a18;
@end

@implementation FMCellMapNode

- (FMCellMapNode)initWithGCI:(id)a3 rat:(signed __int16)a4 frequency:(unsigned int)a5 cellIdentity:(unint64_t)a6 tac:(unsigned int)a7 mcc:(unsigned int)a8 mnc:(unsigned int)a9 band:(unsigned int)a10 pci:(unsigned int)a11 dsDuration:(unsigned int)a12 totalDuration:(unsigned int)a13 dlCongestionCount:(unsigned int)a14 ulCongestionCount:(unsigned int)a15 l1MitigationCount:(unsigned int)a16 weight:(unsigned int)a17 scs:(id)a18
{
  v19 = a3;
  v30 = a18;
  v31.receiver = self;
  v31.super_class = FMCellMapNode;
  v20 = [(FMCellMapNode *)&v31 init];
  gci = v20->_gci;
  v20->_gci = v19;
  v22 = v19;

  v20->_rat = a4;
  v20->_frequency = a5;
  v20->_tac = a7;
  v20->_mcc = a8;
  v20->_mnc = a9;
  v20->_band = a10;
  v20->_pci = a11;
  v20->_dsDuration = a12;
  v20->_totalDuration = a13;
  v20->_dlCongestionCount = a14;
  v20->_ulCongestionCount = a15;
  v20->_l1MitigationCount = a16;
  v20->_weight = a17;
  scs = v20->_scs;
  v20->_cellIdentity = a6;
  v20->_scs = v30;

  return v20;
}

@end