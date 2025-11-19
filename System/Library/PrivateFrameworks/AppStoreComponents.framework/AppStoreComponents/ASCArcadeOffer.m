@interface ASCArcadeOffer
- (ASCArcadeOffer)initWithCoder:(id)a3;
- (ASCArcadeOffer)initWithID:(id)a3 titles:(id)a4 subtitles:(id)a5 flags:(int64_t)a6 ageRating:(id)a7 metrics:(id)a8 notSubscribedOffer:(id)a9 subscribedOffer:(id)a10;
- (ASCArcadeOffer)offerWithMetrics:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCArcadeOffer

- (ASCArcadeOffer)initWithID:(id)a3 titles:(id)a4 subtitles:(id)a5 flags:(int64_t)a6 ageRating:(id)a7 metrics:(id)a8 notSubscribedOffer:(id)a9 subscribedOffer:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v37.receiver = self;
  v37.super_class = ASCArcadeOffer;
  v23 = [(ASCArcadeOffer *)&v37 init];
  if (v23)
  {
    v24 = [v16 copy];
    id = v23->_id;
    v23->_id = v24;

    v26 = [v17 copy];
    titles = v23->_titles;
    v23->_titles = v26;

    v28 = [v18 copy];
    subtitles = v23->_subtitles;
    v23->_subtitles = v28;

    v23->_flags = a6;
    objc_storeStrong(&v23->_ageRating, a7);
    v30 = [v20 copy];
    metrics = v23->_metrics;
    v23->_metrics = v30;

    v32 = [v21 copyWithZone:0];
    notSubscribedOffer = v23->_notSubscribedOffer;
    v23->_notSubscribedOffer = v32;

    v34 = [v22 copyWithZone:0];
    subscribedOffer = v23->_subscribedOffer;
    v23->_subscribedOffer = v34;
  }

  return v23;
}

- (ASCArcadeOffer)initWithCoder:(id)a3
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
          v11 = ASCOfferDecodeForKey(v4, @"notSubscribedOffer");
          if (v11)
          {
            v12 = ASCOfferDecodeForKey(v4, @"subscribedOffer");
            v13 = v12;
            if (v12)
            {
              self = [(ASCArcadeOffer *)self initWithID:v5 titles:v6 subtitles:v7 flags:v8 ageRating:v9 metrics:v10 notSubscribedOffer:v11 subscribedOffer:v12];
              v14 = self;
            }

            else
            {
              v55 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
              if (v55)
              {
                [(ASCArcadeOffer *)v55 initWithCoder:v56, v57, v58, v59, v60, v61, v62];
              }

              v14 = 0;
            }
          }

          else
          {
            v47 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
            if (v47)
            {
              [(ASCArcadeOffer *)v47 initWithCoder:v48, v49, v50, v51, v52, v53, v54];
            }

            v14 = 0;
          }
        }

        else
        {
          v39 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          if (v39)
          {
            [(ASCArcadeOffer *)v39 initWithCoder:v40, v41, v42, v43, v44, v45, v46];
          }

          v14 = 0;
        }
      }

      else
      {
        v31 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v31)
        {
          [(ASCArcadeOffer *)v31 initWithCoder:v32, v33, v34, v35, v36, v37, v38];
        }

        v14 = 0;
      }
    }

    else
    {
      v23 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v23)
      {
        [(ASCArcadeOffer *)v23 initWithCoder:v24, v25, v26, v27, v28, v29, v30];
      }

      v14 = 0;
    }
  }

  else
  {
    v15 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v15)
    {
      [(ASCArcadeOffer *)v15 initWithCoder:v16, v17, v18, v19, v20, v21, v22];
    }

    v14 = 0;
  }

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASCArcadeOffer *)self id];
  [v4 encodeObject:v5 forKey:@"id"];

  v6 = [(ASCArcadeOffer *)self titles];
  [v4 encodeObject:v6 forKey:@"titles"];

  v7 = [(ASCArcadeOffer *)self subtitles];
  [v4 encodeObject:v7 forKey:@"subtitles"];

  [v4 encodeInteger:-[ASCArcadeOffer flags](self forKey:{"flags"), @"flags"}];
  v8 = [(ASCArcadeOffer *)self ageRating];
  [v4 encodeObject:v8 forKey:@"ageRating"];

  v9 = [(ASCArcadeOffer *)self metrics];
  [v4 encodeObject:v9 forKey:@"metrics"];

  v10 = [(ASCArcadeOffer *)self notSubscribedOffer];
  [v4 encodeObject:v10 forKey:@"notSubscribedOffer"];

  v11 = [(ASCArcadeOffer *)self subscribedOffer];
  [v4 encodeObject:v11 forKey:@"subscribedOffer"];
}

