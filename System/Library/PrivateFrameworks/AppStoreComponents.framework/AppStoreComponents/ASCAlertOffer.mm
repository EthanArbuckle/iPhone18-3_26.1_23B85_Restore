@interface ASCAlertOffer
- (ASCAlertOffer)initWithCoder:(id)coder;
- (ASCAlertOffer)initWithID:(id)d titles:(id)titles subtitles:(id)subtitles flags:(int64_t)flags ageRating:(id)rating metrics:(id)metrics alertTitle:(id)title alertMessage:(id)self0 alertButtonOffer:(id)self1 alertButtonTitle:(id)self2;
- (ASCAlertOffer)offerWithMetrics:(id)metrics;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCAlertOffer

- (ASCAlertOffer)initWithID:(id)d titles:(id)titles subtitles:(id)subtitles flags:(int64_t)flags ageRating:(id)rating metrics:(id)metrics alertTitle:(id)title alertMessage:(id)self0 alertButtonOffer:(id)self1 alertButtonTitle:(id)self2
{
  dCopy = d;
  titlesCopy = titles;
  subtitlesCopy = subtitles;
  ratingCopy = rating;
  metricsCopy = metrics;
  titleCopy = title;
  messageCopy = message;
  offerCopy = offer;
  buttonTitleCopy = buttonTitle;
  v45.receiver = self;
  v45.super_class = ASCAlertOffer;
  v25 = [(ASCAlertOffer *)&v45 init];
  if (v25)
  {
    v26 = [dCopy copy];
    id = v25->_id;
    v25->_id = v26;

    v28 = [titlesCopy copy];
    titles = v25->_titles;
    v25->_titles = v28;

    v30 = [subtitlesCopy copy];
    subtitles = v25->_subtitles;
    v25->_subtitles = v30;

    v25->_flags = flags;
    objc_storeStrong(&v25->_ageRating, rating);
    v32 = [metricsCopy copy];
    metrics = v25->_metrics;
    v25->_metrics = v32;

    v34 = [titleCopy copy];
    alertTitle = v25->_alertTitle;
    v25->_alertTitle = v34;

    v36 = [messageCopy copy];
    alertMessage = v25->_alertMessage;
    v25->_alertMessage = v36;

    v38 = [offerCopy copyWithZone:0];
    alertButtonOffer = v25->_alertButtonOffer;
    v25->_alertButtonOffer = v38;

    v40 = [buttonTitleCopy copy];
    alertButtonTitle = v25->_alertButtonTitle;
    v25->_alertButtonTitle = v40;
  }

  return v25;
}

- (ASCAlertOffer)initWithCoder:(id)coder
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
          v49 = v9;
          v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alertTitle"];
          v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alertMessage"];
          v11 = ASCOfferDecodeForKey(coderCopy, @"alertButtonOffer");
          v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alertButtonTitle"];
          self = [(ASCAlertOffer *)self initWithID:v5 titles:v6 subtitles:v7 flags:v8 ageRating:v49 metrics:v10 alertTitle:v48 alertMessage:v47 alertButtonOffer:v11 alertButtonTitle:v12];

          v9 = v49;
          selfCopy = self;
        }

        else
        {
          v38 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          if (v38)
          {
            [(ASCAlertOffer *)v38 initWithCoder:v39, v40, v41, v42, v43, v44, v45];
          }

          selfCopy = 0;
        }
      }

      else
      {
        v30 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v30)
        {
          [(ASCAlertOffer *)v30 initWithCoder:v31, v32, v33, v34, v35, v36, v37];
        }

        selfCopy = 0;
      }
    }

    else
    {
      v22 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v22)
      {
        [(ASCAlertOffer *)v22 initWithCoder:v23, v24, v25, v26, v27, v28, v29];
      }

      selfCopy = 0;
    }
  }

  else
  {
    v14 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v14)
    {
      [(ASCAlertOffer *)v14 initWithCoder:v15, v16, v17, v18, v19, v20, v21];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ASCAlertOffer *)self id];
  [coderCopy encodeObject:v5 forKey:@"id"];

  titles = [(ASCAlertOffer *)self titles];
  [coderCopy encodeObject:titles forKey:@"titles"];

  subtitles = [(ASCAlertOffer *)self subtitles];
  [coderCopy encodeObject:subtitles forKey:@"subtitles"];

  [coderCopy encodeInteger:-[ASCAlertOffer flags](self forKey:{"flags"), @"flags"}];
  ageRating = [(ASCAlertOffer *)self ageRating];
  [coderCopy encodeObject:ageRating forKey:@"ageRating"];

  metrics = [(ASCAlertOffer *)self metrics];
  [coderCopy encodeObject:metrics forKey:@"metrics"];

  alertTitle = [(ASCAlertOffer *)self alertTitle];
  [coderCopy encodeObject:alertTitle forKey:@"alertTitle"];

  alertMessage = [(ASCAlertOffer *)self alertMessage];
  [coderCopy encodeObject:alertMessage forKey:@"alertMessage"];

  alertButtonOffer = [(ASCAlertOffer *)self alertButtonOffer];
  [coderCopy encodeObject:alertButtonOffer forKey:@"alertButtonOffer"];

  alertButtonTitle = [(ASCAlertOffer *)self alertButtonTitle];
  [coderCopy encodeObject:alertButtonTitle forKey:@"alertButtonTitle"];
}

