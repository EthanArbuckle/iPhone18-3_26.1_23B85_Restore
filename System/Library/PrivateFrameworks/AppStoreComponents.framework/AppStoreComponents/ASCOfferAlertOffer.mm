@interface ASCOfferAlertOffer
- (ASCOfferAlertOffer)initWithCoder:(id)a3;
- (ASCOfferAlertOffer)initWithID:(id)a3 titles:(id)a4 subtitles:(id)a5 flags:(int64_t)a6 ageRating:(id)a7 metrics:(id)a8 alertTitle:(id)a9 alertMessage:(id)a10 alertFooterMessage:(id)a11 isCancelable:(BOOL)a12 checkRestrictionsForContentRating:(id)a13 shouldCheckForAvailableDiskSpace:(BOOL)a14 remoteControllerRequirement:(id)a15 shouldIncludeActiveAccountInFooterMessage:(BOOL)a16 shouldPromptForConfirmation:(BOOL)a17 completionOffer:(id)a18;
- (ASCOfferAlertOffer)offerWithMetrics:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCOfferAlertOffer

- (ASCOfferAlertOffer)initWithID:(id)a3 titles:(id)a4 subtitles:(id)a5 flags:(int64_t)a6 ageRating:(id)a7 metrics:(id)a8 alertTitle:(id)a9 alertMessage:(id)a10 alertFooterMessage:(id)a11 isCancelable:(BOOL)a12 checkRestrictionsForContentRating:(id)a13 shouldCheckForAvailableDiskSpace:(BOOL)a14 remoteControllerRequirement:(id)a15 shouldIncludeActiveAccountInFooterMessage:(BOOL)a16 shouldPromptForConfirmation:(BOOL)a17 completionOffer:(id)a18
{
  v22 = a3;
  v23 = a4;
  v58 = a5;
  v56 = a7;
  v57 = a8;
  v24 = a9;
  v25 = a10;
  v26 = a11;
  v27 = a13;
  v28 = a15;
  v29 = a18;
  v59.receiver = self;
  v59.super_class = ASCOfferAlertOffer;
  v30 = [(ASCOfferAlertOffer *)&v59 init];
  if (v30)
  {
    v31 = [v22 copy];
    id = v30->_id;
    v30->_id = v31;

    v33 = [v23 copy];
    titles = v30->_titles;
    v30->_titles = v33;

    v35 = [v58 copy];
    subtitles = v30->_subtitles;
    v30->_subtitles = v35;

    v30->_flags = a6;
    objc_storeStrong(&v30->_ageRating, a7);
    v37 = [v57 copy];
    metrics = v30->_metrics;
    v30->_metrics = v37;

    v39 = [v24 copy];
    alertTitle = v30->_alertTitle;
    v30->_alertTitle = v39;

    v41 = [v25 copy];
    alertMessage = v30->_alertMessage;
    v30->_alertMessage = v41;

    v43 = [v24 copy];
    v44 = v30->_alertTitle;
    v30->_alertTitle = v43;

    v45 = [v26 copy];
    alertFooterMessage = v30->_alertFooterMessage;
    v30->_alertFooterMessage = v45;

    v30->_isCancelable = a12;
    v47 = [v27 copy];
    checkRestrictionsForContentRating = v30->_checkRestrictionsForContentRating;
    v30->_checkRestrictionsForContentRating = v47;

    v30->_shouldCheckForAvailableDiskSpace = a14;
    v49 = [v28 copy];
    remoteControllerRequirement = v30->_remoteControllerRequirement;
    v30->_remoteControllerRequirement = v49;

    v30->_shouldIncludeActiveAccountInFooterMessage = a16;
    v30->_shouldPromptForConfirmation = a17;
    v51 = [v29 copyWithZone:0];
    completionOffer = v30->_completionOffer;
    v30->_completionOffer = v51;
  }

  return v30;
}

