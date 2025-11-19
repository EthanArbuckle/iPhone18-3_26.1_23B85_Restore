@interface ASCStatefulOffer
- (ASCStatefulOffer)initWithCoder:(id)a3;
- (ASCStatefulOffer)initWithID:(id)a3 titles:(id)a4 subtitles:(id)a5 flags:(int64_t)a6 ageRating:(id)a7 metrics:(id)a8 defaultOffer:(id)a9 buyOffer:(id)a10 openOffer:(id)a11;
- (ASCStatefulOffer)offerWithMetrics:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCStatefulOffer

- (ASCStatefulOffer)initWithID:(id)a3 titles:(id)a4 subtitles:(id)a5 flags:(int64_t)a6 ageRating:(id)a7 metrics:(id)a8 defaultOffer:(id)a9 buyOffer:(id)a10 openOffer:(id)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v38 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v39.receiver = self;
  v39.super_class = ASCStatefulOffer;
  v23 = [(ASCStatefulOffer *)&v39 init];
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
    objc_storeStrong(&v23->_metrics, a8);
    v30 = [v20 copyWithZone:0];
    defaultOffer = v23->_defaultOffer;
    v23->_defaultOffer = v30;

    v32 = [v21 copyWithZone:0];
    buyOffer = v23->_buyOffer;
    v23->_buyOffer = v32;

    v34 = [v22 copyWithZone:0];
    openOffer = v23->_openOffer;
    v23->_openOffer = v34;
  }

  return v23;
}

- (ASCStatefulOffer)initWithCoder:(id)a3
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
          v11 = ASCOfferDecodeForKey(v4, @"defaultOffer");
          if (v11)
          {
            v12 = ASCOfferDecodeForKey(v4, @"buyOffer");
            v13 = ASCOfferDecodeForKey(v4, @"openOffer");
            v14 = v8;
            v15 = v9;
            v16 = v13;
            self = [(ASCStatefulOffer *)self initWithID:v5 titles:v6 subtitles:v7 flags:v14 ageRating:v15 metrics:v10 defaultOffer:v11 buyOffer:v12 openOffer:v13];

            v9 = v15;
            v17 = self;
          }

          else
          {
            v50 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
            if (v50)
            {
              [(ASCStatefulOffer *)v50 initWithCoder:v51, v52, v53, v54, v55, v56, v57];
            }

            v17 = 0;
          }
        }

        else
        {
          v42 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          if (v42)
          {
            [(ASCStatefulOffer *)v42 initWithCoder:v43, v44, v45, v46, v47, v48, v49];
          }

          v17 = 0;
        }
      }

      else
      {
        v34 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v34)
        {
          [(ASCStatefulOffer *)v34 initWithCoder:v35, v36, v37, v38, v39, v40, v41];
        }

        v17 = 0;
      }
    }

    else
    {
      v26 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v26)
      {
        [(ASCStatefulOffer *)v26 initWithCoder:v27, v28, v29, v30, v31, v32, v33];
      }

      v17 = 0;
    }
  }

  else
  {
    v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v18)
    {
      [(ASCStatefulOffer *)v18 initWithCoder:v19, v20, v21, v22, v23, v24, v25];
    }

    v17 = 0;
  }

  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASCStatefulOffer *)self id];
  [v4 encodeObject:v5 forKey:@"id"];

  v6 = [(ASCStatefulOffer *)self titles];
  [v4 encodeObject:v6 forKey:@"titles"];

  v7 = [(ASCStatefulOffer *)self subtitles];
  [v4 encodeObject:v7 forKey:@"subtitles"];

  [v4 encodeInteger:-[ASCStatefulOffer flags](self forKey:{"flags"), @"flags"}];
  v8 = [(ASCStatefulOffer *)self ageRating];
  [v4 encodeObject:v8 forKey:@"ageRating"];

  v9 = [(ASCStatefulOffer *)self metrics];
  [v4 encodeObject:v9 forKey:@"metrics"];

  v10 = [(ASCStatefulOffer *)self defaultOffer];
  [v4 encodeObject:v10 forKey:@"defaultOffer"];

  v11 = [(ASCStatefulOffer *)self buyOffer];
  [v4 encodeObject:v11 forKey:@"buyOffer"];

  v12 = [(ASCStatefulOffer *)self openOffer];
  [v4 encodeObject:v12 forKey:@"openOffer"];
}

