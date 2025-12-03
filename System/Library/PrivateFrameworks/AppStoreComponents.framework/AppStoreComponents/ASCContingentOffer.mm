@interface ASCContingentOffer
- (ASCContingentOffer)initWithCoder:(id)coder;
- (ASCContingentOffer)initWithID:(id)d titles:(id)titles subtitles:(id)subtitles flags:(int64_t)flags ageRating:(id)rating metrics:(id)metrics organicOffer:(id)offer streamlinedOffer:(id)self0 offerID:(id)self1 iapItemID:(id)self2 iapItemName:(id)self3 iapProductName:(id)self4 offerType:(int64_t)self5;
- (ASCContingentOffer)offerWithMetrics:(id)metrics;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCContingentOffer

- (ASCContingentOffer)initWithID:(id)d titles:(id)titles subtitles:(id)subtitles flags:(int64_t)flags ageRating:(id)rating metrics:(id)metrics organicOffer:(id)offer streamlinedOffer:(id)self0 offerID:(id)self1 iapItemID:(id)self2 iapItemName:(id)self3 iapProductName:(id)self4 offerType:(int64_t)self5
{
  dCopy = d;
  titlesCopy = titles;
  subtitlesCopy = subtitles;
  ratingCopy = rating;
  ratingCopy2 = rating;
  metricsCopy = metrics;
  offerCopy = offer;
  streamlinedOfferCopy = streamlinedOffer;
  iDCopy = iD;
  itemIDCopy = itemID;
  v26 = subtitlesCopy;
  nameCopy = name;
  productNameCopy = productName;
  v56.receiver = self;
  v56.super_class = ASCContingentOffer;
  v29 = [(ASCContingentOffer *)&v56 init];
  if (v29)
  {
    v30 = [dCopy copy];
    id = v29->_id;
    v29->_id = v30;

    v32 = [titlesCopy copy];
    titles = v29->_titles;
    v29->_titles = v32;

    v34 = [v26 copy];
    subtitles = v29->_subtitles;
    v29->_subtitles = v34;

    v29->_flags = flags;
    objc_storeStrong(&v29->_ageRating, ratingCopy);
    v36 = [metricsCopy copy];
    metrics = v29->_metrics;
    v29->_metrics = v36;

    v38 = [offerCopy copyWithZone:0];
    organicOffer = v29->_organicOffer;
    v29->_organicOffer = v38;

    v40 = [streamlinedOfferCopy copyWithZone:0];
    streamlinedOffer = v29->_streamlinedOffer;
    v29->_streamlinedOffer = v40;

    v42 = [iDCopy copy];
    offerID = v29->_offerID;
    v29->_offerID = v42;

    v44 = [itemIDCopy copy];
    iapItemID = v29->_iapItemID;
    v29->_iapItemID = v44;

    v46 = [nameCopy copy];
    iapItemName = v29->_iapItemName;
    v29->_iapItemName = v46;

    v48 = [productNameCopy copy];
    iapProductName = v29->_iapProductName;
    v29->_iapProductName = v48;

    v29->_offerType = type;
  }

  return v29;
}

