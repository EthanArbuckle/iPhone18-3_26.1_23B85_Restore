@interface ASCAppOffer
- (ASCAppOffer)initWithCoder:(id)coder;
- (ASCAppOffer)initWithID:(id)d titles:(id)titles subtitles:(id)subtitles flags:(int64_t)flags ageRating:(id)rating metrics:(id)metrics baseBuyParams:(id)params metricsBuyParams:(id)self0 additionalHeaders:(id)self1 preflightPackageURL:(id)self2 bundleID:(id)self3 itemName:(id)self4 vendorName:(id)self5 capabilities:(id)self6;
- (ASCAppOffer)offerWithMetrics:(id)metrics;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCAppOffer

- (ASCAppOffer)initWithID:(id)d titles:(id)titles subtitles:(id)subtitles flags:(int64_t)flags ageRating:(id)rating metrics:(id)metrics baseBuyParams:(id)params metricsBuyParams:(id)self0 additionalHeaders:(id)self1 preflightPackageURL:(id)self2 bundleID:(id)self3 itemName:(id)self4 vendorName:(id)self5 capabilities:(id)self6
{
  dCopy = d;
  titlesCopy = titles;
  subtitlesCopy = subtitles;
  ratingCopy = rating;
  ratingCopy2 = rating;
  metricsCopy = metrics;
  v24 = titlesCopy;
  paramsCopy = params;
  buyParamsCopy = buyParams;
  v25 = subtitlesCopy;
  headersCopy = headers;
  lCopy = l;
  iDCopy = iD;
  nameCopy = name;
  vendorNameCopy = vendorName;
  capabilitiesCopy = capabilities;
  v64.receiver = self;
  v64.super_class = ASCAppOffer;
  v31 = [(ASCAppOffer *)&v64 init];
  if (v31)
  {
    v32 = [dCopy copy];
    id = v31->_id;
    v31->_id = v32;

    v34 = [v24 copy];
    titles = v31->_titles;
    v31->_titles = v34;

    v36 = [v25 copy];
    subtitles = v31->_subtitles;
    v31->_subtitles = v36;

    v31->_flags = flags;
    objc_storeStrong(&v31->_ageRating, ratingCopy);
    v38 = [metricsCopy copy];
    metrics = v31->_metrics;
    v31->_metrics = v38;

    v40 = [paramsCopy copy];
    baseBuyParams = v31->_baseBuyParams;
    v31->_baseBuyParams = v40;

    v42 = [buyParamsCopy copy];
    metricsBuyParams = v31->_metricsBuyParams;
    v31->_metricsBuyParams = v42;

    v44 = [headersCopy copy];
    additionalHeaders = v31->_additionalHeaders;
    v31->_additionalHeaders = v44;

    v46 = [lCopy copy];
    preflightPackageURL = v31->_preflightPackageURL;
    v31->_preflightPackageURL = v46;

    v48 = [iDCopy copy];
    bundleID = v31->_bundleID;
    v31->_bundleID = v48;

    v50 = [nameCopy copy];
    itemName = v31->_itemName;
    v31->_itemName = v50;

    v52 = [vendorNameCopy copy];
    vendorName = v31->_vendorName;
    v31->_vendorName = v52;

    v54 = [capabilitiesCopy copy];
    capabilities = v31->_capabilities;
    v31->_capabilities = v54;
  }

  return v31;
}

