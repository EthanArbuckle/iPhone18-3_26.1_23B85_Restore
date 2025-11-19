@interface ASCURLOffer
- (ASCURLOffer)initWithCoder:(id)a3;
- (ASCURLOffer)initWithID:(id)a3 titles:(id)a4 subtitles:(id)a5 flags:(int64_t)a6 ageRating:(id)a7 metrics:(id)a8 url:(id)a9 isSensitive:(BOOL)a10;
- (ASCURLOffer)offerWithMetrics:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCURLOffer

- (ASCURLOffer)initWithID:(id)a3 titles:(id)a4 subtitles:(id)a5 flags:(int64_t)a6 ageRating:(id)a7 metrics:(id)a8 url:(id)a9 isSensitive:(BOOL)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v34.receiver = self;
  v34.super_class = ASCURLOffer;
  v22 = [(ASCURLOffer *)&v34 init];
  if (v22)
  {
    v23 = [v16 copy];
    id = v22->_id;
    v22->_id = v23;

    v25 = [v17 copy];
    titles = v22->_titles;
    v22->_titles = v25;

    v27 = [v18 copy];
    subtitles = v22->_subtitles;
    v22->_subtitles = v27;

    v22->_flags = a6;
    objc_storeStrong(&v22->_ageRating, a7);
    v29 = [v20 copy];
    metrics = v22->_metrics;
    v22->_metrics = v29;

    v31 = [v21 copy];
    url = v22->_url;
    v22->_url = v31;

    v22->_isSensitive = a10;
  }

  return v22;
}

- (ASCURLOffer)initWithCoder:(id)a3
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
          v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
          if (v11)
          {
            LOBYTE(v54) = [v4 decodeBoolForKey:@"isSensitive"];
            self = [(ASCURLOffer *)self initWithID:v5 titles:v6 subtitles:v7 flags:v8 ageRating:v9 metrics:v10 url:v11 isSensitive:v54];
            v12 = self;
          }

          else
          {
            v45 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
            if (v45)
            {
              [(ASCURLOffer *)v45 initWithCoder:v46, v47, v48, v49, v50, v51, v52];
            }

            v12 = 0;
          }
        }

        else
        {
          v37 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          if (v37)
          {
            [(ASCURLOffer *)v37 initWithCoder:v38, v39, v40, v41, v42, v43, v44];
          }

          v12 = 0;
        }
      }

      else
      {
        v29 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v29)
        {
          [(ASCURLOffer *)v29 initWithCoder:v30, v31, v32, v33, v34, v35, v36];
        }

        v12 = 0;
      }
    }

    else
    {
      v21 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v21)
      {
        [(ASCURLOffer *)v21 initWithCoder:v22, v23, v24, v25, v26, v27, v28];
      }

      v12 = 0;
    }
  }

  else
  {
    v13 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v13)
    {
      [(ASCURLOffer *)v13 initWithCoder:v14, v15, v16, v17, v18, v19, v20];
    }

    v12 = 0;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  v4 = [(ASCURLOffer *)self id];
  [v10 encodeObject:v4 forKey:@"id"];

  v5 = [(ASCURLOffer *)self titles];
  [v10 encodeObject:v5 forKey:@"titles"];

  v6 = [(ASCURLOffer *)self subtitles];
  [v10 encodeObject:v6 forKey:@"subtitles"];

  [v10 encodeInteger:-[ASCURLOffer flags](self forKey:{"flags"), @"flags"}];
  v7 = [(ASCURLOffer *)self ageRating];
  [v10 encodeObject:v7 forKey:@"ageRating"];

  v8 = [(ASCURLOffer *)self metrics];
  [v10 encodeObject:v8 forKey:@"metrics"];

  v9 = [(ASCURLOffer *)self url];
  [v10 encodeObject:v9 forKey:@"url"];

  [v10 encodeBool:-[ASCURLOffer isSensitive](self forKey:{"isSensitive"), @"isSensitive"}];
}