- (ASCAlertOffer)offerWithMetrics:(id)metrics
{
  metricsCopy = metrics;
  v16 = objc_alloc(objc_opt_class());
  v15 = [(ASCAlertOffer *)self id];
  titles = [(ASCAlertOffer *)self titles];
  subtitles = [(ASCAlertOffer *)self subtitles];
  flags = [(ASCAlertOffer *)self flags];
  ageRating = [(ASCAlertOffer *)self ageRating];
  alertTitle = [(ASCAlertOffer *)self alertTitle];
  alertMessage = [(ASCAlertOffer *)self alertMessage];
  alertButtonOffer = [(ASCAlertOffer *)self alertButtonOffer];
  alertButtonTitle = [(ASCAlertOffer *)self alertButtonTitle];
  v13 = [v16 initWithID:v15 titles:titles subtitles:subtitles flags:flags ageRating:ageRating metrics:metricsCopy alertTitle:alertTitle alertMessage:alertMessage alertButtonOffer:alertButtonOffer alertButtonTitle:alertButtonTitle];

  return v13;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCAlertOffer *)self id];
  [(ASCHasher *)v3 combineObject:v4];

  titles = [(ASCAlertOffer *)self titles];
  [(ASCHasher *)v3 combineObject:titles];

  subtitles = [(ASCAlertOffer *)self subtitles];
  [(ASCHasher *)v3 combineObject:subtitles];

  [(ASCHasher *)v3 combineInteger:[(ASCAlertOffer *)self flags]];
  ageRating = [(ASCAlertOffer *)self ageRating];
  [(ASCHasher *)v3 combineObject:ageRating];

  metrics = [(ASCAlertOffer *)self metrics];
  [(ASCHasher *)v3 combineObject:metrics];

  alertTitle = [(ASCAlertOffer *)self alertTitle];
  [(ASCHasher *)v3 combineObject:alertTitle];

  alertMessage = [(ASCAlertOffer *)self alertMessage];
  [(ASCHasher *)v3 combineObject:alertMessage];

  alertButtonOffer = [(ASCAlertOffer *)self alertButtonOffer];
  [(ASCHasher *)v3 combineObject:alertButtonOffer];

  alertButtonTitle = [(ASCAlertOffer *)self alertButtonTitle];
  [(ASCHasher *)v3 combineObject:alertButtonTitle];

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
    v8 = [(ASCAlertOffer *)self id];
    v9 = [v7 id];
    v10 = v9;
    if (v8 && v9)
    {
      if ([v8 isEqual:v9])
      {
LABEL_10:
        titles = [(ASCAlertOffer *)self titles];
        titles2 = [v7 titles];
        v13 = titles2;
        if (titles && titles2)
        {
          if ([titles isEqual:titles2])
          {
LABEL_13:
            subtitles = [(ASCAlertOffer *)self subtitles];
            subtitles2 = [v7 subtitles];
            v16 = subtitles2;
            if (subtitles && subtitles2)
            {
              if (![subtitles isEqual:subtitles2])
              {
                goto LABEL_42;
              }
            }

            else if (subtitles != subtitles2)
            {
              goto LABEL_42;
            }

            flags = [(ASCAlertOffer *)self flags];
            if (flags == [v7 flags])
            {
              ageRating = [(ASCAlertOffer *)self ageRating];
              ageRating2 = [v7 ageRating];
              v21 = ageRating2;
              v58 = ageRating;
              if (ageRating && ageRating2)
              {
                v22 = ageRating;
                v23 = v21;
                v24 = [v22 isEqual:v21];
                v21 = v23;
                ageRating = v58;
                if (v24)
                {
LABEL_27:
                  v56 = v21;
                  metrics = [(ASCAlertOffer *)self metrics];
                  metrics2 = [v7 metrics];
                  v27 = metrics2;
                  v57 = metrics;
                  if (metrics && metrics2)
                  {
                    v28 = metrics2;
                    v29 = [v57 isEqual:metrics2];
                    v27 = v28;
                    if (v29)
                    {
LABEL_30:
                      v54 = v27;
                      alertTitle = [(ASCAlertOffer *)self alertTitle];
                      alertTitle2 = [v7 alertTitle];
                      v32 = alertTitle2;
                      v55 = alertTitle;
                      if (alertTitle && alertTitle2)
                      {
                        v33 = alertTitle2;
                        v34 = [v55 isEqual:alertTitle2];
                        v32 = v33;
                        if (v34)
                        {
LABEL_33:
                          v52 = v32;
                          alertMessage = [(ASCAlertOffer *)self alertMessage];
                          alertMessage2 = [v7 alertMessage];
                          v37 = alertMessage2;
                          v53 = alertMessage;
                          if (alertMessage && alertMessage2)
                          {
                            v38 = alertMessage2;
                            v39 = [v53 isEqual:alertMessage2];
                            v37 = v38;
                            if (v39)
                            {
LABEL_36:
                              v50 = v37;
                              alertButtonOffer = [(ASCAlertOffer *)self alertButtonOffer];
                              alertButtonOffer2 = [v7 alertButtonOffer];
                              v51 = alertButtonOffer;
                              v49 = alertButtonOffer2;
                              if (alertButtonOffer && alertButtonOffer2)
                              {
                                if ([alertButtonOffer isEqual:alertButtonOffer2])
                                {
                                  goto LABEL_39;
                                }
                              }

                              else if (alertButtonOffer == alertButtonOffer2)
                              {
LABEL_39:
                                alertButtonTitle = [(ASCAlertOffer *)self alertButtonTitle];
                                alertButtonTitle2 = [v7 alertButtonTitle];
                                v44 = alertButtonTitle2;
                                if (alertButtonTitle && alertButtonTitle2)
                                {
                                  v45 = alertButtonTitle2;
                                  v46 = [alertButtonTitle isEqual:alertButtonTitle2];
                                  v44 = v45;
                                  v47 = alertButtonTitle;
                                  v17 = v46;
                                }

                                else
                                {
                                  v47 = alertButtonTitle;
                                  v17 = alertButtonTitle == alertButtonTitle2;
                                }

                                goto LABEL_55;
                              }

                              v17 = 0;
LABEL_55:

                              v37 = v50;
                              goto LABEL_56;
                            }
                          }

                          else if (alertMessage == alertMessage2)
                          {
                            goto LABEL_36;
                          }

                          v17 = 0;
LABEL_56:

                          v32 = v52;
                          goto LABEL_57;
                        }
                      }

                      else if (alertTitle == alertTitle2)
                      {
                        goto LABEL_33;
                      }

                      v17 = 0;
LABEL_57:

                      v27 = v54;
                      goto LABEL_58;
                    }
                  }

                  else if (metrics == metrics2)
                  {
                    goto LABEL_30;
                  }

                  v17 = 0;
LABEL_58:

                  v21 = v56;
                  ageRating = v58;
                  goto LABEL_59;
                }
              }

              else if (ageRating == ageRating2)
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

        else if (titles == titles2)
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

  titles = [(ASCAlertOffer *)self titles];
  [(ASCDescriber *)v3 addObject:titles withName:@"titles"];

  subtitles = [(ASCAlertOffer *)self subtitles];
  [(ASCDescriber *)v3 addObject:subtitles withName:@"subtitles"];

  v7 = ASCOfferFlagsGetDescription([(ASCAlertOffer *)self flags]);
  [(ASCDescriber *)v3 addObject:v7 withName:@"flags"];

  ageRating = [(ASCAlertOffer *)self ageRating];
  [(ASCDescriber *)v3 addObject:ageRating withName:@"ageRating"];

  metrics = [(ASCAlertOffer *)self metrics];
  [(ASCDescriber *)v3 addSensitiveObject:metrics withName:@"metrics"];

  alertTitle = [(ASCAlertOffer *)self alertTitle];
  [(ASCDescriber *)v3 addObject:alertTitle withName:@"alertTitle"];

  alertMessage = [(ASCAlertOffer *)self alertMessage];
  [(ASCDescriber *)v3 addObject:alertMessage withName:@"alertMessage"];

  alertButtonOffer = [(ASCAlertOffer *)self alertButtonOffer];
  [(ASCDescriber *)v3 addObject:alertButtonOffer withName:@"alertButtonOffer"];

  alertButtonTitle = [(ASCAlertOffer *)self alertButtonTitle];
  [(ASCDescriber *)v3 addObject:alertButtonTitle withName:@"alertButtonTitle"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end