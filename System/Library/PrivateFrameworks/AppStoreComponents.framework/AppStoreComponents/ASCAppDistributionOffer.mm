@interface ASCAppDistributionOffer
- (ASCAppDistributionOffer)initWithCoder:(id)coder;
- (ASCAppDistributionOffer)initWithID:(id)d titles:(id)titles subtitles:(id)subtitles flags:(int64_t)flags ageRating:(id)rating metrics:(id)metrics appVersionId:(id)id distributorId:(id)self0;
- (ASCAppDistributionOffer)offerWithMetrics:(id)metrics;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCAppDistributionOffer

- (ASCAppDistributionOffer)initWithID:(id)d titles:(id)titles subtitles:(id)subtitles flags:(int64_t)flags ageRating:(id)rating metrics:(id)metrics appVersionId:(id)id distributorId:(id)self0
{
  dCopy = d;
  titlesCopy = titles;
  subtitlesCopy = subtitles;
  ratingCopy = rating;
  metricsCopy = metrics;
  idCopy = id;
  distributorIdCopy = distributorId;
  v37.receiver = self;
  v37.super_class = ASCAppDistributionOffer;
  v23 = [(ASCAppDistributionOffer *)&v37 init];
  if (v23)
  {
    v24 = [dCopy copy];
    id = v23->_id;
    v23->_id = v24;

    v26 = [titlesCopy copy];
    titles = v23->_titles;
    v23->_titles = v26;

    v28 = [subtitlesCopy copy];
    subtitles = v23->_subtitles;
    v23->_subtitles = v28;

    v23->_flags = flags;
    objc_storeStrong(&v23->_ageRating, rating);
    v30 = [metricsCopy copy];
    metrics = v23->_metrics;
    v23->_metrics = v30;

    v32 = [idCopy copy];
    appVersionId = v23->_appVersionId;
    v23->_appVersionId = v32;

    v34 = [distributorIdCopy copy];
    distributorId = v23->_distributorId;
    v23->_distributorId = v34;
  }

  return v23;
}

- (ASCAppDistributionOffer)initWithCoder:(id)coder
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
          v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appVersionId"];
          if (v11)
          {
            v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"distributorId"];
            v13 = v12;
            if (v12)
            {
              self = [(ASCAppDistributionOffer *)self initWithID:v5 titles:v6 subtitles:v7 flags:v8 ageRating:v9 metrics:v10 appVersionId:v11 distributorId:v12];
              selfCopy = self;
            }

            else
            {
              v55 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
              if (v55)
              {
                [(ASCAppDistributionOffer *)v55 initWithCoder:v56, v57, v58, v59, v60, v61, v62];
              }

              selfCopy = 0;
            }
          }

          else
          {
            v47 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
            if (v47)
            {
              [(ASCAppDistributionOffer *)v47 initWithCoder:v48, v49, v50, v51, v52, v53, v54];
            }

            selfCopy = 0;
          }
        }

        else
        {
          v39 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          if (v39)
          {
            [(ASCAppDistributionOffer *)v39 initWithCoder:v40, v41, v42, v43, v44, v45, v46];
          }

          selfCopy = 0;
        }
      }

      else
      {
        v31 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v31)
        {
          [(ASCAppDistributionOffer *)v31 initWithCoder:v32, v33, v34, v35, v36, v37, v38];
        }

        selfCopy = 0;
      }
    }

    else
    {
      v23 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v23)
      {
        [(ASCAppDistributionOffer *)v23 initWithCoder:v24, v25, v26, v27, v28, v29, v30];
      }

      selfCopy = 0;
    }
  }

  else
  {
    v15 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v15)
    {
      [(ASCAppDistributionOffer *)v15 initWithCoder:v16, v17, v18, v19, v20, v21, v22];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ASCAppDistributionOffer *)self id];
  [coderCopy encodeObject:v5 forKey:@"id"];

  titles = [(ASCAppDistributionOffer *)self titles];
  [coderCopy encodeObject:titles forKey:@"titles"];

  subtitles = [(ASCAppDistributionOffer *)self subtitles];
  [coderCopy encodeObject:subtitles forKey:@"subtitles"];

  [coderCopy encodeInteger:-[ASCAppDistributionOffer flags](self forKey:{"flags"), @"flags"}];
  ageRating = [(ASCAppDistributionOffer *)self ageRating];
  [coderCopy encodeObject:ageRating forKey:@"ageRating"];

  metrics = [(ASCAppDistributionOffer *)self metrics];
  [coderCopy encodeObject:metrics forKey:@"metrics"];

  appVersionId = [(ASCAppDistributionOffer *)self appVersionId];
  [coderCopy encodeObject:appVersionId forKey:@"appVersionId"];

  distributorId = [(ASCAppDistributionOffer *)self distributorId];
  [coderCopy encodeObject:distributorId forKey:@"distributorId"];
}

