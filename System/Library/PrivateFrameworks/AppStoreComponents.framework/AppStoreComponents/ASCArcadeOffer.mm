@interface ASCArcadeOffer
- (ASCArcadeOffer)initWithCoder:(id)coder;
- (ASCArcadeOffer)initWithID:(id)d titles:(id)titles subtitles:(id)subtitles flags:(int64_t)flags ageRating:(id)rating metrics:(id)metrics notSubscribedOffer:(id)offer subscribedOffer:(id)self0;
- (ASCArcadeOffer)offerWithMetrics:(id)metrics;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCArcadeOffer

- (ASCArcadeOffer)initWithID:(id)d titles:(id)titles subtitles:(id)subtitles flags:(int64_t)flags ageRating:(id)rating metrics:(id)metrics notSubscribedOffer:(id)offer subscribedOffer:(id)self0
{
  dCopy = d;
  titlesCopy = titles;
  subtitlesCopy = subtitles;
  ratingCopy = rating;
  metricsCopy = metrics;
  offerCopy = offer;
  subscribedOfferCopy = subscribedOffer;
  v37.receiver = self;
  v37.super_class = ASCArcadeOffer;
  v23 = [(ASCArcadeOffer *)&v37 init];
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

    v32 = [offerCopy copyWithZone:0];
    notSubscribedOffer = v23->_notSubscribedOffer;
    v23->_notSubscribedOffer = v32;

    v34 = [subscribedOfferCopy copyWithZone:0];
    subscribedOffer = v23->_subscribedOffer;
    v23->_subscribedOffer = v34;
  }

  return v23;
}

- (ASCArcadeOffer)initWithCoder:(id)coder
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
          v11 = ASCOfferDecodeForKey(coderCopy, @"notSubscribedOffer");
          if (v11)
          {
            v12 = ASCOfferDecodeForKey(coderCopy, @"subscribedOffer");
            v13 = v12;
            if (v12)
            {
              self = [(ASCArcadeOffer *)self initWithID:v5 titles:v6 subtitles:v7 flags:v8 ageRating:v9 metrics:v10 notSubscribedOffer:v11 subscribedOffer:v12];
              selfCopy = self;
            }

            else
            {
              v55 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
              if (v55)
              {
                [(ASCArcadeOffer *)v55 initWithCoder:v56, v57, v58, v59, v60, v61, v62];
              }

              selfCopy = 0;
            }
          }

          else
          {
            v47 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
            if (v47)
            {
              [(ASCArcadeOffer *)v47 initWithCoder:v48, v49, v50, v51, v52, v53, v54];
            }

            selfCopy = 0;
          }
        }

        else
        {
          v39 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          if (v39)
          {
            [(ASCArcadeOffer *)v39 initWithCoder:v40, v41, v42, v43, v44, v45, v46];
          }

          selfCopy = 0;
        }
      }

      else
      {
        v31 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v31)
        {
          [(ASCArcadeOffer *)v31 initWithCoder:v32, v33, v34, v35, v36, v37, v38];
        }

        selfCopy = 0;
      }
    }

    else
    {
      v23 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v23)
      {
        [(ASCArcadeOffer *)v23 initWithCoder:v24, v25, v26, v27, v28, v29, v30];
      }

      selfCopy = 0;
    }
  }

  else
  {
    v15 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v15)
    {
      [(ASCArcadeOffer *)v15 initWithCoder:v16, v17, v18, v19, v20, v21, v22];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ASCArcadeOffer *)self id];
  [coderCopy encodeObject:v5 forKey:@"id"];

  titles = [(ASCArcadeOffer *)self titles];
  [coderCopy encodeObject:titles forKey:@"titles"];

  subtitles = [(ASCArcadeOffer *)self subtitles];
  [coderCopy encodeObject:subtitles forKey:@"subtitles"];

  [coderCopy encodeInteger:-[ASCArcadeOffer flags](self forKey:{"flags"), @"flags"}];
  ageRating = [(ASCArcadeOffer *)self ageRating];
  [coderCopy encodeObject:ageRating forKey:@"ageRating"];

  metrics = [(ASCArcadeOffer *)self metrics];
  [coderCopy encodeObject:metrics forKey:@"metrics"];

  notSubscribedOffer = [(ASCArcadeOffer *)self notSubscribedOffer];
  [coderCopy encodeObject:notSubscribedOffer forKey:@"notSubscribedOffer"];

  subscribedOffer = [(ASCArcadeOffer *)self subscribedOffer];
  [coderCopy encodeObject:subscribedOffer forKey:@"subscribedOffer"];
}