- (ASCOfferAlertOffer)initWithCoder:(id)a3
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
        v60 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ageRating"];
        v9 = ASCMetricsDataDecodeArrayForKey(v4, @"metrics");
        if (v9)
        {
          v56 = v8;
          v55 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"alertTitle"];
          v59 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"alertMessage"];
          v54 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"alertFooterMessage"];
          v58 = v7;
          v57 = v9;
          if ([v4 containsValueForKey:@"isCancelable"])
          {
            v53 = [v4 decodeBoolForKey:@"isCancelable"];
          }

          else
          {
            v53 = 1;
          }

          v52 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"checkRestrictionsForContentRating"];
          v43 = [v4 decodeBoolForKey:@"shouldCheckForAvailableDiskSpace"];
          v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remoteControllerRequirement"];
          v45 = [v4 decodeBoolForKey:@"shouldIncludeActiveAccountInFooterMessage"];
          v46 = [v4 decodeBoolForKey:@"shouldPromptForConfirmation"];
          v47 = ASCOfferDecodeForKey(v4, @"completionOffer");
          BYTE1(v51) = v46;
          LOBYTE(v51) = v45;
          LOBYTE(v50) = v43;
          LOBYTE(v49) = v53;
          v7 = v58;
          self = [(ASCOfferAlertOffer *)self initWithID:v5 titles:v6 subtitles:v58 flags:v56 ageRating:v60 metrics:v57 alertTitle:v55 alertMessage:v59 alertFooterMessage:v54 isCancelable:v49 checkRestrictionsForContentRating:v52 shouldCheckForAvailableDiskSpace:v50 remoteControllerRequirement:v44 shouldIncludeActiveAccountInFooterMessage:v51 shouldPromptForConfirmation:v47 completionOffer:?];

          v9 = v57;
          v18 = self;
        }

        else
        {
          v35 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          if (v35)
          {
            [(ASCOfferAlertOffer *)v35 initWithCoder:v36, v37, v38, v39, v40, v41, v42];
          }

          v18 = 0;
        }
      }

      else
      {
        v27 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v27)
        {
          [(ASCOfferAlertOffer *)v27 initWithCoder:v28, v29, v30, v31, v32, v33, v34];
        }

        v18 = 0;
      }
    }

    else
    {
      v19 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v19)
      {
        [(ASCOfferAlertOffer *)v19 initWithCoder:v20, v21, v22, v23, v24, v25, v26];
      }

      v18 = 0;
    }
  }

  else
  {
    v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v10)
    {
      [(ASCOfferAlertOffer *)v10 initWithCoder:v11, v12, v13, v14, v15, v16, v17];
    }

    v18 = 0;
  }

  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASCOfferAlertOffer *)self id];
  [v4 encodeObject:v5 forKey:@"id"];

  v6 = [(ASCOfferAlertOffer *)self titles];
  [v4 encodeObject:v6 forKey:@"titles"];

  v7 = [(ASCOfferAlertOffer *)self subtitles];
  [v4 encodeObject:v7 forKey:@"subtitles"];

  [v4 encodeInteger:-[ASCOfferAlertOffer flags](self forKey:{"flags"), @"flags"}];
  v8 = [(ASCOfferAlertOffer *)self ageRating];
  [v4 encodeObject:v8 forKey:@"ageRating"];

  v9 = [(ASCOfferAlertOffer *)self metrics];
  [v4 encodeObject:v9 forKey:@"metrics"];

  v10 = [(ASCOfferAlertOffer *)self alertTitle];
  [v4 encodeObject:v10 forKey:@"alertTitle"];

  v11 = [(ASCOfferAlertOffer *)self alertMessage];
  [v4 encodeObject:v11 forKey:@"alertMessage"];

  v12 = [(ASCOfferAlertOffer *)self alertFooterMessage];
  [v4 encodeObject:v12 forKey:@"alertFooterMessage"];

  [v4 encodeBool:-[ASCOfferAlertOffer isCancelable](self forKey:{"isCancelable"), @"isCancelable"}];
  v13 = [(ASCOfferAlertOffer *)self checkRestrictionsForContentRating];
  [v4 encodeObject:v13 forKey:@"checkRestrictionsForContentRating"];

  [v4 encodeBool:-[ASCOfferAlertOffer shouldCheckForAvailableDiskSpace](self forKey:{"shouldCheckForAvailableDiskSpace"), @"shouldCheckForAvailableDiskSpace"}];
  v14 = [(ASCOfferAlertOffer *)self remoteControllerRequirement];
  [v4 encodeObject:v14 forKey:@"remoteControllerRequirement"];

  [v4 encodeBool:-[ASCOfferAlertOffer shouldIncludeActiveAccountInFooterMessage](self forKey:{"shouldIncludeActiveAccountInFooterMessage"), @"shouldIncludeActiveAccountInFooterMessage"}];
  [v4 encodeBool:-[ASCOfferAlertOffer shouldPromptForConfirmation](self forKey:{"shouldPromptForConfirmation"), @"shouldPromptForConfirmation"}];
  v15 = [(ASCOfferAlertOffer *)self completionOffer];
  [v4 encodeObject:v15 forKey:@"completionOffer"];
}