- (ASCAppOffer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"id"];
  if (v5)
  {
    v6 = ASCOfferTitlesDecodeForKey(coderCopy, @"titles");
    if (v6)
    {
      v7 = ASCOfferTitlesDecodeForKey(coderCopy, @"subtitles");
      if (v7)
      {
        v8 = [coderCopy decodeIntegerForKey:@"flags"];
        v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ageRating"];
        v10 = ASCMetricsDataDecodeArrayForKey(coderCopy, @"metrics");
        if (v10)
        {
          v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"baseBuyParams"];
          if (v11)
          {
            v102 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metricsBuyParams"];
            if (v102)
            {
              v95 = v8;
              v98 = v9;
              v12 = objc_alloc(MEMORY[0x277CBEB98]);
              v13 = objc_opt_class();
              v97 = [v12 initWithObjects:{v13, objc_opt_class(), 0}];
              v101 = [coderCopy decodeObjectOfClasses:? forKey:?];
              v100 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preflightPackageURL"];
              v99 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
              if (v99)
              {
                v96 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemName"];
                if (v96)
                {
                  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vendorName"];
                  if (v14)
                  {
                    v93 = objc_alloc(MEMORY[0x277CBEB98]);
                    v15 = objc_opt_class();
                    v94 = [v93 initWithObjects:{v15, objc_opt_class(), 0}];
                    v16 = [coderCopy decodeObjectOfClasses:v94 forKey:@"capabilities"];
                    self = [(ASCAppOffer *)self initWithID:v5 titles:v6 subtitles:v7 flags:v95 ageRating:v98 metrics:v10 baseBuyParams:v11 metricsBuyParams:v102 additionalHeaders:v101 preflightPackageURL:v100 bundleID:v99 itemName:v96 vendorName:v14 capabilities:v16];

                    v17 = v14;
                    v9 = v98;
                    selfCopy = self;
                    v19 = v97;
                  }

                  else
                  {
                    v84 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
                    if (v84)
                    {
                      [(ASCAppOffer *)v84 initWithCoder:v85, v86, v87, v88, v89, v90, v91];
                    }

                    selfCopy = 0;
                    v19 = v97;
                    v9 = v98;
                    v17 = 0;
                  }
                }

                else
                {
                  v76 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
                  if (v76)
                  {
                    [(ASCAppOffer *)v76 initWithCoder:v77, v78, v79, v80, v81, v82, v83];
                  }

                  selfCopy = 0;
                  v19 = v97;
                  v9 = v98;
                }
              }

              else
              {
                v68 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
                if (v68)
                {
                  [(ASCAppOffer *)v68 initWithCoder:v69, v70, v71, v72, v73, v74, v75];
                }

                selfCopy = 0;
                v19 = v97;
                v9 = v98;
              }
            }

            else
            {
              v60 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
              if (v60)
              {
                [(ASCAppOffer *)v60 initWithCoder:v61, v62, v63, v64, v65, v66, v67];
              }

              selfCopy = 0;
            }
          }

          else
          {
            v52 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
            if (v52)
            {
              [(ASCAppOffer *)v52 initWithCoder:v53, v54, v55, v56, v57, v58, v59];
            }

            selfCopy = 0;
          }
        }

        else
        {
          v44 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          if (v44)
          {
            [(ASCAppOffer *)v44 initWithCoder:v45, v46, v47, v48, v49, v50, v51];
          }

          selfCopy = 0;
        }
      }

      else
      {
        v36 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v36)
        {
          [(ASCAppOffer *)v36 initWithCoder:v37, v38, v39, v40, v41, v42, v43];
        }

        selfCopy = 0;
      }
    }

    else
    {
      v28 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v28)
      {
        [(ASCAppOffer *)v28 initWithCoder:v29, v30, v31, v32, v33, v34, v35];
      }

      selfCopy = 0;
    }
  }

  else
  {
    v20 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v20)
    {
      [(ASCAppOffer *)v20 initWithCoder:v21, v22, v23, v24, v25, v26, v27];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ASCAppOffer *)self id];
  [coderCopy encodeObject:v5 forKey:@"id"];

  titles = [(ASCAppOffer *)self titles];
  [coderCopy encodeObject:titles forKey:@"titles"];

  subtitles = [(ASCAppOffer *)self subtitles];
  [coderCopy encodeObject:subtitles forKey:@"subtitles"];

  [coderCopy encodeInteger:-[ASCAppOffer flags](self forKey:{"flags"), @"flags"}];
  ageRating = [(ASCAppOffer *)self ageRating];
  [coderCopy encodeObject:ageRating forKey:@"ageRating"];

  metrics = [(ASCAppOffer *)self metrics];
  [coderCopy encodeObject:metrics forKey:@"metrics"];

  baseBuyParams = [(ASCAppOffer *)self baseBuyParams];
  [coderCopy encodeObject:baseBuyParams forKey:@"baseBuyParams"];

  metricsBuyParams = [(ASCAppOffer *)self metricsBuyParams];
  [coderCopy encodeObject:metricsBuyParams forKey:@"metricsBuyParams"];

  additionalHeaders = [(ASCAppOffer *)self additionalHeaders];
  [coderCopy encodeObject:additionalHeaders forKey:@"additionalHeaders"];

  preflightPackageURL = [(ASCAppOffer *)self preflightPackageURL];
  [coderCopy encodeObject:preflightPackageURL forKey:@"preflightPackageURL"];

  bundleID = [(ASCAppOffer *)self bundleID];
  [coderCopy encodeObject:bundleID forKey:@"bundleID"];

  itemName = [(ASCAppOffer *)self itemName];
  [coderCopy encodeObject:itemName forKey:@"itemName"];

  vendorName = [(ASCAppOffer *)self vendorName];
  [coderCopy encodeObject:vendorName forKey:@"vendorName"];

  capabilities = [(ASCAppOffer *)self capabilities];
  [coderCopy encodeObject:capabilities forKey:@"capabilities"];
}

