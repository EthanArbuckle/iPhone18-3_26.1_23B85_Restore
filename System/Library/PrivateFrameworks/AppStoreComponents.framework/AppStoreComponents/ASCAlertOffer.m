@interface ASCAlertOffer
- (ASCAlertOffer)initWithCoder:(id)a3;
- (ASCAlertOffer)initWithID:(id)a3 titles:(id)a4 subtitles:(id)a5 flags:(int64_t)a6 ageRating:(id)a7 metrics:(id)a8 alertTitle:(id)a9 alertMessage:(id)a10 alertButtonOffer:(id)a11 alertButtonTitle:(id)a12;
- (ASCAlertOffer)offerWithMetrics:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCAlertOffer

- (ASCAlertOffer)initWithID:(id)a3 titles:(id)a4 subtitles:(id)a5 flags:(int64_t)a6 ageRating:(id)a7 metrics:(id)a8 alertTitle:(id)a9 alertMessage:(id)a10 alertButtonOffer:(id)a11 alertButtonTitle:(id)a12
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v44 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v45.receiver = self;
  v45.super_class = ASCAlertOffer;
  v25 = [(ASCAlertOffer *)&v45 init];
  if (v25)
  {
    v26 = [v17 copy];
    id = v25->_id;
    v25->_id = v26;

    v28 = [v18 copy];
    titles = v25->_titles;
    v25->_titles = v28;

    v30 = [v19 copy];
    subtitles = v25->_subtitles;
    v25->_subtitles = v30;

    v25->_flags = a6;
    objc_storeStrong(&v25->_ageRating, a7);
    v32 = [v20 copy];
    metrics = v25->_metrics;
    v25->_metrics = v32;

    v34 = [v21 copy];
    alertTitle = v25->_alertTitle;
    v25->_alertTitle = v34;

    v36 = [v22 copy];
    alertMessage = v25->_alertMessage;
    v25->_alertMessage = v36;

    v38 = [v23 copyWithZone:0];
    alertButtonOffer = v25->_alertButtonOffer;
    v25->_alertButtonOffer = v38;

    v40 = [v24 copy];
    alertButtonTitle = v25->_alertButtonTitle;
    v25->_alertButtonTitle = v40;
  }

  return v25;
}

- (ASCAlertOffer)initWithCoder:(id)a3
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
          v49 = v9;
          v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"alertTitle"];
          v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"alertMessage"];
          v11 = ASCOfferDecodeForKey(v4, @"alertButtonOffer");
          v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"alertButtonTitle"];
          self = [(ASCAlertOffer *)self initWithID:v5 titles:v6 subtitles:v7 flags:v8 ageRating:v49 metrics:v10 alertTitle:v48 alertMessage:v47 alertButtonOffer:v11 alertButtonTitle:v12];

          v9 = v49;
          v13 = self;
        }

        else
        {
          v38 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          if (v38)
          {
            [(ASCAlertOffer *)v38 initWithCoder:v39, v40, v41, v42, v43, v44, v45];
          }

          v13 = 0;
        }
      }

      else
      {
        v30 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v30)
        {
          [(ASCAlertOffer *)v30 initWithCoder:v31, v32, v33, v34, v35, v36, v37];
        }

        v13 = 0;
      }
    }

    else
    {
      v22 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v22)
      {
        [(ASCAlertOffer *)v22 initWithCoder:v23, v24, v25, v26, v27, v28, v29];
      }

      v13 = 0;
    }
  }

  else
  {
    v14 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v14)
    {
      [(ASCAlertOffer *)v14 initWithCoder:v15, v16, v17, v18, v19, v20, v21];
    }

    v13 = 0;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASCAlertOffer *)self id];
  [v4 encodeObject:v5 forKey:@"id"];

  v6 = [(ASCAlertOffer *)self titles];
  [v4 encodeObject:v6 forKey:@"titles"];

  v7 = [(ASCAlertOffer *)self subtitles];
  [v4 encodeObject:v7 forKey:@"subtitles"];

  [v4 encodeInteger:-[ASCAlertOffer flags](self forKey:{"flags"), @"flags"}];
  v8 = [(ASCAlertOffer *)self ageRating];
  [v4 encodeObject:v8 forKey:@"ageRating"];

  v9 = [(ASCAlertOffer *)self metrics];
  [v4 encodeObject:v9 forKey:@"metrics"];

  v10 = [(ASCAlertOffer *)self alertTitle];
  [v4 encodeObject:v10 forKey:@"alertTitle"];

  v11 = [(ASCAlertOffer *)self alertMessage];
  [v4 encodeObject:v11 forKey:@"alertMessage"];

  v12 = [(ASCAlertOffer *)self alertButtonOffer];
  [v4 encodeObject:v12 forKey:@"alertButtonOffer"];

  v13 = [(ASCAlertOffer *)self alertButtonTitle];
  [v4 encodeObject:v13 forKey:@"alertButtonTitle"];
}

