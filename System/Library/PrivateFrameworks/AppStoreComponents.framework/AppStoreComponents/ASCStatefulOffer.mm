@interface ASCStatefulOffer
- (ASCStatefulOffer)initWithCoder:(id)coder;
- (ASCStatefulOffer)initWithID:(id)d titles:(id)titles subtitles:(id)subtitles flags:(int64_t)flags ageRating:(id)rating metrics:(id)metrics defaultOffer:(id)offer buyOffer:(id)self0 openOffer:(id)self1;
- (ASCStatefulOffer)offerWithMetrics:(id)metrics;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCStatefulOffer

- (ASCStatefulOffer)initWithID:(id)d titles:(id)titles subtitles:(id)subtitles flags:(int64_t)flags ageRating:(id)rating metrics:(id)metrics defaultOffer:(id)offer buyOffer:(id)self0 openOffer:(id)self1
{
  dCopy = d;
  titlesCopy = titles;
  subtitlesCopy = subtitles;
  ratingCopy = rating;
  metricsCopy = metrics;
  offerCopy = offer;
  buyOfferCopy = buyOffer;
  openOfferCopy = openOffer;
  v39.receiver = self;
  v39.super_class = ASCStatefulOffer;
  v23 = [(ASCStatefulOffer *)&v39 init];
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
    objc_storeStrong(&v23->_metrics, metrics);
    v30 = [offerCopy copyWithZone:0];
    defaultOffer = v23->_defaultOffer;
    v23->_defaultOffer = v30;

    v32 = [buyOfferCopy copyWithZone:0];
    buyOffer = v23->_buyOffer;
    v23->_buyOffer = v32;

    v34 = [openOfferCopy copyWithZone:0];
    openOffer = v23->_openOffer;
    v23->_openOffer = v34;
  }

  return v23;
}

- (ASCStatefulOffer)initWithCoder:(id)coder
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
          v11 = ASCOfferDecodeForKey(coderCopy, @"defaultOffer");
          if (v11)
          {
            v12 = ASCOfferDecodeForKey(coderCopy, @"buyOffer");
            v13 = ASCOfferDecodeForKey(coderCopy, @"openOffer");
            v14 = v8;
            v15 = v9;
            v16 = v13;
            self = [(ASCStatefulOffer *)self initWithID:v5 titles:v6 subtitles:v7 flags:v14 ageRating:v15 metrics:v10 defaultOffer:v11 buyOffer:v12 openOffer:v13];

            v9 = v15;
            selfCopy = self;
          }

          else
          {
            v50 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
            if (v50)
            {
              [(ASCStatefulOffer *)v50 initWithCoder:v51, v52, v53, v54, v55, v56, v57];
            }

            selfCopy = 0;
          }
        }

        else
        {
          v42 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          if (v42)
          {
            [(ASCStatefulOffer *)v42 initWithCoder:v43, v44, v45, v46, v47, v48, v49];
          }

          selfCopy = 0;
        }
      }

      else
      {
        v34 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v34)
        {
          [(ASCStatefulOffer *)v34 initWithCoder:v35, v36, v37, v38, v39, v40, v41];
        }

        selfCopy = 0;
      }
    }

    else
    {
      v26 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v26)
      {
        [(ASCStatefulOffer *)v26 initWithCoder:v27, v28, v29, v30, v31, v32, v33];
      }

      selfCopy = 0;
    }
  }

  else
  {
    v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v18)
    {
      [(ASCStatefulOffer *)v18 initWithCoder:v19, v20, v21, v22, v23, v24, v25];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ASCStatefulOffer *)self id];
  [coderCopy encodeObject:v5 forKey:@"id"];

  titles = [(ASCStatefulOffer *)self titles];
  [coderCopy encodeObject:titles forKey:@"titles"];

  subtitles = [(ASCStatefulOffer *)self subtitles];
  [coderCopy encodeObject:subtitles forKey:@"subtitles"];

  [coderCopy encodeInteger:-[ASCStatefulOffer flags](self forKey:{"flags"), @"flags"}];
  ageRating = [(ASCStatefulOffer *)self ageRating];
  [coderCopy encodeObject:ageRating forKey:@"ageRating"];

  metrics = [(ASCStatefulOffer *)self metrics];
  [coderCopy encodeObject:metrics forKey:@"metrics"];

  defaultOffer = [(ASCStatefulOffer *)self defaultOffer];
  [coderCopy encodeObject:defaultOffer forKey:@"defaultOffer"];

  buyOffer = [(ASCStatefulOffer *)self buyOffer];
  [coderCopy encodeObject:buyOffer forKey:@"buyOffer"];

  openOffer = [(ASCStatefulOffer *)self openOffer];
  [coderCopy encodeObject:openOffer forKey:@"openOffer"];
}

