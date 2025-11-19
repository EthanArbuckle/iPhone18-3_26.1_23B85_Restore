@interface ASCLockup
- (ASCLockup)initWithCoder:(id)a3;
- (ASCLockup)initWithID:(id)a3 kind:(id)a4 metrics:(id)a5 icon:(id)a6 heading:(id)a7 title:(id)a8 subtitle:(id)a9 ageRating:(id)a10 offer:(id)a11 features:(id)a12;
- (ASCLockup)lockupWithOffer:(id)a3;
- (ASCLockup)lockupWithSignpostTags:(id)a3;
- (ASCLockupDisplayContext)displayContext;
- (ASCScreenshots)screenshots;
- (ASCTrailers)trailers;
- (BOOL)hasMedia;
- (BOOL)isDistributor;
- (BOOL)isEditorsChoice;
- (BOOL)isEqual:(id)a3;
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
- (id)featureWithClass:(Class)a3;
- (id)lockupByAddingFeature:(id)a3;
- (int64_t)ageRatingValue;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCLockup

- (BOOL)isEditorsChoice
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  v3 = [v2 isEditorsChoice];

  return v3;
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
  v3 = [v2 productRatingBadge];

  return v3;
}

- (NSString)productDescription
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  v3 = [v2 productDescription];

  return v3;
}

- (NSString)distributorBundleId
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  v3 = [v2 distributorBundleId];

  return v3;
}

- (NSString)appVersionId
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  v3 = [v2 appVersionId];

  return v3;
}

- (NSString)developerId
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  v3 = [v2 developerId];

  return v3;
}

- (NSArray)webDistributionDomains
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  v3 = [v2 webDistributionDomains];

  return v3;
}

- (NSString)supportUrl
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  v3 = [v2 supportUrl];

  return v3;
}

- (int64_t)ageRatingValue
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  v3 = [v2 ageRatingValue];

  return v3;
}

- (NSDictionary)contentRatingsBySystem
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  v3 = [v2 contentRatingsBySystem];

  return v3;
}

- (BOOL)isDistributor
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  v3 = [v2 isDistributor];

  return v3;
}

- (NSString)bundleID
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  v3 = [v2 bundleID];

  return v3;
}

- (NSString)developerName
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  v3 = [v2 developerName];

  return v3;
}

- (ASCLockupDisplayContext)displayContext
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  v3 = [v2 displayContext];

  return v3;
}

- (NSString)privacyPolicyUrl
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  v3 = [v2 privacyPolicyUrl];

  return v3;
}

- (NSString)eula
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  v3 = [v2 eula];

  return v3;
}

- (NSString)genreName
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  v3 = [v2 genreName];

  return v3;
}

- (NSString)genreID
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  v3 = [v2 genreID];

  return v3;
}

- (NSArray)subgenres
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 subgenres];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (ASCScreenshots)screenshots
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  v3 = [v2 screenshots];

  return v3;
}

- (ASCTrailers)trailers
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  v3 = [v2 trailers];

  return v3;
}

- (BOOL)hasMedia
{
  v3 = [(ASCLockup *)self screenshots];
  v4 = [v3 artwork];
  if ([v4 count])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(ASCLockup *)self trailers];
    v7 = [v6 videos];
    v5 = [v7 count] != 0;
  }

  return v5;
}

- (NSString)productPageMetadata
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  v3 = [v2 productPageMetadata];

  return v3;
}

- (NSString)productPageDescription
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  v3 = [v2 productPageDescription];

  return v3;
}

- (NSString)productVariantID
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  v3 = [v2 productVariantID];

  return v3;
}

- (NSString)contentProviderTeamID
{
  v18[2] = *MEMORY[0x277D85DE8];
  v3 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 contentProviderTeamID];
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

    v5 = &stru_2835CD1E8;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSString)shortName
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  v3 = [v2 shortName];

  return v3;
}

- (NSSet)signpostTags
{
  v2 = [(ASCLockup *)self featureWithClass:objc_opt_class()];
  v3 = [v2 signpostTags];

  return v3;
}

