@interface ASCLockup
- (ASCLockup)initWithCoder:(id)coder;
- (ASCLockup)initWithID:(id)d kind:(id)kind metrics:(id)metrics icon:(id)icon heading:(id)heading title:(id)title subtitle:(id)subtitle ageRating:(id)self0 offer:(id)self1 features:(id)self2;
- (ASCLockup)lockupWithOffer:(id)offer;
- (ASCLockup)lockupWithSignpostTags:(id)tags;
- (ASCLockupDisplayContext)displayContext;
- (ASCScreenshots)screenshots;
- (ASCTrailers)trailers;
- (BOOL)hasMedia;
- (BOOL)isDistributor;
- (BOOL)isEditorsChoice;
- (BOOL)isEqual:(id)equal;
- (BOOL)requiresSSOEntitlement;
- (NSArray)subgenres;
- (NSArray)webDistributionDomains;
- (NSDictionary)contentRatingsBySystem;
- (NSSet)signpostTags;
- (NSString)appVersionId;
- (NSString)bundleID;
- (NSString)contentProviderTeamID;
- (NSString)description;
- (NSString)developerId;
- (NSString)developerName;
- (NSString)distributorBundleId;
- (NSString)eula;
- (NSString)genreID;
- (NSString)genreName;
- (NSString)privacyPolicyUrl;
- (NSString)productDescription;
- (NSString)productPageDescription;
- (NSString)productPageMetadata;
- (NSString)productRatingBadge;
- (NSString)productVariantID;
- (NSString)shortName;
- (NSString)supportUrl;
- (float)productRating;
- (id)featureWithClass:(Class)class;
- (id)lockupByAddingFeature:(id)feature;
- (int64_t)ageRatingValue;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCLockup

- (BOOL)isEditorsChoice
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  isEditorsChoice = [v2 isEditorsChoice];

  return isEditorsChoice;
}

- (float)productRating
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  [v2 productRating];
  v4 = v3;

  return v4;
}

- (NSString)productRatingBadge
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  productRatingBadge = [v2 productRatingBadge];

  return productRatingBadge;
}

- (NSString)productDescription
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  productDescription = [v2 productDescription];

  return productDescription;
}

- (NSString)distributorBundleId
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  distributorBundleId = [v2 distributorBundleId];

  return distributorBundleId;
}

- (NSString)appVersionId
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  appVersionId = [v2 appVersionId];

  return appVersionId;
}

- (NSString)developerId
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  developerId = [v2 developerId];

  return developerId;
}

- (NSArray)webDistributionDomains
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  webDistributionDomains = [v2 webDistributionDomains];

  return webDistributionDomains;
}

- (NSString)supportUrl
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  supportUrl = [v2 supportUrl];

  return supportUrl;
}

- (int64_t)ageRatingValue
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  ageRatingValue = [v2 ageRatingValue];

  return ageRatingValue;
}

- (NSDictionary)contentRatingsBySystem
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  contentRatingsBySystem = [v2 contentRatingsBySystem];

  return contentRatingsBySystem;
}

- (BOOL)isDistributor
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  isDistributor = [v2 isDistributor];

  return isDistributor;
}

- (NSString)bundleID
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  bundleID = [v2 bundleID];

  return bundleID;
}

- (NSString)developerName
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  developerName = [v2 developerName];

  return developerName;
}

- (ASCLockupDisplayContext)displayContext
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  displayContext = [v2 displayContext];

  return displayContext;
}

- (NSString)privacyPolicyUrl
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  privacyPolicyUrl = [v2 privacyPolicyUrl];

  return privacyPolicyUrl;
}

- (NSString)eula
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  eula = [v2 eula];

  return eula;
}

- (NSString)genreName
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  genreName = [v2 genreName];

  return genreName;
}

- (NSString)genreID
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  genreID = [v2 genreID];

  return genreID;
}

- (NSArray)subgenres
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    subgenres = [v2 subgenres];
  }

  else
  {
    subgenres = MEMORY[0x277CBEBF8];
  }

  return subgenres;
}

- (ASCScreenshots)screenshots
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  screenshots = [v2 screenshots];

  return screenshots;
}

- (ASCTrailers)trailers
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  trailers = [v2 trailers];

  return trailers;
}

- (BOOL)hasMedia
{
  screenshots = [(ASCLockup *)self screenshots];
  artwork = [screenshots artwork];
  if ([artwork count])
  {
    v5 = 1;
  }

  else
  {
    trailers = [(ASCLockup *)self trailers];
    videos = [trailers videos];
    v5 = [videos count] != 0;
  }

  return v5;
}

