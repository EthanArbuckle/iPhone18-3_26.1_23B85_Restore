@interface ASCURLOffer
- (ASCURLOffer)initWithCoder:(id)coder;
- (ASCURLOffer)initWithID:(id)d titles:(id)titles subtitles:(id)subtitles flags:(int64_t)flags ageRating:(id)rating metrics:(id)metrics url:(id)url isSensitive:(BOOL)self0;
- (ASCURLOffer)offerWithMetrics:(id)metrics;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCURLOffer

- (ASCURLOffer)initWithID:(id)d titles:(id)titles subtitles:(id)subtitles flags:(int64_t)flags ageRating:(id)rating metrics:(id)metrics url:(id)url isSensitive:(BOOL)self0
{
  dCopy = d;
  titlesCopy = titles;
  subtitlesCopy = subtitles;
  ratingCopy = rating;
  metricsCopy = metrics;
  urlCopy = url;
  v34.receiver = self;
  v34.super_class = ASCURLOffer;
  v22 = [(ASCURLOffer *)&v34 init];
  if (v22)
  {
    v23 = [dCopy copy];
    id = v22->_id;
    v22->_id = v23;

    v25 = [titlesCopy copy];
    titles = v22->_titles;
    v22->_titles = v25;

    v27 = [subtitlesCopy copy];
    subtitles = v22->_subtitles;
    v22->_subtitles = v27;

    v22->_flags = flags;
    objc_storeStrong(&v22->_ageRating, rating);
    v29 = [metricsCopy copy];
    metrics = v22->_metrics;
    v22->_metrics = v29;

    v31 = [urlCopy copy];
    url = v22->_url;
    v22->_url = v31;

    v22->_isSensitive = sensitive;
  }

  return v22;
}

- (ASCURLOffer)initWithCoder:(id)coder
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
          v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
          if (v11)
          {
            LOBYTE(v54) = [coderCopy decodeBoolForKey:@"isSensitive"];
            self = [(ASCURLOffer *)self initWithID:v5 titles:v6 subtitles:v7 flags:v8 ageRating:v9 metrics:v10 url:v11 isSensitive:v54];
            selfCopy = self;
          }

          else
          {
            v45 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
            if (v45)
            {
              [(ASCURLOffer *)v45 initWithCoder:v46, v47, v48, v49, v50, v51, v52];
            }

            selfCopy = 0;
          }
        }

        else
        {
          v37 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          if (v37)
          {
            [(ASCURLOffer *)v37 initWithCoder:v38, v39, v40, v41, v42, v43, v44];
          }

          selfCopy = 0;
        }
      }

      else
      {
        v29 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v29)
        {
          [(ASCURLOffer *)v29 initWithCoder:v30, v31, v32, v33, v34, v35, v36];
        }

        selfCopy = 0;
      }
    }

    else
    {
      v21 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v21)
      {
        [(ASCURLOffer *)v21 initWithCoder:v22, v23, v24, v25, v26, v27, v28];
      }

      selfCopy = 0;
    }
  }

  else
  {
    v13 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v13)
    {
      [(ASCURLOffer *)v13 initWithCoder:v14, v15, v16, v17, v18, v19, v20];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [(ASCURLOffer *)self id];
  [coderCopy encodeObject:v4 forKey:@"id"];

  titles = [(ASCURLOffer *)self titles];
  [coderCopy encodeObject:titles forKey:@"titles"];

  subtitles = [(ASCURLOffer *)self subtitles];
  [coderCopy encodeObject:subtitles forKey:@"subtitles"];

  [coderCopy encodeInteger:-[ASCURLOffer flags](self forKey:{"flags"), @"flags"}];
  ageRating = [(ASCURLOffer *)self ageRating];
  [coderCopy encodeObject:ageRating forKey:@"ageRating"];

  metrics = [(ASCURLOffer *)self metrics];
  [coderCopy encodeObject:metrics forKey:@"metrics"];

  v9 = [(ASCURLOffer *)self url];
  [coderCopy encodeObject:v9 forKey:@"url"];

  [coderCopy encodeBool:-[ASCURLOffer isSensitive](self forKey:{"isSensitive"), @"isSensitive"}];
}