- (ASCArcadeOffer)offerWithMetrics:(id)metrics
{
  metricsCopy = metrics;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(ASCArcadeOffer *)self id];
  titles = [(ASCArcadeOffer *)self titles];
  subtitles = [(ASCArcadeOffer *)self subtitles];
  flags = [(ASCArcadeOffer *)self flags];
  ageRating = [(ASCArcadeOffer *)self ageRating];
  notSubscribedOffer = [(ASCArcadeOffer *)self notSubscribedOffer];
  subscribedOffer = [(ASCArcadeOffer *)self subscribedOffer];
  v13 = [v5 initWithID:v6 titles:titles subtitles:subtitles flags:flags ageRating:ageRating metrics:metricsCopy notSubscribedOffer:notSubscribedOffer subscribedOffer:subscribedOffer];

  return v13;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCArcadeOffer *)self id];
  [(ASCHasher *)v3 combineObject:v4];

  titles = [(ASCArcadeOffer *)self titles];
  [(ASCHasher *)v3 combineObject:titles];

  subtitles = [(ASCArcadeOffer *)self subtitles];
  [(ASCHasher *)v3 combineObject:subtitles];

  [(ASCHasher *)v3 combineInteger:[(ASCArcadeOffer *)self flags]];
  ageRating = [(ASCArcadeOffer *)self ageRating];
  [(ASCHasher *)v3 combineObject:ageRating];

  metrics = [(ASCArcadeOffer *)self metrics];
  [(ASCHasher *)v3 combineObject:metrics];

  notSubscribedOffer = [(ASCArcadeOffer *)self notSubscribedOffer];
  [(ASCHasher *)v3 combineObject:notSubscribedOffer];

  subscribedOffer = [(ASCArcadeOffer *)self subscribedOffer];
  [(ASCHasher *)v3 combineObject:subscribedOffer];

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
    v8 = [(ASCArcadeOffer *)self id];
    v9 = [v7 id];
    v10 = v9;
    if (v8 && v9)
    {
      if ([v8 isEqual:v9])
      {
LABEL_10:
        titles = [(ASCArcadeOffer *)self titles];
        titles2 = [v7 titles];
        v13 = titles2;
        if (titles && titles2)
        {
          if ([titles isEqual:titles2])
          {
LABEL_13:
            subtitles = [(ASCArcadeOffer *)self subtitles];
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

            flags = [(ASCArcadeOffer *)self flags];
            if (flags == [v7 flags])
            {
              ageRating = [(ASCArcadeOffer *)self ageRating];
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
                  metrics = [(ASCArcadeOffer *)self metrics];
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
                      notSubscribedOffer = [(ASCArcadeOffer *)self notSubscribedOffer];
                      notSubscribedOffer2 = [v7 notSubscribedOffer];
                      v32 = notSubscribedOffer2;
                      v44 = notSubscribedOffer;
                      if (notSubscribedOffer && notSubscribedOffer2)
                      {
                        v33 = notSubscribedOffer2;
                        v34 = [v44 isEqual:notSubscribedOffer2];
                        v32 = v33;
                        if (v34)
                        {
                          goto LABEL_33;
                        }
                      }

                      else if (notSubscribedOffer == notSubscribedOffer2)
                      {
LABEL_33:
                        subscribedOffer = [(ASCArcadeOffer *)self subscribedOffer];
                        subscribedOffer2 = [v7 subscribedOffer];
                        v37 = subscribedOffer2;
                        if (subscribedOffer && subscribedOffer2)
                        {
                          v38 = subscribedOffer2;
                          v39 = [subscribedOffer isEqual:subscribedOffer2];
                          v37 = v38;
                          v40 = subscribedOffer;
                          v17 = v39;
                        }

                        else
                        {
                          v40 = subscribedOffer;
                          v17 = subscribedOffer == subscribedOffer2;
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
  v4 = [(ASCArcadeOffer *)self id];
  [(ASCDescriber *)v3 addObject:v4 withName:@"id"];

  titles = [(ASCArcadeOffer *)self titles];
  [(ASCDescriber *)v3 addObject:titles withName:@"titles"];

  subtitles = [(ASCArcadeOffer *)self subtitles];
  [(ASCDescriber *)v3 addObject:subtitles withName:@"subtitles"];

  v7 = ASCOfferFlagsGetDescription([(ASCArcadeOffer *)self flags]);
  [(ASCDescriber *)v3 addObject:v7 withName:@"flags"];

  ageRating = [(ASCArcadeOffer *)self ageRating];
  [(ASCDescriber *)v3 addObject:ageRating withName:@"ageRating"];

  metrics = [(ASCArcadeOffer *)self metrics];
  [(ASCDescriber *)v3 addSensitiveObject:metrics withName:@"metrics"];

  notSubscribedOffer = [(ASCArcadeOffer *)self notSubscribedOffer];
  [(ASCDescriber *)v3 addObject:notSubscribedOffer withName:@"notSubscribedOffer"];

  subscribedOffer = [(ASCArcadeOffer *)self subscribedOffer];
  [(ASCDescriber *)v3 addObject:subscribedOffer withName:@"subscribedOffer"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end