- (NSString)productPageMetadata
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  productPageMetadata = [v2 productPageMetadata];

  return productPageMetadata;
}

- (NSString)productPageDescription
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  productPageDescription = [v2 productPageDescription];

  return productPageDescription;
}

- (NSString)productVariantID
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  productVariantID = [v2 productVariantID];

  return productVariantID;
}

- (NSString)contentProviderTeamID
{
  v18[2] = *MEMORY[0x277D85DE8];
  v3 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  v4 = v3;
  if (v3)
  {
    contentProviderTeamID = [v3 contentProviderTeamID];
  }

  else
  {
    if (os_variant_has_internal_content())
    {
      v8 = objc_alloc(MEMORY[0x277CCACA8]);
      v9 = [(ASCLockup *)self id];
      v10 = [v8 initWithFormat:@"Lockup for %@ Adam ID does not include Safari extension feature.", v9];

      v11 = objc_alloc(MEMORY[0x277CBEAD8]);
      v12 = *MEMORY[0x277CBE658];
      v13 = *MEMORY[0x277CCA470];
      v17[0] = *MEMORY[0x277CCA498];
      v17[1] = v13;
      v18[0] = @"Set ASCLockupContextSafariExtension context on lockup request";
      v18[1] = @"Possibly a mismatching JS version for ASC";
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
      v15 = [v11 initWithName:v12 reason:v10 userInfo:v14];
      v16 = v15;

      objc_exception_throw(v15);
    }

    contentProviderTeamID = &stru_2835CD1E8;
  }

  v6 = *MEMORY[0x277D85DE8];

  return contentProviderTeamID;
}

- (NSString)shortName
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  shortName = [v2 shortName];

  return shortName;
}

- (NSSet)signpostTags
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  signpostTags = [v2 signpostTags];

  return signpostTags;
}

- (ASCLockup)lockupWithSignpostTags:(id)tags
{
  tagsCopy = tags;
  v5 = [[ASCLockupFeatureSignpostTags alloc] initWithSignpostTags:tagsCopy];

  v6 = [(ASCLockup *)self lockupByAddingFeature:v5];

  return v6;
}