- (ASCAppOffer)offerWithMetrics:(id)metrics
{
  metricsCopy = metrics;
  v16 = objc_alloc(objc_opt_class());
  v20 = [(ASCAppOffer *)self id];
  titles = [(ASCAppOffer *)self titles];
  subtitles = [(ASCAppOffer *)self subtitles];
  flags = [(ASCAppOffer *)self flags];
  ageRating = [(ASCAppOffer *)self ageRating];
  baseBuyParams = [(ASCAppOffer *)self baseBuyParams];
  metricsBuyParams = [(ASCAppOffer *)self metricsBuyParams];
  additionalHeaders = [(ASCAppOffer *)self additionalHeaders];
  preflightPackageURL = [(ASCAppOffer *)self preflightPackageURL];
  bundleID = [(ASCAppOffer *)self bundleID];
  itemName = [(ASCAppOffer *)self itemName];
  vendorName = [(ASCAppOffer *)self vendorName];
  capabilities = [(ASCAppOffer *)self capabilities];
  v17 = [v16 initWithID:v20 titles:titles subtitles:subtitles flags:flags ageRating:ageRating metrics:metricsCopy baseBuyParams:baseBuyParams metricsBuyParams:metricsBuyParams additionalHeaders:additionalHeaders preflightPackageURL:preflightPackageURL bundleID:bundleID itemName:itemName vendorName:vendorName capabilities:capabilities];

  return v17;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCAppOffer *)self id];
  [(ASCHasher *)v3 combineObject:v4];

  titles = [(ASCAppOffer *)self titles];
  [(ASCHasher *)v3 combineObject:titles];

  subtitles = [(ASCAppOffer *)self subtitles];
  [(ASCHasher *)v3 combineObject:subtitles];

  [(ASCHasher *)v3 combineInteger:[(ASCAppOffer *)self flags]];
  ageRating = [(ASCAppOffer *)self ageRating];
  [(ASCHasher *)v3 combineObject:ageRating];

  metrics = [(ASCAppOffer *)self metrics];
  [(ASCHasher *)v3 combineObject:metrics];

  baseBuyParams = [(ASCAppOffer *)self baseBuyParams];
  [(ASCHasher *)v3 combineObject:baseBuyParams];

  metricsBuyParams = [(ASCAppOffer *)self metricsBuyParams];
  [(ASCHasher *)v3 combineObject:metricsBuyParams];

  additionalHeaders = [(ASCAppOffer *)self additionalHeaders];
  [(ASCHasher *)v3 combineObject:additionalHeaders];

  preflightPackageURL = [(ASCAppOffer *)self preflightPackageURL];
  [(ASCHasher *)v3 combineObject:preflightPackageURL];

  bundleID = [(ASCAppOffer *)self bundleID];
  [(ASCHasher *)v3 combineObject:bundleID];

  itemName = [(ASCAppOffer *)self itemName];
  [(ASCHasher *)v3 combineObject:itemName];

  vendorName = [(ASCAppOffer *)self vendorName];
  [(ASCHasher *)v3 combineObject:vendorName];

  capabilities = [(ASCAppOffer *)self capabilities];
  [(ASCHasher *)v3 combineObject:capabilities];

  finalizeHash = [(ASCHasher *)v3 finalizeHash];
  return finalizeHash;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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

  v7 = v6;

  if (v7)
  {
    v8 = [(ASCAppOffer *)self id];
    v9 = [v7 id];
    v10 = v9;
    if (v8 && v9)
    {
      if ([v8 isEqual:v9])
      {
LABEL_10:
        titles = [(ASCAppOffer *)self titles];
        titles2 = [v7 titles];
        v13 = titles2;
        if (titles && titles2)
        {
          if ([titles isEqual:titles2])
          {
LABEL_13:
            subtitles = [(ASCAppOffer *)self subtitles];
            subtitles2 = [v7 subtitles];
            v16 = subtitles2;
            if (subtitles && subtitles2)
            {
              if (![subtitles isEqual:subtitles2])
              {
                goto LABEL_54;
              }
            }

            else if (subtitles != subtitles2)
            {
              goto LABEL_54;
            }

            flags = [(ASCAppOffer *)self flags];
            if (flags == [v7 flags])
            {
              ageRating = [(ASCAppOffer *)self ageRating];
              ageRating2 = [v7 ageRating];
              v21 = ageRating2;
              if (ageRating && ageRating2)
              {
                v22 = ageRating;
                v74 = subtitles;
                v23 = v16;
                v24 = ageRating;
                v25 = v21;
                v26 = [v22 isEqual:v21];
                v21 = v25;
                ageRating = v24;
                v16 = v23;
                subtitles = v74;
                if (v26)
                {
LABEL_27:
                  v72 = v21;
                  v73 = ageRating;
                  metrics = [(ASCAppOffer *)self metrics];
                  metrics2 = [v7 metrics];
                  v29 = metrics2;
                  v76 = metrics;
                  if (metrics && metrics2)
                  {
                    v30 = metrics2;
                    v31 = [v76 isEqual:metrics2];
                    v29 = v30;
                    if (v31)
                    {
LABEL_30:
                      v70 = v29;
                      baseBuyParams = [(ASCAppOffer *)self baseBuyParams];
                      baseBuyParams2 = [v7 baseBuyParams];
                      v34 = baseBuyParams2;
                      v71 = baseBuyParams;
                      if (baseBuyParams && baseBuyParams2)
                      {
                        v35 = baseBuyParams2;
                        v36 = [v71 isEqual:baseBuyParams2];
                        v34 = v35;
                        if (v36)
                        {
LABEL_33:
                          v68 = v34;
                          metricsBuyParams = [(ASCAppOffer *)self metricsBuyParams];
                          metricsBuyParams2 = [v7 metricsBuyParams];
                          v39 = metricsBuyParams2;
                          v69 = metricsBuyParams;
                          if (metricsBuyParams && metricsBuyParams2)
                          {
                            v40 = metricsBuyParams2;
                            v41 = [v69 isEqual:metricsBuyParams2];
                            v39 = v40;
                            if (v41)
                            {
LABEL_36:
                              v66 = v39;
                              additionalHeaders = [(ASCAppOffer *)self additionalHeaders];
                              additionalHeaders2 = [v7 additionalHeaders];
                              v67 = additionalHeaders;
                              v65 = additionalHeaders2;
                              if (additionalHeaders && additionalHeaders2)
                              {
                                if ([additionalHeaders isEqual:additionalHeaders2])
                                {
LABEL_39:
                                  preflightPackageURL = [(ASCAppOffer *)self preflightPackageURL];
                                  preflightPackageURL2 = [v7 preflightPackageURL];
                                  v63 = preflightPackageURL2;
                                  v64 = preflightPackageURL;
                                  if (preflightPackageURL && preflightPackageURL2)
                                  {
                                    if ([preflightPackageURL isEqual:preflightPackageURL2])
                                    {
LABEL_42:
                                      bundleID = [(ASCAppOffer *)self bundleID];
                                      bundleID2 = [v7 bundleID];
                                      v62 = bundleID;
                                      if (bundleID && bundleID2)
                                      {
                                        v48 = bundleID2;
                                        if ([v62 isEqual:bundleID2])
                                        {
LABEL_45:
                                          v75 = subtitles;
                                          v61 = v16;
                                          itemName = [(ASCAppOffer *)self itemName];
                                          itemName2 = [v7 itemName];
                                          v51 = itemName;
                                          v60 = itemName2;
                                          if (itemName && itemName2)
                                          {
                                            if ([itemName isEqual:itemName2])
                                            {
LABEL_48:
                                              vendorName = [(ASCAppOffer *)self vendorName];
                                              vendorName2 = [v7 vendorName];
                                              v58 = vendorName2;
                                              v59 = vendorName;
                                              if (vendorName && vendorName2)
                                              {
                                                if ([vendorName isEqual:vendorName2])
                                                {
                                                  goto LABEL_51;
                                                }
                                              }

                                              else if (vendorName == vendorName2)
                                              {
LABEL_51:
                                                capabilities = [(ASCAppOffer *)self capabilities];
                                                capabilities2 = [v7 capabilities];
                                                v55 = capabilities;
                                                if (capabilities && capabilities2)
                                                {
                                                  v17 = [capabilities isEqual:capabilities2];
                                                }

                                                else
                                                {
                                                  v17 = capabilities == capabilities2;
                                                }

                                                goto LABEL_75;
                                              }

                                              v17 = 0;
LABEL_75:

                                              goto LABEL_76;
                                            }
                                          }

                                          else if (itemName == itemName2)
                                          {
                                            goto LABEL_48;
                                          }

                                          v17 = 0;
LABEL_76:

                                          v16 = v61;
                                          subtitles = v75;
                                          goto LABEL_77;
                                        }
                                      }

                                      else
                                      {
                                        v48 = bundleID2;
                                        if (v62 == bundleID2)
                                        {
                                          goto LABEL_45;
                                        }
                                      }

                                      v17 = 0;
LABEL_77:

                                      goto LABEL_78;
                                    }
                                  }

                                  else if (preflightPackageURL == preflightPackageURL2)
                                  {
                                    goto LABEL_42;
                                  }

                                  v17 = 0;
LABEL_78:

                                  goto LABEL_79;
                                }
                              }

                              else if (additionalHeaders == additionalHeaders2)
                              {
                                goto LABEL_39;
                              }

                              v17 = 0;
LABEL_79:

                              v39 = v66;
                              goto LABEL_80;
                            }
                          }

                          else if (metricsBuyParams == metricsBuyParams2)
                          {
                            goto LABEL_36;
                          }

                          v17 = 0;
LABEL_80:

                          v34 = v68;
                          goto LABEL_81;
                        }
                      }

                      else if (baseBuyParams == baseBuyParams2)
                      {
                        goto LABEL_33;
                      }

                      v17 = 0;
LABEL_81:

                      v29 = v70;
                      goto LABEL_82;
                    }
                  }

                  else if (metrics == metrics2)
                  {
                    goto LABEL_30;
                  }

                  v17 = 0;
LABEL_82:

                  v21 = v72;
                  ageRating = v73;
                  goto LABEL_83;
                }
              }

              else if (ageRating == ageRating2)
              {
                goto LABEL_27;
              }

              v17 = 0;
LABEL_83:

              goto LABEL_84;
            }

LABEL_54:
            v17 = 0;
LABEL_84:

            goto LABEL_85;
          }
        }

        else if (titles == titles2)
        {
          goto LABEL_13;
        }

        v17 = 0;
LABEL_85:

        goto LABEL_86;
      }
    }

    else if (v8 == v9)
    {
      goto LABEL_10;
    }

    v17 = 0;
LABEL_86:

    goto LABEL_87;
  }

  v17 = 0;
