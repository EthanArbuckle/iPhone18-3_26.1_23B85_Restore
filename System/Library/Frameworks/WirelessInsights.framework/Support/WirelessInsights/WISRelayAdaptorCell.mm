@interface WISRelayAdaptorCell
- (WISRelayAdaptorCell)initWithMCC:(id)c mnc:(id)mnc rat:(id)rat band:(id)band frequency:(id)frequency;
@end

@implementation WISRelayAdaptorCell

- (WISRelayAdaptorCell)initWithMCC:(id)c mnc:(id)mnc rat:(id)rat band:(id)band frequency:(id)frequency
{
  cCopy = c;
  mncCopy = mnc;
  ratCopy = rat;
  bandCopy = band;
  frequencyCopy = frequency;
  v28.receiver = self;
  v28.super_class = WISRelayAdaptorCell;
  v17 = [(WISRelayAdaptorCell *)&v28 init];
  mcc = v17->_mcc;
  v17->_mcc = cCopy;
  v19 = cCopy;

  mnc = v17->_mnc;
  v17->_mnc = mncCopy;
  v21 = mncCopy;

  rat = v17->_rat;
  v17->_rat = ratCopy;
  v23 = ratCopy;

  band = v17->_band;
  v17->_band = bandCopy;
  v25 = bandCopy;

  frequency = v17->_frequency;
  v17->_frequency = frequencyCopy;

  return v17;
}

@end