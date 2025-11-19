@interface ASCAppOffer
- (ASCAppOffer)initWithCoder:(id)a3;
- (ASCAppOffer)initWithID:(id)a3 titles:(id)a4 subtitles:(id)a5 flags:(int64_t)a6 ageRating:(id)a7 metrics:(id)a8 baseBuyParams:(id)a9 metricsBuyParams:(id)a10 additionalHeaders:(id)a11 preflightPackageURL:(id)a12 bundleID:(id)a13 itemName:(id)a14 vendorName:(id)a15 capabilities:(id)a16;
- (ASCAppOffer)offerWithMetrics:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCAppOffer

- (ASCAppOffer)initWithID:(id)a3 titles:(id)a4 subtitles:(id)a5 flags:(int64_t)a6 ageRating:(id)a7 metrics:(id)a8 baseBuyParams:(id)a9 metricsBuyParams:(id)a10 additionalHeaders:(id)a11 preflightPackageURL:(id)a12 bundleID:(id)a13 itemName:(id)a14 vendorName:(id)a15 capabilities:(id)a16
{
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v58 = a7;
  v60 = a7;
  v23 = a8;
  v24 = v21;
  v63 = a9;
  v62 = a10;
  v25 = v22;
  v61 = a11;
  v26 = a12;
  v27 = a13;
  v28 = a14;
  v29 = a15;
  v30 = a16;
  v64.receiver = self;
  v64.super_class = ASCAppOffer;
  v31 = [(ASCAppOffer *)&v64 init];
  if (v31)
  {
    v32 = [v20 copy];
    id = v31->_id;
    v31->_id = v32;

    v34 = [v24 copy];
    titles = v31->_titles;
    v31->_titles = v34;

    v36 = [v25 copy];
    subtitles = v31->_subtitles;
    v31->_subtitles = v36;

    v31->_flags = a6;
    objc_storeStrong(&v31->_ageRating, v58);
    v38 = [v23 copy];
    metrics = v31->_metrics;
    v31->_metrics = v38;

    v40 = [v63 copy];
    baseBuyParams = v31->_baseBuyParams;
    v31->_baseBuyParams = v40;

    v42 = [v62 copy];
    metricsBuyParams = v31->_metricsBuyParams;
    v31->_metricsBuyParams = v42;

    v44 = [v61 copy];
    additionalHeaders = v31->_additionalHeaders;
    v31->_additionalHeaders = v44;

    v46 = [v26 copy];
    preflightPackageURL = v31->_preflightPackageURL;
    v31->_preflightPackageURL = v46;

    v48 = [v27 copy];
    bundleID = v31->_bundleID;
    v31->_bundleID = v48;

    v50 = [v28 copy];
    itemName = v31->_itemName;
    v31->_itemName = v50;

    v52 = [v29 copy];
    vendorName = v31->_vendorName;
    v31->_vendorName = v52;

    v54 = [v30 copy];
    capabilities = v31->_capabilities;
    v31->_capabilities = v54;
  }

  return v31;
}