- (ASCLockup)lockupWithSignpostTags:(id)a3
{
  v4 = a3;
  v5 = [[ASCLockupFeatureSignpostTags alloc] initWithSignpostTags:v4];

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
    v5 = [v3 requiresSSOEntitlement];
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

    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (ASCLockup)initWithID:(id)a3 kind:(id)a4 metrics:(id)a5 icon:(id)a6 heading:(id)a7 title:(id)a8 subtitle:(id)a9 ageRating:(id)a10 offer:(id)a11 features:(id)a12
{
  v17 = a3;
  v49 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  +[ASCEligibility assertCurrentProcessEligibility];
  v50.receiver = self;
  v50.super_class = ASCLockup;
  v26 = [(ASCLockup *)&v50 init];
  if (v26)
  {
    v27 = [v17 copy];
    id = v26->_id;
    v26->_id = v27;

    v29 = [v49 copy];
    kind = v26->_kind;
    v26->_kind = v29;

    v31 = [v18 copy];
    metrics = v26->_metrics;
    v26->_metrics = v31;

    v33 = [v19 copy];
    icon = v26->_icon;
    v26->_icon = v33;

    v35 = [v20 copy];
    heading = v26->_heading;
    v26->_heading = v35;

    v37 = [v21 copy];
    title = v26->_title;
    v26->_title = v37;

    v39 = [v22 copy];
    subtitle = v26->_subtitle;
    v26->_subtitle = v39;

    v41 = [v23 copy];
    ageRating = v26->_ageRating;
    v26->_ageRating = v41;

    v43 = [v24 copyWithZone:0];
    offer = v26->_offer;
    v26->_offer = v43;

    v45 = [v25 copy];
    features = v26->_features;
    v26->_features = v45;
  }

  return v26;
}

- (ASCLockup)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"id"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kind"];
    if (v6)
    {
      v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metrics"];
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
      v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"heading"];
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
      v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ageRating"];
      v10 = ASCOfferDecodeForKey(v4, @"offer");
      v11 = ASCLockupFeaturesDecodeForKey(v4, @"features");
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASCLockup *)self id];
  [v4 encodeObject:v5 forKey:@"id"];

  v6 = [(ASCLockup *)self kind];
  [v4 encodeObject:v6 forKey:@"kind"];

  v7 = [(ASCLockup *)self metrics];
  [v4 encodeObject:v7 forKey:@"metrics"];

  v8 = [(ASCLockup *)self icon];
  [v4 encodeObject:v8 forKey:@"icon"];

  v9 = [(ASCLockup *)self heading];
  [v4 encodeObject:v9 forKey:@"heading"];

  v10 = [(ASCLockup *)self title];
  [v4 encodeObject:v10 forKey:@"title"];

  v11 = [(ASCLockup *)self subtitle];
  [v4 encodeObject:v11 forKey:@"subtitle"];

  v12 = [(ASCLockup *)self ageRating];
  [v4 encodeObject:v12 forKey:@"ageRating"];

  v13 = [(ASCLockup *)self offer];
  [v4 encodeObject:v13 forKey:@"offer"];

  v14 = [(ASCLockup *)self features];
  [v4 encodeObject:v14 forKey:@"features"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCLockup *)self id];
  [(ASCHasher *)v3 combineObject:v4];

  v5 = [(ASCLockup *)self kind];
  [(ASCHasher *)v3 combineObject:v5];

  v6 = [(ASCLockup *)self metrics];
  [(ASCHasher *)v3 combineObject:v6];

  v7 = [(ASCLockup *)self icon];
  [(ASCHasher *)v3 combineObject:v7];

  v8 = [(ASCLockup *)self heading];
  [(ASCHasher *)v3 combineObject:v8];

  v9 = [(ASCLockup *)self title];
  [(ASCHasher *)v3 combineObject:v9];

  v10 = [(ASCLockup *)self subtitle];
  [(ASCHasher *)v3 combineObject:v10];

  v11 = [(ASCLockup *)self ageRating];
  [(ASCHasher *)v3 combineObject:v11];

  v12 = [(ASCLockup *)self offer];
  [(ASCHasher *)v3 combineObject:v12];

  v13 = [(ASCLockup *)self features];
  [(ASCHasher *)v3 combineObject:v13];

  v14 = [(ASCHasher *)v3 finalizeHash];
  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    objc_opt_class();
    v5 = v4;
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
        v12 = [(ASCLockup *)self kind];
        v13 = [(ASCLockup *)v8 kind];
        v14 = v13;
        if (v12 && v13)
        {
          if ([v12 isEqual:v13])
          {
LABEL_15:
            v15 = [(ASCLockup *)self metrics];
            v16 = [(ASCLockup *)v8 metrics];
            v17 = v16;
            if (v15 && v16)
            {
              if ([v15 isEqual:v16])
              {
LABEL_18:
                v18 = [(ASCLockup *)self icon];
                v19 = [(ASCLockup *)v8 icon];
                v20 = v19;
                if (v18 && v19)
                {
                  v21 = v18;
                  v66 = v15;
                  v22 = v17;
                  v23 = v18;
                  v24 = v20;
                  v25 = [v21 isEqual:v20];
                  v20 = v24;
                  v18 = v23;
                  v17 = v22;
                  v15 = v66;
                  if (v25)
                  {
LABEL_21:
                    v64 = v20;
                    v65 = v18;
                    v26 = [(ASCLockup *)self heading];
                    v27 = [(ASCLockup *)v8 heading];
                    v28 = v27;
                    v67 = v26;
                    if (v26 && v27)
                    {
                      v29 = v27;
                      v30 = [v67 isEqual:v27];
                      v28 = v29;
                      if (v30)
                      {
LABEL_24:
                        v62 = v28;
                        v31 = [(ASCLockup *)self title];
                        v32 = [(ASCLockup *)v8 title];
                        v33 = v32;
                        v63 = v31;
                        if (v31 && v32)
                        {
                          v34 = v32;
                          v35 = [v63 isEqual:v32];
                          v33 = v34;
                          if (v35)
                          {
LABEL_27:
                            v60 = v33;
                            v36 = [(ASCLockup *)self subtitle];
                            v37 = [(ASCLockup *)v8 subtitle];
                            v38 = v37;
                            v61 = v36;
                            if (v36 && v37)
                            {
                              v39 = v37;
                              v40 = [v61 isEqual:v37];
                              v38 = v39;
                              if (v40)
                              {
LABEL_30:
                                v58 = v38;
                                v41 = [(ASCLockup *)self ageRating];
                                v42 = [(ASCLockup *)v8 ageRating];
                                v43 = v42;
                                v59 = v41;
                                if (v41 && v42)
                                {
                                  v44 = v42;
                                  v45 = [v59 isEqual:v42];
                                  v43 = v44;
                                  if (v45)
                                  {
LABEL_33:
                                    v56 = v43;
                                    v46 = [(ASCLockup *)self offer];
                                    v47 = [(ASCLockup *)v8 offer];
                                    v57 = v46;
                                    v55 = v47;
                                    if (v46 && v47)
                                    {
                                      if ([v46 isEqual:v47])
                                      {
                                        goto LABEL_36;
                                      }
                                    }

                                    else if (v46 == v47)
                                    {
LABEL_36:
                                      v48 = [(ASCLockup *)self features];
                                      v49 = [(ASCLockup *)v8 features];
                                      v50 = v49;
                                      if (v48 && v49)
                                      {
                                        v51 = v49;
                                        v52 = [v48 isEqual:v49];
                                        v50 = v51;
                                        v53 = v48;
                                        v7 = v52;
                                      }

                                      else
                                      {
                                        v53 = v48;
                                        v7 = v48 == v49;
                                      }

                                      goto LABEL_60;
                                    }

                                    v7 = 0;
LABEL_60:

                                    v43 = v56;
                                    goto LABEL_61;
                                  }
                                }

                                else if (v41 == v42)
                                {
                                  goto LABEL_33;
                                }

                                v7 = 0;
LABEL_61:

                                v38 = v58;
                                goto LABEL_62;
                              }
                            }

                            else if (v36 == v37)
                            {
                              goto LABEL_30;
                            }

                            v7 = 0;
LABEL_62:

                            v33 = v60;
                            goto LABEL_63;
                          }
                        }

                        else if (v31 == v32)
                        {
                          goto LABEL_27;
                        }

                        v7 = 0;
LABEL_63:

                        v28 = v62;
                        goto LABEL_64;
                      }
                    }

                    else if (v26 == v27)
                    {
                      goto LABEL_24;
                    }

                    v7 = 0;
LABEL_64:

                    v20 = v64;
                    v18 = v65;
                    goto LABEL_65;
                  }
                }

                else if (v18 == v19)
                {
                  goto LABEL_21;
                }

                v7 = 0;
LABEL_65:

                goto LABEL_66;
              }
            }

            else if (v15 == v16)
            {
              goto LABEL_18;
            }

            v7 = 0;
LABEL_66:

            goto LABEL_67;
          }
        }

        else if (v12 == v13)
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

  v5 = [(ASCLockup *)self kind];
  [(ASCDescriber *)v3 addObject:v5 withName:@"kind"];

  v6 = [(ASCLockup *)self metrics];
  [(ASCDescriber *)v3 addObject:v6 withName:@"metrics"];

  v7 = [(ASCLockup *)self icon];
  [(ASCDescriber *)v3 addObject:v7 withName:@"icon"];

  v8 = [(ASCLockup *)self heading];
  [(ASCDescriber *)v3 addObject:v8 withName:@"heading"];

  v9 = [(ASCLockup *)self title];
  [(ASCDescriber *)v3 addObject:v9 withName:@"title"];

  v10 = [(ASCLockup *)self subtitle];
  [(ASCDescriber *)v3 addObject:v10 withName:@"subtitle"];

  v11 = [(ASCLockup *)self ageRating];
  [(ASCDescriber *)v3 addObject:v11 withName:@"ageRating"];

  v12 = [(ASCLockup *)self offer];
  [(ASCDescriber *)v3 addObject:v12 withName:@"offer"];

  v13 = [(ASCLockup *)self features];
  v14 = [v13 count];

  if (v14)
  {
    v15 = [(ASCLockup *)self features];
    [(ASCDescriber *)v3 addObject:v15 withName:@"features"];
  }

  v16 = [(ASCDescriber *)v3 finalizeDescription];

  return v16;
}