- (ASCStatefulOffer)offerWithMetrics:(id)metrics
{
  metricsCopy = metrics;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(ASCStatefulOffer *)self id];
  titles = [(ASCStatefulOffer *)self titles];
  subtitles = [(ASCStatefulOffer *)self subtitles];
  flags = [(ASCStatefulOffer *)self flags];
  ageRating = [(ASCStatefulOffer *)self ageRating];
  defaultOffer = [(ASCStatefulOffer *)self defaultOffer];
  buyOffer = [(ASCStatefulOffer *)self buyOffer];
  openOffer = [(ASCStatefulOffer *)self openOffer];
  v14 = [v5 initWithID:v6 titles:titles subtitles:subtitles flags:flags ageRating:ageRating metrics:metricsCopy defaultOffer:defaultOffer buyOffer:buyOffer openOffer:openOffer];

  return v14;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCStatefulOffer *)self id];
  [(ASCHasher *)v3 combineObject:v4];

  titles = [(ASCStatefulOffer *)self titles];
  [(ASCHasher *)v3 combineObject:titles];

  subtitles = [(ASCStatefulOffer *)self subtitles];
  [(ASCHasher *)v3 combineObject:subtitles];

  [(ASCHasher *)v3 combineInteger:[(ASCStatefulOffer *)self flags]];
  ageRating = [(ASCStatefulOffer *)self ageRating];
  [(ASCHasher *)v3 combineObject:ageRating];

  metrics = [(ASCStatefulOffer *)self metrics];
  [(ASCHasher *)v3 combineObject:metrics];

  defaultOffer = [(ASCStatefulOffer *)self defaultOffer];
  [(ASCHasher *)v3 combineObject:defaultOffer];

  buyOffer = [(ASCStatefulOffer *)self buyOffer];
  [(ASCHasher *)v3 combineObject:buyOffer];

  openOffer = [(ASCStatefulOffer *)self openOffer];
  [(ASCHasher *)v3 combineObject:openOffer];

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
    v8 = [(ASCStatefulOffer *)self id];
    v9 = [v7 id];
    v10 = v9;
    if (v8 && v9)
    {
      if ([v8 isEqual:v9])
      {
LABEL_10:
        titles = [(ASCStatefulOffer *)self titles];
        titles2 = [v7 titles];
        v13 = titles2;
        if (titles && titles2)
        {
          if ([titles isEqual:titles2])
          {
LABEL_13:
            subtitles = [(ASCStatefulOffer *)self subtitles];
            subtitles2 = [v7 subtitles];
            v16 = subtitles2;
            if (subtitles && subtitles2)
            {
              if (![subtitles isEqual:subtitles2])
              {
                goto LABEL_39;
              }
            }

            else if (subtitles != subtitles2)
            {
              goto LABEL_39;
            }

            flags = [(ASCStatefulOffer *)self flags];
            if (flags == [v7 flags])
            {
              ageRating = [(ASCStatefulOffer *)self ageRating];
              ageRating2 = [v7 ageRating];
              v21 = ageRating2;
              v54 = ageRating;
              if (ageRating && ageRating2)
              {
                v22 = ageRating;
                v23 = v21;
                v24 = [v22 isEqual:v21];
                v21 = v23;
                ageRating = v54;
                if (v24)
                {
LABEL_27:
                  v52 = v21;
                  metrics = [(ASCStatefulOffer *)self metrics];
                  metrics2 = [v7 metrics];
                  v27 = metrics2;
                  v53 = metrics;
                  if (metrics && metrics2)
                  {
                    v28 = metrics2;
                    v29 = [v53 isEqual:metrics2];
                    v27 = v28;
                    if (v29)
                    {
LABEL_30:
                      v50 = v27;
                      defaultOffer = [(ASCStatefulOffer *)self defaultOffer];
                      defaultOffer2 = [v7 defaultOffer];
                      v32 = defaultOffer2;
                      v51 = defaultOffer;
                      if (defaultOffer && defaultOffer2)
                      {
                        v33 = defaultOffer2;
                        v34 = [v51 isEqual:defaultOffer2];
                        v32 = v33;
                        if (v34)
                        {
LABEL_33:
                          v48 = v32;
                          buyOffer = [(ASCStatefulOffer *)self buyOffer];
                          buyOffer2 = [v7 buyOffer];
                          v37 = buyOffer2;
                          v49 = buyOffer;
                          if (buyOffer && buyOffer2)
                          {
                            v38 = buyOffer2;
                            v39 = [v49 isEqual:buyOffer2];
                            v37 = v38;
                            if (v39)
                            {
                              goto LABEL_36;
                            }
                          }

                          else if (buyOffer == buyOffer2)
                          {
LABEL_36:
                            openOffer = [(ASCStatefulOffer *)self openOffer];
                            openOffer2 = [v7 openOffer];
                            v42 = openOffer2;
                            if (openOffer && openOffer2)
                            {
                              v43 = openOffer2;
                              v44 = [openOffer isEqual:openOffer2];
                              v42 = v43;
                              v45 = openOffer;
                              v17 = v44;
                            }

                            else
                            {
                              v45 = openOffer;
                              v17 = openOffer == openOffer2;
                            }

                            v37 = v47;
                            goto LABEL_50;
                          }

                          v17 = 0;
LABEL_50:

                          v32 = v48;
                          goto LABEL_51;
                        }
                      }

                      else if (defaultOffer == defaultOffer2)
                      {
                        goto LABEL_33;
                      }

                      v17 = 0;
LABEL_51:

                      v27 = v50;
                      goto LABEL_52;
                    }
                  }

                  else if (metrics == metrics2)
                  {
                    goto LABEL_30;
                  }

                  v17 = 0;
LABEL_52:

                  v21 = v52;
                  ageRating = v54;
                  goto LABEL_53;
                }
              }

              else if (ageRating == ageRating2)
              {
                goto LABEL_27;
              }

              v17 = 0;
LABEL_53:

              goto LABEL_54;
            }

LABEL_39:
            v17 = 0;
LABEL_54:

            goto LABEL_55;
          }
        }

        else if (titles == titles2)
        {
          goto LABEL_13;
        }

        v17 = 0;
LABEL_55:

        goto LABEL_56;
      }
    }

    else if (v8 == v9)
    {
      goto LABEL_10;
    }

    v17 = 0;