- (ASCAppOffer)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"id"];
  if (v5)
  {
    v6 = ASCOfferTitlesDecodeForKey(v4, @"titles");
    if (v6)
    {
      v7 = ASCOfferTitlesDecodeForKey(v4, @"subtitles");
      if (v7)
      {
        v8 = [v4 decodeIntegerForKey:@"flags"];
        v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ageRating"];
        v10 = ASCMetricsDataDecodeArrayForKey(v4, @"metrics");
        if (v10)
        {
          v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"baseBuyParams"];
          if (v11)
          {
            v102 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metricsBuyParams"];
            if (v102)
            {
              v95 = v8;
              v98 = v9;
              v12 = objc_alloc(MEMORY[0x277CBEB98]);
              v13 = objc_opt_class();
              v97 = [v12 initWithObjects:{v13, objc_opt_class(), 0}];
              v101 = [v4 decodeObjectOfClasses:? forKey:?];
              v100 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preflightPackageURL"];
              v99 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
              if (v99)
              {
                v96 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"itemName"];
                if (v96)
                {
                  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"vendorName"];
                  if (v14)
                  {
                    v93 = objc_alloc(MEMORY[0x277CBEB98]);
                    v15 = objc_opt_class();
                    v94 = [v93 initWithObjects:{v15, objc_opt_class(), 0}];
                    v16 = [v4 decodeObjectOfClasses:v94 forKey:@"capabilities"];
                    self = [(ASCAppOffer *)self initWithID:v5 titles:v6 subtitles:v7 flags:v95 ageRating:v98 metrics:v10 baseBuyParams:v11 metricsBuyParams:v102 additionalHeaders:v101 preflightPackageURL:v100 bundleID:v99 itemName:v96 vendorName:v14 capabilities:v16];

                    v17 = v14;
                    v9 = v98;
                    v18 = self;
                    v19 = v97;
                  }

                  else
                  {
                    v84 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
                    if (v84)
                    {
                      [(ASCAppOffer *)v84 initWithCoder:v85, v86, v87, v88, v89, v90, v91];
                    }

                    v18 = 0;
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

                  v18 = 0;
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

                v18 = 0;
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

              v18 = 0;
            }
          }

          else
          {
            v52 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
            if (v52)
            {
              [(ASCAppOffer *)v52 initWithCoder:v53, v54, v55, v56, v57, v58, v59];
            }

            v18 = 0;
          }
        }

        else
        {
          v44 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          if (v44)
          {
            [(ASCAppOffer *)v44 initWithCoder:v45, v46, v47, v48, v49, v50, v51];
          }

          v18 = 0;
        }
      }

      else
      {
        v36 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v36)
        {
          [(ASCAppOffer *)v36 initWithCoder:v37, v38, v39, v40, v41, v42, v43];
        }

        v18 = 0;
      }
    }

    else
    {
      v28 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v28)
      {
        [(ASCAppOffer *)v28 initWithCoder:v29, v30, v31, v32, v33, v34, v35];
      }

      v18 = 0;
    }
  }

  else
  {
    v20 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v20)
    {
      [(ASCAppOffer *)v20 initWithCoder:v21, v22, v23, v24, v25, v26, v27];
    }

    v18 = 0;
  }

  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASCAppOffer *)self id];
  [v4 encodeObject:v5 forKey:@"id"];

  v6 = [(ASCAppOffer *)self titles];
  [v4 encodeObject:v6 forKey:@"titles"];

  v7 = [(ASCAppOffer *)self subtitles];
  [v4 encodeObject:v7 forKey:@"subtitles"];

  [v4 encodeInteger:-[ASCAppOffer flags](self forKey:{"flags"), @"flags"}];
  v8 = [(ASCAppOffer *)self ageRating];
  [v4 encodeObject:v8 forKey:@"ageRating"];

  v9 = [(ASCAppOffer *)self metrics];
  [v4 encodeObject:v9 forKey:@"metrics"];

  v10 = [(ASCAppOffer *)self baseBuyParams];
  [v4 encodeObject:v10 forKey:@"baseBuyParams"];

  v11 = [(ASCAppOffer *)self metricsBuyParams];
  [v4 encodeObject:v11 forKey:@"metricsBuyParams"];

  v12 = [(ASCAppOffer *)self additionalHeaders];
  [v4 encodeObject:v12 forKey:@"additionalHeaders"];

  v13 = [(ASCAppOffer *)self preflightPackageURL];
  [v4 encodeObject:v13 forKey:@"preflightPackageURL"];

  v14 = [(ASCAppOffer *)self bundleID];
  [v4 encodeObject:v14 forKey:@"bundleID"];

  v15 = [(ASCAppOffer *)self itemName];
  [v4 encodeObject:v15 forKey:@"itemName"];

  v16 = [(ASCAppOffer *)self vendorName];
  [v4 encodeObject:v16 forKey:@"vendorName"];

  v17 = [(ASCAppOffer *)self capabilities];
  [v4 encodeObject:v17 forKey:@"capabilities"];
}

