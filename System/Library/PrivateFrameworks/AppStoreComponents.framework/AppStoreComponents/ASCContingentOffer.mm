@interface ASCContingentOffer
- (ASCContingentOffer)initWithCoder:(id)a3;
- (ASCContingentOffer)initWithID:(id)a3 titles:(id)a4 subtitles:(id)a5 flags:(int64_t)a6 ageRating:(id)a7 metrics:(id)a8 organicOffer:(id)a9 streamlinedOffer:(id)a10 offerID:(id)a11 iapItemID:(id)a12 iapItemName:(id)a13 iapProductName:(id)a14 offerType:(int64_t)a15;
- (ASCContingentOffer)offerWithMetrics:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCContingentOffer

- (ASCContingentOffer)initWithID:(id)a3 titles:(id)a4 subtitles:(id)a5 flags:(int64_t)a6 ageRating:(id)a7 metrics:(id)a8 organicOffer:(id)a9 streamlinedOffer:(id)a10 offerID:(id)a11 iapItemID:(id)a12 iapItemName:(id)a13 iapProductName:(id)a14 offerType:(int64_t)a15
{
  v54 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a7;
  v53 = a7;
  v55 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v26 = v20;
  v27 = a13;
  v28 = a14;
  v56.receiver = self;
  v56.super_class = ASCContingentOffer;
  v29 = [(ASCContingentOffer *)&v56 init];
  if (v29)
  {
    v30 = [v54 copy];
    id = v29->_id;
    v29->_id = v30;

    v32 = [v19 copy];
    titles = v29->_titles;
    v29->_titles = v32;

    v34 = [v26 copy];
    subtitles = v29->_subtitles;
    v29->_subtitles = v34;

    v29->_flags = a6;
    objc_storeStrong(&v29->_ageRating, v21);
    v36 = [v55 copy];
    metrics = v29->_metrics;
    v29->_metrics = v36;

    v38 = [v22 copyWithZone:0];
    organicOffer = v29->_organicOffer;
    v29->_organicOffer = v38;

    v40 = [v23 copyWithZone:0];
    streamlinedOffer = v29->_streamlinedOffer;
    v29->_streamlinedOffer = v40;

    v42 = [v24 copy];
    offerID = v29->_offerID;
    v29->_offerID = v42;

    v44 = [v25 copy];
    iapItemID = v29->_iapItemID;
    v29->_iapItemID = v44;

    v46 = [v27 copy];
    iapItemName = v29->_iapItemName;
    v29->_iapItemName = v46;

    v48 = [v28 copy];
    iapProductName = v29->_iapProductName;
    v29->_iapProductName = v48;

    v29->_offerType = a15;
  }

  return v29;
}