- (BOOL)requiresSSOEntitlement
{
  v18[2] = *MEMORY[0x277D85DE8];
  v3 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  v4 = v3;
  if (v3)
  {
    requiresSSOEntitlement = [v3 requiresSSOEntitlement];
  }

  else
  {
    if (os_variant_has_internal_content())
    {
      v8 = objc_alloc(MEMORY[0x277CCACA8]);
      v9 = [(ASCLockup *)self id];
      v10 = [v8 initWithFormat:@"Lockup for %@ Adam ID does not include Single Sign On feature.", v9];

      v11 = objc_alloc(MEMORY[0x277CBEAD8]);
      v12 = *MEMORY[0x277CBE658];
      v13 = *MEMORY[0x277CCA470];
      v17[0] = *MEMORY[0x277CCA498];
      v17[1] = v13;
      v18[0] = @"Set ASCLockupContextSingleSignOn context on lockup request";
      v18[1] = @"Possibly a mismatching JS version for ASC";
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
      v15 = [v11 initWithName:v12 reason:v10 userInfo:v14];
      v16 = v15;

      objc_exception_throw(v15);
    }

    requiresSSOEntitlement = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return requiresSSOEntitlement;
}

- (ASCLockup)initWithID:(id)d kind:(id)kind metrics:(id)metrics icon:(id)icon heading:(id)heading title:(id)title subtitle:(id)subtitle ageRating:(id)self0 offer:(id)self1 features:(id)self2
{
  dCopy = d;
  kindCopy = kind;
  metricsCopy = metrics;
  iconCopy = icon;
  headingCopy = heading;
  titleCopy = title;
  subtitleCopy = subtitle;
  ratingCopy = rating;
  offerCopy = offer;
  featuresCopy = features;
  +[ASCEligibility assertCurrentProcessEligibility];
  v50.receiver = self;
  v50.super_class = ASCLockup;
  v26 = [(ASCLockup *)&v50 init];
  if (v26)
  {
    v27 = [dCopy copy];
    id = v26->_id;
    v26->_id = v27;

    v29 = [kindCopy copy];
    kind = v26->_kind;
    v26->_kind = v29;

    v31 = [metricsCopy copy];
    metrics = v26->_metrics;
    v26->_metrics = v31;

    v33 = [iconCopy copy];
    icon = v26->_icon;
    v26->_icon = v33;

    v35 = [headingCopy copy];
    heading = v26->_heading;
    v26->_heading = v35;

    v37 = [titleCopy copy];
    title = v26->_title;
    v26->_title = v37;

    v39 = [subtitleCopy copy];
    subtitle = v26->_subtitle;
    v26->_subtitle = v39;

    v41 = [ratingCopy copy];
    ageRating = v26->_ageRating;
    v26->_ageRating = v41;

    v43 = [offerCopy copyWithZone:0];
    offer = v26->_offer;
    v26->_offer = v43;

    v45 = [featuresCopy copy];
    features = v26->_features;
    v26->_features = v45;
  }

  return v26;
}

- (ASCLockup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"id"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kind"];
    if (v6)
    {
      v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metrics"];
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
      v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"heading"];
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
      v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ageRating"];
      v10 = ASCOfferDecodeForKey(coderCopy, @"offer");
      v11 = ASCLockupFeaturesDecodeForKey(coderCopy, @"features");
      v12 = v5;
      v13 = v6;
      v24 = v6;
      v14 = v7;
      v15 = v7;
      v16 = v5;
      v17 = v8;
      v18 = [(ASCLockup *)self initWithID:v12 kind:v13 metrics:v22 icon:v15 heading:v23 title:v8 subtitle:v21 ageRating:v9 offer:v10 features:v11];

      v5 = v16;
      self = v18;

      v6 = v24;
      v19 = v18;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ASCLockup initWithCoder:];
      }

      v19 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ASCLockup initWithCoder:];
    }

    v19 = 0;
  }

  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ASCLockup *)self id];
  [coderCopy encodeObject:v5 forKey:@"id"];

  kind = [(ASCLockup *)self kind];
  [coderCopy encodeObject:kind forKey:@"kind"];

  metrics = [(ASCLockup *)self metrics];
  [coderCopy encodeObject:metrics forKey:@"metrics"];

  icon = [(ASCLockup *)self icon];
  [coderCopy encodeObject:icon forKey:@"icon"];

  heading = [(ASCLockup *)self heading];
  [coderCopy encodeObject:heading forKey:@"heading"];

  title = [(ASCLockup *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  subtitle = [(ASCLockup *)self subtitle];
  [coderCopy encodeObject:subtitle forKey:@"subtitle"];

  ageRating = [(ASCLockup *)self ageRating];
  [coderCopy encodeObject:ageRating forKey:@"ageRating"];

  offer = [(ASCLockup *)self offer];
  [coderCopy encodeObject:offer forKey:@"offer"];

  features = [(ASCLockup *)self features];
  [coderCopy encodeObject:features forKey:@"features"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCLockup *)self id];
  [(ASCHasher *)v3 combineObject:v4];

  kind = [(ASCLockup *)self kind];
  [(ASCHasher *)v3 combineObject:kind];

  metrics = [(ASCLockup *)self metrics];
  [(ASCHasher *)v3 combineObject:metrics];

  icon = [(ASCLockup *)self icon];
  [(ASCHasher *)v3 combineObject:icon];

  heading = [(ASCLockup *)self heading];
  [(ASCHasher *)v3 combineObject:heading];

  title = [(ASCLockup *)self title];
  [(ASCHasher *)v3 combineObject:title];

  subtitle = [(ASCLockup *)self subtitle];
  [(ASCHasher *)v3 combineObject:subtitle];

  ageRating = [(ASCLockup *)self ageRating];
  [(ASCHasher *)v3 combineObject:ageRating];

  offer = [(ASCLockup *)self offer];
  [(ASCHasher *)v3 combineObject:offer];

  features = [(ASCLockup *)self features];
  [(ASCHasher *)v3 combineObject:features];

  finalizeHash = [(ASCHasher *)v3 finalizeHash];
  return finalizeHash;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self != equalCopy)
  {
    objc_opt_class();
    v5 = equalCopy;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = v6;

    if (!v8)
    {
      v7 = 0;
LABEL_69:

      goto LABEL_70;
    }

    v9 = [(ASCLockup *)self id];
    v10 = [(ASCLockup *)v8 id];
    v11 = v10;
    if (v9 && v10)
    {
      if ([v9 isEqual:v10])
      {
LABEL_12:
        kind = [(ASCLockup *)self kind];
        kind2 = [(ASCLockup *)v8 kind];
        v14 = kind2;
        if (kind && kind2)
        {
          if ([kind isEqual:kind2])
          {
LABEL_15:
            metrics = [(ASCLockup *)self metrics];
            metrics2 = [(ASCLockup *)v8 metrics];
            v17 = metrics2;
            if (metrics && metrics2)
            {
              if ([metrics isEqual:metrics2])
              {
LABEL_18:
                icon = [(ASCLockup *)self icon];
                icon2 = [(ASCLockup *)v8 icon];
                v20 = icon2;
                if (icon && icon2)
                {
                  v21 = icon;
                  v66 = metrics;
                  v22 = v17;
                  v23 = icon;
                  v24 = v20;
                  v25 = [v21 isEqual:v20];
                  v20 = v24;
                  icon = v23;
                  v17 = v22;
                  metrics = v66;
                  if (v25)
                  {
LABEL_21:
                    v64 = v20;
                    v65 = icon;
                    heading = [(ASCLockup *)self heading];
                    heading2 = [(ASCLockup *)v8 heading];
                    v28 = heading2;
                    v67 = heading;
                    if (heading && heading2)
                    {
                      v29 = heading2;
                      v30 = [v67 isEqual:heading2];
                      v28 = v29;
                      if (v30)
                      {
LABEL_24:
                        v62 = v28;
                        title = [(ASCLockup *)self title];
                        title2 = [(ASCLockup *)v8 title];
                        v33 = title2;
                        v63 = title;
                        if (title && title2)
                        {
                          v34 = title2;
                          v35 = [v63 isEqual:title2];
                          v33 = v34;
                          if (v35)
                          {
LABEL_27:
                            v60 = v33;
                            subtitle = [(ASCLockup *)self subtitle];
                            subtitle2 = [(ASCLockup *)v8 subtitle];
                            v38 = subtitle2;
                            v61 = subtitle;
                            if (subtitle && subtitle2)
                            {
                              v39 = subtitle2;
                              v40 = [v61 isEqual:subtitle2];
                              v38 = v39;
                              if (v40)
                              {
LABEL_30:
                                v58 = v38;
                                ageRating = [(ASCLockup *)self ageRating];
                                ageRating2 = [(ASCLockup *)v8 ageRating];
                                v43 = ageRating2;
                                v59 = ageRating;
                                if (ageRating && ageRating2)
                                {
                                  v44 = ageRating2;
                                  v45 = [v59 isEqual:ageRating2];
                                  v43 = v44;
                                  if (v45)
                                  {
LABEL_33:
                                    v56 = v43;
                                    offer = [(ASCLockup *)self offer];
                                    offer2 = [(ASCLockup *)v8 offer];
                                    v57 = offer;
                                    v55 = offer2;
                                    if (offer && offer2)
                                    {
                                      if ([offer isEqual:offer2])
                                      {
                                        goto LABEL_36;
                                      }
                                    }

                                    else if (offer == offer2)
                                    {
LABEL_36:
                                      features = [(ASCLockup *)self features];
                                      features2 = [(ASCLockup *)v8 features];
                                      v50 = features2;
                                      if (features && features2)
                                      {
                                        v51 = features2;
                                        v52 = [features isEqual:features2];
                                        v50 = v51;
                                        v53 = features;
                                        v7 = v52;
                                      }

                                      else
                                      {
                                        v53 = features;
                                        v7 = features == features2;
                                      }

                                      goto LABEL_60;
                                    }

                                    v7 = 0;
LABEL_60:

                                    v43 = v56;
                                    goto LABEL_61;
                                  }
                                }

                                else if (ageRating == ageRating2)
                                {
                                  goto LABEL_33;
                                }

                                v7 = 0;
LABEL_61:

                                v38 = v58;
                                goto LABEL_62;
                              }
                            }

                            else if (subtitle == subtitle2)
                            {
                              goto LABEL_30;
                            }

                            v7 = 0;
LABEL_62:

                            v33 = v60;
                            goto LABEL_63;
                          }
                        }

                        else if (title == title2)
                        {
                          goto LABEL_27;
                        }

                        v7 = 0;
LABEL_63:

                        v28 = v62;
                        goto LABEL_64;
                      }
                    }

                    else if (heading == heading2)
                    {
                      goto LABEL_24;
                    }

                    v7 = 0;
LABEL_64:

                    v20 = v64;
                    icon = v65;
                    goto LABEL_65;
                  }
                }

                else if (icon == icon2)
                {
                  goto LABEL_21;
                }

                v7 = 0;
LABEL_65:

                goto LABEL_66;
              }
            }

            else if (metrics == metrics2)
            {
              goto LABEL_18;
            }

            v7 = 0;
LABEL_66:

            goto LABEL_67;
          }
        }

        else if (kind == kind2)
        {
          goto LABEL_15;
        }

        v7 = 0;
LABEL_67:

        goto LABEL_68;
      }
    }

    else if (v9 == v10)
    {
      goto LABEL_12;
    }

    v7 = 0;
LABEL_68:

    goto LABEL_69;
  }

  v7 = 1;