- (ASCStatefulOffer)offerWithMetrics:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(ASCStatefulOffer *)self id];
  v7 = [(ASCStatefulOffer *)self titles];
  v8 = [(ASCStatefulOffer *)self subtitles];
  v9 = [(ASCStatefulOffer *)self flags];
  v10 = [(ASCStatefulOffer *)self ageRating];
  v11 = [(ASCStatefulOffer *)self defaultOffer];
  v12 = [(ASCStatefulOffer *)self buyOffer];
  v13 = [(ASCStatefulOffer *)self openOffer];
  v14 = [v5 initWithID:v6 titles:v7 subtitles:v8 flags:v9 ageRating:v10 metrics:v4 defaultOffer:v11 buyOffer:v12 openOffer:v13];

  return v14;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCStatefulOffer *)self id];
  [(ASCHasher *)v3 combineObject:v4];

  v5 = [(ASCStatefulOffer *)self titles];
  [(ASCHasher *)v3 combineObject:v5];

  v6 = [(ASCStatefulOffer *)self subtitles];
  [(ASCHasher *)v3 combineObject:v6];

  [(ASCHasher *)v3 combineInteger:[(ASCStatefulOffer *)self flags]];
  v7 = [(ASCStatefulOffer *)self ageRating];
  [(ASCHasher *)v3 combineObject:v7];

  v8 = [(ASCStatefulOffer *)self metrics];
  [(ASCHasher *)v3 combineObject:v8];

  v9 = [(ASCStatefulOffer *)self defaultOffer];
  [(ASCHasher *)v3 combineObject:v9];

  v10 = [(ASCStatefulOffer *)self buyOffer];
  [(ASCHasher *)v3 combineObject:v10];

  v11 = [(ASCStatefulOffer *)self openOffer];
  [(ASCHasher *)v3 combineObject:v11];

  v12 = [(ASCHasher *)v3 finalizeHash];
  return v12;
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
    v8 = [(ASCStatefulOffer *)self id];
    v9 = [v7 id];
    v10 = v9;
    if (v8 && v9)
    {
      if ([v8 isEqual:v9])
      {
LABEL_10:
        v11 = [(ASCStatefulOffer *)self titles];
        v12 = [v7 titles];
        v13 = v12;
        if (v11 && v12)
        {
          if ([v11 isEqual:v12])
          {
LABEL_13:
            v14 = [(ASCStatefulOffer *)self subtitles];
            v15 = [v7 subtitles];
            v16 = v15;
            if (v14 && v15)
            {
              if (![v14 isEqual:v15])
              {
                goto LABEL_39;
              }
            }

            else if (v14 != v15)
            {
              goto LABEL_39;
            }

            v18 = [(ASCStatefulOffer *)self flags];
            if (v18 == [v7 flags])
            {
              v19 = [(ASCStatefulOffer *)self ageRating];
              v20 = [v7 ageRating];
              v21 = v20;
              v54 = v19;
              if (v19 && v20)
              {
                v22 = v19;
                v23 = v21;
                v24 = [v22 isEqual:v21];
                v21 = v23;
                v19 = v54;
                if (v24)
                {
LABEL_27:
                  v52 = v21;
                  v25 = [(ASCStatefulOffer *)self metrics];
                  v26 = [v7 metrics];
                  v27 = v26;
                  v53 = v25;
                  if (v25 && v26)
                  {
                    v28 = v26;
                    v29 = [v53 isEqual:v26];
                    v27 = v28;
                    if (v29)
                    {
LABEL_30:
                      v50 = v27;
                      v30 = [(ASCStatefulOffer *)self defaultOffer];
                      v31 = [v7 defaultOffer];
                      v32 = v31;
                      v51 = v30;
                      if (v30 && v31)
                      {
                        v33 = v31;
                        v34 = [v51 isEqual:v31];
                        v32 = v33;
                        if (v34)
                        {
LABEL_33:
                          v48 = v32;
                          v35 = [(ASCStatefulOffer *)self buyOffer];
                          v36 = [v7 buyOffer];
                          v37 = v36;
                          v49 = v35;
                          if (v35 && v36)
                          {
                            v38 = v36;
                            v39 = [v49 isEqual:v36];
                            v37 = v38;
                            if (v39)
                            {
                              goto LABEL_36;
                            }
                          }

                          else if (v35 == v36)
                          {
LABEL_36:
                            v40 = [(ASCStatefulOffer *)self openOffer];
                            v41 = [v7 openOffer];
                            v42 = v41;
                            if (v40 && v41)
                            {
                              v43 = v41;
                              v44 = [v40 isEqual:v41];
                              v42 = v43;
                              v45 = v40;
                              v17 = v44;
                            }

                            else
                            {
                              v45 = v40;
                              v17 = v40 == v41;
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

                      else if (v30 == v31)
                      {
                        goto LABEL_33;
                      }

                      v17 = 0;
LABEL_51:

                      v27 = v50;
                      goto LABEL_52;
                    }
                  }

                  else if (v25 == v26)
                  {
                    goto LABEL_30;
                  }

                  v17 = 0;
LABEL_52:

                  v21 = v52;
                  v19 = v54;
                  goto LABEL_53;
                }
              }

              else if (v19 == v20)
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

        else if (v11 == v12)
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

  v5 = [(ASCStatefulOffer *)self titles];
  [(ASCDescriber *)v3 addObject:v5 withName:@"titles"];

  v6 = [(ASCStatefulOffer *)self subtitles];
  [(ASCDescriber *)v3 addObject:v6 withName:@"subtitles"];

  v7 = ASCOfferFlagsGetDescription([(ASCStatefulOffer *)self flags]);
  [(ASCDescriber *)v3 addObject:v7 withName:@"flags"];

  v8 = [(ASCStatefulOffer *)self ageRating];
  [(ASCDescriber *)v3 addObject:v8 withName:@"ageRating"];

  v9 = [(ASCStatefulOffer *)self metrics];
  [(ASCDescriber *)v3 addSensitiveObject:v9 withName:@"metrics"];

  v10 = [(ASCStatefulOffer *)self defaultOffer];
  [(ASCDescriber *)v3 addObject:v10 withName:@"defaultOffer"];

  v11 = [(ASCStatefulOffer *)self buyOffer];
  [(ASCDescriber *)v3 addObject:v11 withName:@"buyOffer"];

  v12 = [(ASCStatefulOffer *)self openOffer];
  [(ASCDescriber *)v3 addObject:v12 withName:@"openOffer"];

  v13 = [(ASCDescriber *)v3 finalizeDescription];

  return v13;
}

@end