- (ASCContingentOffer)initWithCoder:(id)coder
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
          v11 = ASCOfferDecodeForKey(coderCopy, @"organicOffer");
          v12 = v11;
          if (v11)
          {
            v97 = v9;
            v98 = v11;
            v99 = ASCOfferDecodeForKey(coderCopy, @"streamlinedOffer");
            v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"offerID"];
            if (v13)
            {
              v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iapItemID"];
              if (v14)
              {
                v96 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iapItemName"];
                if (v96)
                {
                  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iapProductName"];
                  if (v15)
                  {
                    v94 = v15;
                    v95 = [coderCopy decodeIntegerForKey:@"offerType"];
                    selfCopy = self;
                    v17 = v15;
                    v9 = v97;
                    v18 = [(ASCContingentOffer *)selfCopy initWithID:v5 titles:v6 subtitles:v7 flags:v8 ageRating:v97 metrics:v10 organicOffer:v98 streamlinedOffer:v99 offerID:v13 iapItemID:v14 iapItemName:v96 iapProductName:v94 offerType:v95];
                    v19 = v17;
                    self = v18;
                    v20 = v18;
                  }

                  else
                  {
                    v85 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
                    v9 = v97;
                    if (v85)
                    {
                      [(ASCContingentOffer *)v85 initWithCoder:v86, v87, v88, v89, v90, v91, v92];
                    }

                    v20 = 0;
                    v19 = 0;
                  }
                }

                else
                {
                  v77 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
                  if (v77)
                  {
                    [(ASCContingentOffer *)v77 initWithCoder:v78, v79, v80, v81, v82, v83, v84];
                  }

                  v20 = 0;
                }
              }

              else
              {
                v69 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
                if (v69)
                {
                  [(ASCContingentOffer *)v69 initWithCoder:v70, v71, v72, v73, v74, v75, v76];
                }

                v20 = 0;
              }
            }

            else
            {
              v61 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
              if (v61)
              {
                [(ASCContingentOffer *)v61 initWithCoder:v62, v63, v64, v65, v66, v67, v68];
              }

              v20 = 0;
            }

            v12 = v98;
          }

          else
          {
            v53 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
            if (v53)
            {
              [(ASCContingentOffer *)v53 initWithCoder:v54, v55, v56, v57, v58, v59, v60];
            }

            v20 = 0;
          }
        }

        else
        {
          v45 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          if (v45)
          {
            [(ASCContingentOffer *)v45 initWithCoder:v46, v47, v48, v49, v50, v51, v52];
          }

          v20 = 0;
        }
      }

      else
      {
        v37 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v37)
        {
          [(ASCContingentOffer *)v37 initWithCoder:v38, v39, v40, v41, v42, v43, v44];
        }

        v20 = 0;
      }
    }

    else
    {
      v29 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v29)
      {
        [(ASCContingentOffer *)v29 initWithCoder:v30, v31, v32, v33, v34, v35, v36];
      }

      v20 = 0;
    }
  }

  else
  {
    v21 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v21)
    {
      [(ASCContingentOffer *)v21 initWithCoder:v22, v23, v24, v25, v26, v27, v28];
    }

    v20 = 0;
  }

  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [(ASCContingentOffer *)self id];
  [coderCopy encodeObject:v4 forKey:@"id"];

  titles = [(ASCContingentOffer *)self titles];
  [coderCopy encodeObject:titles forKey:@"titles"];

  subtitles = [(ASCContingentOffer *)self subtitles];
  [coderCopy encodeObject:subtitles forKey:@"subtitles"];

  [coderCopy encodeInteger:-[ASCContingentOffer flags](self forKey:{"flags"), @"flags"}];
  ageRating = [(ASCContingentOffer *)self ageRating];
  [coderCopy encodeObject:ageRating forKey:@"ageRating"];

  metrics = [(ASCContingentOffer *)self metrics];
  [coderCopy encodeObject:metrics forKey:@"metrics"];

  organicOffer = [(ASCContingentOffer *)self organicOffer];
  [coderCopy encodeObject:organicOffer forKey:@"organicOffer"];

  streamlinedOffer = [(ASCContingentOffer *)self streamlinedOffer];
  [coderCopy encodeObject:streamlinedOffer forKey:@"streamlinedOffer"];

  offerID = [(ASCContingentOffer *)self offerID];
  [coderCopy encodeObject:offerID forKey:@"offerID"];

  iapItemID = [(ASCContingentOffer *)self iapItemID];
  [coderCopy encodeObject:iapItemID forKey:@"iapItemID"];

  iapItemName = [(ASCContingentOffer *)self iapItemName];
  [coderCopy encodeObject:iapItemName forKey:@"iapItemName"];

  iapProductName = [(ASCContingentOffer *)self iapProductName];
  [coderCopy encodeObject:iapProductName forKey:@"iapProductName"];

  [coderCopy encodeInteger:-[ASCContingentOffer offerType](self forKey:{"offerType"), @"offerType"}];
}