- (ASCAppOffer)offerWithMetrics:(id)a3
{
  v18 = a3;
  v16 = objc_alloc(objc_opt_class());
  v20 = [(ASCAppOffer *)self id];
  v19 = [(ASCAppOffer *)self titles];
  v4 = [(ASCAppOffer *)self subtitles];
  v15 = [(ASCAppOffer *)self flags];
  v5 = [(ASCAppOffer *)self ageRating];
  v14 = [(ASCAppOffer *)self baseBuyParams];
  v6 = [(ASCAppOffer *)self metricsBuyParams];
  v7 = [(ASCAppOffer *)self additionalHeaders];
  v8 = [(ASCAppOffer *)self preflightPackageURL];
  v9 = [(ASCAppOffer *)self bundleID];
  v10 = [(ASCAppOffer *)self itemName];
  v11 = [(ASCAppOffer *)self vendorName];
  v12 = [(ASCAppOffer *)self capabilities];
  v17 = [v16 initWithID:v20 titles:v19 subtitles:v4 flags:v15 ageRating:v5 metrics:v18 baseBuyParams:v14 metricsBuyParams:v6 additionalHeaders:v7 preflightPackageURL:v8 bundleID:v9 itemName:v10 vendorName:v11 capabilities:v12];

  return v17;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCAppOffer *)self id];
  [(ASCHasher *)v3 combineObject:v4];

  v5 = [(ASCAppOffer *)self titles];
  [(ASCHasher *)v3 combineObject:v5];

  v6 = [(ASCAppOffer *)self subtitles];
  [(ASCHasher *)v3 combineObject:v6];

  [(ASCHasher *)v3 combineInteger:[(ASCAppOffer *)self flags]];
  v7 = [(ASCAppOffer *)self ageRating];
  [(ASCHasher *)v3 combineObject:v7];

  v8 = [(ASCAppOffer *)self metrics];
  [(ASCHasher *)v3 combineObject:v8];

  v9 = [(ASCAppOffer *)self baseBuyParams];
  [(ASCHasher *)v3 combineObject:v9];

  v10 = [(ASCAppOffer *)self metricsBuyParams];
  [(ASCHasher *)v3 combineObject:v10];

  v11 = [(ASCAppOffer *)self additionalHeaders];
  [(ASCHasher *)v3 combineObject:v11];

  v12 = [(ASCAppOffer *)self preflightPackageURL];
  [(ASCHasher *)v3 combineObject:v12];

  v13 = [(ASCAppOffer *)self bundleID];
  [(ASCHasher *)v3 combineObject:v13];

  v14 = [(ASCAppOffer *)self itemName];
  [(ASCHasher *)v3 combineObject:v14];

  v15 = [(ASCAppOffer *)self vendorName];
  [(ASCHasher *)v3 combineObject:v15];

  v16 = [(ASCAppOffer *)self capabilities];
  [(ASCHasher *)v3 combineObject:v16];

  v17 = [(ASCHasher *)v3 finalizeHash];
  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
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
        v11 = [(ASCAppOffer *)self titles];
        v12 = [v7 titles];
        v13 = v12;
        if (v11 && v12)
        {
          if ([v11 isEqual:v12])
          {
LABEL_13:
            v14 = [(ASCAppOffer *)self subtitles];
            v15 = [v7 subtitles];
            v16 = v15;
            if (v14 && v15)
            {
              if (![v14 isEqual:v15])
              {
                goto LABEL_54;
              }
            }

            else if (v14 != v15)
            {
              goto LABEL_54;
            }

            v18 = [(ASCAppOffer *)self flags];
            if (v18 == [v7 flags])
            {
              v19 = [(ASCAppOffer *)self ageRating];
              v20 = [v7 ageRating];
              v21 = v20;
              if (v19 && v20)
              {
                v22 = v19;
                v74 = v14;
                v23 = v16;
                v24 = v19;
                v25 = v21;
                v26 = [v22 isEqual:v21];
                v21 = v25;
                v19 = v24;
                v16 = v23;
                v14 = v74;
                if (v26)
                {
LABEL_27:
                  v72 = v21;
                  v73 = v19;
                  v27 = [(ASCAppOffer *)self metrics];
                  v28 = [v7 metrics];
                  v29 = v28;
                  v76 = v27;
                  if (v27 && v28)
                  {
                    v30 = v28;
                    v31 = [v76 isEqual:v28];
                    v29 = v30;
                    if (v31)
                    {
LABEL_30:
                      v70 = v29;
                      v32 = [(ASCAppOffer *)self baseBuyParams];
                      v33 = [v7 baseBuyParams];
                      v34 = v33;
                      v71 = v32;
                      if (v32 && v33)
                      {
                        v35 = v33;
                        v36 = [v71 isEqual:v33];
                        v34 = v35;
                        if (v36)
                        {
LABEL_33:
                          v68 = v34;
                          v37 = [(ASCAppOffer *)self metricsBuyParams];
                          v38 = [v7 metricsBuyParams];
                          v39 = v38;
                          v69 = v37;
                          if (v37 && v38)
                          {
                            v40 = v38;
                            v41 = [v69 isEqual:v38];
                            v39 = v40;
                            if (v41)
                            {
LABEL_36:
                              v66 = v39;
                              v42 = [(ASCAppOffer *)self additionalHeaders];
                              v43 = [v7 additionalHeaders];
                              v67 = v42;
                              v65 = v43;
                              if (v42 && v43)
                              {
                                if ([v42 isEqual:v43])
                                {
LABEL_39:
                                  v44 = [(ASCAppOffer *)self preflightPackageURL];
                                  v45 = [v7 preflightPackageURL];
                                  v63 = v45;
                                  v64 = v44;
                                  if (v44 && v45)
                                  {
                                    if ([v44 isEqual:v45])
                                    {
LABEL_42:
                                      v46 = [(ASCAppOffer *)self bundleID];
                                      v47 = [v7 bundleID];
                                      v62 = v46;
                                      if (v46 && v47)
                                      {
                                        v48 = v47;
                                        if ([v62 isEqual:v47])
                                        {
LABEL_45:
                                          v75 = v14;
                                          v61 = v16;
                                          v49 = [(ASCAppOffer *)self itemName];
                                          v50 = [v7 itemName];
                                          v51 = v49;
                                          v60 = v50;
                                          if (v49 && v50)
                                          {
                                            if ([v49 isEqual:v50])
                                            {
LABEL_48:
                                              v52 = [(ASCAppOffer *)self vendorName];
                                              v53 = [v7 vendorName];
                                              v58 = v53;
                                              v59 = v52;
                                              if (v52 && v53)
                                              {
                                                if ([v52 isEqual:v53])
                                                {
                                                  goto LABEL_51;
                                                }
                                              }

                                              else if (v52 == v53)
                                              {
LABEL_51:
                                                v54 = [(ASCAppOffer *)self capabilities];
                                                v57 = [v7 capabilities];
                                                v55 = v54;
                                                if (v54 && v57)
                                                {
                                                  v17 = [v54 isEqual:v57];
                                                }

                                                else
                                                {
                                                  v17 = v54 == v57;
                                                }

                                                goto LABEL_75;
                                              }

                                              v17 = 0;
LABEL_75:

                                              goto LABEL_76;
                                            }
                                          }

                                          else if (v49 == v50)
                                          {
                                            goto LABEL_48;
                                          }

                                          v17 = 0;
LABEL_76:

                                          v16 = v61;
                                          v14 = v75;
                                          goto LABEL_77;
                                        }
                                      }

                                      else
                                      {
                                        v48 = v47;
                                        if (v62 == v47)
                                        {
                                          goto LABEL_45;
                                        }
                                      }

                                      v17 = 0;
LABEL_77:

                                      goto LABEL_78;
                                    }
                                  }

                                  else if (v44 == v45)
                                  {
                                    goto LABEL_42;
                                  }

                                  v17 = 0;
LABEL_78:

                                  goto LABEL_79;
                                }
                              }

                              else if (v42 == v43)
                              {
                                goto LABEL_39;
                              }

                              v17 = 0;
LABEL_79:

                              v39 = v66;
                              goto LABEL_80;
                            }
                          }

                          else if (v37 == v38)
                          {
                            goto LABEL_36;
                          }

                          v17 = 0;
LABEL_80:

                          v34 = v68;
                          goto LABEL_81;
                        }
                      }

                      else if (v32 == v33)
                      {
                        goto LABEL_33;
                      }

                      v17 = 0;
LABEL_81:

                      v29 = v70;
                      goto LABEL_82;
                    }
                  }

                  else if (v27 == v28)
                  {
                    goto LABEL_30;
                  }

                  v17 = 0;
LABEL_82:

                  v21 = v72;
                  v19 = v73;
                  goto LABEL_83;
                }
              }

              else if (v19 == v20)
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

        else if (v11 == v12)
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

  v5 = [(ASCAppOffer *)self titles];
  [(ASCDescriber *)v3 addObject:v5 withName:@"titles"];

  v6 = [(ASCAppOffer *)self subtitles];
  [(ASCDescriber *)v3 addObject:v6 withName:@"subtitles"];

  v7 = ASCOfferFlagsGetDescription([(ASCAppOffer *)self flags]);
  [(ASCDescriber *)v3 addObject:v7 withName:@"flags"];

  v8 = [(ASCAppOffer *)self ageRating];
  [(ASCDescriber *)v3 addObject:v8 withName:@"ageRating"];

  v9 = [(ASCAppOffer *)self metrics];
  [(ASCDescriber *)v3 addSensitiveObject:v9 withName:@"metrics"];

  v10 = [(ASCAppOffer *)self baseBuyParams];
  [(ASCDescriber *)v3 addSensitiveObject:v10 withName:@"baseBuyParams"];

  v11 = [(ASCAppOffer *)self metricsBuyParams];
  [(ASCDescriber *)v3 addSensitiveObject:v11 withName:@"metricsBuyParams"];

  v12 = [(ASCAppOffer *)self additionalHeaders];
  [(ASCDescriber *)v3 addObject:v12 withName:@"additionalHeaders"];

  v13 = [(ASCAppOffer *)self preflightPackageURL];
  [(ASCDescriber *)v3 addObject:v13 withName:@"preflightPackageURL"];

  v14 = [(ASCAppOffer *)self bundleID];
  [(ASCDescriber *)v3 addObject:v14 withName:@"bundleID"];

  v15 = [(ASCAppOffer *)self itemName];
  [(ASCDescriber *)v3 addObject:v15 withName:@"itemName"];

  v16 = [(ASCAppOffer *)self vendorName];
  [(ASCDescriber *)v3 addObject:v16 withName:@"vendorName"];

  v17 = [(ASCAppOffer *)self capabilities];
  [(ASCDescriber *)v3 addObject:v17 withName:@"capabilities"];

  v18 = [(ASCDescriber *)v3 finalizeDescription];

  return v18;
}

@end