LABEL_70:

  return v7;
}

- (NSString)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  v4 = [(ASCLockup *)self id];
  [(ASCDescriber *)v3 addObject:v4 withName:@"id"];

  kind = [(ASCLockup *)self kind];
  [(ASCDescriber *)v3 addObject:kind withName:@"kind"];

  metrics = [(ASCLockup *)self metrics];
  [(ASCDescriber *)v3 addObject:metrics withName:@"metrics"];

  icon = [(ASCLockup *)self icon];
  [(ASCDescriber *)v3 addObject:icon withName:@"icon"];

  heading = [(ASCLockup *)self heading];
  [(ASCDescriber *)v3 addObject:heading withName:@"heading"];

  title = [(ASCLockup *)self title];
  [(ASCDescriber *)v3 addObject:title withName:@"title"];

  subtitle = [(ASCLockup *)self subtitle];
  [(ASCDescriber *)v3 addObject:subtitle withName:@"subtitle"];

  ageRating = [(ASCLockup *)self ageRating];
  [(ASCDescriber *)v3 addObject:ageRating withName:@"ageRating"];

  offer = [(ASCLockup *)self offer];
  [(ASCDescriber *)v3 addObject:offer withName:@"offer"];

  features = [(ASCLockup *)self features];
  v14 = [features count];

  if (v14)
  {
    features2 = [(ASCLockup *)self features];
    [(ASCDescriber *)v3 addObject:features2 withName:@"features"];
  }

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