- (ASCAppDistributionOffer)offerWithMetrics:(id)metrics
{
  metricsCopy = metrics;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(ASCAppDistributionOffer *)self id];
  titles = [(ASCAppDistributionOffer *)self titles];
  subtitles = [(ASCAppDistributionOffer *)self subtitles];
  flags = [(ASCAppDistributionOffer *)self flags];
  ageRating = [(ASCAppDistributionOffer *)self ageRating];
  appVersionId = [(ASCAppDistributionOffer *)self appVersionId];
  distributorId = [(ASCAppDistributionOffer *)self distributorId];
  v13 = [v5 initWithID:v6 titles:titles subtitles:subtitles flags:flags ageRating:ageRating metrics:metricsCopy appVersionId:appVersionId distributorId:distributorId];

  return v13;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCAppDistributionOffer *)self id];
  [(ASCHasher *)v3 combineObject:v4];

  titles = [(ASCAppDistributionOffer *)self titles];
  [(ASCHasher *)v3 combineObject:titles];

  subtitles = [(ASCAppDistributionOffer *)self subtitles];
  [(ASCHasher *)v3 combineObject:subtitles];

  [(ASCHasher *)v3 combineInteger:[(ASCAppDistributionOffer *)self flags]];
  ageRating = [(ASCAppDistributionOffer *)self ageRating];
  [(ASCHasher *)v3 combineObject:ageRating];

  metrics = [(ASCAppDistributionOffer *)self metrics];
  [(ASCHasher *)v3 combineObject:metrics];

  appVersionId = [(ASCAppDistributionOffer *)self appVersionId];
  [(ASCHasher *)v3 combineObject:appVersionId];

  distributorId = [(ASCAppDistributionOffer *)self distributorId];
  [(ASCHasher *)v3 combineObject:distributorId];

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
    v8 = [(ASCAppDistributionOffer *)self id];
    v9 = [v7 id];
    v10 = v9;
    if (v8 && v9)
    {
      if ([v8 isEqual:v9])
      {
LABEL_10:
        titles = [(ASCAppDistributionOffer *)self titles];
        titles2 = [v7 titles];
        v13 = titles2;
        if (titles && titles2)
        {
          if ([titles isEqual:titles2])
          {
LABEL_13:
            subtitles = [(ASCAppDistributionOffer *)self subtitles];
            subtitles2 = [v7 subtitles];
            v16 = subtitles2;
            if (subtitles && subtitles2)
            {
              if (![subtitles isEqual:subtitles2])
              {
                goto LABEL_36;
              }
            }

            else if (subtitles != subtitles2)
            {
              goto LABEL_36;
            }

            flags = [(ASCAppDistributionOffer *)self flags];
            if (flags == [v7 flags])
            {
              ageRating = [(ASCAppDistributionOffer *)self ageRating];
              ageRating2 = [v7 ageRating];
              v21 = ageRating2;
              v47 = ageRating;
              if (ageRating && ageRating2)
              {
                v22 = ageRating;
                v23 = v21;
                v24 = [v22 isEqual:v21];
                v21 = v23;
                ageRating = v47;
                if (v24)
                {
LABEL_27:
                  v45 = v21;
                  metrics = [(ASCAppDistributionOffer *)self metrics];
                  metrics2 = [v7 metrics];
                  v27 = metrics2;
                  v46 = metrics;
                  if (metrics && metrics2)
                  {
                    v28 = metrics2;
                    v29 = [v46 isEqual:metrics2];
                    v27 = v28;
                    if (v29)
                    {
LABEL_30:
                      v43 = v27;
                      appVersionId = [(ASCAppDistributionOffer *)self appVersionId];
                      appVersionId2 = [v7 appVersionId];
                      v32 = appVersionId2;
                      v44 = appVersionId;
                      if (appVersionId && appVersionId2)
                      {
                        v33 = appVersionId2;
                        v34 = [v44 isEqual:appVersionId2];
                        v32 = v33;
                        if (v34)
                        {
                          goto LABEL_33;
                        }
                      }

                      else if (appVersionId == appVersionId2)
                      {
LABEL_33:
                        distributorId = [(ASCAppDistributionOffer *)self distributorId];
                        distributorId2 = [v7 distributorId];
                        v37 = distributorId2;
                        if (distributorId && distributorId2)
                        {
                          v38 = distributorId2;
                          v39 = [distributorId isEqual:distributorId2];
                          v37 = v38;
                          v40 = distributorId;
                          v17 = v39;
                        }

                        else
                        {
                          v40 = distributorId;
                          v17 = distributorId == distributorId2;
                        }

                        v32 = v42;
                        goto LABEL_45;
                      }

                      v17 = 0;
LABEL_45:

                      v27 = v43;
                      goto LABEL_46;
                    }
                  }

                  else if (metrics == metrics2)
                  {
                    goto LABEL_30;
                  }

                  v17 = 0;
LABEL_46:

                  v21 = v45;
                  ageRating = v47;
                  goto LABEL_47;
                }
              }

              else if (ageRating == ageRating2)
              {
                goto LABEL_27;
              }

              v17 = 0;
LABEL_47:

              goto LABEL_48;
            }

LABEL_36:
            v17 = 0;
LABEL_48:

            goto LABEL_49;
          }
        }

        else if (titles == titles2)
        {
          goto LABEL_13;
        }

        v17 = 0;
LABEL_49:

        goto LABEL_50;
      }
    }

    else if (v8 == v9)
    {
      goto LABEL_10;
    }

    v17 = 0;