- (ASCContingentOffer)offerWithMetrics:(id)metrics
{
  metricsCopy = metrics;
  v4 = objc_alloc(objc_opt_class());
  v5 = [(ASCContingentOffer *)self id];
  titles = [(ASCContingentOffer *)self titles];
  subtitles = [(ASCContingentOffer *)self subtitles];
  flags = [(ASCContingentOffer *)self flags];
  ageRating = [(ASCContingentOffer *)self ageRating];
  organicOffer = [(ASCContingentOffer *)self organicOffer];
  streamlinedOffer = [(ASCContingentOffer *)self streamlinedOffer];
  offerID = [(ASCContingentOffer *)self offerID];
  iapItemID = [(ASCContingentOffer *)self iapItemID];
  iapItemName = [(ASCContingentOffer *)self iapItemName];
  iapProductName = [(ASCContingentOffer *)self iapProductName];
  v15 = [v4 initWithID:v5 titles:titles subtitles:subtitles flags:flags ageRating:ageRating metrics:metricsCopy organicOffer:organicOffer streamlinedOffer:streamlinedOffer offerID:offerID iapItemID:iapItemID iapItemName:iapItemName iapProductName:iapProductName offerType:{-[ASCContingentOffer offerType](self, "offerType")}];

  return v15;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCContingentOffer *)self id];
  [(ASCHasher *)v3 combineObject:v4];

  titles = [(ASCContingentOffer *)self titles];
  [(ASCHasher *)v3 combineObject:titles];

  subtitles = [(ASCContingentOffer *)self subtitles];
  [(ASCHasher *)v3 combineObject:subtitles];

  [(ASCHasher *)v3 combineInteger:[(ASCContingentOffer *)self flags]];
  ageRating = [(ASCContingentOffer *)self ageRating];
  [(ASCHasher *)v3 combineObject:ageRating];

  metrics = [(ASCContingentOffer *)self metrics];
  [(ASCHasher *)v3 combineObject:metrics];

  organicOffer = [(ASCContingentOffer *)self organicOffer];
  [(ASCHasher *)v3 combineObject:organicOffer];

  streamlinedOffer = [(ASCContingentOffer *)self streamlinedOffer];
  [(ASCHasher *)v3 combineObject:streamlinedOffer];

  offerID = [(ASCContingentOffer *)self offerID];
  [(ASCHasher *)v3 combineObject:offerID];

  iapItemID = [(ASCContingentOffer *)self iapItemID];
  [(ASCHasher *)v3 combineObject:iapItemID];

  iapItemName = [(ASCContingentOffer *)self iapItemName];
  [(ASCHasher *)v3 combineObject:iapItemName];

  iapProductName = [(ASCContingentOffer *)self iapProductName];
  [(ASCHasher *)v3 combineObject:iapProductName];

  [(ASCHasher *)v3 combineInteger:[(ASCContingentOffer *)self offerType]];
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
    v8 = [(ASCContingentOffer *)self id];
    v9 = [v7 id];
    v10 = v9;
    if (v8 && v9)
    {
      if ([v8 isEqual:v9])
      {
LABEL_10:
        titles = [(ASCContingentOffer *)self titles];
        titles2 = [v7 titles];
        v13 = titles2;
        if (titles && titles2)
        {
          if ([titles isEqual:titles2])
          {
LABEL_13:
            subtitles = [(ASCContingentOffer *)self subtitles];
            subtitles2 = [v7 subtitles];
            v16 = subtitles2;
            if (subtitles && subtitles2)
            {
              if (![subtitles isEqual:subtitles2])
              {
                goto LABEL_49;
              }
            }

            else if (subtitles != subtitles2)
            {
              goto LABEL_49;
            }

            flags = [(ASCContingentOffer *)self flags];
            if (flags == [v7 flags])
            {
              ageRating = [(ASCContingentOffer *)self ageRating];
              ageRating2 = [v7 ageRating];
              v21 = ageRating2;
              if (ageRating && ageRating2)
              {
                v22 = ageRating;
                v66 = v16;
                v23 = ageRating;
                v24 = v21;
                v25 = [v22 isEqual:v21];
                v21 = v24;
                ageRating = v23;
                v16 = v66;
                if (v25)
                {
LABEL_27:
                  v64 = v21;
                  v65 = ageRating;
                  metrics = [(ASCContingentOffer *)self metrics];
                  metrics2 = [v7 metrics];
                  v28 = metrics2;
                  v68 = metrics;
                  if (metrics && metrics2)
                  {
                    v29 = metrics2;
                    v30 = [v68 isEqual:metrics2];
                    v28 = v29;
                    if (v30)
                    {
LABEL_30:
                      v62 = v28;
                      organicOffer = [(ASCContingentOffer *)self organicOffer];
                      organicOffer2 = [v7 organicOffer];
                      v33 = organicOffer2;
                      v63 = organicOffer;
                      if (organicOffer && organicOffer2)
                      {
                        v34 = organicOffer2;
                        v35 = [v63 isEqual:organicOffer2];
                        v33 = v34;
                        if (v35)
                        {
LABEL_33:
                          v60 = v33;
                          streamlinedOffer = [(ASCContingentOffer *)self streamlinedOffer];
                          streamlinedOffer2 = [v7 streamlinedOffer];
                          v38 = streamlinedOffer2;
                          v61 = streamlinedOffer;
                          if (streamlinedOffer && streamlinedOffer2)
                          {
                            v39 = streamlinedOffer2;
                            v40 = [v61 isEqual:streamlinedOffer2];
                            v38 = v39;
                            if (v40)
                            {
LABEL_36:
                              v58 = v38;
                              offerID = [(ASCContingentOffer *)self offerID];
                              offerID2 = [v7 offerID];
                              v59 = offerID;
                              v57 = offerID2;
                              if (offerID && offerID2)
                              {
                                if ([offerID isEqual:offerID2])
                                {
LABEL_39:
                                  iapItemID = [(ASCContingentOffer *)self iapItemID];
                                  iapItemID2 = [v7 iapItemID];
                                  v55 = iapItemID2;
                                  v56 = iapItemID;
                                  if (iapItemID && iapItemID2)
                                  {
                                    if ([iapItemID isEqual:iapItemID2])
                                    {
LABEL_42:
                                      iapItemName = [(ASCContingentOffer *)self iapItemName];
                                      iapItemName2 = [v7 iapItemName];
                                      v54 = iapItemName;
                                      if (iapItemName && iapItemName2)
                                      {
                                        v47 = iapItemName2;
                                        if ([v54 isEqual:iapItemName2])
                                        {
LABEL_45:
                                          v67 = v16;
                                          iapProductName = [(ASCContingentOffer *)self iapProductName];
                                          iapProductName2 = [v7 iapProductName];
                                          v53 = iapProductName;
                                          if (iapProductName && iapProductName2)
                                          {
                                            v50 = iapProductName2;
                                            if ([v53 isEqual:iapProductName2])
                                            {
LABEL_48:
                                              offerType = [(ASCContingentOffer *)self offerType];
                                              v17 = offerType == [v7 offerType];
LABEL_66:

                                              v16 = v67;
                                              goto LABEL_67;
                                            }
                                          }

                                          else
                                          {
                                            v50 = iapProductName2;
                                            if (v53 == iapProductName2)
                                            {
                                              goto LABEL_48;
                                            }
                                          }

                                          v17 = 0;
                                          goto LABEL_66;
                                        }
                                      }

                                      else
                                      {
                                        v47 = iapItemName2;
                                        if (v54 == iapItemName2)
                                        {
                                          goto LABEL_45;
                                        }
                                      }

                                      v17 = 0;
LABEL_67:

                                      goto LABEL_68;
                                    }
                                  }

                                  else if (iapItemID == iapItemID2)
                                  {
                                    goto LABEL_42;
                                  }

                                  v17 = 0;
LABEL_68:

                                  goto LABEL_69;
                                }
                              }

                              else if (offerID == offerID2)
                              {
                                goto LABEL_39;
                              }

                              v17 = 0;
LABEL_69:

                              v38 = v58;
                              goto LABEL_70;
                            }
                          }

                          else if (streamlinedOffer == streamlinedOffer2)
                          {
                            goto LABEL_36;
                          }

                          v17 = 0;
LABEL_70:

                          v33 = v60;
                          goto LABEL_71;
                        }
                      }

                      else if (organicOffer == organicOffer2)
                      {
                        goto LABEL_33;
                      }

                      v17 = 0;
LABEL_71:

                      v28 = v62;
                      goto LABEL_72;
                    }
                  }

                  else if (metrics == metrics2)
                  {
                    goto LABEL_30;
                  }

                  v17 = 0;
LABEL_72:

                  v21 = v64;
                  ageRating = v65;
                  goto LABEL_73;
                }
              }

              else if (ageRating == ageRating2)
              {
                goto LABEL_27;
              }

              v17 = 0;
LABEL_73:

              goto LABEL_74;
            }

LABEL_49:
            v17 = 0;
LABEL_74:

            goto LABEL_75;
          }
        }

        else if (titles == titles2)
        {
          goto LABEL_13;
        }

        v17 = 0;
LABEL_75:

        goto LABEL_76;
      }
    }

    else if (v8 == v9)
    {
      goto LABEL_10;
    }

    v17 = 0;