- (id)featureWithClass:(Class)class
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  features = [(ASCLockup *)self features];
  v4 = [features countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(features);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          goto LABEL_11;
        }
      }

      v5 = [features countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)lockupByAddingFeature:(id)feature
{
  featureCopy = feature;
  features = [(ASCLockup *)self features];
  v6 = [features mutableCopy];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __35__ASCLockup_lockupByAddingFeature___block_invoke;
  v23[3] = &unk_2784B15D8;
  v7 = featureCopy;
  v24 = v7;
  v8 = [v6 indexOfObjectPassingTest:v23];
  v21 = v6;
  v22 = v7;
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v6 addObject:v7];
  }

  else
  {
    [v6 replaceObjectAtIndex:v8 withObject:v7];
  }

  v19 = [ASCLockup alloc];
  v9 = [(ASCLockup *)self id];
  kind = [(ASCLockup *)self kind];
  metrics = [(ASCLockup *)self metrics];
  icon = [(ASCLockup *)self icon];
  heading = [(ASCLockup *)self heading];
  title = [(ASCLockup *)self title];
  subtitle = [(ASCLockup *)self subtitle];
  ageRating = [(ASCLockup *)self ageRating];
  offer = [(ASCLockup *)self offer];
  v20 = [(ASCLockup *)v19 initWithID:v9 kind:kind metrics:metrics icon:icon heading:heading title:title subtitle:subtitle ageRating:ageRating offer:offer features:v21];

  return v20;
}

uint64_t __35__ASCLockup_lockupByAddingFeature___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  objc_opt_class();
  LOBYTE(v2) = objc_opt_isKindOfClass();

  return v2 & 1;
}

- (ASCLockup)lockupWithOffer:(id)offer
{
  offerCopy = offer;
  v16 = [ASCLockup alloc];
  v15 = [(ASCLockup *)self id];
  kind = [(ASCLockup *)self kind];
  metrics = [(ASCLockup *)self metrics];
  icon = [(ASCLockup *)self icon];
  heading = [(ASCLockup *)self heading];
  title = [(ASCLockup *)self title];
  subtitle = [(ASCLockup *)self subtitle];
  ageRating = [(ASCLockup *)self ageRating];
  features = [(ASCLockup *)self features];
  v13 = [(ASCLockup *)v16 initWithID:v15 kind:kind metrics:metrics icon:icon heading:heading title:title subtitle:subtitle ageRating:ageRating offer:offerCopy features:features];

  return v13;
}

@end