- (ASCAlertOffer)offerWithMetrics:(id)a3
{
  v4 = a3;
  v16 = objc_alloc(objc_opt_class());
  v15 = [(ASCAlertOffer *)self id];
  v5 = [(ASCAlertOffer *)self titles];
  v6 = [(ASCAlertOffer *)self subtitles];
  v7 = [(ASCAlertOffer *)self flags];
  v8 = [(ASCAlertOffer *)self ageRating];
  v9 = [(ASCAlertOffer *)self alertTitle];
  v10 = [(ASCAlertOffer *)self alertMessage];
  v11 = [(ASCAlertOffer *)self alertButtonOffer];
  v12 = [(ASCAlertOffer *)self alertButtonTitle];
  v13 = [v16 initWithID:v15 titles:v5 subtitles:v6 flags:v7 ageRating:v8 metrics:v4 alertTitle:v9 alertMessage:v10 alertButtonOffer:v11 alertButtonTitle:v12];

  return v13;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCAlertOffer *)self id];
  [(ASCHasher *)v3 combineObject:v4];

  v5 = [(ASCAlertOffer *)self titles];
  [(ASCHasher *)v3 combineObject:v5];

  v6 = [(ASCAlertOffer *)self subtitles];
  [(ASCHasher *)v3 combineObject:v6];

  [(ASCHasher *)v3 combineInteger:[(ASCAlertOffer *)self flags]];
  v7 = [(ASCAlertOffer *)self ageRating];
  [(ASCHasher *)v3 combineObject:v7];

  v8 = [(ASCAlertOffer *)self metrics];
  [(ASCHasher *)v3 combineObject:v8];

  v9 = [(ASCAlertOffer *)self alertTitle];
  [(ASCHasher *)v3 combineObject:v9];

  v10 = [(ASCAlertOffer *)self alertMessage];
  [(ASCHasher *)v3 combineObject:v10];

  v11 = [(ASCAlertOffer *)self alertButtonOffer];
  [(ASCHasher *)v3 combineObject:v11];

  v12 = [(ASCAlertOffer *)self alertButtonTitle];
  [(ASCHasher *)v3 combineObject:v12];

  v13 = [(ASCHasher *)v3 finalizeHash];
  return v13;
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
    v8 = [(ASCAlertOffer *)self id];
    v9 = [v7 id];
    v10 = v9;
    if (v8 && v9)
    {
      if ([v8 isEqual:v9])
      {
LABEL_10:
        v11 = [(ASCAlertOffer *)self titles];
        v12 = [v7 titles];
        v13 = v12;
        if (v11 && v12)
        {
          if ([v11 isEqual:v12])
          {
LABEL_13:
            v14 = [(ASCAlertOffer *)self subtitles];
            v15 = [v7 subtitles];
            v16 = v15;
            if (v14 && v15)
            {
              if (![v14 isEqual:v15])
              {
                goto LABEL_42;
              }
            }

            else if (v14 != v15)
            {
              goto LABEL_42;
            }

            v18 = [(ASCAlertOffer *)self flags];
            if (v18 == [v7 flags])
            {
              v19 = [(ASCAlertOffer *)self ageRating];
              v20 = [v7 ageRating];
              v21 = v20;
              v58 = v19;
              if (v19 && v20)
              {
                v22 = v19;
                v23 = v21;
                v24 = [v22 isEqual:v21];
                v21 = v23;
                v19 = v58;
                if (v24)
                {
LABEL_27:
                  v56 = v21;
                  v25 = [(ASCAlertOffer *)self metrics];
                  v26 = [v7 metrics];
                  v27 = v26;
                  v57 = v25;
                  if (v25 && v26)
                  {
                    v28 = v26;
                    v29 = [v57 isEqual:v26];
                    v27 = v28;
                    if (v29)
                    {
LABEL_30:
                      v54 = v27;
                      v30 = [(ASCAlertOffer *)self alertTitle];
                      v31 = [v7 alertTitle];
                      v32 = v31;
                      v55 = v30;
                      if (v30 && v31)
                      {
                        v33 = v31;
                        v34 = [v55 isEqual:v31];
                        v32 = v33;
                        if (v34)
                        {
LABEL_33:
                          v52 = v32;
                          v35 = [(ASCAlertOffer *)self alertMessage];
                          v36 = [v7 alertMessage];
                          v37 = v36;
                          v53 = v35;
                          if (v35 && v36)
                          {
                            v38 = v36;
                            v39 = [v53 isEqual:v36];
                            v37 = v38;
                            if (v39)
                            {
LABEL_36:
                              v50 = v37;
                              v40 = [(ASCAlertOffer *)self alertButtonOffer];
                              v41 = [v7 alertButtonOffer];
                              v51 = v40;
                              v49 = v41;
                              if (v40 && v41)
                              {
                                if ([v40 isEqual:v41])
                                {
                                  goto LABEL_39;
                                }
                              }

                              else if (v40 == v41)
                              {
LABEL_39:
                                v42 = [(ASCAlertOffer *)self alertButtonTitle];
                                v43 = [v7 alertButtonTitle];
                                v44 = v43;
                                if (v42 && v43)
                                {
                                  v45 = v43;
                                  v46 = [v42 isEqual:v43];
                                  v44 = v45;
                                  v47 = v42;
                                  v17 = v46;
                                }

                                else
                                {
                                  v47 = v42;
                                  v17 = v42 == v43;
                                }

                                goto LABEL_55;
                              }

                              v17 = 0;
LABEL_55:

                              v37 = v50;
                              goto LABEL_56;
                            }
                          }

                          else if (v35 == v36)
                          {
                            goto LABEL_36;
                          }

                          v17 = 0;
LABEL_56:

                          v32 = v52;
                          goto LABEL_57;
                        }
                      }

                      else if (v30 == v31)
                      {
                        goto LABEL_33;
                      }

                      v17 = 0;
LABEL_57:

                      v27 = v54;
                      goto LABEL_58;
                    }
                  }

                  else if (v25 == v26)
                  {
                    goto LABEL_30;
                  }

                  v17 = 0;
LABEL_58:

                  v21 = v56;
                  v19 = v58;
                  goto LABEL_59;
                }
              }

              else if (v19 == v20)
              {
                goto LABEL_27;
              }

              v17 = 0;
LABEL_59:

              goto LABEL_60;
            }

LABEL_42:
            v17 = 0;
LABEL_60:

            goto LABEL_61;
          }
        }

        else if (v11 == v12)
        {
          goto LABEL_13;
        }

        v17 = 0;
LABEL_61:

        goto LABEL_62;
      }
    }

    else if (v8 == v9)
    {
      goto LABEL_10;
    }

    v17 = 0;