- (id)featureWithClass:(Class)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(ASCLockup *)self features];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (id)lockupByAddingFeature:(id)a3
{
  v4 = a3;
  v5 = [(ASCLockup *)self features];
  v6 = [v5 mutableCopy];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __35__ASCLockup_lockupByAddingFeature___block_invoke;
  v23[3] = &unk_2784B15D8;
  v7 = v4;
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
  v10 = [(ASCLockup *)self kind];
  v11 = [(ASCLockup *)self metrics];
  v12 = [(ASCLockup *)self icon];
  v13 = [(ASCLockup *)self heading];
  v14 = [(ASCLockup *)self title];
  v15 = [(ASCLockup *)self subtitle];
  v16 = [(ASCLockup *)self ageRating];
  v17 = [(ASCLockup *)self offer];
  v20 = [(ASCLockup *)v19 initWithID:v9 kind:v10 metrics:v11 icon:v12 heading:v13 title:v14 subtitle:v15 ageRating:v16 offer:v17 features:v21];

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

- (ASCLockup)lockupWithOffer:(id)a3
{
  v4 = a3;
  v16 = [ASCLockup alloc];
  v15 = [(ASCLockup *)self id];
  v5 = [(ASCLockup *)self kind];
  v6 = [(ASCLockup *)self metrics];
  v7 = [(ASCLockup *)self icon];
  v8 = [(ASCLockup *)self heading];
  v9 = [(ASCLockup *)self title];
  v10 = [(ASCLockup *)self subtitle];
  v11 = [(ASCLockup *)self ageRating];
  v12 = [(ASCLockup *)self features];
  v13 = [(ASCLockup *)v16 initWithID:v15 kind:v5 metrics:v6 icon:v7 heading:v8 title:v9 subtitle:v10 ageRating:v11 offer:v4 features:v12];

  return v13;
}

@end