- (ASCURLOffer)offerWithMetrics:(id)metrics
{
  metricsCopy = metrics;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(ASCURLOffer *)self id];
  titles = [(ASCURLOffer *)self titles];
  subtitles = [(ASCURLOffer *)self subtitles];
  flags = [(ASCURLOffer *)self flags];
  ageRating = [(ASCURLOffer *)self ageRating];
  v11 = [(ASCURLOffer *)self url];
  LOBYTE(v14) = [(ASCURLOffer *)self isSensitive];
  v12 = [v5 initWithID:v6 titles:titles subtitles:subtitles flags:flags ageRating:ageRating metrics:metricsCopy url:v11 isSensitive:v14];

  return v12;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCURLOffer *)self id];
  [(ASCHasher *)v3 combineObject:v4];

  titles = [(ASCURLOffer *)self titles];
  [(ASCHasher *)v3 combineObject:titles];

  subtitles = [(ASCURLOffer *)self subtitles];
  [(ASCHasher *)v3 combineObject:subtitles];

  [(ASCHasher *)v3 combineInteger:[(ASCURLOffer *)self flags]];
  ageRating = [(ASCURLOffer *)self ageRating];
  [(ASCHasher *)v3 combineObject:ageRating];

  metrics = [(ASCURLOffer *)self metrics];
  [(ASCHasher *)v3 combineObject:metrics];

  v9 = [(ASCURLOffer *)self url];
  [(ASCHasher *)v3 combineObject:v9];

  [(ASCHasher *)v3 combineBool:[(ASCURLOffer *)self isSensitive]];
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
    v8 = [(ASCURLOffer *)self id];
    v9 = [v7 id];
    v10 = v9;
    if (v8 && v9)
    {
      if ([v8 isEqual:v9])
      {
LABEL_10:
        titles = [(ASCURLOffer *)self titles];
        titles2 = [v7 titles];
        v13 = titles2;
        if (titles && titles2)
        {
          if ([titles isEqual:titles2])
          {
LABEL_13:
            subtitles = [(ASCURLOffer *)self subtitles];
            subtitles2 = [v7 subtitles];
            v16 = subtitles2;
            if (subtitles && subtitles2)
            {
              if (![subtitles isEqual:subtitles2])
              {
                goto LABEL_34;
              }
            }

            else if (subtitles != subtitles2)
            {
              goto LABEL_34;
            }

            flags = [(ASCURLOffer *)self flags];
            if (flags == [v7 flags])
            {
              ageRating = [(ASCURLOffer *)self ageRating];
              ageRating2 = [v7 ageRating];
              v21 = ageRating2;
              v43 = ageRating;
              if (ageRating && ageRating2)
              {
                v22 = ageRating;
                v23 = v21;
                v24 = [v22 isEqual:v21];
                v21 = v23;
                ageRating = v43;
                if (v24)
                {
LABEL_27:
                  v41 = v21;
                  metrics = [(ASCURLOffer *)self metrics];
                  metrics2 = [v7 metrics];
                  v27 = metrics2;
                  v42 = metrics;
                  if (metrics && metrics2)
                  {
                    v28 = metrics2;
                    v29 = [v42 isEqual:metrics2];
                    v27 = v28;
                    if (v29)
                    {
LABEL_30:
                      v39 = v27;
                      v30 = [(ASCURLOffer *)self url];
                      v31 = [v7 url];
                      v32 = v31;
                      v40 = v30;
                      if (v30 && v31)
                      {
                        v33 = v31;
                        v34 = [v40 isEqual:v31];
                        v32 = v33;
                        if (v34)
                        {
LABEL_33:
                          v35 = v32;
                          isSensitive = [(ASCURLOffer *)self isSensitive];
                          isSensitive2 = [v7 isSensitive];
                          v32 = v35;
                          v17 = isSensitive ^ isSensitive2 ^ 1;
LABEL_41:

                          v27 = v39;
                          goto LABEL_42;
                        }
                      }

                      else if (v30 == v31)
                      {
                        goto LABEL_33;
                      }

                      v17 = 0;
                      goto LABEL_41;
                    }
                  }

                  else if (metrics == metrics2)
                  {
                    goto LABEL_30;
                  }

                  v17 = 0;
LABEL_42:

                  v21 = v41;
                  ageRating = v43;
                  goto LABEL_43;
                }
              }

              else if (ageRating == ageRating2)
              {
                goto LABEL_27;
              }

              v17 = 0;
LABEL_43:

              goto LABEL_44;
            }

LABEL_34:
            v17 = 0;
LABEL_44:

            goto LABEL_45;
          }
        }

        else if (titles == titles2)
        {
          goto LABEL_13;
        }

        v17 = 0;
LABEL_45:

        goto LABEL_46;
      }
    }

    else if (v8 == v9)
    {
      goto LABEL_10;
    }

    v17 = 0;
LABEL_46:

    goto LABEL_47;
  }

  v17 = 0;
LABEL_47:

  return v17;
}

- (NSString)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  v4 = [(ASCURLOffer *)self id];
  [(ASCDescriber *)v3 addObject:v4 withName:@"id"];

  titles = [(ASCURLOffer *)self titles];
  [(ASCDescriber *)v3 addObject:titles withName:@"titles"];

  subtitles = [(ASCURLOffer *)self subtitles];
  [(ASCDescriber *)v3 addObject:subtitles withName:@"subtitles"];

  v7 = ASCOfferFlagsGetDescription([(ASCURLOffer *)self flags]);
  [(ASCDescriber *)v3 addObject:v7 withName:@"flags"];

  ageRating = [(ASCURLOffer *)self ageRating];
  [(ASCDescriber *)v3 addObject:ageRating withName:@"ageRating"];

  metrics = [(ASCURLOffer *)self metrics];
  [(ASCDescriber *)v3 addSensitiveObject:metrics withName:@"metrics"];

  v10 = [(ASCURLOffer *)self url];
  [(ASCDescriber *)v3 addSensitiveObject:v10 withName:@"url"];

  [(ASCDescriber *)v3 addBool:[(ASCURLOffer *)self isSensitive] withName:@"isSensitive"];
  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end