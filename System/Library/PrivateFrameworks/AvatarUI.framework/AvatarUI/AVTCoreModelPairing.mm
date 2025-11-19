@interface AVTCoreModelPairing
- (AVTCoreModelPairing)initWithPairedCategory:(int64_t)a3 pairedTitle:(id)a4 pairTitle:(id)a5 unpairTitle:(id)a6 pairedDescription:(id)a7 unpairedDescription:(id)a8;
- (id)description;
@end

@implementation AVTCoreModelPairing

- (AVTCoreModelPairing)initWithPairedCategory:(int64_t)a3 pairedTitle:(id)a4 pairTitle:(id)a5 unpairTitle:(id)a6 pairedDescription:(id)a7 unpairedDescription:(id)a8
{
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = AVTCoreModelPairing;
  v18 = [(AVTCoreModelPairing *)&v23 init];
  v19 = v18;
  if (v18)
  {
    v18->_pairedCategory = a3;
    objc_storeStrong(&v18->_localizedPairedTitle, a4);
    objc_storeStrong(&v19->_localizedPairTitle, a5);
    objc_storeStrong(&v19->_localizedUnpairTitle, a6);
    objc_storeStrong(&v19->_localizedPairedDescription, a7);
    objc_storeStrong(&v19->_localizedUnpairedDescription, a8);
  }

  return v19;
}

- (id)description
{
  v13.receiver = self;
  v13.super_class = AVTCoreModelPairing;
  v3 = [(AVTCoreModelPairing *)&v13 description];
  v4 = [v3 mutableCopy];

  [(AVTCoreModelPairing *)self pairedCategory];
  v5 = AVTPresetCategoryToString();
  v6 = [(AVTCoreModelPairing *)self localizedPairedTitle];
  v7 = [(AVTCoreModelPairing *)self localizedPairTitle];
  v8 = [(AVTCoreModelPairing *)self localizedUnpairTitle];
  v9 = [(AVTCoreModelPairing *)self localizedPairedDescription];
  v10 = [(AVTCoreModelPairing *)self localizedUnpairedDescription];
  [v4 appendFormat:@" AVTCoreModelPairing: category:%@\n pairedTitle: %@\n, pairTitle: %@\n, unpairTitle: %@\n pairedDescription: %@\n unpairedDescription: %@", v5, v6, v7, v8, v9, v10];

  v11 = [v4 copy];

  return v11;
}

@end