LABEL_50:

    goto LABEL_51;
  }

  v17 = 0;
LABEL_51:

  return v17;
}

- (NSString)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  v4 = [(ASCAppDistributionOffer *)self id];
  [(ASCDescriber *)v3 addObject:v4 withName:@"id"];

  titles = [(ASCAppDistributionOffer *)self titles];
  [(ASCDescriber *)v3 addObject:titles withName:@"titles"];

  subtitles = [(ASCAppDistributionOffer *)self subtitles];
  [(ASCDescriber *)v3 addObject:subtitles withName:@"subtitles"];

  v7 = ASCOfferFlagsGetDescription([(ASCAppDistributionOffer *)self flags]);
  [(ASCDescriber *)v3 addObject:v7 withName:@"flags"];

  ageRating = [(ASCAppDistributionOffer *)self ageRating];
  [(ASCDescriber *)v3 addObject:ageRating withName:@"ageRating"];

  metrics = [(ASCAppDistributionOffer *)self metrics];
  [(ASCDescriber *)v3 addSensitiveObject:metrics withName:@"metrics"];

  appVersionId = [(ASCAppDistributionOffer *)self appVersionId];
  [(ASCDescriber *)v3 addObject:appVersionId withName:@"appVersionId"];

  distributorId = [(ASCAppDistributionOffer *)self distributorId];
  [(ASCDescriber *)v3 addObject:distributorId withName:@"distributorId"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end