LABEL_87:

  return v17;
}

- (NSString)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  v4 = [(ASCAppOffer *)self id];
  [(ASCDescriber *)v3 addObject:v4 withName:@"id"];

  titles = [(ASCAppOffer *)self titles];
  [(ASCDescriber *)v3 addObject:titles withName:@"titles"];

  subtitles = [(ASCAppOffer *)self subtitles];
  [(ASCDescriber *)v3 addObject:subtitles withName:@"subtitles"];

  v7 = ASCOfferFlagsGetDescription([(ASCAppOffer *)self flags]);
  [(ASCDescriber *)v3 addObject:v7 withName:@"flags"];

  ageRating = [(ASCAppOffer *)self ageRating];
  [(ASCDescriber *)v3 addObject:ageRating withName:@"ageRating"];

  metrics = [(ASCAppOffer *)self metrics];
  [(ASCDescriber *)v3 addSensitiveObject:metrics withName:@"metrics"];

  baseBuyParams = [(ASCAppOffer *)self baseBuyParams];
  [(ASCDescriber *)v3 addSensitiveObject:baseBuyParams withName:@"baseBuyParams"];

  metricsBuyParams = [(ASCAppOffer *)self metricsBuyParams];
  [(ASCDescriber *)v3 addSensitiveObject:metricsBuyParams withName:@"metricsBuyParams"];

  additionalHeaders = [(ASCAppOffer *)self additionalHeaders];
  [(ASCDescriber *)v3 addObject:additionalHeaders withName:@"additionalHeaders"];

  preflightPackageURL = [(ASCAppOffer *)self preflightPackageURL];
  [(ASCDescriber *)v3 addObject:preflightPackageURL withName:@"preflightPackageURL"];

  bundleID = [(ASCAppOffer *)self bundleID];
  [(ASCDescriber *)v3 addObject:bundleID withName:@"bundleID"];

  itemName = [(ASCAppOffer *)self itemName];
  [(ASCDescriber *)v3 addObject:itemName withName:@"itemName"];

  vendorName = [(ASCAppOffer *)self vendorName];
  [(ASCDescriber *)v3 addObject:vendorName withName:@"vendorName"];

  capabilities = [(ASCAppOffer *)self capabilities];
  [(ASCDescriber *)v3 addObject:capabilities withName:@"capabilities"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end