LABEL_56:

    goto LABEL_57;
  }

  v17 = 0;
LABEL_57:

  return v17;
}

- (NSString)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  v4 = [(ASCStatefulOffer *)self id];
  [(ASCDescriber *)v3 addObject:v4 withName:@"id"];

  titles = [(ASCStatefulOffer *)self titles];
  [(ASCDescriber *)v3 addObject:titles withName:@"titles"];

  subtitles = [(ASCStatefulOffer *)self subtitles];
  [(ASCDescriber *)v3 addObject:subtitles withName:@"subtitles"];

  v7 = ASCOfferFlagsGetDescription([(ASCStatefulOffer *)self flags]);
  [(ASCDescriber *)v3 addObject:v7 withName:@"flags"];

  ageRating = [(ASCStatefulOffer *)self ageRating];
  [(ASCDescriber *)v3 addObject:ageRating withName:@"ageRating"];

  metrics = [(ASCStatefulOffer *)self metrics];
  [(ASCDescriber *)v3 addSensitiveObject:metrics withName:@"metrics"];

  defaultOffer = [(ASCStatefulOffer *)self defaultOffer];
  [(ASCDescriber *)v3 addObject:defaultOffer withName:@"defaultOffer"];

  buyOffer = [(ASCStatefulOffer *)self buyOffer];
  [(ASCDescriber *)v3 addObject:buyOffer withName:@"buyOffer"];

  openOffer = [(ASCStatefulOffer *)self openOffer];
  [(ASCDescriber *)v3 addObject:openOffer withName:@"openOffer"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end