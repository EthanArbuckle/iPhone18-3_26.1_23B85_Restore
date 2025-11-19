@interface ExtractedCellInfo
- (id)description;
- (id)init:(id)a3 band:(id)a4 frequencyRange:(id)a5 nrnsaFrequencyRange:(id)a6 bandwidth:(id)a7 nrnsaBandwidth:(id)a8 arfcn:(id)a9 nrnsaArfcn:(id)a10 gci:(id)a11;
@end

@implementation ExtractedCellInfo

- (id)init:(id)a3 band:(id)a4 frequencyRange:(id)a5 nrnsaFrequencyRange:(id)a6 bandwidth:(id)a7 nrnsaBandwidth:(id)a8 arfcn:(id)a9 nrnsaArfcn:(id)a10 gci:(id)a11
{
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v25 = a7;
  v24 = a8;
  v23 = a9;
  v22 = a10;
  v18 = a11;
  v30.receiver = self;
  v30.super_class = ExtractedCellInfo;
  v19 = [(ExtractedCellInfo *)&v30 init];
  p_isa = &v19->super.isa;
  if (v19)
  {
    objc_storeStrong(&v19->_rat, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
    objc_storeStrong(p_isa + 4, a6);
    objc_storeStrong(p_isa + 5, a7);
    objc_storeStrong(p_isa + 6, a8);
    objc_storeStrong(p_isa + 7, a9);
    objc_storeStrong(p_isa + 8, a10);
    objc_storeStrong(p_isa + 9, a11);
  }

  return p_isa;
}

- (id)description
{
  v3 = [(ExtractedCellInfo *)self rat];
  v4 = [(ExtractedCellInfo *)self band];
  v5 = [(ExtractedCellInfo *)self frequencyRange];
  v6 = [(ExtractedCellInfo *)self nrnsaFrequencyRange];
  v7 = [(ExtractedCellInfo *)self bandwidth];
  v8 = [(ExtractedCellInfo *)self nrnsaBandwidth];
  v9 = [(ExtractedCellInfo *)self arfcn];
  v10 = [(ExtractedCellInfo *)self nrnsaArfcn];
  v11 = [NSString stringWithFormat:@"rat %@, band %@, frequencyRange %@, nrnsaFrequencyRange %@, bandwidth %@, nrnsaBandwidth %@, arfcn %@, nrnsaArfcn %@", v3, v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

@end