LABEL_76:

    goto LABEL_77;
  }

  v17 = 0;
LABEL_77:

  return v17;
}

- (NSString)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  v4 = [(ASCContingentOffer *)self id];
  [(ASCDescriber *)v3 addObject:v4 withName:@"id"];

  titles = [(ASCContingentOffer *)self titles];
  [(ASCDescriber *)v3 addObject:titles withName:@"titles"];

  subtitles = [(ASCContingentOffer *)self subtitles];
  [(ASCDescriber *)v3 addObject:subtitles withName:@"subtitles"];

  v7 = ASCOfferFlagsGetDescription([(ASCContingentOffer *)self flags]);
  [(ASCDescriber *)v3 addObject:v7 withName:@"flags"];

  ageRating = [(ASCContingentOffer *)self ageRating];
  [(ASCDescriber *)v3 addObject:ageRating withName:@"ageRating"];

  metrics = [(ASCContingentOffer *)self metrics];
  [(ASCDescriber *)v3 addSensitiveObject:metrics withName:@"metrics"];

  organicOffer = [(ASCContingentOffer *)self organicOffer];
  [(ASCDescriber *)v3 addObject:organicOffer withName:@"organicOffer"];

  streamlinedOffer = [(ASCContingentOffer *)self streamlinedOffer];
  [(ASCDescriber *)v3 addObject:streamlinedOffer withName:@"streamlinedOffer"];

  offerID = [(ASCContingentOffer *)self offerID];
  [(ASCDescriber *)v3 addObject:offerID withName:@"offerID"];

  iapItemID = [(ASCContingentOffer *)self iapItemID];
  [(ASCDescriber *)v3 addObject:iapItemID withName:@"iapItemID"];

  iapItemName = [(ASCContingentOffer *)self iapItemName];
  [(ASCDescriber *)v3 addObject:iapItemName withName:@"iapItemName"];

  iapProductName = [(ASCContingentOffer *)self iapProductName];
  [(ASCDescriber *)v3 addObject:iapProductName withName:@"iapProductName"];

  [(ASCDescriber *)v3 addInteger:[(ASCContingentOffer *)self offerType] withName:@"offerType"];
  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end