- (ASCContingentOffer)initWithCoder:(id)a3
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
          v11 = ASCOfferDecodeForKey(v4, @"organicOffer");
          v12 = v11;
          if (v11)
          {
            v97 = v9;
            v98 = v11;
            v99 = ASCOfferDecodeForKey(v4, @"streamlinedOffer");
            v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"offerID"];
            if (v13)
            {
              v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iapItemID"];
              if (v14)
              {
                v96 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iapItemName"];
                if (v96)
                {
                  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iapProductName"];
                  if (v15)
                  {
                    v94 = v15;
                    v95 = [v4 decodeIntegerForKey:@"offerType"];
                    v16 = self;
                    v17 = v15;
                    v9 = v97;
                    v18 = [(ASCContingentOffer *)v16 initWithID:v5 titles:v6 subtitles:v7 flags:v8 ageRating:v97 metrics:v10 organicOffer:v98 streamlinedOffer:v99 offerID:v13 iapItemID:v14 iapItemName:v96 iapProductName:v94 offerType:v95];
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

- (void)encodeWithCoder:(id)a3
{
  v15 = a3;
  v4 = [(ASCContingentOffer *)self id];
  [v15 encodeObject:v4 forKey:@"id"];

  v5 = [(ASCContingentOffer *)self titles];
  [v15 encodeObject:v5 forKey:@"titles"];

  v6 = [(ASCContingentOffer *)self subtitles];
  [v15 encodeObject:v6 forKey:@"subtitles"];

  [v15 encodeInteger:-[ASCContingentOffer flags](self forKey:{"flags"), @"flags"}];
  v7 = [(ASCContingentOffer *)self ageRating];
  [v15 encodeObject:v7 forKey:@"ageRating"];

  v8 = [(ASCContingentOffer *)self metrics];
  [v15 encodeObject:v8 forKey:@"metrics"];

  v9 = [(ASCContingentOffer *)self organicOffer];
  [v15 encodeObject:v9 forKey:@"organicOffer"];

  v10 = [(ASCContingentOffer *)self streamlinedOffer];
  [v15 encodeObject:v10 forKey:@"streamlinedOffer"];

  v11 = [(ASCContingentOffer *)self offerID];
  [v15 encodeObject:v11 forKey:@"offerID"];

  v12 = [(ASCContingentOffer *)self iapItemID];
  [v15 encodeObject:v12 forKey:@"iapItemID"];

  v13 = [(ASCContingentOffer *)self iapItemName];
  [v15 encodeObject:v13 forKey:@"iapItemName"];

  v14 = [(ASCContingentOffer *)self iapProductName];
  [v15 encodeObject:v14 forKey:@"iapProductName"];

  [v15 encodeInteger:-[ASCContingentOffer offerType](self forKey:{"offerType"), @"offerType"}];
}

- (ASCContingentOffer)offerWithMetrics:(id)a3
{
  v18 = a3;
  v4 = objc_alloc(objc_opt_class());
  v5 = [(ASCContingentOffer *)self id];
  v17 = [(ASCContingentOffer *)self titles];
  v16 = [(ASCContingentOffer *)self subtitles];
  v14 = [(ASCContingentOffer *)self flags];
  v6 = [(ASCContingentOffer *)self ageRating];
  v13 = [(ASCContingentOffer *)self organicOffer];
  v7 = [(ASCContingentOffer *)self streamlinedOffer];
  v8 = [(ASCContingentOffer *)self offerID];
  v9 = [(ASCContingentOffer *)self iapItemID];
  v10 = [(ASCContingentOffer *)self iapItemName];
  v11 = [(ASCContingentOffer *)self iapProductName];
  v15 = [v4 initWithID:v5 titles:v17 subtitles:v16 flags:v14 ageRating:v6 metrics:v18 organicOffer:v13 streamlinedOffer:v7 offerID:v8 iapItemID:v9 iapItemName:v10 iapProductName:v11 offerType:{-[ASCContingentOffer offerType](self, "offerType")}];

  return v15;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCContingentOffer *)self id];
  [(ASCHasher *)v3 combineObject:v4];

  v5 = [(ASCContingentOffer *)self titles];
  [(ASCHasher *)v3 combineObject:v5];

  v6 = [(ASCContingentOffer *)self subtitles];
  [(ASCHasher *)v3 combineObject:v6];

  [(ASCHasher *)v3 combineInteger:[(ASCContingentOffer *)self flags]];
  v7 = [(ASCContingentOffer *)self ageRating];
  [(ASCHasher *)v3 combineObject:v7];

  v8 = [(ASCContingentOffer *)self metrics];
  [(ASCHasher *)v3 combineObject:v8];

  v9 = [(ASCContingentOffer *)self organicOffer];
  [(ASCHasher *)v3 combineObject:v9];

  v10 = [(ASCContingentOffer *)self streamlinedOffer];
  [(ASCHasher *)v3 combineObject:v10];

  v11 = [(ASCContingentOffer *)self offerID];
  [(ASCHasher *)v3 combineObject:v11];

  v12 = [(ASCContingentOffer *)self iapItemID];
  [(ASCHasher *)v3 combineObject:v12];

  v13 = [(ASCContingentOffer *)self iapItemName];
  [(ASCHasher *)v3 combineObject:v13];

  v14 = [(ASCContingentOffer *)self iapProductName];
  [(ASCHasher *)v3 combineObject:v14];

  [(ASCHasher *)v3 combineInteger:[(ASCContingentOffer *)self offerType]];
  v15 = [(ASCHasher *)v3 finalizeHash];

  return v15;
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
    v8 = [(ASCContingentOffer *)self id];
    v9 = [v7 id];
    v10 = v9;
    if (v8 && v9)
    {
      if ([v8 isEqual:v9])
      {
LABEL_10:
        v11 = [(ASCContingentOffer *)self titles];
        v12 = [v7 titles];
        v13 = v12;
        if (v11 && v12)
        {
          if ([v11 isEqual:v12])
          {
LABEL_13:
            v14 = [(ASCContingentOffer *)self subtitles];
            v15 = [v7 subtitles];
            v16 = v15;
            if (v14 && v15)
            {
              if (![v14 isEqual:v15])
              {
                goto LABEL_49;
              }
            }

            else if (v14 != v15)
            {
              goto LABEL_49;
            }

            v18 = [(ASCContingentOffer *)self flags];
            if (v18 == [v7 flags])
            {
              v19 = [(ASCContingentOffer *)self ageRating];
              v20 = [v7 ageRating];
              v21 = v20;
              if (v19 && v20)
              {
                v22 = v19;
                v66 = v16;
                v23 = v19;
                v24 = v21;
                v25 = [v22 isEqual:v21];
                v21 = v24;
                v19 = v23;
                v16 = v66;
                if (v25)
                {
LABEL_27:
                  v64 = v21;
                  v65 = v19;
                  v26 = [(ASCContingentOffer *)self metrics];
                  v27 = [v7 metrics];
                  v28 = v27;
                  v68 = v26;
                  if (v26 && v27)
                  {
                    v29 = v27;
                    v30 = [v68 isEqual:v27];
                    v28 = v29;
                    if (v30)
                    {
LABEL_30:
                      v62 = v28;
                      v31 = [(ASCContingentOffer *)self organicOffer];
                      v32 = [v7 organicOffer];
                      v33 = v32;
                      v63 = v31;
                      if (v31 && v32)
                      {
                        v34 = v32;
                        v35 = [v63 isEqual:v32];
                        v33 = v34;
                        if (v35)
                        {
LABEL_33:
                          v60 = v33;
                          v36 = [(ASCContingentOffer *)self streamlinedOffer];
                          v37 = [v7 streamlinedOffer];
                          v38 = v37;
                          v61 = v36;
                          if (v36 && v37)
                          {
                            v39 = v37;
                            v40 = [v61 isEqual:v37];
                            v38 = v39;
                            if (v40)
                            {
LABEL_36:
                              v58 = v38;
                              v41 = [(ASCContingentOffer *)self offerID];
                              v42 = [v7 offerID];
                              v59 = v41;
                              v57 = v42;
                              if (v41 && v42)
                              {
                                if ([v41 isEqual:v42])
                                {
LABEL_39:
                                  v43 = [(ASCContingentOffer *)self iapItemID];
                                  v44 = [v7 iapItemID];
                                  v55 = v44;
                                  v56 = v43;
                                  if (v43 && v44)
                                  {
                                    if ([v43 isEqual:v44])
                                    {
LABEL_42:
                                      v45 = [(ASCContingentOffer *)self iapItemName];
                                      v46 = [v7 iapItemName];
                                      v54 = v45;
                                      if (v45 && v46)
                                      {
                                        v47 = v46;
                                        if ([v54 isEqual:v46])
                                        {
LABEL_45:
                                          v67 = v16;
                                          v48 = [(ASCContingentOffer *)self iapProductName];
                                          v49 = [v7 iapProductName];
                                          v53 = v48;
                                          if (v48 && v49)
                                          {
                                            v50 = v49;
                                            if ([v53 isEqual:v49])
                                            {
LABEL_48:
                                              v51 = [(ASCContingentOffer *)self offerType];
                                              v17 = v51 == [v7 offerType];
LABEL_66:

                                              v16 = v67;
                                              goto LABEL_67;
                                            }
                                          }

                                          else
                                          {
                                            v50 = v49;
                                            if (v53 == v49)
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
                                        v47 = v46;
                                        if (v54 == v46)
                                        {
                                          goto LABEL_45;
                                        }
                                      }

                                      v17 = 0;
LABEL_67:

                                      goto LABEL_68;
                                    }
                                  }

                                  else if (v43 == v44)
                                  {
                                    goto LABEL_42;
                                  }

                                  v17 = 0;
LABEL_68:

                                  goto LABEL_69;
                                }
                              }

                              else if (v41 == v42)
                              {
                                goto LABEL_39;
                              }

                              v17 = 0;
LABEL_69:

                              v38 = v58;
                              goto LABEL_70;
                            }
                          }

                          else if (v36 == v37)
                          {
                            goto LABEL_36;
                          }

                          v17 = 0;
LABEL_70:

                          v33 = v60;
                          goto LABEL_71;
                        }
                      }

                      else if (v31 == v32)
                      {
                        goto LABEL_33;
                      }

                      v17 = 0;
LABEL_71:

                      v28 = v62;
                      goto LABEL_72;
                    }
                  }

                  else if (v26 == v27)
                  {
                    goto LABEL_30;
                  }

                  v17 = 0;
LABEL_72:

                  v21 = v64;
                  v19 = v65;
                  goto LABEL_73;
                }
              }

              else if (v19 == v20)
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

        else if (v11 == v12)
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

  v5 = [(ASCContingentOffer *)self titles];
  [(ASCDescriber *)v3 addObject:v5 withName:@"titles"];

  v6 = [(ASCContingentOffer *)self subtitles];
  [(ASCDescriber *)v3 addObject:v6 withName:@"subtitles"];

  v7 = ASCOfferFlagsGetDescription([(ASCContingentOffer *)self flags]);
  [(ASCDescriber *)v3 addObject:v7 withName:@"flags"];

  v8 = [(ASCContingentOffer *)self ageRating];
  [(ASCDescriber *)v3 addObject:v8 withName:@"ageRating"];

  v9 = [(ASCContingentOffer *)self metrics];
  [(ASCDescriber *)v3 addSensitiveObject:v9 withName:@"metrics"];

  v10 = [(ASCContingentOffer *)self organicOffer];
  [(ASCDescriber *)v3 addObject:v10 withName:@"organicOffer"];

  v11 = [(ASCContingentOffer *)self streamlinedOffer];
  [(ASCDescriber *)v3 addObject:v11 withName:@"streamlinedOffer"];

  v12 = [(ASCContingentOffer *)self offerID];
  [(ASCDescriber *)v3 addObject:v12 withName:@"offerID"];

  v13 = [(ASCContingentOffer *)self iapItemID];
  [(ASCDescriber *)v3 addObject:v13 withName:@"iapItemID"];

  v14 = [(ASCContingentOffer *)self iapItemName];
  [(ASCDescriber *)v3 addObject:v14 withName:@"iapItemName"];

  v15 = [(ASCContingentOffer *)self iapProductName];
  [(ASCDescriber *)v3 addObject:v15 withName:@"iapProductName"];

  [(ASCDescriber *)v3 addInteger:[(ASCContingentOffer *)self offerType] withName:@"offerType"];
  v16 = [(ASCDescriber *)v3 finalizeDescription];

  return v16;
}

@end