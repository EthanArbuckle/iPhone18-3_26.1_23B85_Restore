@interface ExtractedCellInfo
- (id)description;
- (id)init:(id)init band:(id)band frequencyRange:(id)range nrnsaFrequencyRange:(id)frequencyRange bandwidth:(id)bandwidth nrnsaBandwidth:(id)nrnsaBandwidth arfcn:(id)arfcn nrnsaArfcn:(id)self0 gci:(id)self1;
@end

@implementation ExtractedCellInfo

- (id)init:(id)init band:(id)band frequencyRange:(id)range nrnsaFrequencyRange:(id)frequencyRange bandwidth:(id)bandwidth nrnsaBandwidth:(id)nrnsaBandwidth arfcn:(id)arfcn nrnsaArfcn:(id)self0 gci:(id)self1
{
  initCopy = init;
  bandCopy = band;
  rangeCopy = range;
  frequencyRangeCopy = frequencyRange;
  bandwidthCopy = bandwidth;
  nrnsaBandwidthCopy = nrnsaBandwidth;
  arfcnCopy = arfcn;
  nrnsaArfcnCopy = nrnsaArfcn;
  gciCopy = gci;
  v30.receiver = self;
  v30.super_class = ExtractedCellInfo;
  v19 = [(ExtractedCellInfo *)&v30 init];
  p_isa = &v19->super.isa;
  if (v19)
  {
    objc_storeStrong(&v19->_rat, init);
    objc_storeStrong(p_isa + 2, band);
    objc_storeStrong(p_isa + 3, range);
    objc_storeStrong(p_isa + 4, frequencyRange);
    objc_storeStrong(p_isa + 5, bandwidth);
    objc_storeStrong(p_isa + 6, nrnsaBandwidth);
    objc_storeStrong(p_isa + 7, arfcn);
    objc_storeStrong(p_isa + 8, nrnsaArfcn);
    objc_storeStrong(p_isa + 9, gci);
  }

  return p_isa;
}

- (id)description
{
  v3 = [(ExtractedCellInfo *)self rat];
  band = [(ExtractedCellInfo *)self band];
  frequencyRange = [(ExtractedCellInfo *)self frequencyRange];
  nrnsaFrequencyRange = [(ExtractedCellInfo *)self nrnsaFrequencyRange];
  bandwidth = [(ExtractedCellInfo *)self bandwidth];
  nrnsaBandwidth = [(ExtractedCellInfo *)self nrnsaBandwidth];
  arfcn = [(ExtractedCellInfo *)self arfcn];
  nrnsaArfcn = [(ExtractedCellInfo *)self nrnsaArfcn];
  v11 = [NSString stringWithFormat:@"rat %@, band %@, frequencyRange %@, nrnsaFrequencyRange %@, bandwidth %@, nrnsaBandwidth %@, arfcn %@, nrnsaArfcn %@", v3, band, frequencyRange, nrnsaFrequencyRange, bandwidth, nrnsaBandwidth, arfcn, nrnsaArfcn];

  return v11;
}

@end