- (ASCArcadeOffer)offerWithMetrics:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(ASCArcadeOffer *)self id];
  v7 = [(ASCArcadeOffer *)self titles];
  v8 = [(ASCArcadeOffer *)self subtitles];
  v9 = [(ASCArcadeOffer *)self flags];
  v10 = [(ASCArcadeOffer *)self ageRating];
  v11 = [(ASCArcadeOffer *)self notSubscribedOffer];
  v12 = [(ASCArcadeOffer *)self subscribedOffer];
  v13 = [v5 initWithID:v6 titles:v7 subtitles:v8 flags:v9 ageRating:v10 metrics:v4 notSubscribedOffer:v11 subscribedOffer:v12];

  return v13;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCArcadeOffer *)self id];
  [(ASCHasher *)v3 combineObject:v4];

  v5 = [(ASCArcadeOffer *)self titles];
  [(ASCHasher *)v3 combineObject:v5];

  v6 = [(ASCArcadeOffer *)self subtitles];
  [(ASCHasher *)v3 combineObject:v6];

  [(ASCHasher *)v3 combineInteger:[(ASCArcadeOffer *)self flags]];
  v7 = [(ASCArcadeOffer *)self ageRating];
  [(ASCHasher *)v3 combineObject:v7];

  v8 = [(ASCArcadeOffer *)self metrics];
  [(ASCHasher *)v3 combineObject:v8];

  v9 = [(ASCArcadeOffer *)self notSubscribedOffer];
  [(ASCHasher *)v3 combineObject:v9];

  v10 = [(ASCArcadeOffer *)self subscribedOffer];
  [(ASCHasher *)v3 combineObject:v10];

  v11 = [(ASCHasher *)v3 finalizeHash];
  return v11;
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
    v8 = [(ASCArcadeOffer *)self id];
    v9 = [v7 id];
    v10 = v9;
    if (v8 && v9)
    {
      if ([v8 isEqual:v9])
      {
LABEL_10:
        v11 = [(ASCArcadeOffer *)self titles];
        v12 = [v7 titles];
        v13 = v12;
        if (v11 && v12)
        {
          if ([v11 isEqual:v12])
          {
LABEL_13:
            v14 = [(ASCArcadeOffer *)self subtitles];
            v15 = [v7 subtitles];
            v16 = v15;
            if (v14 && v15)
            {
              if (![v14 isEqual:v15])
              {
                goto LABEL_36;
              }
            }

            else if (v14 != v15)
            {
              goto LABEL_36;
            }

            v18 = [(ASCArcadeOffer *)self flags];
            if (v18 == [v7 flags])
            {
              v19 = [(ASCArcadeOffer *)self ageRating];
              v20 = [v7 ageRating];
              v21 = v20;
              v47 = v19;
              if (v19 && v20)
              {
                v22 = v19;
                v23 = v21;
                v24 = [v22 isEqual:v21];
                v21 = v23;
                v19 = v47;
                if (v24)
                {
LABEL_27:
                  v45 = v21;
                  v25 = [(ASCArcadeOffer *)self metrics];
                  v26 = [v7 metrics];
                  v27 = v26;
                  v46 = v25;
                  if (v25 && v26)
                  {
                    v28 = v26;
                    v29 = [v46 isEqual:v26];
                    v27 = v28;
                    if (v29)
                    {
LABEL_30:
                      v43 = v27;
                      v30 = [(ASCArcadeOffer *)self notSubscribedOffer];
                      v31 = [v7 notSubscribedOffer];
                      v32 = v31;
                      v44 = v30;
                      if (v30 && v31)
                      {
                        v33 = v31;
                        v34 = [v44 isEqual:v31];
                        v32 = v33;
                        if (v34)
                        {
                          goto LABEL_33;
                        }
                      }

                      else if (v30 == v31)
                      {
LABEL_33:
                        v35 = [(ASCArcadeOffer *)self subscribedOffer];
                        v36 = [v7 subscribedOffer];
                        v37 = v36;
                        if (v35 && v36)
                        {
                          v38 = v36;
                          v39 = [v35 isEqual:v36];
                          v37 = v38;
                          v40 = v35;
                          v17 = v39;
                        }

                        else
                        {
                          v40 = v35;
                          v17 = v35 == v36;
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

                  else if (v25 == v26)
                  {
                    goto LABEL_30;
                  }

                  v17 = 0;
LABEL_46:

                  v21 = v45;
                  v19 = v47;
                  goto LABEL_47;
                }
              }

              else if (v19 == v20)
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

        else if (v11 == v12)
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

  v5 = [(ASCArcadeOffer *)self titles];
  [(ASCDescriber *)v3 addObject:v5 withName:@"titles"];

  v6 = [(ASCArcadeOffer *)self subtitles];
  [(ASCDescriber *)v3 addObject:v6 withName:@"subtitles"];

  v7 = ASCOfferFlagsGetDescription([(ASCArcadeOffer *)self flags]);
  [(ASCDescriber *)v3 addObject:v7 withName:@"flags"];

  v8 = [(ASCArcadeOffer *)self ageRating];
  [(ASCDescriber *)v3 addObject:v8 withName:@"ageRating"];

  v9 = [(ASCArcadeOffer *)self metrics];
  [(ASCDescriber *)v3 addSensitiveObject:v9 withName:@"metrics"];

  v10 = [(ASCArcadeOffer *)self notSubscribedOffer];
  [(ASCDescriber *)v3 addObject:v10 withName:@"notSubscribedOffer"];

  v11 = [(ASCArcadeOffer *)self subscribedOffer];
  [(ASCDescriber *)v3 addObject:v11 withName:@"subscribedOffer"];

  v12 = [(ASCDescriber *)v3 finalizeDescription];

  return v12;
}

@end