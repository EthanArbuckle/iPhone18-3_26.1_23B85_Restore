@interface AVTCoreModelPairing
- (AVTCoreModelPairing)initWithPairedCategory:(int64_t)category pairedTitle:(id)title pairTitle:(id)pairTitle unpairTitle:(id)unpairTitle pairedDescription:(id)description unpairedDescription:(id)unpairedDescription;
- (id)description;
@end

@implementation AVTCoreModelPairing

- (AVTCoreModelPairing)initWithPairedCategory:(int64_t)category pairedTitle:(id)title pairTitle:(id)pairTitle unpairTitle:(id)unpairTitle pairedDescription:(id)description unpairedDescription:(id)unpairedDescription
{
  titleCopy = title;
  pairTitleCopy = pairTitle;
  unpairTitleCopy = unpairTitle;
  descriptionCopy = description;
  unpairedDescriptionCopy = unpairedDescription;
  v23.receiver = self;
  v23.super_class = AVTCoreModelPairing;
  v18 = [(AVTCoreModelPairing *)&v23 init];
  v19 = v18;
  if (v18)
  {
    v18->_pairedCategory = category;
    objc_storeStrong(&v18->_localizedPairedTitle, title);
    objc_storeStrong(&v19->_localizedPairTitle, pairTitle);
    objc_storeStrong(&v19->_localizedUnpairTitle, unpairTitle);
    objc_storeStrong(&v19->_localizedPairedDescription, description);
    objc_storeStrong(&v19->_localizedUnpairedDescription, unpairedDescription);
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
  localizedPairedTitle = [(AVTCoreModelPairing *)self localizedPairedTitle];
  localizedPairTitle = [(AVTCoreModelPairing *)self localizedPairTitle];
  localizedUnpairTitle = [(AVTCoreModelPairing *)self localizedUnpairTitle];
  localizedPairedDescription = [(AVTCoreModelPairing *)self localizedPairedDescription];
  localizedUnpairedDescription = [(AVTCoreModelPairing *)self localizedUnpairedDescription];
  [v4 appendFormat:@" AVTCoreModelPairing: category:%@\n pairedTitle: %@\n, pairTitle: %@\n, unpairTitle: %@\n pairedDescription: %@\n unpairedDescription: %@", v5, localizedPairedTitle, localizedPairTitle, localizedUnpairTitle, localizedPairedDescription, localizedUnpairedDescription];

  v11 = [v4 copy];

  return v11;
}

@end