- (ASCOfferAlertOffer)offerWithMetrics:(id)a3
{
  v25 = a3;
  v23 = objc_alloc(objc_opt_class());
  v22 = [(ASCOfferAlertOffer *)self id];
  v21 = [(ASCOfferAlertOffer *)self titles];
  v20 = [(ASCOfferAlertOffer *)self subtitles];
  v19 = [(ASCOfferAlertOffer *)self flags];
  v18 = [(ASCOfferAlertOffer *)self ageRating];
  v17 = [(ASCOfferAlertOffer *)self alertTitle];
  v4 = [(ASCOfferAlertOffer *)self alertMessage];
  v5 = [(ASCOfferAlertOffer *)self alertFooterMessage];
  v6 = [(ASCOfferAlertOffer *)self isCancelable];
  v7 = [(ASCOfferAlertOffer *)self checkRestrictionsForContentRating];
  v8 = [(ASCOfferAlertOffer *)self shouldCheckForAvailableDiskSpace];
  v9 = [(ASCOfferAlertOffer *)self remoteControllerRequirement];
  v10 = [(ASCOfferAlertOffer *)self shouldIncludeActiveAccountInFooterMessage];
  v11 = [(ASCOfferAlertOffer *)self shouldPromptForConfirmation];
  v12 = [(ASCOfferAlertOffer *)self completionOffer];
  BYTE1(v16) = v11;
  LOBYTE(v16) = v10;
  LOBYTE(v15) = v8;
  LOBYTE(v14) = v6;
  v24 = [v23 initWithID:v22 titles:v21 subtitles:v20 flags:v19 ageRating:v18 metrics:v25 alertTitle:v17 alertMessage:v4 alertFooterMessage:v5 isCancelable:v14 checkRestrictionsForContentRating:v7 shouldCheckForAvailableDiskSpace:v15 remoteControllerRequirement:v9 shouldIncludeActiveAccountInFooterMessage:v16 shouldPromptForConfirmation:v12 completionOffer:?];

  return v24;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCOfferAlertOffer *)self id];
  [(ASCHasher *)v3 combineObject:v4];

  v5 = [(ASCOfferAlertOffer *)self titles];
  [(ASCHasher *)v3 combineObject:v5];

  v6 = [(ASCOfferAlertOffer *)self subtitles];
  [(ASCHasher *)v3 combineObject:v6];

  [(ASCHasher *)v3 combineInteger:[(ASCOfferAlertOffer *)self flags]];
  v7 = [(ASCOfferAlertOffer *)self ageRating];
  [(ASCHasher *)v3 combineObject:v7];

  v8 = [(ASCOfferAlertOffer *)self metrics];
  [(ASCHasher *)v3 combineObject:v8];

  v9 = [(ASCOfferAlertOffer *)self alertTitle];
  [(ASCHasher *)v3 combineObject:v9];

  v10 = [(ASCOfferAlertOffer *)self alertMessage];
  [(ASCHasher *)v3 combineObject:v10];

  v11 = [(ASCOfferAlertOffer *)self alertFooterMessage];
  [(ASCHasher *)v3 combineObject:v11];

  [(ASCHasher *)v3 combineBool:[(ASCOfferAlertOffer *)self isCancelable]];
  v12 = [(ASCOfferAlertOffer *)self checkRestrictionsForContentRating];
  [(ASCHasher *)v3 combineObject:v12];

  [(ASCHasher *)v3 combineBool:[(ASCOfferAlertOffer *)self shouldCheckForAvailableDiskSpace]];
  v13 = [(ASCOfferAlertOffer *)self remoteControllerRequirement];
  [(ASCHasher *)v3 combineObject:v13];

  [(ASCHasher *)v3 combineBool:[(ASCOfferAlertOffer *)self shouldIncludeActiveAccountInFooterMessage]];
  [(ASCHasher *)v3 combineBool:[(ASCOfferAlertOffer *)self shouldPromptForConfirmation]];
  v14 = [(ASCOfferAlertOffer *)self completionOffer];
  [(ASCHasher *)v3 combineObject:v14];

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
    v8 = [(ASCOfferAlertOffer *)self id];
    v9 = [v7 id];
    v10 = v9;
    if (v8 && v9)
    {
      if ([v8 isEqual:v9])
      {
LABEL_10:
        v11 = [(ASCOfferAlertOffer *)self titles];
        v12 = [v7 titles];
        v13 = v12;
        if (v11 && v12)
        {
          if ([v11 isEqual:v12])
          {
LABEL_13:
            v14 = [(ASCOfferAlertOffer *)self subtitles];
            v15 = [v7 subtitles];
            v16 = v15;
            if (v14 && v15)
            {
              if (![v14 isEqual:v15])
              {
                goto LABEL_40;
              }
            }

            else if (v14 != v15)
            {
              goto LABEL_40;
            }

            v18 = [(ASCOfferAlertOffer *)self flags];
            if (v18 == [v7 flags])
            {
              v19 = [(ASCOfferAlertOffer *)self ageRating];
              v20 = [v7 ageRating];
              v21 = v20;
              if (v19 && v20)
              {
                v22 = v19;
                v71 = v14;
                v23 = v16;
                v24 = v19;
                v25 = v21;
                v26 = [v22 isEqual:v21];
                v21 = v25;
                v19 = v24;
                v16 = v23;
                v14 = v71;
                if (v26)
                {
LABEL_27:
                  v69 = v21;
                  v70 = v19;
                  v27 = [(ASCOfferAlertOffer *)self metrics];
                  v28 = [v7 metrics];
                  v29 = v28;
                  v74 = v27;
                  if (v27 && v28)
                  {
                    v30 = v28;
                    v31 = [v74 isEqual:v28];
                    v29 = v30;
                    if (v31)
                    {
LABEL_30:
                      v67 = v29;
                      v32 = [(ASCOfferAlertOffer *)self alertTitle];
                      v33 = [v7 alertTitle];
                      v34 = v33;
                      v68 = v32;
                      if (v32 && v33)
                      {
                        v35 = v33;
                        v36 = [v68 isEqual:v33];
                        v34 = v35;
                        if (v36)
                        {
LABEL_33:
                          v65 = v34;
                          v37 = [(ASCOfferAlertOffer *)self alertMessage];
                          v38 = [v7 alertMessage];
                          v39 = v38;
                          v66 = v37;
                          if (v37 && v38)
                          {
                            v40 = v38;
                            v41 = [v66 isEqual:v38];
                            v39 = v40;
                            if (v41)
                            {
LABEL_36:
                              v63 = v39;
                              v42 = [(ASCOfferAlertOffer *)self alertFooterMessage];
                              v43 = [v7 alertFooterMessage];
                              v64 = v42;
                              v62 = v43;
                              if (v42 && v43)
                              {
                                if (![v42 isEqual:v43])
                                {
                                  goto LABEL_51;
                                }
                              }

                              else if (v42 != v43)
                              {
LABEL_51:
                                v17 = 0;
LABEL_69:

                                v39 = v63;
                                goto LABEL_70;
                              }

                              v44 = [(ASCOfferAlertOffer *)self isCancelable];
                              if (v44 != [v7 isCancelable])
                              {
                                goto LABEL_51;
                              }

                              v45 = [(ASCOfferAlertOffer *)self checkRestrictionsForContentRating];
                              v46 = [v7 checkRestrictionsForContentRating];
                              v61 = v45;
                              if (v45 && v46)
                              {
                                v47 = v46;
                                if (![v61 isEqual:v46])
                                {
                                  goto LABEL_58;
                                }
                              }

                              else
                              {
                                v47 = v46;
                                if (v61 != v46)
                                {
LABEL_58:
                                  v17 = 0;
LABEL_68:

                                  goto LABEL_69;
                                }
                              }

                              v72 = [(ASCOfferAlertOffer *)self shouldCheckForAvailableDiskSpace];
                              if (v72 != [v7 shouldCheckForAvailableDiskSpace])
                              {
                                goto LABEL_58;
                              }

                              v73 = v14;
                              v60 = v16;
                              v48 = [(ASCOfferAlertOffer *)self remoteControllerRequirement];
                              v49 = [v7 remoteControllerRequirement];
                              v50 = v49;
                              v51 = v48;
                              if (v48 && v49)
                              {
                                v52 = v48;
                                v53 = v50;
                                if (![v52 isEqual:v50])
                                {
                                  goto LABEL_66;
                                }
                              }

                              else
                              {
                                v53 = v49;
                                if (v51 != v49)
                                {
                                  goto LABEL_66;
                                }
                              }

                              v57 = [(ASCOfferAlertOffer *)self shouldIncludeActiveAccountInFooterMessage];
                              if (v57 == [v7 shouldIncludeActiveAccountInFooterMessage])
                              {
                                v58 = [(ASCOfferAlertOffer *)self shouldPromptForConfirmation];
                                if (v58 == [v7 shouldPromptForConfirmation])
                                {
                                  v55 = [(ASCOfferAlertOffer *)self completionOffer];
                                  [v7 completionOffer];
                                  v59 = v56 = v55;
                                  if (v55 && v59)
                                  {
                                    v17 = [v55 isEqual:v59];
                                  }

                                  else
                                  {
                                    v17 = v55 == v59;
                                  }

                                  goto LABEL_67;
                                }
                              }

LABEL_66:
                              v17 = 0;
LABEL_67:

                              v16 = v60;
                              v14 = v73;
                              goto LABEL_68;
                            }
                          }

                          else if (v37 == v38)
                          {
                            goto LABEL_36;
                          }

                          v17 = 0;
LABEL_70:

                          v34 = v65;
                          goto LABEL_71;
                        }
                      }

                      else if (v32 == v33)
                      {
                        goto LABEL_33;
                      }

                      v17 = 0;
LABEL_71:

                      v29 = v67;
                      goto LABEL_72;
                    }
                  }

                  else if (v27 == v28)
                  {
                    goto LABEL_30;
                  }

                  v17 = 0;
LABEL_72:

                  v21 = v69;
                  v19 = v70;
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

LABEL_40:
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
  v4 = [(ASCOfferAlertOffer *)self id];
  [(ASCDescriber *)v3 addObject:v4 withName:@"id"];

  v5 = [(ASCOfferAlertOffer *)self titles];
  [(ASCDescriber *)v3 addObject:v5 withName:@"titles"];

  v6 = [(ASCOfferAlertOffer *)self subtitles];
  [(ASCDescriber *)v3 addObject:v6 withName:@"subtitles"];

  v7 = ASCOfferFlagsGetDescription([(ASCOfferAlertOffer *)self flags]);
  [(ASCDescriber *)v3 addObject:v7 withName:@"flags"];

  v8 = [(ASCOfferAlertOffer *)self ageRating];
  [(ASCDescriber *)v3 addObject:v8 withName:@"ageRating"];

  v9 = [(ASCOfferAlertOffer *)self metrics];
  [(ASCDescriber *)v3 addSensitiveObject:v9 withName:@"metrics"];

  v10 = [(ASCOfferAlertOffer *)self alertTitle];
  [(ASCDescriber *)v3 addObject:v10 withName:@"alertTitle"];

  v11 = [(ASCOfferAlertOffer *)self alertMessage];
  [(ASCDescriber *)v3 addObject:v11 withName:@"alertMessage"];

  v12 = [(ASCOfferAlertOffer *)self alertFooterMessage];
  [(ASCDescriber *)v3 addObject:v12 withName:@"alertFooterMessage"];

  [(ASCDescriber *)v3 addBool:[(ASCOfferAlertOffer *)self isCancelable] withName:@"isCancelable"];
  v13 = [(ASCOfferAlertOffer *)self checkRestrictionsForContentRating];
  [(ASCDescriber *)v3 addObject:v13 withName:@"checkRestrictionsForContentRating"];

  [(ASCDescriber *)v3 addBool:[(ASCOfferAlertOffer *)self shouldCheckForAvailableDiskSpace] withName:@"shouldCheckForAvailableDiskSpace"];
  v14 = [(ASCOfferAlertOffer *)self remoteControllerRequirement];
  [(ASCDescriber *)v3 addObject:v14 withName:@"remoteControllerRequirement"];

  [(ASCDescriber *)v3 addBool:[(ASCOfferAlertOffer *)self shouldIncludeActiveAccountInFooterMessage] withName:@"shouldIncludeActiveAccountInFooterMessage"];
  [(ASCDescriber *)v3 addBool:[(ASCOfferAlertOffer *)self shouldPromptForConfirmation] withName:@"shouldPromptForConfirmation"];
  v15 = [(ASCOfferAlertOffer *)self completionOffer];
  [(ASCDescriber *)v3 addObject:v15 withName:@"completionOffer"];

  v16 = [(ASCDescriber *)v3 finalizeDescription];

  return v16;
}

@end