LABEL_62:

    goto LABEL_63;
  }

  v17 = 0;
LABEL_63:

  return v17;
}

- (NSString)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  v4 = [(ASCAlertOffer *)self id];
  [(ASCDescriber *)v3 addObject:v4 withName:@"id"];

  v5 = [(ASCAlertOffer *)self titles];
  [(ASCDescriber *)v3 addObject:v5 withName:@"titles"];

  v6 = [(ASCAlertOffer *)self subtitles];
  [(ASCDescriber *)v3 addObject:v6 withName:@"subtitles"];

  v7 = ASCOfferFlagsGetDescription([(ASCAlertOffer *)self flags]);
  [(ASCDescriber *)v3 addObject:v7 withName:@"flags"];

  v8 = [(ASCAlertOffer *)self ageRating];
  [(ASCDescriber *)v3 addObject:v8 withName:@"ageRating"];

  v9 = [(ASCAlertOffer *)self metrics];
  [(ASCDescriber *)v3 addSensitiveObject:v9 withName:@"metrics"];

  v10 = [(ASCAlertOffer *)self alertTitle];
  [(ASCDescriber *)v3 addObject:v10 withName:@"alertTitle"];

  v11 = [(ASCAlertOffer *)self alertMessage];
  [(ASCDescriber *)v3 addObject:v11 withName:@"alertMessage"];

  v12 = [(ASCAlertOffer *)self alertButtonOffer];
  [(ASCDescriber *)v3 addObject:v12 withName:@"alertButtonOffer"];

  v13 = [(ASCAlertOffer *)self alertButtonTitle];
  [(ASCDescriber *)v3 addObject:v13 withName:@"alertButtonTitle"];

  v14 = [(ASCDescriber *)v3 finalizeDescription];

  return v14;
}

@end