- (ASCURLOffer)offerWithMetrics:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(ASCURLOffer *)self id];
  v7 = [(ASCURLOffer *)self titles];
  v8 = [(ASCURLOffer *)self subtitles];
  v9 = [(ASCURLOffer *)self flags];
  v10 = [(ASCURLOffer *)self ageRating];
  v11 = [(ASCURLOffer *)self url];
  LOBYTE(v14) = [(ASCURLOffer *)self isSensitive];
  v12 = [v5 initWithID:v6 titles:v7 subtitles:v8 flags:v9 ageRating:v10 metrics:v4 url:v11 isSensitive:v14];

  return v12;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCURLOffer *)self id];
  [(ASCHasher *)v3 combineObject:v4];

  v5 = [(ASCURLOffer *)self titles];
  [(ASCHasher *)v3 combineObject:v5];

  v6 = [(ASCURLOffer *)self subtitles];
  [(ASCHasher *)v3 combineObject:v6];

  [(ASCHasher *)v3 combineInteger:[(ASCURLOffer *)self flags]];
  v7 = [(ASCURLOffer *)self ageRating];
  [(ASCHasher *)v3 combineObject:v7];

  v8 = [(ASCURLOffer *)self metrics];
  [(ASCHasher *)v3 combineObject:v8];

  v9 = [(ASCURLOffer *)self url];
  [(ASCHasher *)v3 combineObject:v9];

  [(ASCHasher *)v3 combineBool:[(ASCURLOffer *)self isSensitive]];
  v10 = [(ASCHasher *)v3 finalizeHash];

  return v10;
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
    v8 = [(ASCURLOffer *)self id];
    v9 = [v7 id];
    v10 = v9;
    if (v8 && v9)
    {
      if ([v8 isEqual:v9])
      {
LABEL_10:
        v11 = [(ASCURLOffer *)self titles];
        v12 = [v7 titles];
        v13 = v12;
        if (v11 && v12)
        {
          if ([v11 isEqual:v12])
          {
LABEL_13:
            v14 = [(ASCURLOffer *)self subtitles];
            v15 = [v7 subtitles];
            v16 = v15;
            if (v14 && v15)
            {
              if (![v14 isEqual:v15])
              {
                goto LABEL_34;
              }
            }

            else if (v14 != v15)
            {
              goto LABEL_34;
            }

            v18 = [(ASCURLOffer *)self flags];
            if (v18 == [v7 flags])
            {
              v19 = [(ASCURLOffer *)self ageRating];
              v20 = [v7 ageRating];
              v21 = v20;
              v43 = v19;
              if (v19 && v20)
              {
                v22 = v19;
                v23 = v21;
                v24 = [v22 isEqual:v21];
                v21 = v23;
                v19 = v43;
                if (v24)
                {
LABEL_27:
                  v41 = v21;
                  v25 = [(ASCURLOffer *)self metrics];
                  v26 = [v7 metrics];
                  v27 = v26;
                  v42 = v25;
                  if (v25 && v26)
                  {
                    v28 = v26;
                    v29 = [v42 isEqual:v26];
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
                          v36 = [(ASCURLOffer *)self isSensitive];
                          v37 = [v7 isSensitive];
                          v32 = v35;
                          v17 = v36 ^ v37 ^ 1;
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

                  else if (v25 == v26)
                  {
                    goto LABEL_30;
                  }

                  v17 = 0;
LABEL_42:

                  v21 = v41;
                  v19 = v43;
                  goto LABEL_43;
                }
              }

              else if (v19 == v20)
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

        else if (v11 == v12)
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

  v5 = [(ASCURLOffer *)self titles];
  [(ASCDescriber *)v3 addObject:v5 withName:@"titles"];

  v6 = [(ASCURLOffer *)self subtitles];
  [(ASCDescriber *)v3 addObject:v6 withName:@"subtitles"];

  v7 = ASCOfferFlagsGetDescription([(ASCURLOffer *)self flags]);
  [(ASCDescriber *)v3 addObject:v7 withName:@"flags"];

  v8 = [(ASCURLOffer *)self ageRating];
  [(ASCDescriber *)v3 addObject:v8 withName:@"ageRating"];

  v9 = [(ASCURLOffer *)self metrics];
  [(ASCDescriber *)v3 addSensitiveObject:v9 withName:@"metrics"];

  v10 = [(ASCURLOffer *)self url];
  [(ASCDescriber *)v3 addSensitiveObject:v10 withName:@"url"];

  [(ASCDescriber *)v3 addBool:[(ASCURLOffer *)self isSensitive] withName:@"isSensitive"];
  v11 = [(ASCDescriber *)v3 finalizeDescription];

  return v11;
}

@end