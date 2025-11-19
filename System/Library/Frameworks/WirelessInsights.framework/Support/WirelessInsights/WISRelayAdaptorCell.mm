@interface WISRelayAdaptorCell
- (WISRelayAdaptorCell)initWithMCC:(id)a3 mnc:(id)a4 rat:(id)a5 band:(id)a6 frequency:(id)a7;
@end

@implementation WISRelayAdaptorCell

- (WISRelayAdaptorCell)initWithMCC:(id)a3 mnc:(id)a4 rat:(id)a5 band:(id)a6 frequency:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v28.receiver = self;
  v28.super_class = WISRelayAdaptorCell;
  v17 = [(WISRelayAdaptorCell *)&v28 init];
  mcc = v17->_mcc;
  v17->_mcc = v12;
  v19 = v12;

  mnc = v17->_mnc;
  v17->_mnc = v13;
  v21 = v13;

  rat = v17->_rat;
  v17->_rat = v14;
  v23 = v14;

  band = v17->_band;
  v17->_band = v15;
  v25 = v15;

  frequency = v17->_frequency;
  v17->_frequency = v16;

  return v17;
}

@end